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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400650.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400520.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400550.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400540.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400530.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400510.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400690.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4006c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006c0, %struct.Memory** %MEMORY
  %loadMem_4006c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i222 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i222
  %27 = load i64, i64* %PC.i221
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i221
  store i64 %26, i64* %RBP.i223, align 8
  store %struct.Memory* %loadMem_4006c1, %struct.Memory** %MEMORY
  %loadMem_4006c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i360 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i360
  %36 = load i64, i64* %PC.i359
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i359
  %38 = sub i64 %35, 336
  store i64 %38, i64* %RSP.i360, align 8
  %39 = icmp ult i64 %35, 336
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
  %49 = xor i64 336, %35
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
  store %struct.Memory* %loadMem_4006c4, %struct.Memory** %MEMORY
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i477 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i478 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i477 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i478 to i8*
  %77 = load i64, i64* %PC.i476
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i476
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_4006cb, %struct.Memory** %MEMORY
  %loadMem_4006ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i475
  %111 = sub i64 %110, 4
  %112 = load i64, i64* %PC.i474
  %113 = add i64 %112, 7
  store i64 %113, i64* %PC.i474
  %114 = inttoptr i64 %111 to i32*
  store i32 0, i32* %114
  store %struct.Memory* %loadMem_4006ce, %struct.Memory** %MEMORY
  %loadMem_4006d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %120 to i32*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i473
  %125 = sub i64 %124, 8
  %126 = load i32, i32* %EDI.i
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC.i472
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC.i472
  %130 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %130
  store %struct.Memory* %loadMem_4006d5, %struct.Memory** %MEMORY
  %loadMem_4006d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RBP.i471
  %141 = sub i64 %140, 16
  %142 = load i64, i64* %RSI.i470
  %143 = load i64, i64* %PC.i469
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i469
  %145 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %145
  store %struct.Memory* %loadMem_4006d8, %struct.Memory** %MEMORY
  %loadMem_4006dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %152, i64 0, i64 0
  %XMM0.i468 = bitcast %union.VectorReg* %153 to %union.vec128_t*
  %154 = load i64, i64* %RBP.i467
  %155 = sub i64 %154, 24
  %156 = bitcast %union.vec128_t* %XMM0.i468 to i8*
  %157 = load i64, i64* %PC.i466
  %158 = add i64 %157, 5
  store i64 %158, i64* %PC.i466
  %159 = bitcast i8* %156 to double*
  %160 = load double, double* %159, align 1
  %161 = inttoptr i64 %155 to double*
  store double %160, double* %161
  store %struct.Memory* %loadMem_4006dc, %struct.Memory** %MEMORY
  %loadMem_4006e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %169 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %168, i64 0, i64 0
  %XMM0.i465 = bitcast %union.VectorReg* %169 to %union.vec128_t*
  %170 = load i64, i64* %RBP.i464
  %171 = sub i64 %170, 32
  %172 = bitcast %union.vec128_t* %XMM0.i465 to i8*
  %173 = load i64, i64* %PC.i463
  %174 = add i64 %173, 5
  store i64 %174, i64* %PC.i463
  %175 = bitcast i8* %172 to double*
  %176 = load double, double* %175, align 1
  %177 = inttoptr i64 %171 to double*
  store double %176, double* %177
  store %struct.Memory* %loadMem_4006e1, %struct.Memory** %MEMORY
  %loadMem_4006e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 33
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %184, i64 0, i64 0
  %XMM0.i462 = bitcast %union.VectorReg* %185 to %union.vec128_t*
  %186 = load i64, i64* %RBP.i461
  %187 = sub i64 %186, 40
  %188 = bitcast %union.vec128_t* %XMM0.i462 to i8*
  %189 = load i64, i64* %PC.i460
  %190 = add i64 %189, 5
  store i64 %190, i64* %PC.i460
  %191 = bitcast i8* %188 to double*
  %192 = load double, double* %191, align 1
  %193 = inttoptr i64 %187 to double*
  store double %192, double* %193
  store %struct.Memory* %loadMem_4006e6, %struct.Memory** %MEMORY
  %loadMem_4006eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %200, i64 0, i64 0
  %XMM0.i459 = bitcast %union.VectorReg* %201 to %union.vec128_t*
  %202 = load i64, i64* %RBP.i458
  %203 = sub i64 %202, 48
  %204 = bitcast %union.vec128_t* %XMM0.i459 to i8*
  %205 = load i64, i64* %PC.i457
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC.i457
  %207 = bitcast i8* %204 to double*
  %208 = load double, double* %207, align 1
  %209 = inttoptr i64 %203 to double*
  store double %208, double* %209
  store %struct.Memory* %loadMem_4006eb, %struct.Memory** %MEMORY
  %loadMem_4006f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 15
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RBP.i456
  %217 = sub i64 %216, 276
  %218 = load i64, i64* %PC.i455
  %219 = add i64 %218, 10
  store i64 %219, i64* %PC.i455
  %220 = inttoptr i64 %217 to i32*
  store i32 2500000, i32* %220
  store %struct.Memory* %loadMem_4006f0, %struct.Memory** %MEMORY
  %loadMem_4006fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 0
  %XMM0.i454 = bitcast %union.VectorReg* %228 to %union.vec128_t*
  %229 = load i64, i64* %RBP.i453
  %230 = sub i64 %229, 288
  %231 = bitcast %union.vec128_t* %XMM0.i454 to i8*
  %232 = load i64, i64* %PC.i452
  %233 = add i64 %232, 8
  store i64 %233, i64* %PC.i452
  %234 = bitcast i8* %231 to double*
  %235 = load double, double* %234, align 1
  %236 = inttoptr i64 %230 to double*
  store double %235, double* %236
  store %struct.Memory* %loadMem_4006fa, %struct.Memory** %MEMORY
  %loadMem_400702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %243, i64 0, i64 1
  %YMM1.i451 = bitcast %union.VectorReg* %244 to %"class.std::bitset"*
  %245 = bitcast %"class.std::bitset"* %YMM1.i451 to i8*
  %246 = load i64, i64* %RBP.i450
  %247 = sub i64 %246, 288
  %248 = load i64, i64* %PC.i449
  %249 = add i64 %248, 8
  store i64 %249, i64* %PC.i449
  %250 = inttoptr i64 %247 to double*
  %251 = load double, double* %250
  %252 = bitcast i8* %245 to double*
  store double %251, double* %252, align 1
  %253 = getelementptr inbounds i8, i8* %245, i64 8
  %254 = bitcast i8* %253 to double*
  store double 0.000000e+00, double* %254, align 1
  store %struct.Memory* %loadMem_400702, %struct.Memory** %MEMORY
  %loadMem1_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %PC.i448
  %259 = add i64 %258, -186
  %260 = load i64, i64* %PC.i448
  %261 = add i64 %260, 5
  %262 = load i64, i64* %PC.i448
  %263 = add i64 %262, 5
  store i64 %263, i64* %PC.i448
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %261, i64* %267
  store i64 %266, i64* %264, align 8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %259, i64* %268, align 8
  store %struct.Memory* %loadMem1_40070a, %struct.Memory** %MEMORY
  %loadMem2_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40070a = load i64, i64* %3
  %call2_40070a = call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %loadPC_40070a, %struct.Memory* %loadMem2_40070a)
  store %struct.Memory* %call2_40070a, %struct.Memory** %MEMORY
  %loadMem_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 1
  %YMM1.i447 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = bitcast %"class.std::bitset"* %YMM1.i447 to i8*
  %275 = load i64, i64* %PC.i446
  %276 = add i64 %275, 1305
  %277 = load i64, i64* %PC.i446
  %278 = add i64 %277, 8
  store i64 %278, i64* %PC.i446
  %279 = inttoptr i64 %276 to double*
  %280 = load double, double* %279
  %281 = bitcast i8* %274 to double*
  store double %280, double* %281, align 1
  %282 = getelementptr inbounds i8, i8* %274, i64 8
  %283 = bitcast i8* %282 to double*
  store double 0.000000e+00, double* %283, align 1
  store %struct.Memory* %loadMem_40070f, %struct.Memory** %MEMORY
  %loadMem_400717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0.i445 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = load i64, i64* %RBP.i444
  %293 = sub i64 %292, 144
  %294 = bitcast %union.vec128_t* %XMM0.i445 to i8*
  %295 = load i64, i64* %PC.i443
  %296 = add i64 %295, 8
  store i64 %296, i64* %PC.i443
  %297 = bitcast i8* %294 to double*
  %298 = load double, double* %297, align 1
  %299 = getelementptr inbounds i8, i8* %294, i64 8
  %300 = bitcast i8* %299 to double*
  %301 = load double, double* %300, align 1
  %302 = inttoptr i64 %293 to double*
  store double %298, double* %302
  %303 = add i64 %293, 8
  %304 = inttoptr i64 %303 to double*
  store double %301, double* %304
  store %struct.Memory* %loadMem_400717, %struct.Memory** %MEMORY
  %loadMem_40071f = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 0
  %YMM0.i441 = bitcast %union.VectorReg* %309 to %"class.std::bitset"*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 1
  %XMM1.i442 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = bitcast %"class.std::bitset"* %YMM0.i441 to i8*
  %313 = bitcast %union.vec128_t* %XMM1.i442 to i8*
  %314 = load i64, i64* %PC.i440
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC.i440
  %316 = bitcast i8* %313 to <2 x i32>*
  %317 = load <2 x i32>, <2 x i32>* %316, align 1
  %318 = getelementptr inbounds i8, i8* %313, i64 8
  %319 = bitcast i8* %318 to <2 x i32>*
  %320 = load <2 x i32>, <2 x i32>* %319, align 1
  %321 = extractelement <2 x i32> %317, i32 0
  %322 = bitcast i8* %312 to i32*
  store i32 %321, i32* %322, align 1
  %323 = extractelement <2 x i32> %317, i32 1
  %324 = getelementptr inbounds i8, i8* %312, i64 4
  %325 = bitcast i8* %324 to i32*
  store i32 %323, i32* %325, align 1
  %326 = extractelement <2 x i32> %320, i32 0
  %327 = getelementptr inbounds i8, i8* %312, i64 8
  %328 = bitcast i8* %327 to i32*
  store i32 %326, i32* %328, align 1
  %329 = extractelement <2 x i32> %320, i32 1
  %330 = getelementptr inbounds i8, i8* %312, i64 12
  %331 = bitcast i8* %330 to i32*
  store i32 %329, i32* %331, align 1
  store %struct.Memory* %loadMem_40071f, %struct.Memory** %MEMORY
  %loadMem1_400722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %PC.i439
  %336 = add i64 %335, -210
  %337 = load i64, i64* %PC.i439
  %338 = add i64 %337, 5
  %339 = load i64, i64* %PC.i439
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC.i439
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %338, i64* %344
  store i64 %343, i64* %341, align 8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %336, i64* %345, align 8
  store %struct.Memory* %loadMem1_400722, %struct.Memory** %MEMORY
  %loadMem2_400722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400722 = load i64, i64* %3
  %call2_400722 = call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %loadPC_400722, %struct.Memory* %loadMem2_400722)
  store %struct.Memory* %call2_400722, %struct.Memory** %MEMORY
  %loadMem_400727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %349, i64 0, i64 1
  %YMM1.i438 = bitcast %union.VectorReg* %350 to %"class.std::bitset"*
  %351 = bitcast %"class.std::bitset"* %YMM1.i438 to i8*
  %352 = load i64, i64* %PC.i437
  %353 = add i64 %352, 1297
  %354 = load i64, i64* %PC.i437
  %355 = add i64 %354, 8
  store i64 %355, i64* %PC.i437
  %356 = inttoptr i64 %353 to double*
  %357 = load double, double* %356
  %358 = bitcast i8* %351 to double*
  store double %357, double* %358, align 1
  %359 = getelementptr inbounds i8, i8* %351, i64 8
  %360 = bitcast i8* %359 to double*
  store double 0.000000e+00, double* %360, align 1
  store %struct.Memory* %loadMem_400727, %struct.Memory** %MEMORY
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %367, i64 0, i64 0
  %XMM0.i436 = bitcast %union.VectorReg* %368 to %union.vec128_t*
  %369 = load i64, i64* %RBP.i435
  %370 = sub i64 %369, 160
  %371 = bitcast %union.vec128_t* %XMM0.i436 to i8*
  %372 = load i64, i64* %PC.i434
  %373 = add i64 %372, 8
  store i64 %373, i64* %PC.i434
  %374 = bitcast i8* %371 to double*
  %375 = load double, double* %374, align 1
  %376 = getelementptr inbounds i8, i8* %371, i64 8
  %377 = bitcast i8* %376 to double*
  %378 = load double, double* %377, align 1
  %379 = inttoptr i64 %370 to double*
  store double %375, double* %379
  %380 = add i64 %370, 8
  %381 = inttoptr i64 %380 to double*
  store double %378, double* %381
  store %struct.Memory* %loadMem_40072f, %struct.Memory** %MEMORY
  %loadMem_400737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %385, i64 0, i64 0
  %YMM0.i432 = bitcast %union.VectorReg* %386 to %"class.std::bitset"*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %387, i64 0, i64 1
  %XMM1.i433 = bitcast %union.VectorReg* %388 to %union.vec128_t*
  %389 = bitcast %"class.std::bitset"* %YMM0.i432 to i8*
  %390 = bitcast %union.vec128_t* %XMM1.i433 to i8*
  %391 = load i64, i64* %PC.i431
  %392 = add i64 %391, 3
  store i64 %392, i64* %PC.i431
  %393 = bitcast i8* %390 to <2 x i32>*
  %394 = load <2 x i32>, <2 x i32>* %393, align 1
  %395 = getelementptr inbounds i8, i8* %390, i64 8
  %396 = bitcast i8* %395 to <2 x i32>*
  %397 = load <2 x i32>, <2 x i32>* %396, align 1
  %398 = extractelement <2 x i32> %394, i32 0
  %399 = bitcast i8* %389 to i32*
  store i32 %398, i32* %399, align 1
  %400 = extractelement <2 x i32> %394, i32 1
  %401 = getelementptr inbounds i8, i8* %389, i64 4
  %402 = bitcast i8* %401 to i32*
  store i32 %400, i32* %402, align 1
  %403 = extractelement <2 x i32> %397, i32 0
  %404 = getelementptr inbounds i8, i8* %389, i64 8
  %405 = bitcast i8* %404 to i32*
  store i32 %403, i32* %405, align 1
  %406 = extractelement <2 x i32> %397, i32 1
  %407 = getelementptr inbounds i8, i8* %389, i64 12
  %408 = bitcast i8* %407 to i32*
  store i32 %406, i32* %408, align 1
  store %struct.Memory* %loadMem_400737, %struct.Memory** %MEMORY
  %loadMem1_40073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i430
  %413 = add i64 %412, -234
  %414 = load i64, i64* %PC.i430
  %415 = add i64 %414, 5
  %416 = load i64, i64* %PC.i430
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC.i430
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %415, i64* %421
  store i64 %420, i64* %418, align 8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %413, i64* %422, align 8
  store %struct.Memory* %loadMem1_40073a, %struct.Memory** %MEMORY
  %loadMem2_40073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40073a = load i64, i64* %3
  %call2_40073a = call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %loadPC_40073a, %struct.Memory* %loadMem2_40073a)
  store %struct.Memory* %call2_40073a, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %426, i64 0, i64 1
  %YMM1.i429 = bitcast %union.VectorReg* %427 to %"class.std::bitset"*
  %428 = bitcast %"class.std::bitset"* %YMM1.i429 to i8*
  %429 = load i64, i64* %PC.i428
  %430 = add i64 %429, 1265
  %431 = load i64, i64* %PC.i428
  %432 = add i64 %431, 8
  store i64 %432, i64* %PC.i428
  %433 = inttoptr i64 %430 to double*
  %434 = load double, double* %433
  %435 = bitcast i8* %428 to double*
  store double %434, double* %435, align 1
  %436 = getelementptr inbounds i8, i8* %428, i64 8
  %437 = bitcast i8* %436 to double*
  store double 0.000000e+00, double* %437, align 1
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %444, i64 0, i64 0
  %XMM0.i427 = bitcast %union.VectorReg* %445 to %union.vec128_t*
  %446 = load i64, i64* %RBP.i426
  %447 = sub i64 %446, 176
  %448 = bitcast %union.vec128_t* %XMM0.i427 to i8*
  %449 = load i64, i64* %PC.i425
  %450 = add i64 %449, 8
  store i64 %450, i64* %PC.i425
  %451 = bitcast i8* %448 to double*
  %452 = load double, double* %451, align 1
  %453 = getelementptr inbounds i8, i8* %448, i64 8
  %454 = bitcast i8* %453 to double*
  %455 = load double, double* %454, align 1
  %456 = inttoptr i64 %447 to double*
  store double %452, double* %456
  %457 = add i64 %447, 8
  %458 = inttoptr i64 %457 to double*
  store double %455, double* %458
  store %struct.Memory* %loadMem_400747, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %462, i64 0, i64 0
  %YMM0.i423 = bitcast %union.VectorReg* %463 to %"class.std::bitset"*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %464, i64 0, i64 1
  %XMM1.i424 = bitcast %union.VectorReg* %465 to %union.vec128_t*
  %466 = bitcast %"class.std::bitset"* %YMM0.i423 to i8*
  %467 = bitcast %union.vec128_t* %XMM1.i424 to i8*
  %468 = load i64, i64* %PC.i422
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i422
  %470 = bitcast i8* %467 to <2 x i32>*
  %471 = load <2 x i32>, <2 x i32>* %470, align 1
  %472 = getelementptr inbounds i8, i8* %467, i64 8
  %473 = bitcast i8* %472 to <2 x i32>*
  %474 = load <2 x i32>, <2 x i32>* %473, align 1
  %475 = extractelement <2 x i32> %471, i32 0
  %476 = bitcast i8* %466 to i32*
  store i32 %475, i32* %476, align 1
  %477 = extractelement <2 x i32> %471, i32 1
  %478 = getelementptr inbounds i8, i8* %466, i64 4
  %479 = bitcast i8* %478 to i32*
  store i32 %477, i32* %479, align 1
  %480 = extractelement <2 x i32> %474, i32 0
  %481 = getelementptr inbounds i8, i8* %466, i64 8
  %482 = bitcast i8* %481 to i32*
  store i32 %480, i32* %482, align 1
  %483 = extractelement <2 x i32> %474, i32 1
  %484 = getelementptr inbounds i8, i8* %466, i64 12
  %485 = bitcast i8* %484 to i32*
  store i32 %483, i32* %485, align 1
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem1_400752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %PC.i421
  %490 = add i64 %489, -258
  %491 = load i64, i64* %PC.i421
  %492 = add i64 %491, 5
  %493 = load i64, i64* %PC.i421
  %494 = add i64 %493, 5
  store i64 %494, i64* %PC.i421
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = add i64 %496, -8
  %498 = inttoptr i64 %497 to i64*
  store i64 %492, i64* %498
  store i64 %497, i64* %495, align 8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %490, i64* %499, align 8
  store %struct.Memory* %loadMem1_400752, %struct.Memory** %MEMORY
  %loadMem2_400752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400752 = load i64, i64* %3
  %call2_400752 = call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %loadPC_400752, %struct.Memory* %loadMem2_400752)
  store %struct.Memory* %call2_400752, %struct.Memory** %MEMORY
  %loadMem_400757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %503, i64 0, i64 1
  %YMM1.i420 = bitcast %union.VectorReg* %504 to %"class.std::bitset"*
  %505 = bitcast %"class.std::bitset"* %YMM1.i420 to i8*
  %506 = load i64, i64* %PC.i419
  %507 = add i64 %506, 1233
  %508 = load i64, i64* %PC.i419
  %509 = add i64 %508, 8
  store i64 %509, i64* %PC.i419
  %510 = inttoptr i64 %507 to double*
  %511 = load double, double* %510
  %512 = bitcast i8* %505 to double*
  store double %511, double* %512, align 1
  %513 = getelementptr inbounds i8, i8* %505, i64 8
  %514 = bitcast i8* %513 to double*
  store double 0.000000e+00, double* %514, align 1
  store %struct.Memory* %loadMem_400757, %struct.Memory** %MEMORY
  %loadMem_40075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %519 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %518, i64 0, i64 2
  %YMM2.i418 = bitcast %union.VectorReg* %519 to %"class.std::bitset"*
  %520 = bitcast %"class.std::bitset"* %YMM2.i418 to i8*
  %521 = load i64, i64* %PC.i417
  %522 = add i64 %521, 1241
  %523 = load i64, i64* %PC.i417
  %524 = add i64 %523, 8
  store i64 %524, i64* %PC.i417
  %525 = inttoptr i64 %522 to double*
  %526 = load double, double* %525
  %527 = bitcast i8* %520 to double*
  store double %526, double* %527, align 1
  %528 = getelementptr inbounds i8, i8* %520, i64 8
  %529 = bitcast i8* %528 to double*
  store double 0.000000e+00, double* %529, align 1
  store %struct.Memory* %loadMem_40075f, %struct.Memory** %MEMORY
  %loadMem_400767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %536, i64 0, i64 0
  %XMM0.i416 = bitcast %union.VectorReg* %537 to %union.vec128_t*
  %538 = load i64, i64* %RBP.i415
  %539 = sub i64 %538, 208
  %540 = bitcast %union.vec128_t* %XMM0.i416 to i8*
  %541 = load i64, i64* %PC.i414
  %542 = add i64 %541, 8
  store i64 %542, i64* %PC.i414
  %543 = bitcast i8* %540 to double*
  %544 = load double, double* %543, align 1
  %545 = getelementptr inbounds i8, i8* %540, i64 8
  %546 = bitcast i8* %545 to double*
  %547 = load double, double* %546, align 1
  %548 = inttoptr i64 %539 to double*
  store double %544, double* %548
  %549 = add i64 %539, 8
  %550 = inttoptr i64 %549 to double*
  store double %547, double* %550
  store %struct.Memory* %loadMem_400767, %struct.Memory** %MEMORY
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %554, i64 0, i64 0
  %YMM0.i412 = bitcast %union.VectorReg* %555 to %"class.std::bitset"*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %556, i64 0, i64 1
  %XMM1.i413 = bitcast %union.VectorReg* %557 to %union.vec128_t*
  %558 = bitcast %"class.std::bitset"* %YMM0.i412 to i8*
  %559 = bitcast %union.vec128_t* %XMM1.i413 to i8*
  %560 = load i64, i64* %PC.i411
  %561 = add i64 %560, 3
  store i64 %561, i64* %PC.i411
  %562 = bitcast i8* %559 to <2 x i32>*
  %563 = load <2 x i32>, <2 x i32>* %562, align 1
  %564 = getelementptr inbounds i8, i8* %559, i64 8
  %565 = bitcast i8* %564 to <2 x i32>*
  %566 = load <2 x i32>, <2 x i32>* %565, align 1
  %567 = extractelement <2 x i32> %563, i32 0
  %568 = bitcast i8* %558 to i32*
  store i32 %567, i32* %568, align 1
  %569 = extractelement <2 x i32> %563, i32 1
  %570 = getelementptr inbounds i8, i8* %558, i64 4
  %571 = bitcast i8* %570 to i32*
  store i32 %569, i32* %571, align 1
  %572 = extractelement <2 x i32> %566, i32 0
  %573 = getelementptr inbounds i8, i8* %558, i64 8
  %574 = bitcast i8* %573 to i32*
  store i32 %572, i32* %574, align 1
  %575 = extractelement <2 x i32> %566, i32 1
  %576 = getelementptr inbounds i8, i8* %558, i64 12
  %577 = bitcast i8* %576 to i32*
  store i32 %575, i32* %577, align 1
  store %struct.Memory* %loadMem_40076f, %struct.Memory** %MEMORY
  %loadMem_400772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %581, i64 0, i64 1
  %YMM1.i409 = bitcast %union.VectorReg* %582 to %"class.std::bitset"*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %584 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %583, i64 0, i64 2
  %XMM2.i410 = bitcast %union.VectorReg* %584 to %union.vec128_t*
  %585 = bitcast %"class.std::bitset"* %YMM1.i409 to i8*
  %586 = bitcast %union.vec128_t* %XMM2.i410 to i8*
  %587 = load i64, i64* %PC.i408
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC.i408
  %589 = bitcast i8* %586 to <2 x i32>*
  %590 = load <2 x i32>, <2 x i32>* %589, align 1
  %591 = getelementptr inbounds i8, i8* %586, i64 8
  %592 = bitcast i8* %591 to <2 x i32>*
  %593 = load <2 x i32>, <2 x i32>* %592, align 1
  %594 = extractelement <2 x i32> %590, i32 0
  %595 = bitcast i8* %585 to i32*
  store i32 %594, i32* %595, align 1
  %596 = extractelement <2 x i32> %590, i32 1
  %597 = getelementptr inbounds i8, i8* %585, i64 4
  %598 = bitcast i8* %597 to i32*
  store i32 %596, i32* %598, align 1
  %599 = extractelement <2 x i32> %593, i32 0
  %600 = getelementptr inbounds i8, i8* %585, i64 8
  %601 = bitcast i8* %600 to i32*
  store i32 %599, i32* %601, align 1
  %602 = extractelement <2 x i32> %593, i32 1
  %603 = getelementptr inbounds i8, i8* %585, i64 12
  %604 = bitcast i8* %603 to i32*
  store i32 %602, i32* %604, align 1
  store %struct.Memory* %loadMem_400772, %struct.Memory** %MEMORY
  %loadMem1_400775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %PC.i407
  %609 = add i64 %608, -293
  %610 = load i64, i64* %PC.i407
  %611 = add i64 %610, 5
  %612 = load i64, i64* %PC.i407
  %613 = add i64 %612, 5
  store i64 %613, i64* %PC.i407
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %611, i64* %617
  store i64 %616, i64* %614, align 8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %609, i64* %618, align 8
  store %struct.Memory* %loadMem1_400775, %struct.Memory** %MEMORY
  %loadMem2_400775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400775 = load i64, i64* %3
  %call2_400775 = call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %loadPC_400775, %struct.Memory* %loadMem2_400775)
  store %struct.Memory* %call2_400775, %struct.Memory** %MEMORY
  %loadMem_40077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %623 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %622, i64 0, i64 1
  %YMM1.i406 = bitcast %union.VectorReg* %623 to %"class.std::bitset"*
  %624 = bitcast %"class.std::bitset"* %YMM1.i406 to i8*
  %625 = load i64, i64* %PC.i405
  %626 = add i64 %625, 1198
  %627 = load i64, i64* %PC.i405
  %628 = add i64 %627, 8
  store i64 %628, i64* %PC.i405
  %629 = inttoptr i64 %626 to double*
  %630 = load double, double* %629
  %631 = bitcast i8* %624 to double*
  store double %630, double* %631, align 1
  %632 = getelementptr inbounds i8, i8* %624, i64 8
  %633 = bitcast i8* %632 to double*
  store double 0.000000e+00, double* %633, align 1
  store %struct.Memory* %loadMem_40077a, %struct.Memory** %MEMORY
  %loadMem_400782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %637, i64 0, i64 2
  %YMM2.i404 = bitcast %union.VectorReg* %638 to %"class.std::bitset"*
  %639 = bitcast %"class.std::bitset"* %YMM2.i404 to i8*
  %640 = load i64, i64* %PC.i403
  %641 = add i64 %640, 1198
  %642 = load i64, i64* %PC.i403
  %643 = add i64 %642, 8
  store i64 %643, i64* %PC.i403
  %644 = inttoptr i64 %641 to double*
  %645 = load double, double* %644
  %646 = bitcast i8* %639 to double*
  store double %645, double* %646, align 1
  %647 = getelementptr inbounds i8, i8* %639, i64 8
  %648 = bitcast i8* %647 to double*
  store double 0.000000e+00, double* %648, align 1
  store %struct.Memory* %loadMem_400782, %struct.Memory** %MEMORY
  %loadMem_40078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %655, i64 0, i64 0
  %XMM0.i402 = bitcast %union.VectorReg* %656 to %union.vec128_t*
  %657 = load i64, i64* %RBP.i401
  %658 = sub i64 %657, 192
  %659 = bitcast %union.vec128_t* %XMM0.i402 to i8*
  %660 = load i64, i64* %PC.i400
  %661 = add i64 %660, 8
  store i64 %661, i64* %PC.i400
  %662 = bitcast i8* %659 to double*
  %663 = load double, double* %662, align 1
  %664 = getelementptr inbounds i8, i8* %659, i64 8
  %665 = bitcast i8* %664 to double*
  %666 = load double, double* %665, align 1
  %667 = inttoptr i64 %658 to double*
  store double %663, double* %667
  %668 = add i64 %658, 8
  %669 = inttoptr i64 %668 to double*
  store double %666, double* %669
  store %struct.Memory* %loadMem_40078a, %struct.Memory** %MEMORY
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %673, i64 0, i64 0
  %YMM0.i398 = bitcast %union.VectorReg* %674 to %"class.std::bitset"*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %675, i64 0, i64 1
  %XMM1.i399 = bitcast %union.VectorReg* %676 to %union.vec128_t*
  %677 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %678 = bitcast %union.vec128_t* %XMM1.i399 to i8*
  %679 = load i64, i64* %PC.i397
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC.i397
  %681 = bitcast i8* %678 to <2 x i32>*
  %682 = load <2 x i32>, <2 x i32>* %681, align 1
  %683 = getelementptr inbounds i8, i8* %678, i64 8
  %684 = bitcast i8* %683 to <2 x i32>*
  %685 = load <2 x i32>, <2 x i32>* %684, align 1
  %686 = extractelement <2 x i32> %682, i32 0
  %687 = bitcast i8* %677 to i32*
  store i32 %686, i32* %687, align 1
  %688 = extractelement <2 x i32> %682, i32 1
  %689 = getelementptr inbounds i8, i8* %677, i64 4
  %690 = bitcast i8* %689 to i32*
  store i32 %688, i32* %690, align 1
  %691 = extractelement <2 x i32> %685, i32 0
  %692 = getelementptr inbounds i8, i8* %677, i64 8
  %693 = bitcast i8* %692 to i32*
  store i32 %691, i32* %693, align 1
  %694 = extractelement <2 x i32> %685, i32 1
  %695 = getelementptr inbounds i8, i8* %677, i64 12
  %696 = bitcast i8* %695 to i32*
  store i32 %694, i32* %696, align 1
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  %loadMem_400795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %700, i64 0, i64 1
  %YMM1.i395 = bitcast %union.VectorReg* %701 to %"class.std::bitset"*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %702, i64 0, i64 2
  %XMM2.i396 = bitcast %union.VectorReg* %703 to %union.vec128_t*
  %704 = bitcast %"class.std::bitset"* %YMM1.i395 to i8*
  %705 = bitcast %union.vec128_t* %XMM2.i396 to i8*
  %706 = load i64, i64* %PC.i394
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i394
  %708 = bitcast i8* %705 to <2 x i32>*
  %709 = load <2 x i32>, <2 x i32>* %708, align 1
  %710 = getelementptr inbounds i8, i8* %705, i64 8
  %711 = bitcast i8* %710 to <2 x i32>*
  %712 = load <2 x i32>, <2 x i32>* %711, align 1
  %713 = extractelement <2 x i32> %709, i32 0
  %714 = bitcast i8* %704 to i32*
  store i32 %713, i32* %714, align 1
  %715 = extractelement <2 x i32> %709, i32 1
  %716 = getelementptr inbounds i8, i8* %704, i64 4
  %717 = bitcast i8* %716 to i32*
  store i32 %715, i32* %717, align 1
  %718 = extractelement <2 x i32> %712, i32 0
  %719 = getelementptr inbounds i8, i8* %704, i64 8
  %720 = bitcast i8* %719 to i32*
  store i32 %718, i32* %720, align 1
  %721 = extractelement <2 x i32> %712, i32 1
  %722 = getelementptr inbounds i8, i8* %704, i64 12
  %723 = bitcast i8* %722 to i32*
  store i32 %721, i32* %723, align 1
  store %struct.Memory* %loadMem_400795, %struct.Memory** %MEMORY
  %loadMem1_400798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %726 to i64*
  %727 = load i64, i64* %PC.i393
  %728 = add i64 %727, -328
  %729 = load i64, i64* %PC.i393
  %730 = add i64 %729, 5
  %731 = load i64, i64* %PC.i393
  %732 = add i64 %731, 5
  store i64 %732, i64* %PC.i393
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = add i64 %734, -8
  %736 = inttoptr i64 %735 to i64*
  store i64 %730, i64* %736
  store i64 %735, i64* %733, align 8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %728, i64* %737, align 8
  store %struct.Memory* %loadMem1_400798, %struct.Memory** %MEMORY
  %loadMem2_400798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400798 = load i64, i64* %3
  %call2_400798 = call %struct.Memory* @sub_400650.make_vec(%struct.State* %0, i64 %loadPC_400798, %struct.Memory* %loadMem2_400798)
  store %struct.Memory* %call2_400798, %struct.Memory** %MEMORY
  %loadMem_40079d = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %741, i64 0, i64 1
  %YMM1.i392 = bitcast %union.VectorReg* %742 to %"class.std::bitset"*
  %743 = bitcast %"class.std::bitset"* %YMM1.i392 to i8*
  %744 = load i64, i64* %PC.i391
  %745 = add i64 %744, 1163
  %746 = load i64, i64* %PC.i391
  %747 = add i64 %746, 8
  store i64 %747, i64* %PC.i391
  %748 = inttoptr i64 %745 to double*
  %749 = load double, double* %748
  %750 = bitcast i8* %743 to double*
  store double %749, double* %750, align 1
  %751 = getelementptr inbounds i8, i8* %743, i64 8
  %752 = bitcast i8* %751 to double*
  store double 0.000000e+00, double* %752, align 1
  store %struct.Memory* %loadMem_40079d, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 15
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %759, i64 0, i64 0
  %XMM0.i390 = bitcast %union.VectorReg* %760 to %union.vec128_t*
  %761 = load i64, i64* %RBP.i389
  %762 = sub i64 %761, 240
  %763 = bitcast %union.vec128_t* %XMM0.i390 to i8*
  %764 = load i64, i64* %PC.i388
  %765 = add i64 %764, 8
  store i64 %765, i64* %PC.i388
  %766 = bitcast i8* %763 to double*
  %767 = load double, double* %766, align 1
  %768 = getelementptr inbounds i8, i8* %763, i64 8
  %769 = bitcast i8* %768 to double*
  %770 = load double, double* %769, align 1
  %771 = inttoptr i64 %762 to double*
  store double %767, double* %771
  %772 = add i64 %762, 8
  %773 = inttoptr i64 %772 to double*
  store double %770, double* %773
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem_4007ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 0
  %YMM0.i387 = bitcast %union.VectorReg* %781 to %"class.std::bitset"*
  %782 = bitcast %"class.std::bitset"* %YMM0.i387 to i8*
  %783 = load i64, i64* %RBP.i386
  %784 = sub i64 %783, 144
  %785 = load i64, i64* %PC.i385
  %786 = add i64 %785, 8
  store i64 %786, i64* %PC.i385
  %787 = inttoptr i64 %784 to double*
  %788 = load double, double* %787
  %789 = add i64 %784, 8
  %790 = inttoptr i64 %789 to double*
  %791 = load double, double* %790
  %792 = bitcast i8* %782 to double*
  store double %788, double* %792, align 1
  %793 = getelementptr inbounds i8, i8* %782, i64 8
  %794 = bitcast i8* %793 to double*
  store double %791, double* %794, align 1
  store %struct.Memory* %loadMem_4007ad, %struct.Memory** %MEMORY
  %loadMem_4007b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %801, i64 0, i64 0
  %XMM0.i384 = bitcast %union.VectorReg* %802 to %union.vec128_t*
  %803 = load i64, i64* %RBP.i383
  %804 = sub i64 %803, 128
  %805 = bitcast %union.vec128_t* %XMM0.i384 to i8*
  %806 = load i64, i64* %PC.i382
  %807 = add i64 %806, 5
  store i64 %807, i64* %PC.i382
  %808 = bitcast i8* %805 to double*
  %809 = load double, double* %808, align 1
  %810 = getelementptr inbounds i8, i8* %805, i64 8
  %811 = bitcast i8* %810 to double*
  %812 = load double, double* %811, align 1
  %813 = inttoptr i64 %804 to double*
  store double %809, double* %813
  %814 = add i64 %804, 8
  %815 = inttoptr i64 %814 to double*
  store double %812, double* %815
  store %struct.Memory* %loadMem_4007b5, %struct.Memory** %MEMORY
  %loadMem_4007ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 15
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %822, i64 0, i64 0
  %XMM0.i381 = bitcast %union.VectorReg* %823 to %union.vec128_t*
  %824 = load i64, i64* %RBP.i380
  %825 = sub i64 %824, 112
  %826 = bitcast %union.vec128_t* %XMM0.i381 to i8*
  %827 = load i64, i64* %PC.i379
  %828 = add i64 %827, 5
  store i64 %828, i64* %PC.i379
  %829 = bitcast i8* %826 to double*
  %830 = load double, double* %829, align 1
  %831 = getelementptr inbounds i8, i8* %826, i64 8
  %832 = bitcast i8* %831 to double*
  %833 = load double, double* %832, align 1
  %834 = inttoptr i64 %825 to double*
  store double %830, double* %834
  %835 = add i64 %825, 8
  %836 = inttoptr i64 %835 to double*
  store double %833, double* %836
  store %struct.Memory* %loadMem_4007ba, %struct.Memory** %MEMORY
  %loadMem_4007bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 15
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %843, i64 0, i64 0
  %XMM0.i378 = bitcast %union.VectorReg* %844 to %union.vec128_t*
  %845 = load i64, i64* %RBP.i377
  %846 = sub i64 %845, 96
  %847 = bitcast %union.vec128_t* %XMM0.i378 to i8*
  %848 = load i64, i64* %PC.i376
  %849 = add i64 %848, 5
  store i64 %849, i64* %PC.i376
  %850 = bitcast i8* %847 to double*
  %851 = load double, double* %850, align 1
  %852 = getelementptr inbounds i8, i8* %847, i64 8
  %853 = bitcast i8* %852 to double*
  %854 = load double, double* %853, align 1
  %855 = inttoptr i64 %846 to double*
  store double %851, double* %855
  %856 = add i64 %846, 8
  %857 = inttoptr i64 %856 to double*
  store double %854, double* %857
  store %struct.Memory* %loadMem_4007bf, %struct.Memory** %MEMORY
  %loadMem_4007c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 15
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %865 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %864, i64 0, i64 0
  %XMM0.i375 = bitcast %union.VectorReg* %865 to %union.vec128_t*
  %866 = load i64, i64* %RBP.i374
  %867 = sub i64 %866, 80
  %868 = bitcast %union.vec128_t* %XMM0.i375 to i8*
  %869 = load i64, i64* %PC.i373
  %870 = add i64 %869, 5
  store i64 %870, i64* %PC.i373
  %871 = bitcast i8* %868 to double*
  %872 = load double, double* %871, align 1
  %873 = getelementptr inbounds i8, i8* %868, i64 8
  %874 = bitcast i8* %873 to double*
  %875 = load double, double* %874, align 1
  %876 = inttoptr i64 %867 to double*
  store double %872, double* %876
  %877 = add i64 %867, 8
  %878 = inttoptr i64 %877 to double*
  store double %875, double* %878
  store %struct.Memory* %loadMem_4007c4, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %885, i64 0, i64 0
  %XMM0.i372 = bitcast %union.VectorReg* %886 to %union.vec128_t*
  %887 = load i64, i64* %RBP.i371
  %888 = sub i64 %887, 64
  %889 = bitcast %union.vec128_t* %XMM0.i372 to i8*
  %890 = load i64, i64* %PC.i370
  %891 = add i64 %890, 5
  store i64 %891, i64* %PC.i370
  %892 = bitcast i8* %889 to double*
  %893 = load double, double* %892, align 1
  %894 = getelementptr inbounds i8, i8* %889, i64 8
  %895 = bitcast i8* %894 to double*
  %896 = load double, double* %895, align 1
  %897 = inttoptr i64 %888 to double*
  store double %893, double* %897
  %898 = add i64 %888, 8
  %899 = inttoptr i64 %898 to double*
  store double %896, double* %899
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %906, i64 0, i64 1
  %XMM1.i369 = bitcast %union.VectorReg* %907 to %union.vec128_t*
  %908 = load i64, i64* %RBP.i368
  %909 = sub i64 %908, 248
  %910 = bitcast %union.vec128_t* %XMM1.i369 to i8*
  %911 = load i64, i64* %PC.i367
  %912 = add i64 %911, 8
  store i64 %912, i64* %PC.i367
  %913 = bitcast i8* %910 to double*
  %914 = load double, double* %913, align 1
  %915 = inttoptr i64 %909 to double*
  store double %914, double* %915
  store %struct.Memory* %loadMem_4007ce, %struct.Memory** %MEMORY
  br label %block_.L_4007d6

