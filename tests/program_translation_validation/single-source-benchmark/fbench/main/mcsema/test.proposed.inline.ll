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

declare %struct.Memory* @sub_4005d0.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400f60.trace_line(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400610.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400630.sprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4005f0.strcmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4005c0.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400730 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400730, %struct.Memory** %MEMORY
  %loadMem_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i763 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i763
  %27 = load i64, i64* %PC.i762
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i762
  store i64 %26, i64* %RBP.i764, align 8
  store %struct.Memory* %loadMem_400731, %struct.Memory** %MEMORY
  %loadMem_400734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i761 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i761
  %36 = load i64, i64* %PC.i760
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i760
  %38 = sub i64 %35, 192
  store i64 %38, i64* %RSP.i761, align 8
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
  store %struct.Memory* %loadMem_400734, %struct.Memory** %MEMORY
  %loadMem_40073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i759 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM0.i759 to i8*
  %73 = load i64, i64* %PC.i758
  %74 = add i64 %73, 3757
  %75 = load i64, i64* %PC.i758
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i758
  %77 = inttoptr i64 %74 to double*
  %78 = load double, double* %77
  %79 = bitcast i8* %72 to double*
  store double %78, double* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 8
  %81 = bitcast i8* %80 to double*
  store double 0.000000e+00, double* %81, align 1
  store %struct.Memory* %loadMem_40073b, %struct.Memory** %MEMORY
  %loadMem_400743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %86 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %85, i64 0, i64 1
  %YMM1.i757 = bitcast %union.VectorReg* %86 to %"class.std::bitset"*
  %87 = bitcast %"class.std::bitset"* %YMM1.i757 to i8*
  %88 = load i64, i64* %PC.i756
  %89 = add i64 %88, 3757
  %90 = load i64, i64* %PC.i756
  %91 = add i64 %90, 8
  store i64 %91, i64* %PC.i756
  %92 = inttoptr i64 %89 to double*
  %93 = load double, double* %92
  %94 = bitcast i8* %87 to double*
  store double %93, double* %94, align 1
  %95 = getelementptr inbounds i8, i8* %87, i64 8
  %96 = bitcast i8* %95 to double*
  store double 0.000000e+00, double* %96, align 1
  store %struct.Memory* %loadMem_400743, %struct.Memory** %MEMORY
  %loadMem_40074b = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %100, i64 0, i64 2
  %YMM2.i755 = bitcast %union.VectorReg* %101 to %"class.std::bitset"*
  %102 = bitcast %"class.std::bitset"* %YMM2.i755 to i8*
  %103 = load i64, i64* %PC.i754
  %104 = add i64 %103, 3757
  %105 = load i64, i64* %PC.i754
  %106 = add i64 %105, 8
  store i64 %106, i64* %PC.i754
  %107 = inttoptr i64 %104 to double*
  %108 = load double, double* %107
  %109 = bitcast i8* %102 to double*
  store double %108, double* %109, align 1
  %110 = getelementptr inbounds i8, i8* %102, i64 8
  %111 = bitcast i8* %110 to double*
  store double 0.000000e+00, double* %111, align 1
  store %struct.Memory* %loadMem_40074b, %struct.Memory** %MEMORY
  %loadMem_400753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %116 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %115, i64 0, i64 3
  %YMM3.i753 = bitcast %union.VectorReg* %116 to %"class.std::bitset"*
  %117 = bitcast %"class.std::bitset"* %YMM3.i753 to i8*
  %118 = load i64, i64* %PC.i752
  %119 = add i64 %118, 3757
  %120 = load i64, i64* %PC.i752
  %121 = add i64 %120, 8
  store i64 %121, i64* %PC.i752
  %122 = inttoptr i64 %119 to double*
  %123 = load double, double* %122
  %124 = bitcast i8* %117 to double*
  store double %123, double* %124, align 1
  %125 = getelementptr inbounds i8, i8* %117, i64 8
  %126 = bitcast i8* %125 to double*
  store double 0.000000e+00, double* %126, align 1
  store %struct.Memory* %loadMem_400753, %struct.Memory** %MEMORY
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %131 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %130, i64 0, i64 4
  %YMM4.i751 = bitcast %union.VectorReg* %131 to %"class.std::bitset"*
  %132 = bitcast %"class.std::bitset"* %YMM4.i751 to i8*
  %133 = load i64, i64* %PC.i750
  %134 = add i64 %133, 3757
  %135 = load i64, i64* %PC.i750
  %136 = add i64 %135, 8
  store i64 %136, i64* %PC.i750
  %137 = inttoptr i64 %134 to double*
  %138 = load double, double* %137
  %139 = bitcast i8* %132 to double*
  store double %138, double* %139, align 1
  %140 = getelementptr inbounds i8, i8* %132, i64 8
  %141 = bitcast i8* %140 to double*
  store double 0.000000e+00, double* %141, align 1
  store %struct.Memory* %loadMem_40075b, %struct.Memory** %MEMORY
  %loadMem_400763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %145, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %146 to %"class.std::bitset"*
  %147 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %148 = load i64, i64* %PC.i749
  %149 = add i64 %148, 3757
  %150 = load i64, i64* %PC.i749
  %151 = add i64 %150, 8
  store i64 %151, i64* %PC.i749
  %152 = inttoptr i64 %149 to double*
  %153 = load double, double* %152
  %154 = bitcast i8* %147 to double*
  store double %153, double* %154, align 1
  %155 = getelementptr inbounds i8, i8* %147, i64 8
  %156 = bitcast i8* %155 to double*
  store double 0.000000e+00, double* %156, align 1
  store %struct.Memory* %loadMem_400763, %struct.Memory** %MEMORY
  %loadMem_40076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %160, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %161 to %"class.std::bitset"*
  %162 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %163 = load i64, i64* %PC.i748
  %164 = add i64 %163, 3757
  %165 = load i64, i64* %PC.i748
  %166 = add i64 %165, 8
  store i64 %166, i64* %PC.i748
  %167 = inttoptr i64 %164 to double*
  %168 = load double, double* %167
  %169 = bitcast i8* %162 to double*
  store double %168, double* %169, align 1
  %170 = getelementptr inbounds i8, i8* %162, i64 8
  %171 = bitcast i8* %170 to double*
  store double 0.000000e+00, double* %171, align 1
  store %struct.Memory* %loadMem_40076b, %struct.Memory** %MEMORY
  %loadMem_400773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %175, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %176 to %"class.std::bitset"*
  %177 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %178 = load i64, i64* %PC.i747
  %179 = add i64 %178, 3757
  %180 = load i64, i64* %PC.i747
  %181 = add i64 %180, 8
  store i64 %181, i64* %PC.i747
  %182 = inttoptr i64 %179 to double*
  %183 = load double, double* %182
  %184 = bitcast i8* %177 to double*
  store double %183, double* %184, align 1
  %185 = getelementptr inbounds i8, i8* %177, i64 8
  %186 = bitcast i8* %185 to double*
  store double 0.000000e+00, double* %186, align 1
  store %struct.Memory* %loadMem_400773, %struct.Memory** %MEMORY
  %loadMem_40077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %190, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %191 to %"class.std::bitset"*
  %192 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %193 = load i64, i64* %PC.i746
  %194 = add i64 %193, 3757
  %195 = load i64, i64* %PC.i746
  %196 = add i64 %195, 9
  store i64 %196, i64* %PC.i746
  %197 = inttoptr i64 %194 to double*
  %198 = load double, double* %197
  %199 = bitcast i8* %192 to double*
  store double %198, double* %199, align 1
  %200 = getelementptr inbounds i8, i8* %192, i64 8
  %201 = bitcast i8* %200 to double*
  store double 0.000000e+00, double* %201, align 1
  store %struct.Memory* %loadMem_40077b, %struct.Memory** %MEMORY
  %loadMem_400784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 15
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RBP.i745
  %209 = sub i64 %208, 4
  %210 = load i64, i64* %PC.i744
  %211 = add i64 %210, 7
  store i64 %211, i64* %PC.i744
  %212 = inttoptr i64 %209 to i32*
  store i32 0, i32* %212
  store %struct.Memory* %loadMem_400784, %struct.Memory** %MEMORY
  %loadMem_40078b = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 11
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %218 to i32*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 15
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %RBP.i743
  %223 = sub i64 %222, 8
  %224 = load i32, i32* %EDI.i
  %225 = zext i32 %224 to i64
  %226 = load i64, i64* %PC.i742
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i742
  %228 = inttoptr i64 %223 to i32*
  store i32 %224, i32* %228
  store %struct.Memory* %loadMem_40078b, %struct.Memory** %MEMORY
  %loadMem_40078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 9
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RSI.i740 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 15
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %237 to i64*
  %238 = load i64, i64* %RBP.i741
  %239 = sub i64 %238, 16
  %240 = load i64, i64* %RSI.i740
  %241 = load i64, i64* %PC.i739
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC.i739
  %243 = inttoptr i64 %239 to i64*
  store i64 %240, i64* %243
  store %struct.Memory* %loadMem_40078e, %struct.Memory** %MEMORY
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %247, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %248 to %union.vec128_t*
  %249 = bitcast %union.vec128_t* %XMM8.i to i8*
  %250 = load i64, i64* %PC.i738
  %251 = add i64 %250, 10
  store i64 %251, i64* %PC.i738
  %252 = bitcast i8* %249 to double*
  %253 = load double, double* %252, align 1
  store double %253, double* inttoptr (i64 6299992 to double*)
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  %loadMem_40079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %257, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %258 to %union.vec128_t*
  %259 = bitcast %union.vec128_t* %XMM7.i to i8*
  %260 = load i64, i64* %PC.i737
  %261 = add i64 %260, 9
  store i64 %261, i64* %PC.i737
  %262 = bitcast i8* %259 to double*
  %263 = load double, double* %262, align 1
  store double %263, double* inttoptr (i64 6300000 to double*)
  store %struct.Memory* %loadMem_40079c, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %267, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %268 to %union.vec128_t*
  %269 = bitcast %union.vec128_t* %XMM6.i to i8*
  %270 = load i64, i64* %PC.i736
  %271 = add i64 %270, 9
  store i64 %271, i64* %PC.i736
  %272 = bitcast i8* %269 to double*
  %273 = load double, double* %272, align 1
  store double %273, double* inttoptr (i64 6300008 to double*)
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem_4007ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %277, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %278 to %union.vec128_t*
  %279 = bitcast %union.vec128_t* %XMM5.i to i8*
  %280 = load i64, i64* %PC.i735
  %281 = add i64 %280, 9
  store i64 %281, i64* %PC.i735
  %282 = bitcast i8* %279 to double*
  %283 = load double, double* %282, align 1
  store double %283, double* inttoptr (i64 6300016 to double*)
  store %struct.Memory* %loadMem_4007ae, %struct.Memory** %MEMORY
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %287, i64 0, i64 4
  %XMM4.i734 = bitcast %union.VectorReg* %288 to %union.vec128_t*
  %289 = bitcast %union.vec128_t* %XMM4.i734 to i8*
  %290 = load i64, i64* %PC.i733
  %291 = add i64 %290, 9
  store i64 %291, i64* %PC.i733
  %292 = bitcast i8* %289 to double*
  %293 = load double, double* %292, align 1
  store double %293, double* inttoptr (i64 6300024 to double*)
  store %struct.Memory* %loadMem_4007b7, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %297, i64 0, i64 3
  %XMM3.i732 = bitcast %union.VectorReg* %298 to %union.vec128_t*
  %299 = bitcast %union.vec128_t* %XMM3.i732 to i8*
  %300 = load i64, i64* %PC.i731
  %301 = add i64 %300, 9
  store i64 %301, i64* %PC.i731
  %302 = bitcast i8* %299 to double*
  %303 = load double, double* %302, align 1
  store double %303, double* inttoptr (i64 6300032 to double*)
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %307, i64 0, i64 2
  %XMM2.i730 = bitcast %union.VectorReg* %308 to %union.vec128_t*
  %309 = bitcast %union.vec128_t* %XMM2.i730 to i8*
  %310 = load i64, i64* %PC.i729
  %311 = add i64 %310, 9
  store i64 %311, i64* %PC.i729
  %312 = bitcast i8* %309 to double*
  %313 = load double, double* %312, align 1
  store double %313, double* inttoptr (i64 6300040 to double*)
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %317, i64 0, i64 1
  %XMM1.i728 = bitcast %union.VectorReg* %318 to %union.vec128_t*
  %319 = bitcast %union.vec128_t* %XMM1.i728 to i8*
  %320 = load i64, i64* %PC.i727
  %321 = add i64 %320, 9
  store i64 %321, i64* %PC.i727
  %322 = bitcast i8* %319 to double*
  %323 = load double, double* %322, align 1
  store double %323, double* inttoptr (i64 6300048 to double*)
  store %struct.Memory* %loadMem_4007d2, %struct.Memory** %MEMORY
  %loadMem_4007db = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %PC.i726
  %328 = add i64 %327, 11
  store i64 %328, i64* %PC.i726
  store i32 1000000, i32* inttoptr (i64 6299760 to i32*)
  store %struct.Memory* %loadMem_4007db, %struct.Memory** %MEMORY
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %332, i64 0, i64 0
  %XMM0.i725 = bitcast %union.VectorReg* %333 to %union.vec128_t*
  %334 = bitcast %union.vec128_t* %XMM0.i725 to i8*
  %335 = load i64, i64* %PC.i724
  %336 = add i64 %335, 9
  store i64 %336, i64* %PC.i724
  %337 = bitcast i8* %334 to double*
  %338 = load double, double* %337, align 1
  store double %338, double* inttoptr (i64 6300056 to double*)
  store %struct.Memory* %loadMem_4007e6, %struct.Memory** %MEMORY
  %loadMem_4007ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %PC.i723
  %343 = add i64 %342, 10
  store i64 %343, i64* %PC.i723
  store i16 4, i16* inttoptr (i64 6300064 to i16*)
  store %struct.Memory* %loadMem_4007ef, %struct.Memory** %MEMORY
  %loadMem_4007f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 15
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RBP.i722
  %351 = sub i64 %350, 20
  %352 = load i64, i64* %PC.i721
  %353 = add i64 %352, 7
  store i64 %353, i64* %PC.i721
  %354 = inttoptr i64 %351 to i32*
  store i32 0, i32* %354
  store %struct.Memory* %loadMem_4007f9, %struct.Memory** %MEMORY
  br label %block_.L_400800

block_.L_400800:                                  ; preds = %block_.L_40087d, %entry
  %loadMem_400800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %363 to i64*
  %364 = load i64, i64* %RBP.i720
  %365 = sub i64 %364, 20
  %366 = load i64, i64* %PC.i718
  %367 = add i64 %366, 3
  store i64 %367, i64* %PC.i718
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX.i719, align 8
  store %struct.Memory* %loadMem_400800, %struct.Memory** %MEMORY
  %loadMem_400803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RCX.i717 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %PC.i716
  %378 = add i64 %377, 8
  store i64 %378, i64* %PC.i716
  %379 = load i16, i16* inttoptr (i64 6300064 to i16*)
  %380 = sext i16 %379 to i64
  %381 = and i64 %380, 4294967295
  store i64 %381, i64* %RCX.i717, align 8
  store %struct.Memory* %loadMem_400803, %struct.Memory** %MEMORY
  %loadMem_40080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %EAX.i714 = bitcast %union.anon* %387 to i32*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %ECX.i715 = bitcast %union.anon* %390 to i32*
  %391 = load i32, i32* %EAX.i714
  %392 = zext i32 %391 to i64
  %393 = load i32, i32* %ECX.i715
  %394 = zext i32 %393 to i64
  %395 = load i64, i64* %PC.i713
  %396 = add i64 %395, 2
  store i64 %396, i64* %PC.i713
  %397 = sub i32 %391, %393
  %398 = icmp ult i32 %391, %393
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %399, i8* %400, align 1
  %401 = and i32 %397, 255
  %402 = call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %405, i8* %406, align 1
  %407 = xor i64 %394, %392
  %408 = trunc i64 %407 to i32
  %409 = xor i32 %408, %397
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %412, i8* %413, align 1
  %414 = icmp eq i32 %397, 0
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %415, i8* %416, align 1
  %417 = lshr i32 %397, 31
  %418 = trunc i32 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %418, i8* %419, align 1
  %420 = lshr i32 %391, 31
  %421 = lshr i32 %393, 31
  %422 = xor i32 %421, %420
  %423 = xor i32 %417, %420
  %424 = add i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %426, i8* %427, align 1
  store %struct.Memory* %loadMem_40080b, %struct.Memory** %MEMORY
  %loadMem_40080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %PC.i712
  %432 = add i64 %431, 126
  %433 = load i64, i64* %PC.i712
  %434 = add i64 %433, 6
  %435 = load i64, i64* %PC.i712
  %436 = add i64 %435, 6
  store i64 %436, i64* %PC.i712
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %438 = load i8, i8* %437, align 1
  %439 = icmp ne i8 %438, 0
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %441 = load i8, i8* %440, align 1
  %442 = icmp ne i8 %441, 0
  %443 = xor i1 %439, %442
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %BRANCH_TAKEN, align 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %447 = select i1 %443, i64 %434, i64 %432
  store i64 %447, i64* %446, align 8
  store %struct.Memory* %loadMem_40080d, %struct.Memory** %MEMORY
  %loadBr_40080d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40080d = icmp eq i8 %loadBr_40080d, 1
  br i1 %cmpBr_40080d, label %block_.L_40088b, label %block_400813

block_400813:                                     ; preds = %block_.L_400800
  %loadMem_400813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i711
  %455 = sub i64 %454, 24
  %456 = load i64, i64* %PC.i710
  %457 = add i64 %456, 7
  store i64 %457, i64* %PC.i710
  %458 = inttoptr i64 %455 to i32*
  store i32 0, i32* %458
  store %struct.Memory* %loadMem_400813, %struct.Memory** %MEMORY
  br label %block_.L_40081a

block_.L_40081a:                                  ; preds = %block_400824, %block_400813
  %loadMem_40081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RBP.i709
  %466 = sub i64 %465, 24
  %467 = load i64, i64* %PC.i708
  %468 = add i64 %467, 4
  store i64 %468, i64* %PC.i708
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469
  %471 = sub i32 %470, 4
  %472 = icmp ult i32 %470, 4
  %473 = zext i1 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %473, i8* %474, align 1
  %475 = and i32 %471, 255
  %476 = call i32 @llvm.ctpop.i32(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %479, i8* %480, align 1
  %481 = xor i32 %470, 4
  %482 = xor i32 %481, %471
  %483 = lshr i32 %482, 4
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %485, i8* %486, align 1
  %487 = icmp eq i32 %471, 0
  %488 = zext i1 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %488, i8* %489, align 1
  %490 = lshr i32 %471, 31
  %491 = trunc i32 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %491, i8* %492, align 1
  %493 = lshr i32 %470, 31
  %494 = xor i32 %490, %493
  %495 = add i32 %494, %493
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %497, i8* %498, align 1
  store %struct.Memory* %loadMem_40081a, %struct.Memory** %MEMORY
  %loadMem_40081e = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %501 to i64*
  %502 = load i64, i64* %PC.i707
  %503 = add i64 %502, 90
  %504 = load i64, i64* %PC.i707
  %505 = add i64 %504, 6
  %506 = load i64, i64* %PC.i707
  %507 = add i64 %506, 6
  store i64 %507, i64* %PC.i707
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %509 = load i8, i8* %508, align 1
  %510 = icmp ne i8 %509, 0
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %512 = load i8, i8* %511, align 1
  %513 = icmp ne i8 %512, 0
  %514 = xor i1 %510, %513
  %515 = xor i1 %514, true
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %BRANCH_TAKEN, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %518 = select i1 %514, i64 %505, i64 %503
  store i64 %518, i64* %517, align 8
  store %struct.Memory* %loadMem_40081e, %struct.Memory** %MEMORY
  %loadBr_40081e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40081e = icmp eq i8 %loadBr_40081e, 1
  br i1 %cmpBr_40081e, label %block_.L_400878, label %block_400824

block_400824:                                     ; preds = %block_.L_40081a
  %loadMem_400824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %PC.i705
  %526 = add i64 %525, 10
  store i64 %526, i64* %PC.i705
  store i64 6300080, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_400824, %struct.Memory** %MEMORY
  %loadMem_40082e = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 5
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %PC.i703
  %534 = add i64 %533, 10
  store i64 %534, i64* %PC.i703
  store i64 6299776, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_40082e, %struct.Memory** %MEMORY
  %loadMem_400838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 7
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RDX.i701 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 15
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RBP.i702
  %545 = sub i64 %544, 20
  %546 = load i64, i64* %PC.i700
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC.i700
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RDX.i701, align 8
  store %struct.Memory* %loadMem_400838, %struct.Memory** %MEMORY
  %loadMem_40083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 7
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RDX.i699
  %558 = load i64, i64* %PC.i698
  %559 = add i64 %558, 4
  store i64 %559, i64* %PC.i698
  %560 = shl i64 %557, 4
  %561 = icmp slt i64 %560, 0
  %562 = shl i64 %560, 1
  store i64 %562, i64* %RDX.i699, align 8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %564 = zext i1 %561 to i8
  store i8 %564, i8* %563, align 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %566 = trunc i64 %562 to i32
  %567 = and i32 %566, 254
  %568 = call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %565, align 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %572, align 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %574 = icmp eq i64 %562, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %573, align 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %577 = lshr i64 %562, 63
  %578 = trunc i64 %577 to i8
  store i8 %578, i8* %576, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %579, align 1
  store %struct.Memory* %loadMem_40083c, %struct.Memory** %MEMORY
  %loadMem_400840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 5
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 7
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RDX.i697 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %RCX.i696
  %590 = load i64, i64* %RDX.i697
  %591 = load i64, i64* %PC.i695
  %592 = add i64 %591, 3
  store i64 %592, i64* %PC.i695
  %593 = add i64 %590, %589
  store i64 %593, i64* %RCX.i696, align 8
  %594 = icmp ult i64 %593, %589
  %595 = icmp ult i64 %593, %590
  %596 = or i1 %594, %595
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %597, i8* %598, align 1
  %599 = trunc i64 %593 to i32
  %600 = and i32 %599, 255
  %601 = call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %604, i8* %605, align 1
  %606 = xor i64 %590, %589
  %607 = xor i64 %606, %593
  %608 = lshr i64 %607, 4
  %609 = trunc i64 %608 to i8
  %610 = and i8 %609, 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %610, i8* %611, align 1
  %612 = icmp eq i64 %593, 0
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %613, i8* %614, align 1
  %615 = lshr i64 %593, 63
  %616 = trunc i64 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %616, i8* %617, align 1
  %618 = lshr i64 %589, 63
  %619 = lshr i64 %590, 63
  %620 = xor i64 %615, %618
  %621 = xor i64 %615, %619
  %622 = add i64 %620, %621
  %623 = icmp eq i64 %622, 2
  %624 = zext i1 %623 to i8
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %624, i8* %625, align 1
  store %struct.Memory* %loadMem_400840, %struct.Memory** %MEMORY
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 7
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RDX.i693 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 15
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RBP.i694
  %636 = sub i64 %635, 24
  %637 = load i64, i64* %PC.i692
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC.i692
  %639 = inttoptr i64 %636 to i32*
  %640 = load i32, i32* %639
  %641 = sext i32 %640 to i64
  store i64 %641, i64* %RDX.i693, align 8
  store %struct.Memory* %loadMem_400843, %struct.Memory** %MEMORY
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 5
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 7
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RDX.i690 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %651, i64 0, i64 0
  %YMM0.i691 = bitcast %union.VectorReg* %652 to %"class.std::bitset"*
  %653 = bitcast %"class.std::bitset"* %YMM0.i691 to i8*
  %654 = load i64, i64* %RCX.i689
  %655 = load i64, i64* %RDX.i690
  %656 = mul i64 %655, 8
  %657 = add i64 %656, %654
  %658 = load i64, i64* %PC.i688
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC.i688
  %660 = inttoptr i64 %657 to double*
  %661 = load double, double* %660
  %662 = bitcast i8* %653 to double*
  store double %661, double* %662, align 1
  %663 = getelementptr inbounds i8, i8* %653, i64 8
  %664 = bitcast i8* %663 to double*
  store double 0.000000e+00, double* %664, align 1
  store %struct.Memory* %loadMem_400847, %struct.Memory** %MEMORY
  %loadMem_40084c = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 9
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RSI.i686 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 15
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %RBP.i687
  %675 = sub i64 %674, 20
  %676 = load i64, i64* %PC.i685
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i685
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RSI.i686, align 8
  store %struct.Memory* %loadMem_40084c, %struct.Memory** %MEMORY
  %loadMem_40084f = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 9
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RSI.i684 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %RSI.i684
  %688 = load i64, i64* %PC.i683
  %689 = add i64 %688, 3
  store i64 %689, i64* %PC.i683
  %690 = trunc i64 %687 to i32
  %691 = add i32 1, %690
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RSI.i684, align 8
  %693 = icmp ult i32 %691, %690
  %694 = icmp ult i32 %691, 1
  %695 = or i1 %693, %694
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %696, i8* %697, align 1
  %698 = and i32 %691, 255
  %699 = call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %702, i8* %703, align 1
  %704 = xor i64 1, %687
  %705 = trunc i64 %704 to i32
  %706 = xor i32 %705, %691
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %709, i8* %710, align 1
  %711 = icmp eq i32 %691, 0
  %712 = zext i1 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %712, i8* %713, align 1
  %714 = lshr i32 %691, 31
  %715 = trunc i32 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %715, i8* %716, align 1
  %717 = lshr i32 %690, 31
  %718 = xor i32 %714, %717
  %719 = add i32 %718, %714
  %720 = icmp eq i32 %719, 2
  %721 = zext i1 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %721, i8* %722, align 1
  store %struct.Memory* %loadMem_40084f, %struct.Memory** %MEMORY
  %loadMem_400852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 9
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %ESI.i681 = bitcast %union.anon* %728 to i32*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 5
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %731 to i64*
  %732 = load i32, i32* %ESI.i681
  %733 = zext i32 %732 to i64
  %734 = load i64, i64* %PC.i680
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i680
  %736 = shl i64 %733, 32
  %737 = ashr exact i64 %736, 32
  store i64 %737, i64* %RCX.i682, align 8
  store %struct.Memory* %loadMem_400852, %struct.Memory** %MEMORY
  %loadMem_400855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 5
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RCX.i679 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %RCX.i679
  %745 = load i64, i64* %PC.i678
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC.i678
  %747 = sext i64 %744 to i128
  %748 = and i128 %747, -18446744073709551616
  %749 = zext i64 %744 to i128
  %750 = or i128 %748, %749
  %751 = mul i128 40, %750
  %752 = trunc i128 %751 to i64
  store i64 %752, i64* %RCX.i679, align 8
  %753 = sext i64 %752 to i128
  %754 = icmp ne i128 %753, %751
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %755, i8* %756, align 1
  %757 = trunc i128 %751 to i32
  %758 = and i32 %757, 255
  %759 = call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %762, i8* %763, align 1
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %764, align 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %765, align 1
  %766 = lshr i64 %752, 63
  %767 = trunc i64 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %767, i8* %768, align 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %755, i8* %769, align 1
  store %struct.Memory* %loadMem_400855, %struct.Memory** %MEMORY
  %loadMem_400859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 5
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %RAX.i676
  %780 = load i64, i64* %RCX.i677
  %781 = load i64, i64* %PC.i675
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i675
  %783 = add i64 %780, %779
  store i64 %783, i64* %RAX.i676, align 8
  %784 = icmp ult i64 %783, %779
  %785 = icmp ult i64 %783, %780
  %786 = or i1 %784, %785
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %787, i8* %788, align 1
  %789 = trunc i64 %783 to i32
  %790 = and i32 %789, 255
  %791 = call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %794, i8* %795, align 1
  %796 = xor i64 %780, %779
  %797 = xor i64 %796, %783
  %798 = lshr i64 %797, 4
  %799 = trunc i64 %798 to i8
  %800 = and i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %800, i8* %801, align 1
  %802 = icmp eq i64 %783, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1
  %805 = lshr i64 %783, 63
  %806 = trunc i64 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1
  %808 = lshr i64 %779, 63
  %809 = lshr i64 %780, 63
  %810 = xor i64 %805, %808
  %811 = xor i64 %805, %809
  %812 = add i64 %810, %811
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %814, i8* %815, align 1
  store %struct.Memory* %loadMem_400859, %struct.Memory** %MEMORY
  %loadMem_40085c = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 9
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RSI.i673 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 15
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RBP.i674
  %826 = sub i64 %825, 24
  %827 = load i64, i64* %PC.i672
  %828 = add i64 %827, 3
  store i64 %828, i64* %PC.i672
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RSI.i673, align 8
  store %struct.Memory* %loadMem_40085c, %struct.Memory** %MEMORY
  %loadMem_40085f = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 9
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RSI.i671 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %RSI.i671
  %839 = load i64, i64* %PC.i670
  %840 = add i64 %839, 3
  store i64 %840, i64* %PC.i670
  %841 = trunc i64 %838 to i32
  %842 = add i32 1, %841
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RSI.i671, align 8
  %844 = icmp ult i32 %842, %841
  %845 = icmp ult i32 %842, 1
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
  %855 = xor i64 1, %838
  %856 = trunc i64 %855 to i32
  %857 = xor i32 %856, %842
  %858 = lshr i32 %857, 4
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %860, i8* %861, align 1
  %862 = icmp eq i32 %842, 0
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %863, i8* %864, align 1
  %865 = lshr i32 %842, 31
  %866 = trunc i32 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %866, i8* %867, align 1
  %868 = lshr i32 %841, 31
  %869 = xor i32 %865, %868
  %870 = add i32 %869, %865
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %872, i8* %873, align 1
  store %struct.Memory* %loadMem_40085f, %struct.Memory** %MEMORY
  %loadMem_400862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 9
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %ESI.i668 = bitcast %union.anon* %879 to i32*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 5
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %882 to i64*
  %883 = load i32, i32* %ESI.i668
  %884 = zext i32 %883 to i64
  %885 = load i64, i64* %PC.i667
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC.i667
  %887 = shl i64 %884, 32
  %888 = ashr exact i64 %887, 32
  store i64 %888, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_400862, %struct.Memory** %MEMORY
  %loadMem_400865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 1
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 5
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %899 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %898, i64 0, i64 0
  %XMM0.i666 = bitcast %union.VectorReg* %899 to %union.vec128_t*
  %900 = load i64, i64* %RAX.i664
  %901 = load i64, i64* %RCX.i665
  %902 = mul i64 %901, 8
  %903 = add i64 %902, %900
  %904 = bitcast %union.vec128_t* %XMM0.i666 to i8*
  %905 = load i64, i64* %PC.i663
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC.i663
  %907 = bitcast i8* %904 to double*
  %908 = load double, double* %907, align 1
  %909 = inttoptr i64 %903 to double*
  store double %908, double* %909
  store %struct.Memory* %loadMem_400865, %struct.Memory** %MEMORY
  %loadMem_40086a = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 1
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RBP.i662
  %920 = sub i64 %919, 24
  %921 = load i64, i64* %PC.i660
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC.i660
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i661, align 8
  store %struct.Memory* %loadMem_40086a, %struct.Memory** %MEMORY
  %loadMem_40086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 1
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RAX.i659
  %933 = load i64, i64* %PC.i658
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC.i658
  %935 = trunc i64 %932 to i32
  %936 = add i32 1, %935
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i659, align 8
  %938 = icmp ult i32 %936, %935
  %939 = icmp ult i32 %936, 1
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %941, i8* %942, align 1
  %943 = and i32 %936, 255
  %944 = call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %947, i8* %948, align 1
  %949 = xor i64 1, %932
  %950 = trunc i64 %949 to i32
  %951 = xor i32 %950, %936
  %952 = lshr i32 %951, 4
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %954, i8* %955, align 1
  %956 = icmp eq i32 %936, 0
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %957, i8* %958, align 1
  %959 = lshr i32 %936, 31
  %960 = trunc i32 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %960, i8* %961, align 1
  %962 = lshr i32 %935, 31
  %963 = xor i32 %959, %962
  %964 = add i32 %963, %959
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %966, i8* %967, align 1
  store %struct.Memory* %loadMem_40086d, %struct.Memory** %MEMORY
  %loadMem_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 1
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %EAX.i656 = bitcast %union.anon* %973 to i32*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 15
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %RBP.i657
  %978 = sub i64 %977, 24
  %979 = load i32, i32* %EAX.i656
  %980 = zext i32 %979 to i64
  %981 = load i64, i64* %PC.i655
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i655
  %983 = inttoptr i64 %978 to i32*
  store i32 %979, i32* %983
  store %struct.Memory* %loadMem_400870, %struct.Memory** %MEMORY
  %loadMem_400873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %PC.i654
  %988 = add i64 %987, -89
  %989 = load i64, i64* %PC.i654
  %990 = add i64 %989, 5
  store i64 %990, i64* %PC.i654
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %988, i64* %991, align 8
  store %struct.Memory* %loadMem_400873, %struct.Memory** %MEMORY
  br label %block_.L_40081a

block_.L_400878:                                  ; preds = %block_.L_40081a
  %loadMem_400878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %PC.i653
  %996 = add i64 %995, 5
  %997 = load i64, i64* %PC.i653
  %998 = add i64 %997, 5
  store i64 %998, i64* %PC.i653
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %996, i64* %999, align 8
  store %struct.Memory* %loadMem_400878, %struct.Memory** %MEMORY
  br label %block_.L_40087d

block_.L_40087d:                                  ; preds = %block_.L_400878
  %loadMem_40087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 1
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 15
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RBP.i652
  %1010 = sub i64 %1009, 20
  %1011 = load i64, i64* %PC.i650
  %1012 = add i64 %1011, 3
  store i64 %1012, i64* %PC.i650
  %1013 = inttoptr i64 %1010 to i32*
  %1014 = load i32, i32* %1013
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_40087d, %struct.Memory** %MEMORY
  %loadMem_400880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 1
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %1021 to i64*
  %1022 = load i64, i64* %RAX.i649
  %1023 = load i64, i64* %PC.i648
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %PC.i648
  %1025 = trunc i64 %1022 to i32
  %1026 = add i32 1, %1025
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RAX.i649, align 8
  %1028 = icmp ult i32 %1026, %1025
  %1029 = icmp ult i32 %1026, 1
  %1030 = or i1 %1028, %1029
  %1031 = zext i1 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1031, i8* %1032, align 1
  %1033 = and i32 %1026, 255
  %1034 = call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1037, i8* %1038, align 1
  %1039 = xor i64 1, %1022
  %1040 = trunc i64 %1039 to i32
  %1041 = xor i32 %1040, %1026
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1044, i8* %1045, align 1
  %1046 = icmp eq i32 %1026, 0
  %1047 = zext i1 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1047, i8* %1048, align 1
  %1049 = lshr i32 %1026, 31
  %1050 = trunc i32 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1050, i8* %1051, align 1
  %1052 = lshr i32 %1025, 31
  %1053 = xor i32 %1049, %1052
  %1054 = add i32 %1053, %1049
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1056, i8* %1057, align 1
  store %struct.Memory* %loadMem_400880, %struct.Memory** %MEMORY
  %loadMem_400883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 1
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %EAX.i646 = bitcast %union.anon* %1063 to i32*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 15
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RBP.i647
  %1068 = sub i64 %1067, 20
  %1069 = load i32, i32* %EAX.i646
  %1070 = zext i32 %1069 to i64
  %1071 = load i64, i64* %PC.i645
  %1072 = add i64 %1071, 3
  store i64 %1072, i64* %PC.i645
  %1073 = inttoptr i64 %1068 to i32*
  store i32 %1069, i32* %1073
  store %struct.Memory* %loadMem_400883, %struct.Memory** %MEMORY
  %loadMem_400886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %PC.i644
  %1078 = add i64 %1077, -134
  %1079 = load i64, i64* %PC.i644
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC.i644
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1078, i64* %1081, align 8
  store %struct.Memory* %loadMem_400886, %struct.Memory** %MEMORY
  br label %block_.L_400800

block_.L_40088b:                                  ; preds = %block_.L_400800
  %loadMem_40088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 11
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RDI.i643 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %PC.i642
  %1089 = add i64 %1088, 10
  store i64 %1089, i64* %PC.i642
  store i64 4200024, i64* %RDI.i643, align 8
  store %struct.Memory* %loadMem_40088b, %struct.Memory** %MEMORY
  %loadMem_400895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 1
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %1096 = bitcast %union.anon* %1095 to %struct.anon.2*
  %AL.i641 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1096, i32 0, i32 0
  %1097 = load i64, i64* %PC.i640
  %1098 = add i64 %1097, 2
  store i64 %1098, i64* %PC.i640
  store i8 0, i8* %AL.i641, align 1
  store %struct.Memory* %loadMem_400895, %struct.Memory** %MEMORY
  %loadMem1_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %PC.i639
  %1103 = add i64 %1102, -711
  %1104 = load i64, i64* %PC.i639
  %1105 = add i64 %1104, 5
  %1106 = load i64, i64* %PC.i639
  %1107 = add i64 %1106, 5
  store i64 %1107, i64* %PC.i639
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1109 = load i64, i64* %1108, align 8
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1105, i64* %1111
  store i64 %1110, i64* %1108, align 8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1103, i64* %1112, align 8
  store %struct.Memory* %loadMem1_400897, %struct.Memory** %MEMORY
  %loadMem2_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400897 = load i64, i64* %3
  %call2_400897 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400897, %struct.Memory* %loadMem2_400897)
  store %struct.Memory* %call2_400897, %struct.Memory** %MEMORY
  %loadMem_40089c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 11
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RDI.i638 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %PC.i637
  %1120 = add i64 %1119, 10
  store i64 %1120, i64* %PC.i637
  store i64 4200078, i64* %RDI.i638, align 8
  store %struct.Memory* %loadMem_40089c, %struct.Memory** %MEMORY
  %loadMem_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 9
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RSI.i636 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %PC.i635
  %1128 = add i64 %1127, 7
  store i64 %1128, i64* %PC.i635
  %1129 = load i32, i32* inttoptr (i64 6299760 to i32*)
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RSI.i636, align 8
  store %struct.Memory* %loadMem_4008a6, %struct.Memory** %MEMORY
  %loadMem_4008ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 1
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %EAX.i633 = bitcast %union.anon* %1136 to i32*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 15
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RBP.i634
  %1141 = sub i64 %1140, 52
  %1142 = load i32, i32* %EAX.i633
  %1143 = zext i32 %1142 to i64
  %1144 = load i64, i64* %PC.i632
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %PC.i632
  %1146 = inttoptr i64 %1141 to i32*
  store i32 %1142, i32* %1146
  store %struct.Memory* %loadMem_4008ad, %struct.Memory** %MEMORY
  %loadMem_4008b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %1153 = bitcast %union.anon* %1152 to %struct.anon.2*
  %AL.i631 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1153, i32 0, i32 0
  %1154 = load i64, i64* %PC.i630
  %1155 = add i64 %1154, 2
  store i64 %1155, i64* %PC.i630
  store i8 0, i8* %AL.i631, align 1
  store %struct.Memory* %loadMem_4008b0, %struct.Memory** %MEMORY
  %loadMem1_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i629
  %1160 = add i64 %1159, -738
  %1161 = load i64, i64* %PC.i629
  %1162 = add i64 %1161, 5
  %1163 = load i64, i64* %PC.i629
  %1164 = add i64 %1163, 5
  store i64 %1164, i64* %PC.i629
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1166 = load i64, i64* %1165, align 8
  %1167 = add i64 %1166, -8
  %1168 = inttoptr i64 %1167 to i64*
  store i64 %1162, i64* %1168
  store i64 %1167, i64* %1165, align 8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1160, i64* %1169, align 8
  store %struct.Memory* %loadMem1_4008b2, %struct.Memory** %MEMORY
  %loadMem2_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008b2 = load i64, i64* %3
  %call2_4008b2 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_4008b2, %struct.Memory* %loadMem2_4008b2)
  store %struct.Memory* %call2_4008b2, %struct.Memory** %MEMORY
  %loadMem_4008b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 11
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RDI.i628 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %PC.i627
  %1177 = add i64 %1176, 10
  store i64 %1177, i64* %PC.i627
  store i64 4200136, i64* %RDI.i628, align 8
  store %struct.Memory* %loadMem_4008b7, %struct.Memory** %MEMORY
  %loadMem_4008c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1181, i64 0, i64 0
  %YMM0.i626 = bitcast %union.VectorReg* %1182 to %"class.std::bitset"*
  %1183 = bitcast %"class.std::bitset"* %YMM0.i626 to i8*
  %1184 = load i64, i64* %PC.i625
  %1185 = add i64 %1184, 3439
  %1186 = load i64, i64* %PC.i625
  %1187 = add i64 %1186, 8
  store i64 %1187, i64* %PC.i625
  %1188 = inttoptr i64 %1185 to double*
  %1189 = load double, double* %1188
  %1190 = bitcast i8* %1183 to double*
  store double %1189, double* %1190, align 1
  %1191 = getelementptr inbounds i8, i8* %1183, i64 8
  %1192 = bitcast i8* %1191 to double*
  store double 0.000000e+00, double* %1192, align 1
  store %struct.Memory* %loadMem_4008c1, %struct.Memory** %MEMORY
  %loadMem_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1196, i64 0, i64 1
  %YMM1.i624 = bitcast %union.VectorReg* %1197 to %"class.std::bitset"*
  %1198 = bitcast %"class.std::bitset"* %YMM1.i624 to i8*
  %1199 = load i64, i64* %PC.i623
  %1200 = add i64 %1199, 9
  store i64 %1200, i64* %PC.i623
  %1201 = load i32, i32* inttoptr (i64 6299760 to i32*)
  %1202 = sitofp i32 %1201 to double
  %1203 = bitcast i8* %1198 to double*
  store double %1202, double* %1203, align 1
  store %struct.Memory* %loadMem_4008c9, %struct.Memory** %MEMORY
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1207, i64 0, i64 1
  %YMM1.i621 = bitcast %union.VectorReg* %1208 to %"class.std::bitset"*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1209, i64 0, i64 0
  %XMM0.i622 = bitcast %union.VectorReg* %1210 to %union.vec128_t*
  %1211 = bitcast %"class.std::bitset"* %YMM1.i621 to i8*
  %1212 = bitcast %"class.std::bitset"* %YMM1.i621 to i8*
  %1213 = bitcast %union.vec128_t* %XMM0.i622 to i8*
  %1214 = load i64, i64* %PC.i620
  %1215 = add i64 %1214, 4
  store i64 %1215, i64* %PC.i620
  %1216 = bitcast i8* %1212 to double*
  %1217 = load double, double* %1216, align 1
  %1218 = getelementptr inbounds i8, i8* %1212, i64 8
  %1219 = bitcast i8* %1218 to i64*
  %1220 = load i64, i64* %1219, align 1
  %1221 = bitcast i8* %1213 to double*
  %1222 = load double, double* %1221, align 1
  %1223 = fdiv double %1217, %1222
  %1224 = bitcast i8* %1211 to double*
  store double %1223, double* %1224, align 1
  %1225 = getelementptr inbounds i8, i8* %1211, i64 8
  %1226 = bitcast i8* %1225 to i64*
  store i64 %1220, i64* %1226, align 1
  store %struct.Memory* %loadMem_4008d2, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 33
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1230, i64 0, i64 0
  %YMM0.i618 = bitcast %union.VectorReg* %1231 to %"class.std::bitset"*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1232, i64 0, i64 1
  %XMM1.i619 = bitcast %union.VectorReg* %1233 to %union.vec128_t*
  %1234 = bitcast %"class.std::bitset"* %YMM0.i618 to i8*
  %1235 = bitcast %union.vec128_t* %XMM1.i619 to i8*
  %1236 = load i64, i64* %PC.i617
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC.i617
  %1238 = bitcast i8* %1235 to <2 x i32>*
  %1239 = load <2 x i32>, <2 x i32>* %1238, align 1
  %1240 = getelementptr inbounds i8, i8* %1235, i64 8
  %1241 = bitcast i8* %1240 to <2 x i32>*
  %1242 = load <2 x i32>, <2 x i32>* %1241, align 1
  %1243 = extractelement <2 x i32> %1239, i32 0
  %1244 = bitcast i8* %1234 to i32*
  store i32 %1243, i32* %1244, align 1
  %1245 = extractelement <2 x i32> %1239, i32 1
  %1246 = getelementptr inbounds i8, i8* %1234, i64 4
  %1247 = bitcast i8* %1246 to i32*
  store i32 %1245, i32* %1247, align 1
  %1248 = extractelement <2 x i32> %1242, i32 0
  %1249 = getelementptr inbounds i8, i8* %1234, i64 8
  %1250 = bitcast i8* %1249 to i32*
  store i32 %1248, i32* %1250, align 1
  %1251 = extractelement <2 x i32> %1242, i32 1
  %1252 = getelementptr inbounds i8, i8* %1234, i64 12
  %1253 = bitcast i8* %1252 to i32*
  store i32 %1251, i32* %1253, align 1
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 1
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %EAX.i615 = bitcast %union.anon* %1259 to i32*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i616
  %1264 = sub i64 %1263, 56
  %1265 = load i32, i32* %EAX.i615
  %1266 = zext i32 %1265 to i64
  %1267 = load i64, i64* %PC.i614
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %PC.i614
  %1269 = inttoptr i64 %1264 to i32*
  store i32 %1265, i32* %1269
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %1276 = bitcast %union.anon* %1275 to %struct.anon.2*
  %AL.i613 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1276, i32 0, i32 0
  %1277 = load i64, i64* %PC.i612
  %1278 = add i64 %1277, 2
  store i64 %1278, i64* %PC.i612
  store i8 1, i8* %AL.i613, align 1
  store %struct.Memory* %loadMem_4008dc, %struct.Memory** %MEMORY
  %loadMem1_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %PC.i611
  %1283 = add i64 %1282, -782
  %1284 = load i64, i64* %PC.i611
  %1285 = add i64 %1284, 5
  %1286 = load i64, i64* %PC.i611
  %1287 = add i64 %1286, 5
  store i64 %1287, i64* %PC.i611
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1289 = load i64, i64* %1288, align 8
  %1290 = add i64 %1289, -8
  %1291 = inttoptr i64 %1290 to i64*
  store i64 %1285, i64* %1291
  store i64 %1290, i64* %1288, align 8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1283, i64* %1292, align 8
  store %struct.Memory* %loadMem1_4008de, %struct.Memory** %MEMORY
  %loadMem2_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008de = load i64, i64* %3
  %call2_4008de = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_4008de, %struct.Memory* %loadMem2_4008de)
  store %struct.Memory* %call2_4008de, %struct.Memory** %MEMORY
  %loadMem_4008e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 11
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RDI.i610 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %PC.i609
  %1300 = add i64 %1299, 10
  store i64 %1300, i64* %PC.i609
  store i64 4200192, i64* %RDI.i610, align 8
  store %struct.Memory* %loadMem_4008e3, %struct.Memory** %MEMORY
  %loadMem_4008ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 1
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %1306 to i32*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 15
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %1309 to i64*
  %1310 = load i64, i64* %RBP.i608
  %1311 = sub i64 %1310, 60
  %1312 = load i32, i32* %EAX.i607
  %1313 = zext i32 %1312 to i64
  %1314 = load i64, i64* %PC.i606
  %1315 = add i64 %1314, 3
  store i64 %1315, i64* %PC.i606
  %1316 = inttoptr i64 %1311 to i32*
  store i32 %1312, i32* %1316
  store %struct.Memory* %loadMem_4008ed, %struct.Memory** %MEMORY
  %loadMem_4008f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 1
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %1323 = bitcast %union.anon* %1322 to %struct.anon.2*
  %AL.i605 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1323, i32 0, i32 0
  %1324 = load i64, i64* %PC.i604
  %1325 = add i64 %1324, 2
  store i64 %1325, i64* %PC.i604
  store i8 0, i8* %AL.i605, align 1
  store %struct.Memory* %loadMem_4008f0, %struct.Memory** %MEMORY
  %loadMem1_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %PC.i603
  %1330 = add i64 %1329, -802
  %1331 = load i64, i64* %PC.i603
  %1332 = add i64 %1331, 5
  %1333 = load i64, i64* %PC.i603
  %1334 = add i64 %1333, 5
  store i64 %1334, i64* %PC.i603
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1336 = load i64, i64* %1335, align 8
  %1337 = add i64 %1336, -8
  %1338 = inttoptr i64 %1337 to i64*
  store i64 %1332, i64* %1338
  store i64 %1337, i64* %1335, align 8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1330, i64* %1339, align 8
  store %struct.Memory* %loadMem1_4008f2, %struct.Memory** %MEMORY
  %loadMem2_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008f2 = load i64, i64* %3
  %call2_4008f2 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_4008f2, %struct.Memory* %loadMem2_4008f2)
  store %struct.Memory* %call2_4008f2, %struct.Memory** %MEMORY
  %loadMem_4008f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 11
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RDI.i602 = bitcast %union.anon* %1345 to i64*
  %1346 = load i64, i64* %PC.i601
  %1347 = add i64 %1346, 10
  store i64 %1347, i64* %PC.i601
  store i64 4200252, i64* %RDI.i602, align 8
  store %struct.Memory* %loadMem_4008f7, %struct.Memory** %MEMORY
  %loadMem_400901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 1
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %EAX.i599 = bitcast %union.anon* %1353 to i32*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 15
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %RBP.i600
  %1358 = sub i64 %1357, 64
  %1359 = load i32, i32* %EAX.i599
  %1360 = zext i32 %1359 to i64
  %1361 = load i64, i64* %PC.i598
  %1362 = add i64 %1361, 3
  store i64 %1362, i64* %PC.i598
  %1363 = inttoptr i64 %1358 to i32*
  store i32 %1359, i32* %1363
  store %struct.Memory* %loadMem_400901, %struct.Memory** %MEMORY
  %loadMem_400904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 1
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %1370 = bitcast %union.anon* %1369 to %struct.anon.2*
  %AL.i597 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1370, i32 0, i32 0
  %1371 = load i64, i64* %PC.i596
  %1372 = add i64 %1371, 2
  store i64 %1372, i64* %PC.i596
  store i8 0, i8* %AL.i597, align 1
  store %struct.Memory* %loadMem_400904, %struct.Memory** %MEMORY
  %loadMem1_400906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %PC.i595
  %1377 = add i64 %1376, -822
  %1378 = load i64, i64* %PC.i595
  %1379 = add i64 %1378, 5
  %1380 = load i64, i64* %PC.i595
  %1381 = add i64 %1380, 5
  store i64 %1381, i64* %PC.i595
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1383 = load i64, i64* %1382, align 8
  %1384 = add i64 %1383, -8
  %1385 = inttoptr i64 %1384 to i64*
  store i64 %1379, i64* %1385
  store i64 %1384, i64* %1382, align 8
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1377, i64* %1386, align 8
  store %struct.Memory* %loadMem1_400906, %struct.Memory** %MEMORY
  %loadMem2_400906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400906 = load i64, i64* %3
  %call2_400906 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400906, %struct.Memory* %loadMem2_400906)
  store %struct.Memory* %call2_400906, %struct.Memory** %MEMORY
  %loadMem_40090b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %PC.i594
  %1391 = add i64 %1390, 11
  store i64 %1391, i64* %PC.i594
  store i32 0, i32* inttoptr (i64 6301264 to i32*)
  store %struct.Memory* %loadMem_40090b, %struct.Memory** %MEMORY
  %loadMem_400916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 1
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %EAX.i592 = bitcast %union.anon* %1397 to i32*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i593
  %1402 = sub i64 %1401, 68
  %1403 = load i32, i32* %EAX.i592
  %1404 = zext i32 %1403 to i64
  %1405 = load i64, i64* %PC.i591
  %1406 = add i64 %1405, 3
  store i64 %1406, i64* %PC.i591
  %1407 = inttoptr i64 %1402 to i32*
  store i32 %1403, i32* %1407
  store %struct.Memory* %loadMem_400916, %struct.Memory** %MEMORY
  br label %block_.L_400919

