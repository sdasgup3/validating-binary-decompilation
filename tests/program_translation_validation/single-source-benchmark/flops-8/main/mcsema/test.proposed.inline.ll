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
%G_0x601038_type = type <{ [8 x i8] }>
%G_0x601040_type = type <{ [8 x i8] }>
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
%struct.anon.2 = type { i8, i8 }
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x601038 = global %G_0x601038_type zeroinitializer
@G_0x601040 = global %G_0x601040_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400410.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400510 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400510, %struct.Memory** %MEMORY
  %loadMem_400511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i403 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i403
  %27 = load i64, i64* %PC.i402
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i402
  store i64 %26, i64* %RBP.i404, align 8
  store %struct.Memory* %loadMem_400511, %struct.Memory** %MEMORY
  %loadMem_400514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i401 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i401
  %36 = load i64, i64* %PC.i400
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i400
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i401, align 8
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
  store %struct.Memory* %loadMem_400514, %struct.Memory** %MEMORY
  %loadMem_40051b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i399 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i398
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i398
  store i64 4196976, i64* %RDI.i399, align 8
  store %struct.Memory* %loadMem_40051b, %struct.Memory** %MEMORY
  %loadMem_400525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i397
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i396
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i396
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400525, %struct.Memory** %MEMORY
  %loadMem_40052c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i395 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i394
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i394
  store i8 0, i8* %AL.i395, align 1
  store %struct.Memory* %loadMem_40052c, %struct.Memory** %MEMORY
  %loadMem1_40052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i393
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i393
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i393
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i393
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %101, i64* %107
  store i64 %106, i64* %104, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %99, i64* %108, align 8
  store %struct.Memory* %loadMem1_40052e, %struct.Memory** %MEMORY
  %loadMem2_40052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40052e = load i64, i64* %3
  %call2_40052e = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_40052e, %struct.Memory* %loadMem2_40052e)
  store %struct.Memory* %call2_40052e, %struct.Memory** %MEMORY
  %loadMem_400533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 11
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RDI.i392 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %PC.i391
  %116 = add i64 %115, 10
  store i64 %116, i64* %PC.i391
  store i64 4196920, i64* %RDI.i392, align 8
  store %struct.Memory* %loadMem_400533, %struct.Memory** %MEMORY
  %loadMem_40053d = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %EAX.i389 = bitcast %union.anon* %122 to i32*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i390
  %127 = sub i64 %126, 92
  %128 = load i32, i32* %EAX.i389
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %PC.i388
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC.i388
  %132 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %132
  store %struct.Memory* %loadMem_40053d, %struct.Memory** %MEMORY
  %loadMem_400540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %139 = bitcast %union.anon* %138 to %struct.anon.2*
  %AL.i387 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %139, i32 0, i32 0
  %140 = load i64, i64* %PC.i386
  %141 = add i64 %140, 2
  store i64 %141, i64* %PC.i386
  store i8 0, i8* %AL.i387, align 1
  store %struct.Memory* %loadMem_400540, %struct.Memory** %MEMORY
  %loadMem1_400542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %PC.i385
  %146 = add i64 %145, -306
  %147 = load i64, i64* %PC.i385
  %148 = add i64 %147, 5
  %149 = load i64, i64* %PC.i385
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC.i385
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, -8
  %154 = inttoptr i64 %153 to i64*
  store i64 %148, i64* %154
  store i64 %153, i64* %151, align 8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %146, i64* %155, align 8
  store %struct.Memory* %loadMem1_400542, %struct.Memory** %MEMORY
  %loadMem2_400542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400542 = load i64, i64* %3
  %call2_400542 = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_400542, %struct.Memory* %loadMem2_400542)
  store %struct.Memory* %call2_400542, %struct.Memory** %MEMORY
  %loadMem_400547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 11
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RDI.i384 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %PC.i383
  %163 = add i64 %162, 10
  store i64 %163, i64* %PC.i383
  store i64 4196978, i64* %RDI.i384, align 8
  store %struct.Memory* %loadMem_400547, %struct.Memory** %MEMORY
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %167, i64 0, i64 0
  %YMM0.i382 = bitcast %union.VectorReg* %168 to %"class.std::bitset"*
  %169 = bitcast %"class.std::bitset"* %YMM0.i382 to i8*
  %170 = load i64, i64* %PC.i381
  %171 = add i64 %170, 1191
  %172 = load i64, i64* %PC.i381
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC.i381
  %174 = inttoptr i64 %171 to double*
  %175 = load double, double* %174
  %176 = bitcast i8* %169 to double*
  store double %175, double* %176, align 1
  %177 = getelementptr inbounds i8, i8* %169, i64 8
  %178 = bitcast i8* %177 to double*
  store double 0.000000e+00, double* %178, align 1
  store %struct.Memory* %loadMem_400551, %struct.Memory** %MEMORY
  %loadMem_400559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %182, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %183 to %"class.std::bitset"*
  %184 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %185 = load i64, i64* %PC.i379
  %186 = add i64 %185, 1191
  %187 = load i64, i64* %PC.i379
  %188 = add i64 %187, 8
  store i64 %188, i64* %PC.i379
  %189 = inttoptr i64 %186 to double*
  %190 = load double, double* %189
  %191 = bitcast i8* %184 to double*
  store double %190, double* %191, align 1
  %192 = getelementptr inbounds i8, i8* %184, i64 8
  %193 = bitcast i8* %192 to double*
  store double 0.000000e+00, double* %193, align 1
  store %struct.Memory* %loadMem_400559, %struct.Memory** %MEMORY
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %197, i64 0, i64 2
  %YMM2.i378 = bitcast %union.VectorReg* %198 to %"class.std::bitset"*
  %199 = bitcast %"class.std::bitset"* %YMM2.i378 to i8*
  %200 = load i64, i64* %PC.i377
  %201 = add i64 %200, 1191
  %202 = load i64, i64* %PC.i377
  %203 = add i64 %202, 8
  store i64 %203, i64* %PC.i377
  %204 = inttoptr i64 %201 to double*
  %205 = load double, double* %204
  %206 = bitcast i8* %199 to double*
  store double %205, double* %206, align 1
  %207 = getelementptr inbounds i8, i8* %199, i64 8
  %208 = bitcast i8* %207 to double*
  store double 0.000000e+00, double* %208, align 1
  store %struct.Memory* %loadMem_400561, %struct.Memory** %MEMORY
  %loadMem_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %212, i64 0, i64 3
  %YMM3.i376 = bitcast %union.VectorReg* %213 to %"class.std::bitset"*
  %214 = bitcast %"class.std::bitset"* %YMM3.i376 to i8*
  %215 = load i64, i64* %PC.i375
  %216 = add i64 %215, 1191
  %217 = load i64, i64* %PC.i375
  %218 = add i64 %217, 8
  store i64 %218, i64* %PC.i375
  %219 = inttoptr i64 %216 to double*
  %220 = load double, double* %219
  %221 = bitcast i8* %214 to double*
  store double %220, double* %221, align 1
  %222 = getelementptr inbounds i8, i8* %214, i64 8
  %223 = bitcast i8* %222 to double*
  store double 0.000000e+00, double* %223, align 1
  store %struct.Memory* %loadMem_400569, %struct.Memory** %MEMORY
  %loadMem_400571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 4
  %YMM4.i374 = bitcast %union.VectorReg* %228 to %"class.std::bitset"*
  %229 = bitcast %"class.std::bitset"* %YMM4.i374 to i8*
  %230 = load i64, i64* %PC.i373
  %231 = add i64 %230, 1191
  %232 = load i64, i64* %PC.i373
  %233 = add i64 %232, 8
  store i64 %233, i64* %PC.i373
  %234 = inttoptr i64 %231 to double*
  %235 = load double, double* %234
  %236 = bitcast i8* %229 to double*
  store double %235, double* %236, align 1
  %237 = getelementptr inbounds i8, i8* %229, i64 8
  %238 = bitcast i8* %237 to double*
  store double 0.000000e+00, double* %238, align 1
  store %struct.Memory* %loadMem_400571, %struct.Memory** %MEMORY
  %loadMem_400579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %242, i64 0, i64 5
  %YMM5.i372 = bitcast %union.VectorReg* %243 to %"class.std::bitset"*
  %244 = bitcast %"class.std::bitset"* %YMM5.i372 to i8*
  %245 = load i64, i64* %PC.i371
  %246 = add i64 %245, 1191
  %247 = load i64, i64* %PC.i371
  %248 = add i64 %247, 8
  store i64 %248, i64* %PC.i371
  %249 = inttoptr i64 %246 to double*
  %250 = load double, double* %249
  %251 = bitcast i8* %244 to double*
  store double %250, double* %251, align 1
  %252 = getelementptr inbounds i8, i8* %244, i64 8
  %253 = bitcast i8* %252 to double*
  store double 0.000000e+00, double* %253, align 1
  store %struct.Memory* %loadMem_400579, %struct.Memory** %MEMORY
  %loadMem_400581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 15
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RBP.i370
  %261 = sub i64 %260, 56
  %262 = load i64, i64* %PC.i369
  %263 = add i64 %262, 8
  store i64 %263, i64* %PC.i369
  %264 = inttoptr i64 %261 to i64*
  store i64 15625, i64* %264
  store %struct.Memory* %loadMem_400581, %struct.Memory** %MEMORY
  %loadMem_400589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 4
  %XMM4.i368 = bitcast %union.VectorReg* %269 to %union.vec128_t*
  %270 = bitcast %union.vec128_t* %XMM4.i368 to i8*
  %271 = load i64, i64* %PC.i367
  %272 = add i64 %271, 9
  store i64 %272, i64* %PC.i367
  %273 = bitcast i8* %270 to double*
  %274 = load double, double* %273, align 1
  store double %274, double* inttoptr (i64 6296272 to double*)
  store %struct.Memory* %loadMem_400589, %struct.Memory** %MEMORY
  %loadMem_400592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i366
  %282 = sub i64 %281, 64
  %283 = load i64, i64* %PC.i365
  %284 = add i64 %283, 8
  store i64 %284, i64* %PC.i365
  %285 = inttoptr i64 %282 to i64*
  store i64 512000000, i64* %285
  store %struct.Memory* %loadMem_400592, %struct.Memory** %MEMORY
  %loadMem_40059a = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %289, i64 0, i64 5
  %XMM5.i364 = bitcast %union.VectorReg* %290 to %union.vec128_t*
  %291 = bitcast %union.vec128_t* %XMM5.i364 to i8*
  %292 = load i64, i64* %PC.i363
  %293 = add i64 %292, 9
  store i64 %293, i64* %PC.i363
  %294 = bitcast i8* %291 to double*
  %295 = load double, double* %294, align 1
  store double %295, double* inttoptr (i64 6296160 to double*)
  store %struct.Memory* %loadMem_40059a, %struct.Memory** %MEMORY
  %loadMem_4005a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 4
  %XMM4.i362 = bitcast %union.VectorReg* %300 to %union.vec128_t*
  %301 = bitcast %union.vec128_t* %XMM4.i362 to i8*
  %302 = load i64, i64* %PC.i361
  %303 = add i64 %302, 9
  store i64 %303, i64* %PC.i361
  %304 = bitcast i8* %301 to double*
  %305 = load double, double* %304, align 1
  store double %305, double* inttoptr (i64 6296200 to double*)
  store %struct.Memory* %loadMem_4005a3, %struct.Memory** %MEMORY
  %loadMem_4005ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %309, i64 0, i64 3
  %XMM3.i360 = bitcast %union.VectorReg* %310 to %union.vec128_t*
  %311 = bitcast %union.vec128_t* %XMM3.i360 to i8*
  %312 = load i64, i64* %PC.i359
  %313 = add i64 %312, 9
  store i64 %313, i64* %PC.i359
  %314 = bitcast i8* %311 to double*
  %315 = load double, double* %314, align 1
  store double %315, double* inttoptr (i64 6295840 to double*)
  store %struct.Memory* %loadMem_4005ac, %struct.Memory** %MEMORY
  %loadMem_4005b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %319, i64 0, i64 2
  %XMM2.i358 = bitcast %union.VectorReg* %320 to %union.vec128_t*
  %321 = bitcast %union.vec128_t* %XMM2.i358 to i8*
  %322 = load i64, i64* %PC.i357
  %323 = add i64 %322, 9
  store i64 %323, i64* %PC.i357
  %324 = bitcast i8* %321 to double*
  %325 = load double, double* %324, align 1
  store double %325, double* inttoptr (i64 6296224 to double*)
  store %struct.Memory* %loadMem_4005b5, %struct.Memory** %MEMORY
  %loadMem_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %329, i64 0, i64 1
  %XMM1.i356 = bitcast %union.VectorReg* %330 to %union.vec128_t*
  %331 = bitcast %union.vec128_t* %XMM1.i356 to i8*
  %332 = load i64, i64* %PC.i355
  %333 = add i64 %332, 9
  store i64 %333, i64* %PC.i355
  %334 = bitcast i8* %331 to double*
  %335 = load double, double* %334, align 1
  store double %335, double* inttoptr (i64 6296184 to double*)
  store %struct.Memory* %loadMem_4005be, %struct.Memory** %MEMORY
  %loadMem_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %339, i64 0, i64 0
  %XMM0.i354 = bitcast %union.VectorReg* %340 to %union.vec128_t*
  %341 = bitcast %union.vec128_t* %XMM0.i354 to i8*
  %342 = load i64, i64* %PC.i353
  %343 = add i64 %342, 9
  store i64 %343, i64* %PC.i353
  %344 = bitcast i8* %341 to double*
  %345 = load double, double* %344, align 1
  store double %345, double* inttoptr (i64 6295848 to double*)
  store %struct.Memory* %loadMem_4005c7, %struct.Memory** %MEMORY
  %loadMem_4005d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %349, i64 0, i64 0
  %YMM0.i352 = bitcast %union.VectorReg* %350 to %"class.std::bitset"*
  %351 = bitcast %"class.std::bitset"* %YMM0.i352 to i8*
  %352 = load i64, i64* %PC.i351
  %353 = add i64 %352, 9
  store i64 %353, i64* %PC.i351
  %354 = load double, double* inttoptr (i64 6296200 to double*)
  %355 = bitcast i8* %351 to double*
  store double %354, double* %355, align 1
  %356 = getelementptr inbounds i8, i8* %351, i64 8
  %357 = bitcast i8* %356 to double*
  store double 0.000000e+00, double* %357, align 1
  store %struct.Memory* %loadMem_4005d0, %struct.Memory** %MEMORY
  %loadMem_4005d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %361, i64 0, i64 0
  %XMM0.i350 = bitcast %union.VectorReg* %362 to %union.vec128_t*
  %363 = bitcast %union.vec128_t* %XMM0.i350 to i8*
  %364 = load i64, i64* %PC.i349
  %365 = add i64 %364, 9
  store i64 %365, i64* %PC.i349
  %366 = bitcast i8* %363 to double*
  %367 = load double, double* %366, align 1
  store double %367, double* inttoptr (i64 6296192 to double*)
  store %struct.Memory* %loadMem_4005d9, %struct.Memory** %MEMORY
  %loadMem_4005e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %EAX.i347 = bitcast %union.anon* %373 to i32*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i348
  %378 = sub i64 %377, 96
  %379 = load i32, i32* %EAX.i347
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %PC.i346
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i346
  %383 = inttoptr i64 %378 to i32*
  store i32 %379, i32* %383
  store %struct.Memory* %loadMem_4005e2, %struct.Memory** %MEMORY
  %loadMem_4005e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %390 = bitcast %union.anon* %389 to %struct.anon.2*
  %AL.i345 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %390, i32 0, i32 0
  %391 = load i64, i64* %PC.i344
  %392 = add i64 %391, 2
  store i64 %392, i64* %PC.i344
  store i8 0, i8* %AL.i345, align 1
  store %struct.Memory* %loadMem_4005e5, %struct.Memory** %MEMORY
  %loadMem1_4005e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %PC.i343
  %397 = add i64 %396, -471
  %398 = load i64, i64* %PC.i343
  %399 = add i64 %398, 5
  %400 = load i64, i64* %PC.i343
  %401 = add i64 %400, 5
  store i64 %401, i64* %PC.i343
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = add i64 %403, -8
  %405 = inttoptr i64 %404 to i64*
  store i64 %399, i64* %405
  store i64 %404, i64* %402, align 8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %397, i64* %406, align 8
  store %struct.Memory* %loadMem1_4005e7, %struct.Memory** %MEMORY
  %loadMem2_4005e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005e7 = load i64, i64* %3
  %call2_4005e7 = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_4005e7, %struct.Memory* %loadMem2_4005e7)
  store %struct.Memory* %call2_4005e7, %struct.Memory** %MEMORY
  %loadMem_4005ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 11
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RDI.i342 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %PC.i341
  %414 = add i64 %413, 10
  store i64 %414, i64* %PC.i341
  store i64 4197026, i64* %RDI.i342, align 8
  store %struct.Memory* %loadMem_4005ec, %struct.Memory** %MEMORY
  %loadMem_4005f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %EAX.i339 = bitcast %union.anon* %420 to i32*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i340
  %425 = sub i64 %424, 100
  %426 = load i32, i32* %EAX.i339
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC.i338
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i338
  %430 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %430
  store %struct.Memory* %loadMem_4005f6, %struct.Memory** %MEMORY
  %loadMem_4005f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %437 = bitcast %union.anon* %436 to %struct.anon.2*
  %AL.i337 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %437, i32 0, i32 0
  %438 = load i64, i64* %PC.i336
  %439 = add i64 %438, 2
  store i64 %439, i64* %PC.i336
  store i8 0, i8* %AL.i337, align 1
  store %struct.Memory* %loadMem_4005f9, %struct.Memory** %MEMORY
  %loadMem1_4005fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i335
  %444 = add i64 %443, -491
  %445 = load i64, i64* %PC.i335
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i335
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i335
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 %446, i64* %452
  store i64 %451, i64* %449, align 8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %444, i64* %453, align 8
  store %struct.Memory* %loadMem1_4005fb, %struct.Memory** %MEMORY
  %loadMem2_4005fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005fb = load i64, i64* %3
  %call2_4005fb = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_4005fb, %struct.Memory* %loadMem2_4005fb)
  store %struct.Memory* %call2_4005fb, %struct.Memory** %MEMORY
  %loadMem_400600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %457, i64 0, i64 0
  %YMM0.i333 = bitcast %union.VectorReg* %458 to %"class.std::bitset"*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %459, i64 0, i64 0
  %XMM0.i334 = bitcast %union.VectorReg* %460 to %union.vec128_t*
  %461 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %462 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %463 = bitcast %union.vec128_t* %XMM0.i334 to i8*
  %464 = load i64, i64* %PC.i332
  %465 = add i64 %464, 3
  store i64 %465, i64* %PC.i332
  %466 = bitcast i8* %462 to i64*
  %467 = load i64, i64* %466, align 1
  %468 = getelementptr inbounds i8, i8* %462, i64 8
  %469 = bitcast i8* %468 to i64*
  %470 = load i64, i64* %469, align 1
  %471 = bitcast i8* %463 to i64*
  %472 = load i64, i64* %471, align 1
  %473 = getelementptr inbounds i8, i8* %463, i64 8
  %474 = bitcast i8* %473 to i64*
  %475 = load i64, i64* %474, align 1
  %476 = xor i64 %472, %467
  %477 = xor i64 %475, %470
  %478 = trunc i64 %476 to i32
  %479 = lshr i64 %476, 32
  %480 = trunc i64 %479 to i32
  %481 = bitcast i8* %461 to i32*
  store i32 %478, i32* %481, align 1
  %482 = getelementptr inbounds i8, i8* %461, i64 4
  %483 = bitcast i8* %482 to i32*
  store i32 %480, i32* %483, align 1
  %484 = trunc i64 %477 to i32
  %485 = getelementptr inbounds i8, i8* %461, i64 8
  %486 = bitcast i8* %485 to i32*
  store i32 %484, i32* %486, align 1
  %487 = lshr i64 %477, 32
  %488 = trunc i64 %487 to i32
  %489 = getelementptr inbounds i8, i8* %461, i64 12
  %490 = bitcast i8* %489 to i32*
  store i32 %488, i32* %490, align 1
  store %struct.Memory* %loadMem_400600, %struct.Memory** %MEMORY
  %loadMem_400603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 11
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RDI.i330 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i331
  %501 = sub i64 %500, 56
  %502 = load i64, i64* %PC.i329
  %503 = add i64 %502, 8
  store i64 %503, i64* %PC.i329
  %504 = inttoptr i64 %501 to i64*
  %505 = load i64, i64* %504
  %506 = sext i64 %505 to i128
  %507 = and i128 %506, -18446744073709551616
  %508 = zext i64 %505 to i128
  %509 = or i128 %507, %508
  %510 = mul i128 %509, 10000
  %511 = trunc i128 %510 to i64
  store i64 %511, i64* %RDI.i330, align 8
  %512 = sext i64 %511 to i128
  %513 = icmp ne i128 %512, %510
  %514 = zext i1 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %514, i8* %515, align 1
  %516 = trunc i128 %510 to i32
  %517 = and i32 %516, 255
  %518 = call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %521, i8* %522, align 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %523, align 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %524, align 1
  %525 = lshr i64 %511, 63
  %526 = trunc i64 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %526, i8* %527, align 1
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %514, i8* %528, align 1
  store %struct.Memory* %loadMem_400603, %struct.Memory** %MEMORY
  %loadMem_40060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 11
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RDI.i327 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i328
  %539 = sub i64 %538, 80
  %540 = load i64, i64* %RDI.i327
  %541 = load i64, i64* %PC.i326
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i326
  %543 = inttoptr i64 %539 to i64*
  store i64 %540, i64* %543
  store %struct.Memory* %loadMem_40060b, %struct.Memory** %MEMORY
  %loadMem_40060f = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %547, i64 0, i64 1
  %YMM1.i325 = bitcast %union.VectorReg* %548 to %"class.std::bitset"*
  %549 = bitcast %"class.std::bitset"* %YMM1.i325 to i8*
  %550 = load i64, i64* %PC.i324
  %551 = add i64 %550, 9
  store i64 %551, i64* %PC.i324
  %552 = load double, double* inttoptr (i64 6296160 to double*)
  %553 = bitcast i8* %549 to double*
  store double %552, double* %553, align 1
  %554 = getelementptr inbounds i8, i8* %549, i64 8
  %555 = bitcast i8* %554 to double*
  store double 0.000000e+00, double* %555, align 1
  store %struct.Memory* %loadMem_40060f, %struct.Memory** %MEMORY
  %loadMem_400618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %559, i64 0, i64 2
  %YMM2.i323 = bitcast %union.VectorReg* %560 to %"class.std::bitset"*
  %561 = bitcast %"class.std::bitset"* %YMM2.i323 to i8*
  %562 = load i64, i64* %PC.i322
  %563 = add i64 %562, 9
  store i64 %563, i64* %PC.i322
  %564 = load double, double* inttoptr (i64 6296224 to double*)
  %565 = bitcast i8* %561 to double*
  store double %564, double* %565, align 1
  %566 = getelementptr inbounds i8, i8* %561, i64 8
  %567 = bitcast i8* %566 to double*
  store double 0.000000e+00, double* %567, align 1
  store %struct.Memory* %loadMem_400618, %struct.Memory** %MEMORY
  %loadMem_400621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 15
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %574, i64 0, i64 3
  %YMM3.i321 = bitcast %union.VectorReg* %575 to %"class.std::bitset"*
  %576 = bitcast %"class.std::bitset"* %YMM3.i321 to i8*
  %577 = load i64, i64* %RBP.i320
  %578 = sub i64 %577, 80
  %579 = load i64, i64* %PC.i319
  %580 = add i64 %579, 6
  store i64 %580, i64* %PC.i319
  %581 = inttoptr i64 %578 to i64*
  %582 = load i64, i64* %581
  %583 = sitofp i64 %582 to double
  %584 = bitcast i8* %576 to double*
  store double %583, double* %584, align 1
  store %struct.Memory* %loadMem_400621, %struct.Memory** %MEMORY
  %loadMem_400627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %588, i64 0, i64 2
  %YMM2.i317 = bitcast %union.VectorReg* %589 to %"class.std::bitset"*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %590, i64 0, i64 3
  %XMM3.i318 = bitcast %union.VectorReg* %591 to %union.vec128_t*
  %592 = bitcast %"class.std::bitset"* %YMM2.i317 to i8*
  %593 = bitcast %"class.std::bitset"* %YMM2.i317 to i8*
  %594 = bitcast %union.vec128_t* %XMM3.i318 to i8*
  %595 = load i64, i64* %PC.i316
  %596 = add i64 %595, 4
  store i64 %596, i64* %PC.i316
  %597 = bitcast i8* %593 to double*
  %598 = load double, double* %597, align 1
  %599 = getelementptr inbounds i8, i8* %593, i64 8
  %600 = bitcast i8* %599 to i64*
  %601 = load i64, i64* %600, align 1
  %602 = bitcast i8* %594 to double*
  %603 = load double, double* %602, align 1
  %604 = fmul double %598, %603
  %605 = bitcast i8* %592 to double*
  store double %604, double* %605, align 1
  %606 = getelementptr inbounds i8, i8* %592, i64 8
  %607 = bitcast i8* %606 to i64*
  store i64 %601, i64* %607, align 1
  store %struct.Memory* %loadMem_400627, %struct.Memory** %MEMORY
  %loadMem_40062b = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %611, i64 0, i64 1
  %YMM1.i314 = bitcast %union.VectorReg* %612 to %"class.std::bitset"*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %613, i64 0, i64 2
  %XMM2.i315 = bitcast %union.VectorReg* %614 to %union.vec128_t*
  %615 = bitcast %"class.std::bitset"* %YMM1.i314 to i8*
  %616 = bitcast %"class.std::bitset"* %YMM1.i314 to i8*
  %617 = bitcast %union.vec128_t* %XMM2.i315 to i8*
  %618 = load i64, i64* %PC.i313
  %619 = add i64 %618, 4
  store i64 %619, i64* %PC.i313
  %620 = bitcast i8* %616 to double*
  %621 = load double, double* %620, align 1
  %622 = getelementptr inbounds i8, i8* %616, i64 8
  %623 = bitcast i8* %622 to i64*
  %624 = load i64, i64* %623, align 1
  %625 = bitcast i8* %617 to double*
  %626 = load double, double* %625, align 1
  %627 = fdiv double %621, %626
  %628 = bitcast i8* %615 to double*
  store double %627, double* %628, align 1
  %629 = getelementptr inbounds i8, i8* %615, i64 8
  %630 = bitcast i8* %629 to i64*
  store i64 %624, i64* %630, align 1
  store %struct.Memory* %loadMem_40062b, %struct.Memory** %MEMORY
  %loadMem_40062f = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 15
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %637, i64 0, i64 1
  %XMM1.i312 = bitcast %union.VectorReg* %638 to %union.vec128_t*
  %639 = load i64, i64* %RBP.i311
  %640 = sub i64 %639, 48
  %641 = bitcast %union.vec128_t* %XMM1.i312 to i8*
  %642 = load i64, i64* %PC.i310
  %643 = add i64 %642, 5
  store i64 %643, i64* %PC.i310
  %644 = bitcast i8* %641 to double*
  %645 = load double, double* %644, align 1
  %646 = inttoptr i64 %640 to double*
  store double %645, double* %646
  store %struct.Memory* %loadMem_40062f, %struct.Memory** %MEMORY
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %653, i64 0, i64 0
  %XMM0.i309 = bitcast %union.VectorReg* %654 to %union.vec128_t*
  %655 = load i64, i64* %RBP.i308
  %656 = sub i64 %655, 16
  %657 = bitcast %union.vec128_t* %XMM0.i309 to i8*
  %658 = load i64, i64* %PC.i307
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC.i307
  %660 = bitcast i8* %657 to double*
  %661 = load double, double* %660, align 1
  %662 = inttoptr i64 %656 to double*
  store double %661, double* %662
  store %struct.Memory* %loadMem_400634, %struct.Memory** %MEMORY
  %loadMem_400639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 15
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %669, i64 0, i64 0
  %XMM0.i306 = bitcast %union.VectorReg* %670 to %union.vec128_t*
  %671 = load i64, i64* %RBP.i305
  %672 = sub i64 %671, 32
  %673 = bitcast %union.vec128_t* %XMM0.i306 to i8*
  %674 = load i64, i64* %PC.i304
  %675 = add i64 %674, 5
  store i64 %675, i64* %PC.i304
  %676 = bitcast i8* %673 to double*
  %677 = load double, double* %676, align 1
  %678 = inttoptr i64 %672 to double*
  store double %677, double* %678
  store %struct.Memory* %loadMem_400639, %struct.Memory** %MEMORY
  %loadMem_40063e = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 15
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RBP.i303
  %686 = sub i64 %685, 72
  %687 = load i64, i64* %PC.i302
  %688 = add i64 %687, 8
  store i64 %688, i64* %PC.i302
  %689 = inttoptr i64 %686 to i64*
  store i64 1, i64* %689
  store %struct.Memory* %loadMem_40063e, %struct.Memory** %MEMORY
  %loadMem_400646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %695 to i32*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %RBP.i301
  %700 = sub i64 %699, 104
  %701 = load i32, i32* %EAX.i300
  %702 = zext i32 %701 to i64
  %703 = load i64, i64* %PC.i299
  %704 = add i64 %703, 3
  store i64 %704, i64* %PC.i299
  %705 = inttoptr i64 %700 to i32*
  store i32 %701, i32* %705
  store %struct.Memory* %loadMem_400646, %struct.Memory** %MEMORY
  br label %block_.L_400649