block_.L_4007d6:                                  ; preds = %block_4007f0, %entry
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %922, i64 0, i64 0
  %YMM0.i366 = bitcast %union.VectorReg* %923 to %"class.std::bitset"*
  %924 = bitcast %"class.std::bitset"* %YMM0.i366 to i8*
  %925 = load i64, i64* %RBP.i365
  %926 = sub i64 %925, 248
  %927 = load i64, i64* %PC.i364
  %928 = add i64 %927, 8
  store i64 %928, i64* %PC.i364
  %929 = inttoptr i64 %926 to double*
  %930 = load double, double* %929
  %931 = bitcast i8* %924 to double*
  store double %930, double* %931, align 1
  %932 = getelementptr inbounds i8, i8* %924, i64 8
  %933 = bitcast i8* %932 to double*
  store double 0.000000e+00, double* %933, align 1
  store %struct.Memory* %loadMem_4007d6, %struct.Memory** %MEMORY
  %loadMem_4007de = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %940, i64 0, i64 1
  %YMM1.i363 = bitcast %union.VectorReg* %941 to %"class.std::bitset"*
  %942 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %943 = load i64, i64* %RBP.i362
  %944 = sub i64 %943, 276
  %945 = load i64, i64* %PC.i361
  %946 = add i64 %945, 8
  store i64 %946, i64* %PC.i361
  %947 = inttoptr i64 %944 to i32*
  %948 = load i32, i32* %947
  %949 = sitofp i32 %948 to double
  %950 = bitcast i8* %942 to double*
  store double %949, double* %950, align 1
  store %struct.Memory* %loadMem_4007de, %struct.Memory** %MEMORY
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %954, i64 0, i64 0
  %XMM0.i356 = bitcast %union.VectorReg* %955 to %union.vec128_t*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %956, i64 0, i64 1
  %XMM1.i357 = bitcast %union.VectorReg* %957 to %union.vec128_t*
  %958 = bitcast %union.vec128_t* %XMM1.i357 to i8*
  %959 = bitcast %union.vec128_t* %XMM0.i356 to i8*
  %960 = load i64, i64* %PC.i355
  %961 = add i64 %960, 4
  store i64 %961, i64* %PC.i355
  %962 = bitcast i8* %958 to double*
  %963 = load double, double* %962, align 1
  %964 = bitcast i8* %959 to double*
  %965 = load double, double* %964, align 1
  %966 = fcmp uno double %963, %965
  br i1 %966, label %967, label %979