block_.L_400919:                                  ; preds = %block_.L_4009ce, %block_.L_40088b
  %loadMem_400919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 1
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %PC.i589
  %1415 = add i64 %1414, 7
  store i64 %1415, i64* %PC.i589
  %1416 = load i32, i32* inttoptr (i64 6301264 to i32*)
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_400919, %struct.Memory** %MEMORY
  %loadMem_400920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 1
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %EAX.i588 = bitcast %union.anon* %1423 to i32*
  %1424 = load i32, i32* %EAX.i588
  %1425 = zext i32 %1424 to i64
  %1426 = load i64, i64* %PC.i587
  %1427 = add i64 %1426, 7
  store i64 %1427, i64* %PC.i587
  %1428 = load i32, i32* inttoptr (i64 6299760 to i32*)
  %1429 = sub i32 %1424, %1428
  %1430 = icmp ult i32 %1424, %1428
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1431, i8* %1432, align 1
  %1433 = and i32 %1429, 255
  %1434 = call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1437, i8* %1438, align 1
  %1439 = xor i32 %1428, %1424
  %1440 = xor i32 %1439, %1429
  %1441 = lshr i32 %1440, 4
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1443, i8* %1444, align 1
  %1445 = icmp eq i32 %1429, 0
  %1446 = zext i1 %1445 to i8
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1446, i8* %1447, align 1
  %1448 = lshr i32 %1429, 31
  %1449 = trunc i32 %1448 to i8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1449, i8* %1450, align 1
  %1451 = lshr i32 %1424, 31
  %1452 = lshr i32 %1428, 31
  %1453 = xor i32 %1452, %1451
  %1454 = xor i32 %1448, %1451
  %1455 = add i32 %1454, %1453
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1457, i8* %1458, align 1
  store %struct.Memory* %loadMem_400920, %struct.Memory** %MEMORY
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %PC.i586
  %1463 = add i64 %1462, 553
  %1464 = load i64, i64* %PC.i586
  %1465 = add i64 %1464, 6
  %1466 = load i64, i64* %PC.i586
  %1467 = add i64 %1466, 6
  store i64 %1467, i64* %PC.i586
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1469 = load i8, i8* %1468, align 1
  %1470 = icmp ne i8 %1469, 0
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1472 = load i8, i8* %1471, align 1
  %1473 = icmp ne i8 %1472, 0
  %1474 = xor i1 %1470, %1473
  %1475 = xor i1 %1474, true
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %BRANCH_TAKEN, align 1
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1478 = select i1 %1474, i64 %1465, i64 %1463
  store i64 %1478, i64* %1477, align 8
  store %struct.Memory* %loadMem_400927, %struct.Memory** %MEMORY
  %loadBr_400927 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400927 = icmp eq i8 %loadBr_400927, 1
  br i1 %cmpBr_400927, label %block_.L_400b50, label %block_40092d

block_40092d:                                     ; preds = %block_.L_400919
  %loadMem_40092d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %PC.i585
  %1483 = add i64 %1482, 10
  store i64 %1483, i64* %PC.i585
  store i16 0, i16* inttoptr (i64 6300480 to i16*)
  store %struct.Memory* %loadMem_40092d, %struct.Memory** %MEMORY
  br label %block_.L_400937

block_.L_400937:                                  ; preds = %block_400948, %block_40092d
  %loadMem_400937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 1
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %PC.i583
  %1491 = add i64 %1490, 8
  store i64 %1491, i64* %PC.i583
  %1492 = load i16, i16* inttoptr (i64 6300480 to i16*)
  %1493 = sext i16 %1492 to i64
  %1494 = and i64 %1493, 4294967295
  store i64 %1494, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_400937, %struct.Memory** %MEMORY
  %loadMem_40093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 1
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %1500 to i32*
  %1501 = load i32, i32* %EAX.i582
  %1502 = zext i32 %1501 to i64
  %1503 = load i64, i64* %PC.i581
  %1504 = add i64 %1503, 3
  store i64 %1504, i64* %PC.i581
  %1505 = sub i32 %1501, 1
  %1506 = icmp ult i32 %1501, 1
  %1507 = zext i1 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1507, i8* %1508, align 1
  %1509 = and i32 %1505, 255
  %1510 = call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1513, i8* %1514, align 1
  %1515 = xor i64 1, %1502
  %1516 = trunc i64 %1515 to i32
  %1517 = xor i32 %1516, %1505
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1520, i8* %1521, align 1
  %1522 = icmp eq i32 %1505, 0
  %1523 = zext i1 %1522 to i8
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1523, i8* %1524, align 1
  %1525 = lshr i32 %1505, 31
  %1526 = trunc i32 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1526, i8* %1527, align 1
  %1528 = lshr i32 %1501, 31
  %1529 = xor i32 %1525, %1528
  %1530 = add i32 %1529, %1528
  %1531 = icmp eq i32 %1530, 2
  %1532 = zext i1 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1532, i8* %1533, align 1
  store %struct.Memory* %loadMem_40093f, %struct.Memory** %MEMORY
  %loadMem_400942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %PC.i580
  %1538 = add i64 %1537, 140
  %1539 = load i64, i64* %PC.i580
  %1540 = add i64 %1539, 6
  %1541 = load i64, i64* %PC.i580
  %1542 = add i64 %1541, 6
  store i64 %1542, i64* %PC.i580
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1544 = load i8, i8* %1543, align 1
  %1545 = icmp eq i8 %1544, 0
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1547 = load i8, i8* %1546, align 1
  %1548 = icmp ne i8 %1547, 0
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1550 = load i8, i8* %1549, align 1
  %1551 = icmp ne i8 %1550, 0
  %1552 = xor i1 %1548, %1551
  %1553 = xor i1 %1552, true
  %1554 = and i1 %1545, %1553
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %BRANCH_TAKEN, align 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1557 = select i1 %1554, i64 %1538, i64 %1540
  store i64 %1557, i64* %1556, align 8
  store %struct.Memory* %loadMem_400942, %struct.Memory** %MEMORY
  %loadBr_400942 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400942 = icmp eq i8 %loadBr_400942, 1
  br i1 %cmpBr_400942, label %block_.L_4009ce, label %block_400948