block_.L_400649:                                  ; preds = %block_40065e, %entry
  %loadMem_400649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 1
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 15
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %714 to i64*
  %715 = load i64, i64* %RBP.i298
  %716 = sub i64 %715, 72
  %717 = load i64, i64* %PC.i296
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC.i296
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719
  store i64 %720, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_400649, %struct.Memory** %MEMORY
  %loadMem_40064d = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 5
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 15
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RBP.i295
  %731 = sub i64 %730, 80
  %732 = load i64, i64* %PC.i293
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC.i293
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734
  store i64 %735, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_40064d, %struct.Memory** %MEMORY
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RCX.i292
  %743 = load i64, i64* %PC.i291
  %744 = add i64 %743, 4
  store i64 %744, i64* %PC.i291
  %745 = sub i64 %742, 1
  store i64 %745, i64* %RCX.i292, align 8
  %746 = icmp ult i64 %742, 1
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %747, i8* %748, align 1
  %749 = trunc i64 %745 to i32
  %750 = and i32 %749, 255
  %751 = call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %754, i8* %755, align 1
  %756 = xor i64 1, %742
  %757 = xor i64 %756, %745
  %758 = lshr i64 %757, 4
  %759 = trunc i64 %758 to i8
  %760 = and i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %760, i8* %761, align 1
  %762 = icmp eq i64 %745, 0
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %763, i8* %764, align 1
  %765 = lshr i64 %745, 63
  %766 = trunc i64 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %766, i8* %767, align 1
  %768 = lshr i64 %742, 63
  %769 = xor i64 %765, %768
  %770 = add i64 %769, %768
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %772, i8* %773, align 1
  store %struct.Memory* %loadMem_400651, %struct.Memory** %MEMORY
  %loadMem_400655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 5
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RAX.i289
  %784 = load i64, i64* %RCX.i290
  %785 = load i64, i64* %PC.i288
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC.i288
  %787 = sub i64 %783, %784
  %788 = icmp ult i64 %783, %784
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %789, i8* %790, align 1
  %791 = trunc i64 %787 to i32
  %792 = and i32 %791, 255
  %793 = call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %796, i8* %797, align 1
  %798 = xor i64 %784, %783
  %799 = xor i64 %798, %787
  %800 = lshr i64 %799, 4
  %801 = trunc i64 %800 to i8
  %802 = and i8 %801, 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %802, i8* %803, align 1
  %804 = icmp eq i64 %787, 0
  %805 = zext i1 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %805, i8* %806, align 1
  %807 = lshr i64 %787, 63
  %808 = trunc i64 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %808, i8* %809, align 1
  %810 = lshr i64 %783, 63
  %811 = lshr i64 %784, 63
  %812 = xor i64 %811, %810
  %813 = xor i64 %807, %810
  %814 = add i64 %813, %812
  %815 = icmp eq i64 %814, 2
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %816, i8* %817, align 1
  store %struct.Memory* %loadMem_400655, %struct.Memory** %MEMORY
  %loadMem_400658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i287
  %822 = add i64 %821, 298
  %823 = load i64, i64* %PC.i287
  %824 = add i64 %823, 6
  %825 = load i64, i64* %PC.i287
  %826 = add i64 %825, 6
  store i64 %826, i64* %PC.i287
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %828 = load i8, i8* %827, align 1
  %829 = icmp eq i8 %828, 0
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %831 = load i8, i8* %830, align 1
  %832 = icmp ne i8 %831, 0
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %834 = load i8, i8* %833, align 1
  %835 = icmp ne i8 %834, 0
  %836 = xor i1 %832, %835
  %837 = xor i1 %836, true
  %838 = and i1 %829, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %BRANCH_TAKEN, align 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %841 = select i1 %838, i64 %822, i64 %824
  store i64 %841, i64* %840, align 8
  store %struct.Memory* %loadMem_400658, %struct.Memory** %MEMORY
  %loadBr_400658 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400658 = icmp eq i8 %loadBr_400658, 1
  br i1 %cmpBr_400658, label %block_.L_400782, label %block_40065e