; <label>:967:                                    ; preds = %block_.L_4007d6
  %968 = fadd double %963, %965
  %969 = bitcast double %968 to i64
  %970 = and i64 %969, 9221120237041090560
  %971 = icmp eq i64 %970, 9218868437227405312
  %972 = and i64 %969, 2251799813685247
  %973 = icmp ne i64 %972, 0
  %974 = and i1 %971, %973
  br i1 %974, label %975, label %985

; <label>:975:                                    ; preds = %967
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %977 = load i64, i64* %976, align 8
  %978 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %977, %struct.Memory* %loadMem_4007e6)
  br label %routine_ucomisd__xmm0___xmm1.exit358

; <label>:979:                                    ; preds = %block_.L_4007d6
  %980 = fcmp ogt double %963, %965
  br i1 %980, label %985, label %981

; <label>:981:                                    ; preds = %979
  %982 = fcmp olt double %963, %965
  br i1 %982, label %985, label %983

; <label>:983:                                    ; preds = %981
  %984 = fcmp oeq double %963, %965
  br i1 %984, label %985, label %992

; <label>:985:                                    ; preds = %983, %981, %979, %967
  %986 = phi i8 [ 0, %979 ], [ 0, %981 ], [ 1, %983 ], [ 1, %967 ]
  %987 = phi i8 [ 0, %979 ], [ 0, %981 ], [ 0, %983 ], [ 1, %967 ]
  %988 = phi i8 [ 0, %979 ], [ 1, %981 ], [ 0, %983 ], [ 1, %967 ]
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %986, i8* %989, align 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %987, i8* %990, align 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %988, i8* %991, align 1
  br label %992

; <label>:992:                                    ; preds = %985, %983
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %993, align 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %994, align 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %995, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit358

routine_ucomisd__xmm0___xmm1.exit358:             ; preds = %975, %992
  %996 = phi %struct.Memory* [ %978, %975 ], [ %loadMem_4007e6, %992 ]
  store %struct.Memory* %996, %struct.Memory** %MEMORY
  %loadMem_4007ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %PC.i354
  %1001 = add i64 %1000, 298
  %1002 = load i64, i64* %PC.i354
  %1003 = add i64 %1002, 6
  %1004 = load i64, i64* %PC.i354
  %1005 = add i64 %1004, 6
  store i64 %1005, i64* %PC.i354
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1007 = load i8, i8* %1006, align 1
  store i8 %1007, i8* %BRANCH_TAKEN, align 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1009 = icmp ne i8 %1007, 0
  %1010 = select i1 %1009, i64 %1001, i64 %1003
  store i64 %1010, i64* %1008, align 8
  store %struct.Memory* %loadMem_4007ea, %struct.Memory** %MEMORY
  %loadBr_4007ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007ea = icmp eq i8 %loadBr_4007ea, 1
  br i1 %cmpBr_4007ea, label %block_.L_400914, label %block_4007f0