block_400948:                                     ; preds = %block_.L_400937
  %loadMem_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 11
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RDI.i579 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %PC.i578
  %1565 = add i64 %1564, 5
  store i64 %1565, i64* %PC.i578
  store i64 4, i64* %RDI.i579, align 8
  store %struct.Memory* %loadMem_400948, %struct.Memory** %MEMORY
  %loadMem_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1569, i64 0, i64 0
  %YMM0.i577 = bitcast %union.VectorReg* %1570 to %"class.std::bitset"*
  %1571 = bitcast %"class.std::bitset"* %YMM0.i577 to i8*
  %1572 = load i64, i64* %PC.i576
  %1573 = add i64 %1572, 3331
  %1574 = load i64, i64* %PC.i576
  %1575 = add i64 %1574, 8
  store i64 %1575, i64* %PC.i576
  %1576 = inttoptr i64 %1573 to double*
  %1577 = load double, double* %1576
  %1578 = bitcast i8* %1571 to double*
  store double %1577, double* %1578, align 1
  %1579 = getelementptr inbounds i8, i8* %1571, i64 8
  %1580 = bitcast i8* %1579 to double*
  store double 0.000000e+00, double* %1580, align 1
  store %struct.Memory* %loadMem_40094d, %struct.Memory** %MEMORY
  %loadMem_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1584, i64 0, i64 1
  %YMM1.i575 = bitcast %union.VectorReg* %1585 to %"class.std::bitset"*
  %1586 = bitcast %"class.std::bitset"* %YMM1.i575 to i8*
  %1587 = load i64, i64* %PC.i574
  %1588 = add i64 %1587, 9
  store i64 %1588, i64* %PC.i574
  %1589 = load double, double* inttoptr (i64 6300056 to double*)
  %1590 = bitcast i8* %1586 to double*
  store double %1589, double* %1590, align 1
  %1591 = getelementptr inbounds i8, i8* %1586, i64 8
  %1592 = bitcast i8* %1591 to double*
  store double 0.000000e+00, double* %1592, align 1
  store %struct.Memory* %loadMem_400955, %struct.Memory** %MEMORY
  %loadMem_40095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1596, i64 0, i64 1
  %YMM1.i572 = bitcast %union.VectorReg* %1597 to %"class.std::bitset"*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1599 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1598, i64 0, i64 0
  %XMM0.i573 = bitcast %union.VectorReg* %1599 to %union.vec128_t*
  %1600 = bitcast %"class.std::bitset"* %YMM1.i572 to i8*
  %1601 = bitcast %"class.std::bitset"* %YMM1.i572 to i8*
  %1602 = bitcast %union.vec128_t* %XMM0.i573 to i8*
  %1603 = load i64, i64* %PC.i571
  %1604 = add i64 %1603, 4
  store i64 %1604, i64* %PC.i571
  %1605 = bitcast i8* %1601 to double*
  %1606 = load double, double* %1605, align 1
  %1607 = getelementptr inbounds i8, i8* %1601, i64 8
  %1608 = bitcast i8* %1607 to i64*
  %1609 = load i64, i64* %1608, align 1
  %1610 = bitcast i8* %1602 to double*
  %1611 = load double, double* %1610, align 1
  %1612 = fdiv double %1606, %1611
  %1613 = bitcast i8* %1600 to double*
  store double %1612, double* %1613, align 1
  %1614 = getelementptr inbounds i8, i8* %1600, i64 8
  %1615 = bitcast i8* %1614 to i64*
  store i64 %1609, i64* %1615, align 1
  store %struct.Memory* %loadMem_40095e, %struct.Memory** %MEMORY
  %loadMem_400962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1619, i64 0, i64 0
  %YMM0.i569 = bitcast %union.VectorReg* %1620 to %"class.std::bitset"*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1621, i64 0, i64 1
  %XMM1.i570 = bitcast %union.VectorReg* %1622 to %union.vec128_t*
  %1623 = bitcast %"class.std::bitset"* %YMM0.i569 to i8*
  %1624 = bitcast %union.vec128_t* %XMM1.i570 to i8*
  %1625 = load i64, i64* %PC.i568
  %1626 = add i64 %1625, 3
  store i64 %1626, i64* %PC.i568
  %1627 = bitcast i8* %1624 to <2 x i32>*
  %1628 = load <2 x i32>, <2 x i32>* %1627, align 1
  %1629 = getelementptr inbounds i8, i8* %1624, i64 8
  %1630 = bitcast i8* %1629 to <2 x i32>*
  %1631 = load <2 x i32>, <2 x i32>* %1630, align 1
  %1632 = extractelement <2 x i32> %1628, i32 0
  %1633 = bitcast i8* %1623 to i32*
  store i32 %1632, i32* %1633, align 1
  %1634 = extractelement <2 x i32> %1628, i32 1
  %1635 = getelementptr inbounds i8, i8* %1623, i64 4
  %1636 = bitcast i8* %1635 to i32*
  store i32 %1634, i32* %1636, align 1
  %1637 = extractelement <2 x i32> %1631, i32 0
  %1638 = getelementptr inbounds i8, i8* %1623, i64 8
  %1639 = bitcast i8* %1638 to i32*
  store i32 %1637, i32* %1639, align 1
  %1640 = extractelement <2 x i32> %1631, i32 1
  %1641 = getelementptr inbounds i8, i8* %1623, i64 12
  %1642 = bitcast i8* %1641 to i32*
  store i32 %1640, i32* %1642, align 1
  store %struct.Memory* %loadMem_400962, %struct.Memory** %MEMORY
  %loadMem1_400965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %PC.i567
  %1647 = add i64 %1646, 1531
  %1648 = load i64, i64* %PC.i567
  %1649 = add i64 %1648, 5
  %1650 = load i64, i64* %PC.i567
  %1651 = add i64 %1650, 5
  store i64 %1651, i64* %PC.i567
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1653 = load i64, i64* %1652, align 8
  %1654 = add i64 %1653, -8
  %1655 = inttoptr i64 %1654 to i64*
  store i64 %1649, i64* %1655
  store i64 %1654, i64* %1652, align 8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1647, i64* %1656, align 8
  store %struct.Memory* %loadMem1_400965, %struct.Memory** %MEMORY
  %loadMem2_400965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400965 = load i64, i64* %3
  %call2_400965 = call %struct.Memory* @sub_400f60.trace_line(%struct.State* %0, i64 %loadPC_400965, %struct.Memory* %loadMem2_400965)
  store %struct.Memory* %call2_400965, %struct.Memory** %MEMORY
  %loadMem_40096a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 5
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %PC.i565
  %1664 = add i64 %1663, 10
  store i64 %1664, i64* %PC.i565
  store i64 6300496, i64* %RCX.i566, align 8
  store %struct.Memory* %loadMem_40096a, %struct.Memory** %MEMORY
  %loadMem_400974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1669 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1668, i64 0, i64 0
  %YMM0.i564 = bitcast %union.VectorReg* %1669 to %"class.std::bitset"*
  %1670 = bitcast %"class.std::bitset"* %YMM0.i564 to i8*
  %1671 = load i64, i64* %PC.i563
  %1672 = add i64 %1671, 9
  store i64 %1672, i64* %PC.i563
  %1673 = load double, double* inttoptr (i64 6300488 to double*)
  %1674 = bitcast i8* %1670 to double*
  store double %1673, double* %1674, align 1
  %1675 = getelementptr inbounds i8, i8* %1670, i64 8
  %1676 = bitcast i8* %1675 to double*
  store double 0.000000e+00, double* %1676, align 1
  store %struct.Memory* %loadMem_400974, %struct.Memory** %MEMORY
  %loadMem_40097d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 7
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %1682 to i64*
  %1683 = load i64, i64* %PC.i561
  %1684 = add i64 %1683, 9
  store i64 %1684, i64* %PC.i561
  %1685 = load i16, i16* inttoptr (i64 6300480 to i16*)
  %1686 = sext i16 %1685 to i64
  store i64 %1686, i64* %RDX.i562, align 8
  store %struct.Memory* %loadMem_40097d, %struct.Memory** %MEMORY
  %loadMem_400986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 7
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %1692 to i64*
  %1693 = load i64, i64* %RDX.i560
  %1694 = load i64, i64* %PC.i559
  %1695 = add i64 %1694, 4
  store i64 %1695, i64* %PC.i559
  %1696 = shl i64 %1693, 3
  %1697 = icmp slt i64 %1696, 0
  %1698 = shl i64 %1696, 1
  store i64 %1698, i64* %RDX.i560, align 8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1700 = zext i1 %1697 to i8
  store i8 %1700, i8* %1699, align 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1702 = trunc i64 %1698 to i32
  %1703 = and i32 %1702, 254
  %1704 = call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %1701, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1708, align 1
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1710 = icmp eq i64 %1698, 0
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %1709, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1713 = lshr i64 %1698, 63
  %1714 = trunc i64 %1713 to i8
  store i8 %1714, i8* %1712, align 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1715, align 1
  store %struct.Memory* %loadMem_400986, %struct.Memory** %MEMORY
  %loadMem_40098a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 5
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 9
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RSI.i558 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RCX.i557
  %1726 = load i64, i64* %PC.i556
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i556
  store i64 %1725, i64* %RSI.i558, align 8
  store %struct.Memory* %loadMem_40098a, %struct.Memory** %MEMORY
  %loadMem_40098d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 7
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %1733 to i64*
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 9
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %RSI.i555 = bitcast %union.anon* %1736 to i64*
  %1737 = load i64, i64* %RSI.i555
  %1738 = load i64, i64* %RDX.i554
  %1739 = load i64, i64* %PC.i553
  %1740 = add i64 %1739, 3
  store i64 %1740, i64* %PC.i553
  %1741 = add i64 %1738, %1737
  store i64 %1741, i64* %RSI.i555, align 8
  %1742 = icmp ult i64 %1741, %1737
  %1743 = icmp ult i64 %1741, %1738
  %1744 = or i1 %1742, %1743
  %1745 = zext i1 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1745, i8* %1746, align 1
  %1747 = trunc i64 %1741 to i32
  %1748 = and i32 %1747, 255
  %1749 = call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1752, i8* %1753, align 1
  %1754 = xor i64 %1738, %1737
  %1755 = xor i64 %1754, %1741
  %1756 = lshr i64 %1755, 4
  %1757 = trunc i64 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1758, i8* %1759, align 1
  %1760 = icmp eq i64 %1741, 0
  %1761 = zext i1 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1761, i8* %1762, align 1
  %1763 = lshr i64 %1741, 63
  %1764 = trunc i64 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1764, i8* %1765, align 1
  %1766 = lshr i64 %1737, 63
  %1767 = lshr i64 %1738, 63
  %1768 = xor i64 %1763, %1766
  %1769 = xor i64 %1763, %1767
  %1770 = add i64 %1768, %1769
  %1771 = icmp eq i64 %1770, 2
  %1772 = zext i1 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1772, i8* %1773, align 1
  store %struct.Memory* %loadMem_40098d, %struct.Memory** %MEMORY
  %loadMem_400990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 9
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RSI.i551 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1780, i64 0, i64 0
  %XMM0.i552 = bitcast %union.VectorReg* %1781 to %union.vec128_t*
  %1782 = load i64, i64* %RSI.i551
  %1783 = bitcast %union.vec128_t* %XMM0.i552 to i8*
  %1784 = load i64, i64* %PC.i550
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %PC.i550
  %1786 = bitcast i8* %1783 to double*
  %1787 = load double, double* %1786, align 1
  %1788 = inttoptr i64 %1782 to double*
  store double %1787, double* %1788
  store %struct.Memory* %loadMem_400990, %struct.Memory** %MEMORY
  %loadMem_400994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1792, i64 0, i64 0
  %YMM0.i549 = bitcast %union.VectorReg* %1793 to %"class.std::bitset"*
  %1794 = bitcast %"class.std::bitset"* %YMM0.i549 to i8*
  %1795 = load i64, i64* %PC.i548
  %1796 = add i64 %1795, 9
  store i64 %1796, i64* %PC.i548
  %1797 = load double, double* inttoptr (i64 6300528 to double*)
  %1798 = bitcast i8* %1794 to double*
  store double %1797, double* %1798, align 1
  %1799 = getelementptr inbounds i8, i8* %1794, i64 8
  %1800 = bitcast i8* %1799 to double*
  store double 0.000000e+00, double* %1800, align 1
  store %struct.Memory* %loadMem_400994, %struct.Memory** %MEMORY
  %loadMem_40099d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 33
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 7
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %1806 to i64*
  %1807 = load i64, i64* %PC.i546
  %1808 = add i64 %1807, 9
  store i64 %1808, i64* %PC.i546
  %1809 = load i16, i16* inttoptr (i64 6300480 to i16*)
  %1810 = sext i16 %1809 to i64
  store i64 %1810, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_40099d, %struct.Memory** %MEMORY
  %loadMem_4009a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 7
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %1816 to i64*
  %1817 = load i64, i64* %RDX.i545
  %1818 = load i64, i64* %PC.i544
  %1819 = add i64 %1818, 4
  store i64 %1819, i64* %PC.i544
  %1820 = shl i64 %1817, 3
  %1821 = icmp slt i64 %1820, 0
  %1822 = shl i64 %1820, 1
  store i64 %1822, i64* %RDX.i545, align 8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1824 = zext i1 %1821 to i8
  store i8 %1824, i8* %1823, align 1
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1826 = trunc i64 %1822 to i32
  %1827 = and i32 %1826, 254
  %1828 = call i32 @llvm.ctpop.i32(i32 %1827)
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  %1831 = xor i8 %1830, 1
  store i8 %1831, i8* %1825, align 1
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1832, align 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1834 = icmp eq i64 %1822, 0
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %1833, align 1
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1837 = lshr i64 %1822, 63
  %1838 = trunc i64 %1837 to i8
  store i8 %1838, i8* %1836, align 1
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1839, align 1
  store %struct.Memory* %loadMem_4009a6, %struct.Memory** %MEMORY
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 5
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 7
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %RCX.i542
  %1850 = load i64, i64* %RDX.i543
  %1851 = load i64, i64* %PC.i541
  %1852 = add i64 %1851, 3
  store i64 %1852, i64* %PC.i541
  %1853 = add i64 %1850, %1849
  store i64 %1853, i64* %RCX.i542, align 8
  %1854 = icmp ult i64 %1853, %1849
  %1855 = icmp ult i64 %1853, %1850
  %1856 = or i1 %1854, %1855
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1857, i8* %1858, align 1
  %1859 = trunc i64 %1853 to i32
  %1860 = and i32 %1859, 255
  %1861 = call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1865, align 1
  %1866 = xor i64 %1850, %1849
  %1867 = xor i64 %1866, %1853
  %1868 = lshr i64 %1867, 4
  %1869 = trunc i64 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1870, i8* %1871, align 1
  %1872 = icmp eq i64 %1853, 0
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1873, i8* %1874, align 1
  %1875 = lshr i64 %1853, 63
  %1876 = trunc i64 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1876, i8* %1877, align 1
  %1878 = lshr i64 %1849, 63
  %1879 = lshr i64 %1850, 63
  %1880 = xor i64 %1875, %1878
  %1881 = xor i64 %1875, %1879
  %1882 = add i64 %1880, %1881
  %1883 = icmp eq i64 %1882, 2
  %1884 = zext i1 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1884, i8* %1885, align 1
  store %struct.Memory* %loadMem_4009aa, %struct.Memory** %MEMORY
  %loadMem_4009ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 5
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1892, i64 0, i64 0
  %XMM0.i540 = bitcast %union.VectorReg* %1893 to %union.vec128_t*
  %1894 = load i64, i64* %RCX.i539
  %1895 = add i64 %1894, 8
  %1896 = bitcast %union.vec128_t* %XMM0.i540 to i8*
  %1897 = load i64, i64* %PC.i538
  %1898 = add i64 %1897, 5
  store i64 %1898, i64* %PC.i538
  %1899 = bitcast i8* %1896 to double*
  %1900 = load double, double* %1899, align 1
  %1901 = inttoptr i64 %1895 to double*
  store double %1900, double* %1901
  store %struct.Memory* %loadMem_4009ad, %struct.Memory** %MEMORY
  %loadMem_4009b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 1
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %EAX.i536 = bitcast %union.anon* %1907 to i32*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 15
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RBP.i537
  %1912 = sub i64 %1911, 72
  %1913 = load i32, i32* %EAX.i536
  %1914 = zext i32 %1913 to i64
  %1915 = load i64, i64* %PC.i535
  %1916 = add i64 %1915, 3
  store i64 %1916, i64* %PC.i535
  %1917 = inttoptr i64 %1912 to i32*
  store i32 %1913, i32* %1917
  store %struct.Memory* %loadMem_4009b2, %struct.Memory** %MEMORY
  %loadMem_4009b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 1
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %AX.i534 = bitcast %union.anon* %1923 to i16*
  %1924 = load i64, i64* %PC.i533
  %1925 = add i64 %1924, 8
  store i64 %1925, i64* %PC.i533
  %1926 = load i16, i16* inttoptr (i64 6300480 to i16*)
  store i16 %1926, i16* %AX.i534, align 2
  store %struct.Memory* %loadMem_4009b5, %struct.Memory** %MEMORY
  %loadMem_4009bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 33
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 1
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %AX.i532 = bitcast %union.anon* %1932 to i16*
  %1933 = load i16, i16* %AX.i532
  %1934 = zext i16 %1933 to i64
  %1935 = load i64, i64* %PC.i531
  %1936 = add i64 %1935, 4
  store i64 %1936, i64* %PC.i531
  %1937 = add i16 1, %1933
  store i16 %1937, i16* %AX.i532, align 2
  %1938 = icmp ult i16 %1937, %1933
  %1939 = icmp ult i16 %1937, 1
  %1940 = or i1 %1938, %1939
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1941, i8* %1942, align 1
  %1943 = and i16 %1937, 255
  %1944 = zext i16 %1943 to i32
  %1945 = call i32 @llvm.ctpop.i32(i32 %1944)
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = xor i8 %1947, 1
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1948, i8* %1949, align 1
  %1950 = xor i64 1, %1934
  %1951 = trunc i64 %1950 to i16
  %1952 = xor i16 %1951, %1937
  %1953 = lshr i16 %1952, 4
  %1954 = trunc i16 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1955, i8* %1956, align 1
  %1957 = icmp eq i16 %1937, 0
  %1958 = zext i1 %1957 to i8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1958, i8* %1959, align 1
  %1960 = lshr i16 %1937, 15
  %1961 = trunc i16 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1961, i8* %1962, align 1
  %1963 = lshr i16 %1933, 15
  %1964 = xor i16 %1960, %1963
  %1965 = add i16 %1964, %1960
  %1966 = icmp eq i16 %1965, 2
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1967, i8* %1968, align 1
  store %struct.Memory* %loadMem_4009bd, %struct.Memory** %MEMORY
  %loadMem_4009c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 33
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 1
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %AX.i = bitcast %union.anon* %1974 to i16*
  %1975 = load i16, i16* %AX.i
  %1976 = zext i16 %1975 to i64
  %1977 = load i64, i64* %PC.i530
  %1978 = add i64 %1977, 8
  store i64 %1978, i64* %PC.i530
  store i16 %1975, i16* inttoptr (i64 6300480 to i16*)
  store %struct.Memory* %loadMem_4009c1, %struct.Memory** %MEMORY
  %loadMem_4009c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %PC.i529
  %1983 = add i64 %1982, -146
  %1984 = load i64, i64* %PC.i529
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i529
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1983, i64* %1986, align 8
  store %struct.Memory* %loadMem_4009c9, %struct.Memory** %MEMORY
  br label %block_.L_400937