block_40065e:                                     ; preds = %block_.L_400649
  %loadMem_40065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 15
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %848, i64 0, i64 0
  %YMM0.i286 = bitcast %union.VectorReg* %849 to %"class.std::bitset"*
  %850 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %851 = load i64, i64* %RBP.i285
  %852 = sub i64 %851, 72
  %853 = load i64, i64* %PC.i284
  %854 = add i64 %853, 6
  store i64 %854, i64* %PC.i284
  %855 = inttoptr i64 %852 to i64*
  %856 = load i64, i64* %855
  %857 = sitofp i64 %856 to double
  %858 = bitcast i8* %850 to double*
  store double %857, double* %858, align 1
  store %struct.Memory* %loadMem_40065e, %struct.Memory** %MEMORY
  %loadMem_400664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 15
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %865, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %866 to %"class.std::bitset"*
  %867 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %868 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %869 = load i64, i64* %RBP.i282
  %870 = sub i64 %869, 48
  %871 = load i64, i64* %PC.i281
  %872 = add i64 %871, 5
  store i64 %872, i64* %PC.i281
  %873 = bitcast i8* %868 to double*
  %874 = load double, double* %873, align 1
  %875 = getelementptr inbounds i8, i8* %868, i64 8
  %876 = bitcast i8* %875 to i64*
  %877 = load i64, i64* %876, align 1
  %878 = inttoptr i64 %870 to double*
  %879 = load double, double* %878
  %880 = fmul double %874, %879
  %881 = bitcast i8* %867 to double*
  store double %880, double* %881, align 1
  %882 = getelementptr inbounds i8, i8* %867, i64 8
  %883 = bitcast i8* %882 to i64*
  store i64 %877, i64* %883, align 1
  store %struct.Memory* %loadMem_400664, %struct.Memory** %MEMORY
  %loadMem_400669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %890, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %891 to %union.vec128_t*
  %892 = load i64, i64* %RBP.i279
  %893 = sub i64 %892, 24
  %894 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %895 = load i64, i64* %PC.i278
  %896 = add i64 %895, 5
  store i64 %896, i64* %PC.i278
  %897 = bitcast i8* %894 to double*
  %898 = load double, double* %897, align 1
  %899 = inttoptr i64 %893 to double*
  store double %898, double* %899
  store %struct.Memory* %loadMem_400669, %struct.Memory** %MEMORY
  %loadMem_40066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %906, i64 0, i64 0
  %YMM0.i277 = bitcast %union.VectorReg* %907 to %"class.std::bitset"*
  %908 = bitcast %"class.std::bitset"* %YMM0.i277 to i8*
  %909 = load i64, i64* %RBP.i276
  %910 = sub i64 %909, 24
  %911 = load i64, i64* %PC.i275
  %912 = add i64 %911, 5
  store i64 %912, i64* %PC.i275
  %913 = inttoptr i64 %910 to double*
  %914 = load double, double* %913
  %915 = bitcast i8* %908 to double*
  store double %914, double* %915, align 1
  %916 = getelementptr inbounds i8, i8* %908, i64 8
  %917 = bitcast i8* %916 to double*
  store double 0.000000e+00, double* %917, align 1
  store %struct.Memory* %loadMem_40066e, %struct.Memory** %MEMORY
  %loadMem_400673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %924, i64 0, i64 0
  %YMM0.i274 = bitcast %union.VectorReg* %925 to %"class.std::bitset"*
  %926 = bitcast %"class.std::bitset"* %YMM0.i274 to i8*
  %927 = bitcast %"class.std::bitset"* %YMM0.i274 to i8*
  %928 = load i64, i64* %RBP.i273
  %929 = sub i64 %928, 24
  %930 = load i64, i64* %PC.i272
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC.i272
  %932 = bitcast i8* %927 to double*
  %933 = load double, double* %932, align 1
  %934 = getelementptr inbounds i8, i8* %927, i64 8
  %935 = bitcast i8* %934 to i64*
  %936 = load i64, i64* %935, align 1
  %937 = inttoptr i64 %929 to double*
  %938 = load double, double* %937
  %939 = fmul double %933, %938
  %940 = bitcast i8* %926 to double*
  store double %939, double* %940, align 1
  %941 = getelementptr inbounds i8, i8* %926, i64 8
  %942 = bitcast i8* %941 to i64*
  store i64 %936, i64* %942, align 1
  store %struct.Memory* %loadMem_400673, %struct.Memory** %MEMORY
  %loadMem_400678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 15
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %949, i64 0, i64 0
  %XMM0.i271 = bitcast %union.VectorReg* %950 to %union.vec128_t*
  %951 = load i64, i64* %RBP.i270
  %952 = sub i64 %951, 40
  %953 = bitcast %union.vec128_t* %XMM0.i271 to i8*
  %954 = load i64, i64* %PC.i269
  %955 = add i64 %954, 5
  store i64 %955, i64* %PC.i269
  %956 = bitcast i8* %953 to double*
  %957 = load double, double* %956, align 1
  %958 = inttoptr i64 %952 to double*
  store double %957, double* %958
  store %struct.Memory* %loadMem_400678, %struct.Memory** %MEMORY
  %loadMem_40067d = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 15
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %965, i64 0, i64 0
  %YMM0.i268 = bitcast %union.VectorReg* %966 to %"class.std::bitset"*
  %967 = bitcast %"class.std::bitset"* %YMM0.i268 to i8*
  %968 = load i64, i64* %RBP.i267
  %969 = sub i64 %968, 40
  %970 = load i64, i64* %PC.i266
  %971 = add i64 %970, 5
  store i64 %971, i64* %PC.i266
  %972 = inttoptr i64 %969 to double*
  %973 = load double, double* %972
  %974 = bitcast i8* %967 to double*
  store double %973, double* %974, align 1
  %975 = getelementptr inbounds i8, i8* %967, i64 8
  %976 = bitcast i8* %975 to double*
  store double 0.000000e+00, double* %976, align 1
  store %struct.Memory* %loadMem_40067d, %struct.Memory** %MEMORY
  %loadMem_400682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 15
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %983, i64 0, i64 1
  %YMM1.i265 = bitcast %union.VectorReg* %984 to %"class.std::bitset"*
  %985 = bitcast %"class.std::bitset"* %YMM1.i265 to i8*
  %986 = load i64, i64* %RBP.i264
  %987 = sub i64 %986, 40
  %988 = load i64, i64* %PC.i263
  %989 = add i64 %988, 5
  store i64 %989, i64* %PC.i263
  %990 = inttoptr i64 %987 to double*
  %991 = load double, double* %990
  %992 = bitcast i8* %985 to double*
  store double %991, double* %992, align 1
  %993 = getelementptr inbounds i8, i8* %985, i64 8
  %994 = bitcast i8* %993 to double*
  store double 0.000000e+00, double* %994, align 1
  store %struct.Memory* %loadMem_400682, %struct.Memory** %MEMORY
  %loadMem_400687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1002 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1001, i64 0, i64 2
  %YMM2.i262 = bitcast %union.VectorReg* %1002 to %"class.std::bitset"*
  %1003 = bitcast %"class.std::bitset"* %YMM2.i262 to i8*
  %1004 = load i64, i64* %RBP.i261
  %1005 = sub i64 %1004, 40
  %1006 = load i64, i64* %PC.i260
  %1007 = add i64 %1006, 5
  store i64 %1007, i64* %PC.i260
  %1008 = inttoptr i64 %1005 to double*
  %1009 = load double, double* %1008
  %1010 = bitcast i8* %1003 to double*
  store double %1009, double* %1010, align 1
  %1011 = getelementptr inbounds i8, i8* %1003, i64 8
  %1012 = bitcast i8* %1011 to double*
  store double 0.000000e+00, double* %1012, align 1
  store %struct.Memory* %loadMem_400687, %struct.Memory** %MEMORY
  %loadMem_40068c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 15
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1019, i64 0, i64 3
  %YMM3.i259 = bitcast %union.VectorReg* %1020 to %"class.std::bitset"*
  %1021 = bitcast %"class.std::bitset"* %YMM3.i259 to i8*
  %1022 = load i64, i64* %RBP.i258
  %1023 = sub i64 %1022, 40
  %1024 = load i64, i64* %PC.i257
  %1025 = add i64 %1024, 5
  store i64 %1025, i64* %PC.i257
  %1026 = inttoptr i64 %1023 to double*
  %1027 = load double, double* %1026
  %1028 = bitcast i8* %1021 to double*
  store double %1027, double* %1028, align 1
  %1029 = getelementptr inbounds i8, i8* %1021, i64 8
  %1030 = bitcast i8* %1029 to double*
  store double 0.000000e+00, double* %1030, align 1
  store %struct.Memory* %loadMem_40068c, %struct.Memory** %MEMORY
  %loadMem_400691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 15
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1037, i64 0, i64 4
  %YMM4.i256 = bitcast %union.VectorReg* %1038 to %"class.std::bitset"*
  %1039 = bitcast %"class.std::bitset"* %YMM4.i256 to i8*
  %1040 = load i64, i64* %RBP.i255
  %1041 = sub i64 %1040, 40
  %1042 = load i64, i64* %PC.i254
  %1043 = add i64 %1042, 5
  store i64 %1043, i64* %PC.i254
  %1044 = inttoptr i64 %1041 to double*
  %1045 = load double, double* %1044
  %1046 = bitcast i8* %1039 to double*
  store double %1045, double* %1046, align 1
  %1047 = getelementptr inbounds i8, i8* %1039, i64 8
  %1048 = bitcast i8* %1047 to double*
  store double 0.000000e+00, double* %1048, align 1
  store %struct.Memory* %loadMem_400691, %struct.Memory** %MEMORY
  %loadMem_400696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1053 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1052, i64 0, i64 5
  %YMM5.i253 = bitcast %union.VectorReg* %1053 to %"class.std::bitset"*
  %1054 = bitcast %"class.std::bitset"* %YMM5.i253 to i8*
  %1055 = load i64, i64* %PC.i252
  %1056 = add i64 %1055, 9
  store i64 %1056, i64* %PC.i252
  %1057 = load double, double* inttoptr (i64 6295704 to double*)
  %1058 = bitcast i8* %1054 to double*
  store double %1057, double* %1058, align 1
  %1059 = getelementptr inbounds i8, i8* %1054, i64 8
  %1060 = bitcast i8* %1059 to double*
  store double 0.000000e+00, double* %1060, align 1
  store %struct.Memory* %loadMem_400696, %struct.Memory** %MEMORY
  %loadMem_40069f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 15
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1067, i64 0, i64 5
  %YMM5.i251 = bitcast %union.VectorReg* %1068 to %"class.std::bitset"*
  %1069 = bitcast %"class.std::bitset"* %YMM5.i251 to i8*
  %1070 = bitcast %"class.std::bitset"* %YMM5.i251 to i8*
  %1071 = load i64, i64* %RBP.i250
  %1072 = sub i64 %1071, 40
  %1073 = load i64, i64* %PC.i249
  %1074 = add i64 %1073, 5
  store i64 %1074, i64* %PC.i249
  %1075 = bitcast i8* %1070 to double*
  %1076 = load double, double* %1075, align 1
  %1077 = getelementptr inbounds i8, i8* %1070, i64 8
  %1078 = bitcast i8* %1077 to i64*
  %1079 = load i64, i64* %1078, align 1
  %1080 = inttoptr i64 %1072 to double*
  %1081 = load double, double* %1080
  %1082 = fmul double %1076, %1081
  %1083 = bitcast i8* %1069 to double*
  store double %1082, double* %1083, align 1
  %1084 = getelementptr inbounds i8, i8* %1069, i64 8
  %1085 = bitcast i8* %1084 to i64*
  store i64 %1079, i64* %1085, align 1
  store %struct.Memory* %loadMem_40069f, %struct.Memory** %MEMORY
  %loadMem_4006a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1089, i64 0, i64 5
  %YMM5.i248 = bitcast %union.VectorReg* %1090 to %"class.std::bitset"*
  %1091 = bitcast %"class.std::bitset"* %YMM5.i248 to i8*
  %1092 = bitcast %"class.std::bitset"* %YMM5.i248 to i8*
  %1093 = load i64, i64* %PC.i247
  %1094 = add i64 %1093, 9
  store i64 %1094, i64* %PC.i247
  %1095 = bitcast i8* %1092 to double*
  %1096 = load double, double* %1095, align 1
  %1097 = getelementptr inbounds i8, i8* %1092, i64 8
  %1098 = bitcast i8* %1097 to i64*
  %1099 = load i64, i64* %1098, align 1
  %1100 = load double, double* inttoptr (i64 6295696 to double*)
  %1101 = fadd double %1096, %1100
  %1102 = bitcast i8* %1091 to double*
  store double %1101, double* %1102, align 1
  %1103 = getelementptr inbounds i8, i8* %1091, i64 8
  %1104 = bitcast i8* %1103 to i64*
  store i64 %1099, i64* %1104, align 1
  store %struct.Memory* %loadMem_4006a4, %struct.Memory** %MEMORY
  %loadMem_4006ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1108, i64 0, i64 4
  %YMM4.i245 = bitcast %union.VectorReg* %1109 to %"class.std::bitset"*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1110, i64 0, i64 5
  %XMM5.i246 = bitcast %union.VectorReg* %1111 to %union.vec128_t*
  %1112 = bitcast %"class.std::bitset"* %YMM4.i245 to i8*
  %1113 = bitcast %"class.std::bitset"* %YMM4.i245 to i8*
  %1114 = bitcast %union.vec128_t* %XMM5.i246 to i8*
  %1115 = load i64, i64* %PC.i244
  %1116 = add i64 %1115, 4
  store i64 %1116, i64* %PC.i244
  %1117 = bitcast i8* %1113 to double*
  %1118 = load double, double* %1117, align 1
  %1119 = getelementptr inbounds i8, i8* %1113, i64 8
  %1120 = bitcast i8* %1119 to i64*
  %1121 = load i64, i64* %1120, align 1
  %1122 = bitcast i8* %1114 to double*
  %1123 = load double, double* %1122, align 1
  %1124 = fmul double %1118, %1123
  %1125 = bitcast i8* %1112 to double*
  store double %1124, double* %1125, align 1
  %1126 = getelementptr inbounds i8, i8* %1112, i64 8
  %1127 = bitcast i8* %1126 to i64*
  store i64 %1121, i64* %1127, align 1
  store %struct.Memory* %loadMem_4006ad, %struct.Memory** %MEMORY
  %loadMem_4006b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1131, i64 0, i64 4
  %YMM4.i243 = bitcast %union.VectorReg* %1132 to %"class.std::bitset"*
  %1133 = bitcast %"class.std::bitset"* %YMM4.i243 to i8*
  %1134 = bitcast %"class.std::bitset"* %YMM4.i243 to i8*
  %1135 = load i64, i64* %PC.i242
  %1136 = add i64 %1135, 9
  store i64 %1136, i64* %PC.i242
  %1137 = bitcast i8* %1134 to double*
  %1138 = load double, double* %1137, align 1
  %1139 = getelementptr inbounds i8, i8* %1134, i64 8
  %1140 = bitcast i8* %1139 to i64*
  %1141 = load i64, i64* %1140, align 1
  %1142 = load double, double* inttoptr (i64 6295688 to double*)
  %1143 = fadd double %1138, %1142
  %1144 = bitcast i8* %1133 to double*
  store double %1143, double* %1144, align 1
  %1145 = getelementptr inbounds i8, i8* %1133, i64 8
  %1146 = bitcast i8* %1145 to i64*
  store i64 %1141, i64* %1146, align 1
  store %struct.Memory* %loadMem_4006b1, %struct.Memory** %MEMORY
  %loadMem_4006ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1151 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1150, i64 0, i64 3
  %YMM3.i240 = bitcast %union.VectorReg* %1151 to %"class.std::bitset"*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1152, i64 0, i64 4
  %XMM4.i241 = bitcast %union.VectorReg* %1153 to %union.vec128_t*
  %1154 = bitcast %"class.std::bitset"* %YMM3.i240 to i8*
  %1155 = bitcast %"class.std::bitset"* %YMM3.i240 to i8*
  %1156 = bitcast %union.vec128_t* %XMM4.i241 to i8*
  %1157 = load i64, i64* %PC.i239
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %PC.i239
  %1159 = bitcast i8* %1155 to double*
  %1160 = load double, double* %1159, align 1
  %1161 = getelementptr inbounds i8, i8* %1155, i64 8
  %1162 = bitcast i8* %1161 to i64*
  %1163 = load i64, i64* %1162, align 1
  %1164 = bitcast i8* %1156 to double*
  %1165 = load double, double* %1164, align 1
  %1166 = fmul double %1160, %1165
  %1167 = bitcast i8* %1154 to double*
  store double %1166, double* %1167, align 1
  %1168 = getelementptr inbounds i8, i8* %1154, i64 8
  %1169 = bitcast i8* %1168 to i64*
  store i64 %1163, i64* %1169, align 1
  store %struct.Memory* %loadMem_4006ba, %struct.Memory** %MEMORY
  %loadMem_4006be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1173, i64 0, i64 3
  %YMM3.i238 = bitcast %union.VectorReg* %1174 to %"class.std::bitset"*
  %1175 = bitcast %"class.std::bitset"* %YMM3.i238 to i8*
  %1176 = bitcast %"class.std::bitset"* %YMM3.i238 to i8*
  %1177 = load i64, i64* %PC.i237
  %1178 = add i64 %1177, 9
  store i64 %1178, i64* %PC.i237
  %1179 = bitcast i8* %1176 to double*
  %1180 = load double, double* %1179, align 1
  %1181 = getelementptr inbounds i8, i8* %1176, i64 8
  %1182 = bitcast i8* %1181 to i64*
  %1183 = load i64, i64* %1182, align 1
  %1184 = load double, double* inttoptr (i64 6295680 to double*)
  %1185 = fadd double %1180, %1184
  %1186 = bitcast i8* %1175 to double*
  store double %1185, double* %1186, align 1
  %1187 = getelementptr inbounds i8, i8* %1175, i64 8
  %1188 = bitcast i8* %1187 to i64*
  store i64 %1183, i64* %1188, align 1
  store %struct.Memory* %loadMem_4006be, %struct.Memory** %MEMORY
  %loadMem_4006c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1193 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1192, i64 0, i64 2
  %YMM2.i235 = bitcast %union.VectorReg* %1193 to %"class.std::bitset"*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1194, i64 0, i64 3
  %XMM3.i236 = bitcast %union.VectorReg* %1195 to %union.vec128_t*
  %1196 = bitcast %"class.std::bitset"* %YMM2.i235 to i8*
  %1197 = bitcast %"class.std::bitset"* %YMM2.i235 to i8*
  %1198 = bitcast %union.vec128_t* %XMM3.i236 to i8*
  %1199 = load i64, i64* %PC.i234
  %1200 = add i64 %1199, 4
  store i64 %1200, i64* %PC.i234
  %1201 = bitcast i8* %1197 to double*
  %1202 = load double, double* %1201, align 1
  %1203 = getelementptr inbounds i8, i8* %1197, i64 8
  %1204 = bitcast i8* %1203 to i64*
  %1205 = load i64, i64* %1204, align 1
  %1206 = bitcast i8* %1198 to double*
  %1207 = load double, double* %1206, align 1
  %1208 = fmul double %1202, %1207
  %1209 = bitcast i8* %1196 to double*
  store double %1208, double* %1209, align 1
  %1210 = getelementptr inbounds i8, i8* %1196, i64 8
  %1211 = bitcast i8* %1210 to i64*
  store i64 %1205, i64* %1211, align 1
  store %struct.Memory* %loadMem_4006c7, %struct.Memory** %MEMORY
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1215, i64 0, i64 2
  %YMM2.i233 = bitcast %union.VectorReg* %1216 to %"class.std::bitset"*
  %1217 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %1218 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %1219 = load i64, i64* %PC.i232
  %1220 = add i64 %1219, 9
  store i64 %1220, i64* %PC.i232
  %1221 = bitcast i8* %1218 to double*
  %1222 = load double, double* %1221, align 1
  %1223 = getelementptr inbounds i8, i8* %1218, i64 8
  %1224 = bitcast i8* %1223 to i64*
  %1225 = load i64, i64* %1224, align 1
  %1226 = load double, double* inttoptr (i64 6295672 to double*)
  %1227 = fadd double %1222, %1226
  %1228 = bitcast i8* %1217 to double*
  store double %1227, double* %1228, align 1
  %1229 = getelementptr inbounds i8, i8* %1217, i64 8
  %1230 = bitcast i8* %1229 to i64*
  store i64 %1225, i64* %1230, align 1
  store %struct.Memory* %loadMem_4006cb, %struct.Memory** %MEMORY
  %loadMem_4006d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1234, i64 0, i64 1
  %YMM1.i230 = bitcast %union.VectorReg* %1235 to %"class.std::bitset"*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1236, i64 0, i64 2
  %XMM2.i231 = bitcast %union.VectorReg* %1237 to %union.vec128_t*
  %1238 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %1239 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %1240 = bitcast %union.vec128_t* %XMM2.i231 to i8*
  %1241 = load i64, i64* %PC.i229
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %PC.i229
  %1243 = bitcast i8* %1239 to double*
  %1244 = load double, double* %1243, align 1
  %1245 = getelementptr inbounds i8, i8* %1239, i64 8
  %1246 = bitcast i8* %1245 to i64*
  %1247 = load i64, i64* %1246, align 1
  %1248 = bitcast i8* %1240 to double*
  %1249 = load double, double* %1248, align 1
  %1250 = fmul double %1244, %1249
  %1251 = bitcast i8* %1238 to double*
  store double %1250, double* %1251, align 1
  %1252 = getelementptr inbounds i8, i8* %1238, i64 8
  %1253 = bitcast i8* %1252 to i64*
  store i64 %1247, i64* %1253, align 1
  store %struct.Memory* %loadMem_4006d4, %struct.Memory** %MEMORY
  %loadMem_4006d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1257, i64 0, i64 1
  %YMM1.i228 = bitcast %union.VectorReg* %1258 to %"class.std::bitset"*
  %1259 = bitcast %"class.std::bitset"* %YMM1.i228 to i8*
  %1260 = bitcast %"class.std::bitset"* %YMM1.i228 to i8*
  %1261 = load i64, i64* %PC.i227
  %1262 = add i64 %1261, 9
  store i64 %1262, i64* %PC.i227
  %1263 = bitcast i8* %1260 to double*
  %1264 = load double, double* %1263, align 1
  %1265 = getelementptr inbounds i8, i8* %1260, i64 8
  %1266 = bitcast i8* %1265 to i64*
  %1267 = load i64, i64* %1266, align 1
  %1268 = load double, double* inttoptr (i64 6295664 to double*)
  %1269 = fadd double %1264, %1268
  %1270 = bitcast i8* %1259 to double*
  store double %1269, double* %1270, align 1
  %1271 = getelementptr inbounds i8, i8* %1259, i64 8
  %1272 = bitcast i8* %1271 to i64*
  store i64 %1267, i64* %1272, align 1
  store %struct.Memory* %loadMem_4006d8, %struct.Memory** %MEMORY
  %loadMem_4006e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1276, i64 0, i64 0
  %YMM0.i225 = bitcast %union.VectorReg* %1277 to %"class.std::bitset"*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1278, i64 0, i64 1
  %XMM1.i226 = bitcast %union.VectorReg* %1279 to %union.vec128_t*
  %1280 = bitcast %"class.std::bitset"* %YMM0.i225 to i8*
  %1281 = bitcast %"class.std::bitset"* %YMM0.i225 to i8*
  %1282 = bitcast %union.vec128_t* %XMM1.i226 to i8*
  %1283 = load i64, i64* %PC.i224
  %1284 = add i64 %1283, 4
  store i64 %1284, i64* %PC.i224
  %1285 = bitcast i8* %1281 to double*
  %1286 = load double, double* %1285, align 1
  %1287 = getelementptr inbounds i8, i8* %1281, i64 8
  %1288 = bitcast i8* %1287 to i64*
  %1289 = load i64, i64* %1288, align 1
  %1290 = bitcast i8* %1282 to double*
  %1291 = load double, double* %1290, align 1
  %1292 = fmul double %1286, %1291
  %1293 = bitcast i8* %1280 to double*
  store double %1292, double* %1293, align 1
  %1294 = getelementptr inbounds i8, i8* %1280, i64 8
  %1295 = bitcast i8* %1294 to i64*
  store i64 %1289, i64* %1295, align 1
  store %struct.Memory* %loadMem_4006e1, %struct.Memory** %MEMORY
  %loadMem_4006e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1299, i64 0, i64 0
  %YMM0.i223 = bitcast %union.VectorReg* %1300 to %"class.std::bitset"*
  %1301 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %1302 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %1303 = load i64, i64* %PC.i222
  %1304 = add i64 %1303, 9
  store i64 %1304, i64* %PC.i222
  %1305 = bitcast i8* %1302 to double*
  %1306 = load double, double* %1305, align 1
  %1307 = getelementptr inbounds i8, i8* %1302, i64 8
  %1308 = bitcast i8* %1307 to i64*
  %1309 = load i64, i64* %1308, align 1
  %1310 = load double, double* inttoptr (i64 6296200 to double*)
  %1311 = fadd double %1306, %1310
  %1312 = bitcast i8* %1301 to double*
  store double %1311, double* %1312, align 1
  %1313 = getelementptr inbounds i8, i8* %1301, i64 8
  %1314 = bitcast i8* %1313 to i64*
  store i64 %1309, i64* %1314, align 1
  store %struct.Memory* %loadMem_4006e5, %struct.Memory** %MEMORY
  %loadMem_4006ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 15
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1321, i64 0, i64 0
  %XMM0.i221 = bitcast %union.VectorReg* %1322 to %union.vec128_t*
  %1323 = load i64, i64* %RBP.i220
  %1324 = sub i64 %1323, 32
  %1325 = bitcast %union.vec128_t* %XMM0.i221 to i8*
  %1326 = load i64, i64* %PC.i219
  %1327 = add i64 %1326, 5
  store i64 %1327, i64* %PC.i219
  %1328 = bitcast i8* %1325 to double*
  %1329 = load double, double* %1328, align 1
  %1330 = inttoptr i64 %1324 to double*
  store double %1329, double* %1330
  store %struct.Memory* %loadMem_4006ee, %struct.Memory** %MEMORY
  %loadMem_4006f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 15
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1337, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %1338 to %"class.std::bitset"*
  %1339 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %1340 = load i64, i64* %RBP.i217
  %1341 = sub i64 %1340, 16
  %1342 = load i64, i64* %PC.i216
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %PC.i216
  %1344 = inttoptr i64 %1341 to double*
  %1345 = load double, double* %1344
  %1346 = bitcast i8* %1339 to double*
  store double %1345, double* %1346, align 1
  %1347 = getelementptr inbounds i8, i8* %1339, i64 8
  %1348 = bitcast i8* %1347 to double*
  store double 0.000000e+00, double* %1348, align 1
  store %struct.Memory* %loadMem_4006f3, %struct.Memory** %MEMORY
  %loadMem_4006f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 15
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1356 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1355, i64 0, i64 1
  %YMM1.i215 = bitcast %union.VectorReg* %1356 to %"class.std::bitset"*
  %1357 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %1358 = load i64, i64* %RBP.i214
  %1359 = sub i64 %1358, 32
  %1360 = load i64, i64* %PC.i213
  %1361 = add i64 %1360, 5
  store i64 %1361, i64* %PC.i213
  %1362 = inttoptr i64 %1359 to double*
  %1363 = load double, double* %1362
  %1364 = bitcast i8* %1357 to double*
  store double %1363, double* %1364, align 1
  %1365 = getelementptr inbounds i8, i8* %1357, i64 8
  %1366 = bitcast i8* %1365 to double*
  store double 0.000000e+00, double* %1366, align 1
  store %struct.Memory* %loadMem_4006f8, %struct.Memory** %MEMORY
  %loadMem_4006fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1373, i64 0, i64 1
  %YMM1.i212 = bitcast %union.VectorReg* %1374 to %"class.std::bitset"*
  %1375 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1376 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1377 = load i64, i64* %RBP.i211
  %1378 = sub i64 %1377, 32
  %1379 = load i64, i64* %PC.i210
  %1380 = add i64 %1379, 5
  store i64 %1380, i64* %PC.i210
  %1381 = bitcast i8* %1376 to double*
  %1382 = load double, double* %1381, align 1
  %1383 = getelementptr inbounds i8, i8* %1376, i64 8
  %1384 = bitcast i8* %1383 to i64*
  %1385 = load i64, i64* %1384, align 1
  %1386 = inttoptr i64 %1378 to double*
  %1387 = load double, double* %1386
  %1388 = fmul double %1382, %1387
  %1389 = bitcast i8* %1375 to double*
  store double %1388, double* %1389, align 1
  %1390 = getelementptr inbounds i8, i8* %1375, i64 8
  %1391 = bitcast i8* %1390 to i64*
  store i64 %1385, i64* %1391, align 1
  store %struct.Memory* %loadMem_4006fd, %struct.Memory** %MEMORY
  %loadMem_400702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 15
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1399 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1398, i64 0, i64 1
  %YMM1.i209 = bitcast %union.VectorReg* %1399 to %"class.std::bitset"*
  %1400 = bitcast %"class.std::bitset"* %YMM1.i209 to i8*
  %1401 = bitcast %"class.std::bitset"* %YMM1.i209 to i8*
  %1402 = load i64, i64* %RBP.i208
  %1403 = sub i64 %1402, 24
  %1404 = load i64, i64* %PC.i207
  %1405 = add i64 %1404, 5
  store i64 %1405, i64* %PC.i207
  %1406 = bitcast i8* %1401 to double*
  %1407 = load double, double* %1406, align 1
  %1408 = getelementptr inbounds i8, i8* %1401, i64 8
  %1409 = bitcast i8* %1408 to i64*
  %1410 = load i64, i64* %1409, align 1
  %1411 = inttoptr i64 %1403 to double*
  %1412 = load double, double* %1411
  %1413 = fmul double %1407, %1412
  %1414 = bitcast i8* %1400 to double*
  store double %1413, double* %1414, align 1
  %1415 = getelementptr inbounds i8, i8* %1400, i64 8
  %1416 = bitcast i8* %1415 to i64*
  store i64 %1410, i64* %1416, align 1
  store %struct.Memory* %loadMem_400702, %struct.Memory** %MEMORY
  %loadMem_400707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1421 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1420, i64 0, i64 2
  %YMM2.i206 = bitcast %union.VectorReg* %1421 to %"class.std::bitset"*
  %1422 = bitcast %"class.std::bitset"* %YMM2.i206 to i8*
  %1423 = load i64, i64* %PC.i205
  %1424 = add i64 %1423, 9
  store i64 %1424, i64* %PC.i205
  %1425 = load double, double* inttoptr (i64 6295648 to double*)
  %1426 = bitcast i8* %1422 to double*
  store double %1425, double* %1426, align 1
  %1427 = getelementptr inbounds i8, i8* %1422, i64 8
  %1428 = bitcast i8* %1427 to double*
  store double 0.000000e+00, double* %1428, align 1
  store %struct.Memory* %loadMem_400707, %struct.Memory** %MEMORY
  %loadMem_400710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 15
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1435, i64 0, i64 2
  %YMM2.i204 = bitcast %union.VectorReg* %1436 to %"class.std::bitset"*
  %1437 = bitcast %"class.std::bitset"* %YMM2.i204 to i8*
  %1438 = bitcast %"class.std::bitset"* %YMM2.i204 to i8*
  %1439 = load i64, i64* %RBP.i203
  %1440 = sub i64 %1439, 40
  %1441 = load i64, i64* %PC.i202
  %1442 = add i64 %1441, 5
  store i64 %1442, i64* %PC.i202
  %1443 = bitcast i8* %1438 to double*
  %1444 = load double, double* %1443, align 1
  %1445 = getelementptr inbounds i8, i8* %1438, i64 8
  %1446 = bitcast i8* %1445 to i64*
  %1447 = load i64, i64* %1446, align 1
  %1448 = inttoptr i64 %1440 to double*
  %1449 = load double, double* %1448
  %1450 = fmul double %1444, %1449
  %1451 = bitcast i8* %1437 to double*
  store double %1450, double* %1451, align 1
  %1452 = getelementptr inbounds i8, i8* %1437, i64 8
  %1453 = bitcast i8* %1452 to i64*
  store i64 %1447, i64* %1453, align 1
  store %struct.Memory* %loadMem_400710, %struct.Memory** %MEMORY
  %loadMem_400715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1457, i64 0, i64 2
  %YMM2.i201 = bitcast %union.VectorReg* %1458 to %"class.std::bitset"*
  %1459 = bitcast %"class.std::bitset"* %YMM2.i201 to i8*
  %1460 = bitcast %"class.std::bitset"* %YMM2.i201 to i8*
  %1461 = load i64, i64* %PC.i200
  %1462 = add i64 %1461, 9
  store i64 %1462, i64* %PC.i200
  %1463 = bitcast i8* %1460 to double*
  %1464 = load double, double* %1463, align 1
  %1465 = getelementptr inbounds i8, i8* %1460, i64 8
  %1466 = bitcast i8* %1465 to i64*
  %1467 = load i64, i64* %1466, align 1
  %1468 = load double, double* inttoptr (i64 6295640 to double*)
  %1469 = fadd double %1464, %1468
  %1470 = bitcast i8* %1459 to double*
  store double %1469, double* %1470, align 1
  %1471 = getelementptr inbounds i8, i8* %1459, i64 8
  %1472 = bitcast i8* %1471 to i64*
  store i64 %1467, i64* %1472, align 1
  store %struct.Memory* %loadMem_400715, %struct.Memory** %MEMORY
  %loadMem_40071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1479, i64 0, i64 2
  %YMM2.i199 = bitcast %union.VectorReg* %1480 to %"class.std::bitset"*
  %1481 = bitcast %"class.std::bitset"* %YMM2.i199 to i8*
  %1482 = bitcast %"class.std::bitset"* %YMM2.i199 to i8*
  %1483 = load i64, i64* %RBP.i198
  %1484 = sub i64 %1483, 40
  %1485 = load i64, i64* %PC.i197
  %1486 = add i64 %1485, 5
  store i64 %1486, i64* %PC.i197
  %1487 = bitcast i8* %1482 to double*
  %1488 = load double, double* %1487, align 1
  %1489 = getelementptr inbounds i8, i8* %1482, i64 8
  %1490 = bitcast i8* %1489 to i64*
  %1491 = load i64, i64* %1490, align 1
  %1492 = inttoptr i64 %1484 to double*
  %1493 = load double, double* %1492
  %1494 = fmul double %1488, %1493
  %1495 = bitcast i8* %1481 to double*
  store double %1494, double* %1495, align 1
  %1496 = getelementptr inbounds i8, i8* %1481, i64 8
  %1497 = bitcast i8* %1496 to i64*
  store i64 %1491, i64* %1497, align 1
  store %struct.Memory* %loadMem_40071e, %struct.Memory** %MEMORY
  %loadMem_400723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1502 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1501, i64 0, i64 2
  %YMM2.i196 = bitcast %union.VectorReg* %1502 to %"class.std::bitset"*
  %1503 = bitcast %"class.std::bitset"* %YMM2.i196 to i8*
  %1504 = bitcast %"class.std::bitset"* %YMM2.i196 to i8*
  %1505 = load i64, i64* %PC.i195
  %1506 = add i64 %1505, 9
  store i64 %1506, i64* %PC.i195
  %1507 = bitcast i8* %1504 to double*
  %1508 = load double, double* %1507, align 1
  %1509 = getelementptr inbounds i8, i8* %1504, i64 8
  %1510 = bitcast i8* %1509 to i64*
  %1511 = load i64, i64* %1510, align 1
  %1512 = load double, double* inttoptr (i64 6295632 to double*)
  %1513 = fadd double %1508, %1512
  %1514 = bitcast i8* %1503 to double*
  store double %1513, double* %1514, align 1
  %1515 = getelementptr inbounds i8, i8* %1503, i64 8
  %1516 = bitcast i8* %1515 to i64*
  store i64 %1511, i64* %1516, align 1
  store %struct.Memory* %loadMem_400723, %struct.Memory** %MEMORY
  %loadMem_40072c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1523, i64 0, i64 2
  %YMM2.i194 = bitcast %union.VectorReg* %1524 to %"class.std::bitset"*
  %1525 = bitcast %"class.std::bitset"* %YMM2.i194 to i8*
  %1526 = bitcast %"class.std::bitset"* %YMM2.i194 to i8*
  %1527 = load i64, i64* %RBP.i193
  %1528 = sub i64 %1527, 40
  %1529 = load i64, i64* %PC.i192
  %1530 = add i64 %1529, 5
  store i64 %1530, i64* %PC.i192
  %1531 = bitcast i8* %1526 to double*
  %1532 = load double, double* %1531, align 1
  %1533 = getelementptr inbounds i8, i8* %1526, i64 8
  %1534 = bitcast i8* %1533 to i64*
  %1535 = load i64, i64* %1534, align 1
  %1536 = inttoptr i64 %1528 to double*
  %1537 = load double, double* %1536
  %1538 = fmul double %1532, %1537
  %1539 = bitcast i8* %1525 to double*
  store double %1538, double* %1539, align 1
  %1540 = getelementptr inbounds i8, i8* %1525, i64 8
  %1541 = bitcast i8* %1540 to i64*
  store i64 %1535, i64* %1541, align 1
  store %struct.Memory* %loadMem_40072c, %struct.Memory** %MEMORY
  %loadMem_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1546 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1545, i64 0, i64 2
  %YMM2.i191 = bitcast %union.VectorReg* %1546 to %"class.std::bitset"*
  %1547 = bitcast %"class.std::bitset"* %YMM2.i191 to i8*
  %1548 = bitcast %"class.std::bitset"* %YMM2.i191 to i8*
  %1549 = load i64, i64* %PC.i190
  %1550 = add i64 %1549, 9
  store i64 %1550, i64* %PC.i190
  %1551 = bitcast i8* %1548 to double*
  %1552 = load double, double* %1551, align 1
  %1553 = getelementptr inbounds i8, i8* %1548, i64 8
  %1554 = bitcast i8* %1553 to i64*
  %1555 = load i64, i64* %1554, align 1
  %1556 = load double, double* inttoptr (i64 6295624 to double*)
  %1557 = fadd double %1552, %1556
  %1558 = bitcast i8* %1547 to double*
  store double %1557, double* %1558, align 1
  %1559 = getelementptr inbounds i8, i8* %1547, i64 8
  %1560 = bitcast i8* %1559 to i64*
  store i64 %1555, i64* %1560, align 1
  store %struct.Memory* %loadMem_400731, %struct.Memory** %MEMORY
  %loadMem_40073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 15
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1567, i64 0, i64 2
  %YMM2.i189 = bitcast %union.VectorReg* %1568 to %"class.std::bitset"*
  %1569 = bitcast %"class.std::bitset"* %YMM2.i189 to i8*
  %1570 = bitcast %"class.std::bitset"* %YMM2.i189 to i8*
  %1571 = load i64, i64* %RBP.i188
  %1572 = sub i64 %1571, 40
  %1573 = load i64, i64* %PC.i187
  %1574 = add i64 %1573, 5
  store i64 %1574, i64* %PC.i187
  %1575 = bitcast i8* %1570 to double*
  %1576 = load double, double* %1575, align 1
  %1577 = getelementptr inbounds i8, i8* %1570, i64 8
  %1578 = bitcast i8* %1577 to i64*
  %1579 = load i64, i64* %1578, align 1
  %1580 = inttoptr i64 %1572 to double*
  %1581 = load double, double* %1580
  %1582 = fmul double %1576, %1581
  %1583 = bitcast i8* %1569 to double*
  store double %1582, double* %1583, align 1
  %1584 = getelementptr inbounds i8, i8* %1569, i64 8
  %1585 = bitcast i8* %1584 to i64*
  store i64 %1579, i64* %1585, align 1
  store %struct.Memory* %loadMem_40073a, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1589, i64 0, i64 2
  %YMM2.i186 = bitcast %union.VectorReg* %1590 to %"class.std::bitset"*
  %1591 = bitcast %"class.std::bitset"* %YMM2.i186 to i8*
  %1592 = bitcast %"class.std::bitset"* %YMM2.i186 to i8*
  %1593 = load i64, i64* %PC.i185
  %1594 = add i64 %1593, 9
  store i64 %1594, i64* %PC.i185
  %1595 = bitcast i8* %1592 to double*
  %1596 = load double, double* %1595, align 1
  %1597 = getelementptr inbounds i8, i8* %1592, i64 8
  %1598 = bitcast i8* %1597 to i64*
  %1599 = load i64, i64* %1598, align 1
  %1600 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1601 = fadd double %1596, %1600
  %1602 = bitcast i8* %1591 to double*
  store double %1601, double* %1602, align 1
  %1603 = getelementptr inbounds i8, i8* %1591, i64 8
  %1604 = bitcast i8* %1603 to i64*
  store i64 %1599, i64* %1604, align 1
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 2
  %YMM2.i184 = bitcast %union.VectorReg* %1612 to %"class.std::bitset"*
  %1613 = bitcast %"class.std::bitset"* %YMM2.i184 to i8*
  %1614 = bitcast %"class.std::bitset"* %YMM2.i184 to i8*
  %1615 = load i64, i64* %RBP.i183
  %1616 = sub i64 %1615, 40
  %1617 = load i64, i64* %PC.i182
  %1618 = add i64 %1617, 5
  store i64 %1618, i64* %PC.i182
  %1619 = bitcast i8* %1614 to double*
  %1620 = load double, double* %1619, align 1
  %1621 = getelementptr inbounds i8, i8* %1614, i64 8
  %1622 = bitcast i8* %1621 to i64*
  %1623 = load i64, i64* %1622, align 1
  %1624 = inttoptr i64 %1616 to double*
  %1625 = load double, double* %1624
  %1626 = fmul double %1620, %1625
  %1627 = bitcast i8* %1613 to double*
  store double %1626, double* %1627, align 1
  %1628 = getelementptr inbounds i8, i8* %1613, i64 8
  %1629 = bitcast i8* %1628 to i64*
  store i64 %1623, i64* %1629, align 1
  store %struct.Memory* %loadMem_400748, %struct.Memory** %MEMORY
  %loadMem_40074d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 2
  %YMM2.i181 = bitcast %union.VectorReg* %1634 to %"class.std::bitset"*
  %1635 = bitcast %"class.std::bitset"* %YMM2.i181 to i8*
  %1636 = bitcast %"class.std::bitset"* %YMM2.i181 to i8*
  %1637 = load i64, i64* %PC.i180
  %1638 = add i64 %1637, 9
  store i64 %1638, i64* %PC.i180
  %1639 = bitcast i8* %1636 to double*
  %1640 = load double, double* %1639, align 1
  %1641 = getelementptr inbounds i8, i8* %1636, i64 8
  %1642 = bitcast i8* %1641 to i64*
  %1643 = load i64, i64* %1642, align 1
  %1644 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1645 = fadd double %1640, %1644
  %1646 = bitcast i8* %1635 to double*
  store double %1645, double* %1646, align 1
  %1647 = getelementptr inbounds i8, i8* %1635, i64 8
  %1648 = bitcast i8* %1647 to i64*
  store i64 %1643, i64* %1648, align 1
  store %struct.Memory* %loadMem_40074d, %struct.Memory** %MEMORY
  %loadMem_400756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 15
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1655, i64 0, i64 2
  %YMM2.i179 = bitcast %union.VectorReg* %1656 to %"class.std::bitset"*
  %1657 = bitcast %"class.std::bitset"* %YMM2.i179 to i8*
  %1658 = bitcast %"class.std::bitset"* %YMM2.i179 to i8*
  %1659 = load i64, i64* %RBP.i178
  %1660 = sub i64 %1659, 40
  %1661 = load i64, i64* %PC.i177
  %1662 = add i64 %1661, 5
  store i64 %1662, i64* %PC.i177
  %1663 = bitcast i8* %1658 to double*
  %1664 = load double, double* %1663, align 1
  %1665 = getelementptr inbounds i8, i8* %1658, i64 8
  %1666 = bitcast i8* %1665 to i64*
  %1667 = load i64, i64* %1666, align 1
  %1668 = inttoptr i64 %1660 to double*
  %1669 = load double, double* %1668
  %1670 = fmul double %1664, %1669
  %1671 = bitcast i8* %1657 to double*
  store double %1670, double* %1671, align 1
  %1672 = getelementptr inbounds i8, i8* %1657, i64 8
  %1673 = bitcast i8* %1672 to i64*
  store i64 %1667, i64* %1673, align 1
  store %struct.Memory* %loadMem_400756, %struct.Memory** %MEMORY
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1677, i64 0, i64 2
  %YMM2.i176 = bitcast %union.VectorReg* %1678 to %"class.std::bitset"*
  %1679 = bitcast %"class.std::bitset"* %YMM2.i176 to i8*
  %1680 = bitcast %"class.std::bitset"* %YMM2.i176 to i8*
  %1681 = load i64, i64* %PC.i175
  %1682 = add i64 %1681, 9
  store i64 %1682, i64* %PC.i175
  %1683 = bitcast i8* %1680 to double*
  %1684 = load double, double* %1683, align 1
  %1685 = getelementptr inbounds i8, i8* %1680, i64 8
  %1686 = bitcast i8* %1685 to i64*
  %1687 = load i64, i64* %1686, align 1
  %1688 = load double, double* inttoptr (i64 6296200 to double*)
  %1689 = fadd double %1684, %1688
  %1690 = bitcast i8* %1679 to double*
  store double %1689, double* %1690, align 1
  %1691 = getelementptr inbounds i8, i8* %1679, i64 8
  %1692 = bitcast i8* %1691 to i64*
  store i64 %1687, i64* %1692, align 1
  store %struct.Memory* %loadMem_40075b, %struct.Memory** %MEMORY
  %loadMem_400764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1696, i64 0, i64 1
  %YMM1.i173 = bitcast %union.VectorReg* %1697 to %"class.std::bitset"*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1699 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1698, i64 0, i64 2
  %XMM2.i174 = bitcast %union.VectorReg* %1699 to %union.vec128_t*
  %1700 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %1701 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %1702 = bitcast %union.vec128_t* %XMM2.i174 to i8*
  %1703 = load i64, i64* %PC.i172
  %1704 = add i64 %1703, 4
  store i64 %1704, i64* %PC.i172
  %1705 = bitcast i8* %1701 to double*
  %1706 = load double, double* %1705, align 1
  %1707 = getelementptr inbounds i8, i8* %1701, i64 8
  %1708 = bitcast i8* %1707 to i64*
  %1709 = load i64, i64* %1708, align 1
  %1710 = bitcast i8* %1702 to double*
  %1711 = load double, double* %1710, align 1
  %1712 = fmul double %1706, %1711
  %1713 = bitcast i8* %1700 to double*
  store double %1712, double* %1713, align 1
  %1714 = getelementptr inbounds i8, i8* %1700, i64 8
  %1715 = bitcast i8* %1714 to i64*
  store i64 %1709, i64* %1715, align 1
  store %struct.Memory* %loadMem_400764, %struct.Memory** %MEMORY
  %loadMem_400768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1719, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %1720 to %"class.std::bitset"*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1721, i64 0, i64 1
  %XMM1.i171 = bitcast %union.VectorReg* %1722 to %union.vec128_t*
  %1723 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %1724 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %1725 = bitcast %union.vec128_t* %XMM1.i171 to i8*
  %1726 = load i64, i64* %PC.i169
  %1727 = add i64 %1726, 4
  store i64 %1727, i64* %PC.i169
  %1728 = bitcast i8* %1724 to double*
  %1729 = load double, double* %1728, align 1
  %1730 = getelementptr inbounds i8, i8* %1724, i64 8
  %1731 = bitcast i8* %1730 to i64*
  %1732 = load i64, i64* %1731, align 1
  %1733 = bitcast i8* %1725 to double*
  %1734 = load double, double* %1733, align 1
  %1735 = fadd double %1729, %1734
  %1736 = bitcast i8* %1723 to double*
  store double %1735, double* %1736, align 1
  %1737 = getelementptr inbounds i8, i8* %1723, i64 8
  %1738 = bitcast i8* %1737 to i64*
  store i64 %1732, i64* %1738, align 1
  store %struct.Memory* %loadMem_400768, %struct.Memory** %MEMORY
  %loadMem_40076c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 15
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1745, i64 0, i64 0
  %XMM0.i168 = bitcast %union.VectorReg* %1746 to %union.vec128_t*
  %1747 = load i64, i64* %RBP.i167
  %1748 = sub i64 %1747, 16
  %1749 = bitcast %union.vec128_t* %XMM0.i168 to i8*
  %1750 = load i64, i64* %PC.i166
  %1751 = add i64 %1750, 5
  store i64 %1751, i64* %PC.i166
  %1752 = bitcast i8* %1749 to double*
  %1753 = load double, double* %1752, align 1
  %1754 = inttoptr i64 %1748 to double*
  store double %1753, double* %1754
  store %struct.Memory* %loadMem_40076c, %struct.Memory** %MEMORY
  %loadMem_400771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 1
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 15
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RBP.i165
  %1765 = sub i64 %1764, 72
  %1766 = load i64, i64* %PC.i163
  %1767 = add i64 %1766, 4
  store i64 %1767, i64* %PC.i163
  %1768 = inttoptr i64 %1765 to i64*
  %1769 = load i64, i64* %1768
  store i64 %1769, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_400771, %struct.Memory** %MEMORY
  %loadMem_400775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %1775 to i64*
  %1776 = load i64, i64* %RAX.i162
  %1777 = load i64, i64* %PC.i161
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC.i161
  %1779 = add i64 1, %1776
  store i64 %1779, i64* %RAX.i162, align 8
  %1780 = icmp ult i64 %1779, %1776
  %1781 = icmp ult i64 %1779, 1
  %1782 = or i1 %1780, %1781
  %1783 = zext i1 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1783, i8* %1784, align 1
  %1785 = trunc i64 %1779 to i32
  %1786 = and i32 %1785, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = xor i64 1, %1776
  %1793 = xor i64 %1792, %1779
  %1794 = lshr i64 %1793, 4
  %1795 = trunc i64 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1796, i8* %1797, align 1
  %1798 = icmp eq i64 %1779, 0
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1799, i8* %1800, align 1
  %1801 = lshr i64 %1779, 63
  %1802 = trunc i64 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1802, i8* %1803, align 1
  %1804 = lshr i64 %1776, 63
  %1805 = xor i64 %1801, %1804
  %1806 = add i64 %1805, %1801
  %1807 = icmp eq i64 %1806, 2
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1808, i8* %1809, align 1
  store %struct.Memory* %loadMem_400775, %struct.Memory** %MEMORY
  %loadMem_400779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 1
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 15
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %1818 to i64*
  %1819 = load i64, i64* %RBP.i160
  %1820 = sub i64 %1819, 72
  %1821 = load i64, i64* %RAX.i159
  %1822 = load i64, i64* %PC.i158
  %1823 = add i64 %1822, 4
  store i64 %1823, i64* %PC.i158
  %1824 = inttoptr i64 %1820 to i64*
  store i64 %1821, i64* %1824
  store %struct.Memory* %loadMem_400779, %struct.Memory** %MEMORY
  %loadMem_40077d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %PC.i157
  %1829 = add i64 %1828, -308
  %1830 = load i64, i64* %PC.i157
  %1831 = add i64 %1830, 5
  store i64 %1831, i64* %PC.i157
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1829, i64* %1832, align 8
  store %struct.Memory* %loadMem_40077d, %struct.Memory** %MEMORY
  br label %block_.L_400649