block_4007f0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit358
  %loadMem_4007f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1015 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1014, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %1015 to %"class.std::bitset"*
  %1016 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %1017 = load i64, i64* %PC.i352
  %1018 = add i64 %1017, 1104
  %1019 = load i64, i64* %PC.i352
  %1020 = add i64 %1019, 8
  store i64 %1020, i64* %PC.i352
  %1021 = inttoptr i64 %1018 to double*
  %1022 = load double, double* %1021
  %1023 = bitcast i8* %1016 to double*
  store double %1022, double* %1023, align 1
  %1024 = getelementptr inbounds i8, i8* %1016, i64 8
  %1025 = bitcast i8* %1024 to double*
  store double 0.000000e+00, double* %1025, align 1
  store %struct.Memory* %loadMem_4007f0, %struct.Memory** %MEMORY
  %loadMem_4007f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1029, i64 0, i64 1
  %YMM1.i351 = bitcast %union.VectorReg* %1030 to %"class.std::bitset"*
  %1031 = bitcast %"class.std::bitset"* %YMM1.i351 to i8*
  %1032 = load i64, i64* %PC.i350
  %1033 = add i64 %1032, 1072
  %1034 = load i64, i64* %PC.i350
  %1035 = add i64 %1034, 8
  store i64 %1035, i64* %PC.i350
  %1036 = inttoptr i64 %1033 to double*
  %1037 = load double, double* %1036
  %1038 = bitcast i8* %1031 to double*
  store double %1037, double* %1038, align 1
  %1039 = getelementptr inbounds i8, i8* %1031, i64 8
  %1040 = bitcast i8* %1039 to double*
  store double 0.000000e+00, double* %1040, align 1
  store %struct.Memory* %loadMem_4007f8, %struct.Memory** %MEMORY
  %loadMem_400800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1047, i64 0, i64 2
  %YMM2.i349 = bitcast %union.VectorReg* %1048 to %"class.std::bitset"*
  %1049 = bitcast %"class.std::bitset"* %YMM2.i349 to i8*
  %1050 = load i64, i64* %RBP.i348
  %1051 = sub i64 %1050, 248
  %1052 = load i64, i64* %PC.i347
  %1053 = add i64 %1052, 8
  store i64 %1053, i64* %PC.i347
  %1054 = inttoptr i64 %1051 to double*
  %1055 = load double, double* %1054
  %1056 = bitcast i8* %1049 to double*
  store double %1055, double* %1056, align 1
  %1057 = getelementptr inbounds i8, i8* %1049, i64 8
  %1058 = bitcast i8* %1057 to double*
  store double 0.000000e+00, double* %1058, align 1
  store %struct.Memory* %loadMem_400800, %struct.Memory** %MEMORY
  %loadMem_400808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1062, i64 0, i64 2
  %YMM2.i345 = bitcast %union.VectorReg* %1063 to %"class.std::bitset"*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1064, i64 0, i64 1
  %XMM1.i346 = bitcast %union.VectorReg* %1065 to %union.vec128_t*
  %1066 = bitcast %"class.std::bitset"* %YMM2.i345 to i8*
  %1067 = bitcast %"class.std::bitset"* %YMM2.i345 to i8*
  %1068 = bitcast %union.vec128_t* %XMM1.i346 to i8*
  %1069 = load i64, i64* %PC.i344
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC.i344
  %1071 = bitcast i8* %1067 to double*
  %1072 = load double, double* %1071, align 1
  %1073 = getelementptr inbounds i8, i8* %1067, i64 8
  %1074 = bitcast i8* %1073 to i64*
  %1075 = load i64, i64* %1074, align 1
  %1076 = bitcast i8* %1068 to double*
  %1077 = load double, double* %1076, align 1
  %1078 = fsub double %1072, %1077
  %1079 = bitcast i8* %1066 to double*
  store double %1078, double* %1079, align 1
  %1080 = getelementptr inbounds i8, i8* %1066, i64 8
  %1081 = bitcast i8* %1080 to i64*
  store i64 %1075, i64* %1081, align 1
  store %struct.Memory* %loadMem_400808, %struct.Memory** %MEMORY
  %loadMem_40080c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1085, i64 0, i64 1
  %YMM1.i342 = bitcast %union.VectorReg* %1086 to %"class.std::bitset"*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1088 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1087, i64 0, i64 2
  %XMM2.i343 = bitcast %union.VectorReg* %1088 to %union.vec128_t*
  %1089 = bitcast %"class.std::bitset"* %YMM1.i342 to i8*
  %1090 = bitcast %union.vec128_t* %XMM2.i343 to i8*
  %1091 = load i64, i64* %PC.i341
  %1092 = add i64 %1091, 3
  store i64 %1092, i64* %PC.i341
  %1093 = bitcast i8* %1090 to <2 x i32>*
  %1094 = load <2 x i32>, <2 x i32>* %1093, align 1
  %1095 = getelementptr inbounds i8, i8* %1090, i64 8
  %1096 = bitcast i8* %1095 to <2 x i32>*
  %1097 = load <2 x i32>, <2 x i32>* %1096, align 1
  %1098 = extractelement <2 x i32> %1094, i32 0
  %1099 = bitcast i8* %1089 to i32*
  store i32 %1098, i32* %1099, align 1
  %1100 = extractelement <2 x i32> %1094, i32 1
  %1101 = getelementptr inbounds i8, i8* %1089, i64 4
  %1102 = bitcast i8* %1101 to i32*
  store i32 %1100, i32* %1102, align 1
  %1103 = extractelement <2 x i32> %1097, i32 0
  %1104 = getelementptr inbounds i8, i8* %1089, i64 8
  %1105 = bitcast i8* %1104 to i32*
  store i32 %1103, i32* %1105, align 1
  %1106 = extractelement <2 x i32> %1097, i32 1
  %1107 = getelementptr inbounds i8, i8* %1089, i64 12
  %1108 = bitcast i8* %1107 to i32*
  store i32 %1106, i32* %1108, align 1
  store %struct.Memory* %loadMem_40080c, %struct.Memory** %MEMORY
  %loadMem1_40080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %PC.i340
  %1113 = add i64 %1112, -751
  %1114 = load i64, i64* %PC.i340
  %1115 = add i64 %1114, 5
  %1116 = load i64, i64* %PC.i340
  %1117 = add i64 %1116, 5
  store i64 %1117, i64* %PC.i340
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1119 = load i64, i64* %1118, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1115, i64* %1121
  store i64 %1120, i64* %1118, align 8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1113, i64* %1122, align 8
  store %struct.Memory* %loadMem1_40080f, %struct.Memory** %MEMORY
  %loadMem2_40080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40080f = load i64, i64* %3
  %call2_40080f = call %struct.Memory* @sub_400520.pow_plt(%struct.State* %0, i64 %loadPC_40080f, %struct.Memory* %loadMem2_40080f)
  store %struct.Memory* %call2_40080f, %struct.Memory** %MEMORY
  %loadMem_400814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1126, i64 0, i64 1
  %YMM1.i339 = bitcast %union.VectorReg* %1127 to %"class.std::bitset"*
  %1128 = bitcast %"class.std::bitset"* %YMM1.i339 to i8*
  %1129 = load i64, i64* %PC.i338
  %1130 = add i64 %1129, 1044
  %1131 = load i64, i64* %PC.i338
  %1132 = add i64 %1131, 8
  store i64 %1132, i64* %PC.i338
  %1133 = inttoptr i64 %1130 to double*
  %1134 = load double, double* %1133
  %1135 = bitcast i8* %1128 to double*
  store double %1134, double* %1135, align 1
  %1136 = getelementptr inbounds i8, i8* %1128, i64 8
  %1137 = bitcast i8* %1136 to double*
  store double 0.000000e+00, double* %1137, align 1
  store %struct.Memory* %loadMem_400814, %struct.Memory** %MEMORY
  %loadMem_40081c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 15
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1144, i64 0, i64 0
  %YMM0.i337 = bitcast %union.VectorReg* %1145 to %"class.std::bitset"*
  %1146 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %1147 = bitcast %"class.std::bitset"* %YMM0.i337 to i8*
  %1148 = load i64, i64* %RBP.i336
  %1149 = sub i64 %1148, 24
  %1150 = load i64, i64* %PC.i335
  %1151 = add i64 %1150, 5
  store i64 %1151, i64* %PC.i335
  %1152 = bitcast i8* %1147 to double*
  %1153 = load double, double* %1152, align 1
  %1154 = getelementptr inbounds i8, i8* %1147, i64 8
  %1155 = bitcast i8* %1154 to i64*
  %1156 = load i64, i64* %1155, align 1
  %1157 = inttoptr i64 %1149 to double*
  %1158 = load double, double* %1157
  %1159 = fadd double %1153, %1158
  %1160 = bitcast i8* %1146 to double*
  store double %1159, double* %1160, align 1
  %1161 = getelementptr inbounds i8, i8* %1146, i64 8
  %1162 = bitcast i8* %1161 to i64*
  store i64 %1156, i64* %1162, align 1
  store %struct.Memory* %loadMem_40081c, %struct.Memory** %MEMORY
  %loadMem_400821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1169, i64 0, i64 0
  %XMM0.i334 = bitcast %union.VectorReg* %1170 to %union.vec128_t*
  %1171 = load i64, i64* %RBP.i333
  %1172 = sub i64 %1171, 24
  %1173 = bitcast %union.vec128_t* %XMM0.i334 to i8*
  %1174 = load i64, i64* %PC.i332
  %1175 = add i64 %1174, 5
  store i64 %1175, i64* %PC.i332
  %1176 = bitcast i8* %1173 to double*
  %1177 = load double, double* %1176, align 1
  %1178 = inttoptr i64 %1172 to double*
  store double %1177, double* %1178
  store %struct.Memory* %loadMem_400821, %struct.Memory** %MEMORY
  %loadMem_400826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1185, i64 0, i64 0
  %YMM0.i331 = bitcast %union.VectorReg* %1186 to %"class.std::bitset"*
  %1187 = bitcast %"class.std::bitset"* %YMM0.i331 to i8*
  %1188 = load i64, i64* %RBP.i330
  %1189 = sub i64 %1188, 248
  %1190 = load i64, i64* %PC.i329
  %1191 = add i64 %1190, 8
  store i64 %1191, i64* %PC.i329
  %1192 = inttoptr i64 %1189 to double*
  %1193 = load double, double* %1192
  %1194 = bitcast i8* %1187 to double*
  store double %1193, double* %1194, align 1
  %1195 = getelementptr inbounds i8, i8* %1187, i64 8
  %1196 = bitcast i8* %1195 to double*
  store double 0.000000e+00, double* %1196, align 1
  store %struct.Memory* %loadMem_400826, %struct.Memory** %MEMORY
  %loadMem_40082e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1203, i64 0, i64 1
  %XMM1.i328 = bitcast %union.VectorReg* %1204 to %union.vec128_t*
  %1205 = load i64, i64* %RBP.i327
  %1206 = sub i64 %1205, 296
  %1207 = bitcast %union.vec128_t* %XMM1.i328 to i8*
  %1208 = load i64, i64* %PC.i326
  %1209 = add i64 %1208, 8
  store i64 %1209, i64* %PC.i326
  %1210 = bitcast i8* %1207 to double*
  %1211 = load double, double* %1210, align 1
  %1212 = inttoptr i64 %1206 to double*
  store double %1211, double* %1212
  store %struct.Memory* %loadMem_40082e, %struct.Memory** %MEMORY
  %loadMem1_400836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %PC.i325
  %1217 = add i64 %1216, -742
  %1218 = load i64, i64* %PC.i325
  %1219 = add i64 %1218, 5
  %1220 = load i64, i64* %PC.i325
  %1221 = add i64 %1220, 5
  store i64 %1221, i64* %PC.i325
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1223 = load i64, i64* %1222, align 8
  %1224 = add i64 %1223, -8
  %1225 = inttoptr i64 %1224 to i64*
  store i64 %1219, i64* %1225
  store i64 %1224, i64* %1222, align 8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1217, i64* %1226, align 8
  store %struct.Memory* %loadMem1_400836, %struct.Memory** %MEMORY
  %loadMem2_400836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400836 = load i64, i64* %3
  %call2_400836 = call %struct.Memory* @sub_400550.sqrt_plt(%struct.State* %0, i64 %loadPC_400836, %struct.Memory* %loadMem2_400836)
  store %struct.Memory* %call2_400836, %struct.Memory** %MEMORY
  %loadMem_40083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 33
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 15
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1233, i64 0, i64 1
  %YMM1.i324 = bitcast %union.VectorReg* %1234 to %"class.std::bitset"*
  %1235 = bitcast %"class.std::bitset"* %YMM1.i324 to i8*
  %1236 = load i64, i64* %RBP.i323
  %1237 = sub i64 %1236, 296
  %1238 = load i64, i64* %PC.i322
  %1239 = add i64 %1238, 8
  store i64 %1239, i64* %PC.i322
  %1240 = inttoptr i64 %1237 to double*
  %1241 = load double, double* %1240
  %1242 = bitcast i8* %1235 to double*
  store double %1241, double* %1242, align 1
  %1243 = getelementptr inbounds i8, i8* %1235, i64 8
  %1244 = bitcast i8* %1243 to double*
  store double 0.000000e+00, double* %1244, align 1
  store %struct.Memory* %loadMem_40083b, %struct.Memory** %MEMORY
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 33
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1248, i64 0, i64 1
  %YMM1.i320 = bitcast %union.VectorReg* %1249 to %"class.std::bitset"*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1250, i64 0, i64 0
  %XMM0.i321 = bitcast %union.VectorReg* %1251 to %union.vec128_t*
  %1252 = bitcast %"class.std::bitset"* %YMM1.i320 to i8*
  %1253 = bitcast %"class.std::bitset"* %YMM1.i320 to i8*
  %1254 = bitcast %union.vec128_t* %XMM0.i321 to i8*
  %1255 = load i64, i64* %PC.i319
  %1256 = add i64 %1255, 4
  store i64 %1256, i64* %PC.i319
  %1257 = bitcast i8* %1253 to double*
  %1258 = load double, double* %1257, align 1
  %1259 = getelementptr inbounds i8, i8* %1253, i64 8
  %1260 = bitcast i8* %1259 to i64*
  %1261 = load i64, i64* %1260, align 1
  %1262 = bitcast i8* %1254 to double*
  %1263 = load double, double* %1262, align 1
  %1264 = fdiv double %1258, %1263
  %1265 = bitcast i8* %1252 to double*
  store double %1264, double* %1265, align 1
  %1266 = getelementptr inbounds i8, i8* %1252, i64 8
  %1267 = bitcast i8* %1266 to i64*
  store i64 %1261, i64* %1267, align 1
  store %struct.Memory* %loadMem_400843, %struct.Memory** %MEMORY
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1274, i64 0, i64 1
  %YMM1.i318 = bitcast %union.VectorReg* %1275 to %"class.std::bitset"*
  %1276 = bitcast %"class.std::bitset"* %YMM1.i318 to i8*
  %1277 = bitcast %"class.std::bitset"* %YMM1.i318 to i8*
  %1278 = load i64, i64* %RBP.i317
  %1279 = sub i64 %1278, 32
  %1280 = load i64, i64* %PC.i316
  %1281 = add i64 %1280, 5
  store i64 %1281, i64* %PC.i316
  %1282 = bitcast i8* %1277 to double*
  %1283 = load double, double* %1282, align 1
  %1284 = getelementptr inbounds i8, i8* %1277, i64 8
  %1285 = bitcast i8* %1284 to i64*
  %1286 = load i64, i64* %1285, align 1
  %1287 = inttoptr i64 %1279 to double*
  %1288 = load double, double* %1287
  %1289 = fadd double %1283, %1288
  %1290 = bitcast i8* %1276 to double*
  store double %1289, double* %1290, align 1
  %1291 = getelementptr inbounds i8, i8* %1276, i64 8
  %1292 = bitcast i8* %1291 to i64*
  store i64 %1286, i64* %1292, align 1
  store %struct.Memory* %loadMem_400847, %struct.Memory** %MEMORY
  %loadMem_40084c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 15
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1299, i64 0, i64 1
  %XMM1.i315 = bitcast %union.VectorReg* %1300 to %union.vec128_t*
  %1301 = load i64, i64* %RBP.i314
  %1302 = sub i64 %1301, 32
  %1303 = bitcast %union.vec128_t* %XMM1.i315 to i8*
  %1304 = load i64, i64* %PC.i313
  %1305 = add i64 %1304, 5
  store i64 %1305, i64* %PC.i313
  %1306 = bitcast i8* %1303 to double*
  %1307 = load double, double* %1306, align 1
  %1308 = inttoptr i64 %1302 to double*
  store double %1307, double* %1308
  store %struct.Memory* %loadMem_40084c, %struct.Memory** %MEMORY
  %loadMem_400851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 15
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1315, i64 0, i64 0
  %YMM0.i312 = bitcast %union.VectorReg* %1316 to %"class.std::bitset"*
  %1317 = bitcast %"class.std::bitset"* %YMM0.i312 to i8*
  %1318 = load i64, i64* %RBP.i311
  %1319 = sub i64 %1318, 248
  %1320 = load i64, i64* %PC.i310
  %1321 = add i64 %1320, 8
  store i64 %1321, i64* %PC.i310
  %1322 = inttoptr i64 %1319 to double*
  %1323 = load double, double* %1322
  %1324 = bitcast i8* %1317 to double*
  store double %1323, double* %1324, align 1
  %1325 = getelementptr inbounds i8, i8* %1317, i64 8
  %1326 = bitcast i8* %1325 to double*
  store double 0.000000e+00, double* %1326, align 1
  store %struct.Memory* %loadMem_400851, %struct.Memory** %MEMORY
  %loadMem_400859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1333, i64 0, i64 0
  %YMM0.i309 = bitcast %union.VectorReg* %1334 to %"class.std::bitset"*
  %1335 = bitcast %"class.std::bitset"* %YMM0.i309 to i8*
  %1336 = bitcast %"class.std::bitset"* %YMM0.i309 to i8*
  %1337 = load i64, i64* %RBP.i308
  %1338 = sub i64 %1337, 248
  %1339 = load i64, i64* %PC.i307
  %1340 = add i64 %1339, 8
  store i64 %1340, i64* %PC.i307
  %1341 = bitcast i8* %1336 to double*
  %1342 = load double, double* %1341, align 1
  %1343 = getelementptr inbounds i8, i8* %1336, i64 8
  %1344 = bitcast i8* %1343 to i64*
  %1345 = load i64, i64* %1344, align 1
  %1346 = inttoptr i64 %1338 to double*
  %1347 = load double, double* %1346
  %1348 = fmul double %1342, %1347
  %1349 = bitcast i8* %1335 to double*
  store double %1348, double* %1349, align 1
  %1350 = getelementptr inbounds i8, i8* %1335, i64 8
  %1351 = bitcast i8* %1350 to i64*
  store i64 %1345, i64* %1351, align 1
  store %struct.Memory* %loadMem_400859, %struct.Memory** %MEMORY
  %loadMem_400861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 15
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1358, i64 0, i64 0
  %YMM0.i306 = bitcast %union.VectorReg* %1359 to %"class.std::bitset"*
  %1360 = bitcast %"class.std::bitset"* %YMM0.i306 to i8*
  %1361 = bitcast %"class.std::bitset"* %YMM0.i306 to i8*
  %1362 = load i64, i64* %RBP.i305
  %1363 = sub i64 %1362, 248
  %1364 = load i64, i64* %PC.i304
  %1365 = add i64 %1364, 8
  store i64 %1365, i64* %PC.i304
  %1366 = bitcast i8* %1361 to double*
  %1367 = load double, double* %1366, align 1
  %1368 = getelementptr inbounds i8, i8* %1361, i64 8
  %1369 = bitcast i8* %1368 to i64*
  %1370 = load i64, i64* %1369, align 1
  %1371 = inttoptr i64 %1363 to double*
  %1372 = load double, double* %1371
  %1373 = fmul double %1367, %1372
  %1374 = bitcast i8* %1360 to double*
  store double %1373, double* %1374, align 1
  %1375 = getelementptr inbounds i8, i8* %1360, i64 8
  %1376 = bitcast i8* %1375 to i64*
  store i64 %1370, i64* %1376, align 1
  store %struct.Memory* %loadMem_400861, %struct.Memory** %MEMORY
  %loadMem_400869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1383, i64 0, i64 0
  %XMM0.i303 = bitcast %union.VectorReg* %1384 to %union.vec128_t*
  %1385 = load i64, i64* %RBP.i302
  %1386 = sub i64 %1385, 256
  %1387 = bitcast %union.vec128_t* %XMM0.i303 to i8*
  %1388 = load i64, i64* %PC.i301
  %1389 = add i64 %1388, 8
  store i64 %1389, i64* %PC.i301
  %1390 = bitcast i8* %1387 to double*
  %1391 = load double, double* %1390, align 1
  %1392 = inttoptr i64 %1386 to double*
  store double %1391, double* %1392
  store %struct.Memory* %loadMem_400869, %struct.Memory** %MEMORY
  %loadMem_400871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 15
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1399, i64 0, i64 0
  %YMM0.i300 = bitcast %union.VectorReg* %1400 to %"class.std::bitset"*
  %1401 = bitcast %"class.std::bitset"* %YMM0.i300 to i8*
  %1402 = load i64, i64* %RBP.i299
  %1403 = sub i64 %1402, 248
  %1404 = load i64, i64* %PC.i298
  %1405 = add i64 %1404, 8
  store i64 %1405, i64* %PC.i298
  %1406 = inttoptr i64 %1403 to double*
  %1407 = load double, double* %1406
  %1408 = bitcast i8* %1401 to double*
  store double %1407, double* %1408, align 1
  %1409 = getelementptr inbounds i8, i8* %1401, i64 8
  %1410 = bitcast i8* %1409 to double*
  store double 0.000000e+00, double* %1410, align 1
  store %struct.Memory* %loadMem_400871, %struct.Memory** %MEMORY
  %loadMem1_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %PC.i297
  %1415 = add i64 %1414, -825
  %1416 = load i64, i64* %PC.i297
  %1417 = add i64 %1416, 5
  %1418 = load i64, i64* %PC.i297
  %1419 = add i64 %1418, 5
  store i64 %1419, i64* %PC.i297
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1421 = load i64, i64* %1420, align 8
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1417, i64* %1423
  store i64 %1422, i64* %1420, align 8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1415, i64* %1424, align 8
  store %struct.Memory* %loadMem1_400879, %struct.Memory** %MEMORY
  %loadMem2_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400879 = load i64, i64* %3
  %call2_400879 = call %struct.Memory* @sub_400540.sin_plt(%struct.State* %0, i64 %loadPC_400879, %struct.Memory* %loadMem2_400879)
  store %struct.Memory* %call2_400879, %struct.Memory** %MEMORY
  %loadMem_40087e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 15
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1431, i64 0, i64 0
  %XMM0.i296 = bitcast %union.VectorReg* %1432 to %union.vec128_t*
  %1433 = load i64, i64* %RBP.i295
  %1434 = sub i64 %1433, 264
  %1435 = bitcast %union.vec128_t* %XMM0.i296 to i8*
  %1436 = load i64, i64* %PC.i294
  %1437 = add i64 %1436, 8
  store i64 %1437, i64* %PC.i294
  %1438 = bitcast i8* %1435 to double*
  %1439 = load double, double* %1438, align 1
  %1440 = inttoptr i64 %1434 to double*
  store double %1439, double* %1440
  store %struct.Memory* %loadMem_40087e, %struct.Memory** %MEMORY
  %loadMem_400886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 15
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1447, i64 0, i64 0
  %YMM0.i293 = bitcast %union.VectorReg* %1448 to %"class.std::bitset"*
  %1449 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %1450 = load i64, i64* %RBP.i292
  %1451 = sub i64 %1450, 248
  %1452 = load i64, i64* %PC.i291
  %1453 = add i64 %1452, 8
  store i64 %1453, i64* %PC.i291
  %1454 = inttoptr i64 %1451 to double*
  %1455 = load double, double* %1454
  %1456 = bitcast i8* %1449 to double*
  store double %1455, double* %1456, align 1
  %1457 = getelementptr inbounds i8, i8* %1449, i64 8
  %1458 = bitcast i8* %1457 to double*
  store double 0.000000e+00, double* %1458, align 1
  store %struct.Memory* %loadMem_400886, %struct.Memory** %MEMORY
  %loadMem1_40088e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %PC.i290
  %1463 = add i64 %1462, -862
  %1464 = load i64, i64* %PC.i290
  %1465 = add i64 %1464, 5
  %1466 = load i64, i64* %PC.i290
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i290
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1469 = load i64, i64* %1468, align 8
  %1470 = add i64 %1469, -8
  %1471 = inttoptr i64 %1470 to i64*
  store i64 %1465, i64* %1471
  store i64 %1470, i64* %1468, align 8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1463, i64* %1472, align 8
  store %struct.Memory* %loadMem1_40088e, %struct.Memory** %MEMORY
  %loadMem2_40088e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40088e = load i64, i64* %3
  %call2_40088e = call %struct.Memory* @sub_400530.cos_plt(%struct.State* %0, i64 %loadPC_40088e, %struct.Memory* %loadMem2_40088e)
  store %struct.Memory* %call2_40088e, %struct.Memory** %MEMORY
  %loadMem_400893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1479, i64 0, i64 0
  %XMM0.i289 = bitcast %union.VectorReg* %1480 to %union.vec128_t*
  %1481 = load i64, i64* %RBP.i288
  %1482 = sub i64 %1481, 272
  %1483 = bitcast %union.vec128_t* %XMM0.i289 to i8*
  %1484 = load i64, i64* %PC.i287
  %1485 = add i64 %1484, 8
  store i64 %1485, i64* %PC.i287
  %1486 = bitcast i8* %1483 to double*
  %1487 = load double, double* %1486, align 1
  %1488 = inttoptr i64 %1482 to double*
  store double %1487, double* %1488
  store %struct.Memory* %loadMem_400893, %struct.Memory** %MEMORY
  %loadMem_40089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 15
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1495, i64 0, i64 0
  %YMM0.i286 = bitcast %union.VectorReg* %1496 to %"class.std::bitset"*
  %1497 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %1498 = load i64, i64* %RBP.i285
  %1499 = sub i64 %1498, 256
  %1500 = load i64, i64* %PC.i284
  %1501 = add i64 %1500, 8
  store i64 %1501, i64* %PC.i284
  %1502 = inttoptr i64 %1499 to double*
  %1503 = load double, double* %1502
  %1504 = bitcast i8* %1497 to double*
  store double %1503, double* %1504, align 1
  %1505 = getelementptr inbounds i8, i8* %1497, i64 8
  %1506 = bitcast i8* %1505 to double*
  store double 0.000000e+00, double* %1506, align 1
  store %struct.Memory* %loadMem_40089b, %struct.Memory** %MEMORY
  %loadMem_4008a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 15
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1513, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %1514 to %"class.std::bitset"*
  %1515 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %1516 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %1517 = load i64, i64* %RBP.i282
  %1518 = sub i64 %1517, 264
  %1519 = load i64, i64* %PC.i281
  %1520 = add i64 %1519, 8
  store i64 %1520, i64* %PC.i281
  %1521 = bitcast i8* %1516 to double*
  %1522 = load double, double* %1521, align 1
  %1523 = getelementptr inbounds i8, i8* %1516, i64 8
  %1524 = bitcast i8* %1523 to i64*
  %1525 = load i64, i64* %1524, align 1
  %1526 = inttoptr i64 %1518 to double*
  %1527 = load double, double* %1526
  %1528 = fmul double %1522, %1527
  %1529 = bitcast i8* %1515 to double*
  store double %1528, double* %1529, align 1
  %1530 = getelementptr inbounds i8, i8* %1515, i64 8
  %1531 = bitcast i8* %1530 to i64*
  store i64 %1525, i64* %1531, align 1
  store %struct.Memory* %loadMem_4008a3, %struct.Memory** %MEMORY
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1538, i64 0, i64 0
  %YMM0.i280 = bitcast %union.VectorReg* %1539 to %"class.std::bitset"*
  %1540 = bitcast %"class.std::bitset"* %YMM0.i280 to i8*
  %1541 = bitcast %"class.std::bitset"* %YMM0.i280 to i8*
  %1542 = load i64, i64* %RBP.i279
  %1543 = sub i64 %1542, 264
  %1544 = load i64, i64* %PC.i278
  %1545 = add i64 %1544, 8
  store i64 %1545, i64* %PC.i278
  %1546 = bitcast i8* %1541 to double*
  %1547 = load double, double* %1546, align 1
  %1548 = getelementptr inbounds i8, i8* %1541, i64 8
  %1549 = bitcast i8* %1548 to i64*
  %1550 = load i64, i64* %1549, align 1
  %1551 = inttoptr i64 %1543 to double*
  %1552 = load double, double* %1551
  %1553 = fmul double %1547, %1552
  %1554 = bitcast i8* %1540 to double*
  store double %1553, double* %1554, align 1
  %1555 = getelementptr inbounds i8, i8* %1540, i64 8
  %1556 = bitcast i8* %1555 to i64*
  store i64 %1550, i64* %1556, align 1
  store %struct.Memory* %loadMem_4008ab, %struct.Memory** %MEMORY
  %loadMem_4008b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 15
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1563, i64 0, i64 1
  %YMM1.i277 = bitcast %union.VectorReg* %1564 to %"class.std::bitset"*
  %1565 = bitcast %"class.std::bitset"* %YMM1.i277 to i8*
  %1566 = load i64, i64* %RBP.i276
  %1567 = sub i64 %1566, 296
  %1568 = load i64, i64* %PC.i275
  %1569 = add i64 %1568, 8
  store i64 %1569, i64* %PC.i275
  %1570 = inttoptr i64 %1567 to double*
  %1571 = load double, double* %1570
  %1572 = bitcast i8* %1565 to double*
  store double %1571, double* %1572, align 1
  %1573 = getelementptr inbounds i8, i8* %1565, i64 8
  %1574 = bitcast i8* %1573 to double*
  store double 0.000000e+00, double* %1574, align 1
  store %struct.Memory* %loadMem_4008b3, %struct.Memory** %MEMORY
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1578, i64 0, i64 1
  %YMM1.i273 = bitcast %union.VectorReg* %1579 to %"class.std::bitset"*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1580, i64 0, i64 0
  %XMM0.i274 = bitcast %union.VectorReg* %1581 to %union.vec128_t*
  %1582 = bitcast %"class.std::bitset"* %YMM1.i273 to i8*
  %1583 = bitcast %"class.std::bitset"* %YMM1.i273 to i8*
  %1584 = bitcast %union.vec128_t* %XMM0.i274 to i8*
  %1585 = load i64, i64* %PC.i272
  %1586 = add i64 %1585, 4
  store i64 %1586, i64* %PC.i272
  %1587 = bitcast i8* %1583 to double*
  %1588 = load double, double* %1587, align 1
  %1589 = getelementptr inbounds i8, i8* %1583, i64 8
  %1590 = bitcast i8* %1589 to i64*
  %1591 = load i64, i64* %1590, align 1
  %1592 = bitcast i8* %1584 to double*
  %1593 = load double, double* %1592, align 1
  %1594 = fdiv double %1588, %1593
  %1595 = bitcast i8* %1582 to double*
  store double %1594, double* %1595, align 1
  %1596 = getelementptr inbounds i8, i8* %1582, i64 8
  %1597 = bitcast i8* %1596 to i64*
  store i64 %1591, i64* %1597, align 1
  store %struct.Memory* %loadMem_4008bb, %struct.Memory** %MEMORY
  %loadMem_4008bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1604, i64 0, i64 1
  %YMM1.i271 = bitcast %union.VectorReg* %1605 to %"class.std::bitset"*
  %1606 = bitcast %"class.std::bitset"* %YMM1.i271 to i8*
  %1607 = bitcast %"class.std::bitset"* %YMM1.i271 to i8*
  %1608 = load i64, i64* %RBP.i270
  %1609 = sub i64 %1608, 40
  %1610 = load i64, i64* %PC.i269
  %1611 = add i64 %1610, 5
  store i64 %1611, i64* %PC.i269
  %1612 = bitcast i8* %1607 to double*
  %1613 = load double, double* %1612, align 1
  %1614 = getelementptr inbounds i8, i8* %1607, i64 8
  %1615 = bitcast i8* %1614 to i64*
  %1616 = load i64, i64* %1615, align 1
  %1617 = inttoptr i64 %1609 to double*
  %1618 = load double, double* %1617
  %1619 = fadd double %1613, %1618
  %1620 = bitcast i8* %1606 to double*
  store double %1619, double* %1620, align 1
  %1621 = getelementptr inbounds i8, i8* %1606, i64 8
  %1622 = bitcast i8* %1621 to i64*
  store i64 %1616, i64* %1622, align 1
  store %struct.Memory* %loadMem_4008bf, %struct.Memory** %MEMORY
  %loadMem_4008c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 15
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1629, i64 0, i64 1
  %XMM1.i268 = bitcast %union.VectorReg* %1630 to %union.vec128_t*
  %1631 = load i64, i64* %RBP.i267
  %1632 = sub i64 %1631, 40
  %1633 = bitcast %union.vec128_t* %XMM1.i268 to i8*
  %1634 = load i64, i64* %PC.i266
  %1635 = add i64 %1634, 5
  store i64 %1635, i64* %PC.i266
  %1636 = bitcast i8* %1633 to double*
  %1637 = load double, double* %1636, align 1
  %1638 = inttoptr i64 %1632 to double*
  store double %1637, double* %1638
  store %struct.Memory* %loadMem_4008c4, %struct.Memory** %MEMORY
  %loadMem_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 15
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1645, i64 0, i64 0
  %YMM0.i265 = bitcast %union.VectorReg* %1646 to %"class.std::bitset"*
  %1647 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %1648 = load i64, i64* %RBP.i264
  %1649 = sub i64 %1648, 256
  %1650 = load i64, i64* %PC.i263
  %1651 = add i64 %1650, 8
  store i64 %1651, i64* %PC.i263
  %1652 = inttoptr i64 %1649 to double*
  %1653 = load double, double* %1652
  %1654 = bitcast i8* %1647 to double*
  store double %1653, double* %1654, align 1
  %1655 = getelementptr inbounds i8, i8* %1647, i64 8
  %1656 = bitcast i8* %1655 to double*
  store double 0.000000e+00, double* %1656, align 1
  store %struct.Memory* %loadMem_4008c9, %struct.Memory** %MEMORY
  %loadMem_4008d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 15
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1663, i64 0, i64 0
  %YMM0.i262 = bitcast %union.VectorReg* %1664 to %"class.std::bitset"*
  %1665 = bitcast %"class.std::bitset"* %YMM0.i262 to i8*
  %1666 = bitcast %"class.std::bitset"* %YMM0.i262 to i8*
  %1667 = load i64, i64* %RBP.i261
  %1668 = sub i64 %1667, 272
  %1669 = load i64, i64* %PC.i260
  %1670 = add i64 %1669, 8
  store i64 %1670, i64* %PC.i260
  %1671 = bitcast i8* %1666 to double*
  %1672 = load double, double* %1671, align 1
  %1673 = getelementptr inbounds i8, i8* %1666, i64 8
  %1674 = bitcast i8* %1673 to i64*
  %1675 = load i64, i64* %1674, align 1
  %1676 = inttoptr i64 %1668 to double*
  %1677 = load double, double* %1676
  %1678 = fmul double %1672, %1677
  %1679 = bitcast i8* %1665 to double*
  store double %1678, double* %1679, align 1
  %1680 = getelementptr inbounds i8, i8* %1665, i64 8
  %1681 = bitcast i8* %1680 to i64*
  store i64 %1675, i64* %1681, align 1
  store %struct.Memory* %loadMem_4008d1, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 15
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1688, i64 0, i64 0
  %YMM0.i259 = bitcast %union.VectorReg* %1689 to %"class.std::bitset"*
  %1690 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %1691 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %1692 = load i64, i64* %RBP.i258
  %1693 = sub i64 %1692, 272
  %1694 = load i64, i64* %PC.i257
  %1695 = add i64 %1694, 8
  store i64 %1695, i64* %PC.i257
  %1696 = bitcast i8* %1691 to double*
  %1697 = load double, double* %1696, align 1
  %1698 = getelementptr inbounds i8, i8* %1691, i64 8
  %1699 = bitcast i8* %1698 to i64*
  %1700 = load i64, i64* %1699, align 1
  %1701 = inttoptr i64 %1693 to double*
  %1702 = load double, double* %1701
  %1703 = fmul double %1697, %1702
  %1704 = bitcast i8* %1690 to double*
  store double %1703, double* %1704, align 1
  %1705 = getelementptr inbounds i8, i8* %1690, i64 8
  %1706 = bitcast i8* %1705 to i64*
  store i64 %1700, i64* %1706, align 1
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1714 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1713, i64 0, i64 1
  %YMM1.i256 = bitcast %union.VectorReg* %1714 to %"class.std::bitset"*
  %1715 = bitcast %"class.std::bitset"* %YMM1.i256 to i8*
  %1716 = load i64, i64* %RBP.i255
  %1717 = sub i64 %1716, 296
  %1718 = load i64, i64* %PC.i254
  %1719 = add i64 %1718, 8
  store i64 %1719, i64* %PC.i254
  %1720 = inttoptr i64 %1717 to double*
  %1721 = load double, double* %1720
  %1722 = bitcast i8* %1715 to double*
  store double %1721, double* %1722, align 1
  %1723 = getelementptr inbounds i8, i8* %1715, i64 8
  %1724 = bitcast i8* %1723 to double*
  store double 0.000000e+00, double* %1724, align 1
  store %struct.Memory* %loadMem_4008e1, %struct.Memory** %MEMORY
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1728, i64 0, i64 1
  %YMM1.i252 = bitcast %union.VectorReg* %1729 to %"class.std::bitset"*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1730, i64 0, i64 0
  %XMM0.i253 = bitcast %union.VectorReg* %1731 to %union.vec128_t*
  %1732 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %1733 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %1734 = bitcast %union.vec128_t* %XMM0.i253 to i8*
  %1735 = load i64, i64* %PC.i251
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC.i251
  %1737 = bitcast i8* %1733 to double*
  %1738 = load double, double* %1737, align 1
  %1739 = getelementptr inbounds i8, i8* %1733, i64 8
  %1740 = bitcast i8* %1739 to i64*
  %1741 = load i64, i64* %1740, align 1
  %1742 = bitcast i8* %1734 to double*
  %1743 = load double, double* %1742, align 1
  %1744 = fdiv double %1738, %1743
  %1745 = bitcast i8* %1732 to double*
  store double %1744, double* %1745, align 1
  %1746 = getelementptr inbounds i8, i8* %1732, i64 8
  %1747 = bitcast i8* %1746 to i64*
  store i64 %1741, i64* %1747, align 1
  store %struct.Memory* %loadMem_4008e9, %struct.Memory** %MEMORY
  %loadMem_4008ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1753 to i64*
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1754, i64 0, i64 1
  %YMM1.i250 = bitcast %union.VectorReg* %1755 to %"class.std::bitset"*
  %1756 = bitcast %"class.std::bitset"* %YMM1.i250 to i8*
  %1757 = bitcast %"class.std::bitset"* %YMM1.i250 to i8*
  %1758 = load i64, i64* %RBP.i249
  %1759 = sub i64 %1758, 48
  %1760 = load i64, i64* %PC.i248
  %1761 = add i64 %1760, 5
  store i64 %1761, i64* %PC.i248
  %1762 = bitcast i8* %1757 to double*
  %1763 = load double, double* %1762, align 1
  %1764 = getelementptr inbounds i8, i8* %1757, i64 8
  %1765 = bitcast i8* %1764 to i64*
  %1766 = load i64, i64* %1765, align 1
  %1767 = inttoptr i64 %1759 to double*
  %1768 = load double, double* %1767
  %1769 = fadd double %1763, %1768
  %1770 = bitcast i8* %1756 to double*
  store double %1769, double* %1770, align 1
  %1771 = getelementptr inbounds i8, i8* %1756, i64 8
  %1772 = bitcast i8* %1771 to i64*
  store i64 %1766, i64* %1772, align 1
  store %struct.Memory* %loadMem_4008ed, %struct.Memory** %MEMORY
  %loadMem_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1780 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1779, i64 0, i64 1
  %XMM1.i247 = bitcast %union.VectorReg* %1780 to %union.vec128_t*
  %1781 = load i64, i64* %RBP.i246
  %1782 = sub i64 %1781, 48
  %1783 = bitcast %union.vec128_t* %XMM1.i247 to i8*
  %1784 = load i64, i64* %PC.i245
  %1785 = add i64 %1784, 5
  store i64 %1785, i64* %PC.i245
  %1786 = bitcast i8* %1783 to double*
  %1787 = load double, double* %1786, align 1
  %1788 = inttoptr i64 %1782 to double*
  store double %1787, double* %1788
  store %struct.Memory* %loadMem_4008f2, %struct.Memory** %MEMORY
  %loadMem_4008f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1792, i64 0, i64 0
  %YMM0.i244 = bitcast %union.VectorReg* %1793 to %"class.std::bitset"*
  %1794 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %1795 = load i64, i64* %PC.i243
  %1796 = add i64 %1795, 817
  %1797 = load i64, i64* %PC.i243
  %1798 = add i64 %1797, 8
  store i64 %1798, i64* %PC.i243
  %1799 = inttoptr i64 %1796 to double*
  %1800 = load double, double* %1799
  %1801 = bitcast i8* %1794 to double*
  store double %1800, double* %1801, align 1
  %1802 = getelementptr inbounds i8, i8* %1794, i64 8
  %1803 = bitcast i8* %1802 to double*
  store double 0.000000e+00, double* %1803, align 1
  store %struct.Memory* %loadMem_4008f7, %struct.Memory** %MEMORY
  %loadMem_4008ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 15
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1810, i64 0, i64 0
  %YMM0.i242 = bitcast %union.VectorReg* %1811 to %"class.std::bitset"*
  %1812 = bitcast %"class.std::bitset"* %YMM0.i242 to i8*
  %1813 = bitcast %"class.std::bitset"* %YMM0.i242 to i8*
  %1814 = load i64, i64* %RBP.i241
  %1815 = sub i64 %1814, 248
  %1816 = load i64, i64* %PC.i240
  %1817 = add i64 %1816, 8
  store i64 %1817, i64* %PC.i240
  %1818 = bitcast i8* %1813 to double*
  %1819 = load double, double* %1818, align 1
  %1820 = getelementptr inbounds i8, i8* %1813, i64 8
  %1821 = bitcast i8* %1820 to i64*
  %1822 = load i64, i64* %1821, align 1
  %1823 = inttoptr i64 %1815 to double*
  %1824 = load double, double* %1823
  %1825 = fadd double %1819, %1824
  %1826 = bitcast i8* %1812 to double*
  store double %1825, double* %1826, align 1
  %1827 = getelementptr inbounds i8, i8* %1812, i64 8
  %1828 = bitcast i8* %1827 to i64*
  store i64 %1822, i64* %1828, align 1
  store %struct.Memory* %loadMem_4008ff, %struct.Memory** %MEMORY
  %loadMem_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 15
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1835, i64 0, i64 0
  %XMM0.i239 = bitcast %union.VectorReg* %1836 to %union.vec128_t*
  %1837 = load i64, i64* %RBP.i238
  %1838 = sub i64 %1837, 248
  %1839 = bitcast %union.vec128_t* %XMM0.i239 to i8*
  %1840 = load i64, i64* %PC.i237
  %1841 = add i64 %1840, 8
  store i64 %1841, i64* %PC.i237
  %1842 = bitcast i8* %1839 to double*
  %1843 = load double, double* %1842, align 1
  %1844 = inttoptr i64 %1838 to double*
  store double %1843, double* %1844
  store %struct.Memory* %loadMem_400907, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1847 to i64*
  %1848 = load i64, i64* %PC.i236
  %1849 = add i64 %1848, -313
  %1850 = load i64, i64* %PC.i236
  %1851 = add i64 %1850, 5
  store i64 %1851, i64* %PC.i236
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1849, i64* %1852, align 8
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  br label %block_.L_4007d6