block_.L_4009ce:                                  ; preds = %block_.L_400937
  %loadMem_4009ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 11
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RDI.i528 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %PC.i527
  %1994 = add i64 %1993, 5
  store i64 %1994, i64* %PC.i527
  store i64 3, i64* %RDI.i528, align 8
  store %struct.Memory* %loadMem_4009ce, %struct.Memory** %MEMORY
  %loadMem_4009d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 0
  %YMM0.i526 = bitcast %union.VectorReg* %1999 to %"class.std::bitset"*
  %2000 = bitcast %"class.std::bitset"* %YMM0.i526 to i8*
  %2001 = load i64, i64* %PC.i525
  %2002 = add i64 %2001, 3197
  %2003 = load i64, i64* %PC.i525
  %2004 = add i64 %2003, 8
  store i64 %2004, i64* %PC.i525
  %2005 = inttoptr i64 %2002 to double*
  %2006 = load double, double* %2005
  %2007 = bitcast i8* %2000 to double*
  store double %2006, double* %2007, align 1
  %2008 = getelementptr inbounds i8, i8* %2000, i64 8
  %2009 = bitcast i8* %2008 to double*
  store double 0.000000e+00, double* %2009, align 1
  store %struct.Memory* %loadMem_4009d3, %struct.Memory** %MEMORY
  %loadMem_4009db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %PC.i524
  %2014 = add i64 %2013, 10
  store i64 %2014, i64* %PC.i524
  store i16 0, i16* inttoptr (i64 6300480 to i16*)
  store %struct.Memory* %loadMem_4009db, %struct.Memory** %MEMORY
  %loadMem_4009e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2019 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2018, i64 0, i64 1
  %YMM1.i523 = bitcast %union.VectorReg* %2019 to %"class.std::bitset"*
  %2020 = bitcast %"class.std::bitset"* %YMM1.i523 to i8*
  %2021 = load i64, i64* %PC.i522
  %2022 = add i64 %2021, 9
  store i64 %2022, i64* %PC.i522
  %2023 = load double, double* inttoptr (i64 6300056 to double*)
  %2024 = bitcast i8* %2020 to double*
  store double %2023, double* %2024, align 1
  %2025 = getelementptr inbounds i8, i8* %2020, i64 8
  %2026 = bitcast i8* %2025 to double*
  store double 0.000000e+00, double* %2026, align 1
  store %struct.Memory* %loadMem_4009e5, %struct.Memory** %MEMORY
  %loadMem_4009ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2030, i64 0, i64 1
  %YMM1.i520 = bitcast %union.VectorReg* %2031 to %"class.std::bitset"*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2032, i64 0, i64 0
  %XMM0.i521 = bitcast %union.VectorReg* %2033 to %union.vec128_t*
  %2034 = bitcast %"class.std::bitset"* %YMM1.i520 to i8*
  %2035 = bitcast %"class.std::bitset"* %YMM1.i520 to i8*
  %2036 = bitcast %union.vec128_t* %XMM0.i521 to i8*
  %2037 = load i64, i64* %PC.i519
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i519
  %2039 = bitcast i8* %2035 to double*
  %2040 = load double, double* %2039, align 1
  %2041 = getelementptr inbounds i8, i8* %2035, i64 8
  %2042 = bitcast i8* %2041 to i64*
  %2043 = load i64, i64* %2042, align 1
  %2044 = bitcast i8* %2036 to double*
  %2045 = load double, double* %2044, align 1
  %2046 = fdiv double %2040, %2045
  %2047 = bitcast i8* %2034 to double*
  store double %2046, double* %2047, align 1
  %2048 = getelementptr inbounds i8, i8* %2034, i64 8
  %2049 = bitcast i8* %2048 to i64*
  store i64 %2043, i64* %2049, align 1
  store %struct.Memory* %loadMem_4009ee, %struct.Memory** %MEMORY
  %loadMem_4009f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2054 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2053, i64 0, i64 0
  %YMM0.i517 = bitcast %union.VectorReg* %2054 to %"class.std::bitset"*
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2055, i64 0, i64 1
  %XMM1.i518 = bitcast %union.VectorReg* %2056 to %union.vec128_t*
  %2057 = bitcast %"class.std::bitset"* %YMM0.i517 to i8*
  %2058 = bitcast %union.vec128_t* %XMM1.i518 to i8*
  %2059 = load i64, i64* %PC.i516
  %2060 = add i64 %2059, 3
  store i64 %2060, i64* %PC.i516
  %2061 = bitcast i8* %2058 to <2 x i32>*
  %2062 = load <2 x i32>, <2 x i32>* %2061, align 1
  %2063 = getelementptr inbounds i8, i8* %2058, i64 8
  %2064 = bitcast i8* %2063 to <2 x i32>*
  %2065 = load <2 x i32>, <2 x i32>* %2064, align 1
  %2066 = extractelement <2 x i32> %2062, i32 0
  %2067 = bitcast i8* %2057 to i32*
  store i32 %2066, i32* %2067, align 1
  %2068 = extractelement <2 x i32> %2062, i32 1
  %2069 = getelementptr inbounds i8, i8* %2057, i64 4
  %2070 = bitcast i8* %2069 to i32*
  store i32 %2068, i32* %2070, align 1
  %2071 = extractelement <2 x i32> %2065, i32 0
  %2072 = getelementptr inbounds i8, i8* %2057, i64 8
  %2073 = bitcast i8* %2072 to i32*
  store i32 %2071, i32* %2073, align 1
  %2074 = extractelement <2 x i32> %2065, i32 1
  %2075 = getelementptr inbounds i8, i8* %2057, i64 12
  %2076 = bitcast i8* %2075 to i32*
  store i32 %2074, i32* %2076, align 1
  store %struct.Memory* %loadMem_4009f2, %struct.Memory** %MEMORY
  %loadMem1_4009f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %PC.i515
  %2081 = add i64 %2080, 1387
  %2082 = load i64, i64* %PC.i515
  %2083 = add i64 %2082, 5
  %2084 = load i64, i64* %PC.i515
  %2085 = add i64 %2084, 5
  store i64 %2085, i64* %PC.i515
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2087 = load i64, i64* %2086, align 8
  %2088 = add i64 %2087, -8
  %2089 = inttoptr i64 %2088 to i64*
  store i64 %2083, i64* %2089
  store i64 %2088, i64* %2086, align 8
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2081, i64* %2090, align 8
  store %struct.Memory* %loadMem1_4009f5, %struct.Memory** %MEMORY
  %loadMem2_4009f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009f5 = load i64, i64* %3
  %call2_4009f5 = call %struct.Memory* @sub_400f60.trace_line(%struct.State* %0, i64 %loadPC_4009f5, %struct.Memory* %loadMem2_4009f5)
  store %struct.Memory* %call2_4009f5, %struct.Memory** %MEMORY
  %loadMem_4009fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 11
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RDI.i514 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %PC.i513
  %2098 = add i64 %2097, 5
  store i64 %2098, i64* %PC.i513
  store i64 6, i64* %RDI.i514, align 8
  store %struct.Memory* %loadMem_4009fa, %struct.Memory** %MEMORY
  %loadMem_4009ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2102, i64 0, i64 0
  %YMM0.i512 = bitcast %union.VectorReg* %2103 to %"class.std::bitset"*
  %2104 = bitcast %"class.std::bitset"* %YMM0.i512 to i8*
  %2105 = load i64, i64* %PC.i511
  %2106 = add i64 %2105, 3153
  %2107 = load i64, i64* %PC.i511
  %2108 = add i64 %2107, 8
  store i64 %2108, i64* %PC.i511
  %2109 = inttoptr i64 %2106 to double*
  %2110 = load double, double* %2109
  %2111 = bitcast i8* %2104 to double*
  store double %2110, double* %2111, align 1
  %2112 = getelementptr inbounds i8, i8* %2104, i64 8
  %2113 = bitcast i8* %2112 to double*
  store double 0.000000e+00, double* %2113, align 1
  store %struct.Memory* %loadMem_4009ff, %struct.Memory** %MEMORY
  %loadMem_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2117, i64 0, i64 1
  %YMM1.i510 = bitcast %union.VectorReg* %2118 to %"class.std::bitset"*
  %2119 = bitcast %"class.std::bitset"* %YMM1.i510 to i8*
  %2120 = load i64, i64* %PC.i509
  %2121 = add i64 %2120, 9
  store i64 %2121, i64* %PC.i509
  %2122 = load double, double* inttoptr (i64 6300488 to double*)
  %2123 = bitcast i8* %2119 to double*
  store double %2122, double* %2123, align 1
  %2124 = getelementptr inbounds i8, i8* %2119, i64 8
  %2125 = bitcast i8* %2124 to double*
  store double 0.000000e+00, double* %2125, align 1
  store %struct.Memory* %loadMem_400a07, %struct.Memory** %MEMORY
  %loadMem_400a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 15
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2133 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2132, i64 0, i64 1
  %XMM1.i508 = bitcast %union.VectorReg* %2133 to %union.vec128_t*
  %2134 = load i64, i64* %RBP.i507
  %2135 = sub i64 %2134, 48
  %2136 = bitcast %union.vec128_t* %XMM1.i508 to i8*
  %2137 = load i64, i64* %PC.i506
  %2138 = add i64 %2137, 5
  store i64 %2138, i64* %PC.i506
  %2139 = bitcast i8* %2136 to double*
  %2140 = load double, double* %2139, align 1
  %2141 = inttoptr i64 %2135 to double*
  store double %2140, double* %2141
  store %struct.Memory* %loadMem_400a10, %struct.Memory** %MEMORY
  %loadMem_400a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2145, i64 0, i64 1
  %YMM1.i505 = bitcast %union.VectorReg* %2146 to %"class.std::bitset"*
  %2147 = bitcast %"class.std::bitset"* %YMM1.i505 to i8*
  %2148 = load i64, i64* %PC.i504
  %2149 = add i64 %2148, 9
  store i64 %2149, i64* %PC.i504
  %2150 = load double, double* inttoptr (i64 6300056 to double*)
  %2151 = bitcast i8* %2147 to double*
  store double %2150, double* %2151, align 1
  %2152 = getelementptr inbounds i8, i8* %2147, i64 8
  %2153 = bitcast i8* %2152 to double*
  store double 0.000000e+00, double* %2153, align 1
  store %struct.Memory* %loadMem_400a15, %struct.Memory** %MEMORY
  %loadMem_400a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2157, i64 0, i64 1
  %YMM1.i502 = bitcast %union.VectorReg* %2158 to %"class.std::bitset"*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2159, i64 0, i64 0
  %XMM0.i503 = bitcast %union.VectorReg* %2160 to %union.vec128_t*
  %2161 = bitcast %"class.std::bitset"* %YMM1.i502 to i8*
  %2162 = bitcast %"class.std::bitset"* %YMM1.i502 to i8*
  %2163 = bitcast %union.vec128_t* %XMM0.i503 to i8*
  %2164 = load i64, i64* %PC.i501
  %2165 = add i64 %2164, 4
  store i64 %2165, i64* %PC.i501
  %2166 = bitcast i8* %2162 to double*
  %2167 = load double, double* %2166, align 1
  %2168 = getelementptr inbounds i8, i8* %2162, i64 8
  %2169 = bitcast i8* %2168 to i64*
  %2170 = load i64, i64* %2169, align 1
  %2171 = bitcast i8* %2163 to double*
  %2172 = load double, double* %2171, align 1
  %2173 = fdiv double %2167, %2172
  %2174 = bitcast i8* %2161 to double*
  store double %2173, double* %2174, align 1
  %2175 = getelementptr inbounds i8, i8* %2161, i64 8
  %2176 = bitcast i8* %2175 to i64*
  store i64 %2170, i64* %2176, align 1
  store %struct.Memory* %loadMem_400a1e, %struct.Memory** %MEMORY
  %loadMem_400a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2180, i64 0, i64 0
  %YMM0.i499 = bitcast %union.VectorReg* %2181 to %"class.std::bitset"*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2182, i64 0, i64 1
  %XMM1.i500 = bitcast %union.VectorReg* %2183 to %union.vec128_t*
  %2184 = bitcast %"class.std::bitset"* %YMM0.i499 to i8*
  %2185 = bitcast %union.vec128_t* %XMM1.i500 to i8*
  %2186 = load i64, i64* %PC.i498
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i498
  %2188 = bitcast i8* %2185 to <2 x i32>*
  %2189 = load <2 x i32>, <2 x i32>* %2188, align 1
  %2190 = getelementptr inbounds i8, i8* %2185, i64 8
  %2191 = bitcast i8* %2190 to <2 x i32>*
  %2192 = load <2 x i32>, <2 x i32>* %2191, align 1
  %2193 = extractelement <2 x i32> %2189, i32 0
  %2194 = bitcast i8* %2184 to i32*
  store i32 %2193, i32* %2194, align 1
  %2195 = extractelement <2 x i32> %2189, i32 1
  %2196 = getelementptr inbounds i8, i8* %2184, i64 4
  %2197 = bitcast i8* %2196 to i32*
  store i32 %2195, i32* %2197, align 1
  %2198 = extractelement <2 x i32> %2192, i32 0
  %2199 = getelementptr inbounds i8, i8* %2184, i64 8
  %2200 = bitcast i8* %2199 to i32*
  store i32 %2198, i32* %2200, align 1
  %2201 = extractelement <2 x i32> %2192, i32 1
  %2202 = getelementptr inbounds i8, i8* %2184, i64 12
  %2203 = bitcast i8* %2202 to i32*
  store i32 %2201, i32* %2203, align 1
  store %struct.Memory* %loadMem_400a22, %struct.Memory** %MEMORY
  %loadMem_400a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 1
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %EAX.i496 = bitcast %union.anon* %2209 to i32*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RBP.i497
  %2214 = sub i64 %2213, 76
  %2215 = load i32, i32* %EAX.i496
  %2216 = zext i32 %2215 to i64
  %2217 = load i64, i64* %PC.i495
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC.i495
  %2219 = inttoptr i64 %2214 to i32*
  store i32 %2215, i32* %2219
  store %struct.Memory* %loadMem_400a25, %struct.Memory** %MEMORY
  %loadMem1_400a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2222 to i64*
  %2223 = load i64, i64* %PC.i494
  %2224 = add i64 %2223, 1336
  %2225 = load i64, i64* %PC.i494
  %2226 = add i64 %2225, 5
  %2227 = load i64, i64* %PC.i494
  %2228 = add i64 %2227, 5
  store i64 %2228, i64* %PC.i494
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2230 = load i64, i64* %2229, align 8
  %2231 = add i64 %2230, -8
  %2232 = inttoptr i64 %2231 to i64*
  store i64 %2226, i64* %2232
  store i64 %2231, i64* %2229, align 8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2224, i64* %2233, align 8
  store %struct.Memory* %loadMem1_400a28, %struct.Memory** %MEMORY
  %loadMem2_400a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a28 = load i64, i64* %3
  %call2_400a28 = call %struct.Memory* @sub_400f60.trace_line(%struct.State* %0, i64 %loadPC_400a28, %struct.Memory* %loadMem2_400a28)
  store %struct.Memory* %call2_400a28, %struct.Memory** %MEMORY
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2238 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2237, i64 0, i64 0
  %YMM0.i493 = bitcast %union.VectorReg* %2238 to %"class.std::bitset"*
  %2239 = bitcast %"class.std::bitset"* %YMM0.i493 to i8*
  %2240 = load i64, i64* %PC.i492
  %2241 = add i64 %2240, 3083
  %2242 = load i64, i64* %PC.i492
  %2243 = add i64 %2242, 8
  store i64 %2243, i64* %PC.i492
  %2244 = inttoptr i64 %2241 to double*
  %2245 = load double, double* %2244
  %2246 = bitcast i8* %2239 to double*
  store double %2245, double* %2246, align 1
  %2247 = getelementptr inbounds i8, i8* %2239, i64 8
  %2248 = bitcast i8* %2247 to double*
  store double 0.000000e+00, double* %2248, align 1
  store %struct.Memory* %loadMem_400a2d, %struct.Memory** %MEMORY
  %loadMem_400a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2252, i64 0, i64 1
  %YMM1.i491 = bitcast %union.VectorReg* %2253 to %"class.std::bitset"*
  %2254 = bitcast %"class.std::bitset"* %YMM1.i491 to i8*
  %2255 = load i64, i64* %PC.i490
  %2256 = add i64 %2255, 3083
  %2257 = load i64, i64* %PC.i490
  %2258 = add i64 %2257, 8
  store i64 %2258, i64* %PC.i490
  %2259 = inttoptr i64 %2256 to double*
  %2260 = load double, double* %2259
  %2261 = bitcast i8* %2254 to double*
  store double %2260, double* %2261, align 1
  %2262 = getelementptr inbounds i8, i8* %2254, i64 8
  %2263 = bitcast i8* %2262 to double*
  store double 0.000000e+00, double* %2263, align 1
  store %struct.Memory* %loadMem_400a35, %struct.Memory** %MEMORY
  %loadMem_400a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2267, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2268 to %"class.std::bitset"*
  %2269 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2270 = load i64, i64* %PC.i489
  %2271 = add i64 %2270, 3083
  %2272 = load i64, i64* %PC.i489
  %2273 = add i64 %2272, 8
  store i64 %2273, i64* %PC.i489
  %2274 = inttoptr i64 %2271 to double*
  %2275 = load double, double* %2274
  %2276 = bitcast i8* %2269 to double*
  store double %2275, double* %2276, align 1
  %2277 = getelementptr inbounds i8, i8* %2269, i64 8
  %2278 = bitcast i8* %2277 to double*
  store double 0.000000e+00, double* %2278, align 1
  store %struct.Memory* %loadMem_400a3d, %struct.Memory** %MEMORY
  %loadMem_400a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2282, i64 0, i64 3
  %YMM3.i488 = bitcast %union.VectorReg* %2283 to %"class.std::bitset"*
  %2284 = bitcast %"class.std::bitset"* %YMM3.i488 to i8*
  %2285 = load i64, i64* %PC.i487
  %2286 = add i64 %2285, 9
  store i64 %2286, i64* %PC.i487
  %2287 = load double, double* inttoptr (i64 6300488 to double*)
  %2288 = bitcast i8* %2284 to double*
  store double %2287, double* %2288, align 1
  %2289 = getelementptr inbounds i8, i8* %2284, i64 8
  %2290 = bitcast i8* %2289 to double*
  store double 0.000000e+00, double* %2290, align 1
  store %struct.Memory* %loadMem_400a45, %struct.Memory** %MEMORY
  %loadMem_400a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 15
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2297, i64 0, i64 3
  %XMM3.i486 = bitcast %union.VectorReg* %2298 to %union.vec128_t*
  %2299 = load i64, i64* %RBP.i485
  %2300 = sub i64 %2299, 40
  %2301 = bitcast %union.vec128_t* %XMM3.i486 to i8*
  %2302 = load i64, i64* %PC.i484
  %2303 = add i64 %2302, 5
  store i64 %2303, i64* %PC.i484
  %2304 = bitcast i8* %2301 to double*
  %2305 = load double, double* %2304, align 1
  %2306 = inttoptr i64 %2300 to double*
  store double %2305, double* %2306
  store %struct.Memory* %loadMem_400a4e, %struct.Memory** %MEMORY
  %loadMem_400a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 33
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2310, i64 0, i64 3
  %YMM3.i483 = bitcast %union.VectorReg* %2311 to %"class.std::bitset"*
  %2312 = bitcast %"class.std::bitset"* %YMM3.i483 to i8*
  %2313 = load i64, i64* %PC.i482
  %2314 = add i64 %2313, 9
  store i64 %2314, i64* %PC.i482
  %2315 = load double, double* inttoptr (i64 6300512 to double*)
  %2316 = bitcast i8* %2312 to double*
  store double %2315, double* %2316, align 1
  %2317 = getelementptr inbounds i8, i8* %2312, i64 8
  %2318 = bitcast i8* %2317 to double*
  store double 0.000000e+00, double* %2318, align 1
  store %struct.Memory* %loadMem_400a53, %struct.Memory** %MEMORY
  %loadMem_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2322, i64 0, i64 3
  %YMM3.i481 = bitcast %union.VectorReg* %2323 to %"class.std::bitset"*
  %2324 = bitcast %"class.std::bitset"* %YMM3.i481 to i8*
  %2325 = bitcast %"class.std::bitset"* %YMM3.i481 to i8*
  %2326 = load i64, i64* %PC.i480
  %2327 = add i64 %2326, 9
  store i64 %2327, i64* %PC.i480
  %2328 = bitcast i8* %2325 to double*
  %2329 = load double, double* %2328, align 1
  %2330 = getelementptr inbounds i8, i8* %2325, i64 8
  %2331 = bitcast i8* %2330 to i64*
  %2332 = load i64, i64* %2331, align 1
  %2333 = load double, double* inttoptr (i64 6300496 to double*)
  %2334 = fsub double %2329, %2333
  %2335 = bitcast i8* %2324 to double*
  store double %2334, double* %2335, align 1
  %2336 = getelementptr inbounds i8, i8* %2324, i64 8
  %2337 = bitcast i8* %2336 to i64*
  store i64 %2332, i64* %2337, align 1
  store %struct.Memory* %loadMem_400a5c, %struct.Memory** %MEMORY
  %loadMem_400a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2341, i64 0, i64 3
  %XMM3.i479 = bitcast %union.VectorReg* %2342 to %union.vec128_t*
  %2343 = bitcast %union.vec128_t* %XMM3.i479 to i8*
  %2344 = load i64, i64* %PC.i478
  %2345 = add i64 %2344, 9
  store i64 %2345, i64* %PC.i478
  %2346 = bitcast i8* %2343 to double*
  %2347 = load double, double* %2346, align 1
  store double %2347, double* inttoptr (i64 6300536 to double*)
  store %struct.Memory* %loadMem_400a65, %struct.Memory** %MEMORY
  %loadMem_400a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2351, i64 0, i64 3
  %YMM3.i477 = bitcast %union.VectorReg* %2352 to %"class.std::bitset"*
  %2353 = bitcast %"class.std::bitset"* %YMM3.i477 to i8*
  %2354 = load i64, i64* %PC.i476
  %2355 = add i64 %2354, 9
  store i64 %2355, i64* %PC.i476
  %2356 = load double, double* inttoptr (i64 6300512 to double*)
  %2357 = bitcast i8* %2353 to double*
  store double %2356, double* %2357, align 1
  %2358 = getelementptr inbounds i8, i8* %2353, i64 8
  %2359 = bitcast i8* %2358 to double*
  store double 0.000000e+00, double* %2359, align 1
  store %struct.Memory* %loadMem_400a6e, %struct.Memory** %MEMORY
  %loadMem_400a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2363, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2364 to %"class.std::bitset"*
  %2365 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2366 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2367 = load i64, i64* %PC.i475
  %2368 = add i64 %2367, 9
  store i64 %2368, i64* %PC.i475
  %2369 = bitcast i8* %2366 to double*
  %2370 = load double, double* %2369, align 1
  %2371 = getelementptr inbounds i8, i8* %2366, i64 8
  %2372 = bitcast i8* %2371 to i64*
  %2373 = load i64, i64* %2372, align 1
  %2374 = load double, double* inttoptr (i64 6300520 to double*)
  %2375 = fmul double %2370, %2374
  %2376 = bitcast i8* %2365 to double*
  store double %2375, double* %2376, align 1
  %2377 = getelementptr inbounds i8, i8* %2365, i64 8
  %2378 = bitcast i8* %2377 to i64*
  store i64 %2373, i64* %2378, align 1
  store %struct.Memory* %loadMem_400a77, %struct.Memory** %MEMORY
  %loadMem_400a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2382, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2383 to %"class.std::bitset"*
  %2384 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2385 = load i64, i64* %PC.i474
  %2386 = add i64 %2385, 9
  store i64 %2386, i64* %PC.i474
  %2387 = load double, double* inttoptr (i64 6300504 to double*)
  %2388 = bitcast i8* %2384 to double*
  store double %2387, double* %2388, align 1
  %2389 = getelementptr inbounds i8, i8* %2384, i64 8
  %2390 = bitcast i8* %2389 to double*
  store double 0.000000e+00, double* %2390, align 1
  store %struct.Memory* %loadMem_400a80, %struct.Memory** %MEMORY
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 15
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2397, i64 0, i64 0
  %XMM0.i473 = bitcast %union.VectorReg* %2398 to %union.vec128_t*
  %2399 = load i64, i64* %RBP.i472
  %2400 = sub i64 %2399, 88
  %2401 = bitcast %union.vec128_t* %XMM0.i473 to i8*
  %2402 = load i64, i64* %PC.i471
  %2403 = add i64 %2402, 5
  store i64 %2403, i64* %PC.i471
  %2404 = bitcast i8* %2401 to double*
  %2405 = load double, double* %2404, align 1
  %2406 = inttoptr i64 %2400 to double*
  store double %2405, double* %2406
  store %struct.Memory* %loadMem_400a89, %struct.Memory** %MEMORY
  %loadMem_400a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2410, i64 0, i64 0
  %YMM0.i470 = bitcast %union.VectorReg* %2411 to %"class.std::bitset"*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2413 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2412, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2413 to %union.vec128_t*
  %2414 = bitcast %"class.std::bitset"* %YMM0.i470 to i8*
  %2415 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2416 = load i64, i64* %PC.i469
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %PC.i469
  %2418 = bitcast i8* %2415 to <2 x i32>*
  %2419 = load <2 x i32>, <2 x i32>* %2418, align 1
  %2420 = getelementptr inbounds i8, i8* %2415, i64 8
  %2421 = bitcast i8* %2420 to <2 x i32>*
  %2422 = load <2 x i32>, <2 x i32>* %2421, align 1
  %2423 = extractelement <2 x i32> %2419, i32 0
  %2424 = bitcast i8* %2414 to i32*
  store i32 %2423, i32* %2424, align 1
  %2425 = extractelement <2 x i32> %2419, i32 1
  %2426 = getelementptr inbounds i8, i8* %2414, i64 4
  %2427 = bitcast i8* %2426 to i32*
  store i32 %2425, i32* %2427, align 1
  %2428 = extractelement <2 x i32> %2422, i32 0
  %2429 = getelementptr inbounds i8, i8* %2414, i64 8
  %2430 = bitcast i8* %2429 to i32*
  store i32 %2428, i32* %2430, align 1
  %2431 = extractelement <2 x i32> %2422, i32 1
  %2432 = getelementptr inbounds i8, i8* %2414, i64 12
  %2433 = bitcast i8* %2432 to i32*
  store i32 %2431, i32* %2433, align 1
  store %struct.Memory* %loadMem_400a8e, %struct.Memory** %MEMORY
  %loadMem_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 1
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %2439 to i32*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 15
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %RBP.i468
  %2444 = sub i64 %2443, 92
  %2445 = load i32, i32* %EAX.i467
  %2446 = zext i32 %2445 to i64
  %2447 = load i64, i64* %PC.i466
  %2448 = add i64 %2447, 3
  store i64 %2448, i64* %PC.i466
  %2449 = inttoptr i64 %2444 to i32*
  store i32 %2445, i32* %2449
  store %struct.Memory* %loadMem_400a91, %struct.Memory** %MEMORY
  %loadMem_400a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 15
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2456, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2457 to %union.vec128_t*
  %2458 = load i64, i64* %RBP.i465
  %2459 = sub i64 %2458, 104
  %2460 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2461 = load i64, i64* %PC.i464
  %2462 = add i64 %2461, 5
  store i64 %2462, i64* %PC.i464
  %2463 = bitcast i8* %2460 to double*
  %2464 = load double, double* %2463, align 1
  %2465 = inttoptr i64 %2459 to double*
  store double %2464, double* %2465
  store %struct.Memory* %loadMem_400a94, %struct.Memory** %MEMORY
  %loadMem_400a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2472, i64 0, i64 1
  %XMM1.i463 = bitcast %union.VectorReg* %2473 to %union.vec128_t*
  %2474 = load i64, i64* %RBP.i462
  %2475 = sub i64 %2474, 112
  %2476 = bitcast %union.vec128_t* %XMM1.i463 to i8*
  %2477 = load i64, i64* %PC.i461
  %2478 = add i64 %2477, 5
  store i64 %2478, i64* %PC.i461
  %2479 = bitcast i8* %2476 to double*
  %2480 = load double, double* %2479, align 1
  %2481 = inttoptr i64 %2475 to double*
  store double %2480, double* %2481
  store %struct.Memory* %loadMem_400a99, %struct.Memory** %MEMORY
  %loadMem_400a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 15
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2488, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2489 to %union.vec128_t*
  %2490 = load i64, i64* %RBP.i460
  %2491 = sub i64 %2490, 120
  %2492 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2493 = load i64, i64* %PC.i459
  %2494 = add i64 %2493, 5
  store i64 %2494, i64* %PC.i459
  %2495 = bitcast i8* %2492 to double*
  %2496 = load double, double* %2495, align 1
  %2497 = inttoptr i64 %2491 to double*
  store double %2496, double* %2497
  store %struct.Memory* %loadMem_400a9e, %struct.Memory** %MEMORY
  %loadMem1_400aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i458
  %2502 = add i64 %2501, -1171
  %2503 = load i64, i64* %PC.i458
  %2504 = add i64 %2503, 5
  %2505 = load i64, i64* %PC.i458
  %2506 = add i64 %2505, 5
  store i64 %2506, i64* %PC.i458
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2508 = load i64, i64* %2507, align 8
  %2509 = add i64 %2508, -8
  %2510 = inttoptr i64 %2509 to i64*
  store i64 %2504, i64* %2510
  store i64 %2509, i64* %2507, align 8
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2502, i64* %2511, align 8
  store %struct.Memory* %loadMem1_400aa3, %struct.Memory** %MEMORY
  %loadMem2_400aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aa3 = load i64, i64* %3
  %call2_400aa3 = call %struct.Memory* @sub_400610.sin_plt(%struct.State* %0, i64 %loadPC_400aa3, %struct.Memory* %loadMem2_400aa3)
  store %struct.Memory* %call2_400aa3, %struct.Memory** %MEMORY
  %loadMem_400aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2515, i64 0, i64 0
  %YMM0.i457 = bitcast %union.VectorReg* %2516 to %"class.std::bitset"*
  %2517 = bitcast %"class.std::bitset"* %YMM0.i457 to i8*
  %2518 = bitcast %"class.std::bitset"* %YMM0.i457 to i8*
  %2519 = load i64, i64* %PC.i456
  %2520 = add i64 %2519, 9
  store i64 %2520, i64* %PC.i456
  %2521 = bitcast i8* %2518 to double*
  %2522 = load double, double* %2521, align 1
  %2523 = getelementptr inbounds i8, i8* %2518, i64 8
  %2524 = bitcast i8* %2523 to i64*
  %2525 = load i64, i64* %2524, align 1
  %2526 = load double, double* inttoptr (i64 6300496 to double*)
  %2527 = fmul double %2522, %2526
  %2528 = bitcast i8* %2517 to double*
  store double %2527, double* %2528, align 1
  %2529 = getelementptr inbounds i8, i8* %2517, i64 8
  %2530 = bitcast i8* %2529 to i64*
  store i64 %2525, i64* %2530, align 1
  store %struct.Memory* %loadMem_400aa8, %struct.Memory** %MEMORY
  %loadMem_400ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 15
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2537, i64 0, i64 1
  %YMM1.i455 = bitcast %union.VectorReg* %2538 to %"class.std::bitset"*
  %2539 = bitcast %"class.std::bitset"* %YMM1.i455 to i8*
  %2540 = load i64, i64* %RBP.i454
  %2541 = sub i64 %2540, 104
  %2542 = load i64, i64* %PC.i453
  %2543 = add i64 %2542, 5
  store i64 %2543, i64* %PC.i453
  %2544 = inttoptr i64 %2541 to double*
  %2545 = load double, double* %2544
  %2546 = bitcast i8* %2539 to double*
  store double %2545, double* %2546, align 1
  %2547 = getelementptr inbounds i8, i8* %2539, i64 8
  %2548 = bitcast i8* %2547 to double*
  store double 0.000000e+00, double* %2548, align 1
  store %struct.Memory* %loadMem_400ab1, %struct.Memory** %MEMORY
  %loadMem_400ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2552, i64 0, i64 1
  %YMM1.i451 = bitcast %union.VectorReg* %2553 to %"class.std::bitset"*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2554, i64 0, i64 0
  %XMM0.i452 = bitcast %union.VectorReg* %2555 to %union.vec128_t*
  %2556 = bitcast %"class.std::bitset"* %YMM1.i451 to i8*
  %2557 = bitcast %"class.std::bitset"* %YMM1.i451 to i8*
  %2558 = bitcast %union.vec128_t* %XMM0.i452 to i8*
  %2559 = load i64, i64* %PC.i450
  %2560 = add i64 %2559, 4
  store i64 %2560, i64* %PC.i450
  %2561 = bitcast i8* %2557 to double*
  %2562 = load double, double* %2561, align 1
  %2563 = getelementptr inbounds i8, i8* %2557, i64 8
  %2564 = bitcast i8* %2563 to i64*
  %2565 = load i64, i64* %2564, align 1
  %2566 = bitcast i8* %2558 to double*
  %2567 = load double, double* %2566, align 1
  %2568 = fdiv double %2562, %2567
  %2569 = bitcast i8* %2556 to double*
  store double %2568, double* %2569, align 1
  %2570 = getelementptr inbounds i8, i8* %2556, i64 8
  %2571 = bitcast i8* %2570 to i64*
  store i64 %2565, i64* %2571, align 1
  store %struct.Memory* %loadMem_400ab6, %struct.Memory** %MEMORY
  %loadMem_400aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 15
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2578, i64 0, i64 0
  %YMM0.i449 = bitcast %union.VectorReg* %2579 to %"class.std::bitset"*
  %2580 = bitcast %"class.std::bitset"* %YMM0.i449 to i8*
  %2581 = load i64, i64* %RBP.i448
  %2582 = sub i64 %2581, 120
  %2583 = load i64, i64* %PC.i447
  %2584 = add i64 %2583, 5
  store i64 %2584, i64* %PC.i447
  %2585 = inttoptr i64 %2582 to double*
  %2586 = load double, double* %2585
  %2587 = bitcast i8* %2580 to double*
  store double %2586, double* %2587, align 1
  %2588 = getelementptr inbounds i8, i8* %2580, i64 8
  %2589 = bitcast i8* %2588 to double*
  store double 0.000000e+00, double* %2589, align 1
  store %struct.Memory* %loadMem_400aba, %struct.Memory** %MEMORY
  %loadMem_400abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2593, i64 0, i64 0
  %YMM0.i445 = bitcast %union.VectorReg* %2594 to %"class.std::bitset"*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2595, i64 0, i64 1
  %XMM1.i446 = bitcast %union.VectorReg* %2596 to %union.vec128_t*
  %2597 = bitcast %"class.std::bitset"* %YMM0.i445 to i8*
  %2598 = bitcast %"class.std::bitset"* %YMM0.i445 to i8*
  %2599 = bitcast %union.vec128_t* %XMM1.i446 to i8*
  %2600 = load i64, i64* %PC.i444
  %2601 = add i64 %2600, 4
  store i64 %2601, i64* %PC.i444
  %2602 = bitcast i8* %2598 to double*
  %2603 = load double, double* %2602, align 1
  %2604 = getelementptr inbounds i8, i8* %2598, i64 8
  %2605 = bitcast i8* %2604 to i64*
  %2606 = load i64, i64* %2605, align 1
  %2607 = bitcast i8* %2599 to double*
  %2608 = load double, double* %2607, align 1
  %2609 = fsub double %2603, %2608
  %2610 = bitcast i8* %2597 to double*
  store double %2609, double* %2610, align 1
  %2611 = getelementptr inbounds i8, i8* %2597, i64 8
  %2612 = bitcast i8* %2611 to i64*
  store i64 %2606, i64* %2612, align 1
  store %struct.Memory* %loadMem_400abf, %struct.Memory** %MEMORY
  %loadMem_400ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2616, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %2617 to %union.vec128_t*
  %2618 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %2619 = load i64, i64* %PC.i442
  %2620 = add i64 %2619, 9
  store i64 %2620, i64* %PC.i442
  %2621 = bitcast i8* %2618 to double*
  %2622 = load double, double* %2621, align 1
  store double %2622, double* inttoptr (i64 6300544 to double*)
  store %struct.Memory* %loadMem_400ac3, %struct.Memory** %MEMORY
  %loadMem_400acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2629, i64 0, i64 0
  %YMM0.i441 = bitcast %union.VectorReg* %2630 to %"class.std::bitset"*
  %2631 = bitcast %"class.std::bitset"* %YMM0.i441 to i8*
  %2632 = load i64, i64* %RBP.i440
  %2633 = sub i64 %2632, 40
  %2634 = load i64, i64* %PC.i439
  %2635 = add i64 %2634, 5
  store i64 %2635, i64* %PC.i439
  %2636 = inttoptr i64 %2633 to double*
  %2637 = load double, double* %2636
  %2638 = bitcast i8* %2631 to double*
  store double %2637, double* %2638, align 1
  %2639 = getelementptr inbounds i8, i8* %2631, i64 8
  %2640 = bitcast i8* %2639 to double*
  store double 0.000000e+00, double* %2640, align 1
  store %struct.Memory* %loadMem_400acc, %struct.Memory** %MEMORY
  %loadMem_400ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 15
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %2646 to i64*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2647, i64 0, i64 0
  %YMM0.i438 = bitcast %union.VectorReg* %2648 to %"class.std::bitset"*
  %2649 = bitcast %"class.std::bitset"* %YMM0.i438 to i8*
  %2650 = bitcast %"class.std::bitset"* %YMM0.i438 to i8*
  %2651 = load i64, i64* %RBP.i437
  %2652 = sub i64 %2651, 48
  %2653 = load i64, i64* %PC.i436
  %2654 = add i64 %2653, 5
  store i64 %2654, i64* %PC.i436
  %2655 = bitcast i8* %2650 to double*
  %2656 = load double, double* %2655, align 1
  %2657 = getelementptr inbounds i8, i8* %2650, i64 8
  %2658 = bitcast i8* %2657 to i64*
  %2659 = load i64, i64* %2658, align 1
  %2660 = inttoptr i64 %2652 to double*
  %2661 = load double, double* %2660
  %2662 = fsub double %2656, %2661
  %2663 = bitcast i8* %2649 to double*
  store double %2662, double* %2663, align 1
  %2664 = getelementptr inbounds i8, i8* %2649, i64 8
  %2665 = bitcast i8* %2664 to i64*
  store i64 %2659, i64* %2665, align 1
  store %struct.Memory* %loadMem_400ad1, %struct.Memory** %MEMORY
  %loadMem_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2669, i64 0, i64 0
  %XMM0.i435 = bitcast %union.VectorReg* %2670 to %union.vec128_t*
  %2671 = bitcast %union.vec128_t* %XMM0.i435 to i8*
  %2672 = load i64, i64* %PC.i434
  %2673 = add i64 %2672, 9
  store i64 %2673, i64* %PC.i434
  %2674 = bitcast i8* %2671 to double*
  %2675 = load double, double* %2674, align 1
  store double %2675, double* inttoptr (i64 6300552 to double*)
  store %struct.Memory* %loadMem_400ad6, %struct.Memory** %MEMORY
  %loadMem_400adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 33
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2680 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2679, i64 0, i64 0
  %YMM0.i433 = bitcast %union.VectorReg* %2680 to %"class.std::bitset"*
  %2681 = bitcast %"class.std::bitset"* %YMM0.i433 to i8*
  %2682 = load i64, i64* %PC.i432
  %2683 = add i64 %2682, 9
  store i64 %2683, i64* %PC.i432
  %2684 = load double, double* inttoptr (i64 6300504 to double*)
  %2685 = bitcast i8* %2681 to double*
  store double %2684, double* %2685, align 1
  %2686 = getelementptr inbounds i8, i8* %2681, i64 8
  %2687 = bitcast i8* %2686 to double*
  store double 0.000000e+00, double* %2687, align 1
  store %struct.Memory* %loadMem_400adf, %struct.Memory** %MEMORY
  %loadMem1_400ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %PC.i431
  %2692 = add i64 %2691, -1240
  %2693 = load i64, i64* %PC.i431
  %2694 = add i64 %2693, 5
  %2695 = load i64, i64* %PC.i431
  %2696 = add i64 %2695, 5
  store i64 %2696, i64* %PC.i431
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2698 = load i64, i64* %2697, align 8
  %2699 = add i64 %2698, -8
  %2700 = inttoptr i64 %2699 to i64*
  store i64 %2694, i64* %2700
  store i64 %2699, i64* %2697, align 8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2692, i64* %2701, align 8
  store %struct.Memory* %loadMem1_400ae8, %struct.Memory** %MEMORY
  %loadMem2_400ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ae8 = load i64, i64* %3
  %call2_400ae8 = call %struct.Memory* @sub_400610.sin_plt(%struct.State* %0, i64 %loadPC_400ae8, %struct.Memory* %loadMem2_400ae8)
  store %struct.Memory* %call2_400ae8, %struct.Memory** %MEMORY
  %loadMem_400aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2705, i64 0, i64 0
  %XMM0.i430 = bitcast %union.VectorReg* %2706 to %union.vec128_t*
  %2707 = bitcast %union.vec128_t* %XMM0.i430 to i8*
  %2708 = load i64, i64* %PC.i429
  %2709 = add i64 %2708, 9
  store i64 %2709, i64* %PC.i429
  %2710 = bitcast i8* %2707 to double*
  %2711 = load double, double* %2710, align 1
  store double %2711, double* inttoptr (i64 6300560 to double*)
  store %struct.Memory* %loadMem_400aed, %struct.Memory** %MEMORY
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2715, i64 0, i64 0
  %YMM0.i428 = bitcast %union.VectorReg* %2716 to %"class.std::bitset"*
  %2717 = bitcast %"class.std::bitset"* %YMM0.i428 to i8*
  %2718 = load i64, i64* %PC.i427
  %2719 = add i64 %2718, 9
  store i64 %2719, i64* %PC.i427
  %2720 = load double, double* inttoptr (i64 6300560 to double*)
  %2721 = bitcast i8* %2717 to double*
  store double %2720, double* %2721, align 1
  %2722 = getelementptr inbounds i8, i8* %2717, i64 8
  %2723 = bitcast i8* %2722 to double*
  store double 0.000000e+00, double* %2723, align 1
  store %struct.Memory* %loadMem_400af6, %struct.Memory** %MEMORY
  %loadMem_400aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2727, i64 0, i64 0
  %YMM0.i426 = bitcast %union.VectorReg* %2728 to %"class.std::bitset"*
  %2729 = bitcast %"class.std::bitset"* %YMM0.i426 to i8*
  %2730 = bitcast %"class.std::bitset"* %YMM0.i426 to i8*
  %2731 = load i64, i64* %PC.i425
  %2732 = add i64 %2731, 9
  store i64 %2732, i64* %PC.i425
  %2733 = bitcast i8* %2730 to double*
  %2734 = load double, double* %2733, align 1
  %2735 = getelementptr inbounds i8, i8* %2730, i64 8
  %2736 = bitcast i8* %2735 to i64*
  %2737 = load i64, i64* %2736, align 1
  %2738 = load double, double* inttoptr (i64 6300560 to double*)
  %2739 = fmul double %2734, %2738
  %2740 = bitcast i8* %2729 to double*
  store double %2739, double* %2740, align 1
  %2741 = getelementptr inbounds i8, i8* %2729, i64 8
  %2742 = bitcast i8* %2741 to i64*
  store i64 %2737, i64* %2742, align 1
  store %struct.Memory* %loadMem_400aff, %struct.Memory** %MEMORY
  %loadMem_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 33
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 15
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2749, i64 0, i64 1
  %YMM1.i424 = bitcast %union.VectorReg* %2750 to %"class.std::bitset"*
  %2751 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %2752 = load i64, i64* %RBP.i423
  %2753 = sub i64 %2752, 112
  %2754 = load i64, i64* %PC.i422
  %2755 = add i64 %2754, 5
  store i64 %2755, i64* %PC.i422
  %2756 = inttoptr i64 %2753 to double*
  %2757 = load double, double* %2756
  %2758 = bitcast i8* %2751 to double*
  store double %2757, double* %2758, align 1
  %2759 = getelementptr inbounds i8, i8* %2751, i64 8
  %2760 = bitcast i8* %2759 to double*
  store double 0.000000e+00, double* %2760, align 1
  store %struct.Memory* %loadMem_400b08, %struct.Memory** %MEMORY
  %loadMem_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2764, i64 0, i64 1
  %YMM1.i420 = bitcast %union.VectorReg* %2765 to %"class.std::bitset"*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2767 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2766, i64 0, i64 0
  %XMM0.i421 = bitcast %union.VectorReg* %2767 to %union.vec128_t*
  %2768 = bitcast %"class.std::bitset"* %YMM1.i420 to i8*
  %2769 = bitcast %"class.std::bitset"* %YMM1.i420 to i8*
  %2770 = bitcast %union.vec128_t* %XMM0.i421 to i8*
  %2771 = load i64, i64* %PC.i419
  %2772 = add i64 %2771, 4
  store i64 %2772, i64* %PC.i419
  %2773 = bitcast i8* %2769 to double*
  %2774 = load double, double* %2773, align 1
  %2775 = getelementptr inbounds i8, i8* %2769, i64 8
  %2776 = bitcast i8* %2775 to i64*
  %2777 = load i64, i64* %2776, align 1
  %2778 = bitcast i8* %2770 to double*
  %2779 = load double, double* %2778, align 1
  %2780 = fdiv double %2774, %2779
  %2781 = bitcast i8* %2768 to double*
  store double %2780, double* %2781, align 1
  %2782 = getelementptr inbounds i8, i8* %2768, i64 8
  %2783 = bitcast i8* %2782 to i64*
  store i64 %2777, i64* %2783, align 1
  store %struct.Memory* %loadMem_400b0d, %struct.Memory** %MEMORY
  %loadMem_400b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2787, i64 0, i64 1
  %XMM1.i418 = bitcast %union.VectorReg* %2788 to %union.vec128_t*
  %2789 = bitcast %union.vec128_t* %XMM1.i418 to i8*
  %2790 = load i64, i64* %PC.i417
  %2791 = add i64 %2790, 9
  store i64 %2791, i64* %PC.i417
  %2792 = bitcast i8* %2789 to double*
  %2793 = load double, double* %2792, align 1
  store double %2793, double* inttoptr (i64 6300560 to double*)
  store %struct.Memory* %loadMem_400b11, %struct.Memory** %MEMORY
  %loadMem_400b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2800, i64 0, i64 0
  %YMM0.i416 = bitcast %union.VectorReg* %2801 to %"class.std::bitset"*
  %2802 = bitcast %"class.std::bitset"* %YMM0.i416 to i8*
  %2803 = load i64, i64* %RBP.i415
  %2804 = sub i64 %2803, 88
  %2805 = load i64, i64* %PC.i414
  %2806 = add i64 %2805, 5
  store i64 %2806, i64* %PC.i414
  %2807 = inttoptr i64 %2804 to double*
  %2808 = load double, double* %2807
  %2809 = bitcast i8* %2802 to double*
  store double %2808, double* %2809, align 1
  %2810 = getelementptr inbounds i8, i8* %2802, i64 8
  %2811 = bitcast i8* %2810 to double*
  store double 0.000000e+00, double* %2811, align 1
  store %struct.Memory* %loadMem_400b1a, %struct.Memory** %MEMORY
  %loadMem_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2815, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2816 to %union.vec128_t*
  %2817 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2818 = load i64, i64* %PC.i413
  %2819 = add i64 %2818, 9
  store i64 %2819, i64* %PC.i413
  %2820 = bitcast i8* %2817 to double*
  %2821 = load double, double* %2820, align 1
  store double %2821, double* inttoptr (i64 6300568 to double*)
  store %struct.Memory* %loadMem_400b1f, %struct.Memory** %MEMORY
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2825, i64 0, i64 1
  %YMM1.i412 = bitcast %union.VectorReg* %2826 to %"class.std::bitset"*
  %2827 = bitcast %"class.std::bitset"* %YMM1.i412 to i8*
  %2828 = load i64, i64* %PC.i411
  %2829 = add i64 %2828, 9
  store i64 %2829, i64* %PC.i411
  %2830 = load double, double* inttoptr (i64 6300560 to double*)
  %2831 = bitcast i8* %2827 to double*
  store double %2830, double* %2831, align 1
  %2832 = getelementptr inbounds i8, i8* %2827, i64 8
  %2833 = bitcast i8* %2832 to double*
  store double 0.000000e+00, double* %2833, align 1
  store %struct.Memory* %loadMem_400b28, %struct.Memory** %MEMORY
  %loadMem_400b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2837, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2838 to %union.vec128_t*
  %2839 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2840 = load i64, i64* %PC.i410
  %2841 = add i64 %2840, 9
  store i64 %2841, i64* %PC.i410
  %2842 = bitcast i8* %2839 to double*
  %2843 = load double, double* %2842, align 1
  store double %2843, double* inttoptr (i64 6300576 to double*)
  store %struct.Memory* %loadMem_400b31, %struct.Memory** %MEMORY
  %loadMem_400b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 1
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %PC.i408
  %2851 = add i64 %2850, 7
  store i64 %2851, i64* %PC.i408
  %2852 = load i32, i32* inttoptr (i64 6301264 to i32*)
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_400b3a, %struct.Memory** %MEMORY
  %loadMem_400b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %RAX.i407
  %2861 = load i64, i64* %PC.i406
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC.i406
  %2863 = trunc i64 %2860 to i32
  %2864 = add i32 1, %2863
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RAX.i407, align 8
  %2866 = icmp ult i32 %2864, %2863
  %2867 = icmp ult i32 %2864, 1
  %2868 = or i1 %2866, %2867
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2869, i8* %2870, align 1
  %2871 = and i32 %2864, 255
  %2872 = call i32 @llvm.ctpop.i32(i32 %2871)
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2875, i8* %2876, align 1
  %2877 = xor i64 1, %2860
  %2878 = trunc i64 %2877 to i32
  %2879 = xor i32 %2878, %2864
  %2880 = lshr i32 %2879, 4
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2882, i8* %2883, align 1
  %2884 = icmp eq i32 %2864, 0
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2885, i8* %2886, align 1
  %2887 = lshr i32 %2864, 31
  %2888 = trunc i32 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2888, i8* %2889, align 1
  %2890 = lshr i32 %2863, 31
  %2891 = xor i32 %2887, %2890
  %2892 = add i32 %2891, %2887
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2894, i8* %2895, align 1
  store %struct.Memory* %loadMem_400b41, %struct.Memory** %MEMORY
  %loadMem_400b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 1
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %2901 to i32*
  %2902 = load i32, i32* %EAX.i405
  %2903 = zext i32 %2902 to i64
  %2904 = load i64, i64* %PC.i404
  %2905 = add i64 %2904, 7
  store i64 %2905, i64* %PC.i404
  store i32 %2902, i32* inttoptr (i64 6301264 to i32*)
  store %struct.Memory* %loadMem_400b44, %struct.Memory** %MEMORY
  %loadMem_400b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %PC.i403
  %2910 = add i64 %2909, -562
  %2911 = load i64, i64* %PC.i403
  %2912 = add i64 %2911, 5
  store i64 %2912, i64* %PC.i403
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2910, i64* %2913, align 8
  store %struct.Memory* %loadMem_400b4b, %struct.Memory** %MEMORY
  br label %block_.L_400919