block_.L_400782:                                  ; preds = %block_.L_400649
  %loadMem_400782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 11
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1838 to i64*
  %1839 = load i64, i64* %PC.i156
  %1840 = add i64 %1839, 10
  store i64 %1840, i64* %PC.i156
  store i64 4197062, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400782, %struct.Memory** %MEMORY
  %loadMem_40078c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1844, i64 0, i64 0
  %YMM0.i154 = bitcast %union.VectorReg* %1845 to %"class.std::bitset"*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1846, i64 0, i64 0
  %XMM0.i155 = bitcast %union.VectorReg* %1847 to %union.vec128_t*
  %1848 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %1849 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %1850 = bitcast %union.vec128_t* %XMM0.i155 to i8*
  %1851 = load i64, i64* %PC.i153
  %1852 = add i64 %1851, 3
  store i64 %1852, i64* %PC.i153
  %1853 = bitcast i8* %1849 to i64*
  %1854 = load i64, i64* %1853, align 1
  %1855 = getelementptr inbounds i8, i8* %1849, i64 8
  %1856 = bitcast i8* %1855 to i64*
  %1857 = load i64, i64* %1856, align 1
  %1858 = bitcast i8* %1850 to i64*
  %1859 = load i64, i64* %1858, align 1
  %1860 = getelementptr inbounds i8, i8* %1850, i64 8
  %1861 = bitcast i8* %1860 to i64*
  %1862 = load i64, i64* %1861, align 1
  %1863 = xor i64 %1859, %1854
  %1864 = xor i64 %1862, %1857
  %1865 = trunc i64 %1863 to i32
  %1866 = lshr i64 %1863, 32
  %1867 = trunc i64 %1866 to i32
  %1868 = bitcast i8* %1848 to i32*
  store i32 %1865, i32* %1868, align 1
  %1869 = getelementptr inbounds i8, i8* %1848, i64 4
  %1870 = bitcast i8* %1869 to i32*
  store i32 %1867, i32* %1870, align 1
  %1871 = trunc i64 %1864 to i32
  %1872 = getelementptr inbounds i8, i8* %1848, i64 8
  %1873 = bitcast i8* %1872 to i32*
  store i32 %1871, i32* %1873, align 1
  %1874 = lshr i64 %1864, 32
  %1875 = trunc i64 %1874 to i32
  %1876 = getelementptr inbounds i8, i8* %1848, i64 12
  %1877 = bitcast i8* %1876 to i32*
  store i32 %1875, i32* %1877, align 1
  store %struct.Memory* %loadMem_40078c, %struct.Memory** %MEMORY
  %loadMem_40078f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1881, i64 0, i64 1
  %YMM1.i152 = bitcast %union.VectorReg* %1882 to %"class.std::bitset"*
  %1883 = bitcast %"class.std::bitset"* %YMM1.i152 to i8*
  %1884 = load i64, i64* %PC.i151
  %1885 = add i64 %1884, 665
  %1886 = load i64, i64* %PC.i151
  %1887 = add i64 %1886, 8
  store i64 %1887, i64* %PC.i151
  %1888 = inttoptr i64 %1885 to double*
  %1889 = load double, double* %1888
  %1890 = bitcast i8* %1883 to double*
  store double %1889, double* %1890, align 1
  %1891 = getelementptr inbounds i8, i8* %1883, i64 8
  %1892 = bitcast i8* %1891 to double*
  store double 0.000000e+00, double* %1892, align 1
  store %struct.Memory* %loadMem_40078f, %struct.Memory** %MEMORY
  %loadMem_400797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1896, i64 0, i64 2
  %YMM2.i150 = bitcast %union.VectorReg* %1897 to %"class.std::bitset"*
  %1898 = bitcast %"class.std::bitset"* %YMM2.i150 to i8*
  %1899 = load i64, i64* %PC.i149
  %1900 = add i64 %1899, 665
  %1901 = load i64, i64* %PC.i149
  %1902 = add i64 %1901, 8
  store i64 %1902, i64* %PC.i149
  %1903 = inttoptr i64 %1900 to double*
  %1904 = load double, double* %1903
  %1905 = bitcast i8* %1898 to double*
  store double %1904, double* %1905, align 1
  %1906 = getelementptr inbounds i8, i8* %1898, i64 8
  %1907 = bitcast i8* %1906 to double*
  store double 0.000000e+00, double* %1907, align 1
  store %struct.Memory* %loadMem_400797, %struct.Memory** %MEMORY
  %loadMem_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1912 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1911, i64 0, i64 3
  %YMM3.i148 = bitcast %union.VectorReg* %1912 to %"class.std::bitset"*
  %1913 = bitcast %"class.std::bitset"* %YMM3.i148 to i8*
  %1914 = load i64, i64* %PC.i147
  %1915 = add i64 %1914, 9
  store i64 %1915, i64* %PC.i147
  %1916 = load double, double* inttoptr (i64 6296160 to double*)
  %1917 = bitcast i8* %1913 to double*
  store double %1916, double* %1917, align 1
  %1918 = getelementptr inbounds i8, i8* %1913, i64 8
  %1919 = bitcast i8* %1918 to double*
  store double 0.000000e+00, double* %1919, align 1
  store %struct.Memory* %loadMem_40079f, %struct.Memory** %MEMORY
  %loadMem_4007a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1923, i64 0, i64 3
  %YMM3.i146 = bitcast %union.VectorReg* %1924 to %"class.std::bitset"*
  %1925 = bitcast %"class.std::bitset"* %YMM3.i146 to i8*
  %1926 = bitcast %"class.std::bitset"* %YMM3.i146 to i8*
  %1927 = load i64, i64* %PC.i145
  %1928 = add i64 %1927, 9
  store i64 %1928, i64* %PC.i145
  %1929 = bitcast i8* %1926 to double*
  %1930 = load double, double* %1929, align 1
  %1931 = getelementptr inbounds i8, i8* %1926, i64 8
  %1932 = bitcast i8* %1931 to i64*
  %1933 = load i64, i64* %1932, align 1
  %1934 = load double, double* inttoptr (i64 6296224 to double*)
  %1935 = fdiv double %1930, %1934
  %1936 = bitcast i8* %1925 to double*
  store double %1935, double* %1936, align 1
  %1937 = getelementptr inbounds i8, i8* %1925, i64 8
  %1938 = bitcast i8* %1937 to i64*
  store i64 %1933, i64* %1938, align 1
  store %struct.Memory* %loadMem_4007a8, %struct.Memory** %MEMORY
  %loadMem_4007b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 15
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1945, i64 0, i64 3
  %XMM3.i144 = bitcast %union.VectorReg* %1946 to %union.vec128_t*
  %1947 = load i64, i64* %RBP.i143
  %1948 = sub i64 %1947, 24
  %1949 = bitcast %union.vec128_t* %XMM3.i144 to i8*
  %1950 = load i64, i64* %PC.i142
  %1951 = add i64 %1950, 5
  store i64 %1951, i64* %PC.i142
  %1952 = bitcast i8* %1949 to double*
  %1953 = load double, double* %1952, align 1
  %1954 = inttoptr i64 %1948 to double*
  store double %1953, double* %1954
  store %struct.Memory* %loadMem_4007b1, %struct.Memory** %MEMORY
  %loadMem_4007b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 15
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1961, i64 0, i64 3
  %YMM3.i141 = bitcast %union.VectorReg* %1962 to %"class.std::bitset"*
  %1963 = bitcast %"class.std::bitset"* %YMM3.i141 to i8*
  %1964 = load i64, i64* %RBP.i140
  %1965 = sub i64 %1964, 24
  %1966 = load i64, i64* %PC.i139
  %1967 = add i64 %1966, 5
  store i64 %1967, i64* %PC.i139
  %1968 = inttoptr i64 %1965 to double*
  %1969 = load double, double* %1968
  %1970 = bitcast i8* %1963 to double*
  store double %1969, double* %1970, align 1
  %1971 = getelementptr inbounds i8, i8* %1963, i64 8
  %1972 = bitcast i8* %1971 to double*
  store double 0.000000e+00, double* %1972, align 1
  store %struct.Memory* %loadMem_4007b6, %struct.Memory** %MEMORY
  %loadMem_4007bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 3
  %YMM3.i138 = bitcast %union.VectorReg* %1980 to %"class.std::bitset"*
  %1981 = bitcast %"class.std::bitset"* %YMM3.i138 to i8*
  %1982 = bitcast %"class.std::bitset"* %YMM3.i138 to i8*
  %1983 = load i64, i64* %RBP.i137
  %1984 = sub i64 %1983, 24
  %1985 = load i64, i64* %PC.i136
  %1986 = add i64 %1985, 5
  store i64 %1986, i64* %PC.i136
  %1987 = bitcast i8* %1982 to double*
  %1988 = load double, double* %1987, align 1
  %1989 = getelementptr inbounds i8, i8* %1982, i64 8
  %1990 = bitcast i8* %1989 to i64*
  %1991 = load i64, i64* %1990, align 1
  %1992 = inttoptr i64 %1984 to double*
  %1993 = load double, double* %1992
  %1994 = fmul double %1988, %1993
  %1995 = bitcast i8* %1981 to double*
  store double %1994, double* %1995, align 1
  %1996 = getelementptr inbounds i8, i8* %1981, i64 8
  %1997 = bitcast i8* %1996 to i64*
  store i64 %1991, i64* %1997, align 1
  store %struct.Memory* %loadMem_4007bb, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2004, i64 0, i64 3
  %XMM3.i135 = bitcast %union.VectorReg* %2005 to %union.vec128_t*
  %2006 = load i64, i64* %RBP.i134
  %2007 = sub i64 %2006, 40
  %2008 = bitcast %union.vec128_t* %XMM3.i135 to i8*
  %2009 = load i64, i64* %PC.i133
  %2010 = add i64 %2009, 5
  store i64 %2010, i64* %PC.i133
  %2011 = bitcast i8* %2008 to double*
  %2012 = load double, double* %2011, align 1
  %2013 = inttoptr i64 %2007 to double*
  store double %2012, double* %2013
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2020, i64 0, i64 3
  %YMM3.i132 = bitcast %union.VectorReg* %2021 to %"class.std::bitset"*
  %2022 = bitcast %"class.std::bitset"* %YMM3.i132 to i8*
  %2023 = load i64, i64* %RBP.i131
  %2024 = sub i64 %2023, 24
  %2025 = load i64, i64* %PC.i130
  %2026 = add i64 %2025, 5
  store i64 %2026, i64* %PC.i130
  %2027 = inttoptr i64 %2024 to double*
  %2028 = load double, double* %2027
  %2029 = bitcast i8* %2022 to double*
  store double %2028, double* %2029, align 1
  %2030 = getelementptr inbounds i8, i8* %2022, i64 8
  %2031 = bitcast i8* %2030 to double*
  store double 0.000000e+00, double* %2031, align 1
  store %struct.Memory* %loadMem_4007c5, %struct.Memory** %MEMORY
  %loadMem_4007ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 4
  %YMM4.i129 = bitcast %union.VectorReg* %2036 to %"class.std::bitset"*
  %2037 = bitcast %"class.std::bitset"* %YMM4.i129 to i8*
  %2038 = load i64, i64* %PC.i128
  %2039 = add i64 %2038, 9
  store i64 %2039, i64* %PC.i128
  %2040 = load double, double* inttoptr (i64 6295648 to double*)
  %2041 = bitcast i8* %2037 to double*
  store double %2040, double* %2041, align 1
  %2042 = getelementptr inbounds i8, i8* %2037, i64 8
  %2043 = bitcast i8* %2042 to double*
  store double 0.000000e+00, double* %2043, align 1
  store %struct.Memory* %loadMem_4007ca, %struct.Memory** %MEMORY
  %loadMem_4007d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 33
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 15
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2051 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2050, i64 0, i64 4
  %YMM4.i127 = bitcast %union.VectorReg* %2051 to %"class.std::bitset"*
  %2052 = bitcast %"class.std::bitset"* %YMM4.i127 to i8*
  %2053 = bitcast %"class.std::bitset"* %YMM4.i127 to i8*
  %2054 = load i64, i64* %RBP.i126
  %2055 = sub i64 %2054, 40
  %2056 = load i64, i64* %PC.i125
  %2057 = add i64 %2056, 5
  store i64 %2057, i64* %PC.i125
  %2058 = bitcast i8* %2053 to double*
  %2059 = load double, double* %2058, align 1
  %2060 = getelementptr inbounds i8, i8* %2053, i64 8
  %2061 = bitcast i8* %2060 to i64*
  %2062 = load i64, i64* %2061, align 1
  %2063 = inttoptr i64 %2055 to double*
  %2064 = load double, double* %2063
  %2065 = fmul double %2059, %2064
  %2066 = bitcast i8* %2052 to double*
  store double %2065, double* %2066, align 1
  %2067 = getelementptr inbounds i8, i8* %2052, i64 8
  %2068 = bitcast i8* %2067 to i64*
  store i64 %2062, i64* %2068, align 1
  store %struct.Memory* %loadMem_4007d3, %struct.Memory** %MEMORY
  %loadMem_4007d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2073 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2072, i64 0, i64 4
  %YMM4.i124 = bitcast %union.VectorReg* %2073 to %"class.std::bitset"*
  %2074 = bitcast %"class.std::bitset"* %YMM4.i124 to i8*
  %2075 = bitcast %"class.std::bitset"* %YMM4.i124 to i8*
  %2076 = load i64, i64* %PC.i123
  %2077 = add i64 %2076, 9
  store i64 %2077, i64* %PC.i123
  %2078 = bitcast i8* %2075 to double*
  %2079 = load double, double* %2078, align 1
  %2080 = getelementptr inbounds i8, i8* %2075, i64 8
  %2081 = bitcast i8* %2080 to i64*
  %2082 = load i64, i64* %2081, align 1
  %2083 = load double, double* inttoptr (i64 6295640 to double*)
  %2084 = fadd double %2079, %2083
  %2085 = bitcast i8* %2074 to double*
  store double %2084, double* %2085, align 1
  %2086 = getelementptr inbounds i8, i8* %2074, i64 8
  %2087 = bitcast i8* %2086 to i64*
  store i64 %2082, i64* %2087, align 1
  store %struct.Memory* %loadMem_4007d8, %struct.Memory** %MEMORY
  %loadMem_4007e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 15
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2094, i64 0, i64 4
  %YMM4.i122 = bitcast %union.VectorReg* %2095 to %"class.std::bitset"*
  %2096 = bitcast %"class.std::bitset"* %YMM4.i122 to i8*
  %2097 = bitcast %"class.std::bitset"* %YMM4.i122 to i8*
  %2098 = load i64, i64* %RBP.i121
  %2099 = sub i64 %2098, 40
  %2100 = load i64, i64* %PC.i120
  %2101 = add i64 %2100, 5
  store i64 %2101, i64* %PC.i120
  %2102 = bitcast i8* %2097 to double*
  %2103 = load double, double* %2102, align 1
  %2104 = getelementptr inbounds i8, i8* %2097, i64 8
  %2105 = bitcast i8* %2104 to i64*
  %2106 = load i64, i64* %2105, align 1
  %2107 = inttoptr i64 %2099 to double*
  %2108 = load double, double* %2107
  %2109 = fmul double %2103, %2108
  %2110 = bitcast i8* %2096 to double*
  store double %2109, double* %2110, align 1
  %2111 = getelementptr inbounds i8, i8* %2096, i64 8
  %2112 = bitcast i8* %2111 to i64*
  store i64 %2106, i64* %2112, align 1
  store %struct.Memory* %loadMem_4007e1, %struct.Memory** %MEMORY
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2116, i64 0, i64 4
  %YMM4.i119 = bitcast %union.VectorReg* %2117 to %"class.std::bitset"*
  %2118 = bitcast %"class.std::bitset"* %YMM4.i119 to i8*
  %2119 = bitcast %"class.std::bitset"* %YMM4.i119 to i8*
  %2120 = load i64, i64* %PC.i118
  %2121 = add i64 %2120, 9
  store i64 %2121, i64* %PC.i118
  %2122 = bitcast i8* %2119 to double*
  %2123 = load double, double* %2122, align 1
  %2124 = getelementptr inbounds i8, i8* %2119, i64 8
  %2125 = bitcast i8* %2124 to i64*
  %2126 = load i64, i64* %2125, align 1
  %2127 = load double, double* inttoptr (i64 6295632 to double*)
  %2128 = fadd double %2123, %2127
  %2129 = bitcast i8* %2118 to double*
  store double %2128, double* %2129, align 1
  %2130 = getelementptr inbounds i8, i8* %2118, i64 8
  %2131 = bitcast i8* %2130 to i64*
  store i64 %2126, i64* %2131, align 1
  store %struct.Memory* %loadMem_4007e6, %struct.Memory** %MEMORY
  %loadMem_4007ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2139 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2138, i64 0, i64 4
  %YMM4.i117 = bitcast %union.VectorReg* %2139 to %"class.std::bitset"*
  %2140 = bitcast %"class.std::bitset"* %YMM4.i117 to i8*
  %2141 = bitcast %"class.std::bitset"* %YMM4.i117 to i8*
  %2142 = load i64, i64* %RBP.i116
  %2143 = sub i64 %2142, 40
  %2144 = load i64, i64* %PC.i115
  %2145 = add i64 %2144, 5
  store i64 %2145, i64* %PC.i115
  %2146 = bitcast i8* %2141 to double*
  %2147 = load double, double* %2146, align 1
  %2148 = getelementptr inbounds i8, i8* %2141, i64 8
  %2149 = bitcast i8* %2148 to i64*
  %2150 = load i64, i64* %2149, align 1
  %2151 = inttoptr i64 %2143 to double*
  %2152 = load double, double* %2151
  %2153 = fmul double %2147, %2152
  %2154 = bitcast i8* %2140 to double*
  store double %2153, double* %2154, align 1
  %2155 = getelementptr inbounds i8, i8* %2140, i64 8
  %2156 = bitcast i8* %2155 to i64*
  store i64 %2150, i64* %2156, align 1
  store %struct.Memory* %loadMem_4007ef, %struct.Memory** %MEMORY
  %loadMem_4007f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2160, i64 0, i64 4
  %YMM4.i114 = bitcast %union.VectorReg* %2161 to %"class.std::bitset"*
  %2162 = bitcast %"class.std::bitset"* %YMM4.i114 to i8*
  %2163 = bitcast %"class.std::bitset"* %YMM4.i114 to i8*
  %2164 = load i64, i64* %PC.i113
  %2165 = add i64 %2164, 9
  store i64 %2165, i64* %PC.i113
  %2166 = bitcast i8* %2163 to double*
  %2167 = load double, double* %2166, align 1
  %2168 = getelementptr inbounds i8, i8* %2163, i64 8
  %2169 = bitcast i8* %2168 to i64*
  %2170 = load i64, i64* %2169, align 1
  %2171 = load double, double* inttoptr (i64 6295624 to double*)
  %2172 = fadd double %2167, %2171
  %2173 = bitcast i8* %2162 to double*
  store double %2172, double* %2173, align 1
  %2174 = getelementptr inbounds i8, i8* %2162, i64 8
  %2175 = bitcast i8* %2174 to i64*
  store i64 %2170, i64* %2175, align 1
  store %struct.Memory* %loadMem_4007f4, %struct.Memory** %MEMORY
  %loadMem_4007fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 33
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2178 to i64*
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 15
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2182, i64 0, i64 4
  %YMM4.i112 = bitcast %union.VectorReg* %2183 to %"class.std::bitset"*
  %2184 = bitcast %"class.std::bitset"* %YMM4.i112 to i8*
  %2185 = bitcast %"class.std::bitset"* %YMM4.i112 to i8*
  %2186 = load i64, i64* %RBP.i111
  %2187 = sub i64 %2186, 40
  %2188 = load i64, i64* %PC.i110
  %2189 = add i64 %2188, 5
  store i64 %2189, i64* %PC.i110
  %2190 = bitcast i8* %2185 to double*
  %2191 = load double, double* %2190, align 1
  %2192 = getelementptr inbounds i8, i8* %2185, i64 8
  %2193 = bitcast i8* %2192 to i64*
  %2194 = load i64, i64* %2193, align 1
  %2195 = inttoptr i64 %2187 to double*
  %2196 = load double, double* %2195
  %2197 = fmul double %2191, %2196
  %2198 = bitcast i8* %2184 to double*
  store double %2197, double* %2198, align 1
  %2199 = getelementptr inbounds i8, i8* %2184, i64 8
  %2200 = bitcast i8* %2199 to i64*
  store i64 %2194, i64* %2200, align 1
  store %struct.Memory* %loadMem_4007fd, %struct.Memory** %MEMORY
  %loadMem_400802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2204, i64 0, i64 4
  %YMM4.i109 = bitcast %union.VectorReg* %2205 to %"class.std::bitset"*
  %2206 = bitcast %"class.std::bitset"* %YMM4.i109 to i8*
  %2207 = bitcast %"class.std::bitset"* %YMM4.i109 to i8*
  %2208 = load i64, i64* %PC.i108
  %2209 = add i64 %2208, 9
  store i64 %2209, i64* %PC.i108
  %2210 = bitcast i8* %2207 to double*
  %2211 = load double, double* %2210, align 1
  %2212 = getelementptr inbounds i8, i8* %2207, i64 8
  %2213 = bitcast i8* %2212 to i64*
  %2214 = load i64, i64* %2213, align 1
  %2215 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %2216 = fadd double %2211, %2215
  %2217 = bitcast i8* %2206 to double*
  store double %2216, double* %2217, align 1
  %2218 = getelementptr inbounds i8, i8* %2206, i64 8
  %2219 = bitcast i8* %2218 to i64*
  store i64 %2214, i64* %2219, align 1
  store %struct.Memory* %loadMem_400802, %struct.Memory** %MEMORY
  %loadMem_40080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2226, i64 0, i64 4
  %YMM4.i107 = bitcast %union.VectorReg* %2227 to %"class.std::bitset"*
  %2228 = bitcast %"class.std::bitset"* %YMM4.i107 to i8*
  %2229 = bitcast %"class.std::bitset"* %YMM4.i107 to i8*
  %2230 = load i64, i64* %RBP.i106
  %2231 = sub i64 %2230, 40
  %2232 = load i64, i64* %PC.i105
  %2233 = add i64 %2232, 5
  store i64 %2233, i64* %PC.i105
  %2234 = bitcast i8* %2229 to double*
  %2235 = load double, double* %2234, align 1
  %2236 = getelementptr inbounds i8, i8* %2229, i64 8
  %2237 = bitcast i8* %2236 to i64*
  %2238 = load i64, i64* %2237, align 1
  %2239 = inttoptr i64 %2231 to double*
  %2240 = load double, double* %2239
  %2241 = fmul double %2235, %2240
  %2242 = bitcast i8* %2228 to double*
  store double %2241, double* %2242, align 1
  %2243 = getelementptr inbounds i8, i8* %2228, i64 8
  %2244 = bitcast i8* %2243 to i64*
  store i64 %2238, i64* %2244, align 1
  store %struct.Memory* %loadMem_40080b, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2248, i64 0, i64 4
  %YMM4.i104 = bitcast %union.VectorReg* %2249 to %"class.std::bitset"*
  %2250 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %2251 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %2252 = load i64, i64* %PC.i103
  %2253 = add i64 %2252, 9
  store i64 %2253, i64* %PC.i103
  %2254 = bitcast i8* %2251 to double*
  %2255 = load double, double* %2254, align 1
  %2256 = getelementptr inbounds i8, i8* %2251, i64 8
  %2257 = bitcast i8* %2256 to i64*
  %2258 = load i64, i64* %2257, align 1
  %2259 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %2260 = fadd double %2255, %2259
  %2261 = bitcast i8* %2250 to double*
  store double %2260, double* %2261, align 1
  %2262 = getelementptr inbounds i8, i8* %2250, i64 8
  %2263 = bitcast i8* %2262 to i64*
  store i64 %2258, i64* %2263, align 1
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem_400819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 15
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2270, i64 0, i64 4
  %YMM4.i102 = bitcast %union.VectorReg* %2271 to %"class.std::bitset"*
  %2272 = bitcast %"class.std::bitset"* %YMM4.i102 to i8*
  %2273 = bitcast %"class.std::bitset"* %YMM4.i102 to i8*
  %2274 = load i64, i64* %RBP.i101
  %2275 = sub i64 %2274, 40
  %2276 = load i64, i64* %PC.i100
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %PC.i100
  %2278 = bitcast i8* %2273 to double*
  %2279 = load double, double* %2278, align 1
  %2280 = getelementptr inbounds i8, i8* %2273, i64 8
  %2281 = bitcast i8* %2280 to i64*
  %2282 = load i64, i64* %2281, align 1
  %2283 = inttoptr i64 %2275 to double*
  %2284 = load double, double* %2283
  %2285 = fmul double %2279, %2284
  %2286 = bitcast i8* %2272 to double*
  store double %2285, double* %2286, align 1
  %2287 = getelementptr inbounds i8, i8* %2272, i64 8
  %2288 = bitcast i8* %2287 to i64*
  store i64 %2282, i64* %2288, align 1
  store %struct.Memory* %loadMem_400819, %struct.Memory** %MEMORY
  %loadMem_40081e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2292, i64 0, i64 4
  %YMM4.i99 = bitcast %union.VectorReg* %2293 to %"class.std::bitset"*
  %2294 = bitcast %"class.std::bitset"* %YMM4.i99 to i8*
  %2295 = bitcast %"class.std::bitset"* %YMM4.i99 to i8*
  %2296 = load i64, i64* %PC.i98
  %2297 = add i64 %2296, 9
  store i64 %2297, i64* %PC.i98
  %2298 = bitcast i8* %2295 to double*
  %2299 = load double, double* %2298, align 1
  %2300 = getelementptr inbounds i8, i8* %2295, i64 8
  %2301 = bitcast i8* %2300 to i64*
  %2302 = load i64, i64* %2301, align 1
  %2303 = load double, double* inttoptr (i64 6296200 to double*)
  %2304 = fadd double %2299, %2303
  %2305 = bitcast i8* %2294 to double*
  store double %2304, double* %2305, align 1
  %2306 = getelementptr inbounds i8, i8* %2294, i64 8
  %2307 = bitcast i8* %2306 to i64*
  store i64 %2302, i64* %2307, align 1
  store %struct.Memory* %loadMem_40081e, %struct.Memory** %MEMORY
  %loadMem_400827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2311, i64 0, i64 3
  %YMM3.i96 = bitcast %union.VectorReg* %2312 to %"class.std::bitset"*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2314 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2313, i64 0, i64 4
  %XMM4.i97 = bitcast %union.VectorReg* %2314 to %union.vec128_t*
  %2315 = bitcast %"class.std::bitset"* %YMM3.i96 to i8*
  %2316 = bitcast %"class.std::bitset"* %YMM3.i96 to i8*
  %2317 = bitcast %union.vec128_t* %XMM4.i97 to i8*
  %2318 = load i64, i64* %PC.i95
  %2319 = add i64 %2318, 4
  store i64 %2319, i64* %PC.i95
  %2320 = bitcast i8* %2316 to double*
  %2321 = load double, double* %2320, align 1
  %2322 = getelementptr inbounds i8, i8* %2316, i64 8
  %2323 = bitcast i8* %2322 to i64*
  %2324 = load i64, i64* %2323, align 1
  %2325 = bitcast i8* %2317 to double*
  %2326 = load double, double* %2325, align 1
  %2327 = fmul double %2321, %2326
  %2328 = bitcast i8* %2315 to double*
  store double %2327, double* %2328, align 1
  %2329 = getelementptr inbounds i8, i8* %2315, i64 8
  %2330 = bitcast i8* %2329 to i64*
  store i64 %2324, i64* %2330, align 1
  store %struct.Memory* %loadMem_400827, %struct.Memory** %MEMORY
  %loadMem_40082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2334, i64 0, i64 3
  %XMM3.i94 = bitcast %union.VectorReg* %2335 to %union.vec128_t*
  %2336 = bitcast %union.vec128_t* %XMM3.i94 to i8*
  %2337 = load i64, i64* %PC.i93
  %2338 = add i64 %2337, 9
  store i64 %2338, i64* %PC.i93
  %2339 = bitcast i8* %2336 to double*
  %2340 = load double, double* %2339, align 1
  store double %2340, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_40082b, %struct.Memory** %MEMORY
  %loadMem_400834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 15
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2348 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2347, i64 0, i64 3
  %YMM3.i92 = bitcast %union.VectorReg* %2348 to %"class.std::bitset"*
  %2349 = bitcast %"class.std::bitset"* %YMM3.i92 to i8*
  %2350 = load i64, i64* %RBP.i91
  %2351 = sub i64 %2350, 40
  %2352 = load i64, i64* %PC.i90
  %2353 = add i64 %2352, 5
  store i64 %2353, i64* %PC.i90
  %2354 = inttoptr i64 %2351 to double*
  %2355 = load double, double* %2354
  %2356 = bitcast i8* %2349 to double*
  store double %2355, double* %2356, align 1
  %2357 = getelementptr inbounds i8, i8* %2349, i64 8
  %2358 = bitcast i8* %2357 to double*
  store double 0.000000e+00, double* %2358, align 1
  store %struct.Memory* %loadMem_400834, %struct.Memory** %MEMORY
  %loadMem_400839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2366 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2365, i64 0, i64 4
  %YMM4.i89 = bitcast %union.VectorReg* %2366 to %"class.std::bitset"*
  %2367 = bitcast %"class.std::bitset"* %YMM4.i89 to i8*
  %2368 = load i64, i64* %RBP.i88
  %2369 = sub i64 %2368, 40
  %2370 = load i64, i64* %PC.i87
  %2371 = add i64 %2370, 5
  store i64 %2371, i64* %PC.i87
  %2372 = inttoptr i64 %2369 to double*
  %2373 = load double, double* %2372
  %2374 = bitcast i8* %2367 to double*
  store double %2373, double* %2374, align 1
  %2375 = getelementptr inbounds i8, i8* %2367, i64 8
  %2376 = bitcast i8* %2375 to double*
  store double 0.000000e+00, double* %2376, align 1
  store %struct.Memory* %loadMem_400839, %struct.Memory** %MEMORY
  %loadMem_40083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2383, i64 0, i64 5
  %YMM5.i86 = bitcast %union.VectorReg* %2384 to %"class.std::bitset"*
  %2385 = bitcast %"class.std::bitset"* %YMM5.i86 to i8*
  %2386 = load i64, i64* %RBP.i85
  %2387 = sub i64 %2386, 40
  %2388 = load i64, i64* %PC.i84
  %2389 = add i64 %2388, 5
  store i64 %2389, i64* %PC.i84
  %2390 = inttoptr i64 %2387 to double*
  %2391 = load double, double* %2390
  %2392 = bitcast i8* %2385 to double*
  store double %2391, double* %2392, align 1
  %2393 = getelementptr inbounds i8, i8* %2385, i64 8
  %2394 = bitcast i8* %2393 to double*
  store double 0.000000e+00, double* %2394, align 1
  store %struct.Memory* %loadMem_40083e, %struct.Memory** %MEMORY
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 15
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2401, i64 0, i64 6
  %YMM6.i83 = bitcast %union.VectorReg* %2402 to %"class.std::bitset"*
  %2403 = bitcast %"class.std::bitset"* %YMM6.i83 to i8*
  %2404 = load i64, i64* %RBP.i82
  %2405 = sub i64 %2404, 40
  %2406 = load i64, i64* %PC.i81
  %2407 = add i64 %2406, 5
  store i64 %2407, i64* %PC.i81
  %2408 = inttoptr i64 %2405 to double*
  %2409 = load double, double* %2408
  %2410 = bitcast i8* %2403 to double*
  store double %2409, double* %2410, align 1
  %2411 = getelementptr inbounds i8, i8* %2403, i64 8
  %2412 = bitcast i8* %2411 to double*
  store double 0.000000e+00, double* %2412, align 1
  store %struct.Memory* %loadMem_400843, %struct.Memory** %MEMORY
  %loadMem_400848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 15
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2420 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2419, i64 0, i64 7
  %YMM7.i80 = bitcast %union.VectorReg* %2420 to %"class.std::bitset"*
  %2421 = bitcast %"class.std::bitset"* %YMM7.i80 to i8*
  %2422 = load i64, i64* %RBP.i79
  %2423 = sub i64 %2422, 40
  %2424 = load i64, i64* %PC.i78
  %2425 = add i64 %2424, 5
  store i64 %2425, i64* %PC.i78
  %2426 = inttoptr i64 %2423 to double*
  %2427 = load double, double* %2426
  %2428 = bitcast i8* %2421 to double*
  store double %2427, double* %2428, align 1
  %2429 = getelementptr inbounds i8, i8* %2421, i64 8
  %2430 = bitcast i8* %2429 to double*
  store double 0.000000e+00, double* %2430, align 1
  store %struct.Memory* %loadMem_400848, %struct.Memory** %MEMORY
  %loadMem_40084d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2434, i64 0, i64 8
  %YMM8.i77 = bitcast %union.VectorReg* %2435 to %"class.std::bitset"*
  %2436 = bitcast %"class.std::bitset"* %YMM8.i77 to i8*
  %2437 = load i64, i64* %PC.i76
  %2438 = add i64 %2437, 10
  store i64 %2438, i64* %PC.i76
  %2439 = load double, double* inttoptr (i64 6295704 to double*)
  %2440 = bitcast i8* %2436 to double*
  store double %2439, double* %2440, align 1
  %2441 = getelementptr inbounds i8, i8* %2436, i64 8
  %2442 = bitcast i8* %2441 to double*
  store double 0.000000e+00, double* %2442, align 1
  store %struct.Memory* %loadMem_40084d, %struct.Memory** %MEMORY
  %loadMem_400857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 15
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2449, i64 0, i64 8
  %YMM8.i75 = bitcast %union.VectorReg* %2450 to %"class.std::bitset"*
  %2451 = bitcast %"class.std::bitset"* %YMM8.i75 to i8*
  %2452 = bitcast %"class.std::bitset"* %YMM8.i75 to i8*
  %2453 = load i64, i64* %RBP.i74
  %2454 = sub i64 %2453, 40
  %2455 = load i64, i64* %PC.i73
  %2456 = add i64 %2455, 6
  store i64 %2456, i64* %PC.i73
  %2457 = bitcast i8* %2452 to double*
  %2458 = load double, double* %2457, align 1
  %2459 = getelementptr inbounds i8, i8* %2452, i64 8
  %2460 = bitcast i8* %2459 to i64*
  %2461 = load i64, i64* %2460, align 1
  %2462 = inttoptr i64 %2454 to double*
  %2463 = load double, double* %2462
  %2464 = fmul double %2458, %2463
  %2465 = bitcast i8* %2451 to double*
  store double %2464, double* %2465, align 1
  %2466 = getelementptr inbounds i8, i8* %2451, i64 8
  %2467 = bitcast i8* %2466 to i64*
  store i64 %2461, i64* %2467, align 1
  store %struct.Memory* %loadMem_400857, %struct.Memory** %MEMORY
  %loadMem_40085d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2471, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %2472 to %"class.std::bitset"*
  %2473 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %2474 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %2475 = load i64, i64* %PC.i72
  %2476 = add i64 %2475, 10
  store i64 %2476, i64* %PC.i72
  %2477 = bitcast i8* %2474 to double*
  %2478 = load double, double* %2477, align 1
  %2479 = getelementptr inbounds i8, i8* %2474, i64 8
  %2480 = bitcast i8* %2479 to i64*
  %2481 = load i64, i64* %2480, align 1
  %2482 = load double, double* inttoptr (i64 6295696 to double*)
  %2483 = fadd double %2478, %2482
  %2484 = bitcast i8* %2473 to double*
  store double %2483, double* %2484, align 1
  %2485 = getelementptr inbounds i8, i8* %2473, i64 8
  %2486 = bitcast i8* %2485 to i64*
  store i64 %2481, i64* %2486, align 1
  store %struct.Memory* %loadMem_40085d, %struct.Memory** %MEMORY
  %loadMem_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2490, i64 0, i64 7
  %YMM7.i71 = bitcast %union.VectorReg* %2491 to %"class.std::bitset"*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2492, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %2493 to %union.vec128_t*
  %2494 = bitcast %"class.std::bitset"* %YMM7.i71 to i8*
  %2495 = bitcast %"class.std::bitset"* %YMM7.i71 to i8*
  %2496 = bitcast %union.vec128_t* %XMM8.i to i8*
  %2497 = load i64, i64* %PC.i70
  %2498 = add i64 %2497, 5
  store i64 %2498, i64* %PC.i70
  %2499 = bitcast i8* %2495 to double*
  %2500 = load double, double* %2499, align 1
  %2501 = getelementptr inbounds i8, i8* %2495, i64 8
  %2502 = bitcast i8* %2501 to i64*
  %2503 = load i64, i64* %2502, align 1
  %2504 = bitcast i8* %2496 to double*
  %2505 = load double, double* %2504, align 1
  %2506 = fmul double %2500, %2505
  %2507 = bitcast i8* %2494 to double*
  store double %2506, double* %2507, align 1
  %2508 = getelementptr inbounds i8, i8* %2494, i64 8
  %2509 = bitcast i8* %2508 to i64*
  store i64 %2503, i64* %2509, align 1
  store %struct.Memory* %loadMem_400867, %struct.Memory** %MEMORY
  %loadMem_40086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2513, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %2514 to %"class.std::bitset"*
  %2515 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %2516 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %2517 = load i64, i64* %PC.i69
  %2518 = add i64 %2517, 9
  store i64 %2518, i64* %PC.i69
  %2519 = bitcast i8* %2516 to double*
  %2520 = load double, double* %2519, align 1
  %2521 = getelementptr inbounds i8, i8* %2516, i64 8
  %2522 = bitcast i8* %2521 to i64*
  %2523 = load i64, i64* %2522, align 1
  %2524 = load double, double* inttoptr (i64 6295688 to double*)
  %2525 = fadd double %2520, %2524
  %2526 = bitcast i8* %2515 to double*
  store double %2525, double* %2526, align 1
  %2527 = getelementptr inbounds i8, i8* %2515, i64 8
  %2528 = bitcast i8* %2527 to i64*
  store i64 %2523, i64* %2528, align 1
  store %struct.Memory* %loadMem_40086c, %struct.Memory** %MEMORY
  %loadMem_400875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2532, i64 0, i64 6
  %YMM6.i68 = bitcast %union.VectorReg* %2533 to %"class.std::bitset"*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2534, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %2535 to %union.vec128_t*
  %2536 = bitcast %"class.std::bitset"* %YMM6.i68 to i8*
  %2537 = bitcast %"class.std::bitset"* %YMM6.i68 to i8*
  %2538 = bitcast %union.vec128_t* %XMM7.i to i8*
  %2539 = load i64, i64* %PC.i67
  %2540 = add i64 %2539, 4
  store i64 %2540, i64* %PC.i67
  %2541 = bitcast i8* %2537 to double*
  %2542 = load double, double* %2541, align 1
  %2543 = getelementptr inbounds i8, i8* %2537, i64 8
  %2544 = bitcast i8* %2543 to i64*
  %2545 = load i64, i64* %2544, align 1
  %2546 = bitcast i8* %2538 to double*
  %2547 = load double, double* %2546, align 1
  %2548 = fmul double %2542, %2547
  %2549 = bitcast i8* %2536 to double*
  store double %2548, double* %2549, align 1
  %2550 = getelementptr inbounds i8, i8* %2536, i64 8
  %2551 = bitcast i8* %2550 to i64*
  store i64 %2545, i64* %2551, align 1
  store %struct.Memory* %loadMem_400875, %struct.Memory** %MEMORY
  %loadMem_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2555, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %2556 to %"class.std::bitset"*
  %2557 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %2558 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %2559 = load i64, i64* %PC.i66
  %2560 = add i64 %2559, 9
  store i64 %2560, i64* %PC.i66
  %2561 = bitcast i8* %2558 to double*
  %2562 = load double, double* %2561, align 1
  %2563 = getelementptr inbounds i8, i8* %2558, i64 8
  %2564 = bitcast i8* %2563 to i64*
  %2565 = load i64, i64* %2564, align 1
  %2566 = load double, double* inttoptr (i64 6295680 to double*)
  %2567 = fadd double %2562, %2566
  %2568 = bitcast i8* %2557 to double*
  store double %2567, double* %2568, align 1
  %2569 = getelementptr inbounds i8, i8* %2557, i64 8
  %2570 = bitcast i8* %2569 to i64*
  store i64 %2565, i64* %2570, align 1
  store %struct.Memory* %loadMem_400879, %struct.Memory** %MEMORY
  %loadMem_400882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2574, i64 0, i64 5
  %YMM5.i65 = bitcast %union.VectorReg* %2575 to %"class.std::bitset"*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2576, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %2577 to %union.vec128_t*
  %2578 = bitcast %"class.std::bitset"* %YMM5.i65 to i8*
  %2579 = bitcast %"class.std::bitset"* %YMM5.i65 to i8*
  %2580 = bitcast %union.vec128_t* %XMM6.i to i8*
  %2581 = load i64, i64* %PC.i64
  %2582 = add i64 %2581, 4
  store i64 %2582, i64* %PC.i64
  %2583 = bitcast i8* %2579 to double*
  %2584 = load double, double* %2583, align 1
  %2585 = getelementptr inbounds i8, i8* %2579, i64 8
  %2586 = bitcast i8* %2585 to i64*
  %2587 = load i64, i64* %2586, align 1
  %2588 = bitcast i8* %2580 to double*
  %2589 = load double, double* %2588, align 1
  %2590 = fmul double %2584, %2589
  %2591 = bitcast i8* %2578 to double*
  store double %2590, double* %2591, align 1
  %2592 = getelementptr inbounds i8, i8* %2578, i64 8
  %2593 = bitcast i8* %2592 to i64*
  store i64 %2587, i64* %2593, align 1
  store %struct.Memory* %loadMem_400882, %struct.Memory** %MEMORY
  %loadMem_400886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2597, i64 0, i64 5
  %YMM5.i63 = bitcast %union.VectorReg* %2598 to %"class.std::bitset"*
  %2599 = bitcast %"class.std::bitset"* %YMM5.i63 to i8*
  %2600 = bitcast %"class.std::bitset"* %YMM5.i63 to i8*
  %2601 = load i64, i64* %PC.i62
  %2602 = add i64 %2601, 9
  store i64 %2602, i64* %PC.i62
  %2603 = bitcast i8* %2600 to double*
  %2604 = load double, double* %2603, align 1
  %2605 = getelementptr inbounds i8, i8* %2600, i64 8
  %2606 = bitcast i8* %2605 to i64*
  %2607 = load i64, i64* %2606, align 1
  %2608 = load double, double* inttoptr (i64 6295672 to double*)
  %2609 = fadd double %2604, %2608
  %2610 = bitcast i8* %2599 to double*
  store double %2609, double* %2610, align 1
  %2611 = getelementptr inbounds i8, i8* %2599, i64 8
  %2612 = bitcast i8* %2611 to i64*
  store i64 %2607, i64* %2612, align 1
  store %struct.Memory* %loadMem_400886, %struct.Memory** %MEMORY
  %loadMem_40088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2616, i64 0, i64 4
  %YMM4.i60 = bitcast %union.VectorReg* %2617 to %"class.std::bitset"*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2619 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2618, i64 0, i64 5
  %XMM5.i61 = bitcast %union.VectorReg* %2619 to %union.vec128_t*
  %2620 = bitcast %"class.std::bitset"* %YMM4.i60 to i8*
  %2621 = bitcast %"class.std::bitset"* %YMM4.i60 to i8*
  %2622 = bitcast %union.vec128_t* %XMM5.i61 to i8*
  %2623 = load i64, i64* %PC.i59
  %2624 = add i64 %2623, 4
  store i64 %2624, i64* %PC.i59
  %2625 = bitcast i8* %2621 to double*
  %2626 = load double, double* %2625, align 1
  %2627 = getelementptr inbounds i8, i8* %2621, i64 8
  %2628 = bitcast i8* %2627 to i64*
  %2629 = load i64, i64* %2628, align 1
  %2630 = bitcast i8* %2622 to double*
  %2631 = load double, double* %2630, align 1
  %2632 = fmul double %2626, %2631
  %2633 = bitcast i8* %2620 to double*
  store double %2632, double* %2633, align 1
  %2634 = getelementptr inbounds i8, i8* %2620, i64 8
  %2635 = bitcast i8* %2634 to i64*
  store i64 %2629, i64* %2635, align 1
  store %struct.Memory* %loadMem_40088f, %struct.Memory** %MEMORY
  %loadMem_400893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2639, i64 0, i64 4
  %YMM4.i58 = bitcast %union.VectorReg* %2640 to %"class.std::bitset"*
  %2641 = bitcast %"class.std::bitset"* %YMM4.i58 to i8*
  %2642 = bitcast %"class.std::bitset"* %YMM4.i58 to i8*
  %2643 = load i64, i64* %PC.i57
  %2644 = add i64 %2643, 9
  store i64 %2644, i64* %PC.i57
  %2645 = bitcast i8* %2642 to double*
  %2646 = load double, double* %2645, align 1
  %2647 = getelementptr inbounds i8, i8* %2642, i64 8
  %2648 = bitcast i8* %2647 to i64*
  %2649 = load i64, i64* %2648, align 1
  %2650 = load double, double* inttoptr (i64 6295664 to double*)
  %2651 = fadd double %2646, %2650
  %2652 = bitcast i8* %2641 to double*
  store double %2651, double* %2652, align 1
  %2653 = getelementptr inbounds i8, i8* %2641, i64 8
  %2654 = bitcast i8* %2653 to i64*
  store i64 %2649, i64* %2654, align 1
  store %struct.Memory* %loadMem_400893, %struct.Memory** %MEMORY
  %loadMem_40089c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 33
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2657 to i64*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2658, i64 0, i64 3
  %YMM3.i55 = bitcast %union.VectorReg* %2659 to %"class.std::bitset"*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2660, i64 0, i64 4
  %XMM4.i56 = bitcast %union.VectorReg* %2661 to %union.vec128_t*
  %2662 = bitcast %"class.std::bitset"* %YMM3.i55 to i8*
  %2663 = bitcast %"class.std::bitset"* %YMM3.i55 to i8*
  %2664 = bitcast %union.vec128_t* %XMM4.i56 to i8*
  %2665 = load i64, i64* %PC.i54
  %2666 = add i64 %2665, 4
  store i64 %2666, i64* %PC.i54
  %2667 = bitcast i8* %2663 to double*
  %2668 = load double, double* %2667, align 1
  %2669 = getelementptr inbounds i8, i8* %2663, i64 8
  %2670 = bitcast i8* %2669 to i64*
  %2671 = load i64, i64* %2670, align 1
  %2672 = bitcast i8* %2664 to double*
  %2673 = load double, double* %2672, align 1
  %2674 = fmul double %2668, %2673
  %2675 = bitcast i8* %2662 to double*
  store double %2674, double* %2675, align 1
  %2676 = getelementptr inbounds i8, i8* %2662, i64 8
  %2677 = bitcast i8* %2676 to i64*
  store i64 %2671, i64* %2677, align 1
  store %struct.Memory* %loadMem_40089c, %struct.Memory** %MEMORY
  %loadMem_4008a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2681, i64 0, i64 3
  %YMM3.i53 = bitcast %union.VectorReg* %2682 to %"class.std::bitset"*
  %2683 = bitcast %"class.std::bitset"* %YMM3.i53 to i8*
  %2684 = bitcast %"class.std::bitset"* %YMM3.i53 to i8*
  %2685 = load i64, i64* %PC.i52
  %2686 = add i64 %2685, 9
  store i64 %2686, i64* %PC.i52
  %2687 = bitcast i8* %2684 to double*
  %2688 = load double, double* %2687, align 1
  %2689 = getelementptr inbounds i8, i8* %2684, i64 8
  %2690 = bitcast i8* %2689 to i64*
  %2691 = load i64, i64* %2690, align 1
  %2692 = load double, double* inttoptr (i64 6296200 to double*)
  %2693 = fadd double %2688, %2692
  %2694 = bitcast i8* %2683 to double*
  store double %2693, double* %2694, align 1
  %2695 = getelementptr inbounds i8, i8* %2683, i64 8
  %2696 = bitcast i8* %2695 to i64*
  store i64 %2691, i64* %2696, align 1
  store %struct.Memory* %loadMem_4008a0, %struct.Memory** %MEMORY
  %loadMem_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 33
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2700, i64 0, i64 3
  %XMM3.i51 = bitcast %union.VectorReg* %2701 to %union.vec128_t*
  %2702 = bitcast %union.vec128_t* %XMM3.i51 to i8*
  %2703 = load i64, i64* %PC.i50
  %2704 = add i64 %2703, 9
  store i64 %2704, i64* %PC.i50
  %2705 = bitcast i8* %2702 to double*
  %2706 = load double, double* %2705, align 1
  store double %2706, double* inttoptr (i64 6296152 to double*)
  store %struct.Memory* %loadMem_4008a9, %struct.Memory** %MEMORY
  %loadMem_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 33
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2710, i64 0, i64 3
  %YMM3.i49 = bitcast %union.VectorReg* %2711 to %"class.std::bitset"*
  %2712 = bitcast %"class.std::bitset"* %YMM3.i49 to i8*
  %2713 = load i64, i64* %PC.i48
  %2714 = add i64 %2713, 9
  store i64 %2714, i64* %PC.i48
  %2715 = load double, double* inttoptr (i64 6296216 to double*)
  %2716 = bitcast i8* %2712 to double*
  store double %2715, double* %2716, align 1
  %2717 = getelementptr inbounds i8, i8* %2712, i64 8
  %2718 = bitcast i8* %2717 to double*
  store double 0.000000e+00, double* %2718, align 1
  store %struct.Memory* %loadMem_4008b2, %struct.Memory** %MEMORY
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2722, i64 0, i64 3
  %YMM3.i47 = bitcast %union.VectorReg* %2723 to %"class.std::bitset"*
  %2724 = bitcast %"class.std::bitset"* %YMM3.i47 to i8*
  %2725 = bitcast %"class.std::bitset"* %YMM3.i47 to i8*
  %2726 = load i64, i64* %PC.i46
  %2727 = add i64 %2726, 9
  store i64 %2727, i64* %PC.i46
  %2728 = bitcast i8* %2725 to double*
  %2729 = load double, double* %2728, align 1
  %2730 = getelementptr inbounds i8, i8* %2725, i64 8
  %2731 = bitcast i8* %2730 to i64*
  %2732 = load i64, i64* %2731, align 1
  %2733 = load double, double* inttoptr (i64 6296152 to double*)
  %2734 = fmul double %2729, %2733
  %2735 = bitcast i8* %2724 to double*
  store double %2734, double* %2735, align 1
  %2736 = getelementptr inbounds i8, i8* %2724, i64 8
  %2737 = bitcast i8* %2736 to i64*
  store i64 %2732, i64* %2737, align 1
  store %struct.Memory* %loadMem_4008bb, %struct.Memory** %MEMORY
  %loadMem_4008c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2741, i64 0, i64 3
  %YMM3.i45 = bitcast %union.VectorReg* %2742 to %"class.std::bitset"*
  %2743 = bitcast %"class.std::bitset"* %YMM3.i45 to i8*
  %2744 = bitcast %"class.std::bitset"* %YMM3.i45 to i8*
  %2745 = load i64, i64* %PC.i44
  %2746 = add i64 %2745, 9
  store i64 %2746, i64* %PC.i44
  %2747 = bitcast i8* %2744 to double*
  %2748 = load double, double* %2747, align 1
  %2749 = getelementptr inbounds i8, i8* %2744, i64 8
  %2750 = bitcast i8* %2749 to i64*
  %2751 = load i64, i64* %2750, align 1
  %2752 = load double, double* inttoptr (i64 6296152 to double*)
  %2753 = fmul double %2748, %2752
  %2754 = bitcast i8* %2743 to double*
  store double %2753, double* %2754, align 1
  %2755 = getelementptr inbounds i8, i8* %2743, i64 8
  %2756 = bitcast i8* %2755 to i64*
  store i64 %2751, i64* %2756, align 1
  store %struct.Memory* %loadMem_4008c4, %struct.Memory** %MEMORY
  %loadMem_4008cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2760, i64 0, i64 3
  %XMM3.i43 = bitcast %union.VectorReg* %2761 to %union.vec128_t*
  %2762 = bitcast %union.vec128_t* %XMM3.i43 to i8*
  %2763 = load i64, i64* %PC.i42
  %2764 = add i64 %2763, 9
  store i64 %2764, i64* %PC.i42
  %2765 = bitcast i8* %2762 to double*
  %2766 = load double, double* %2765, align 1
  store double %2766, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_4008cd, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 15
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2773, i64 0, i64 3
  %YMM3.i41 = bitcast %union.VectorReg* %2774 to %"class.std::bitset"*
  %2775 = bitcast %"class.std::bitset"* %YMM3.i41 to i8*
  %2776 = load i64, i64* %RBP.i40
  %2777 = sub i64 %2776, 48
  %2778 = load i64, i64* %PC.i39
  %2779 = add i64 %2778, 5
  store i64 %2779, i64* %PC.i39
  %2780 = inttoptr i64 %2777 to double*
  %2781 = load double, double* %2780
  %2782 = bitcast i8* %2775 to double*
  store double %2781, double* %2782, align 1
  %2783 = getelementptr inbounds i8, i8* %2775, i64 8
  %2784 = bitcast i8* %2783 to double*
  store double 0.000000e+00, double* %2784, align 1
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2788, i64 0, i64 4
  %YMM4.i38 = bitcast %union.VectorReg* %2789 to %"class.std::bitset"*
  %2790 = bitcast %"class.std::bitset"* %YMM4.i38 to i8*
  %2791 = load i64, i64* %PC.i37
  %2792 = add i64 %2791, 9
  store i64 %2792, i64* %PC.i37
  %2793 = load double, double* inttoptr (i64 6296216 to double*)
  %2794 = bitcast i8* %2790 to double*
  store double %2793, double* %2794, align 1
  %2795 = getelementptr inbounds i8, i8* %2790, i64 8
  %2796 = bitcast i8* %2795 to double*
  store double 0.000000e+00, double* %2796, align 1
  store %struct.Memory* %loadMem_4008db, %struct.Memory** %MEMORY
  %loadMem_4008e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2801 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2800, i64 0, i64 5
  %YMM5.i36 = bitcast %union.VectorReg* %2801 to %"class.std::bitset"*
  %2802 = bitcast %"class.std::bitset"* %YMM5.i36 to i8*
  %2803 = load i64, i64* %PC.i35
  %2804 = add i64 %2803, 9
  store i64 %2804, i64* %PC.i35
  %2805 = load double, double* inttoptr (i64 6295840 to double*)
  %2806 = bitcast i8* %2802 to double*
  store double %2805, double* %2806, align 1
  %2807 = getelementptr inbounds i8, i8* %2802, i64 8
  %2808 = bitcast i8* %2807 to double*
  store double 0.000000e+00, double* %2808, align 1
  store %struct.Memory* %loadMem_4008e4, %struct.Memory** %MEMORY
  %loadMem_4008ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2811 to i64*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 15
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2815, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2816 to %"class.std::bitset"*
  %2817 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2818 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2819 = load i64, i64* %RBP.i34
  %2820 = sub i64 %2819, 16
  %2821 = load i64, i64* %PC.i33
  %2822 = add i64 %2821, 5
  store i64 %2822, i64* %PC.i33
  %2823 = bitcast i8* %2818 to double*
  %2824 = load double, double* %2823, align 1
  %2825 = getelementptr inbounds i8, i8* %2818, i64 8
  %2826 = bitcast i8* %2825 to i64*
  %2827 = load i64, i64* %2826, align 1
  %2828 = inttoptr i64 %2820 to double*
  %2829 = load double, double* %2828
  %2830 = fmul double %2824, %2829
  %2831 = bitcast i8* %2817 to double*
  store double %2830, double* %2831, align 1
  %2832 = getelementptr inbounds i8, i8* %2817, i64 8
  %2833 = bitcast i8* %2832 to i64*
  store i64 %2827, i64* %2833, align 1
  store %struct.Memory* %loadMem_4008ed, %struct.Memory** %MEMORY
  %loadMem_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2837, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2838 to %"class.std::bitset"*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2839, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2840 to %union.vec128_t*
  %2841 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2842 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2843 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2844 = load i64, i64* %PC.i32
  %2845 = add i64 %2844, 4
  store i64 %2845, i64* %PC.i32
  %2846 = bitcast i8* %2842 to double*
  %2847 = load double, double* %2846, align 1
  %2848 = getelementptr inbounds i8, i8* %2842, i64 8
  %2849 = bitcast i8* %2848 to i64*
  %2850 = load i64, i64* %2849, align 1
  %2851 = bitcast i8* %2843 to double*
  %2852 = load double, double* %2851, align 1
  %2853 = fadd double %2847, %2852
  %2854 = bitcast i8* %2841 to double*
  store double %2853, double* %2854, align 1
  %2855 = getelementptr inbounds i8, i8* %2841, i64 8
  %2856 = bitcast i8* %2855 to i64*
  store i64 %2850, i64* %2856, align 1
  store %struct.Memory* %loadMem_4008f2, %struct.Memory** %MEMORY
  %loadMem_4008f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2860, i64 0, i64 3
  %YMM3.i31 = bitcast %union.VectorReg* %2861 to %"class.std::bitset"*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2862, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2863 to %union.vec128_t*
  %2864 = bitcast %"class.std::bitset"* %YMM3.i31 to i8*
  %2865 = bitcast %"class.std::bitset"* %YMM3.i31 to i8*
  %2866 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2867 = load i64, i64* %PC.i30
  %2868 = add i64 %2867, 4
  store i64 %2868, i64* %PC.i30
  %2869 = bitcast i8* %2865 to double*
  %2870 = load double, double* %2869, align 1
  %2871 = getelementptr inbounds i8, i8* %2865, i64 8
  %2872 = bitcast i8* %2871 to i64*
  %2873 = load i64, i64* %2872, align 1
  %2874 = bitcast i8* %2866 to double*
  %2875 = load double, double* %2874, align 1
  %2876 = fmul double %2870, %2875
  %2877 = bitcast i8* %2864 to double*
  store double %2876, double* %2877, align 1
  %2878 = getelementptr inbounds i8, i8* %2864, i64 8
  %2879 = bitcast i8* %2878 to i64*
  store i64 %2873, i64* %2879, align 1
  store %struct.Memory* %loadMem_4008f6, %struct.Memory** %MEMORY
  %loadMem_4008fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2883, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2884 to %"class.std::bitset"*
  %2885 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2886 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2887 = load i64, i64* %PC.i29
  %2888 = add i64 %2887, 9
  store i64 %2888, i64* %PC.i29
  %2889 = bitcast i8* %2886 to double*
  %2890 = load double, double* %2889, align 1
  %2891 = getelementptr inbounds i8, i8* %2886, i64 8
  %2892 = bitcast i8* %2891 to i64*
  %2893 = load i64, i64* %2892, align 1
  %2894 = load double, double* inttoptr (i64 6295840 to double*)
  %2895 = fdiv double %2890, %2894
  %2896 = bitcast i8* %2885 to double*
  store double %2895, double* %2896, align 1
  %2897 = getelementptr inbounds i8, i8* %2885, i64 8
  %2898 = bitcast i8* %2897 to i64*
  store i64 %2893, i64* %2898, align 1
  store %struct.Memory* %loadMem_4008fa, %struct.Memory** %MEMORY
  %loadMem_400903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2902, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2903 to %union.vec128_t*
  %2904 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2905 = load i64, i64* %PC.i28
  %2906 = add i64 %2905, 9
  store i64 %2906, i64* %PC.i28
  %2907 = bitcast i8* %2904 to double*
  %2908 = load double, double* %2907, align 1
  store double %2908, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_400903, %struct.Memory** %MEMORY
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 33
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2913 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2912, i64 0, i64 2
  %XMM2.i27 = bitcast %union.VectorReg* %2913 to %union.vec128_t*
  %2914 = bitcast %union.vec128_t* %XMM2.i27 to i8*
  %2915 = load i64, i64* %PC.i26
  %2916 = add i64 %2915, 9
  store i64 %2916, i64* %PC.i26
  %2917 = bitcast i8* %2914 to double*
  %2918 = load double, double* %2917, align 1
  store double %2918, double* inttoptr (i64 6296152 to double*)
  store %struct.Memory* %loadMem_40090c, %struct.Memory** %MEMORY
  %loadMem_400915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 33
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2922, i64 0, i64 2
  %YMM2.i25 = bitcast %union.VectorReg* %2923 to %"class.std::bitset"*
  %2924 = bitcast %"class.std::bitset"* %YMM2.i25 to i8*
  %2925 = load i64, i64* %PC.i24
  %2926 = add i64 %2925, 9
  store i64 %2926, i64* %PC.i24
  %2927 = load double, double* inttoptr (i64 6296216 to double*)
  %2928 = bitcast i8* %2924 to double*
  store double %2927, double* %2928, align 1
  %2929 = getelementptr inbounds i8, i8* %2924, i64 8
  %2930 = bitcast i8* %2929 to double*
  store double 0.000000e+00, double* %2930, align 1
  store %struct.Memory* %loadMem_400915, %struct.Memory** %MEMORY
  %loadMem_40091e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 33
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2934, i64 0, i64 2
  %YMM2.i23 = bitcast %union.VectorReg* %2935 to %"class.std::bitset"*
  %2936 = bitcast %"class.std::bitset"* %YMM2.i23 to i8*
  %2937 = bitcast %"class.std::bitset"* %YMM2.i23 to i8*
  %2938 = load i64, i64* %PC.i22
  %2939 = add i64 %2938, 9
  store i64 %2939, i64* %PC.i22
  %2940 = bitcast i8* %2937 to double*
  %2941 = load double, double* %2940, align 1
  %2942 = getelementptr inbounds i8, i8* %2937, i64 8
  %2943 = bitcast i8* %2942 to i64*
  %2944 = load i64, i64* %2943, align 1
  %2945 = load double, double* inttoptr (i64 6296152 to double*)
  %2946 = fsub double %2941, %2945
  %2947 = bitcast i8* %2936 to double*
  store double %2946, double* %2947, align 1
  %2948 = getelementptr inbounds i8, i8* %2936, i64 8
  %2949 = bitcast i8* %2948 to i64*
  store i64 %2944, i64* %2949, align 1
  store %struct.Memory* %loadMem_40091e, %struct.Memory** %MEMORY
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2953, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2954 to %union.vec128_t*
  %2955 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2956 = load i64, i64* %PC.i21
  %2957 = add i64 %2956, 9
  store i64 %2957, i64* %PC.i21
  %2958 = bitcast i8* %2955 to double*
  %2959 = load double, double* %2958, align 1
  store double %2959, double* inttoptr (i64 6296208 to double*)
  store %struct.Memory* %loadMem_400927, %struct.Memory** %MEMORY
  %loadMem_400930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2963, i64 0, i64 1
  %YMM1.i20 = bitcast %union.VectorReg* %2964 to %"class.std::bitset"*
  %2965 = bitcast %"class.std::bitset"* %YMM1.i20 to i8*
  %2966 = bitcast %"class.std::bitset"* %YMM1.i20 to i8*
  %2967 = load i64, i64* %PC.i19
  %2968 = add i64 %2967, 9
  store i64 %2968, i64* %PC.i19
  %2969 = bitcast i8* %2966 to double*
  %2970 = load double, double* %2969, align 1
  %2971 = getelementptr inbounds i8, i8* %2966, i64 8
  %2972 = bitcast i8* %2971 to i64*
  %2973 = load i64, i64* %2972, align 1
  %2974 = load double, double* inttoptr (i64 6296208 to double*)
  %2975 = fmul double %2970, %2974
  %2976 = bitcast i8* %2965 to double*
  store double %2975, double* %2976, align 1
  %2977 = getelementptr inbounds i8, i8* %2965, i64 8
  %2978 = bitcast i8* %2977 to i64*
  store i64 %2973, i64* %2978, align 1
  store %struct.Memory* %loadMem_400930, %struct.Memory** %MEMORY
  %loadMem_400939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 15
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2985, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2986 to %union.vec128_t*
  %2987 = load i64, i64* %RBP.i18
  %2988 = sub i64 %2987, 112
  %2989 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2990 = load i64, i64* %PC.i17
  %2991 = add i64 %2990, 5
  store i64 %2991, i64* %PC.i17
  %2992 = bitcast i8* %2989 to double*
  %2993 = load double, double* %2992, align 1
  %2994 = inttoptr i64 %2988 to double*
  store double %2993, double* %2994
  store %struct.Memory* %loadMem_400939, %struct.Memory** %MEMORY
  %loadMem_40093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2998, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2999 to %"class.std::bitset"*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3001 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3000, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3001 to %union.vec128_t*
  %3002 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3003 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3004 = load i64, i64* %PC.i16
  %3005 = add i64 %3004, 3
  store i64 %3005, i64* %PC.i16
  %3006 = bitcast i8* %3003 to <2 x i32>*
  %3007 = load <2 x i32>, <2 x i32>* %3006, align 1
  %3008 = getelementptr inbounds i8, i8* %3003, i64 8
  %3009 = bitcast i8* %3008 to <2 x i32>*
  %3010 = load <2 x i32>, <2 x i32>* %3009, align 1
  %3011 = extractelement <2 x i32> %3007, i32 0
  %3012 = bitcast i8* %3002 to i32*
  store i32 %3011, i32* %3012, align 1
  %3013 = extractelement <2 x i32> %3007, i32 1
  %3014 = getelementptr inbounds i8, i8* %3002, i64 4
  %3015 = bitcast i8* %3014 to i32*
  store i32 %3013, i32* %3015, align 1
  %3016 = extractelement <2 x i32> %3010, i32 0
  %3017 = getelementptr inbounds i8, i8* %3002, i64 8
  %3018 = bitcast i8* %3017 to i32*
  store i32 %3016, i32* %3018, align 1
  %3019 = extractelement <2 x i32> %3010, i32 1
  %3020 = getelementptr inbounds i8, i8* %3002, i64 12
  %3021 = bitcast i8* %3020 to i32*
  store i32 %3019, i32* %3021, align 1
  store %struct.Memory* %loadMem_40093e, %struct.Memory** %MEMORY
  %loadMem_400941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 15
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3029 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3028, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3029 to %"class.std::bitset"*
  %3030 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3031 = load i64, i64* %RBP.i15
  %3032 = sub i64 %3031, 112
  %3033 = load i64, i64* %PC.i14
  %3034 = add i64 %3033, 5
  store i64 %3034, i64* %PC.i14
  %3035 = inttoptr i64 %3032 to double*
  %3036 = load double, double* %3035
  %3037 = bitcast i8* %3030 to double*
  store double %3036, double* %3037, align 1
  %3038 = getelementptr inbounds i8, i8* %3030, i64 8
  %3039 = bitcast i8* %3038 to double*
  store double 0.000000e+00, double* %3039, align 1
  store %struct.Memory* %loadMem_400941, %struct.Memory** %MEMORY
  %loadMem_400946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 15
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3047 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3046, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3047 to %"class.std::bitset"*
  %3048 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3049 = load i64, i64* %RBP.i13
  %3050 = sub i64 %3049, 112
  %3051 = load i64, i64* %PC.i12
  %3052 = add i64 %3051, 5
  store i64 %3052, i64* %PC.i12
  %3053 = inttoptr i64 %3050 to double*
  %3054 = load double, double* %3053
  %3055 = bitcast i8* %3048 to double*
  store double %3054, double* %3055, align 1
  %3056 = getelementptr inbounds i8, i8* %3048, i64 8
  %3057 = bitcast i8* %3056 to double*
  store double 0.000000e+00, double* %3057, align 1
  store %struct.Memory* %loadMem_400946, %struct.Memory** %MEMORY
  %loadMem_40094b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 1
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %3064 = bitcast %union.anon* %3063 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3064, i32 0, i32 0
  %3065 = load i64, i64* %PC.i11
  %3066 = add i64 %3065, 2
  store i64 %3066, i64* %PC.i11
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40094b, %struct.Memory** %MEMORY
  %loadMem1_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %PC.i10
  %3071 = add i64 %3070, -1341
  %3072 = load i64, i64* %PC.i10
  %3073 = add i64 %3072, 5
  %3074 = load i64, i64* %PC.i10
  %3075 = add i64 %3074, 5
  store i64 %3075, i64* %PC.i10
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3077 = load i64, i64* %3076, align 8
  %3078 = add i64 %3077, -8
  %3079 = inttoptr i64 %3078 to i64*
  store i64 %3073, i64* %3079
  store i64 %3078, i64* %3076, align 8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3071, i64* %3080, align 8
  store %struct.Memory* %loadMem1_40094d, %struct.Memory** %MEMORY
  %loadMem2_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40094d = load i64, i64* %3
  %call2_40094d = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_40094d, %struct.Memory* %loadMem2_40094d)
  store %struct.Memory* %call2_40094d, %struct.Memory** %MEMORY
  %loadMem_400952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 5
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3086 to i32*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 5
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3089 to i64*
  %3090 = load i64, i64* %RCX.i
  %3091 = load i32, i32* %ECX.i9
  %3092 = zext i32 %3091 to i64
  %3093 = load i64, i64* %PC.i8
  %3094 = add i64 %3093, 2
  store i64 %3094, i64* %PC.i8
  %3095 = xor i64 %3092, %3090
  %3096 = trunc i64 %3095 to i32
  %3097 = and i64 %3095, 4294967295
  store i64 %3097, i64* %RCX.i, align 8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3098, align 1
  %3099 = and i32 %3096, 255
  %3100 = call i32 @llvm.ctpop.i32(i32 %3099)
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3103, i8* %3104, align 1
  %3105 = icmp eq i32 %3096, 0
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3106, i8* %3107, align 1
  %3108 = lshr i32 %3096, 31
  %3109 = trunc i32 %3108 to i8
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3109, i8* %3110, align 1
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3111, align 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3112, align 1
  store %struct.Memory* %loadMem_400952, %struct.Memory** %MEMORY
  %loadMem_400954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 1
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3118 to i32*
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 15
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3121 to i64*
  %3122 = load i64, i64* %RBP.i7
  %3123 = sub i64 %3122, 116
  %3124 = load i32, i32* %EAX.i
  %3125 = zext i32 %3124 to i64
  %3126 = load i64, i64* %PC.i6
  %3127 = add i64 %3126, 3
  store i64 %3127, i64* %PC.i6
  %3128 = inttoptr i64 %3123 to i32*
  store i32 %3124, i32* %3128
  store %struct.Memory* %loadMem_400954, %struct.Memory** %MEMORY
  %loadMem_400957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 5
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3134 to i32*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 1
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3137 to i64*
  %3138 = load i32, i32* %ECX.i
  %3139 = zext i32 %3138 to i64
  %3140 = load i64, i64* %PC.i5
  %3141 = add i64 %3140, 2
  store i64 %3141, i64* %PC.i5
  %3142 = and i64 %3139, 4294967295
  store i64 %3142, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400957, %struct.Memory** %MEMORY
  %loadMem_400959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 13
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RSP.i
  %3150 = load i64, i64* %PC.i4
  %3151 = add i64 %3150, 7
  store i64 %3151, i64* %PC.i4
  %3152 = add i64 128, %3149
  store i64 %3152, i64* %RSP.i, align 8
  %3153 = icmp ult i64 %3152, %3149
  %3154 = icmp ult i64 %3152, 128
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3156, i8* %3157, align 1
  %3158 = trunc i64 %3152 to i32
  %3159 = and i32 %3158, 255
  %3160 = call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3163, i8* %3164, align 1
  %3165 = xor i64 128, %3149
  %3166 = xor i64 %3165, %3152
  %3167 = lshr i64 %3166, 4
  %3168 = trunc i64 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3169, i8* %3170, align 1
  %3171 = icmp eq i64 %3152, 0
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3172, i8* %3173, align 1
  %3174 = lshr i64 %3152, 63
  %3175 = trunc i64 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3175, i8* %3176, align 1
  %3177 = lshr i64 %3149, 63
  %3178 = xor i64 %3174, %3177
  %3179 = add i64 %3178, %3174
  %3180 = icmp eq i64 %3179, 2
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3182, align 1
  store %struct.Memory* %loadMem_400959, %struct.Memory** %MEMORY
  %loadMem_400960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 15
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %PC.i2
  %3190 = add i64 %3189, 1
  store i64 %3190, i64* %PC.i2
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3192 = load i64, i64* %3191, align 8
  %3193 = add i64 %3192, 8
  %3194 = inttoptr i64 %3192 to i64*
  %3195 = load i64, i64* %3194
  store i64 %3195, i64* %RBP.i3, align 8
  store i64 %3193, i64* %3191, align 8
  store %struct.Memory* %loadMem_400960, %struct.Memory** %MEMORY
  %loadMem_400961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %PC.i1
  %3200 = add i64 %3199, 1
  store i64 %3200, i64* %PC.i1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3203 = load i64, i64* %3202, align 8
  %3204 = inttoptr i64 %3203 to i64*
  %3205 = load i64, i64* %3204
  store i64 %3205, i64* %3201, align 8
  %3206 = add i64 %3203, 8
  store i64 %3206, i64* %3202, align 8
  store %struct.Memory* %loadMem_400961, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400961
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