block_.L_400914:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit358
  %loadMem_400914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1860 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1859, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %1860 to %"class.std::bitset"*
  %1861 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %1862 = load i64, i64* %RBP.i234
  %1863 = sub i64 %1862, 192
  %1864 = load i64, i64* %PC.i233
  %1865 = add i64 %1864, 8
  store i64 %1865, i64* %PC.i233
  %1866 = inttoptr i64 %1863 to double*
  %1867 = load double, double* %1866
  %1868 = add i64 %1863, 8
  %1869 = inttoptr i64 %1868 to double*
  %1870 = load double, double* %1869
  %1871 = bitcast i8* %1861 to double*
  store double %1867, double* %1871, align 1
  %1872 = getelementptr inbounds i8, i8* %1861, i64 8
  %1873 = bitcast i8* %1872 to double*
  store double %1870, double* %1873, align 1
  store %struct.Memory* %loadMem_400914, %struct.Memory** %MEMORY
  %loadMem_40091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1880, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %1881 to %union.vec128_t*
  %1882 = load i64, i64* %RBP.i231
  %1883 = sub i64 %1882, 224
  %1884 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %1885 = load i64, i64* %PC.i230
  %1886 = add i64 %1885, 8
  store i64 %1886, i64* %PC.i230
  %1887 = bitcast i8* %1884 to double*
  %1888 = load double, double* %1887, align 1
  %1889 = getelementptr inbounds i8, i8* %1884, i64 8
  %1890 = bitcast i8* %1889 to double*
  %1891 = load double, double* %1890, align 1
  %1892 = inttoptr i64 %1883 to double*
  store double %1888, double* %1892
  %1893 = add i64 %1883, 8
  %1894 = inttoptr i64 %1893 to double*
  store double %1891, double* %1894
  store %struct.Memory* %loadMem_40091c, %struct.Memory** %MEMORY
  br label %block_.L_400924

block_.L_400924:                                  ; preds = %block_40093e, %block_.L_400914
  %loadMem_400924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 33
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 15
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1901, i64 0, i64 0
  %YMM0.i229 = bitcast %union.VectorReg* %1902 to %"class.std::bitset"*
  %1903 = bitcast %"class.std::bitset"* %YMM0.i229 to i8*
  %1904 = load i64, i64* %RBP.i228
  %1905 = sub i64 %1904, 224
  %1906 = load i64, i64* %PC.i227
  %1907 = add i64 %1906, 8
  store i64 %1907, i64* %PC.i227
  %1908 = inttoptr i64 %1905 to double*
  %1909 = load double, double* %1908
  %1910 = bitcast i8* %1903 to double*
  store double %1909, double* %1910, align 1
  %1911 = getelementptr inbounds i8, i8* %1903, i64 8
  %1912 = bitcast i8* %1911 to double*
  store double 0.000000e+00, double* %1912, align 1
  store %struct.Memory* %loadMem_400924, %struct.Memory** %MEMORY
  %loadMem_40092c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 15
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1920 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1919, i64 0, i64 1
  %YMM1.i226 = bitcast %union.VectorReg* %1920 to %"class.std::bitset"*
  %1921 = bitcast %"class.std::bitset"* %YMM1.i226 to i8*
  %1922 = load i64, i64* %RBP.i225
  %1923 = sub i64 %1922, 276
  %1924 = load i64, i64* %PC.i224
  %1925 = add i64 %1924, 8
  store i64 %1925, i64* %PC.i224
  %1926 = inttoptr i64 %1923 to i32*
  %1927 = load i32, i32* %1926
  %1928 = sitofp i32 %1927 to double
  %1929 = bitcast i8* %1921 to double*
  store double %1928, double* %1929, align 1
  store %struct.Memory* %loadMem_40092c, %struct.Memory** %MEMORY
  %loadMem_400934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1934 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1933, i64 0, i64 0
  %XMM0.i219 = bitcast %union.VectorReg* %1934 to %union.vec128_t*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1935, i64 0, i64 1
  %XMM1.i220 = bitcast %union.VectorReg* %1936 to %union.vec128_t*
  %1937 = bitcast %union.vec128_t* %XMM1.i220 to i8*
  %1938 = bitcast %union.vec128_t* %XMM0.i219 to i8*
  %1939 = load i64, i64* %PC.i218
  %1940 = add i64 %1939, 4
  store i64 %1940, i64* %PC.i218
  %1941 = bitcast i8* %1937 to double*
  %1942 = load double, double* %1941, align 1
  %1943 = bitcast i8* %1938 to double*
  %1944 = load double, double* %1943, align 1
  %1945 = fcmp uno double %1942, %1944
  br i1 %1945, label %1946, label %1958

; <label>:1946:                                   ; preds = %block_.L_400924
  %1947 = fadd double %1942, %1944
  %1948 = bitcast double %1947 to i64
  %1949 = and i64 %1948, 9221120237041090560
  %1950 = icmp eq i64 %1949, 9218868437227405312
  %1951 = and i64 %1948, 2251799813685247
  %1952 = icmp ne i64 %1951, 0
  %1953 = and i1 %1950, %1952
  br i1 %1953, label %1954, label %1964

; <label>:1954:                                   ; preds = %1946
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1956 = load i64, i64* %1955, align 8
  %1957 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1956, %struct.Memory* %loadMem_400934)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1958:                                   ; preds = %block_.L_400924
  %1959 = fcmp ogt double %1942, %1944
  br i1 %1959, label %1964, label %1960

; <label>:1960:                                   ; preds = %1958
  %1961 = fcmp olt double %1942, %1944
  br i1 %1961, label %1964, label %1962

; <label>:1962:                                   ; preds = %1960
  %1963 = fcmp oeq double %1942, %1944
  br i1 %1963, label %1964, label %1971

; <label>:1964:                                   ; preds = %1962, %1960, %1958, %1946
  %1965 = phi i8 [ 0, %1958 ], [ 0, %1960 ], [ 1, %1962 ], [ 1, %1946 ]
  %1966 = phi i8 [ 0, %1958 ], [ 0, %1960 ], [ 0, %1962 ], [ 1, %1946 ]
  %1967 = phi i8 [ 0, %1958 ], [ 1, %1960 ], [ 0, %1962 ], [ 1, %1946 ]
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1965, i8* %1968, align 1
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1966, i8* %1969, align 1
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1970, align 1
  br label %1971

; <label>:1971:                                   ; preds = %1964, %1962
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1972, align 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1973, align 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1974, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1954, %1971
  %1975 = phi %struct.Memory* [ %1957, %1954 ], [ %loadMem_400934, %1971 ]
  store %struct.Memory* %1975, %struct.Memory** %MEMORY
  %loadMem_400938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %PC.i217
  %1980 = add i64 %1979, 221
  %1981 = load i64, i64* %PC.i217
  %1982 = add i64 %1981, 6
  %1983 = load i64, i64* %PC.i217
  %1984 = add i64 %1983, 6
  store i64 %1984, i64* %PC.i217
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1986 = load i8, i8* %1985, align 1
  store i8 %1986, i8* %BRANCH_TAKEN, align 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1988 = icmp ne i8 %1986, 0
  %1989 = select i1 %1988, i64 %1980, i64 %1982
  store i64 %1989, i64* %1987, align 8
  store %struct.Memory* %loadMem_400938, %struct.Memory** %MEMORY
  %loadBr_400938 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400938 = icmp eq i8 %loadBr_400938, 1
  br i1 %cmpBr_400938, label %block_.L_400a15, label %block_40093e