block_.L_400b50:                                  ; preds = %block_.L_400919
  %loadMem_400b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 11
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RDI.i402 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %PC.i401
  %2921 = add i64 %2920, 10
  store i64 %2921, i64* %PC.i401
  store i64 6300592, i64* %RDI.i402, align 8
  store %struct.Memory* %loadMem_400b50, %struct.Memory** %MEMORY
  %loadMem_400b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 9
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RSI.i400 = bitcast %union.anon* %2927 to i64*
  %2928 = load i64, i64* %PC.i399
  %2929 = add i64 %2928, 10
  store i64 %2929, i64* %PC.i399
  store i64 4200319, i64* %RSI.i400, align 8
  store %struct.Memory* %loadMem_400b5a, %struct.Memory** %MEMORY
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 7
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %PC.i397
  %2937 = add i64 %2936, 10
  store i64 %2937, i64* %PC.i397
  store i64 4200343, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_400b64, %struct.Memory** %MEMORY
  %loadMem_400b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2942 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2941, i64 0, i64 0
  %YMM0.i396 = bitcast %union.VectorReg* %2942 to %"class.std::bitset"*
  %2943 = bitcast %"class.std::bitset"* %YMM0.i396 to i8*
  %2944 = load i64, i64* %PC.i395
  %2945 = add i64 %2944, 9
  store i64 %2945, i64* %PC.i395
  %2946 = load double, double* inttoptr (i64 6300496 to double*)
  %2947 = bitcast i8* %2943 to double*
  store double %2946, double* %2947, align 1
  %2948 = getelementptr inbounds i8, i8* %2943, i64 8
  %2949 = bitcast i8* %2948 to double*
  store double 0.000000e+00, double* %2949, align 1
  store %struct.Memory* %loadMem_400b6e, %struct.Memory** %MEMORY
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2953, i64 0, i64 1
  %YMM1.i394 = bitcast %union.VectorReg* %2954 to %"class.std::bitset"*
  %2955 = bitcast %"class.std::bitset"* %YMM1.i394 to i8*
  %2956 = load i64, i64* %PC.i393
  %2957 = add i64 %2956, 9
  store i64 %2957, i64* %PC.i393
  %2958 = load double, double* inttoptr (i64 6300504 to double*)
  %2959 = bitcast i8* %2955 to double*
  store double %2958, double* %2959, align 1
  %2960 = getelementptr inbounds i8, i8* %2955, i64 8
  %2961 = bitcast i8* %2960 to double*
  store double 0.000000e+00, double* %2961, align 1
  store %struct.Memory* %loadMem_400b77, %struct.Memory** %MEMORY
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 1
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %2968 = bitcast %union.anon* %2967 to %struct.anon.2*
  %AL.i392 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2968, i32 0, i32 0
  %2969 = load i64, i64* %PC.i391
  %2970 = add i64 %2969, 2
  store i64 %2970, i64* %PC.i391
  store i8 2, i8* %AL.i392, align 1
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  %loadMem1_400b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %PC.i390
  %2975 = add i64 %2974, -1362
  %2976 = load i64, i64* %PC.i390
  %2977 = add i64 %2976, 5
  %2978 = load i64, i64* %PC.i390
  %2979 = add i64 %2978, 5
  store i64 %2979, i64* %PC.i390
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2981 = load i64, i64* %2980, align 8
  %2982 = add i64 %2981, -8
  %2983 = inttoptr i64 %2982 to i64*
  store i64 %2977, i64* %2983
  store i64 %2982, i64* %2980, align 8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2975, i64* %2984, align 8
  store %struct.Memory* %loadMem1_400b82, %struct.Memory** %MEMORY
  %loadMem2_400b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b82 = load i64, i64* %3
  %call2_400b82 = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400b82, %struct.Memory* %loadMem2_400b82)
  store %struct.Memory* %call2_400b82, %struct.Memory** %MEMORY
  %loadMem_400b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 7
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %PC.i388
  %2992 = add i64 %2991, 10
  store i64 %2992, i64* %PC.i388
  store i64 6300592, i64* %RDX.i389, align 8
  store %struct.Memory* %loadMem_400b87, %struct.Memory** %MEMORY
  %loadMem_400b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 7
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RDX.i387 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %RDX.i387
  %3000 = load i64, i64* %PC.i386
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i386
  %3002 = add i64 80, %2999
  store i64 %3002, i64* %RDX.i387, align 8
  %3003 = icmp ult i64 %3002, %2999
  %3004 = icmp ult i64 %3002, 80
  %3005 = or i1 %3003, %3004
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3006, i8* %3007, align 1
  %3008 = trunc i64 %3002 to i32
  %3009 = and i32 %3008, 255
  %3010 = call i32 @llvm.ctpop.i32(i32 %3009)
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3013, i8* %3014, align 1
  %3015 = xor i64 80, %2999
  %3016 = xor i64 %3015, %3002
  %3017 = lshr i64 %3016, 4
  %3018 = trunc i64 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3019, i8* %3020, align 1
  %3021 = icmp eq i64 %3002, 0
  %3022 = zext i1 %3021 to i8
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3022, i8* %3023, align 1
  %3024 = lshr i64 %3002, 63
  %3025 = trunc i64 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3025, i8* %3026, align 1
  %3027 = lshr i64 %2999, 63
  %3028 = xor i64 %3024, %3027
  %3029 = add i64 %3028, %3024
  %3030 = icmp eq i64 %3029, 2
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3031, i8* %3032, align 1
  store %struct.Memory* %loadMem_400b91, %struct.Memory** %MEMORY
  %loadMem_400b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 9
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RSI.i385 = bitcast %union.anon* %3038 to i64*
  %3039 = load i64, i64* %PC.i384
  %3040 = add i64 %3039, 10
  store i64 %3040, i64* %PC.i384
  store i64 4200319, i64* %RSI.i385, align 8
  store %struct.Memory* %loadMem_400b95, %struct.Memory** %MEMORY
  %loadMem_400b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 11
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %3046 to i64*
  %3047 = load i64, i64* %PC.i382
  %3048 = add i64 %3047, 10
  store i64 %3048, i64* %PC.i382
  store i64 4200356, i64* %RDI.i383, align 8
  store %struct.Memory* %loadMem_400b9f, %struct.Memory** %MEMORY
  %loadMem_400ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3053 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3052, i64 0, i64 0
  %YMM0.i381 = bitcast %union.VectorReg* %3053 to %"class.std::bitset"*
  %3054 = bitcast %"class.std::bitset"* %YMM0.i381 to i8*
  %3055 = load i64, i64* %PC.i380
  %3056 = add i64 %3055, 9
  store i64 %3056, i64* %PC.i380
  %3057 = load double, double* inttoptr (i64 6300512 to double*)
  %3058 = bitcast i8* %3054 to double*
  store double %3057, double* %3058, align 1
  %3059 = getelementptr inbounds i8, i8* %3054, i64 8
  %3060 = bitcast i8* %3059 to double*
  store double 0.000000e+00, double* %3060, align 1
  store %struct.Memory* %loadMem_400ba9, %struct.Memory** %MEMORY
  %loadMem_400bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3064, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3065 to %"class.std::bitset"*
  %3066 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3067 = load i64, i64* %PC.i379
  %3068 = add i64 %3067, 9
  store i64 %3068, i64* %PC.i379
  %3069 = load double, double* inttoptr (i64 6300520 to double*)
  %3070 = bitcast i8* %3066 to double*
  store double %3069, double* %3070, align 1
  %3071 = getelementptr inbounds i8, i8* %3066, i64 8
  %3072 = bitcast i8* %3071 to double*
  store double 0.000000e+00, double* %3072, align 1
  store %struct.Memory* %loadMem_400bb2, %struct.Memory** %MEMORY
  %loadMem_400bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 11
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RDI.i377 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 15
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %3081 to i64*
  %3082 = load i64, i64* %RBP.i378
  %3083 = sub i64 %3082, 128
  %3084 = load i64, i64* %RDI.i377
  %3085 = load i64, i64* %PC.i376
  %3086 = add i64 %3085, 4
  store i64 %3086, i64* %PC.i376
  %3087 = inttoptr i64 %3083 to i64*
  store i64 %3084, i64* %3087
  store %struct.Memory* %loadMem_400bbb, %struct.Memory** %MEMORY
  %loadMem_400bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 7
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 11
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %RDX.i374
  %3098 = load i64, i64* %PC.i373
  %3099 = add i64 %3098, 3
  store i64 %3099, i64* %PC.i373
  store i64 %3097, i64* %RDI.i375, align 8
  store %struct.Memory* %loadMem_400bbf, %struct.Memory** %MEMORY
  %loadMem_400bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 7
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 15
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RBP.i372
  %3110 = sub i64 %3109, 128
  %3111 = load i64, i64* %PC.i370
  %3112 = add i64 %3111, 4
  store i64 %3112, i64* %PC.i370
  %3113 = inttoptr i64 %3110 to i64*
  %3114 = load i64, i64* %3113
  store i64 %3114, i64* %RDX.i371, align 8
  store %struct.Memory* %loadMem_400bc2, %struct.Memory** %MEMORY
  %loadMem_400bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 1
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %3120 to i32*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 15
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %3123 to i64*
  %3124 = load i64, i64* %RBP.i369
  %3125 = sub i64 %3124, 132
  %3126 = load i32, i32* %EAX.i368
  %3127 = zext i32 %3126 to i64
  %3128 = load i64, i64* %PC.i367
  %3129 = add i64 %3128, 6
  store i64 %3129, i64* %PC.i367
  %3130 = inttoptr i64 %3125 to i32*
  store i32 %3126, i32* %3130
  store %struct.Memory* %loadMem_400bc6, %struct.Memory** %MEMORY
  %loadMem_400bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 1
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %3137 = bitcast %union.anon* %3136 to %struct.anon.2*
  %AL.i366 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3137, i32 0, i32 0
  %3138 = load i64, i64* %PC.i365
  %3139 = add i64 %3138, 2
  store i64 %3139, i64* %PC.i365
  store i8 2, i8* %AL.i366, align 1
  store %struct.Memory* %loadMem_400bcc, %struct.Memory** %MEMORY
  %loadMem1_400bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %PC.i364
  %3144 = add i64 %3143, -1438
  %3145 = load i64, i64* %PC.i364
  %3146 = add i64 %3145, 5
  %3147 = load i64, i64* %PC.i364
  %3148 = add i64 %3147, 5
  store i64 %3148, i64* %PC.i364
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3150 = load i64, i64* %3149, align 8
  %3151 = add i64 %3150, -8
  %3152 = inttoptr i64 %3151 to i64*
  store i64 %3146, i64* %3152
  store i64 %3151, i64* %3149, align 8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3144, i64* %3153, align 8
  store %struct.Memory* %loadMem1_400bce, %struct.Memory** %MEMORY
  %loadMem2_400bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400bce = load i64, i64* %3
  %call2_400bce = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400bce, %struct.Memory* %loadMem2_400bce)
  store %struct.Memory* %call2_400bce, %struct.Memory** %MEMORY
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 7
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %PC.i362
  %3161 = add i64 %3160, 10
  store i64 %3161, i64* %PC.i362
  store i64 6300592, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_400bd3, %struct.Memory** %MEMORY
  %loadMem_400bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 7
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RDX.i361 = bitcast %union.anon* %3167 to i64*
  %3168 = load i64, i64* %RDX.i361
  %3169 = load i64, i64* %PC.i360
  %3170 = add i64 %3169, 7
  store i64 %3170, i64* %PC.i360
  %3171 = add i64 160, %3168
  store i64 %3171, i64* %RDX.i361, align 8
  %3172 = icmp ult i64 %3171, %3168
  %3173 = icmp ult i64 %3171, 160
  %3174 = or i1 %3172, %3173
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3175, i8* %3176, align 1
  %3177 = trunc i64 %3171 to i32
  %3178 = and i32 %3177, 255
  %3179 = call i32 @llvm.ctpop.i32(i32 %3178)
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = xor i8 %3181, 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3182, i8* %3183, align 1
  %3184 = xor i64 160, %3168
  %3185 = xor i64 %3184, %3171
  %3186 = lshr i64 %3185, 4
  %3187 = trunc i64 %3186 to i8
  %3188 = and i8 %3187, 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3188, i8* %3189, align 1
  %3190 = icmp eq i64 %3171, 0
  %3191 = zext i1 %3190 to i8
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3191, i8* %3192, align 1
  %3193 = lshr i64 %3171, 63
  %3194 = trunc i64 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3194, i8* %3195, align 1
  %3196 = lshr i64 %3168, 63
  %3197 = xor i64 %3193, %3196
  %3198 = add i64 %3197, %3193
  %3199 = icmp eq i64 %3198, 2
  %3200 = zext i1 %3199 to i8
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3200, i8* %3201, align 1
  store %struct.Memory* %loadMem_400bdd, %struct.Memory** %MEMORY
  %loadMem_400be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 9
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RSI.i359 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %PC.i358
  %3209 = add i64 %3208, 10
  store i64 %3209, i64* %PC.i358
  store i64 4200369, i64* %RSI.i359, align 8
  store %struct.Memory* %loadMem_400be4, %struct.Memory** %MEMORY
  %loadMem_400bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3213, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %3214 to %"class.std::bitset"*
  %3215 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %3216 = load i64, i64* %PC.i356
  %3217 = add i64 %3216, 9
  store i64 %3217, i64* %PC.i356
  %3218 = load double, double* inttoptr (i64 6300536 to double*)
  %3219 = bitcast i8* %3215 to double*
  store double %3218, double* %3219, align 1
  %3220 = getelementptr inbounds i8, i8* %3215, i64 8
  %3221 = bitcast i8* %3220 to double*
  store double 0.000000e+00, double* %3221, align 1
  store %struct.Memory* %loadMem_400bee, %struct.Memory** %MEMORY
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 33
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 7
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 11
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RDI.i355 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RDX.i354
  %3232 = load i64, i64* %PC.i353
  %3233 = add i64 %3232, 3
  store i64 %3233, i64* %PC.i353
  store i64 %3231, i64* %RDI.i355, align 8
  store %struct.Memory* %loadMem_400bf7, %struct.Memory** %MEMORY
  %loadMem_400bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 1
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %3239 to i32*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 15
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %RBP.i352
  %3244 = sub i64 %3243, 136
  %3245 = load i32, i32* %EAX.i351
  %3246 = zext i32 %3245 to i64
  %3247 = load i64, i64* %PC.i350
  %3248 = add i64 %3247, 6
  store i64 %3248, i64* %PC.i350
  %3249 = inttoptr i64 %3244 to i32*
  store i32 %3245, i32* %3249
  store %struct.Memory* %loadMem_400bfa, %struct.Memory** %MEMORY
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 1
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %3256 = bitcast %union.anon* %3255 to %struct.anon.2*
  %AL.i349 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3256, i32 0, i32 0
  %3257 = load i64, i64* %PC.i348
  %3258 = add i64 %3257, 2
  store i64 %3258, i64* %PC.i348
  store i8 1, i8* %AL.i349, align 1
  store %struct.Memory* %loadMem_400c00, %struct.Memory** %MEMORY
  %loadMem1_400c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 33
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3261 to i64*
  %3262 = load i64, i64* %PC.i347
  %3263 = add i64 %3262, -1490
  %3264 = load i64, i64* %PC.i347
  %3265 = add i64 %3264, 5
  %3266 = load i64, i64* %PC.i347
  %3267 = add i64 %3266, 5
  store i64 %3267, i64* %PC.i347
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3269 = load i64, i64* %3268, align 8
  %3270 = add i64 %3269, -8
  %3271 = inttoptr i64 %3270 to i64*
  store i64 %3265, i64* %3271
  store i64 %3270, i64* %3268, align 8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3263, i64* %3272, align 8
  store %struct.Memory* %loadMem1_400c02, %struct.Memory** %MEMORY
  %loadMem2_400c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c02 = load i64, i64* %3
  %call2_400c02 = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400c02, %struct.Memory* %loadMem2_400c02)
  store %struct.Memory* %call2_400c02, %struct.Memory** %MEMORY
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 7
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %RDX.i346 = bitcast %union.anon* %3278 to i64*
  %3279 = load i64, i64* %PC.i345
  %3280 = add i64 %3279, 10
  store i64 %3280, i64* %PC.i345
  store i64 6300592, i64* %RDX.i346, align 8
  store %struct.Memory* %loadMem_400c07, %struct.Memory** %MEMORY
  %loadMem_400c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 7
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %3286 to i64*
  %3287 = load i64, i64* %RDX.i344
  %3288 = load i64, i64* %PC.i343
  %3289 = add i64 %3288, 7
  store i64 %3289, i64* %PC.i343
  %3290 = add i64 240, %3287
  store i64 %3290, i64* %RDX.i344, align 8
  %3291 = icmp ult i64 %3290, %3287
  %3292 = icmp ult i64 %3290, 240
  %3293 = or i1 %3291, %3292
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3294, i8* %3295, align 1
  %3296 = trunc i64 %3290 to i32
  %3297 = and i32 %3296, 255
  %3298 = call i32 @llvm.ctpop.i32(i32 %3297)
  %3299 = trunc i32 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = xor i8 %3300, 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3301, i8* %3302, align 1
  %3303 = xor i64 240, %3287
  %3304 = xor i64 %3303, %3290
  %3305 = lshr i64 %3304, 4
  %3306 = trunc i64 %3305 to i8
  %3307 = and i8 %3306, 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3307, i8* %3308, align 1
  %3309 = icmp eq i64 %3290, 0
  %3310 = zext i1 %3309 to i8
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3310, i8* %3311, align 1
  %3312 = lshr i64 %3290, 63
  %3313 = trunc i64 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3313, i8* %3314, align 1
  %3315 = lshr i64 %3287, 63
  %3316 = xor i64 %3312, %3315
  %3317 = add i64 %3316, %3312
  %3318 = icmp eq i64 %3317, 2
  %3319 = zext i1 %3318 to i8
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3319, i8* %3320, align 1
  store %struct.Memory* %loadMem_400c11, %struct.Memory** %MEMORY
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 9
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RSI.i342 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %PC.i341
  %3328 = add i64 %3327, 10
  store i64 %3328, i64* %PC.i341
  store i64 4200417, i64* %RSI.i342, align 8
  store %struct.Memory* %loadMem_400c18, %struct.Memory** %MEMORY
  %loadMem_400c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3332, i64 0, i64 0
  %YMM0.i340 = bitcast %union.VectorReg* %3333 to %"class.std::bitset"*
  %3334 = bitcast %"class.std::bitset"* %YMM0.i340 to i8*
  %3335 = load i64, i64* %PC.i339
  %3336 = add i64 %3335, 9
  store i64 %3336, i64* %PC.i339
  %3337 = load double, double* inttoptr (i64 6300560 to double*)
  %3338 = bitcast i8* %3334 to double*
  store double %3337, double* %3338, align 1
  %3339 = getelementptr inbounds i8, i8* %3334, i64 8
  %3340 = bitcast i8* %3339 to double*
  store double 0.000000e+00, double* %3340, align 1
  store %struct.Memory* %loadMem_400c22, %struct.Memory** %MEMORY
  %loadMem_400c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 7
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RDX.i337 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 11
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RDX.i337
  %3351 = load i64, i64* %PC.i336
  %3352 = add i64 %3351, 3
  store i64 %3352, i64* %PC.i336
  store i64 %3350, i64* %RDI.i338, align 8
  store %struct.Memory* %loadMem_400c2b, %struct.Memory** %MEMORY
  %loadMem_400c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 1
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %3358 to i32*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 15
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RBP.i335
  %3363 = sub i64 %3362, 140
  %3364 = load i32, i32* %EAX.i334
  %3365 = zext i32 %3364 to i64
  %3366 = load i64, i64* %PC.i333
  %3367 = add i64 %3366, 6
  store i64 %3367, i64* %PC.i333
  %3368 = inttoptr i64 %3363 to i32*
  store i32 %3364, i32* %3368
  store %struct.Memory* %loadMem_400c2e, %struct.Memory** %MEMORY
  %loadMem_400c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %3375 = bitcast %union.anon* %3374 to %struct.anon.2*
  %AL.i332 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3375, i32 0, i32 0
  %3376 = load i64, i64* %PC.i331
  %3377 = add i64 %3376, 2
  store i64 %3377, i64* %PC.i331
  store i8 1, i8* %AL.i332, align 1
  store %struct.Memory* %loadMem_400c34, %struct.Memory** %MEMORY
  %loadMem1_400c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3380 to i64*
  %3381 = load i64, i64* %PC.i330
  %3382 = add i64 %3381, -1542
  %3383 = load i64, i64* %PC.i330
  %3384 = add i64 %3383, 5
  %3385 = load i64, i64* %PC.i330
  %3386 = add i64 %3385, 5
  store i64 %3386, i64* %PC.i330
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3388 = load i64, i64* %3387, align 8
  %3389 = add i64 %3388, -8
  %3390 = inttoptr i64 %3389 to i64*
  store i64 %3384, i64* %3390
  store i64 %3389, i64* %3387, align 8
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3382, i64* %3391, align 8
  store %struct.Memory* %loadMem1_400c36, %struct.Memory** %MEMORY
  %loadMem2_400c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c36 = load i64, i64* %3
  %call2_400c36 = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400c36, %struct.Memory* %loadMem2_400c36)
  store %struct.Memory* %call2_400c36, %struct.Memory** %MEMORY
  %loadMem_400c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 7
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %PC.i328
  %3399 = add i64 %3398, 10
  store i64 %3399, i64* %PC.i328
  store i64 6300592, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_400c3b, %struct.Memory** %MEMORY
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 7
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %RDX.i327
  %3407 = load i64, i64* %PC.i326
  %3408 = add i64 %3407, 7
  store i64 %3408, i64* %PC.i326
  %3409 = add i64 320, %3406
  store i64 %3409, i64* %RDX.i327, align 8
  %3410 = icmp ult i64 %3409, %3406
  %3411 = icmp ult i64 %3409, 320
  %3412 = or i1 %3410, %3411
  %3413 = zext i1 %3412 to i8
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3413, i8* %3414, align 1
  %3415 = trunc i64 %3409 to i32
  %3416 = and i32 %3415, 255
  %3417 = call i32 @llvm.ctpop.i32(i32 %3416)
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = xor i8 %3419, 1
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3420, i8* %3421, align 1
  %3422 = xor i64 320, %3406
  %3423 = xor i64 %3422, %3409
  %3424 = lshr i64 %3423, 4
  %3425 = trunc i64 %3424 to i8
  %3426 = and i8 %3425, 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3426, i8* %3427, align 1
  %3428 = icmp eq i64 %3409, 0
  %3429 = zext i1 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3429, i8* %3430, align 1
  %3431 = lshr i64 %3409, 63
  %3432 = trunc i64 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3432, i8* %3433, align 1
  %3434 = lshr i64 %3406, 63
  %3435 = xor i64 %3431, %3434
  %3436 = add i64 %3435, %3431
  %3437 = icmp eq i64 %3436, 2
  %3438 = zext i1 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3438, i8* %3439, align 1
  store %struct.Memory* %loadMem_400c45, %struct.Memory** %MEMORY
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 9
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RSI.i325 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %PC.i324
  %3447 = add i64 %3446, 10
  store i64 %3447, i64* %PC.i324
  store i64 4200465, i64* %RSI.i325, align 8
  store %struct.Memory* %loadMem_400c4c, %struct.Memory** %MEMORY
  %loadMem_400c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3451, i64 0, i64 0
  %YMM0.i323 = bitcast %union.VectorReg* %3452 to %"class.std::bitset"*
  %3453 = bitcast %"class.std::bitset"* %YMM0.i323 to i8*
  %3454 = load i64, i64* %PC.i322
  %3455 = add i64 %3454, 9
  store i64 %3455, i64* %PC.i322
  %3456 = load double, double* inttoptr (i64 6300544 to double*)
  %3457 = bitcast i8* %3453 to double*
  store double %3456, double* %3457, align 1
  %3458 = getelementptr inbounds i8, i8* %3453, i64 8
  %3459 = bitcast i8* %3458 to double*
  store double 0.000000e+00, double* %3459, align 1
  store %struct.Memory* %loadMem_400c56, %struct.Memory** %MEMORY
  %loadMem_400c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 7
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 11
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RDI.i321 = bitcast %union.anon* %3468 to i64*
  %3469 = load i64, i64* %RDX.i320
  %3470 = load i64, i64* %PC.i319
  %3471 = add i64 %3470, 3
  store i64 %3471, i64* %PC.i319
  store i64 %3469, i64* %RDI.i321, align 8
  store %struct.Memory* %loadMem_400c5f, %struct.Memory** %MEMORY
  %loadMem_400c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 1
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %3477 to i32*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 15
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %3480 to i64*
  %3481 = load i64, i64* %RBP.i318
  %3482 = sub i64 %3481, 144
  %3483 = load i32, i32* %EAX.i317
  %3484 = zext i32 %3483 to i64
  %3485 = load i64, i64* %PC.i316
  %3486 = add i64 %3485, 6
  store i64 %3486, i64* %PC.i316
  %3487 = inttoptr i64 %3482 to i32*
  store i32 %3483, i32* %3487
  store %struct.Memory* %loadMem_400c62, %struct.Memory** %MEMORY
  %loadMem_400c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 1
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %3494 = bitcast %union.anon* %3493 to %struct.anon.2*
  %AL.i315 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3494, i32 0, i32 0
  %3495 = load i64, i64* %PC.i314
  %3496 = add i64 %3495, 2
  store i64 %3496, i64* %PC.i314
  store i8 1, i8* %AL.i315, align 1
  store %struct.Memory* %loadMem_400c68, %struct.Memory** %MEMORY
  %loadMem1_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %PC.i313
  %3501 = add i64 %3500, -1594
  %3502 = load i64, i64* %PC.i313
  %3503 = add i64 %3502, 5
  %3504 = load i64, i64* %PC.i313
  %3505 = add i64 %3504, 5
  store i64 %3505, i64* %PC.i313
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3507 = load i64, i64* %3506, align 8
  %3508 = add i64 %3507, -8
  %3509 = inttoptr i64 %3508 to i64*
  store i64 %3503, i64* %3509
  store i64 %3508, i64* %3506, align 8
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3501, i64* %3510, align 8
  store %struct.Memory* %loadMem1_400c6a, %struct.Memory** %MEMORY
  %loadMem2_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c6a = load i64, i64* %3
  %call2_400c6a = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400c6a, %struct.Memory* %loadMem2_400c6a)
  store %struct.Memory* %call2_400c6a, %struct.Memory** %MEMORY
  %loadMem_400c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 7
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RDX.i312 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %PC.i311
  %3518 = add i64 %3517, 10
  store i64 %3518, i64* %PC.i311
  store i64 6300592, i64* %RDX.i312, align 8
  store %struct.Memory* %loadMem_400c6f, %struct.Memory** %MEMORY
  %loadMem_400c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 7
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RDX.i310
  %3526 = load i64, i64* %PC.i309
  %3527 = add i64 %3526, 7
  store i64 %3527, i64* %PC.i309
  %3528 = add i64 400, %3525
  store i64 %3528, i64* %RDX.i310, align 8
  %3529 = icmp ult i64 %3528, %3525
  %3530 = icmp ult i64 %3528, 400
  %3531 = or i1 %3529, %3530
  %3532 = zext i1 %3531 to i8
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3532, i8* %3533, align 1
  %3534 = trunc i64 %3528 to i32
  %3535 = and i32 %3534, 255
  %3536 = call i32 @llvm.ctpop.i32(i32 %3535)
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  %3539 = xor i8 %3538, 1
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3539, i8* %3540, align 1
  %3541 = xor i64 400, %3525
  %3542 = xor i64 %3541, %3528
  %3543 = lshr i64 %3542, 4
  %3544 = trunc i64 %3543 to i8
  %3545 = and i8 %3544, 1
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3545, i8* %3546, align 1
  %3547 = icmp eq i64 %3528, 0
  %3548 = zext i1 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3548, i8* %3549, align 1
  %3550 = lshr i64 %3528, 63
  %3551 = trunc i64 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3551, i8* %3552, align 1
  %3553 = lshr i64 %3525, 63
  %3554 = xor i64 %3550, %3553
  %3555 = add i64 %3554, %3550
  %3556 = icmp eq i64 %3555, 2
  %3557 = zext i1 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3557, i8* %3558, align 1
  store %struct.Memory* %loadMem_400c79, %struct.Memory** %MEMORY
  %loadMem_400c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 9
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %PC.i307
  %3566 = add i64 %3565, 10
  store i64 %3566, i64* %PC.i307
  store i64 4200417, i64* %RSI.i308, align 8
  store %struct.Memory* %loadMem_400c80, %struct.Memory** %MEMORY
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3570, i64 0, i64 0
  %YMM0.i306 = bitcast %union.VectorReg* %3571 to %"class.std::bitset"*
  %3572 = bitcast %"class.std::bitset"* %YMM0.i306 to i8*
  %3573 = load i64, i64* %PC.i305
  %3574 = add i64 %3573, 9
  store i64 %3574, i64* %PC.i305
  %3575 = load double, double* inttoptr (i64 6300568 to double*)
  %3576 = bitcast i8* %3572 to double*
  store double %3575, double* %3576, align 1
  %3577 = getelementptr inbounds i8, i8* %3572, i64 8
  %3578 = bitcast i8* %3577 to double*
  store double 0.000000e+00, double* %3578, align 1
  store %struct.Memory* %loadMem_400c8a, %struct.Memory** %MEMORY
  %loadMem_400c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 7
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %3584 to i64*
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 11
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %RDI.i304 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %RDX.i303
  %3589 = load i64, i64* %PC.i302
  %3590 = add i64 %3589, 3
  store i64 %3590, i64* %PC.i302
  store i64 %3588, i64* %RDI.i304, align 8
  store %struct.Memory* %loadMem_400c93, %struct.Memory** %MEMORY
  %loadMem_400c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %3596 to i32*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 15
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RBP.i301
  %3601 = sub i64 %3600, 148
  %3602 = load i32, i32* %EAX.i300
  %3603 = zext i32 %3602 to i64
  %3604 = load i64, i64* %PC.i299
  %3605 = add i64 %3604, 6
  store i64 %3605, i64* %PC.i299
  %3606 = inttoptr i64 %3601 to i32*
  store i32 %3602, i32* %3606
  store %struct.Memory* %loadMem_400c96, %struct.Memory** %MEMORY
  %loadMem_400c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 1
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %3613 = bitcast %union.anon* %3612 to %struct.anon.2*
  %AL.i298 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3613, i32 0, i32 0
  %3614 = load i64, i64* %PC.i297
  %3615 = add i64 %3614, 2
  store i64 %3615, i64* %PC.i297
  store i8 1, i8* %AL.i298, align 1
  store %struct.Memory* %loadMem_400c9c, %struct.Memory** %MEMORY
  %loadMem1_400c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 33
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3618 to i64*
  %3619 = load i64, i64* %PC.i296
  %3620 = add i64 %3619, -1646
  %3621 = load i64, i64* %PC.i296
  %3622 = add i64 %3621, 5
  %3623 = load i64, i64* %PC.i296
  %3624 = add i64 %3623, 5
  store i64 %3624, i64* %PC.i296
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3626 = load i64, i64* %3625, align 8
  %3627 = add i64 %3626, -8
  %3628 = inttoptr i64 %3627 to i64*
  store i64 %3622, i64* %3628
  store i64 %3627, i64* %3625, align 8
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3620, i64* %3629, align 8
  store %struct.Memory* %loadMem1_400c9e, %struct.Memory** %MEMORY
  %loadMem2_400c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c9e = load i64, i64* %3
  %call2_400c9e = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400c9e, %struct.Memory* %loadMem2_400c9e)
  store %struct.Memory* %call2_400c9e, %struct.Memory** %MEMORY
  %loadMem_400ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 7
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RDX.i295 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %PC.i294
  %3637 = add i64 %3636, 10
  store i64 %3637, i64* %PC.i294
  store i64 6300592, i64* %RDX.i295, align 8
  store %struct.Memory* %loadMem_400ca3, %struct.Memory** %MEMORY
  %loadMem_400cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 7
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RDX.i293
  %3645 = load i64, i64* %PC.i292
  %3646 = add i64 %3645, 7
  store i64 %3646, i64* %PC.i292
  %3647 = add i64 480, %3644
  store i64 %3647, i64* %RDX.i293, align 8
  %3648 = icmp ult i64 %3647, %3644
  %3649 = icmp ult i64 %3647, 480
  %3650 = or i1 %3648, %3649
  %3651 = zext i1 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3651, i8* %3652, align 1
  %3653 = trunc i64 %3647 to i32
  %3654 = and i32 %3653, 255
  %3655 = call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3658, i8* %3659, align 1
  %3660 = xor i64 480, %3644
  %3661 = xor i64 %3660, %3647
  %3662 = lshr i64 %3661, 4
  %3663 = trunc i64 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3664, i8* %3665, align 1
  %3666 = icmp eq i64 %3647, 0
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3667, i8* %3668, align 1
  %3669 = lshr i64 %3647, 63
  %3670 = trunc i64 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3670, i8* %3671, align 1
  %3672 = lshr i64 %3644, 63
  %3673 = xor i64 %3669, %3672
  %3674 = add i64 %3673, %3669
  %3675 = icmp eq i64 %3674, 2
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3676, i8* %3677, align 1
  store %struct.Memory* %loadMem_400cad, %struct.Memory** %MEMORY
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 9
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RSI.i291 = bitcast %union.anon* %3683 to i64*
  %3684 = load i64, i64* %PC.i290
  %3685 = add i64 %3684, 10
  store i64 %3685, i64* %PC.i290
  store i64 4200513, i64* %RSI.i291, align 8
  store %struct.Memory* %loadMem_400cb4, %struct.Memory** %MEMORY
  %loadMem_400cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3689, i64 0, i64 0
  %YMM0.i289 = bitcast %union.VectorReg* %3690 to %"class.std::bitset"*
  %3691 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %3692 = load i64, i64* %PC.i288
  %3693 = add i64 %3692, 9
  store i64 %3693, i64* %PC.i288
  %3694 = load double, double* inttoptr (i64 6300552 to double*)
  %3695 = bitcast i8* %3691 to double*
  store double %3694, double* %3695, align 1
  %3696 = getelementptr inbounds i8, i8* %3691, i64 8
  %3697 = bitcast i8* %3696 to double*
  store double 0.000000e+00, double* %3697, align 1
  store %struct.Memory* %loadMem_400cbe, %struct.Memory** %MEMORY
  %loadMem_400cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 7
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 11
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RDI.i287 = bitcast %union.anon* %3706 to i64*
  %3707 = load i64, i64* %RDX.i286
  %3708 = load i64, i64* %PC.i285
  %3709 = add i64 %3708, 3
  store i64 %3709, i64* %PC.i285
  store i64 %3707, i64* %RDI.i287, align 8
  store %struct.Memory* %loadMem_400cc7, %struct.Memory** %MEMORY
  %loadMem_400cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 33
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 1
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %3715 to i32*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 15
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %3718 to i64*
  %3719 = load i64, i64* %RBP.i284
  %3720 = sub i64 %3719, 152
  %3721 = load i32, i32* %EAX.i283
  %3722 = zext i32 %3721 to i64
  %3723 = load i64, i64* %PC.i282
  %3724 = add i64 %3723, 6
  store i64 %3724, i64* %PC.i282
  %3725 = inttoptr i64 %3720 to i32*
  store i32 %3721, i32* %3725
  store %struct.Memory* %loadMem_400cca, %struct.Memory** %MEMORY
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 1
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %3732 = bitcast %union.anon* %3731 to %struct.anon.2*
  %AL.i281 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3732, i32 0, i32 0
  %3733 = load i64, i64* %PC.i280
  %3734 = add i64 %3733, 2
  store i64 %3734, i64* %PC.i280
  store i8 1, i8* %AL.i281, align 1
  store %struct.Memory* %loadMem_400cd0, %struct.Memory** %MEMORY
  %loadMem1_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %PC.i279
  %3739 = add i64 %3738, -1698
  %3740 = load i64, i64* %PC.i279
  %3741 = add i64 %3740, 5
  %3742 = load i64, i64* %PC.i279
  %3743 = add i64 %3742, 5
  store i64 %3743, i64* %PC.i279
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3745 = load i64, i64* %3744, align 8
  %3746 = add i64 %3745, -8
  %3747 = inttoptr i64 %3746 to i64*
  store i64 %3741, i64* %3747
  store i64 %3746, i64* %3744, align 8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3739, i64* %3748, align 8
  store %struct.Memory* %loadMem1_400cd2, %struct.Memory** %MEMORY
  %loadMem2_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400cd2 = load i64, i64* %3
  %call2_400cd2 = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400cd2, %struct.Memory* %loadMem2_400cd2)
  store %struct.Memory* %call2_400cd2, %struct.Memory** %MEMORY
  %loadMem_400cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 7
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %PC.i277
  %3756 = add i64 %3755, 10
  store i64 %3756, i64* %PC.i277
  store i64 6300592, i64* %RDX.i278, align 8
  store %struct.Memory* %loadMem_400cd7, %struct.Memory** %MEMORY
  %loadMem_400ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 7
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RDX.i276
  %3764 = load i64, i64* %PC.i275
  %3765 = add i64 %3764, 7
  store i64 %3765, i64* %PC.i275
  %3766 = add i64 560, %3763
  store i64 %3766, i64* %RDX.i276, align 8
  %3767 = icmp ult i64 %3766, %3763
  %3768 = icmp ult i64 %3766, 560
  %3769 = or i1 %3767, %3768
  %3770 = zext i1 %3769 to i8
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3770, i8* %3771, align 1
  %3772 = trunc i64 %3766 to i32
  %3773 = and i32 %3772, 255
  %3774 = call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3777, i8* %3778, align 1
  %3779 = xor i64 560, %3763
  %3780 = xor i64 %3779, %3766
  %3781 = lshr i64 %3780, 4
  %3782 = trunc i64 %3781 to i8
  %3783 = and i8 %3782, 1
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3783, i8* %3784, align 1
  %3785 = icmp eq i64 %3766, 0
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3786, i8* %3787, align 1
  %3788 = lshr i64 %3766, 63
  %3789 = trunc i64 %3788 to i8
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3789, i8* %3790, align 1
  %3791 = lshr i64 %3763, 63
  %3792 = xor i64 %3788, %3791
  %3793 = add i64 %3792, %3788
  %3794 = icmp eq i64 %3793, 2
  %3795 = zext i1 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3795, i8* %3796, align 1
  store %struct.Memory* %loadMem_400ce1, %struct.Memory** %MEMORY
  %loadMem_400ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 9
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %PC.i273
  %3804 = add i64 %3803, 10
  store i64 %3804, i64* %PC.i273
  store i64 4200417, i64* %RSI.i274, align 8
  store %struct.Memory* %loadMem_400ce8, %struct.Memory** %MEMORY
  %loadMem_400cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3808, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3809 to %"class.std::bitset"*
  %3810 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3811 = load i64, i64* %PC.i272
  %3812 = add i64 %3811, 9
  store i64 %3812, i64* %PC.i272
  %3813 = load double, double* inttoptr (i64 6300576 to double*)
  %3814 = bitcast i8* %3810 to double*
  store double %3813, double* %3814, align 1
  %3815 = getelementptr inbounds i8, i8* %3810, i64 8
  %3816 = bitcast i8* %3815 to double*
  store double 0.000000e+00, double* %3816, align 1
  store %struct.Memory* %loadMem_400cf2, %struct.Memory** %MEMORY
  %loadMem_400cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 7
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RDX.i270 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 11
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RDI.i271 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RDX.i270
  %3827 = load i64, i64* %PC.i269
  %3828 = add i64 %3827, 3
  store i64 %3828, i64* %PC.i269
  store i64 %3826, i64* %RDI.i271, align 8
  store %struct.Memory* %loadMem_400cfb, %struct.Memory** %MEMORY
  %loadMem_400cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 1
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %3834 to i32*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 15
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RBP.i268
  %3839 = sub i64 %3838, 156
  %3840 = load i32, i32* %EAX.i267
  %3841 = zext i32 %3840 to i64
  %3842 = load i64, i64* %PC.i266
  %3843 = add i64 %3842, 6
  store i64 %3843, i64* %PC.i266
  %3844 = inttoptr i64 %3839 to i32*
  store i32 %3840, i32* %3844
  store %struct.Memory* %loadMem_400cfe, %struct.Memory** %MEMORY
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 1
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %3851 = bitcast %union.anon* %3850 to %struct.anon.2*
  %AL.i265 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3851, i32 0, i32 0
  %3852 = load i64, i64* %PC.i264
  %3853 = add i64 %3852, 2
  store i64 %3853, i64* %PC.i264
  store i8 1, i8* %AL.i265, align 1
  store %struct.Memory* %loadMem_400d04, %struct.Memory** %MEMORY
  %loadMem1_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %PC.i263
  %3858 = add i64 %3857, -1750
  %3859 = load i64, i64* %PC.i263
  %3860 = add i64 %3859, 5
  %3861 = load i64, i64* %PC.i263
  %3862 = add i64 %3861, 5
  store i64 %3862, i64* %PC.i263
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3864 = load i64, i64* %3863, align 8
  %3865 = add i64 %3864, -8
  %3866 = inttoptr i64 %3865 to i64*
  store i64 %3860, i64* %3866
  store i64 %3865, i64* %3863, align 8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3858, i64* %3867, align 8
  store %struct.Memory* %loadMem1_400d06, %struct.Memory** %MEMORY
  %loadMem2_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d06 = load i64, i64* %3
  %call2_400d06 = call %struct.Memory* @sub_400630.sprintf_plt(%struct.State* %0, i64 %loadPC_400d06, %struct.Memory* %loadMem2_400d06)
  store %struct.Memory* %call2_400d06, %struct.Memory** %MEMORY
  %loadMem_400d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 15
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %RBP.i262
  %3875 = sub i64 %3874, 32
  %3876 = load i64, i64* %PC.i261
  %3877 = add i64 %3876, 7
  store i64 %3877, i64* %PC.i261
  %3878 = inttoptr i64 %3875 to i32*
  store i32 0, i32* %3878
  store %struct.Memory* %loadMem_400d0b, %struct.Memory** %MEMORY
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 15
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %RBP.i260
  %3886 = sub i64 %3885, 20
  %3887 = load i64, i64* %PC.i259
  %3888 = add i64 %3887, 7
  store i64 %3888, i64* %PC.i259
  %3889 = inttoptr i64 %3886 to i32*
  store i32 0, i32* %3889
  store %struct.Memory* %loadMem_400d12, %struct.Memory** %MEMORY
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 1
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %EAX.i257 = bitcast %union.anon* %3895 to i32*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RBP.i258
  %3900 = sub i64 %3899, 160
  %3901 = load i32, i32* %EAX.i257
  %3902 = zext i32 %3901 to i64
  %3903 = load i64, i64* %PC.i256
  %3904 = add i64 %3903, 6
  store i64 %3904, i64* %PC.i256
  %3905 = inttoptr i64 %3900 to i32*
  store i32 %3901, i32* %3905
  store %struct.Memory* %loadMem_400d19, %struct.Memory** %MEMORY
  br label %block_.L_400d1f