define %struct.Memory* @routine_movq__0x400a70___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196976, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a38___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196920, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a72___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196978, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x49f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movq__0x3d09__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 15625, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x6012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296272 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x1e848000__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 512000000, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__0x601260(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296160 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x601288(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296200 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x601120(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6295840 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x6012a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296224 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x601278(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296184 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x601128(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6295848 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601288___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6296200 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x601280(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296192 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400aa2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4197026, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sext i64 %17 to i128
  %19 = and i128 %18, -18446744073709551616
  %20 = zext i64 %17 to i128
  %21 = or i128 %19, %20
  %22 = mul i128 %21, 10000
  %23 = trunc i128 %22 to i64
  store i64 %23, i64* %RDI, align 8
  %24 = sext i64 %23 to i128
  %25 = icmp ne i128 %24, %22
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = trunc i128 %22 to i32
  %29 = and i32 %28, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i64 %23, 63
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %26, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601260___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6296160 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6012a0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6296224 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sitofp i64 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 1, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_subq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = sub i64 %12, %13
  %17 = icmp ult i64 %12, %13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %12
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %12, 63
  %40 = lshr i64 %13, 63
  %41 = xor i64 %40, %39
  %42 = xor i64 %36, %39
  %43 = add i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400782(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sitofp i64 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x601098___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6295704 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM5 to i8*
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601090___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295696 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_addsd_0x601088___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295688 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_addsd_0x601080___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295680 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601078___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295672 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_addsd_0x601070___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295664 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_addsd_0x601288___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6296200 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601060___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6295648 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601058___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295640 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295632 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295624 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6296200 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400649(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400ac6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4197062, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x291__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 665
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

define %struct.Memory* @routine_movsd_0x291__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 665
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

define %struct.Memory* @routine_movsd_0x601260___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6296160 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x6012a0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6296224 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd_0x601060___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6295648 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM4 to i8*
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
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601058___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295640 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295632 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295624 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6296200 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x601298(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296216 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
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

define %struct.Memory* @routine_movsd_0x601098___xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6295704 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_addsd_0x601090___xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 10
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295696 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm8___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = bitcast %union.vec128_t* %XMM8 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
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

define %struct.Memory* @routine_addsd_0x601088___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295688 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = bitcast %union.vec128_t* %XMM7 to i8*
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

define %struct.Memory* @routine_addsd_0x601080___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295680 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %union.vec128_t* %XMM6 to i8*
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

define %struct.Memory* @routine_addsd_0x601078___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295672 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601070___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6295664 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6296200 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x601258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296152 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601298___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6296216 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x601258___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6296152 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x601298___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6296216 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601120___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6295840 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_addsd__xmm5___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_divsd_0x601120___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295840 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x601258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296152 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601298___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* inttoptr (i64 6296216 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x601258___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6296152 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x601290(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296208 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x601290___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* inttoptr (i64 6296208 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movb__0x3___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 3, i8* %AL, align 1
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