block_40093e:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_40093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 33
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1992 to i64*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 15
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1996, i64 0, i64 0
  %YMM0.i216 = bitcast %union.VectorReg* %1997 to %"class.std::bitset"*
  %1998 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %1999 = load i64, i64* %RBP.i215
  %2000 = sub i64 %1999, 160
  %2001 = load i64, i64* %PC.i214
  %2002 = add i64 %2001, 8
  store i64 %2002, i64* %PC.i214
  %2003 = inttoptr i64 %2000 to double*
  %2004 = load double, double* %2003
  %2005 = add i64 %2000, 8
  %2006 = inttoptr i64 %2005 to double*
  %2007 = load double, double* %2006
  %2008 = bitcast i8* %1998 to double*
  store double %2004, double* %2008, align 1
  %2009 = getelementptr inbounds i8, i8* %1998, i64 8
  %2010 = bitcast i8* %2009 to double*
  store double %2007, double* %2010, align 1
  store %struct.Memory* %loadMem_40093e, %struct.Memory** %MEMORY
  %loadMem_400946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 15
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2017, i64 0, i64 1
  %YMM1.i213 = bitcast %union.VectorReg* %2018 to %"class.std::bitset"*
  %2019 = bitcast %"class.std::bitset"* %YMM1.i213 to i8*
  %2020 = load i64, i64* %RBP.i212
  %2021 = sub i64 %2020, 224
  %2022 = load i64, i64* %PC.i211
  %2023 = add i64 %2022, 8
  store i64 %2023, i64* %PC.i211
  %2024 = inttoptr i64 %2021 to double*
  %2025 = load double, double* %2024
  %2026 = add i64 %2021, 8
  %2027 = inttoptr i64 %2026 to double*
  %2028 = load double, double* %2027
  %2029 = bitcast i8* %2019 to double*
  store double %2025, double* %2029, align 1
  %2030 = getelementptr inbounds i8, i8* %2019, i64 8
  %2031 = bitcast i8* %2030 to double*
  store double %2028, double* %2031, align 1
  store %struct.Memory* %loadMem_400946, %struct.Memory** %MEMORY
  %loadMem_40094e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 15
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2039 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2038, i64 0, i64 2
  %YMM2.i210 = bitcast %union.VectorReg* %2039 to %"class.std::bitset"*
  %2040 = bitcast %"class.std::bitset"* %YMM2.i210 to i8*
  %2041 = load i64, i64* %RBP.i209
  %2042 = sub i64 %2041, 224
  %2043 = load i64, i64* %PC.i208
  %2044 = add i64 %2043, 8
  store i64 %2044, i64* %PC.i208
  %2045 = inttoptr i64 %2042 to double*
  %2046 = load double, double* %2045
  %2047 = add i64 %2042, 8
  %2048 = inttoptr i64 %2047 to double*
  %2049 = load double, double* %2048
  %2050 = bitcast i8* %2040 to double*
  store double %2046, double* %2050, align 1
  %2051 = getelementptr inbounds i8, i8* %2040, i64 8
  %2052 = bitcast i8* %2051 to double*
  store double %2049, double* %2052, align 1
  store %struct.Memory* %loadMem_40094e, %struct.Memory** %MEMORY
  %loadMem_400956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 15
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2059, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2060 to %"class.std::bitset"*
  %2061 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2062 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2063 = load i64, i64* %RBP.i207
  %2064 = sub i64 %2063, 160
  %2065 = load i64, i64* %PC.i206
  %2066 = add i64 %2065, 8
  store i64 %2066, i64* %PC.i206
  %2067 = bitcast i8* %2062 to <2 x double>*
  %2068 = load <2 x double>, <2 x double>* %2067, align 1
  %2069 = inttoptr i64 %2064 to double*
  %2070 = load double, double* %2069
  %2071 = add i64 %2064, 8
  %2072 = inttoptr i64 %2071 to double*
  %2073 = load double, double* %2072
  %2074 = insertelement <2 x double> undef, double %2070, i32 0
  %2075 = insertelement <2 x double> %2074, double %2073, i32 1
  %2076 = fadd <2 x double> %2068, %2075
  %2077 = bitcast i8* %2061 to <2 x double>*
  store <2 x double> %2076, <2 x double>* %2077, align 1
  store %struct.Memory* %loadMem_400956, %struct.Memory** %MEMORY
  %loadMem_40095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2082 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2081, i64 0, i64 1
  %YMM1.i205 = bitcast %union.VectorReg* %2082 to %"class.std::bitset"*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2084 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2083, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2084 to %union.vec128_t*
  %2085 = bitcast %"class.std::bitset"* %YMM1.i205 to i8*
  %2086 = bitcast %"class.std::bitset"* %YMM1.i205 to i8*
  %2087 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2088 = load i64, i64* %PC.i204
  %2089 = add i64 %2088, 4
  store i64 %2089, i64* %PC.i204
  %2090 = bitcast i8* %2086 to <2 x double>*
  %2091 = load <2 x double>, <2 x double>* %2090, align 1
  %2092 = bitcast i8* %2087 to <2 x double>*
  %2093 = load <2 x double>, <2 x double>* %2092, align 1
  %2094 = fmul <2 x double> %2091, %2093
  %2095 = bitcast i8* %2085 to <2 x double>*
  store <2 x double> %2094, <2 x double>* %2095, align 1
  store %struct.Memory* %loadMem_40095e, %struct.Memory** %MEMORY
  %loadMem_400962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2099, i64 0, i64 0
  %YMM0.i202 = bitcast %union.VectorReg* %2100 to %"class.std::bitset"*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2101, i64 0, i64 1
  %XMM1.i203 = bitcast %union.VectorReg* %2102 to %union.vec128_t*
  %2103 = bitcast %"class.std::bitset"* %YMM0.i202 to i8*
  %2104 = bitcast %"class.std::bitset"* %YMM0.i202 to i8*
  %2105 = bitcast %union.vec128_t* %XMM1.i203 to i8*
  %2106 = load i64, i64* %PC.i201
  %2107 = add i64 %2106, 4
  store i64 %2107, i64* %PC.i201
  %2108 = bitcast i8* %2104 to <2 x double>*
  %2109 = load <2 x double>, <2 x double>* %2108, align 1
  %2110 = bitcast i8* %2105 to <2 x double>*
  %2111 = load <2 x double>, <2 x double>* %2110, align 1
  %2112 = fdiv <2 x double> %2109, %2111
  %2113 = bitcast i8* %2103 to <2 x double>*
  store <2 x double> %2112, <2 x double>* %2113, align 1
  store %struct.Memory* %loadMem_400962, %struct.Memory** %MEMORY
  %loadMem_400966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 15
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2120, i64 0, i64 0
  %YMM0.i200 = bitcast %union.VectorReg* %2121 to %"class.std::bitset"*
  %2122 = bitcast %"class.std::bitset"* %YMM0.i200 to i8*
  %2123 = bitcast %"class.std::bitset"* %YMM0.i200 to i8*
  %2124 = load i64, i64* %RBP.i199
  %2125 = sub i64 %2124, 96
  %2126 = load i64, i64* %PC.i198
  %2127 = add i64 %2126, 5
  store i64 %2127, i64* %PC.i198
  %2128 = bitcast i8* %2123 to <2 x double>*
  %2129 = load <2 x double>, <2 x double>* %2128, align 1
  %2130 = inttoptr i64 %2125 to double*
  %2131 = load double, double* %2130
  %2132 = add i64 %2125, 8
  %2133 = inttoptr i64 %2132 to double*
  %2134 = load double, double* %2133
  %2135 = insertelement <2 x double> undef, double %2131, i32 0
  %2136 = insertelement <2 x double> %2135, double %2134, i32 1
  %2137 = fadd <2 x double> %2129, %2136
  %2138 = bitcast i8* %2122 to <2 x double>*
  store <2 x double> %2137, <2 x double>* %2138, align 1
  store %struct.Memory* %loadMem_400966, %struct.Memory** %MEMORY
  %loadMem_40096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 15
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2145, i64 0, i64 0
  %XMM0.i197 = bitcast %union.VectorReg* %2146 to %union.vec128_t*
  %2147 = load i64, i64* %RBP.i196
  %2148 = sub i64 %2147, 96
  %2149 = bitcast %union.vec128_t* %XMM0.i197 to i8*
  %2150 = load i64, i64* %PC.i195
  %2151 = add i64 %2150, 5
  store i64 %2151, i64* %PC.i195
  %2152 = bitcast i8* %2149 to double*
  %2153 = load double, double* %2152, align 1
  %2154 = getelementptr inbounds i8, i8* %2149, i64 8
  %2155 = bitcast i8* %2154 to double*
  %2156 = load double, double* %2155, align 1
  %2157 = inttoptr i64 %2148 to double*
  store double %2153, double* %2157
  %2158 = add i64 %2148, 8
  %2159 = inttoptr i64 %2158 to double*
  store double %2156, double* %2159
  store %struct.Memory* %loadMem_40096b, %struct.Memory** %MEMORY
  %loadMem_400970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 15
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2167 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2166, i64 0, i64 0
  %YMM0.i194 = bitcast %union.VectorReg* %2167 to %"class.std::bitset"*
  %2168 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2169 = load i64, i64* %RBP.i193
  %2170 = sub i64 %2169, 160
  %2171 = load i64, i64* %PC.i192
  %2172 = add i64 %2171, 8
  store i64 %2172, i64* %PC.i192
  %2173 = inttoptr i64 %2170 to double*
  %2174 = load double, double* %2173
  %2175 = add i64 %2170, 8
  %2176 = inttoptr i64 %2175 to double*
  %2177 = load double, double* %2176
  %2178 = bitcast i8* %2168 to double*
  store double %2174, double* %2178, align 1
  %2179 = getelementptr inbounds i8, i8* %2168, i64 8
  %2180 = bitcast i8* %2179 to double*
  store double %2177, double* %2180, align 1
  store %struct.Memory* %loadMem_400970, %struct.Memory** %MEMORY
  %loadMem_400978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 15
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2187, i64 0, i64 0
  %YMM0.i191 = bitcast %union.VectorReg* %2188 to %"class.std::bitset"*
  %2189 = bitcast %"class.std::bitset"* %YMM0.i191 to i8*
  %2190 = bitcast %"class.std::bitset"* %YMM0.i191 to i8*
  %2191 = load i64, i64* %RBP.i190
  %2192 = sub i64 %2191, 224
  %2193 = load i64, i64* %PC.i189
  %2194 = add i64 %2193, 8
  store i64 %2194, i64* %PC.i189
  %2195 = bitcast i8* %2190 to <2 x double>*
  %2196 = load <2 x double>, <2 x double>* %2195, align 1
  %2197 = inttoptr i64 %2192 to double*
  %2198 = load double, double* %2197
  %2199 = add i64 %2192, 8
  %2200 = inttoptr i64 %2199 to double*
  %2201 = load double, double* %2200
  %2202 = insertelement <2 x double> undef, double %2198, i32 0
  %2203 = insertelement <2 x double> %2202, double %2201, i32 1
  %2204 = fdiv <2 x double> %2196, %2203
  %2205 = bitcast i8* %2189 to <2 x double>*
  store <2 x double> %2204, <2 x double>* %2205, align 1
  store %struct.Memory* %loadMem_400978, %struct.Memory** %MEMORY
  %loadMem_400980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 15
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2212, i64 0, i64 0
  %YMM0.i188 = bitcast %union.VectorReg* %2213 to %"class.std::bitset"*
  %2214 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %2215 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %2216 = load i64, i64* %RBP.i187
  %2217 = sub i64 %2216, 64
  %2218 = load i64, i64* %PC.i186
  %2219 = add i64 %2218, 5
  store i64 %2219, i64* %PC.i186
  %2220 = bitcast i8* %2215 to <2 x double>*
  %2221 = load <2 x double>, <2 x double>* %2220, align 1
  %2222 = inttoptr i64 %2217 to double*
  %2223 = load double, double* %2222
  %2224 = add i64 %2217, 8
  %2225 = inttoptr i64 %2224 to double*
  %2226 = load double, double* %2225
  %2227 = insertelement <2 x double> undef, double %2223, i32 0
  %2228 = insertelement <2 x double> %2227, double %2226, i32 1
  %2229 = fadd <2 x double> %2221, %2228
  %2230 = bitcast i8* %2214 to <2 x double>*
  store <2 x double> %2229, <2 x double>* %2230, align 1
  store %struct.Memory* %loadMem_400980, %struct.Memory** %MEMORY
  %loadMem_400985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 15
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2238 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2237, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %2238 to %union.vec128_t*
  %2239 = load i64, i64* %RBP.i184
  %2240 = sub i64 %2239, 64
  %2241 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %2242 = load i64, i64* %PC.i183
  %2243 = add i64 %2242, 5
  store i64 %2243, i64* %PC.i183
  %2244 = bitcast i8* %2241 to double*
  %2245 = load double, double* %2244, align 1
  %2246 = getelementptr inbounds i8, i8* %2241, i64 8
  %2247 = bitcast i8* %2246 to double*
  %2248 = load double, double* %2247, align 1
  %2249 = inttoptr i64 %2240 to double*
  store double %2245, double* %2249
  %2250 = add i64 %2240, 8
  %2251 = inttoptr i64 %2250 to double*
  store double %2248, double* %2251
  store %struct.Memory* %loadMem_400985, %struct.Memory** %MEMORY
  %loadMem_40098a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2258, i64 0, i64 0
  %YMM0.i182 = bitcast %union.VectorReg* %2259 to %"class.std::bitset"*
  %2260 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %2261 = load i64, i64* %RBP.i181
  %2262 = sub i64 %2261, 160
  %2263 = load i64, i64* %PC.i180
  %2264 = add i64 %2263, 8
  store i64 %2264, i64* %PC.i180
  %2265 = inttoptr i64 %2262 to double*
  %2266 = load double, double* %2265
  %2267 = add i64 %2262, 8
  %2268 = inttoptr i64 %2267 to double*
  %2269 = load double, double* %2268
  %2270 = bitcast i8* %2260 to double*
  store double %2266, double* %2270, align 1
  %2271 = getelementptr inbounds i8, i8* %2260, i64 8
  %2272 = bitcast i8* %2271 to double*
  store double %2269, double* %2272, align 1
  store %struct.Memory* %loadMem_40098a, %struct.Memory** %MEMORY
  %loadMem_400992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 15
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2279, i64 0, i64 1
  %YMM1.i179 = bitcast %union.VectorReg* %2280 to %"class.std::bitset"*
  %2281 = bitcast %"class.std::bitset"* %YMM1.i179 to i8*
  %2282 = load i64, i64* %RBP.i178
  %2283 = sub i64 %2282, 224
  %2284 = load i64, i64* %PC.i177
  %2285 = add i64 %2284, 8
  store i64 %2285, i64* %PC.i177
  %2286 = inttoptr i64 %2283 to double*
  %2287 = load double, double* %2286
  %2288 = add i64 %2283, 8
  %2289 = inttoptr i64 %2288 to double*
  %2290 = load double, double* %2289
  %2291 = bitcast i8* %2281 to double*
  store double %2287, double* %2291, align 1
  %2292 = getelementptr inbounds i8, i8* %2281, i64 8
  %2293 = bitcast i8* %2292 to double*
  store double %2290, double* %2293, align 1
  store %struct.Memory* %loadMem_400992, %struct.Memory** %MEMORY
  %loadMem_40099a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 15
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2300, i64 0, i64 1
  %YMM1.i176 = bitcast %union.VectorReg* %2301 to %"class.std::bitset"*
  %2302 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %2303 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %2304 = load i64, i64* %RBP.i175
  %2305 = sub i64 %2304, 224
  %2306 = load i64, i64* %PC.i174
  %2307 = add i64 %2306, 8
  store i64 %2307, i64* %PC.i174
  %2308 = bitcast i8* %2303 to <2 x double>*
  %2309 = load <2 x double>, <2 x double>* %2308, align 1
  %2310 = inttoptr i64 %2305 to double*
  %2311 = load double, double* %2310
  %2312 = add i64 %2305, 8
  %2313 = inttoptr i64 %2312 to double*
  %2314 = load double, double* %2313
  %2315 = insertelement <2 x double> undef, double %2311, i32 0
  %2316 = insertelement <2 x double> %2315, double %2314, i32 1
  %2317 = fmul <2 x double> %2309, %2316
  %2318 = bitcast i8* %2302 to <2 x double>*
  store <2 x double> %2317, <2 x double>* %2318, align 1
  store %struct.Memory* %loadMem_40099a, %struct.Memory** %MEMORY
  %loadMem_4009a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2322, i64 0, i64 0
  %YMM0.i172 = bitcast %union.VectorReg* %2323 to %"class.std::bitset"*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2324, i64 0, i64 1
  %XMM1.i173 = bitcast %union.VectorReg* %2325 to %union.vec128_t*
  %2326 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2327 = bitcast %"class.std::bitset"* %YMM0.i172 to i8*
  %2328 = bitcast %union.vec128_t* %XMM1.i173 to i8*
  %2329 = load i64, i64* %PC.i171
  %2330 = add i64 %2329, 4
  store i64 %2330, i64* %PC.i171
  %2331 = bitcast i8* %2327 to <2 x double>*
  %2332 = load <2 x double>, <2 x double>* %2331, align 1
  %2333 = bitcast i8* %2328 to <2 x double>*
  %2334 = load <2 x double>, <2 x double>* %2333, align 1
  %2335 = fdiv <2 x double> %2332, %2334
  %2336 = bitcast i8* %2326 to <2 x double>*
  store <2 x double> %2335, <2 x double>* %2336, align 1
  store %struct.Memory* %loadMem_4009a2, %struct.Memory** %MEMORY
  %loadMem_4009a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 15
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2343, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %2344 to %"class.std::bitset"*
  %2345 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %2346 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %2347 = load i64, i64* %RBP.i169
  %2348 = sub i64 %2347, 80
  %2349 = load i64, i64* %PC.i168
  %2350 = add i64 %2349, 5
  store i64 %2350, i64* %PC.i168
  %2351 = bitcast i8* %2346 to <2 x double>*
  %2352 = load <2 x double>, <2 x double>* %2351, align 1
  %2353 = inttoptr i64 %2348 to double*
  %2354 = load double, double* %2353
  %2355 = add i64 %2348, 8
  %2356 = inttoptr i64 %2355 to double*
  %2357 = load double, double* %2356
  %2358 = insertelement <2 x double> undef, double %2354, i32 0
  %2359 = insertelement <2 x double> %2358, double %2357, i32 1
  %2360 = fadd <2 x double> %2352, %2359
  %2361 = bitcast i8* %2345 to <2 x double>*
  store <2 x double> %2360, <2 x double>* %2361, align 1
  store %struct.Memory* %loadMem_4009a6, %struct.Memory** %MEMORY
  %loadMem_4009ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2368, i64 0, i64 0
  %XMM0.i167 = bitcast %union.VectorReg* %2369 to %union.vec128_t*
  %2370 = load i64, i64* %RBP.i166
  %2371 = sub i64 %2370, 80
  %2372 = bitcast %union.vec128_t* %XMM0.i167 to i8*
  %2373 = load i64, i64* %PC.i165
  %2374 = add i64 %2373, 5
  store i64 %2374, i64* %PC.i165
  %2375 = bitcast i8* %2372 to double*
  %2376 = load double, double* %2375, align 1
  %2377 = getelementptr inbounds i8, i8* %2372, i64 8
  %2378 = bitcast i8* %2377 to double*
  %2379 = load double, double* %2378, align 1
  %2380 = inttoptr i64 %2371 to double*
  store double %2376, double* %2380
  %2381 = add i64 %2371, 8
  %2382 = inttoptr i64 %2381 to double*
  store double %2379, double* %2382
  store %struct.Memory* %loadMem_4009ab, %struct.Memory** %MEMORY
  %loadMem_4009b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 15
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2389, i64 0, i64 0
  %YMM0.i164 = bitcast %union.VectorReg* %2390 to %"class.std::bitset"*
  %2391 = bitcast %"class.std::bitset"* %YMM0.i164 to i8*
  %2392 = load i64, i64* %RBP.i163
  %2393 = sub i64 %2392, 240
  %2394 = load i64, i64* %PC.i162
  %2395 = add i64 %2394, 8
  store i64 %2395, i64* %PC.i162
  %2396 = inttoptr i64 %2393 to double*
  %2397 = load double, double* %2396
  %2398 = add i64 %2393, 8
  %2399 = inttoptr i64 %2398 to double*
  %2400 = load double, double* %2399
  %2401 = bitcast i8* %2391 to double*
  store double %2397, double* %2401, align 1
  %2402 = getelementptr inbounds i8, i8* %2391, i64 8
  %2403 = bitcast i8* %2402 to double*
  store double %2400, double* %2403, align 1
  store %struct.Memory* %loadMem_4009b0, %struct.Memory** %MEMORY
  %loadMem_4009b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2410, i64 0, i64 0
  %YMM0.i161 = bitcast %union.VectorReg* %2411 to %"class.std::bitset"*
  %2412 = bitcast %"class.std::bitset"* %YMM0.i161 to i8*
  %2413 = bitcast %"class.std::bitset"* %YMM0.i161 to i8*
  %2414 = load i64, i64* %RBP.i160
  %2415 = sub i64 %2414, 224
  %2416 = load i64, i64* %PC.i159
  %2417 = add i64 %2416, 8
  store i64 %2417, i64* %PC.i159
  %2418 = bitcast i8* %2413 to <2 x double>*
  %2419 = load <2 x double>, <2 x double>* %2418, align 1
  %2420 = inttoptr i64 %2415 to double*
  %2421 = load double, double* %2420
  %2422 = add i64 %2415, 8
  %2423 = inttoptr i64 %2422 to double*
  %2424 = load double, double* %2423
  %2425 = insertelement <2 x double> undef, double %2421, i32 0
  %2426 = insertelement <2 x double> %2425, double %2424, i32 1
  %2427 = fdiv <2 x double> %2419, %2426
  %2428 = bitcast i8* %2412 to <2 x double>*
  store <2 x double> %2427, <2 x double>* %2428, align 1
  store %struct.Memory* %loadMem_4009b8, %struct.Memory** %MEMORY
  %loadMem_4009c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 15
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2435, i64 0, i64 0
  %YMM0.i158 = bitcast %union.VectorReg* %2436 to %"class.std::bitset"*
  %2437 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %2438 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %2439 = load i64, i64* %RBP.i157
  %2440 = sub i64 %2439, 112
  %2441 = load i64, i64* %PC.i156
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %PC.i156
  %2443 = bitcast i8* %2438 to <2 x double>*
  %2444 = load <2 x double>, <2 x double>* %2443, align 1
  %2445 = inttoptr i64 %2440 to double*
  %2446 = load double, double* %2445
  %2447 = add i64 %2440, 8
  %2448 = inttoptr i64 %2447 to double*
  %2449 = load double, double* %2448
  %2450 = insertelement <2 x double> undef, double %2446, i32 0
  %2451 = insertelement <2 x double> %2450, double %2449, i32 1
  %2452 = fadd <2 x double> %2444, %2451
  %2453 = bitcast i8* %2437 to <2 x double>*
  store <2 x double> %2452, <2 x double>* %2453, align 1
  store %struct.Memory* %loadMem_4009c0, %struct.Memory** %MEMORY
  %loadMem_4009c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %2459 to i64*
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2461 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2460, i64 0, i64 0
  %XMM0.i155 = bitcast %union.VectorReg* %2461 to %union.vec128_t*
  %2462 = load i64, i64* %RBP.i154
  %2463 = sub i64 %2462, 112
  %2464 = bitcast %union.vec128_t* %XMM0.i155 to i8*
  %2465 = load i64, i64* %PC.i153
  %2466 = add i64 %2465, 5
  store i64 %2466, i64* %PC.i153
  %2467 = bitcast i8* %2464 to double*
  %2468 = load double, double* %2467, align 1
  %2469 = getelementptr inbounds i8, i8* %2464, i64 8
  %2470 = bitcast i8* %2469 to double*
  %2471 = load double, double* %2470, align 1
  %2472 = inttoptr i64 %2463 to double*
  store double %2468, double* %2472
  %2473 = add i64 %2463, 8
  %2474 = inttoptr i64 %2473 to double*
  store double %2471, double* %2474
  store %struct.Memory* %loadMem_4009c5, %struct.Memory** %MEMORY
  %loadMem_4009ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 15
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2481, i64 0, i64 0
  %YMM0.i152 = bitcast %union.VectorReg* %2482 to %"class.std::bitset"*
  %2483 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %2484 = load i64, i64* %RBP.i151
  %2485 = sub i64 %2484, 240
  %2486 = load i64, i64* %PC.i150
  %2487 = add i64 %2486, 8
  store i64 %2487, i64* %PC.i150
  %2488 = inttoptr i64 %2485 to double*
  %2489 = load double, double* %2488
  %2490 = add i64 %2485, 8
  %2491 = inttoptr i64 %2490 to double*
  %2492 = load double, double* %2491
  %2493 = bitcast i8* %2483 to double*
  store double %2489, double* %2493, align 1
  %2494 = getelementptr inbounds i8, i8* %2483, i64 8
  %2495 = bitcast i8* %2494 to double*
  store double %2492, double* %2495, align 1
  store %struct.Memory* %loadMem_4009ca, %struct.Memory** %MEMORY
  %loadMem_4009d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 15
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2502, i64 0, i64 1
  %YMM1.i149 = bitcast %union.VectorReg* %2503 to %"class.std::bitset"*
  %2504 = bitcast %"class.std::bitset"* %YMM1.i149 to i8*
  %2505 = load i64, i64* %RBP.i148
  %2506 = sub i64 %2505, 176
  %2507 = load i64, i64* %PC.i147
  %2508 = add i64 %2507, 8
  store i64 %2508, i64* %PC.i147
  %2509 = inttoptr i64 %2506 to double*
  %2510 = load double, double* %2509
  %2511 = add i64 %2506, 8
  %2512 = inttoptr i64 %2511 to double*
  %2513 = load double, double* %2512
  %2514 = bitcast i8* %2504 to double*
  store double %2510, double* %2514, align 1
  %2515 = getelementptr inbounds i8, i8* %2504, i64 8
  %2516 = bitcast i8* %2515 to double*
  store double %2513, double* %2516, align 1
  store %struct.Memory* %loadMem_4009d2, %struct.Memory** %MEMORY
  %loadMem_4009da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 15
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2523, i64 0, i64 1
  %YMM1.i146 = bitcast %union.VectorReg* %2524 to %"class.std::bitset"*
  %2525 = bitcast %"class.std::bitset"* %YMM1.i146 to i8*
  %2526 = bitcast %"class.std::bitset"* %YMM1.i146 to i8*
  %2527 = load i64, i64* %RBP.i145
  %2528 = sub i64 %2527, 224
  %2529 = load i64, i64* %PC.i144
  %2530 = add i64 %2529, 8
  store i64 %2530, i64* %PC.i144
  %2531 = bitcast i8* %2526 to <2 x double>*
  %2532 = load <2 x double>, <2 x double>* %2531, align 1
  %2533 = inttoptr i64 %2528 to double*
  %2534 = load double, double* %2533
  %2535 = add i64 %2528, 8
  %2536 = inttoptr i64 %2535 to double*
  %2537 = load double, double* %2536
  %2538 = insertelement <2 x double> undef, double %2534, i32 0
  %2539 = insertelement <2 x double> %2538, double %2537, i32 1
  %2540 = fmul <2 x double> %2532, %2539
  %2541 = bitcast i8* %2525 to <2 x double>*
  store <2 x double> %2540, <2 x double>* %2541, align 1
  store %struct.Memory* %loadMem_4009da, %struct.Memory** %MEMORY
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 15
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2549 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2548, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2549 to %"class.std::bitset"*
  %2550 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2551 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2552 = load i64, i64* %RBP.i143
  %2553 = sub i64 %2552, 160
  %2554 = load i64, i64* %PC.i142
  %2555 = add i64 %2554, 8
  store i64 %2555, i64* %PC.i142
  %2556 = bitcast i8* %2551 to <2 x double>*
  %2557 = load <2 x double>, <2 x double>* %2556, align 1
  %2558 = inttoptr i64 %2553 to double*
  %2559 = load double, double* %2558
  %2560 = add i64 %2553, 8
  %2561 = inttoptr i64 %2560 to double*
  %2562 = load double, double* %2561
  %2563 = insertelement <2 x double> undef, double %2559, i32 0
  %2564 = insertelement <2 x double> %2563, double %2562, i32 1
  %2565 = fsub <2 x double> %2557, %2564
  %2566 = bitcast i8* %2550 to <2 x double>*
  store <2 x double> %2565, <2 x double>* %2566, align 1
  store %struct.Memory* %loadMem_4009e2, %struct.Memory** %MEMORY
  %loadMem_4009ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2570, i64 0, i64 0
  %YMM0.i141 = bitcast %union.VectorReg* %2571 to %"class.std::bitset"*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2572, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2573 to %union.vec128_t*
  %2574 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %2575 = bitcast %"class.std::bitset"* %YMM0.i141 to i8*
  %2576 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2577 = load i64, i64* %PC.i140
  %2578 = add i64 %2577, 4
  store i64 %2578, i64* %PC.i140
  %2579 = bitcast i8* %2575 to <2 x double>*
  %2580 = load <2 x double>, <2 x double>* %2579, align 1
  %2581 = bitcast i8* %2576 to <2 x double>*
  %2582 = load <2 x double>, <2 x double>* %2581, align 1
  %2583 = fdiv <2 x double> %2580, %2582
  %2584 = bitcast i8* %2574 to <2 x double>*
  store <2 x double> %2583, <2 x double>* %2584, align 1
  store %struct.Memory* %loadMem_4009ea, %struct.Memory** %MEMORY
  %loadMem_4009ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 15
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2591, i64 0, i64 0
  %YMM0.i139 = bitcast %union.VectorReg* %2592 to %"class.std::bitset"*
  %2593 = bitcast %"class.std::bitset"* %YMM0.i139 to i8*
  %2594 = bitcast %"class.std::bitset"* %YMM0.i139 to i8*
  %2595 = load i64, i64* %RBP.i138
  %2596 = sub i64 %2595, 128
  %2597 = load i64, i64* %PC.i137
  %2598 = add i64 %2597, 5
  store i64 %2598, i64* %PC.i137
  %2599 = bitcast i8* %2594 to <2 x double>*
  %2600 = load <2 x double>, <2 x double>* %2599, align 1
  %2601 = inttoptr i64 %2596 to double*
  %2602 = load double, double* %2601
  %2603 = add i64 %2596, 8
  %2604 = inttoptr i64 %2603 to double*
  %2605 = load double, double* %2604
  %2606 = insertelement <2 x double> undef, double %2602, i32 0
  %2607 = insertelement <2 x double> %2606, double %2605, i32 1
  %2608 = fadd <2 x double> %2600, %2607
  %2609 = bitcast i8* %2593 to <2 x double>*
  store <2 x double> %2608, <2 x double>* %2609, align 1
  store %struct.Memory* %loadMem_4009ee, %struct.Memory** %MEMORY
  %loadMem_4009f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 15
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2616, i64 0, i64 0
  %XMM0.i136 = bitcast %union.VectorReg* %2617 to %union.vec128_t*
  %2618 = load i64, i64* %RBP.i135
  %2619 = sub i64 %2618, 128
  %2620 = bitcast %union.vec128_t* %XMM0.i136 to i8*
  %2621 = load i64, i64* %PC.i134
  %2622 = add i64 %2621, 5
  store i64 %2622, i64* %PC.i134
  %2623 = bitcast i8* %2620 to double*
  %2624 = load double, double* %2623, align 1
  %2625 = getelementptr inbounds i8, i8* %2620, i64 8
  %2626 = bitcast i8* %2625 to double*
  %2627 = load double, double* %2626, align 1
  %2628 = inttoptr i64 %2619 to double*
  store double %2624, double* %2628
  %2629 = add i64 %2619, 8
  %2630 = inttoptr i64 %2629 to double*
  store double %2627, double* %2630
  store %struct.Memory* %loadMem_4009f3, %struct.Memory** %MEMORY
  %loadMem_4009f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 15
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2637, i64 0, i64 0
  %YMM0.i133 = bitcast %union.VectorReg* %2638 to %"class.std::bitset"*
  %2639 = bitcast %"class.std::bitset"* %YMM0.i133 to i8*
  %2640 = load i64, i64* %RBP.i132
  %2641 = sub i64 %2640, 176
  %2642 = load i64, i64* %PC.i131
  %2643 = add i64 %2642, 8
  store i64 %2643, i64* %PC.i131
  %2644 = inttoptr i64 %2641 to double*
  %2645 = load double, double* %2644
  %2646 = add i64 %2641, 8
  %2647 = inttoptr i64 %2646 to double*
  %2648 = load double, double* %2647
  %2649 = bitcast i8* %2639 to double*
  store double %2645, double* %2649, align 1
  %2650 = getelementptr inbounds i8, i8* %2639, i64 8
  %2651 = bitcast i8* %2650 to double*
  store double %2648, double* %2651, align 1
  store %struct.Memory* %loadMem_4009f8, %struct.Memory** %MEMORY
  %loadMem_400a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 15
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2658, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %2659 to %"class.std::bitset"*
  %2660 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2661 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2662 = load i64, i64* %RBP.i129
  %2663 = sub i64 %2662, 224
  %2664 = load i64, i64* %PC.i128
  %2665 = add i64 %2664, 8
  store i64 %2665, i64* %PC.i128
  %2666 = bitcast i8* %2661 to <2 x double>*
  %2667 = load <2 x double>, <2 x double>* %2666, align 1
  %2668 = inttoptr i64 %2663 to double*
  %2669 = load double, double* %2668
  %2670 = add i64 %2663, 8
  %2671 = inttoptr i64 %2670 to double*
  %2672 = load double, double* %2671
  %2673 = insertelement <2 x double> undef, double %2669, i32 0
  %2674 = insertelement <2 x double> %2673, double %2672, i32 1
  %2675 = fadd <2 x double> %2667, %2674
  %2676 = bitcast i8* %2660 to <2 x double>*
  store <2 x double> %2675, <2 x double>* %2676, align 1
  store %struct.Memory* %loadMem_400a00, %struct.Memory** %MEMORY
  %loadMem_400a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2683, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2684 to %union.vec128_t*
  %2685 = load i64, i64* %RBP.i127
  %2686 = sub i64 %2685, 224
  %2687 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2688 = load i64, i64* %PC.i126
  %2689 = add i64 %2688, 8
  store i64 %2689, i64* %PC.i126
  %2690 = bitcast i8* %2687 to double*
  %2691 = load double, double* %2690, align 1
  %2692 = getelementptr inbounds i8, i8* %2687, i64 8
  %2693 = bitcast i8* %2692 to double*
  %2694 = load double, double* %2693, align 1
  %2695 = inttoptr i64 %2686 to double*
  store double %2691, double* %2695
  %2696 = add i64 %2686, 8
  %2697 = inttoptr i64 %2696 to double*
  store double %2694, double* %2697
  store %struct.Memory* %loadMem_400a08, %struct.Memory** %MEMORY
  %loadMem_400a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %PC.i125
  %2702 = add i64 %2701, -236
  %2703 = load i64, i64* %PC.i125
  %2704 = add i64 %2703, 5
  store i64 %2704, i64* %PC.i125
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2702, i64* %2705, align 8
  store %struct.Memory* %loadMem_400a10, %struct.Memory** %MEMORY
  br label %block_.L_400924