block_.L_400d1f:                                  ; preds = %block_.L_400eda, %block_.L_400b50
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 15
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %3911 to i64*
  %3912 = load i64, i64* %RBP.i255
  %3913 = sub i64 %3912, 20
  %3914 = load i64, i64* %PC.i254
  %3915 = add i64 %3914, 4
  store i64 %3915, i64* %PC.i254
  %3916 = inttoptr i64 %3913 to i32*
  %3917 = load i32, i32* %3916
  %3918 = sub i32 %3917, 8
  %3919 = icmp ult i32 %3917, 8
  %3920 = zext i1 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3920, i8* %3921, align 1
  %3922 = and i32 %3918, 255
  %3923 = call i32 @llvm.ctpop.i32(i32 %3922)
  %3924 = trunc i32 %3923 to i8
  %3925 = and i8 %3924, 1
  %3926 = xor i8 %3925, 1
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3926, i8* %3927, align 1
  %3928 = xor i32 %3917, 8
  %3929 = xor i32 %3928, %3918
  %3930 = lshr i32 %3929, 4
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3932, i8* %3933, align 1
  %3934 = icmp eq i32 %3918, 0
  %3935 = zext i1 %3934 to i8
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3935, i8* %3936, align 1
  %3937 = lshr i32 %3918, 31
  %3938 = trunc i32 %3937 to i8
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3938, i8* %3939, align 1
  %3940 = lshr i32 %3917, 31
  %3941 = xor i32 %3937, %3940
  %3942 = add i32 %3941, %3940
  %3943 = icmp eq i32 %3942, 2
  %3944 = zext i1 %3943 to i8
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3944, i8* %3945, align 1
  store %struct.Memory* %loadMem_400d1f, %struct.Memory** %MEMORY
  %loadMem_400d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %PC.i253
  %3950 = add i64 %3949, 453
  %3951 = load i64, i64* %PC.i253
  %3952 = add i64 %3951, 6
  %3953 = load i64, i64* %PC.i253
  %3954 = add i64 %3953, 6
  store i64 %3954, i64* %PC.i253
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3956 = load i8, i8* %3955, align 1
  %3957 = icmp ne i8 %3956, 0
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3959 = load i8, i8* %3958, align 1
  %3960 = icmp ne i8 %3959, 0
  %3961 = xor i1 %3957, %3960
  %3962 = xor i1 %3961, true
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %BRANCH_TAKEN, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3965 = select i1 %3961, i64 %3952, i64 %3950
  store i64 %3965, i64* %3964, align 8
  store %struct.Memory* %loadMem_400d23, %struct.Memory** %MEMORY
  %loadBr_400d23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d23 = icmp eq i8 %loadBr_400d23, 1
  br i1 %cmpBr_400d23, label %block_.L_400ee8, label %block_400d29

block_400d29:                                     ; preds = %block_.L_400d1f
  %loadMem_400d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 1
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %3971 to i64*
  %3972 = load i64, i64* %PC.i251
  %3973 = add i64 %3972, 10
  store i64 %3973, i64* %PC.i251
  store i64 6300592, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_400d29, %struct.Memory** %MEMORY
  %loadMem_400d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 5
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 15
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RBP.i250
  %3984 = sub i64 %3983, 20
  %3985 = load i64, i64* %PC.i248
  %3986 = add i64 %3985, 4
  store i64 %3986, i64* %PC.i248
  %3987 = inttoptr i64 %3984 to i32*
  %3988 = load i32, i32* %3987
  %3989 = sext i32 %3988 to i64
  store i64 %3989, i64* %RCX.i249, align 8
  store %struct.Memory* %loadMem_400d33, %struct.Memory** %MEMORY
  %loadMem_400d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 5
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %3995 to i64*
  %3996 = load i64, i64* %RCX.i247
  %3997 = load i64, i64* %PC.i246
  %3998 = add i64 %3997, 4
  store i64 %3998, i64* %PC.i246
  %3999 = sext i64 %3996 to i128
  %4000 = and i128 %3999, -18446744073709551616
  %4001 = zext i64 %3996 to i128
  %4002 = or i128 %4000, %4001
  %4003 = mul i128 80, %4002
  %4004 = trunc i128 %4003 to i64
  store i64 %4004, i64* %RCX.i247, align 8
  %4005 = sext i64 %4004 to i128
  %4006 = icmp ne i128 %4005, %4003
  %4007 = zext i1 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4007, i8* %4008, align 1
  %4009 = trunc i128 %4003 to i32
  %4010 = and i32 %4009, 255
  %4011 = call i32 @llvm.ctpop.i32(i32 %4010)
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  %4014 = xor i8 %4013, 1
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4014, i8* %4015, align 1
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4016, align 1
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4017, align 1
  %4018 = lshr i64 %4004, 63
  %4019 = trunc i64 %4018 to i8
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4019, i8* %4020, align 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4007, i8* %4021, align 1
  store %struct.Memory* %loadMem_400d37, %struct.Memory** %MEMORY
  %loadMem_400d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 1
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 5
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %RAX.i244
  %4032 = load i64, i64* %RCX.i245
  %4033 = load i64, i64* %PC.i243
  %4034 = add i64 %4033, 3
  store i64 %4034, i64* %PC.i243
  %4035 = add i64 %4032, %4031
  store i64 %4035, i64* %RAX.i244, align 8
  %4036 = icmp ult i64 %4035, %4031
  %4037 = icmp ult i64 %4035, %4032
  %4038 = or i1 %4036, %4037
  %4039 = zext i1 %4038 to i8
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4039, i8* %4040, align 1
  %4041 = trunc i64 %4035 to i32
  %4042 = and i32 %4041, 255
  %4043 = call i32 @llvm.ctpop.i32(i32 %4042)
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = xor i8 %4045, 1
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4046, i8* %4047, align 1
  %4048 = xor i64 %4032, %4031
  %4049 = xor i64 %4048, %4035
  %4050 = lshr i64 %4049, 4
  %4051 = trunc i64 %4050 to i8
  %4052 = and i8 %4051, 1
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4052, i8* %4053, align 1
  %4054 = icmp eq i64 %4035, 0
  %4055 = zext i1 %4054 to i8
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4055, i8* %4056, align 1
  %4057 = lshr i64 %4035, 63
  %4058 = trunc i64 %4057 to i8
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4058, i8* %4059, align 1
  %4060 = lshr i64 %4031, 63
  %4061 = lshr i64 %4032, 63
  %4062 = xor i64 %4057, %4060
  %4063 = xor i64 %4057, %4061
  %4064 = add i64 %4062, %4063
  %4065 = icmp eq i64 %4064, 2
  %4066 = zext i1 %4065 to i8
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4066, i8* %4067, align 1
  store %struct.Memory* %loadMem_400d3b, %struct.Memory** %MEMORY
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 33
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 5
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 15
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %4076 to i64*
  %4077 = load i64, i64* %RBP.i242
  %4078 = sub i64 %4077, 20
  %4079 = load i64, i64* %PC.i240
  %4080 = add i64 %4079, 4
  store i64 %4080, i64* %PC.i240
  %4081 = inttoptr i64 %4078 to i32*
  %4082 = load i32, i32* %4081
  %4083 = sext i32 %4082 to i64
  store i64 %4083, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_400d3e, %struct.Memory** %MEMORY
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 5
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 9
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RSI.i239 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RCX.i238
  %4094 = mul i64 %4093, 8
  %4095 = add i64 %4094, 6299904
  %4096 = load i64, i64* %PC.i237
  %4097 = add i64 %4096, 8
  store i64 %4097, i64* %PC.i237
  %4098 = inttoptr i64 %4095 to i64*
  %4099 = load i64, i64* %4098
  store i64 %4099, i64* %RSI.i239, align 8
  store %struct.Memory* %loadMem_400d42, %struct.Memory** %MEMORY
  %loadMem_400d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 33
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 1
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 11
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RDI.i236 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %RAX.i235
  %4110 = load i64, i64* %PC.i234
  %4111 = add i64 %4110, 3
  store i64 %4111, i64* %PC.i234
  store i64 %4109, i64* %RDI.i236, align 8
  store %struct.Memory* %loadMem_400d4a, %struct.Memory** %MEMORY
  %loadMem1_400d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %4114 to i64*
  %4115 = load i64, i64* %PC.i233
  %4116 = add i64 %4115, -1885
  %4117 = load i64, i64* %PC.i233
  %4118 = add i64 %4117, 5
  %4119 = load i64, i64* %PC.i233
  %4120 = add i64 %4119, 5
  store i64 %4120, i64* %PC.i233
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4122 = load i64, i64* %4121, align 8
  %4123 = add i64 %4122, -8
  %4124 = inttoptr i64 %4123 to i64*
  store i64 %4118, i64* %4124
  store i64 %4123, i64* %4121, align 8
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4116, i64* %4125, align 8
  store %struct.Memory* %loadMem1_400d4d, %struct.Memory** %MEMORY
  %loadMem2_400d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d4d = load i64, i64* %3
  %call2_400d4d = call %struct.Memory* @sub_4005f0.strcmp_plt(%struct.State* %0, i64 %loadPC_400d4d, %struct.Memory* %loadMem2_400d4d)
  store %struct.Memory* %call2_400d4d, %struct.Memory** %MEMORY
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4128 to i64*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 1
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %4131 to i32*
  %4132 = load i32, i32* %EAX.i232
  %4133 = zext i32 %4132 to i64
  %4134 = load i64, i64* %PC.i231
  %4135 = add i64 %4134, 3
  store i64 %4135, i64* %PC.i231
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4136, align 1
  %4137 = and i32 %4132, 255
  %4138 = call i32 @llvm.ctpop.i32(i32 %4137)
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = xor i8 %4140, 1
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4141, i8* %4142, align 1
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4143, align 1
  %4144 = icmp eq i32 %4132, 0
  %4145 = zext i1 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4145, i8* %4146, align 1
  %4147 = lshr i32 %4132, 31
  %4148 = trunc i32 %4147 to i8
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4148, i8* %4149, align 1
  %4150 = lshr i32 %4132, 31
  %4151 = xor i32 %4147, %4150
  %4152 = add i32 %4151, %4150
  %4153 = icmp eq i32 %4152, 2
  %4154 = zext i1 %4153 to i8
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4154, i8* %4155, align 1
  store %struct.Memory* %loadMem_400d52, %struct.Memory** %MEMORY
  %loadMem_400d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4158 to i64*
  %4159 = load i64, i64* %PC.i230
  %4160 = add i64 %4159, 384
  %4161 = load i64, i64* %PC.i230
  %4162 = add i64 %4161, 6
  %4163 = load i64, i64* %PC.i230
  %4164 = add i64 %4163, 6
  store i64 %4164, i64* %PC.i230
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4166 = load i8, i8* %4165, align 1
  store i8 %4166, i8* %BRANCH_TAKEN, align 1
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4168 = icmp ne i8 %4166, 0
  %4169 = select i1 %4168, i64 %4160, i64 %4162
  store i64 %4169, i64* %4167, align 8
  store %struct.Memory* %loadMem_400d55, %struct.Memory** %MEMORY
  %loadBr_400d55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d55 = icmp eq i8 %loadBr_400d55, 1
  br i1 %cmpBr_400d55, label %block_.L_400ed5, label %block_400d5b

block_400d5b:                                     ; preds = %block_400d29
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 11
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RDI.i229 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %PC.i228
  %4177 = add i64 %4176, 10
  store i64 %4177, i64* %PC.i228
  store i64 4200561, i64* %RDI.i229, align 8
  store %struct.Memory* %loadMem_400d5b, %struct.Memory** %MEMORY
  %loadMem_400d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 1
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 15
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %RBP.i227
  %4188 = sub i64 %4187, 20
  %4189 = load i64, i64* %PC.i225
  %4190 = add i64 %4189, 3
  store i64 %4190, i64* %PC.i225
  %4191 = inttoptr i64 %4188 to i32*
  %4192 = load i32, i32* %4191
  %4193 = zext i32 %4192 to i64
  store i64 %4193, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_400d65, %struct.Memory** %MEMORY
  %loadMem_400d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 1
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RAX.i224
  %4201 = load i64, i64* %PC.i223
  %4202 = add i64 %4201, 3
  store i64 %4202, i64* %PC.i223
  %4203 = trunc i64 %4200 to i32
  %4204 = add i32 1, %4203
  %4205 = zext i32 %4204 to i64
  store i64 %4205, i64* %RAX.i224, align 8
  %4206 = icmp ult i32 %4204, %4203
  %4207 = icmp ult i32 %4204, 1
  %4208 = or i1 %4206, %4207
  %4209 = zext i1 %4208 to i8
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4209, i8* %4210, align 1
  %4211 = and i32 %4204, 255
  %4212 = call i32 @llvm.ctpop.i32(i32 %4211)
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = xor i8 %4214, 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4215, i8* %4216, align 1
  %4217 = xor i64 1, %4200
  %4218 = trunc i64 %4217 to i32
  %4219 = xor i32 %4218, %4204
  %4220 = lshr i32 %4219, 4
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4222, i8* %4223, align 1
  %4224 = icmp eq i32 %4204, 0
  %4225 = zext i1 %4224 to i8
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4225, i8* %4226, align 1
  %4227 = lshr i32 %4204, 31
  %4228 = trunc i32 %4227 to i8
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4228, i8* %4229, align 1
  %4230 = lshr i32 %4203, 31
  %4231 = xor i32 %4227, %4230
  %4232 = add i32 %4231, %4227
  %4233 = icmp eq i32 %4232, 2
  %4234 = zext i1 %4233 to i8
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4234, i8* %4235, align 1
  store %struct.Memory* %loadMem_400d68, %struct.Memory** %MEMORY
  %loadMem_400d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 1
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %4241 to i32*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 9
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RSI.i222 = bitcast %union.anon* %4244 to i64*
  %4245 = load i32, i32* %EAX.i221
  %4246 = zext i32 %4245 to i64
  %4247 = load i64, i64* %PC.i220
  %4248 = add i64 %4247, 2
  store i64 %4248, i64* %PC.i220
  %4249 = and i64 %4246, 4294967295
  store i64 %4249, i64* %RSI.i222, align 8
  store %struct.Memory* %loadMem_400d6b, %struct.Memory** %MEMORY
  %loadMem_400d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %4256 = bitcast %union.anon* %4255 to %struct.anon.2*
  %AL.i219 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4256, i32 0, i32 0
  %4257 = load i64, i64* %PC.i218
  %4258 = add i64 %4257, 2
  store i64 %4258, i64* %PC.i218
  store i8 0, i8* %AL.i219, align 1
  store %struct.Memory* %loadMem_400d6d, %struct.Memory** %MEMORY
  %loadMem1_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4261 to i64*
  %4262 = load i64, i64* %PC.i217
  %4263 = add i64 %4262, -1951
  %4264 = load i64, i64* %PC.i217
  %4265 = add i64 %4264, 5
  %4266 = load i64, i64* %PC.i217
  %4267 = add i64 %4266, 5
  store i64 %4267, i64* %PC.i217
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4269 = load i64, i64* %4268, align 8
  %4270 = add i64 %4269, -8
  %4271 = inttoptr i64 %4270 to i64*
  store i64 %4265, i64* %4271
  store i64 %4270, i64* %4268, align 8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4263, i64* %4272, align 8
  store %struct.Memory* %loadMem1_400d6f, %struct.Memory** %MEMORY
  %loadMem2_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d6f = load i64, i64* %3
  %call2_400d6f = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400d6f, %struct.Memory* %loadMem2_400d6f)
  store %struct.Memory* %call2_400d6f, %struct.Memory** %MEMORY
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 33
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 11
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %4278 to i64*
  %4279 = load i64, i64* %PC.i215
  %4280 = add i64 %4279, 10
  store i64 %4280, i64* %PC.i215
  store i64 4200594, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_400d74, %struct.Memory** %MEMORY
  %loadMem_400d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 5
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 15
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RBP.i214
  %4291 = sub i64 %4290, 20
  %4292 = load i64, i64* %PC.i212
  %4293 = add i64 %4292, 4
  store i64 %4293, i64* %PC.i212
  %4294 = inttoptr i64 %4291 to i32*
  %4295 = load i32, i32* %4294
  %4296 = sext i32 %4295 to i64
  store i64 %4296, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_400d7e, %struct.Memory** %MEMORY
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 5
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 9
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RSI.i211 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RCX.i210
  %4307 = mul i64 %4306, 8
  %4308 = add i64 %4307, 6299904
  %4309 = load i64, i64* %PC.i209
  %4310 = add i64 %4309, 8
  store i64 %4310, i64* %PC.i209
  %4311 = inttoptr i64 %4308 to i64*
  %4312 = load i64, i64* %4311
  store i64 %4312, i64* %RSI.i211, align 8
  store %struct.Memory* %loadMem_400d82, %struct.Memory** %MEMORY
  %loadMem_400d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 33
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4315 to i64*
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 1
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %4318 to i32*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 15
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %RBP.i208
  %4323 = sub i64 %4322, 164
  %4324 = load i32, i32* %EAX.i207
  %4325 = zext i32 %4324 to i64
  %4326 = load i64, i64* %PC.i206
  %4327 = add i64 %4326, 6
  store i64 %4327, i64* %PC.i206
  %4328 = inttoptr i64 %4323 to i32*
  store i32 %4324, i32* %4328
  store %struct.Memory* %loadMem_400d8a, %struct.Memory** %MEMORY
  %loadMem_400d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 33
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4331 to i64*
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 1
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %4335 = bitcast %union.anon* %4334 to %struct.anon.2*
  %AL.i205 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4335, i32 0, i32 0
  %4336 = load i64, i64* %PC.i204
  %4337 = add i64 %4336, 2
  store i64 %4337, i64* %PC.i204
  store i8 0, i8* %AL.i205, align 1
  store %struct.Memory* %loadMem_400d90, %struct.Memory** %MEMORY
  %loadMem1_400d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %PC.i203
  %4342 = add i64 %4341, -1986
  %4343 = load i64, i64* %PC.i203
  %4344 = add i64 %4343, 5
  %4345 = load i64, i64* %PC.i203
  %4346 = add i64 %4345, 5
  store i64 %4346, i64* %PC.i203
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4348 = load i64, i64* %4347, align 8
  %4349 = add i64 %4348, -8
  %4350 = inttoptr i64 %4349 to i64*
  store i64 %4344, i64* %4350
  store i64 %4349, i64* %4347, align 8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4342, i64* %4351, align 8
  store %struct.Memory* %loadMem1_400d92, %struct.Memory** %MEMORY
  %loadMem2_400d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d92 = load i64, i64* %3
  %call2_400d92 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400d92, %struct.Memory* %loadMem2_400d92)
  store %struct.Memory* %call2_400d92, %struct.Memory** %MEMORY
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 11
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RDI.i202 = bitcast %union.anon* %4357 to i64*
  %4358 = load i64, i64* %PC.i201
  %4359 = add i64 %4358, 10
  store i64 %4359, i64* %PC.i201
  store i64 4200611, i64* %RDI.i202, align 8
  store %struct.Memory* %loadMem_400d97, %struct.Memory** %MEMORY
  %loadMem_400da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 33
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 5
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %4365 to i64*
  %4366 = load i64, i64* %PC.i199
  %4367 = add i64 %4366, 10
  store i64 %4367, i64* %PC.i199
  store i64 6300592, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_400da1, %struct.Memory** %MEMORY
  %loadMem_400dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 9
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RSI.i197 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 15
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %4376 to i64*
  %4377 = load i64, i64* %RBP.i198
  %4378 = sub i64 %4377, 20
  %4379 = load i64, i64* %PC.i196
  %4380 = add i64 %4379, 4
  store i64 %4380, i64* %PC.i196
  %4381 = inttoptr i64 %4378 to i32*
  %4382 = load i32, i32* %4381
  %4383 = sext i32 %4382 to i64
  store i64 %4383, i64* %RSI.i197, align 8
  store %struct.Memory* %loadMem_400dab, %struct.Memory** %MEMORY
  %loadMem_400daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 9
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RSI.i195 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %RSI.i195
  %4391 = load i64, i64* %PC.i194
  %4392 = add i64 %4391, 4
  store i64 %4392, i64* %PC.i194
  %4393 = sext i64 %4390 to i128
  %4394 = and i128 %4393, -18446744073709551616
  %4395 = zext i64 %4390 to i128
  %4396 = or i128 %4394, %4395
  %4397 = mul i128 80, %4396
  %4398 = trunc i128 %4397 to i64
  store i64 %4398, i64* %RSI.i195, align 8
  %4399 = sext i64 %4398 to i128
  %4400 = icmp ne i128 %4399, %4397
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4401, i8* %4402, align 1
  %4403 = trunc i128 %4397 to i32
  %4404 = and i32 %4403, 255
  %4405 = call i32 @llvm.ctpop.i32(i32 %4404)
  %4406 = trunc i32 %4405 to i8
  %4407 = and i8 %4406, 1
  %4408 = xor i8 %4407, 1
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4408, i8* %4409, align 1
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4410, align 1
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4411, align 1
  %4412 = lshr i64 %4398, 63
  %4413 = trunc i64 %4412 to i8
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4413, i8* %4414, align 1
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4401, i8* %4415, align 1
  store %struct.Memory* %loadMem_400daf, %struct.Memory** %MEMORY
  %loadMem_400db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 33
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4418 to i64*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 5
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %4421 to i64*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 9
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %4424 to i64*
  %4425 = load i64, i64* %RCX.i192
  %4426 = load i64, i64* %RSI.i193
  %4427 = load i64, i64* %PC.i191
  %4428 = add i64 %4427, 3
  store i64 %4428, i64* %PC.i191
  %4429 = add i64 %4426, %4425
  store i64 %4429, i64* %RCX.i192, align 8
  %4430 = icmp ult i64 %4429, %4425
  %4431 = icmp ult i64 %4429, %4426
  %4432 = or i1 %4430, %4431
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4433, i8* %4434, align 1
  %4435 = trunc i64 %4429 to i32
  %4436 = and i32 %4435, 255
  %4437 = call i32 @llvm.ctpop.i32(i32 %4436)
  %4438 = trunc i32 %4437 to i8
  %4439 = and i8 %4438, 1
  %4440 = xor i8 %4439, 1
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4440, i8* %4441, align 1
  %4442 = xor i64 %4426, %4425
  %4443 = xor i64 %4442, %4429
  %4444 = lshr i64 %4443, 4
  %4445 = trunc i64 %4444 to i8
  %4446 = and i8 %4445, 1
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4446, i8* %4447, align 1
  %4448 = icmp eq i64 %4429, 0
  %4449 = zext i1 %4448 to i8
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4449, i8* %4450, align 1
  %4451 = lshr i64 %4429, 63
  %4452 = trunc i64 %4451 to i8
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4452, i8* %4453, align 1
  %4454 = lshr i64 %4425, 63
  %4455 = lshr i64 %4426, 63
  %4456 = xor i64 %4451, %4454
  %4457 = xor i64 %4451, %4455
  %4458 = add i64 %4456, %4457
  %4459 = icmp eq i64 %4458, 2
  %4460 = zext i1 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4460, i8* %4461, align 1
  store %struct.Memory* %loadMem_400db3, %struct.Memory** %MEMORY
  %loadMem_400db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 5
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 9
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RSI.i190 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %RCX.i189
  %4472 = load i64, i64* %PC.i188
  %4473 = add i64 %4472, 3
  store i64 %4473, i64* %PC.i188
  store i64 %4471, i64* %RSI.i190, align 8
  store %struct.Memory* %loadMem_400db6, %struct.Memory** %MEMORY
  %loadMem_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %EAX.i186 = bitcast %union.anon* %4479 to i32*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 15
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %RBP.i187
  %4484 = sub i64 %4483, 168
  %4485 = load i32, i32* %EAX.i186
  %4486 = zext i32 %4485 to i64
  %4487 = load i64, i64* %PC.i185
  %4488 = add i64 %4487, 6
  store i64 %4488, i64* %PC.i185
  %4489 = inttoptr i64 %4484 to i32*
  store i32 %4485, i32* %4489
  store %struct.Memory* %loadMem_400db9, %struct.Memory** %MEMORY
  %loadMem_400dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %4496 = bitcast %union.anon* %4495 to %struct.anon.2*
  %AL.i184 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4496, i32 0, i32 0
  %4497 = load i64, i64* %PC.i183
  %4498 = add i64 %4497, 2
  store i64 %4498, i64* %PC.i183
  store i8 0, i8* %AL.i184, align 1
  store %struct.Memory* %loadMem_400dbf, %struct.Memory** %MEMORY
  %loadMem1_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 33
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4501 to i64*
  %4502 = load i64, i64* %PC.i182
  %4503 = add i64 %4502, -2033
  %4504 = load i64, i64* %PC.i182
  %4505 = add i64 %4504, 5
  %4506 = load i64, i64* %PC.i182
  %4507 = add i64 %4506, 5
  store i64 %4507, i64* %PC.i182
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4509 = load i64, i64* %4508, align 8
  %4510 = add i64 %4509, -8
  %4511 = inttoptr i64 %4510 to i64*
  store i64 %4505, i64* %4511
  store i64 %4510, i64* %4508, align 8
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4503, i64* %4512, align 8
  store %struct.Memory* %loadMem1_400dc1, %struct.Memory** %MEMORY
  %loadMem2_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dc1 = load i64, i64* %3
  %call2_400dc1 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400dc1, %struct.Memory* %loadMem2_400dc1)
  store %struct.Memory* %call2_400dc1, %struct.Memory** %MEMORY
  %loadMem_400dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 11
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RDI.i181 = bitcast %union.anon* %4518 to i64*
  %4519 = load i64, i64* %PC.i180
  %4520 = add i64 %4519, 10
  store i64 %4520, i64* %PC.i180
  store i64 4200628, i64* %RDI.i181, align 8
  store %struct.Memory* %loadMem_400dc6, %struct.Memory** %MEMORY
  %loadMem_400dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 1
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %EAX.i178 = bitcast %union.anon* %4526 to i32*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 15
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RBP.i179
  %4531 = sub i64 %4530, 172
  %4532 = load i32, i32* %EAX.i178
  %4533 = zext i32 %4532 to i64
  %4534 = load i64, i64* %PC.i177
  %4535 = add i64 %4534, 6
  store i64 %4535, i64* %PC.i177
  %4536 = inttoptr i64 %4531 to i32*
  store i32 %4532, i32* %4536
  store %struct.Memory* %loadMem_400dd0, %struct.Memory** %MEMORY
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 1
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %4543 = bitcast %union.anon* %4542 to %struct.anon.2*
  %AL.i176 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4543, i32 0, i32 0
  %4544 = load i64, i64* %PC.i175
  %4545 = add i64 %4544, 2
  store i64 %4545, i64* %PC.i175
  store i8 0, i8* %AL.i176, align 1
  store %struct.Memory* %loadMem_400dd6, %struct.Memory** %MEMORY
  %loadMem1_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %PC.i174
  %4550 = add i64 %4549, -2056
  %4551 = load i64, i64* %PC.i174
  %4552 = add i64 %4551, 5
  %4553 = load i64, i64* %PC.i174
  %4554 = add i64 %4553, 5
  store i64 %4554, i64* %PC.i174
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4556 = load i64, i64* %4555, align 8
  %4557 = add i64 %4556, -8
  %4558 = inttoptr i64 %4557 to i64*
  store i64 %4552, i64* %4558
  store i64 %4557, i64* %4555, align 8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4550, i64* %4559, align 8
  store %struct.Memory* %loadMem1_400dd8, %struct.Memory** %MEMORY
  %loadMem2_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dd8 = load i64, i64* %3
  %call2_400dd8 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400dd8, %struct.Memory* %loadMem2_400dd8)
  store %struct.Memory* %call2_400dd8, %struct.Memory** %MEMORY
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 5
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 15
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4568 to i64*
  %4569 = load i64, i64* %RBP.i173
  %4570 = sub i64 %4569, 20
  %4571 = load i64, i64* %PC.i171
  %4572 = add i64 %4571, 4
  store i64 %4572, i64* %PC.i171
  %4573 = inttoptr i64 %4570 to i32*
  %4574 = load i32, i32* %4573
  %4575 = sext i32 %4574 to i64
  store i64 %4575, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_400ddd, %struct.Memory** %MEMORY
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 33
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4578 to i64*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 5
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %4581 to i64*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 11
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %RDI.i170 = bitcast %union.anon* %4584 to i64*
  %4585 = load i64, i64* %RCX.i169
  %4586 = mul i64 %4585, 8
  %4587 = add i64 %4586, 6299904
  %4588 = load i64, i64* %PC.i168
  %4589 = add i64 %4588, 8
  store i64 %4589, i64* %PC.i168
  %4590 = inttoptr i64 %4587 to i64*
  %4591 = load i64, i64* %4590
  store i64 %4591, i64* %RDI.i170, align 8
  store %struct.Memory* %loadMem_400de1, %struct.Memory** %MEMORY
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 1
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %4597 to i32*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 15
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RBP.i167
  %4602 = sub i64 %4601, 176
  %4603 = load i32, i32* %EAX.i166
  %4604 = zext i32 %4603 to i64
  %4605 = load i64, i64* %PC.i165
  %4606 = add i64 %4605, 6
  store i64 %4606, i64* %PC.i165
  %4607 = inttoptr i64 %4602 to i32*
  store i32 %4603, i32* %4607
  store %struct.Memory* %loadMem_400de9, %struct.Memory** %MEMORY
  %loadMem1_400def = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4610 to i64*
  %4611 = load i64, i64* %PC.i164
  %4612 = add i64 %4611, -2095
  %4613 = load i64, i64* %PC.i164
  %4614 = add i64 %4613, 5
  %4615 = load i64, i64* %PC.i164
  %4616 = add i64 %4615, 5
  store i64 %4616, i64* %PC.i164
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4618 = load i64, i64* %4617, align 8
  %4619 = add i64 %4618, -8
  %4620 = inttoptr i64 %4619 to i64*
  store i64 %4614, i64* %4620
  store i64 %4619, i64* %4617, align 8
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4612, i64* %4621, align 8
  store %struct.Memory* %loadMem1_400def, %struct.Memory** %MEMORY
  %loadMem2_400def = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400def = load i64, i64* %3
  %call2_400def = call %struct.Memory* @sub_4005c0.strlen_plt(%struct.State* %0, i64 %loadPC_400def, %struct.Memory* %loadMem2_400def)
  store %struct.Memory* %call2_400def, %struct.Memory** %MEMORY
  %loadMem_400df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 1
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %4627 to i32*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 7
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %4630 to i64*
  %4631 = load i32, i32* %EAX.i162
  %4632 = zext i32 %4631 to i64
  %4633 = load i64, i64* %PC.i161
  %4634 = add i64 %4633, 2
  store i64 %4634, i64* %PC.i161
  %4635 = and i64 %4632, 4294967295
  store i64 %4635, i64* %RDX.i163, align 8
  store %struct.Memory* %loadMem_400df4, %struct.Memory** %MEMORY
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 33
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 7
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4641 to i32*
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 15
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %4644 to i64*
  %4645 = load i64, i64* %RBP.i160
  %4646 = sub i64 %4645, 28
  %4647 = load i32, i32* %EDX.i
  %4648 = zext i32 %4647 to i64
  %4649 = load i64, i64* %PC.i159
  %4650 = add i64 %4649, 3
  store i64 %4650, i64* %PC.i159
  %4651 = inttoptr i64 %4646 to i32*
  store i32 %4647, i32* %4651
  store %struct.Memory* %loadMem_400df6, %struct.Memory** %MEMORY
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 15
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4657 to i64*
  %4658 = load i64, i64* %RBP.i158
  %4659 = sub i64 %4658, 24
  %4660 = load i64, i64* %PC.i157
  %4661 = add i64 %4660, 7
  store i64 %4661, i64* %PC.i157
  %4662 = inttoptr i64 %4659 to i32*
  store i32 0, i32* %4662
  store %struct.Memory* %loadMem_400df9, %struct.Memory** %MEMORY
  br label %block_.L_400e00

block_.L_400e00:                                  ; preds = %block_.L_400eb0, %block_400d5b
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 33
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 1
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 15
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RBP.i156
  %4673 = sub i64 %4672, 24
  %4674 = load i64, i64* %PC.i154
  %4675 = add i64 %4674, 3
  store i64 %4675, i64* %PC.i154
  %4676 = inttoptr i64 %4673 to i32*
  %4677 = load i32, i32* %4676
  %4678 = zext i32 %4677 to i64
  store i64 %4678, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_400e00, %struct.Memory** %MEMORY
  %loadMem_400e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 33
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4681 to i64*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 1
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %4684 to i32*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 15
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %4687 to i64*
  %4688 = load i32, i32* %EAX.i152
  %4689 = zext i32 %4688 to i64
  %4690 = load i64, i64* %RBP.i153
  %4691 = sub i64 %4690, 28
  %4692 = load i64, i64* %PC.i151
  %4693 = add i64 %4692, 3
  store i64 %4693, i64* %PC.i151
  %4694 = inttoptr i64 %4691 to i32*
  %4695 = load i32, i32* %4694
  %4696 = sub i32 %4688, %4695
  %4697 = icmp ult i32 %4688, %4695
  %4698 = zext i1 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4698, i8* %4699, align 1
  %4700 = and i32 %4696, 255
  %4701 = call i32 @llvm.ctpop.i32(i32 %4700)
  %4702 = trunc i32 %4701 to i8
  %4703 = and i8 %4702, 1
  %4704 = xor i8 %4703, 1
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4704, i8* %4705, align 1
  %4706 = xor i32 %4695, %4688
  %4707 = xor i32 %4706, %4696
  %4708 = lshr i32 %4707, 4
  %4709 = trunc i32 %4708 to i8
  %4710 = and i8 %4709, 1
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4710, i8* %4711, align 1
  %4712 = icmp eq i32 %4696, 0
  %4713 = zext i1 %4712 to i8
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4713, i8* %4714, align 1
  %4715 = lshr i32 %4696, 31
  %4716 = trunc i32 %4715 to i8
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4716, i8* %4717, align 1
  %4718 = lshr i32 %4688, 31
  %4719 = lshr i32 %4695, 31
  %4720 = xor i32 %4719, %4718
  %4721 = xor i32 %4715, %4718
  %4722 = add i32 %4721, %4720
  %4723 = icmp eq i32 %4722, 2
  %4724 = zext i1 %4723 to i8
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4724, i8* %4725, align 1
  store %struct.Memory* %loadMem_400e03, %struct.Memory** %MEMORY
  %loadMem_400e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4728 to i64*
  %4729 = load i64, i64* %PC.i150
  %4730 = add i64 %4729, 184
  %4731 = load i64, i64* %PC.i150
  %4732 = add i64 %4731, 6
  %4733 = load i64, i64* %PC.i150
  %4734 = add i64 %4733, 6
  store i64 %4734, i64* %PC.i150
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4736 = load i8, i8* %4735, align 1
  %4737 = icmp ne i8 %4736, 0
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4739 = load i8, i8* %4738, align 1
  %4740 = icmp ne i8 %4739, 0
  %4741 = xor i1 %4737, %4740
  %4742 = xor i1 %4741, true
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %BRANCH_TAKEN, align 1
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4745 = select i1 %4741, i64 %4732, i64 %4730
  store i64 %4745, i64* %4744, align 8
  store %struct.Memory* %loadMem_400e06, %struct.Memory** %MEMORY
  %loadBr_400e06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e06 = icmp eq i8 %loadBr_400e06, 1
  br i1 %cmpBr_400e06, label %block_.L_400ebe, label %block_400e0c

block_400e0c:                                     ; preds = %block_.L_400e00
  %loadMem_400e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 33
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %4748 to i64*
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 11
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %RDI.i149 = bitcast %union.anon* %4751 to i64*
  %4752 = load i64, i64* %PC.i148
  %4753 = add i64 %4752, 10
  store i64 %4753, i64* %PC.i148
  store i64 4200641, i64* %RDI.i149, align 8
  store %struct.Memory* %loadMem_400e0c, %struct.Memory** %MEMORY
  %loadMem_400e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 1
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %PC.i146
  %4761 = add i64 %4760, 5
  store i64 %4761, i64* %PC.i146
  store i64 94, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_400e16, %struct.Memory** %MEMORY
  %loadMem_400e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4764 to i64*
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 5
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %4767 to i64*
  %4768 = load i64, i64* %PC.i144
  %4769 = add i64 %4768, 5
  store i64 %4769, i64* %PC.i144
  store i64 32, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_400e1b, %struct.Memory** %MEMORY
  %loadMem_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 7
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %PC.i142
  %4777 = add i64 %4776, 10
  store i64 %4777, i64* %PC.i142
  store i64 6300592, i64* %RDX.i143, align 8
  store %struct.Memory* %loadMem_400e20, %struct.Memory** %MEMORY
  %loadMem_400e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 33
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4780 to i64*
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 9
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %RSI.i140 = bitcast %union.anon* %4783 to i64*
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4785 = getelementptr inbounds %struct.GPR, %struct.GPR* %4784, i32 0, i32 15
  %4786 = getelementptr inbounds %struct.Reg, %struct.Reg* %4785, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %4786 to i64*
  %4787 = load i64, i64* %RBP.i141
  %4788 = sub i64 %4787, 20
  %4789 = load i64, i64* %PC.i139
  %4790 = add i64 %4789, 4
  store i64 %4790, i64* %PC.i139
  %4791 = inttoptr i64 %4788 to i32*
  %4792 = load i32, i32* %4791
  %4793 = sext i32 %4792 to i64
  store i64 %4793, i64* %RSI.i140, align 8
  store %struct.Memory* %loadMem_400e2a, %struct.Memory** %MEMORY
  %loadMem_400e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 9
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %RSI.i138 = bitcast %union.anon* %4799 to i64*
  %4800 = load i64, i64* %RSI.i138
  %4801 = mul i64 %4800, 8
  %4802 = add i64 %4801, 6299904
  %4803 = load i64, i64* %PC.i137
  %4804 = add i64 %4803, 8
  store i64 %4804, i64* %PC.i137
  %4805 = inttoptr i64 %4802 to i64*
  %4806 = load i64, i64* %4805
  store i64 %4806, i64* %RSI.i138, align 8
  store %struct.Memory* %loadMem_400e2e, %struct.Memory** %MEMORY
  %loadMem_400e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 15
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 17
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %R8.i136 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RBP.i135
  %4817 = sub i64 %4816, 24
  %4818 = load i64, i64* %PC.i134
  %4819 = add i64 %4818, 4
  store i64 %4819, i64* %PC.i134
  %4820 = inttoptr i64 %4817 to i32*
  %4821 = load i32, i32* %4820
  %4822 = sext i32 %4821 to i64
  store i64 %4822, i64* %R8.i136, align 8
  store %struct.Memory* %loadMem_400e36, %struct.Memory** %MEMORY
  %loadMem_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 19
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %R9D.i131 = bitcast %union.anon* %4828 to i32*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 9
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RSI.i132 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 17
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %R8.i133 = bitcast %union.anon* %4834 to i64*
  %4835 = bitcast i32* %R9D.i131 to i64*
  %4836 = load i64, i64* %RSI.i132
  %4837 = load i64, i64* %R8.i133
  %4838 = add i64 %4837, %4836
  %4839 = load i64, i64* %PC.i130
  %4840 = add i64 %4839, 5
  store i64 %4840, i64* %PC.i130
  %4841 = inttoptr i64 %4838 to i8*
  %4842 = load i8, i8* %4841
  %4843 = sext i8 %4842 to i64
  %4844 = and i64 %4843, 4294967295
  store i64 %4844, i64* %4835, align 8
  store %struct.Memory* %loadMem_400e3a, %struct.Memory** %MEMORY
  %loadMem_400e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 9
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RSI.i128 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 15
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4853 to i64*
  %4854 = load i64, i64* %RBP.i129
  %4855 = sub i64 %4854, 20
  %4856 = load i64, i64* %PC.i127
  %4857 = add i64 %4856, 4
  store i64 %4857, i64* %PC.i127
  %4858 = inttoptr i64 %4855 to i32*
  %4859 = load i32, i32* %4858
  %4860 = sext i32 %4859 to i64
  store i64 %4860, i64* %RSI.i128, align 8
  store %struct.Memory* %loadMem_400e3f, %struct.Memory** %MEMORY
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 9
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RSI.i126 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RSI.i126
  %4868 = load i64, i64* %PC.i125
  %4869 = add i64 %4868, 4
  store i64 %4869, i64* %PC.i125
  %4870 = sext i64 %4867 to i128
  %4871 = and i128 %4870, -18446744073709551616
  %4872 = zext i64 %4867 to i128
  %4873 = or i128 %4871, %4872
  %4874 = mul i128 80, %4873
  %4875 = trunc i128 %4874 to i64
  store i64 %4875, i64* %RSI.i126, align 8
  %4876 = sext i64 %4875 to i128
  %4877 = icmp ne i128 %4876, %4874
  %4878 = zext i1 %4877 to i8
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4878, i8* %4879, align 1
  %4880 = trunc i128 %4874 to i32
  %4881 = and i32 %4880, 255
  %4882 = call i32 @llvm.ctpop.i32(i32 %4881)
  %4883 = trunc i32 %4882 to i8
  %4884 = and i8 %4883, 1
  %4885 = xor i8 %4884, 1
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4885, i8* %4886, align 1
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4887, align 1
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4888, align 1
  %4889 = lshr i64 %4875, 63
  %4890 = trunc i64 %4889 to i8
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4890, i8* %4891, align 1
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4878, i8* %4892, align 1
  store %struct.Memory* %loadMem_400e43, %struct.Memory** %MEMORY
  %loadMem_400e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 7
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RDX.i123 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 9
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %RSI.i124 = bitcast %union.anon* %4901 to i64*
  %4902 = load i64, i64* %RDX.i123
  %4903 = load i64, i64* %RSI.i124
  %4904 = load i64, i64* %PC.i122
  %4905 = add i64 %4904, 3
  store i64 %4905, i64* %PC.i122
  %4906 = add i64 %4903, %4902
  store i64 %4906, i64* %RDX.i123, align 8
  %4907 = icmp ult i64 %4906, %4902
  %4908 = icmp ult i64 %4906, %4903
  %4909 = or i1 %4907, %4908
  %4910 = zext i1 %4909 to i8
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4910, i8* %4911, align 1
  %4912 = trunc i64 %4906 to i32
  %4913 = and i32 %4912, 255
  %4914 = call i32 @llvm.ctpop.i32(i32 %4913)
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = xor i8 %4916, 1
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4917, i8* %4918, align 1
  %4919 = xor i64 %4903, %4902
  %4920 = xor i64 %4919, %4906
  %4921 = lshr i64 %4920, 4
  %4922 = trunc i64 %4921 to i8
  %4923 = and i8 %4922, 1
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4923, i8* %4924, align 1
  %4925 = icmp eq i64 %4906, 0
  %4926 = zext i1 %4925 to i8
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4926, i8* %4927, align 1
  %4928 = lshr i64 %4906, 63
  %4929 = trunc i64 %4928 to i8
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4929, i8* %4930, align 1
  %4931 = lshr i64 %4902, 63
  %4932 = lshr i64 %4903, 63
  %4933 = xor i64 %4928, %4931
  %4934 = xor i64 %4928, %4932
  %4935 = add i64 %4933, %4934
  %4936 = icmp eq i64 %4935, 2
  %4937 = zext i1 %4936 to i8
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4937, i8* %4938, align 1
  store %struct.Memory* %loadMem_400e47, %struct.Memory** %MEMORY
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 9
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RSI.i120 = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 15
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %RBP.i121
  %4949 = sub i64 %4948, 24
  %4950 = load i64, i64* %PC.i119
  %4951 = add i64 %4950, 4
  store i64 %4951, i64* %PC.i119
  %4952 = inttoptr i64 %4949 to i32*
  %4953 = load i32, i32* %4952
  %4954 = sext i32 %4953 to i64
  store i64 %4954, i64* %RSI.i120, align 8
  store %struct.Memory* %loadMem_400e4a, %struct.Memory** %MEMORY
  %loadMem_400e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 21
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %R10D.i116 = bitcast %union.anon* %4960 to i32*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 7
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %4963 to i64*
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 9
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %RSI.i118 = bitcast %union.anon* %4966 to i64*
  %4967 = bitcast i32* %R10D.i116 to i64*
  %4968 = load i64, i64* %RDX.i117
  %4969 = load i64, i64* %RSI.i118
  %4970 = add i64 %4969, %4968
  %4971 = load i64, i64* %PC.i115
  %4972 = add i64 %4971, 5
  store i64 %4972, i64* %PC.i115
  %4973 = inttoptr i64 %4970 to i8*
  %4974 = load i8, i8* %4973
  %4975 = sext i8 %4974 to i64
  %4976 = and i64 %4975, 4294967295
  store i64 %4976, i64* %4967, align 8
  store %struct.Memory* %loadMem_400e4e, %struct.Memory** %MEMORY
  %loadMem_400e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 19
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %4982 to i32*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 21
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %4985 to i32*
  %4986 = load i32, i32* %R9D.i
  %4987 = zext i32 %4986 to i64
  %4988 = load i32, i32* %R10D.i
  %4989 = zext i32 %4988 to i64
  %4990 = load i64, i64* %PC.i114
  %4991 = add i64 %4990, 3
  store i64 %4991, i64* %PC.i114
  %4992 = sub i32 %4986, %4988
  %4993 = icmp ult i32 %4986, %4988
  %4994 = zext i1 %4993 to i8
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4994, i8* %4995, align 1
  %4996 = and i32 %4992, 255
  %4997 = call i32 @llvm.ctpop.i32(i32 %4996)
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = xor i8 %4999, 1
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5000, i8* %5001, align 1
  %5002 = xor i64 %4989, %4987
  %5003 = trunc i64 %5002 to i32
  %5004 = xor i32 %5003, %4992
  %5005 = lshr i32 %5004, 4
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5007, i8* %5008, align 1
  %5009 = icmp eq i32 %4992, 0
  %5010 = zext i1 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5010, i8* %5011, align 1
  %5012 = lshr i32 %4992, 31
  %5013 = trunc i32 %5012 to i8
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5013, i8* %5014, align 1
  %5015 = lshr i32 %4986, 31
  %5016 = lshr i32 %4988, 31
  %5017 = xor i32 %5016, %5015
  %5018 = xor i32 %5012, %5015
  %5019 = add i32 %5018, %5017
  %5020 = icmp eq i32 %5019, 2
  %5021 = zext i1 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5021, i8* %5022, align 1
  store %struct.Memory* %loadMem_400e53, %struct.Memory** %MEMORY
  %loadMem_400e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 5
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %ECX.i112 = bitcast %union.anon* %5028 to i32*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 1
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %5031 to i64*
  %5032 = load i32, i32* %ECX.i112
  %5033 = zext i32 %5032 to i64
  %5034 = load i64, i64* %PC.i111
  %5035 = add i64 %5034, 3
  store i64 %5035, i64* %PC.i111
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5037 = load i8, i8* %5036, align 1
  %5038 = icmp ne i8 %5037, 0
  %5039 = load i64, i64* %RAX.i113, align 8
  %5040 = select i1 %5038, i64 %5033, i64 %5039
  %5041 = and i64 %5040, 4294967295
  store i64 %5041, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_400e56, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 33
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5044 to i64*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 1
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %5047 to i32*
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 9
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %RSI.i110 = bitcast %union.anon* %5050 to i64*
  %5051 = load i32, i32* %EAX.i109
  %5052 = zext i32 %5051 to i64
  %5053 = load i64, i64* %PC.i108
  %5054 = add i64 %5053, 2
  store i64 %5054, i64* %PC.i108
  %5055 = and i64 %5052, 4294967295
  store i64 %5055, i64* %RSI.i110, align 8
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadMem_400e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 1
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %5062 = bitcast %union.anon* %5061 to %struct.anon.2*
  %AL.i107 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5062, i32 0, i32 0
  %5063 = load i64, i64* %PC.i106
  %5064 = add i64 %5063, 2
  store i64 %5064, i64* %PC.i106
  store i8 0, i8* %AL.i107, align 1
  store %struct.Memory* %loadMem_400e5b, %struct.Memory** %MEMORY
  %loadMem1_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 33
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %PC.i105
  %5069 = add i64 %5068, -2189
  %5070 = load i64, i64* %PC.i105
  %5071 = add i64 %5070, 5
  %5072 = load i64, i64* %PC.i105
  %5073 = add i64 %5072, 5
  store i64 %5073, i64* %PC.i105
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5075 = load i64, i64* %5074, align 8
  %5076 = add i64 %5075, -8
  %5077 = inttoptr i64 %5076 to i64*
  store i64 %5071, i64* %5077
  store i64 %5076, i64* %5074, align 8
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5069, i64* %5078, align 8
  store %struct.Memory* %loadMem1_400e5d, %struct.Memory** %MEMORY
  %loadMem2_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e5d = load i64, i64* %3
  %call2_400e5d = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400e5d, %struct.Memory* %loadMem2_400e5d)
  store %struct.Memory* %call2_400e5d, %struct.Memory** %MEMORY
  %loadMem_400e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 33
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5081 to i64*
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 7
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %5084 to i64*
  %5085 = load i64, i64* %PC.i103
  %5086 = add i64 %5085, 10
  store i64 %5086, i64* %PC.i103
  store i64 6300592, i64* %RDX.i104, align 8
  store %struct.Memory* %loadMem_400e62, %struct.Memory** %MEMORY
  %loadMem_400e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 11
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 15
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RBP.i102
  %5097 = sub i64 %5096, 20
  %5098 = load i64, i64* %PC.i100
  %5099 = add i64 %5098, 4
  store i64 %5099, i64* %PC.i100
  %5100 = inttoptr i64 %5097 to i32*
  %5101 = load i32, i32* %5100
  %5102 = sext i32 %5101 to i64
  store i64 %5102, i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_400e6c, %struct.Memory** %MEMORY
  %loadMem_400e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 11
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %RDI.i99 = bitcast %union.anon* %5108 to i64*
  %5109 = load i64, i64* %RDI.i99
  %5110 = mul i64 %5109, 8
  %5111 = add i64 %5110, 6299904
  %5112 = load i64, i64* %PC.i98
  %5113 = add i64 %5112, 8
  store i64 %5113, i64* %PC.i98
  %5114 = inttoptr i64 %5111 to i64*
  %5115 = load i64, i64* %5114
  store i64 %5115, i64* %RDI.i99, align 8
  store %struct.Memory* %loadMem_400e70, %struct.Memory** %MEMORY
  %loadMem_400e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 33
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 15
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %5121 to i64*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 17
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %R8.i97 = bitcast %union.anon* %5124 to i64*
  %5125 = load i64, i64* %RBP.i96
  %5126 = sub i64 %5125, 24
  %5127 = load i64, i64* %PC.i95
  %5128 = add i64 %5127, 4
  store i64 %5128, i64* %PC.i95
  %5129 = inttoptr i64 %5126 to i32*
  %5130 = load i32, i32* %5129
  %5131 = sext i32 %5130 to i64
  store i64 %5131, i64* %R8.i97, align 8
  store %struct.Memory* %loadMem_400e78, %struct.Memory** %MEMORY
  %loadMem_400e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 33
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5134 to i64*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 5
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %5137 to i64*
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5139 = getelementptr inbounds %struct.GPR, %struct.GPR* %5138, i32 0, i32 11
  %5140 = getelementptr inbounds %struct.Reg, %struct.Reg* %5139, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %5140 to i64*
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 17
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %R8.i = bitcast %union.anon* %5143 to i64*
  %5144 = load i64, i64* %RDI.i94
  %5145 = load i64, i64* %R8.i
  %5146 = add i64 %5145, %5144
  %5147 = load i64, i64* %PC.i92
  %5148 = add i64 %5147, 5
  store i64 %5148, i64* %PC.i92
  %5149 = inttoptr i64 %5146 to i8*
  %5150 = load i8, i8* %5149
  %5151 = sext i8 %5150 to i64
  %5152 = and i64 %5151, 4294967295
  store i64 %5152, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_400e7c, %struct.Memory** %MEMORY
  %loadMem_400e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 11
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 15
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %5161 to i64*
  %5162 = load i64, i64* %RBP.i91
  %5163 = sub i64 %5162, 20
  %5164 = load i64, i64* %PC.i89
  %5165 = add i64 %5164, 4
  store i64 %5165, i64* %PC.i89
  %5166 = inttoptr i64 %5163 to i32*
  %5167 = load i32, i32* %5166
  %5168 = sext i32 %5167 to i64
  store i64 %5168, i64* %RDI.i90, align 8
  store %struct.Memory* %loadMem_400e81, %struct.Memory** %MEMORY
  %loadMem_400e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 11
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RDI.i88 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %RDI.i88
  %5176 = load i64, i64* %PC.i87
  %5177 = add i64 %5176, 4
  store i64 %5177, i64* %PC.i87
  %5178 = sext i64 %5175 to i128
  %5179 = and i128 %5178, -18446744073709551616
  %5180 = zext i64 %5175 to i128
  %5181 = or i128 %5179, %5180
  %5182 = mul i128 80, %5181
  %5183 = trunc i128 %5182 to i64
  store i64 %5183, i64* %RDI.i88, align 8
  %5184 = sext i64 %5183 to i128
  %5185 = icmp ne i128 %5184, %5182
  %5186 = zext i1 %5185 to i8
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5186, i8* %5187, align 1
  %5188 = trunc i128 %5182 to i32
  %5189 = and i32 %5188, 255
  %5190 = call i32 @llvm.ctpop.i32(i32 %5189)
  %5191 = trunc i32 %5190 to i8
  %5192 = and i8 %5191, 1
  %5193 = xor i8 %5192, 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5193, i8* %5194, align 1
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5195, align 1
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5196, align 1
  %5197 = lshr i64 %5183, 63
  %5198 = trunc i64 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5198, i8* %5199, align 1
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5186, i8* %5200, align 1
  store %struct.Memory* %loadMem_400e85, %struct.Memory** %MEMORY
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 7
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 11
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RDI.i86 = bitcast %union.anon* %5209 to i64*
  %5210 = load i64, i64* %RDX.i85
  %5211 = load i64, i64* %RDI.i86
  %5212 = load i64, i64* %PC.i84
  %5213 = add i64 %5212, 3
  store i64 %5213, i64* %PC.i84
  %5214 = add i64 %5211, %5210
  store i64 %5214, i64* %RDX.i85, align 8
  %5215 = icmp ult i64 %5214, %5210
  %5216 = icmp ult i64 %5214, %5211
  %5217 = or i1 %5215, %5216
  %5218 = zext i1 %5217 to i8
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5218, i8* %5219, align 1
  %5220 = trunc i64 %5214 to i32
  %5221 = and i32 %5220, 255
  %5222 = call i32 @llvm.ctpop.i32(i32 %5221)
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5225, i8* %5226, align 1
  %5227 = xor i64 %5211, %5210
  %5228 = xor i64 %5227, %5214
  %5229 = lshr i64 %5228, 4
  %5230 = trunc i64 %5229 to i8
  %5231 = and i8 %5230, 1
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5231, i8* %5232, align 1
  %5233 = icmp eq i64 %5214, 0
  %5234 = zext i1 %5233 to i8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5234, i8* %5235, align 1
  %5236 = lshr i64 %5214, 63
  %5237 = trunc i64 %5236 to i8
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5237, i8* %5238, align 1
  %5239 = lshr i64 %5210, 63
  %5240 = lshr i64 %5211, 63
  %5241 = xor i64 %5236, %5239
  %5242 = xor i64 %5236, %5240
  %5243 = add i64 %5241, %5242
  %5244 = icmp eq i64 %5243, 2
  %5245 = zext i1 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5245, i8* %5246, align 1
  store %struct.Memory* %loadMem_400e89, %struct.Memory** %MEMORY
  %loadMem_400e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 11
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RDI.i82 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 15
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %RBP.i83
  %5257 = sub i64 %5256, 24
  %5258 = load i64, i64* %PC.i81
  %5259 = add i64 %5258, 4
  store i64 %5259, i64* %PC.i81
  %5260 = inttoptr i64 %5257 to i32*
  %5261 = load i32, i32* %5260
  %5262 = sext i32 %5261 to i64
  store i64 %5262, i64* %RDI.i82, align 8
  store %struct.Memory* %loadMem_400e8c, %struct.Memory** %MEMORY
  %loadMem_400e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 33
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5265 to i64*
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 7
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %5268 to i64*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 9
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 11
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %5274 to i64*
  %5275 = load i64, i64* %RDX.i78
  %5276 = load i64, i64* %RDI.i80
  %5277 = add i64 %5276, %5275
  %5278 = load i64, i64* %PC.i77
  %5279 = add i64 %5278, 4
  store i64 %5279, i64* %PC.i77
  %5280 = inttoptr i64 %5277 to i8*
  %5281 = load i8, i8* %5280
  %5282 = sext i8 %5281 to i64
  %5283 = and i64 %5282, 4294967295
  store i64 %5283, i64* %RSI.i79, align 8
  store %struct.Memory* %loadMem_400e90, %struct.Memory** %MEMORY
  %loadMem_400e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 33
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 5
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5289 to i32*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 9
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5292 to i32*
  %5293 = load i32, i32* %ECX.i
  %5294 = zext i32 %5293 to i64
  %5295 = load i32, i32* %ESI.i
  %5296 = zext i32 %5295 to i64
  %5297 = load i64, i64* %PC.i76
  %5298 = add i64 %5297, 2
  store i64 %5298, i64* %PC.i76
  %5299 = sub i32 %5293, %5295
  %5300 = icmp ult i32 %5293, %5295
  %5301 = zext i1 %5300 to i8
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5301, i8* %5302, align 1
  %5303 = and i32 %5299, 255
  %5304 = call i32 @llvm.ctpop.i32(i32 %5303)
  %5305 = trunc i32 %5304 to i8
  %5306 = and i8 %5305, 1
  %5307 = xor i8 %5306, 1
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5307, i8* %5308, align 1
  %5309 = xor i64 %5296, %5294
  %5310 = trunc i64 %5309 to i32
  %5311 = xor i32 %5310, %5299
  %5312 = lshr i32 %5311, 4
  %5313 = trunc i32 %5312 to i8
  %5314 = and i8 %5313, 1
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5314, i8* %5315, align 1
  %5316 = icmp eq i32 %5299, 0
  %5317 = zext i1 %5316 to i8
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5317, i8* %5318, align 1
  %5319 = lshr i32 %5299, 31
  %5320 = trunc i32 %5319 to i8
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5320, i8* %5321, align 1
  %5322 = lshr i32 %5293, 31
  %5323 = lshr i32 %5295, 31
  %5324 = xor i32 %5323, %5322
  %5325 = xor i32 %5319, %5322
  %5326 = add i32 %5325, %5324
  %5327 = icmp eq i32 %5326, 2
  %5328 = zext i1 %5327 to i8
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5328, i8* %5329, align 1
  store %struct.Memory* %loadMem_400e94, %struct.Memory** %MEMORY
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 33
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5332 to i64*
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 1
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %5335 to i32*
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 15
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %5338 to i64*
  %5339 = load i64, i64* %RBP.i75
  %5340 = sub i64 %5339, 180
  %5341 = load i32, i32* %EAX.i74
  %5342 = zext i32 %5341 to i64
  %5343 = load i64, i64* %PC.i73
  %5344 = add i64 %5343, 6
  store i64 %5344, i64* %PC.i73
  %5345 = inttoptr i64 %5340 to i32*
  store i32 %5341, i32* %5345
  store %struct.Memory* %loadMem_400e96, %struct.Memory** %MEMORY
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 33
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5348 to i64*
  %5349 = load i64, i64* %PC.i72
  %5350 = add i64 %5349, 15
  %5351 = load i64, i64* %PC.i72
  %5352 = add i64 %5351, 6
  %5353 = load i64, i64* %PC.i72
  %5354 = add i64 %5353, 6
  store i64 %5354, i64* %PC.i72
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5356 = load i8, i8* %5355, align 1
  store i8 %5356, i8* %BRANCH_TAKEN, align 1
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5358 = icmp ne i8 %5356, 0
  %5359 = select i1 %5358, i64 %5350, i64 %5352
  store i64 %5359, i64* %5357, align 8
  store %struct.Memory* %loadMem_400e9c, %struct.Memory** %MEMORY
  %loadBr_400e9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e9c = icmp eq i8 %loadBr_400e9c, 1
  br i1 %cmpBr_400e9c, label %block_.L_400eab, label %block_400ea2

block_400ea2:                                     ; preds = %block_400e0c
  %loadMem_400ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 33
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5362 to i64*
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 1
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 15
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %5368 to i64*
  %5369 = load i64, i64* %RBP.i71
  %5370 = sub i64 %5369, 32
  %5371 = load i64, i64* %PC.i69
  %5372 = add i64 %5371, 3
  store i64 %5372, i64* %PC.i69
  %5373 = inttoptr i64 %5370 to i32*
  %5374 = load i32, i32* %5373
  %5375 = zext i32 %5374 to i64
  store i64 %5375, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_400ea2, %struct.Memory** %MEMORY
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 33
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5378 to i64*
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 1
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %5381 to i64*
  %5382 = load i64, i64* %RAX.i68
  %5383 = load i64, i64* %PC.i67
  %5384 = add i64 %5383, 3
  store i64 %5384, i64* %PC.i67
  %5385 = trunc i64 %5382 to i32
  %5386 = add i32 1, %5385
  %5387 = zext i32 %5386 to i64
  store i64 %5387, i64* %RAX.i68, align 8
  %5388 = icmp ult i32 %5386, %5385
  %5389 = icmp ult i32 %5386, 1
  %5390 = or i1 %5388, %5389
  %5391 = zext i1 %5390 to i8
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5391, i8* %5392, align 1
  %5393 = and i32 %5386, 255
  %5394 = call i32 @llvm.ctpop.i32(i32 %5393)
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  %5397 = xor i8 %5396, 1
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5397, i8* %5398, align 1
  %5399 = xor i64 1, %5382
  %5400 = trunc i64 %5399 to i32
  %5401 = xor i32 %5400, %5386
  %5402 = lshr i32 %5401, 4
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5404, i8* %5405, align 1
  %5406 = icmp eq i32 %5386, 0
  %5407 = zext i1 %5406 to i8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5407, i8* %5408, align 1
  %5409 = lshr i32 %5386, 31
  %5410 = trunc i32 %5409 to i8
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5410, i8* %5411, align 1
  %5412 = lshr i32 %5385, 31
  %5413 = xor i32 %5409, %5412
  %5414 = add i32 %5413, %5409
  %5415 = icmp eq i32 %5414, 2
  %5416 = zext i1 %5415 to i8
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5416, i8* %5417, align 1
  store %struct.Memory* %loadMem_400ea5, %struct.Memory** %MEMORY
  %loadMem_400ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 33
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5420 to i64*
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 1
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %5423 to i32*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 15
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %5426 to i64*
  %5427 = load i64, i64* %RBP.i66
  %5428 = sub i64 %5427, 32
  %5429 = load i32, i32* %EAX.i65
  %5430 = zext i32 %5429 to i64
  %5431 = load i64, i64* %PC.i64
  %5432 = add i64 %5431, 3
  store i64 %5432, i64* %PC.i64
  %5433 = inttoptr i64 %5428 to i32*
  store i32 %5429, i32* %5433
  store %struct.Memory* %loadMem_400ea8, %struct.Memory** %MEMORY
  br label %block_.L_400eab