block_.L_400a15:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 11
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %2711 to i64*
  %2712 = load i64, i64* %PC.i123
  %2713 = add i64 %2712, 10
  store i64 %2713, i64* %PC.i123
  store i64 4197448, i64* %RDI.i124, align 8
  store %struct.Memory* %loadMem_400a15, %struct.Memory** %MEMORY
  %loadMem_400a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 9
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %PC.i121
  %2721 = add i64 %2720, 10
  store i64 %2721, i64* %PC.i121
  store i64 4197457, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_400a1f, %struct.Memory** %MEMORY
  %loadMem_400a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 15
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2728, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %2729 to %"class.std::bitset"*
  %2730 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2731 = load i64, i64* %RBP.i119
  %2732 = sub i64 %2731, 24
  %2733 = load i64, i64* %PC.i118
  %2734 = add i64 %2733, 5
  store i64 %2734, i64* %PC.i118
  %2735 = inttoptr i64 %2732 to double*
  %2736 = load double, double* %2735
  %2737 = bitcast i8* %2730 to double*
  store double %2736, double* %2737, align 1
  %2738 = getelementptr inbounds i8, i8* %2730, i64 8
  %2739 = bitcast i8* %2738 to double*
  store double 0.000000e+00, double* %2739, align 1
  store %struct.Memory* %loadMem_400a29, %struct.Memory** %MEMORY
  %loadMem_400a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 1
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %2746 = bitcast %union.anon* %2745 to %struct.anon.2*
  %AL.i117 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2746, i32 0, i32 0
  %2747 = load i64, i64* %PC.i116
  %2748 = add i64 %2747, 2
  store i64 %2748, i64* %PC.i116
  store i8 1, i8* %AL.i117, align 1
  store %struct.Memory* %loadMem_400a2e, %struct.Memory** %MEMORY
  %loadMem1_400a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2751 to i64*
  %2752 = load i64, i64* %PC.i115
  %2753 = add i64 %2752, -1312
  %2754 = load i64, i64* %PC.i115
  %2755 = add i64 %2754, 5
  %2756 = load i64, i64* %PC.i115
  %2757 = add i64 %2756, 5
  store i64 %2757, i64* %PC.i115
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2759 = load i64, i64* %2758, align 8
  %2760 = add i64 %2759, -8
  %2761 = inttoptr i64 %2760 to i64*
  store i64 %2755, i64* %2761
  store i64 %2760, i64* %2758, align 8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2753, i64* %2762, align 8
  store %struct.Memory* %loadMem1_400a30, %struct.Memory** %MEMORY
  %loadMem2_400a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a30 = load i64, i64* %3
  %call2_400a30 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400a30, %struct.Memory* %loadMem2_400a30)
  store %struct.Memory* %call2_400a30, %struct.Memory** %MEMORY
  %loadMem_400a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 11
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %2768 to i64*
  %2769 = load i64, i64* %PC.i113
  %2770 = add i64 %2769, 10
  store i64 %2770, i64* %PC.i113
  store i64 4197448, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_400a35, %struct.Memory** %MEMORY
  %loadMem_400a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 9
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RSI.i112 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %PC.i111
  %2778 = add i64 %2777, 10
  store i64 %2778, i64* %PC.i111
  store i64 4197465, i64* %RSI.i112, align 8
  store %struct.Memory* %loadMem_400a3f, %struct.Memory** %MEMORY
  %loadMem_400a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 15
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2785, i64 0, i64 0
  %YMM0.i110 = bitcast %union.VectorReg* %2786 to %"class.std::bitset"*
  %2787 = bitcast %"class.std::bitset"* %YMM0.i110 to i8*
  %2788 = load i64, i64* %RBP.i109
  %2789 = sub i64 %2788, 32
  %2790 = load i64, i64* %PC.i108
  %2791 = add i64 %2790, 5
  store i64 %2791, i64* %PC.i108
  %2792 = inttoptr i64 %2789 to double*
  %2793 = load double, double* %2792
  %2794 = bitcast i8* %2787 to double*
  store double %2793, double* %2794, align 1
  %2795 = getelementptr inbounds i8, i8* %2787, i64 8
  %2796 = bitcast i8* %2795 to double*
  store double 0.000000e+00, double* %2796, align 1
  store %struct.Memory* %loadMem_400a49, %struct.Memory** %MEMORY
  %loadMem_400a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 1
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %2802 to i32*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 15
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %2805 to i64*
  %2806 = load i64, i64* %RBP.i107
  %2807 = sub i64 %2806, 300
  %2808 = load i32, i32* %EAX.i106
  %2809 = zext i32 %2808 to i64
  %2810 = load i64, i64* %PC.i105
  %2811 = add i64 %2810, 6
  store i64 %2811, i64* %PC.i105
  %2812 = inttoptr i64 %2807 to i32*
  store i32 %2808, i32* %2812
  store %struct.Memory* %loadMem_400a4e, %struct.Memory** %MEMORY
  %loadMem_400a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 1
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %2819 = bitcast %union.anon* %2818 to %struct.anon.2*
  %AL.i104 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2819, i32 0, i32 0
  %2820 = load i64, i64* %PC.i103
  %2821 = add i64 %2820, 2
  store i64 %2821, i64* %PC.i103
  store i8 1, i8* %AL.i104, align 1
  store %struct.Memory* %loadMem_400a54, %struct.Memory** %MEMORY
  %loadMem1_400a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %PC.i102
  %2826 = add i64 %2825, -1350
  %2827 = load i64, i64* %PC.i102
  %2828 = add i64 %2827, 5
  %2829 = load i64, i64* %PC.i102
  %2830 = add i64 %2829, 5
  store i64 %2830, i64* %PC.i102
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2832 = load i64, i64* %2831, align 8
  %2833 = add i64 %2832, -8
  %2834 = inttoptr i64 %2833 to i64*
  store i64 %2828, i64* %2834
  store i64 %2833, i64* %2831, align 8
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2826, i64* %2835, align 8
  store %struct.Memory* %loadMem1_400a56, %struct.Memory** %MEMORY
  %loadMem2_400a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a56 = load i64, i64* %3
  %call2_400a56 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400a56, %struct.Memory* %loadMem2_400a56)
  store %struct.Memory* %call2_400a56, %struct.Memory** %MEMORY
  %loadMem_400a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 15
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2842, i64 0, i64 0
  %YMM0.i101 = bitcast %union.VectorReg* %2843 to %"class.std::bitset"*
  %2844 = bitcast %"class.std::bitset"* %YMM0.i101 to i8*
  %2845 = load i64, i64* %RBP.i100
  %2846 = sub i64 %2845, 96
  %2847 = load i64, i64* %PC.i99
  %2848 = add i64 %2847, 5
  store i64 %2848, i64* %PC.i99
  %2849 = inttoptr i64 %2846 to double*
  %2850 = load double, double* %2849
  %2851 = add i64 %2846, 8
  %2852 = inttoptr i64 %2851 to double*
  %2853 = load double, double* %2852
  %2854 = bitcast i8* %2844 to double*
  store double %2850, double* %2854, align 1
  %2855 = getelementptr inbounds i8, i8* %2844, i64 8
  %2856 = bitcast i8* %2855 to double*
  store double %2853, double* %2856, align 1
  store %struct.Memory* %loadMem_400a5b, %struct.Memory** %MEMORY
  %loadMem_400a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 1
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %2862 to i32*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 15
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %RBP.i98
  %2867 = sub i64 %2866, 304
  %2868 = load i32, i32* %EAX.i97
  %2869 = zext i32 %2868 to i64
  %2870 = load i64, i64* %PC.i96
  %2871 = add i64 %2870, 6
  store i64 %2871, i64* %PC.i96
  %2872 = inttoptr i64 %2867 to i32*
  store i32 %2868, i32* %2872
  store %struct.Memory* %loadMem_400a60, %struct.Memory** %MEMORY
  %loadMem1_400a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %PC.i95
  %2877 = add i64 %2876, -982
  %2878 = load i64, i64* %PC.i95
  %2879 = add i64 %2878, 5
  %2880 = load i64, i64* %PC.i95
  %2881 = add i64 %2880, 5
  store i64 %2881, i64* %PC.i95
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2883 = load i64, i64* %2882, align 8
  %2884 = add i64 %2883, -8
  %2885 = inttoptr i64 %2884 to i64*
  store i64 %2879, i64* %2885
  store i64 %2884, i64* %2882, align 8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2877, i64* %2886, align 8
  store %struct.Memory* %loadMem1_400a66, %struct.Memory** %MEMORY
  %loadMem2_400a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a66 = load i64, i64* %3
  %call2_400a66 = call %struct.Memory* @sub_400690.sum_vec(%struct.State* %0, i64 %loadPC_400a66, %struct.Memory* %loadMem2_400a66)
  store %struct.Memory* %call2_400a66, %struct.Memory** %MEMORY
  %loadMem_400a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 11
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %PC.i93
  %2894 = add i64 %2893, 10
  store i64 %2894, i64* %PC.i93
  store i64 4197448, i64* %RDI.i94, align 8
  store %struct.Memory* %loadMem_400a6b, %struct.Memory** %MEMORY
  %loadMem_400a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 9
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RSI.i92 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %PC.i91
  %2902 = add i64 %2901, 10
  store i64 %2902, i64* %PC.i91
  store i64 4197472, i64* %RSI.i92, align 8
  store %struct.Memory* %loadMem_400a75, %struct.Memory** %MEMORY
  %loadMem_400a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 1
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %2909 = bitcast %union.anon* %2908 to %struct.anon.2*
  %AL.i90 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2909, i32 0, i32 0
  %2910 = load i64, i64* %PC.i89
  %2911 = add i64 %2910, 2
  store i64 %2911, i64* %PC.i89
  store i8 1, i8* %AL.i90, align 1
  store %struct.Memory* %loadMem_400a7f, %struct.Memory** %MEMORY
  %loadMem1_400a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %PC.i88
  %2916 = add i64 %2915, -1393
  %2917 = load i64, i64* %PC.i88
  %2918 = add i64 %2917, 5
  %2919 = load i64, i64* %PC.i88
  %2920 = add i64 %2919, 5
  store i64 %2920, i64* %PC.i88
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2922 = load i64, i64* %2921, align 8
  %2923 = add i64 %2922, -8
  %2924 = inttoptr i64 %2923 to i64*
  store i64 %2918, i64* %2924
  store i64 %2923, i64* %2921, align 8
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2916, i64* %2925, align 8
  store %struct.Memory* %loadMem1_400a81, %struct.Memory** %MEMORY
  %loadMem2_400a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a81 = load i64, i64* %3
  %call2_400a81 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400a81, %struct.Memory* %loadMem2_400a81)
  store %struct.Memory* %call2_400a81, %struct.Memory** %MEMORY
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 11
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %PC.i86
  %2933 = add i64 %2932, 10
  store i64 %2933, i64* %PC.i86
  store i64 4197448, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_400a86, %struct.Memory** %MEMORY
  %loadMem_400a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 9
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %PC.i84
  %2941 = add i64 %2940, 10
  store i64 %2941, i64* %PC.i84
  store i64 4197481, i64* %RSI.i85, align 8
  store %struct.Memory* %loadMem_400a90, %struct.Memory** %MEMORY
  %loadMem_400a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 15
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2948, i64 0, i64 0
  %YMM0.i83 = bitcast %union.VectorReg* %2949 to %"class.std::bitset"*
  %2950 = bitcast %"class.std::bitset"* %YMM0.i83 to i8*
  %2951 = load i64, i64* %RBP.i82
  %2952 = sub i64 %2951, 40
  %2953 = load i64, i64* %PC.i81
  %2954 = add i64 %2953, 5
  store i64 %2954, i64* %PC.i81
  %2955 = inttoptr i64 %2952 to double*
  %2956 = load double, double* %2955
  %2957 = bitcast i8* %2950 to double*
  store double %2956, double* %2957, align 1
  %2958 = getelementptr inbounds i8, i8* %2950, i64 8
  %2959 = bitcast i8* %2958 to double*
  store double 0.000000e+00, double* %2959, align 1
  store %struct.Memory* %loadMem_400a9a, %struct.Memory** %MEMORY
  %loadMem_400a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 1
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %EAX.i79 = bitcast %union.anon* %2965 to i32*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 15
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %RBP.i80
  %2970 = sub i64 %2969, 308
  %2971 = load i32, i32* %EAX.i79
  %2972 = zext i32 %2971 to i64
  %2973 = load i64, i64* %PC.i78
  %2974 = add i64 %2973, 6
  store i64 %2974, i64* %PC.i78
  %2975 = inttoptr i64 %2970 to i32*
  store i32 %2971, i32* %2975
  store %struct.Memory* %loadMem_400a9f, %struct.Memory** %MEMORY
  %loadMem_400aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 1
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %2982 = bitcast %union.anon* %2981 to %struct.anon.2*
  %AL.i77 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2982, i32 0, i32 0
  %2983 = load i64, i64* %PC.i76
  %2984 = add i64 %2983, 2
  store i64 %2984, i64* %PC.i76
  store i8 1, i8* %AL.i77, align 1
  store %struct.Memory* %loadMem_400aa5, %struct.Memory** %MEMORY
  %loadMem1_400aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %PC.i75
  %2989 = add i64 %2988, -1431
  %2990 = load i64, i64* %PC.i75
  %2991 = add i64 %2990, 5
  %2992 = load i64, i64* %PC.i75
  %2993 = add i64 %2992, 5
  store i64 %2993, i64* %PC.i75
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2995 = load i64, i64* %2994, align 8
  %2996 = add i64 %2995, -8
  %2997 = inttoptr i64 %2996 to i64*
  store i64 %2991, i64* %2997
  store i64 %2996, i64* %2994, align 8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2989, i64* %2998, align 8
  store %struct.Memory* %loadMem1_400aa7, %struct.Memory** %MEMORY
  %loadMem2_400aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aa7 = load i64, i64* %3
  %call2_400aa7 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400aa7, %struct.Memory* %loadMem2_400aa7)
  store %struct.Memory* %call2_400aa7, %struct.Memory** %MEMORY
  %loadMem_400aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 11
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %PC.i73
  %3006 = add i64 %3005, 10
  store i64 %3006, i64* %PC.i73
  store i64 4197448, i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_400aac, %struct.Memory** %MEMORY
  %loadMem_400ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 9
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RSI.i72 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %PC.i71
  %3014 = add i64 %3013, 10
  store i64 %3014, i64* %PC.i71
  store i64 4197493, i64* %RSI.i72, align 8
  store %struct.Memory* %loadMem_400ab6, %struct.Memory** %MEMORY
  %loadMem_400ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 33
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 15
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3021, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %3022 to %"class.std::bitset"*
  %3023 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %3024 = load i64, i64* %RBP.i69
  %3025 = sub i64 %3024, 48
  %3026 = load i64, i64* %PC.i68
  %3027 = add i64 %3026, 5
  store i64 %3027, i64* %PC.i68
  %3028 = inttoptr i64 %3025 to double*
  %3029 = load double, double* %3028
  %3030 = bitcast i8* %3023 to double*
  store double %3029, double* %3030, align 1
  %3031 = getelementptr inbounds i8, i8* %3023, i64 8
  %3032 = bitcast i8* %3031 to double*
  store double 0.000000e+00, double* %3032, align 1
  store %struct.Memory* %loadMem_400ac0, %struct.Memory** %MEMORY
  %loadMem_400ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 1
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %3038 to i32*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 15
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %RBP.i67
  %3043 = sub i64 %3042, 312
  %3044 = load i32, i32* %EAX.i66
  %3045 = zext i32 %3044 to i64
  %3046 = load i64, i64* %PC.i65
  %3047 = add i64 %3046, 6
  store i64 %3047, i64* %PC.i65
  %3048 = inttoptr i64 %3043 to i32*
  store i32 %3044, i32* %3048
  store %struct.Memory* %loadMem_400ac5, %struct.Memory** %MEMORY
  %loadMem_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 1
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %3055 = bitcast %union.anon* %3054 to %struct.anon.2*
  %AL.i64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3055, i32 0, i32 0
  %3056 = load i64, i64* %PC.i63
  %3057 = add i64 %3056, 2
  store i64 %3057, i64* %PC.i63
  store i8 1, i8* %AL.i64, align 1
  store %struct.Memory* %loadMem_400acb, %struct.Memory** %MEMORY
  %loadMem1_400acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %PC.i62
  %3062 = add i64 %3061, -1469
  %3063 = load i64, i64* %PC.i62
  %3064 = add i64 %3063, 5
  %3065 = load i64, i64* %PC.i62
  %3066 = add i64 %3065, 5
  store i64 %3066, i64* %PC.i62
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3068 = load i64, i64* %3067, align 8
  %3069 = add i64 %3068, -8
  %3070 = inttoptr i64 %3069 to i64*
  store i64 %3064, i64* %3070
  store i64 %3069, i64* %3067, align 8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3062, i64* %3071, align 8
  store %struct.Memory* %loadMem1_400acd, %struct.Memory** %MEMORY
  %loadMem2_400acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400acd = load i64, i64* %3
  %call2_400acd = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400acd, %struct.Memory* %loadMem2_400acd)
  store %struct.Memory* %call2_400acd, %struct.Memory** %MEMORY
  %loadMem_400ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 15
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3078, i64 0, i64 0
  %YMM0.i61 = bitcast %union.VectorReg* %3079 to %"class.std::bitset"*
  %3080 = bitcast %"class.std::bitset"* %YMM0.i61 to i8*
  %3081 = load i64, i64* %RBP.i60
  %3082 = sub i64 %3081, 64
  %3083 = load i64, i64* %PC.i59
  %3084 = add i64 %3083, 5
  store i64 %3084, i64* %PC.i59
  %3085 = inttoptr i64 %3082 to double*
  %3086 = load double, double* %3085
  %3087 = add i64 %3082, 8
  %3088 = inttoptr i64 %3087 to double*
  %3089 = load double, double* %3088
  %3090 = bitcast i8* %3080 to double*
  store double %3086, double* %3090, align 1
  %3091 = getelementptr inbounds i8, i8* %3080, i64 8
  %3092 = bitcast i8* %3091 to double*
  store double %3089, double* %3092, align 1
  store %struct.Memory* %loadMem_400ad2, %struct.Memory** %MEMORY
  %loadMem_400ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %EAX.i57 = bitcast %union.anon* %3098 to i32*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 15
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RBP.i58
  %3103 = sub i64 %3102, 316
  %3104 = load i32, i32* %EAX.i57
  %3105 = zext i32 %3104 to i64
  %3106 = load i64, i64* %PC.i56
  %3107 = add i64 %3106, 6
  store i64 %3107, i64* %PC.i56
  %3108 = inttoptr i64 %3103 to i32*
  store i32 %3104, i32* %3108
  store %struct.Memory* %loadMem_400ad7, %struct.Memory** %MEMORY
  %loadMem1_400add = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %PC.i55
  %3113 = add i64 %3112, -1101
  %3114 = load i64, i64* %PC.i55
  %3115 = add i64 %3114, 5
  %3116 = load i64, i64* %PC.i55
  %3117 = add i64 %3116, 5
  store i64 %3117, i64* %PC.i55
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3119 = load i64, i64* %3118, align 8
  %3120 = add i64 %3119, -8
  %3121 = inttoptr i64 %3120 to i64*
  store i64 %3115, i64* %3121
  store i64 %3120, i64* %3118, align 8
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3113, i64* %3122, align 8
  store %struct.Memory* %loadMem1_400add, %struct.Memory** %MEMORY
  %loadMem2_400add = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400add = load i64, i64* %3
  %call2_400add = call %struct.Memory* @sub_400690.sum_vec(%struct.State* %0, i64 %loadPC_400add, %struct.Memory* %loadMem2_400add)
  store %struct.Memory* %call2_400add, %struct.Memory** %MEMORY
  %loadMem_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 11
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %PC.i53
  %3130 = add i64 %3129, 10
  store i64 %3130, i64* %PC.i53
  store i64 4197448, i64* %RDI.i54, align 8
  store %struct.Memory* %loadMem_400ae2, %struct.Memory** %MEMORY
  %loadMem_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 9
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RSI.i52 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %PC.i51
  %3138 = add i64 %3137, 10
  store i64 %3138, i64* %PC.i51
  store i64 4197532, i64* %RSI.i52, align 8
  store %struct.Memory* %loadMem_400aec, %struct.Memory** %MEMORY
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 1
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %3145 = bitcast %union.anon* %3144 to %struct.anon.2*
  %AL.i50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3145, i32 0, i32 0
  %3146 = load i64, i64* %PC.i49
  %3147 = add i64 %3146, 2
  store i64 %3147, i64* %PC.i49
  store i8 1, i8* %AL.i50, align 1
  store %struct.Memory* %loadMem_400af6, %struct.Memory** %MEMORY
  %loadMem1_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3150 to i64*
  %3151 = load i64, i64* %PC.i48
  %3152 = add i64 %3151, -1512
  %3153 = load i64, i64* %PC.i48
  %3154 = add i64 %3153, 5
  %3155 = load i64, i64* %PC.i48
  %3156 = add i64 %3155, 5
  store i64 %3156, i64* %PC.i48
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3158 = load i64, i64* %3157, align 8
  %3159 = add i64 %3158, -8
  %3160 = inttoptr i64 %3159 to i64*
  store i64 %3154, i64* %3160
  store i64 %3159, i64* %3157, align 8
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3152, i64* %3161, align 8
  store %struct.Memory* %loadMem1_400af8, %struct.Memory** %MEMORY
  %loadMem2_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400af8 = load i64, i64* %3
  %call2_400af8 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400af8, %struct.Memory* %loadMem2_400af8)
  store %struct.Memory* %call2_400af8, %struct.Memory** %MEMORY
  %loadMem_400afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 15
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3169 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3168, i64 0, i64 0
  %YMM0.i47 = bitcast %union.VectorReg* %3169 to %"class.std::bitset"*
  %3170 = bitcast %"class.std::bitset"* %YMM0.i47 to i8*
  %3171 = load i64, i64* %RBP.i46
  %3172 = sub i64 %3171, 80
  %3173 = load i64, i64* %PC.i45
  %3174 = add i64 %3173, 5
  store i64 %3174, i64* %PC.i45
  %3175 = inttoptr i64 %3172 to double*
  %3176 = load double, double* %3175
  %3177 = add i64 %3172, 8
  %3178 = inttoptr i64 %3177 to double*
  %3179 = load double, double* %3178
  %3180 = bitcast i8* %3170 to double*
  store double %3176, double* %3180, align 1
  %3181 = getelementptr inbounds i8, i8* %3170, i64 8
  %3182 = bitcast i8* %3181 to double*
  store double %3179, double* %3182, align 1
  store %struct.Memory* %loadMem_400afd, %struct.Memory** %MEMORY
  %loadMem_400b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 1
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %3188 to i32*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 15
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RBP.i44
  %3193 = sub i64 %3192, 320
  %3194 = load i32, i32* %EAX.i43
  %3195 = zext i32 %3194 to i64
  %3196 = load i64, i64* %PC.i42
  %3197 = add i64 %3196, 6
  store i64 %3197, i64* %PC.i42
  %3198 = inttoptr i64 %3193 to i32*
  store i32 %3194, i32* %3198
  store %struct.Memory* %loadMem_400b02, %struct.Memory** %MEMORY
  %loadMem1_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3201 to i64*
  %3202 = load i64, i64* %PC.i41
  %3203 = add i64 %3202, -1144
  %3204 = load i64, i64* %PC.i41
  %3205 = add i64 %3204, 5
  %3206 = load i64, i64* %PC.i41
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %PC.i41
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3209 = load i64, i64* %3208, align 8
  %3210 = add i64 %3209, -8
  %3211 = inttoptr i64 %3210 to i64*
  store i64 %3205, i64* %3211
  store i64 %3210, i64* %3208, align 8
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3203, i64* %3212, align 8
  store %struct.Memory* %loadMem1_400b08, %struct.Memory** %MEMORY
  %loadMem2_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b08 = load i64, i64* %3
  %call2_400b08 = call %struct.Memory* @sub_400690.sum_vec(%struct.State* %0, i64 %loadPC_400b08, %struct.Memory* %loadMem2_400b08)
  store %struct.Memory* %call2_400b08, %struct.Memory** %MEMORY
  %loadMem_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 33
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 11
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %PC.i39
  %3220 = add i64 %3219, 10
  store i64 %3220, i64* %PC.i39
  store i64 4197448, i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_400b0d, %struct.Memory** %MEMORY
  %loadMem_400b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 9
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %RSI.i38 = bitcast %union.anon* %3226 to i64*
  %3227 = load i64, i64* %PC.i37
  %3228 = add i64 %3227, 10
  store i64 %3228, i64* %PC.i37
  store i64 4197507, i64* %RSI.i38, align 8
  store %struct.Memory* %loadMem_400b17, %struct.Memory** %MEMORY
  %loadMem_400b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 1
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %3235 = bitcast %union.anon* %3234 to %struct.anon.2*
  %AL.i36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3235, i32 0, i32 0
  %3236 = load i64, i64* %PC.i35
  %3237 = add i64 %3236, 2
  store i64 %3237, i64* %PC.i35
  store i8 1, i8* %AL.i36, align 1
  store %struct.Memory* %loadMem_400b21, %struct.Memory** %MEMORY
  %loadMem1_400b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 33
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %PC.i34
  %3242 = add i64 %3241, -1555
  %3243 = load i64, i64* %PC.i34
  %3244 = add i64 %3243, 5
  %3245 = load i64, i64* %PC.i34
  %3246 = add i64 %3245, 5
  store i64 %3246, i64* %PC.i34
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3248 = load i64, i64* %3247, align 8
  %3249 = add i64 %3248, -8
  %3250 = inttoptr i64 %3249 to i64*
  store i64 %3244, i64* %3250
  store i64 %3249, i64* %3247, align 8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3242, i64* %3251, align 8
  store %struct.Memory* %loadMem1_400b23, %struct.Memory** %MEMORY
  %loadMem2_400b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b23 = load i64, i64* %3
  %call2_400b23 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400b23, %struct.Memory* %loadMem2_400b23)
  store %struct.Memory* %call2_400b23, %struct.Memory** %MEMORY
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 15
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3258, i64 0, i64 0
  %YMM0.i33 = bitcast %union.VectorReg* %3259 to %"class.std::bitset"*
  %3260 = bitcast %"class.std::bitset"* %YMM0.i33 to i8*
  %3261 = load i64, i64* %RBP.i32
  %3262 = sub i64 %3261, 112
  %3263 = load i64, i64* %PC.i31
  %3264 = add i64 %3263, 5
  store i64 %3264, i64* %PC.i31
  %3265 = inttoptr i64 %3262 to double*
  %3266 = load double, double* %3265
  %3267 = add i64 %3262, 8
  %3268 = inttoptr i64 %3267 to double*
  %3269 = load double, double* %3268
  %3270 = bitcast i8* %3260 to double*
  store double %3266, double* %3270, align 1
  %3271 = getelementptr inbounds i8, i8* %3260, i64 8
  %3272 = bitcast i8* %3271 to double*
  store double %3269, double* %3272, align 1
  store %struct.Memory* %loadMem_400b28, %struct.Memory** %MEMORY
  %loadMem_400b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 1
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %3278 to i32*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 15
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RBP.i30
  %3283 = sub i64 %3282, 324
  %3284 = load i32, i32* %EAX.i29
  %3285 = zext i32 %3284 to i64
  %3286 = load i64, i64* %PC.i28
  %3287 = add i64 %3286, 6
  store i64 %3287, i64* %PC.i28
  %3288 = inttoptr i64 %3283 to i32*
  store i32 %3284, i32* %3288
  store %struct.Memory* %loadMem_400b2d, %struct.Memory** %MEMORY
  %loadMem1_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %PC.i27
  %3293 = add i64 %3292, -1187
  %3294 = load i64, i64* %PC.i27
  %3295 = add i64 %3294, 5
  %3296 = load i64, i64* %PC.i27
  %3297 = add i64 %3296, 5
  store i64 %3297, i64* %PC.i27
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3299 = load i64, i64* %3298, align 8
  %3300 = add i64 %3299, -8
  %3301 = inttoptr i64 %3300 to i64*
  store i64 %3295, i64* %3301
  store i64 %3300, i64* %3298, align 8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3293, i64* %3302, align 8
  store %struct.Memory* %loadMem1_400b33, %struct.Memory** %MEMORY
  %loadMem2_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b33 = load i64, i64* %3
  %call2_400b33 = call %struct.Memory* @sub_400690.sum_vec(%struct.State* %0, i64 %loadPC_400b33, %struct.Memory* %loadMem2_400b33)
  store %struct.Memory* %call2_400b33, %struct.Memory** %MEMORY
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 33
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3305 to i64*
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 11
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %3308 to i64*
  %3309 = load i64, i64* %PC.i25
  %3310 = add i64 %3309, 10
  store i64 %3310, i64* %PC.i25
  store i64 4197448, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_400b38, %struct.Memory** %MEMORY
  %loadMem_400b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 9
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RSI.i24 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %PC.i23
  %3318 = add i64 %3317, 10
  store i64 %3318, i64* %PC.i23
  store i64 4197520, i64* %RSI.i24, align 8
  store %struct.Memory* %loadMem_400b42, %struct.Memory** %MEMORY
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 1
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %3325 = bitcast %union.anon* %3324 to %struct.anon.2*
  %AL.i22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3325, i32 0, i32 0
  %3326 = load i64, i64* %PC.i21
  %3327 = add i64 %3326, 2
  store i64 %3327, i64* %PC.i21
  store i8 1, i8* %AL.i22, align 1
  store %struct.Memory* %loadMem_400b4c, %struct.Memory** %MEMORY
  %loadMem1_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %PC.i20
  %3332 = add i64 %3331, -1598
  %3333 = load i64, i64* %PC.i20
  %3334 = add i64 %3333, 5
  %3335 = load i64, i64* %PC.i20
  %3336 = add i64 %3335, 5
  store i64 %3336, i64* %PC.i20
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3338 = load i64, i64* %3337, align 8
  %3339 = add i64 %3338, -8
  %3340 = inttoptr i64 %3339 to i64*
  store i64 %3334, i64* %3340
  store i64 %3339, i64* %3337, align 8
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3332, i64* %3341, align 8
  store %struct.Memory* %loadMem1_400b4e, %struct.Memory** %MEMORY
  %loadMem2_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b4e = load i64, i64* %3
  %call2_400b4e = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400b4e, %struct.Memory* %loadMem2_400b4e)
  store %struct.Memory* %call2_400b4e, %struct.Memory** %MEMORY
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 15
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3348, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3349 to %"class.std::bitset"*
  %3350 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3351 = load i64, i64* %RBP.i19
  %3352 = sub i64 %3351, 128
  %3353 = load i64, i64* %PC.i18
  %3354 = add i64 %3353, 5
  store i64 %3354, i64* %PC.i18
  %3355 = inttoptr i64 %3352 to double*
  %3356 = load double, double* %3355
  %3357 = add i64 %3352, 8
  %3358 = inttoptr i64 %3357 to double*
  %3359 = load double, double* %3358
  %3360 = bitcast i8* %3350 to double*
  store double %3356, double* %3360, align 1
  %3361 = getelementptr inbounds i8, i8* %3350, i64 8
  %3362 = bitcast i8* %3361 to double*
  store double %3359, double* %3362, align 1
  store %struct.Memory* %loadMem_400b53, %struct.Memory** %MEMORY
  %loadMem_400b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 1
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %3368 to i32*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 15
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %RBP.i17
  %3373 = sub i64 %3372, 328
  %3374 = load i32, i32* %EAX.i16
  %3375 = zext i32 %3374 to i64
  %3376 = load i64, i64* %PC.i15
  %3377 = add i64 %3376, 6
  store i64 %3377, i64* %PC.i15
  %3378 = inttoptr i64 %3373 to i32*
  store i32 %3374, i32* %3378
  store %struct.Memory* %loadMem_400b58, %struct.Memory** %MEMORY
  %loadMem1_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %PC.i14
  %3383 = add i64 %3382, -1230
  %3384 = load i64, i64* %PC.i14
  %3385 = add i64 %3384, 5
  %3386 = load i64, i64* %PC.i14
  %3387 = add i64 %3386, 5
  store i64 %3387, i64* %PC.i14
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3389 = load i64, i64* %3388, align 8
  %3390 = add i64 %3389, -8
  %3391 = inttoptr i64 %3390 to i64*
  store i64 %3385, i64* %3391
  store i64 %3390, i64* %3388, align 8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3383, i64* %3392, align 8
  store %struct.Memory* %loadMem1_400b5e, %struct.Memory** %MEMORY
  %loadMem2_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b5e = load i64, i64* %3
  %call2_400b5e = call %struct.Memory* @sub_400690.sum_vec(%struct.State* %0, i64 %loadPC_400b5e, %struct.Memory* %loadMem2_400b5e)
  store %struct.Memory* %call2_400b5e, %struct.Memory** %MEMORY
  %loadMem_400b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 11
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %PC.i13
  %3400 = add i64 %3399, 10
  store i64 %3400, i64* %PC.i13
  store i64 4197448, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400b63, %struct.Memory** %MEMORY
  %loadMem_400b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 9
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %PC.i12
  %3408 = add i64 %3407, 10
  store i64 %3408, i64* %PC.i12
  store i64 4197541, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400b6d, %struct.Memory** %MEMORY
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 1
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %3415 = bitcast %union.anon* %3414 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3415, i32 0, i32 0
  %3416 = load i64, i64* %PC.i11
  %3417 = add i64 %3416, 2
  store i64 %3417, i64* %PC.i11
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400b77, %struct.Memory** %MEMORY
  %loadMem1_400b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %PC.i10
  %3422 = add i64 %3421, -1641
  %3423 = load i64, i64* %PC.i10
  %3424 = add i64 %3423, 5
  %3425 = load i64, i64* %PC.i10
  %3426 = add i64 %3425, 5
  store i64 %3426, i64* %PC.i10
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3428 = load i64, i64* %3427, align 8
  %3429 = add i64 %3428, -8
  %3430 = inttoptr i64 %3429 to i64*
  store i64 %3424, i64* %3430
  store i64 %3429, i64* %3427, align 8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3422, i64* %3431, align 8
  store %struct.Memory* %loadMem1_400b79, %struct.Memory** %MEMORY
  %loadMem2_400b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b79 = load i64, i64* %3
  %call2_400b79 = call %struct.Memory* @sub_400510.printf_plt(%struct.State* %0, i64 %loadPC_400b79, %struct.Memory* %loadMem2_400b79)
  store %struct.Memory* %call2_400b79, %struct.Memory** %MEMORY
  %loadMem_400b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 5
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3437 to i32*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 5
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3440 to i64*
  %3441 = load i64, i64* %RCX.i
  %3442 = load i32, i32* %ECX.i9
  %3443 = zext i32 %3442 to i64
  %3444 = load i64, i64* %PC.i8
  %3445 = add i64 %3444, 2
  store i64 %3445, i64* %PC.i8
  %3446 = xor i64 %3443, %3441
  %3447 = trunc i64 %3446 to i32
  %3448 = and i64 %3446, 4294967295
  store i64 %3448, i64* %RCX.i, align 8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3449, align 1
  %3450 = and i32 %3447, 255
  %3451 = call i32 @llvm.ctpop.i32(i32 %3450)
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  %3454 = xor i8 %3453, 1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3454, i8* %3455, align 1
  %3456 = icmp eq i32 %3447, 0
  %3457 = zext i1 %3456 to i8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3457, i8* %3458, align 1
  %3459 = lshr i32 %3447, 31
  %3460 = trunc i32 %3459 to i8
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3460, i8* %3461, align 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3462, align 1
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3463, align 1
  store %struct.Memory* %loadMem_400b7e, %struct.Memory** %MEMORY
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 33
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3466 to i64*
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 1
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3469 to i32*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 15
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3472 to i64*
  %3473 = load i64, i64* %RBP.i7
  %3474 = sub i64 %3473, 332
  %3475 = load i32, i32* %EAX.i
  %3476 = zext i32 %3475 to i64
  %3477 = load i64, i64* %PC.i6
  %3478 = add i64 %3477, 6
  store i64 %3478, i64* %PC.i6
  %3479 = inttoptr i64 %3474 to i32*
  store i32 %3475, i32* %3479
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  %loadMem_400b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 33
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3482 to i64*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 5
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3485 to i32*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 1
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3488 to i64*
  %3489 = load i32, i32* %ECX.i
  %3490 = zext i32 %3489 to i64
  %3491 = load i64, i64* %PC.i5
  %3492 = add i64 %3491, 2
  store i64 %3492, i64* %PC.i5
  %3493 = and i64 %3490, 4294967295
  store i64 %3493, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400b86, %struct.Memory** %MEMORY
  %loadMem_400b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 13
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RSP.i
  %3501 = load i64, i64* %PC.i4
  %3502 = add i64 %3501, 7
  store i64 %3502, i64* %PC.i4
  %3503 = add i64 336, %3500
  store i64 %3503, i64* %RSP.i, align 8
  %3504 = icmp ult i64 %3503, %3500
  %3505 = icmp ult i64 %3503, 336
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
  %3516 = xor i64 336, %3500
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
  %3528 = lshr i64 %3500, 63
  %3529 = xor i64 %3525, %3528
  %3530 = add i64 %3529, %3525
  %3531 = icmp eq i64 %3530, 2
  %3532 = zext i1 %3531 to i8
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3532, i8* %3533, align 1
  store %struct.Memory* %loadMem_400b88, %struct.Memory** %MEMORY
  %loadMem_400b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 15
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3539 to i64*
  %3540 = load i64, i64* %PC.i2
  %3541 = add i64 %3540, 1
  store i64 %3541, i64* %PC.i2
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3543 = load i64, i64* %3542, align 8
  %3544 = add i64 %3543, 8
  %3545 = inttoptr i64 %3543 to i64*
  %3546 = load i64, i64* %3545
  store i64 %3546, i64* %RBP.i3, align 8
  store i64 %3544, i64* %3542, align 8
  store %struct.Memory* %loadMem_400b8f, %struct.Memory** %MEMORY
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 33
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %PC.i1
  %3551 = add i64 %3550, 1
  store i64 %3551, i64* %PC.i1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3554 = load i64, i64* %3553, align 8
  %3555 = inttoptr i64 %3554 to i64*
  %3556 = load i64, i64* %3555
  store i64 %3556, i64* %3552, align 8
  %3557 = add i64 %3554, 8
  store i64 %3557, i64* %3553, align 8
  store %struct.Memory* %loadMem_400b90, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400b90
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 336
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 336
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
  %23 = xor i64 336, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 276
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2500000, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 288
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

define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 288
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

define %struct.Memory* @routine_callq_.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1305
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1297
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1265
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1233
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

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1241
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 208
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1198
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

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1198
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1163
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x114__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 276
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

define %struct.Memory* @routine_jb_.L_400914(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x448__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1104
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

define %struct.Memory* @routine_movsd_0x428__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1072
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x40c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1044
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 296
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

define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 296
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

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 248
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 256
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 264
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

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 272
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

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 256
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

define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 264
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

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 272
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

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movsd_0x329__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 817
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

define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 248
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
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

define %struct.Memory* @routine_jmpq_.L_4007d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 224
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
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

define %struct.Memory* @routine_jb_.L_400a15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x double>*
  %16 = load <2 x double>, <2 x double>* %15, align 1
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = fmul <2 x double> %16, %18
  %20 = bitcast i8* %10 to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x double>*
  %16 = load <2 x double>, <2 x double>* %15, align 1
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = fdiv <2 x double> %16, %18
  %20 = bitcast i8* %10 to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fdiv <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fmul <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fsub <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400924(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400c48___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197448, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c51___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197457, i64* %RSI, align 8
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x400c59___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197465, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x400c60___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197472, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c69___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197481, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c75___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197493, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 312
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c9c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197532, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c83___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197507, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c90___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197520, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 328
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400ca5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4197541, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 336, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 336
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
  %25 = xor i64 336, %9
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