block_.L_400eab:                                  ; preds = %block_400ea2, %block_400e0c
  %loadMem_400eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5435 = getelementptr inbounds %struct.GPR, %struct.GPR* %5434, i32 0, i32 33
  %5436 = getelementptr inbounds %struct.Reg, %struct.Reg* %5435, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5436 to i64*
  %5437 = load i64, i64* %PC.i63
  %5438 = add i64 %5437, 5
  %5439 = load i64, i64* %PC.i63
  %5440 = add i64 %5439, 5
  store i64 %5440, i64* %PC.i63
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5438, i64* %5441, align 8
  store %struct.Memory* %loadMem_400eab, %struct.Memory** %MEMORY
  br label %block_.L_400eb0

block_.L_400eb0:                                  ; preds = %block_.L_400eab
  %loadMem_400eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 33
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5444 to i64*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 1
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %5447 to i64*
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 15
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %5450 to i64*
  %5451 = load i64, i64* %RBP.i62
  %5452 = sub i64 %5451, 24
  %5453 = load i64, i64* %PC.i60
  %5454 = add i64 %5453, 3
  store i64 %5454, i64* %PC.i60
  %5455 = inttoptr i64 %5452 to i32*
  %5456 = load i32, i32* %5455
  %5457 = zext i32 %5456 to i64
  store i64 %5457, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_400eb0, %struct.Memory** %MEMORY
  %loadMem_400eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 33
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 1
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %RAX.i59
  %5465 = load i64, i64* %PC.i58
  %5466 = add i64 %5465, 3
  store i64 %5466, i64* %PC.i58
  %5467 = trunc i64 %5464 to i32
  %5468 = add i32 1, %5467
  %5469 = zext i32 %5468 to i64
  store i64 %5469, i64* %RAX.i59, align 8
  %5470 = icmp ult i32 %5468, %5467
  %5471 = icmp ult i32 %5468, 1
  %5472 = or i1 %5470, %5471
  %5473 = zext i1 %5472 to i8
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5473, i8* %5474, align 1
  %5475 = and i32 %5468, 255
  %5476 = call i32 @llvm.ctpop.i32(i32 %5475)
  %5477 = trunc i32 %5476 to i8
  %5478 = and i8 %5477, 1
  %5479 = xor i8 %5478, 1
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5479, i8* %5480, align 1
  %5481 = xor i64 1, %5464
  %5482 = trunc i64 %5481 to i32
  %5483 = xor i32 %5482, %5468
  %5484 = lshr i32 %5483, 4
  %5485 = trunc i32 %5484 to i8
  %5486 = and i8 %5485, 1
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5486, i8* %5487, align 1
  %5488 = icmp eq i32 %5468, 0
  %5489 = zext i1 %5488 to i8
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5489, i8* %5490, align 1
  %5491 = lshr i32 %5468, 31
  %5492 = trunc i32 %5491 to i8
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5492, i8* %5493, align 1
  %5494 = lshr i32 %5467, 31
  %5495 = xor i32 %5491, %5494
  %5496 = add i32 %5495, %5491
  %5497 = icmp eq i32 %5496, 2
  %5498 = zext i1 %5497 to i8
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5498, i8* %5499, align 1
  store %struct.Memory* %loadMem_400eb3, %struct.Memory** %MEMORY
  %loadMem_400eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 33
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 1
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %5505 to i32*
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 15
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %5508 to i64*
  %5509 = load i64, i64* %RBP.i57
  %5510 = sub i64 %5509, 24
  %5511 = load i32, i32* %EAX.i56
  %5512 = zext i32 %5511 to i64
  %5513 = load i64, i64* %PC.i55
  %5514 = add i64 %5513, 3
  store i64 %5514, i64* %PC.i55
  %5515 = inttoptr i64 %5510 to i32*
  store i32 %5511, i32* %5515
  store %struct.Memory* %loadMem_400eb6, %struct.Memory** %MEMORY
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 33
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5518 to i64*
  %5519 = load i64, i64* %PC.i54
  %5520 = add i64 %5519, -185
  %5521 = load i64, i64* %PC.i54
  %5522 = add i64 %5521, 5
  store i64 %5522, i64* %PC.i54
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5520, i64* %5523, align 8
  store %struct.Memory* %loadMem_400eb9, %struct.Memory** %MEMORY
  br label %block_.L_400e00

block_.L_400ebe:                                  ; preds = %block_.L_400e00
  %loadMem_400ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 11
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %RDI.i53 = bitcast %union.anon* %5529 to i64*
  %5530 = load i64, i64* %PC.i52
  %5531 = add i64 %5530, 10
  store i64 %5531, i64* %PC.i52
  store i64 4200134, i64* %RDI.i53, align 8
  store %struct.Memory* %loadMem_400ebe, %struct.Memory** %MEMORY
  %loadMem_400ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 1
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %5538 = bitcast %union.anon* %5537 to %struct.anon.2*
  %AL.i51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5538, i32 0, i32 0
  %5539 = load i64, i64* %PC.i50
  %5540 = add i64 %5539, 2
  store i64 %5540, i64* %PC.i50
  store i8 0, i8* %AL.i51, align 1
  store %struct.Memory* %loadMem_400ec8, %struct.Memory** %MEMORY
  %loadMem1_400eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5543 to i64*
  %5544 = load i64, i64* %PC.i49
  %5545 = add i64 %5544, -2298
  %5546 = load i64, i64* %PC.i49
  %5547 = add i64 %5546, 5
  %5548 = load i64, i64* %PC.i49
  %5549 = add i64 %5548, 5
  store i64 %5549, i64* %PC.i49
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5551 = load i64, i64* %5550, align 8
  %5552 = add i64 %5551, -8
  %5553 = inttoptr i64 %5552 to i64*
  store i64 %5547, i64* %5553
  store i64 %5552, i64* %5550, align 8
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5545, i64* %5554, align 8
  store %struct.Memory* %loadMem1_400eca, %struct.Memory** %MEMORY
  %loadMem2_400eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400eca = load i64, i64* %3
  %call2_400eca = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400eca, %struct.Memory* %loadMem2_400eca)
  store %struct.Memory* %call2_400eca, %struct.Memory** %MEMORY
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 1
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %EAX.i47 = bitcast %union.anon* %5560 to i32*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 15
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5563 to i64*
  %5564 = load i64, i64* %RBP.i48
  %5565 = sub i64 %5564, 184
  %5566 = load i32, i32* %EAX.i47
  %5567 = zext i32 %5566 to i64
  %5568 = load i64, i64* %PC.i46
  %5569 = add i64 %5568, 6
  store i64 %5569, i64* %PC.i46
  %5570 = inttoptr i64 %5565 to i32*
  store i32 %5566, i32* %5570
  store %struct.Memory* %loadMem_400ecf, %struct.Memory** %MEMORY
  br label %block_.L_400ed5

block_.L_400ed5:                                  ; preds = %block_.L_400ebe, %block_400d29
  %loadMem_400ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 33
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %PC.i45
  %5575 = add i64 %5574, 5
  %5576 = load i64, i64* %PC.i45
  %5577 = add i64 %5576, 5
  store i64 %5577, i64* %PC.i45
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5575, i64* %5578, align 8
  store %struct.Memory* %loadMem_400ed5, %struct.Memory** %MEMORY
  br label %block_.L_400eda

block_.L_400eda:                                  ; preds = %block_.L_400ed5
  %loadMem_400eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 33
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 1
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 15
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %RBP.i44
  %5589 = sub i64 %5588, 20
  %5590 = load i64, i64* %PC.i42
  %5591 = add i64 %5590, 3
  store i64 %5591, i64* %PC.i42
  %5592 = inttoptr i64 %5589 to i32*
  %5593 = load i32, i32* %5592
  %5594 = zext i32 %5593 to i64
  store i64 %5594, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_400eda, %struct.Memory** %MEMORY
  %loadMem_400edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 33
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5597 to i64*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 1
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %5600 to i64*
  %5601 = load i64, i64* %RAX.i41
  %5602 = load i64, i64* %PC.i40
  %5603 = add i64 %5602, 3
  store i64 %5603, i64* %PC.i40
  %5604 = trunc i64 %5601 to i32
  %5605 = add i32 1, %5604
  %5606 = zext i32 %5605 to i64
  store i64 %5606, i64* %RAX.i41, align 8
  %5607 = icmp ult i32 %5605, %5604
  %5608 = icmp ult i32 %5605, 1
  %5609 = or i1 %5607, %5608
  %5610 = zext i1 %5609 to i8
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5610, i8* %5611, align 1
  %5612 = and i32 %5605, 255
  %5613 = call i32 @llvm.ctpop.i32(i32 %5612)
  %5614 = trunc i32 %5613 to i8
  %5615 = and i8 %5614, 1
  %5616 = xor i8 %5615, 1
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5616, i8* %5617, align 1
  %5618 = xor i64 1, %5601
  %5619 = trunc i64 %5618 to i32
  %5620 = xor i32 %5619, %5605
  %5621 = lshr i32 %5620, 4
  %5622 = trunc i32 %5621 to i8
  %5623 = and i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5623, i8* %5624, align 1
  %5625 = icmp eq i32 %5605, 0
  %5626 = zext i1 %5625 to i8
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5626, i8* %5627, align 1
  %5628 = lshr i32 %5605, 31
  %5629 = trunc i32 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5629, i8* %5630, align 1
  %5631 = lshr i32 %5604, 31
  %5632 = xor i32 %5628, %5631
  %5633 = add i32 %5632, %5628
  %5634 = icmp eq i32 %5633, 2
  %5635 = zext i1 %5634 to i8
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5635, i8* %5636, align 1
  store %struct.Memory* %loadMem_400edd, %struct.Memory** %MEMORY
  %loadMem_400ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5638 = getelementptr inbounds %struct.GPR, %struct.GPR* %5637, i32 0, i32 33
  %5639 = getelementptr inbounds %struct.Reg, %struct.Reg* %5638, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5639 to i64*
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 1
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %EAX.i38 = bitcast %union.anon* %5642 to i32*
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 15
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %5645 to i64*
  %5646 = load i64, i64* %RBP.i39
  %5647 = sub i64 %5646, 20
  %5648 = load i32, i32* %EAX.i38
  %5649 = zext i32 %5648 to i64
  %5650 = load i64, i64* %PC.i37
  %5651 = add i64 %5650, 3
  store i64 %5651, i64* %PC.i37
  %5652 = inttoptr i64 %5647 to i32*
  store i32 %5648, i32* %5652
  store %struct.Memory* %loadMem_400ee0, %struct.Memory** %MEMORY
  %loadMem_400ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 33
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5655 to i64*
  %5656 = load i64, i64* %PC.i36
  %5657 = add i64 %5656, -452
  %5658 = load i64, i64* %PC.i36
  %5659 = add i64 %5658, 5
  store i64 %5659, i64* %PC.i36
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5657, i64* %5660, align 8
  store %struct.Memory* %loadMem_400ee3, %struct.Memory** %MEMORY
  br label %block_.L_400d1f

block_.L_400ee8:                                  ; preds = %block_.L_400d1f
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 33
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5663 to i64*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 15
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5666 to i64*
  %5667 = load i64, i64* %RBP.i35
  %5668 = sub i64 %5667, 32
  %5669 = load i64, i64* %PC.i34
  %5670 = add i64 %5669, 4
  store i64 %5670, i64* %PC.i34
  %5671 = inttoptr i64 %5668 to i32*
  %5672 = load i32, i32* %5671
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5673, align 1
  %5674 = and i32 %5672, 255
  %5675 = call i32 @llvm.ctpop.i32(i32 %5674)
  %5676 = trunc i32 %5675 to i8
  %5677 = and i8 %5676, 1
  %5678 = xor i8 %5677, 1
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5678, i8* %5679, align 1
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5680, align 1
  %5681 = icmp eq i32 %5672, 0
  %5682 = zext i1 %5681 to i8
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5682, i8* %5683, align 1
  %5684 = lshr i32 %5672, 31
  %5685 = trunc i32 %5684 to i8
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5685, i8* %5686, align 1
  %5687 = lshr i32 %5672, 31
  %5688 = xor i32 %5684, %5687
  %5689 = add i32 %5688, %5687
  %5690 = icmp eq i32 %5689, 2
  %5691 = zext i1 %5690 to i8
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5691, i8* %5692, align 1
  store %struct.Memory* %loadMem_400ee8, %struct.Memory** %MEMORY
  %loadMem_400eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 33
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5695 to i64*
  %5696 = load i64, i64* %PC.i33
  %5697 = add i64 %5696, 68
  %5698 = load i64, i64* %PC.i33
  %5699 = add i64 %5698, 6
  %5700 = load i64, i64* %PC.i33
  %5701 = add i64 %5700, 6
  store i64 %5701, i64* %PC.i33
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5703 = load i8, i8* %5702, align 1
  %5704 = icmp ne i8 %5703, 0
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5706 = load i8, i8* %5705, align 1
  %5707 = icmp ne i8 %5706, 0
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5709 = load i8, i8* %5708, align 1
  %5710 = icmp ne i8 %5709, 0
  %5711 = xor i1 %5707, %5710
  %5712 = or i1 %5704, %5711
  %5713 = zext i1 %5712 to i8
  store i8 %5713, i8* %BRANCH_TAKEN, align 1
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5715 = select i1 %5712, i64 %5697, i64 %5699
  store i64 %5715, i64* %5714, align 8
  store %struct.Memory* %loadMem_400eec, %struct.Memory** %MEMORY
  %loadBr_400eec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eec = icmp eq i8 %loadBr_400eec, 1
  br i1 %cmpBr_400eec, label %block_.L_400f30, label %block_400ef2

block_400ef2:                                     ; preds = %block_.L_400ee8
  %loadMem_400ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 33
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 11
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %5721 to i64*
  %5722 = load i64, i64* %PC.i31
  %5723 = add i64 %5722, 10
  store i64 %5723, i64* %PC.i31
  store i64 4200646, i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_400ef2, %struct.Memory** %MEMORY
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 33
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5726 to i64*
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 1
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %5729 to i64*
  %5730 = load i64, i64* %PC.i29
  %5731 = add i64 %5730, 10
  store i64 %5731, i64* %PC.i29
  store i64 4200135, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_400efc, %struct.Memory** %MEMORY
  %loadMem_400f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 33
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 5
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %5737 to i64*
  %5738 = load i64, i64* %PC.i27
  %5739 = add i64 %5738, 10
  store i64 %5739, i64* %PC.i27
  store i64 4200644, i64* %RCX.i28, align 8
  store %struct.Memory* %loadMem_400f06, %struct.Memory** %MEMORY
  %loadMem_400f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 33
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 9
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 15
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %5748 to i64*
  %5749 = load i64, i64* %RBP.i26
  %5750 = sub i64 %5749, 32
  %5751 = load i64, i64* %PC.i25
  %5752 = add i64 %5751, 3
  store i64 %5752, i64* %PC.i25
  %5753 = inttoptr i64 %5750 to i32*
  %5754 = load i32, i32* %5753
  %5755 = zext i32 %5754 to i64
  store i64 %5755, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400f10, %struct.Memory** %MEMORY
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 15
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5761 to i64*
  %5762 = load i64, i64* %RBP.i24
  %5763 = sub i64 %5762, 32
  %5764 = load i64, i64* %PC.i23
  %5765 = add i64 %5764, 4
  store i64 %5765, i64* %PC.i23
  %5766 = inttoptr i64 %5763 to i32*
  %5767 = load i32, i32* %5766
  %5768 = sub i32 %5767, 1
  %5769 = icmp ult i32 %5767, 1
  %5770 = zext i1 %5769 to i8
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5770, i8* %5771, align 1
  %5772 = and i32 %5768, 255
  %5773 = call i32 @llvm.ctpop.i32(i32 %5772)
  %5774 = trunc i32 %5773 to i8
  %5775 = and i8 %5774, 1
  %5776 = xor i8 %5775, 1
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5776, i8* %5777, align 1
  %5778 = xor i32 %5767, 1
  %5779 = xor i32 %5778, %5768
  %5780 = lshr i32 %5779, 4
  %5781 = trunc i32 %5780 to i8
  %5782 = and i8 %5781, 1
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5782, i8* %5783, align 1
  %5784 = icmp eq i32 %5768, 0
  %5785 = zext i1 %5784 to i8
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5785, i8* %5786, align 1
  %5787 = lshr i32 %5768, 31
  %5788 = trunc i32 %5787 to i8
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5788, i8* %5789, align 1
  %5790 = lshr i32 %5767, 31
  %5791 = xor i32 %5787, %5790
  %5792 = add i32 %5791, %5790
  %5793 = icmp eq i32 %5792, 2
  %5794 = zext i1 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5794, i8* %5795, align 1
  store %struct.Memory* %loadMem_400f13, %struct.Memory** %MEMORY
  %loadMem_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 1
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 5
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %RCX.i
  %5806 = load i64, i64* %PC.i21
  %5807 = add i64 %5806, 4
  store i64 %5807, i64* %PC.i21
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5809 = load i8, i8* %5808, align 1
  %5810 = icmp eq i8 %5809, 0
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5812 = load i8, i8* %5811, align 1
  %5813 = icmp ne i8 %5812, 0
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5815 = load i8, i8* %5814, align 1
  %5816 = icmp ne i8 %5815, 0
  %5817 = xor i1 %5813, %5816
  %5818 = xor i1 %5817, true
  %5819 = and i1 %5810, %5818
  %5820 = load i64, i64* %RAX.i22, align 8
  %5821 = select i1 %5819, i64 %5805, i64 %5820
  store i64 %5821, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_400f17, %struct.Memory** %MEMORY
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 1
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 7
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5830 to i64*
  %5831 = load i64, i64* %RAX.i20
  %5832 = load i64, i64* %PC.i19
  %5833 = add i64 %5832, 3
  store i64 %5833, i64* %PC.i19
  store i64 %5831, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_400f1b, %struct.Memory** %MEMORY
  %loadMem_400f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 33
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 1
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %5840 = bitcast %union.anon* %5839 to %struct.anon.2*
  %AL.i18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5840, i32 0, i32 0
  %5841 = load i64, i64* %PC.i17
  %5842 = add i64 %5841, 2
  store i64 %5842, i64* %PC.i17
  store i8 0, i8* %AL.i18, align 1
  store %struct.Memory* %loadMem_400f1e, %struct.Memory** %MEMORY
  %loadMem1_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 33
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %PC.i16
  %5847 = add i64 %5846, -2384
  %5848 = load i64, i64* %PC.i16
  %5849 = add i64 %5848, 5
  %5850 = load i64, i64* %PC.i16
  %5851 = add i64 %5850, 5
  store i64 %5851, i64* %PC.i16
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5853 = load i64, i64* %5852, align 8
  %5854 = add i64 %5853, -8
  %5855 = inttoptr i64 %5854 to i64*
  store i64 %5849, i64* %5855
  store i64 %5854, i64* %5852, align 8
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5847, i64* %5856, align 8
  store %struct.Memory* %loadMem1_400f20, %struct.Memory** %MEMORY
  %loadMem2_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f20 = load i64, i64* %3
  %call2_400f20 = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400f20, %struct.Memory* %loadMem2_400f20)
  store %struct.Memory* %call2_400f20, %struct.Memory** %MEMORY
  %loadMem_400f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 33
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5859 to i64*
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 1
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %5862 to i32*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 15
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5865 to i64*
  %5866 = load i64, i64* %RBP.i15
  %5867 = sub i64 %5866, 188
  %5868 = load i32, i32* %EAX.i14
  %5869 = zext i32 %5868 to i64
  %5870 = load i64, i64* %PC.i13
  %5871 = add i64 %5870, 6
  store i64 %5871, i64* %PC.i13
  %5872 = inttoptr i64 %5867 to i32*
  store i32 %5868, i32* %5872
  store %struct.Memory* %loadMem_400f25, %struct.Memory** %MEMORY
  %loadMem_400f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 33
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %PC.i12
  %5877 = add i64 %5876, 28
  %5878 = load i64, i64* %PC.i12
  %5879 = add i64 %5878, 5
  store i64 %5879, i64* %PC.i12
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5877, i64* %5880, align 8
  store %struct.Memory* %loadMem_400f2b, %struct.Memory** %MEMORY
  br label %block_.L_400f47

block_.L_400f30:                                  ; preds = %block_.L_400ee8
  %loadMem_400f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5883 to i64*
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 11
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %PC.i11
  %5888 = add i64 %5887, 10
  store i64 %5888, i64* %PC.i11
  store i64 4200694, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400f30, %struct.Memory** %MEMORY
  %loadMem_400f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 33
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 1
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %5895 = bitcast %union.anon* %5894 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5895, i32 0, i32 0
  %5896 = load i64, i64* %PC.i10
  %5897 = add i64 %5896, 2
  store i64 %5897, i64* %PC.i10
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400f3a, %struct.Memory** %MEMORY
  %loadMem1_400f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 33
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5900 to i64*
  %5901 = load i64, i64* %PC.i9
  %5902 = add i64 %5901, -2412
  %5903 = load i64, i64* %PC.i9
  %5904 = add i64 %5903, 5
  %5905 = load i64, i64* %PC.i9
  %5906 = add i64 %5905, 5
  store i64 %5906, i64* %PC.i9
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5908 = load i64, i64* %5907, align 8
  %5909 = add i64 %5908, -8
  %5910 = inttoptr i64 %5909 to i64*
  store i64 %5904, i64* %5910
  store i64 %5909, i64* %5907, align 8
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5902, i64* %5911, align 8
  store %struct.Memory* %loadMem1_400f3c, %struct.Memory** %MEMORY
  %loadMem2_400f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f3c = load i64, i64* %3
  %call2_400f3c = call %struct.Memory* @sub_4005d0.printf_plt(%struct.State* %0, i64 %loadPC_400f3c, %struct.Memory* %loadMem2_400f3c)
  store %struct.Memory* %call2_400f3c, %struct.Memory** %MEMORY
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 33
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5914 to i64*
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5916 = getelementptr inbounds %struct.GPR, %struct.GPR* %5915, i32 0, i32 1
  %5917 = getelementptr inbounds %struct.Reg, %struct.Reg* %5916, i32 0, i32 0
  %EAX.i7 = bitcast %union.anon* %5917 to i32*
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5919 = getelementptr inbounds %struct.GPR, %struct.GPR* %5918, i32 0, i32 15
  %5920 = getelementptr inbounds %struct.Reg, %struct.Reg* %5919, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5920 to i64*
  %5921 = load i64, i64* %RBP.i8
  %5922 = sub i64 %5921, 192
  %5923 = load i32, i32* %EAX.i7
  %5924 = zext i32 %5923 to i64
  %5925 = load i64, i64* %PC.i6
  %5926 = add i64 %5925, 6
  store i64 %5926, i64* %PC.i6
  %5927 = inttoptr i64 %5922 to i32*
  store i32 %5923, i32* %5927
  store %struct.Memory* %loadMem_400f41, %struct.Memory** %MEMORY
  br label %block_.L_400f47

block_.L_400f47:                                  ; preds = %block_.L_400f30, %block_400ef2
  %loadMem_400f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 33
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 1
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5933 to i32*
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5935 = getelementptr inbounds %struct.GPR, %struct.GPR* %5934, i32 0, i32 1
  %5936 = getelementptr inbounds %struct.Reg, %struct.Reg* %5935, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5936 to i64*
  %5937 = load i64, i64* %RAX.i
  %5938 = load i32, i32* %EAX.i
  %5939 = zext i32 %5938 to i64
  %5940 = load i64, i64* %PC.i5
  %5941 = add i64 %5940, 2
  store i64 %5941, i64* %PC.i5
  %5942 = xor i64 %5939, %5937
  %5943 = trunc i64 %5942 to i32
  %5944 = and i64 %5942, 4294967295
  store i64 %5944, i64* %RAX.i, align 8
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5945, align 1
  %5946 = and i32 %5943, 255
  %5947 = call i32 @llvm.ctpop.i32(i32 %5946)
  %5948 = trunc i32 %5947 to i8
  %5949 = and i8 %5948, 1
  %5950 = xor i8 %5949, 1
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5950, i8* %5951, align 1
  %5952 = icmp eq i32 %5943, 0
  %5953 = zext i1 %5952 to i8
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5953, i8* %5954, align 1
  %5955 = lshr i32 %5943, 31
  %5956 = trunc i32 %5955 to i8
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5956, i8* %5957, align 1
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5958, align 1
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5959, align 1
  store %struct.Memory* %loadMem_400f47, %struct.Memory** %MEMORY
  %loadMem_400f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 33
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5962 to i64*
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 13
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %RSP.i
  %5967 = load i64, i64* %PC.i4
  %5968 = add i64 %5967, 7
  store i64 %5968, i64* %PC.i4
  %5969 = add i64 192, %5966
  store i64 %5969, i64* %RSP.i, align 8
  %5970 = icmp ult i64 %5969, %5966
  %5971 = icmp ult i64 %5969, 192
  %5972 = or i1 %5970, %5971
  %5973 = zext i1 %5972 to i8
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5973, i8* %5974, align 1
  %5975 = trunc i64 %5969 to i32
  %5976 = and i32 %5975, 255
  %5977 = call i32 @llvm.ctpop.i32(i32 %5976)
  %5978 = trunc i32 %5977 to i8
  %5979 = and i8 %5978, 1
  %5980 = xor i8 %5979, 1
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5980, i8* %5981, align 1
  %5982 = xor i64 192, %5966
  %5983 = xor i64 %5982, %5969
  %5984 = lshr i64 %5983, 4
  %5985 = trunc i64 %5984 to i8
  %5986 = and i8 %5985, 1
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5986, i8* %5987, align 1
  %5988 = icmp eq i64 %5969, 0
  %5989 = zext i1 %5988 to i8
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5989, i8* %5990, align 1
  %5991 = lshr i64 %5969, 63
  %5992 = trunc i64 %5991 to i8
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5992, i8* %5993, align 1
  %5994 = lshr i64 %5966, 63
  %5995 = xor i64 %5991, %5994
  %5996 = add i64 %5995, %5991
  %5997 = icmp eq i64 %5996, 2
  %5998 = zext i1 %5997 to i8
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5998, i8* %5999, align 1
  store %struct.Memory* %loadMem_400f49, %struct.Memory** %MEMORY
  %loadMem_400f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6002 to i64*
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 15
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6005 to i64*
  %6006 = load i64, i64* %PC.i2
  %6007 = add i64 %6006, 1
  store i64 %6007, i64* %PC.i2
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6009 = load i64, i64* %6008, align 8
  %6010 = add i64 %6009, 8
  %6011 = inttoptr i64 %6009 to i64*
  %6012 = load i64, i64* %6011
  store i64 %6012, i64* %RBP.i3, align 8
  store i64 %6010, i64* %6008, align 8
  store %struct.Memory* %loadMem_400f50, %struct.Memory** %MEMORY
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 33
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6015 to i64*
  %6016 = load i64, i64* %PC.i1
  %6017 = add i64 %6016, 1
  store i64 %6017, i64* %PC.i1
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6020 = load i64, i64* %6019, align 8
  %6021 = inttoptr i64 %6020 to i64*
  %6022 = load i64, i64* %6021
  store i64 %6022, i64* %6018, align 8
  %6023 = add i64 %6020, 8
  store i64 %6023, i64* %6019, align 8
  store %struct.Memory* %loadMem_400f51, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400f51
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea5__rip____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 3757
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

define %struct.Memory* @routine_movsd_0xea4__rip____xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 3757
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
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

define %struct.Memory* @routine_movsd__xmm8__0x602158(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM8 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6299992 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm7__0x602160(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300000 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm6__0x602168(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300008 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__0x602170(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300016 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x602178(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300024 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x602180(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300032 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x602188(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300040 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x602190(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300048 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xf4240__0x602070(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 1000000, i32* inttoptr (i64 6299760 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602198(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300056 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x4__0x6021a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 10
  store i64 %7, i64* %PC
  store i16 4, i16* inttoptr (i64 6300064 to i16*)
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

define %struct.Memory* @routine_movswl_0x6021a0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i16, i16* inttoptr (i64 6300064 to i16*)
  %12 = sext i16 %11 to i64
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
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

define %struct.Memory* @routine_jge_.L_40088b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_400878(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6021b0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 6300080, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x602080___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 6299776, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_imulq__0x28___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 40, %15
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_40081a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40087d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400800(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x401658___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200024, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 0, i8* %AL, align 1
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

define %struct.Memory* @routine_movq__0x40168e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200078, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602070___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* inttoptr (i64 6299760 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x4016c8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200136, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xd67__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3439
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

define %struct.Memory* @routine_cvtsi2sdl_0x602070___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i32, i32* inttoptr (i64 6299760 to i32*)
  %12 = sitofp i32 %11 to double
  %13 = bitcast i8* %8 to double*
  store double %12, double* %13, align 1
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

define %struct.Memory* @routine_movq__0x401700___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200192, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x40173c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200252, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x0__0x602650(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* inttoptr (i64 6301264 to i32*)
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

define %struct.Memory* @routine_movl_0x602650___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* inttoptr (i64 6301264 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x602070___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* inttoptr (i64 6299760 to i32*)
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

define %struct.Memory* @routine_jge_.L_400b50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movw__0x0__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 10
  store i64 %7, i64* %PC
  store i16 0, i16* inttoptr (i64 6300480 to i16*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x602340___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i16, i16* inttoptr (i64 6300480 to i16*)
  %12 = sext i16 %11 to i64
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_jg_.L_4009ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xcfb__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3331
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

define %struct.Memory* @routine_movsd_0x602198___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300056 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.trace_line(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x602350___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 6300496, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300488 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswq_0x602340___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load i16, i16* inttoptr (i64 6300480 to i16*)
  %12 = sext i16 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
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

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movsd__xmm0____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RSI
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to double*
  %16 = load double, double* %15, align 1
  %17 = inttoptr i64 %11 to double*
  store double %16, double* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300528 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_movw_0x602340___ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i16, i16* inttoptr (i64 6300480 to i16*)
  store i16 %11, i16* %AX, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addw__0x1___ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = load i16, i16* %AX
  %10 = zext i16 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = add i16 1, %9
  store i16 %13, i16* %AX, align 2
  %14 = icmp ult i16 %13, %9
  %15 = icmp ult i16 %13, 1
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i16 %13, 255
  %20 = zext i16 %19 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %10
  %27 = trunc i64 %26 to i16
  %28 = xor i16 %27, %13
  %29 = lshr i16 %28, 4
  %30 = trunc i16 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i16 %13, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i16 %13, 15
  %37 = trunc i16 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i16 %9, 15
  %40 = xor i16 %36, %39
  %41 = add i16 %40, %36
  %42 = icmp eq i16 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__ax__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = load i16, i16* %AX
  %10 = zext i16 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  store i16 %9, i16* inttoptr (i64 6300480 to i16*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400937(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc75__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3197
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

define %struct.Memory* @routine_movl__0x6___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc49__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3153
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

define %struct.Memory* @routine_movsd_0x602348___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300488 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
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

define %struct.Memory* @routine_movsd_0xc03__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3083
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

define %struct.Memory* @routine_movsd_0xc03__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3083
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

define %struct.Memory* @routine_movsd_0xc03__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3083
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

define %struct.Memory* @routine_movsd_0x602348___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300488 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602360___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300512 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x602350___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6300496 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x602378(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300536 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602368___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6300520 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602358___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300504 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
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

define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_movsd__xmm3__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_mulsd_0x602350___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6300496 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__0x602380(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300544 to double*)
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

define %struct.Memory* @routine_subsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602388(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300552 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602358___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300504 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602390(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300560 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602390___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300560 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602390___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6300560 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm1__0x602390(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300560 to double*)
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

define %struct.Memory* @routine_movsd__xmm0__0x602398(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300568 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602390___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300560 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6023a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* inttoptr (i64 6300576 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x602650(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* inttoptr (i64 6301264 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400919(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x6023b0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6300592, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40177f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200319, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401797___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4200343, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602350___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300496 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602358___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300504 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6023b0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 6300592, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x50___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__0x4017a4___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200356, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602360___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300512 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602368___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300520 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xa0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 160, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 160
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
  %25 = xor i64 160, %9
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

define %struct.Memory* @routine_movq__0x4017b1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200369, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602378___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300536 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xf0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 240, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 240
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
  %25 = xor i64 240, %9
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

define %struct.Memory* @routine_movq__0x4017e1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200417, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x140___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 320, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 320
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
  %25 = xor i64 320, %9
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

define %struct.Memory* @routine_movq__0x401811___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200465, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602380___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300544 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x190___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 400, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 400
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
  %25 = xor i64 400, %9
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

define %struct.Memory* @routine_movsd_0x602398___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300568 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1e0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 480, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 480
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
  %25 = xor i64 480, %9
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

define %struct.Memory* @routine_movq__0x401841___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200513, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602388___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300552 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x230___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 560, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 560
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
  %25 = xor i64 560, %9
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

define %struct.Memory* @routine_movsd_0x6023a0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6300576 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_400ee8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6023b0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 6300592, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x50___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 80, %15
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

define %struct.Memory* @routine_movq_0x602100___rcx_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 6299904
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i32 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = xor i32 %24, %27
  %29 = add i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400ed5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x401871___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200561, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401892___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200594, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x4018a3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200611, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6023b0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 6300592, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x50___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 80, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movq__0x4018b4___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200628, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_0x602100___rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 6299904
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jge_.L_400ebe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4018c1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200641, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5e___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 94, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x20___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 32, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602100___rsi_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 6299904
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rsi__r8_1____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %R8
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdx__rsi_1____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__r10d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602100___rdi_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 6299904
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdi__r8_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R8
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 5
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x50___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 80, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdx__rdi_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400eab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400eb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4016c6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200134, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400eda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400d1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %14, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = xor i32 %26, %29
  %31 = add i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400f30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4018c6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200646, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4016c7___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4200135, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4018c4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 4200644, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmovgq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  %24 = xor i1 %20, %23
  %25 = xor i1 %24, true
  %26 = and i1 %17, %25
  %27 = load i64, i64* %RAX, align 8
  %28 = select i1 %26, i64 %12, i64 %27
  store i64 %28, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4018f6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4200694, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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
