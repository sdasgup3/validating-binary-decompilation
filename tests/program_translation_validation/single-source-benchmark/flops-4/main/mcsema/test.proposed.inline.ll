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
%G_0x601030_type = type <{ [8 x i8] }>
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
@G_0x601030 = global %G_0x601030_type zeroinitializer
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
  %PC.i391 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i392 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i392
  %27 = load i64, i64* %PC.i391
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i391
  store i64 %26, i64* %RBP.i393, align 8
  store %struct.Memory* %loadMem_400511, %struct.Memory** %MEMORY
  %loadMem_400514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i390 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i390
  %36 = load i64, i64* %PC.i389
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i389
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i390, align 8
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
  %PC.i387 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i388 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i387
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i387
  store i64 4196904, i64* %RDI.i388, align 8
  store %struct.Memory* %loadMem_40051b, %struct.Memory** %MEMORY
  %loadMem_400525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i386
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i385
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i385
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400525, %struct.Memory** %MEMORY
  %loadMem_40052c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i384 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i383
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i383
  store i8 0, i8* %AL.i384, align 1
  store %struct.Memory* %loadMem_40052c, %struct.Memory** %MEMORY
  %loadMem1_40052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i382
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i382
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i382
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i382
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
  %PC.i380 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 11
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RDI.i381 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %PC.i380
  %116 = add i64 %115, 10
  store i64 %116, i64* %PC.i380
  store i64 4196848, i64* %RDI.i381, align 8
  store %struct.Memory* %loadMem_400533, %struct.Memory** %MEMORY
  %loadMem_40053d = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %EAX.i378 = bitcast %union.anon* %122 to i32*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i379
  %127 = sub i64 %126, 92
  %128 = load i32, i32* %EAX.i378
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %PC.i377
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC.i377
  %132 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %132
  store %struct.Memory* %loadMem_40053d, %struct.Memory** %MEMORY
  %loadMem_400540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %139 = bitcast %union.anon* %138 to %struct.anon.2*
  %AL.i376 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %139, i32 0, i32 0
  %140 = load i64, i64* %PC.i375
  %141 = add i64 %140, 2
  store i64 %141, i64* %PC.i375
  store i8 0, i8* %AL.i376, align 1
  store %struct.Memory* %loadMem_400540, %struct.Memory** %MEMORY
  %loadMem1_400542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %PC.i374
  %146 = add i64 %145, -306
  %147 = load i64, i64* %PC.i374
  %148 = add i64 %147, 5
  %149 = load i64, i64* %PC.i374
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC.i374
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
  %PC.i372 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 11
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RDI.i373 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %PC.i372
  %163 = add i64 %162, 10
  store i64 %163, i64* %PC.i372
  store i64 4196906, i64* %RDI.i373, align 8
  store %struct.Memory* %loadMem_400547, %struct.Memory** %MEMORY
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %167, i64 0, i64 0
  %YMM0.i371 = bitcast %union.VectorReg* %168 to %"class.std::bitset"*
  %169 = bitcast %"class.std::bitset"* %YMM0.i371 to i8*
  %170 = load i64, i64* %PC.i370
  %171 = add i64 %170, 1127
  %172 = load i64, i64* %PC.i370
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC.i370
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
  %PC.i368 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %182, i64 0, i64 1
  %YMM1.i369 = bitcast %union.VectorReg* %183 to %"class.std::bitset"*
  %184 = bitcast %"class.std::bitset"* %YMM1.i369 to i8*
  %185 = load i64, i64* %PC.i368
  %186 = add i64 %185, 1127
  %187 = load i64, i64* %PC.i368
  %188 = add i64 %187, 8
  store i64 %188, i64* %PC.i368
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
  %PC.i366 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %197, i64 0, i64 2
  %YMM2.i367 = bitcast %union.VectorReg* %198 to %"class.std::bitset"*
  %199 = bitcast %"class.std::bitset"* %YMM2.i367 to i8*
  %200 = load i64, i64* %PC.i366
  %201 = add i64 %200, 1127
  %202 = load i64, i64* %PC.i366
  %203 = add i64 %202, 8
  store i64 %203, i64* %PC.i366
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
  %PC.i364 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %212, i64 0, i64 3
  %YMM3.i365 = bitcast %union.VectorReg* %213 to %"class.std::bitset"*
  %214 = bitcast %"class.std::bitset"* %YMM3.i365 to i8*
  %215 = load i64, i64* %PC.i364
  %216 = add i64 %215, 1127
  %217 = load i64, i64* %PC.i364
  %218 = add i64 %217, 8
  store i64 %218, i64* %PC.i364
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
  %PC.i362 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 4
  %YMM4.i363 = bitcast %union.VectorReg* %228 to %"class.std::bitset"*
  %229 = bitcast %"class.std::bitset"* %YMM4.i363 to i8*
  %230 = load i64, i64* %PC.i362
  %231 = add i64 %230, 1127
  %232 = load i64, i64* %PC.i362
  %233 = add i64 %232, 8
  store i64 %233, i64* %PC.i362
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
  %PC.i360 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %242, i64 0, i64 5
  %YMM5.i361 = bitcast %union.VectorReg* %243 to %"class.std::bitset"*
  %244 = bitcast %"class.std::bitset"* %YMM5.i361 to i8*
  %245 = load i64, i64* %PC.i360
  %246 = add i64 %245, 1127
  %247 = load i64, i64* %PC.i360
  %248 = add i64 %247, 8
  store i64 %248, i64* %PC.i360
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
  %PC.i358 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 15
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RBP.i359
  %261 = sub i64 %260, 56
  %262 = load i64, i64* %PC.i358
  %263 = add i64 %262, 8
  store i64 %263, i64* %PC.i358
  %264 = inttoptr i64 %261 to i64*
  store i64 15625, i64* %264
  store %struct.Memory* %loadMem_400581, %struct.Memory** %MEMORY
  %loadMem_400589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 4
  %XMM4.i357 = bitcast %union.VectorReg* %269 to %union.vec128_t*
  %270 = bitcast %union.vec128_t* %XMM4.i357 to i8*
  %271 = load i64, i64* %PC.i356
  %272 = add i64 %271, 9
  store i64 %272, i64* %PC.i356
  %273 = bitcast i8* %270 to double*
  %274 = load double, double* %273, align 1
  store double %274, double* inttoptr (i64 6296272 to double*)
  store %struct.Memory* %loadMem_400589, %struct.Memory** %MEMORY
  %loadMem_400592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i355
  %282 = sub i64 %281, 64
  %283 = load i64, i64* %PC.i354
  %284 = add i64 %283, 8
  store i64 %284, i64* %PC.i354
  %285 = inttoptr i64 %282 to i64*
  store i64 512000000, i64* %285
  store %struct.Memory* %loadMem_400592, %struct.Memory** %MEMORY
  %loadMem_40059a = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %289, i64 0, i64 5
  %XMM5.i353 = bitcast %union.VectorReg* %290 to %union.vec128_t*
  %291 = bitcast %union.vec128_t* %XMM5.i353 to i8*
  %292 = load i64, i64* %PC.i352
  %293 = add i64 %292, 9
  store i64 %293, i64* %PC.i352
  %294 = bitcast i8* %291 to double*
  %295 = load double, double* %294, align 1
  store double %295, double* inttoptr (i64 6296160 to double*)
  store %struct.Memory* %loadMem_40059a, %struct.Memory** %MEMORY
  %loadMem_4005a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 4
  %XMM4.i351 = bitcast %union.VectorReg* %300 to %union.vec128_t*
  %301 = bitcast %union.vec128_t* %XMM4.i351 to i8*
  %302 = load i64, i64* %PC.i350
  %303 = add i64 %302, 9
  store i64 %303, i64* %PC.i350
  %304 = bitcast i8* %301 to double*
  %305 = load double, double* %304, align 1
  store double %305, double* inttoptr (i64 6296200 to double*)
  store %struct.Memory* %loadMem_4005a3, %struct.Memory** %MEMORY
  %loadMem_4005ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %309, i64 0, i64 3
  %XMM3.i349 = bitcast %union.VectorReg* %310 to %union.vec128_t*
  %311 = bitcast %union.vec128_t* %XMM3.i349 to i8*
  %312 = load i64, i64* %PC.i348
  %313 = add i64 %312, 9
  store i64 %313, i64* %PC.i348
  %314 = bitcast i8* %311 to double*
  %315 = load double, double* %314, align 1
  store double %315, double* inttoptr (i64 6295840 to double*)
  store %struct.Memory* %loadMem_4005ac, %struct.Memory** %MEMORY
  %loadMem_4005b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %319, i64 0, i64 2
  %XMM2.i347 = bitcast %union.VectorReg* %320 to %union.vec128_t*
  %321 = bitcast %union.vec128_t* %XMM2.i347 to i8*
  %322 = load i64, i64* %PC.i346
  %323 = add i64 %322, 9
  store i64 %323, i64* %PC.i346
  %324 = bitcast i8* %321 to double*
  %325 = load double, double* %324, align 1
  store double %325, double* inttoptr (i64 6296224 to double*)
  store %struct.Memory* %loadMem_4005b5, %struct.Memory** %MEMORY
  %loadMem_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %329, i64 0, i64 1
  %XMM1.i345 = bitcast %union.VectorReg* %330 to %union.vec128_t*
  %331 = bitcast %union.vec128_t* %XMM1.i345 to i8*
  %332 = load i64, i64* %PC.i344
  %333 = add i64 %332, 9
  store i64 %333, i64* %PC.i344
  %334 = bitcast i8* %331 to double*
  %335 = load double, double* %334, align 1
  store double %335, double* inttoptr (i64 6296184 to double*)
  store %struct.Memory* %loadMem_4005be, %struct.Memory** %MEMORY
  %loadMem_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %339, i64 0, i64 0
  %XMM0.i343 = bitcast %union.VectorReg* %340 to %union.vec128_t*
  %341 = bitcast %union.vec128_t* %XMM0.i343 to i8*
  %342 = load i64, i64* %PC.i342
  %343 = add i64 %342, 9
  store i64 %343, i64* %PC.i342
  %344 = bitcast i8* %341 to double*
  %345 = load double, double* %344, align 1
  store double %345, double* inttoptr (i64 6295848 to double*)
  store %struct.Memory* %loadMem_4005c7, %struct.Memory** %MEMORY
  %loadMem_4005d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %349, i64 0, i64 0
  %YMM0.i341 = bitcast %union.VectorReg* %350 to %"class.std::bitset"*
  %351 = bitcast %"class.std::bitset"* %YMM0.i341 to i8*
  %352 = load i64, i64* %PC.i340
  %353 = add i64 %352, 9
  store i64 %353, i64* %PC.i340
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
  %PC.i338 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %361, i64 0, i64 0
  %XMM0.i339 = bitcast %union.VectorReg* %362 to %union.vec128_t*
  %363 = bitcast %union.vec128_t* %XMM0.i339 to i8*
  %364 = load i64, i64* %PC.i338
  %365 = add i64 %364, 9
  store i64 %365, i64* %PC.i338
  %366 = bitcast i8* %363 to double*
  %367 = load double, double* %366, align 1
  store double %367, double* inttoptr (i64 6296192 to double*)
  store %struct.Memory* %loadMem_4005d9, %struct.Memory** %MEMORY
  %loadMem_4005e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %373 to i32*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i337
  %378 = sub i64 %377, 96
  %379 = load i32, i32* %EAX.i336
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %PC.i335
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i335
  %383 = inttoptr i64 %378 to i32*
  store i32 %379, i32* %383
  store %struct.Memory* %loadMem_4005e2, %struct.Memory** %MEMORY
  %loadMem_4005e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %390 = bitcast %union.anon* %389 to %struct.anon.2*
  %AL.i334 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %390, i32 0, i32 0
  %391 = load i64, i64* %PC.i333
  %392 = add i64 %391, 2
  store i64 %392, i64* %PC.i333
  store i8 0, i8* %AL.i334, align 1
  store %struct.Memory* %loadMem_4005e5, %struct.Memory** %MEMORY
  %loadMem1_4005e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %PC.i332
  %397 = add i64 %396, -471
  %398 = load i64, i64* %PC.i332
  %399 = add i64 %398, 5
  %400 = load i64, i64* %PC.i332
  %401 = add i64 %400, 5
  store i64 %401, i64* %PC.i332
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
  %PC.i330 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 11
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RDI.i331 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %PC.i330
  %414 = add i64 %413, 10
  store i64 %414, i64* %PC.i330
  store i64 4196954, i64* %RDI.i331, align 8
  store %struct.Memory* %loadMem_4005ec, %struct.Memory** %MEMORY
  %loadMem_4005f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %420 to i32*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i329
  %425 = sub i64 %424, 100
  %426 = load i32, i32* %EAX.i328
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC.i327
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i327
  %430 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %430
  store %struct.Memory* %loadMem_4005f6, %struct.Memory** %MEMORY
  %loadMem_4005f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %437 = bitcast %union.anon* %436 to %struct.anon.2*
  %AL.i326 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %437, i32 0, i32 0
  %438 = load i64, i64* %PC.i325
  %439 = add i64 %438, 2
  store i64 %439, i64* %PC.i325
  store i8 0, i8* %AL.i326, align 1
  store %struct.Memory* %loadMem_4005f9, %struct.Memory** %MEMORY
  %loadMem1_4005fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i324
  %444 = add i64 %443, -491
  %445 = load i64, i64* %PC.i324
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i324
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i324
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
  %PC.i321 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %457, i64 0, i64 0
  %YMM0.i322 = bitcast %union.VectorReg* %458 to %"class.std::bitset"*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %459, i64 0, i64 0
  %XMM0.i323 = bitcast %union.VectorReg* %460 to %union.vec128_t*
  %461 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %462 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %463 = bitcast %union.vec128_t* %XMM0.i323 to i8*
  %464 = load i64, i64* %PC.i321
  %465 = add i64 %464, 3
  store i64 %465, i64* %PC.i321
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
  %PC.i319 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 11
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RDI.i320 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %PC.i319
  %498 = add i64 %497, 10
  store i64 %498, i64* %PC.i319
  store i64 -9223372036854775808, i64* %RDI.i320, align 8
  store %struct.Memory* %loadMem_400603, %struct.Memory** %MEMORY
  %loadMem_40060d = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 15
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RBP.i318
  %509 = sub i64 %508, 56
  %510 = load i64, i64* %PC.i316
  %511 = add i64 %510, 8
  store i64 %511, i64* %PC.i316
  %512 = inttoptr i64 %509 to i64*
  %513 = load i64, i64* %512
  %514 = sext i64 %513 to i128
  %515 = and i128 %514, -18446744073709551616
  %516 = zext i64 %513 to i128
  %517 = or i128 %515, %516
  %518 = mul i128 %517, 10000
  %519 = trunc i128 %518 to i64
  store i64 %519, i64* %RCX.i317, align 8
  %520 = sext i64 %519 to i128
  %521 = icmp ne i128 %520, %518
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %522, i8* %523, align 1
  %524 = trunc i128 %518 to i32
  %525 = and i32 %524, 255
  %526 = call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %529, i8* %530, align 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %531, align 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %532, align 1
  %533 = lshr i64 %519, 63
  %534 = trunc i64 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %534, i8* %535, align 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %522, i8* %536, align 1
  store %struct.Memory* %loadMem_40060d, %struct.Memory** %MEMORY
  %loadMem_400615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 5
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 15
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RBP.i315
  %547 = sub i64 %546, 80
  %548 = load i64, i64* %RCX.i314
  %549 = load i64, i64* %PC.i313
  %550 = add i64 %549, 4
  store i64 %550, i64* %PC.i313
  %551 = inttoptr i64 %547 to i64*
  store i64 %548, i64* %551
  store %struct.Memory* %loadMem_400615, %struct.Memory** %MEMORY
  %loadMem_400619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %555, i64 0, i64 1
  %YMM1.i312 = bitcast %union.VectorReg* %556 to %"class.std::bitset"*
  %557 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %558 = load i64, i64* %PC.i311
  %559 = add i64 %558, 9
  store i64 %559, i64* %PC.i311
  %560 = load double, double* inttoptr (i64 6295624 to double*)
  %561 = bitcast i8* %557 to double*
  store double %560, double* %561, align 1
  %562 = getelementptr inbounds i8, i8* %557, i64 8
  %563 = bitcast i8* %562 to double*
  store double 0.000000e+00, double* %563, align 1
  store %struct.Memory* %loadMem_400619, %struct.Memory** %MEMORY
  %loadMem_400622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %570, i64 0, i64 1
  %XMM1.i310 = bitcast %union.VectorReg* %571 to %union.vec128_t*
  %572 = bitcast %union.vec128_t* %XMM1.i310 to i8*
  %573 = load i64, i64* %PC.i308
  %574 = add i64 %573, 5
  store i64 %574, i64* %PC.i308
  %575 = bitcast i8* %572 to i64*
  %576 = load i64, i64* %575, align 1
  store i64 %576, i64* %RCX.i309, align 1
  store %struct.Memory* %loadMem_400622, %struct.Memory** %MEMORY
  %loadMem_400627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 5
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 11
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RDI.i307 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %RCX.i306
  %587 = load i64, i64* %RDI.i307
  %588 = load i64, i64* %PC.i305
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC.i305
  %590 = xor i64 %587, %586
  store i64 %590, i64* %RCX.i306, align 8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %591, align 1
  %592 = trunc i64 %590 to i32
  %593 = and i32 %592, 255
  %594 = call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %597, i8* %598, align 1
  %599 = icmp eq i64 %590, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i64 %590, 63
  %603 = trunc i64 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %605, align 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %606, align 1
  store %struct.Memory* %loadMem_400627, %struct.Memory** %MEMORY
  %loadMem_40062a = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 5
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %613, i64 0, i64 1
  %YMM1.i304 = bitcast %union.VectorReg* %614 to %"class.std::bitset"*
  %615 = bitcast %"class.std::bitset"* %YMM1.i304 to i8*
  %616 = load i64, i64* %RCX.i303
  %617 = load i64, i64* %PC.i302
  %618 = add i64 %617, 5
  store i64 %618, i64* %PC.i302
  %619 = bitcast i8* %615 to i64*
  store i64 %616, i64* %619, align 1
  %620 = getelementptr inbounds i8, i8* %615, i64 8
  %621 = bitcast i8* %620 to i64*
  store i64 0, i64* %621, align 1
  store %struct.Memory* %loadMem_40062a, %struct.Memory** %MEMORY
  %loadMem_40062f = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 1
  %XMM1.i301 = bitcast %union.VectorReg* %626 to %union.vec128_t*
  %627 = bitcast %union.vec128_t* %XMM1.i301 to i8*
  %628 = load i64, i64* %PC.i300
  %629 = add i64 %628, 9
  store i64 %629, i64* %PC.i300
  %630 = bitcast i8* %627 to double*
  %631 = load double, double* %630, align 1
  store double %631, double* inttoptr (i64 6295624 to double*)
  store %struct.Memory* %loadMem_40062f, %struct.Memory** %MEMORY
  %loadMem_400638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %635, i64 0, i64 1
  %YMM1.i299 = bitcast %union.VectorReg* %636 to %"class.std::bitset"*
  %637 = bitcast %"class.std::bitset"* %YMM1.i299 to i8*
  %638 = load i64, i64* %PC.i298
  %639 = add i64 %638, 9
  store i64 %639, i64* %PC.i298
  %640 = load double, double* inttoptr (i64 6295640 to double*)
  %641 = bitcast i8* %637 to double*
  store double %640, double* %641, align 1
  %642 = getelementptr inbounds i8, i8* %637, i64 8
  %643 = bitcast i8* %642 to double*
  store double 0.000000e+00, double* %643, align 1
  store %struct.Memory* %loadMem_400638, %struct.Memory** %MEMORY
  %loadMem_400641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %650, i64 0, i64 1
  %XMM1.i297 = bitcast %union.VectorReg* %651 to %union.vec128_t*
  %652 = bitcast %union.vec128_t* %XMM1.i297 to i8*
  %653 = load i64, i64* %PC.i295
  %654 = add i64 %653, 5
  store i64 %654, i64* %PC.i295
  %655 = bitcast i8* %652 to i64*
  %656 = load i64, i64* %655, align 1
  store i64 %656, i64* %RCX.i296, align 1
  store %struct.Memory* %loadMem_400641, %struct.Memory** %MEMORY
  %loadMem_400646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 5
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 11
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RDI.i294 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %RCX.i293
  %667 = load i64, i64* %RDI.i294
  %668 = load i64, i64* %PC.i292
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC.i292
  %670 = xor i64 %667, %666
  store i64 %670, i64* %RCX.i293, align 8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %671, align 1
  %672 = trunc i64 %670 to i32
  %673 = and i32 %672, 255
  %674 = call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %677, i8* %678, align 1
  %679 = icmp eq i64 %670, 0
  %680 = zext i1 %679 to i8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %680, i8* %681, align 1
  %682 = lshr i64 %670, 63
  %683 = trunc i64 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %683, i8* %684, align 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %685, align 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %686, align 1
  store %struct.Memory* %loadMem_400646, %struct.Memory** %MEMORY
  %loadMem_400649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 5
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %693, i64 0, i64 1
  %YMM1.i291 = bitcast %union.VectorReg* %694 to %"class.std::bitset"*
  %695 = bitcast %"class.std::bitset"* %YMM1.i291 to i8*
  %696 = load i64, i64* %RCX.i290
  %697 = load i64, i64* %PC.i289
  %698 = add i64 %697, 5
  store i64 %698, i64* %PC.i289
  %699 = bitcast i8* %695 to i64*
  store i64 %696, i64* %699, align 1
  %700 = getelementptr inbounds i8, i8* %695, i64 8
  %701 = bitcast i8* %700 to i64*
  store i64 0, i64* %701, align 1
  store %struct.Memory* %loadMem_400649, %struct.Memory** %MEMORY
  %loadMem_40064e = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %705, i64 0, i64 1
  %XMM1.i288 = bitcast %union.VectorReg* %706 to %union.vec128_t*
  %707 = bitcast %union.vec128_t* %XMM1.i288 to i8*
  %708 = load i64, i64* %PC.i287
  %709 = add i64 %708, 9
  store i64 %709, i64* %PC.i287
  %710 = bitcast i8* %707 to double*
  %711 = load double, double* %710, align 1
  store double %711, double* inttoptr (i64 6295640 to double*)
  store %struct.Memory* %loadMem_40064e, %struct.Memory** %MEMORY
  %loadMem_400657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %715, i64 0, i64 1
  %YMM1.i286 = bitcast %union.VectorReg* %716 to %"class.std::bitset"*
  %717 = bitcast %"class.std::bitset"* %YMM1.i286 to i8*
  %718 = load i64, i64* %PC.i285
  %719 = add i64 %718, 9
  store i64 %719, i64* %PC.i285
  %720 = load double, double* inttoptr (i64 6296160 to double*)
  %721 = bitcast i8* %717 to double*
  store double %720, double* %721, align 1
  %722 = getelementptr inbounds i8, i8* %717, i64 8
  %723 = bitcast i8* %722 to double*
  store double 0.000000e+00, double* %723, align 1
  store %struct.Memory* %loadMem_400657, %struct.Memory** %MEMORY
  %loadMem_400660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %727, i64 0, i64 2
  %YMM2.i284 = bitcast %union.VectorReg* %728 to %"class.std::bitset"*
  %729 = bitcast %"class.std::bitset"* %YMM2.i284 to i8*
  %730 = load i64, i64* %PC.i283
  %731 = add i64 %730, 9
  store i64 %731, i64* %PC.i283
  %732 = load double, double* inttoptr (i64 6296224 to double*)
  %733 = bitcast i8* %729 to double*
  store double %732, double* %733, align 1
  %734 = getelementptr inbounds i8, i8* %729, i64 8
  %735 = bitcast i8* %734 to double*
  store double 0.000000e+00, double* %735, align 1
  store %struct.Memory* %loadMem_400660, %struct.Memory** %MEMORY
  %loadMem_400669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %743 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %742, i64 0, i64 3
  %YMM3.i282 = bitcast %union.VectorReg* %743 to %"class.std::bitset"*
  %744 = bitcast %"class.std::bitset"* %YMM3.i282 to i8*
  %745 = load i64, i64* %RBP.i281
  %746 = sub i64 %745, 80
  %747 = load i64, i64* %PC.i280
  %748 = add i64 %747, 6
  store i64 %748, i64* %PC.i280
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749
  %751 = sitofp i64 %750 to double
  %752 = bitcast i8* %744 to double*
  store double %751, double* %752, align 1
  store %struct.Memory* %loadMem_400669, %struct.Memory** %MEMORY
  %loadMem_40066f = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %756, i64 0, i64 2
  %YMM2.i278 = bitcast %union.VectorReg* %757 to %"class.std::bitset"*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %758, i64 0, i64 3
  %XMM3.i279 = bitcast %union.VectorReg* %759 to %union.vec128_t*
  %760 = bitcast %"class.std::bitset"* %YMM2.i278 to i8*
  %761 = bitcast %"class.std::bitset"* %YMM2.i278 to i8*
  %762 = bitcast %union.vec128_t* %XMM3.i279 to i8*
  %763 = load i64, i64* %PC.i277
  %764 = add i64 %763, 4
  store i64 %764, i64* %PC.i277
  %765 = bitcast i8* %761 to double*
  %766 = load double, double* %765, align 1
  %767 = getelementptr inbounds i8, i8* %761, i64 8
  %768 = bitcast i8* %767 to i64*
  %769 = load i64, i64* %768, align 1
  %770 = bitcast i8* %762 to double*
  %771 = load double, double* %770, align 1
  %772 = fmul double %766, %771
  %773 = bitcast i8* %760 to double*
  store double %772, double* %773, align 1
  %774 = getelementptr inbounds i8, i8* %760, i64 8
  %775 = bitcast i8* %774 to i64*
  store i64 %769, i64* %775, align 1
  store %struct.Memory* %loadMem_40066f, %struct.Memory** %MEMORY
  %loadMem_400673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %780 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %779, i64 0, i64 1
  %YMM1.i275 = bitcast %union.VectorReg* %780 to %"class.std::bitset"*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %782 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %781, i64 0, i64 2
  %XMM2.i276 = bitcast %union.VectorReg* %782 to %union.vec128_t*
  %783 = bitcast %"class.std::bitset"* %YMM1.i275 to i8*
  %784 = bitcast %"class.std::bitset"* %YMM1.i275 to i8*
  %785 = bitcast %union.vec128_t* %XMM2.i276 to i8*
  %786 = load i64, i64* %PC.i274
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC.i274
  %788 = bitcast i8* %784 to double*
  %789 = load double, double* %788, align 1
  %790 = getelementptr inbounds i8, i8* %784, i64 8
  %791 = bitcast i8* %790 to i64*
  %792 = load i64, i64* %791, align 1
  %793 = bitcast i8* %785 to double*
  %794 = load double, double* %793, align 1
  %795 = fdiv double %789, %794
  %796 = bitcast i8* %783 to double*
  store double %795, double* %796, align 1
  %797 = getelementptr inbounds i8, i8* %783, i64 8
  %798 = bitcast i8* %797 to i64*
  store i64 %792, i64* %798, align 1
  store %struct.Memory* %loadMem_400673, %struct.Memory** %MEMORY
  %loadMem_400677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 15
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %806 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %805, i64 0, i64 1
  %XMM1.i273 = bitcast %union.VectorReg* %806 to %union.vec128_t*
  %807 = load i64, i64* %RBP.i272
  %808 = sub i64 %807, 48
  %809 = bitcast %union.vec128_t* %XMM1.i273 to i8*
  %810 = load i64, i64* %PC.i271
  %811 = add i64 %810, 5
  store i64 %811, i64* %PC.i271
  %812 = bitcast i8* %809 to double*
  %813 = load double, double* %812, align 1
  %814 = inttoptr i64 %808 to double*
  store double %813, double* %814
  store %struct.Memory* %loadMem_400677, %struct.Memory** %MEMORY
  %loadMem_40067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 33
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 15
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %822 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %821, i64 0, i64 0
  %XMM0.i270 = bitcast %union.VectorReg* %822 to %union.vec128_t*
  %823 = load i64, i64* %RBP.i269
  %824 = sub i64 %823, 16
  %825 = bitcast %union.vec128_t* %XMM0.i270 to i8*
  %826 = load i64, i64* %PC.i268
  %827 = add i64 %826, 5
  store i64 %827, i64* %PC.i268
  %828 = bitcast i8* %825 to double*
  %829 = load double, double* %828, align 1
  %830 = inttoptr i64 %824 to double*
  store double %829, double* %830
  store %struct.Memory* %loadMem_40067c, %struct.Memory** %MEMORY
  %loadMem_400681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 15
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %837, i64 0, i64 0
  %XMM0.i267 = bitcast %union.VectorReg* %838 to %union.vec128_t*
  %839 = load i64, i64* %RBP.i266
  %840 = sub i64 %839, 32
  %841 = bitcast %union.vec128_t* %XMM0.i267 to i8*
  %842 = load i64, i64* %PC.i265
  %843 = add i64 %842, 5
  store i64 %843, i64* %PC.i265
  %844 = bitcast i8* %841 to double*
  %845 = load double, double* %844, align 1
  %846 = inttoptr i64 %840 to double*
  store double %845, double* %846
  store %struct.Memory* %loadMem_400681, %struct.Memory** %MEMORY
  %loadMem_400686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i264
  %854 = sub i64 %853, 72
  %855 = load i64, i64* %PC.i263
  %856 = add i64 %855, 8
  store i64 %856, i64* %PC.i263
  %857 = inttoptr i64 %854 to i64*
  store i64 1, i64* %857
  store %struct.Memory* %loadMem_400686, %struct.Memory** %MEMORY
  %loadMem_40068e = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %863 to i32*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i262
  %868 = sub i64 %867, 104
  %869 = load i32, i32* %EAX.i261
  %870 = zext i32 %869 to i64
  %871 = load i64, i64* %PC.i260
  %872 = add i64 %871, 3
  store i64 %872, i64* %PC.i260
  %873 = inttoptr i64 %868 to i32*
  store i32 %869, i32* %873
  store %struct.Memory* %loadMem_40068e, %struct.Memory** %MEMORY
  br label %block_.L_400691

block_.L_400691:                                  ; preds = %block_4006a6, %entry
  %loadMem_400691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 15
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RBP.i259
  %884 = sub i64 %883, 72
  %885 = load i64, i64* %PC.i257
  %886 = add i64 %885, 4
  store i64 %886, i64* %PC.i257
  %887 = inttoptr i64 %884 to i64*
  %888 = load i64, i64* %887
  store i64 %888, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_400691, %struct.Memory** %MEMORY
  %loadMem_400695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 5
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 15
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RBP.i256
  %899 = sub i64 %898, 80
  %900 = load i64, i64* %PC.i254
  %901 = add i64 %900, 4
  store i64 %901, i64* %PC.i254
  %902 = inttoptr i64 %899 to i64*
  %903 = load i64, i64* %902
  store i64 %903, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_400695, %struct.Memory** %MEMORY
  %loadMem_400699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 5
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RCX.i253
  %911 = load i64, i64* %PC.i252
  %912 = add i64 %911, 4
  store i64 %912, i64* %PC.i252
  %913 = sub i64 %910, 1
  store i64 %913, i64* %RCX.i253, align 8
  %914 = icmp ult i64 %910, 1
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %915, i8* %916, align 1
  %917 = trunc i64 %913 to i32
  %918 = and i32 %917, 255
  %919 = call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %922, i8* %923, align 1
  %924 = xor i64 1, %910
  %925 = xor i64 %924, %913
  %926 = lshr i64 %925, 4
  %927 = trunc i64 %926 to i8
  %928 = and i8 %927, 1
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %928, i8* %929, align 1
  %930 = icmp eq i64 %913, 0
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %931, i8* %932, align 1
  %933 = lshr i64 %913, 63
  %934 = trunc i64 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %934, i8* %935, align 1
  %936 = lshr i64 %910, 63
  %937 = xor i64 %933, %936
  %938 = add i64 %937, %936
  %939 = icmp eq i64 %938, 2
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %940, i8* %941, align 1
  store %struct.Memory* %loadMem_400699, %struct.Memory** %MEMORY
  %loadMem_40069d = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 1
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 5
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %950 to i64*
  %951 = load i64, i64* %RAX.i250
  %952 = load i64, i64* %RCX.i251
  %953 = load i64, i64* %PC.i249
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC.i249
  %955 = sub i64 %951, %952
  %956 = icmp ult i64 %951, %952
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %957, i8* %958, align 1
  %959 = trunc i64 %955 to i32
  %960 = and i32 %959, 255
  %961 = call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %964, i8* %965, align 1
  %966 = xor i64 %952, %951
  %967 = xor i64 %966, %955
  %968 = lshr i64 %967, 4
  %969 = trunc i64 %968 to i8
  %970 = and i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %970, i8* %971, align 1
  %972 = icmp eq i64 %955, 0
  %973 = zext i1 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %973, i8* %974, align 1
  %975 = lshr i64 %955, 63
  %976 = trunc i64 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %976, i8* %977, align 1
  %978 = lshr i64 %951, 63
  %979 = lshr i64 %952, 63
  %980 = xor i64 %979, %978
  %981 = xor i64 %975, %978
  %982 = add i64 %981, %980
  %983 = icmp eq i64 %982, 2
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %984, i8* %985, align 1
  store %struct.Memory* %loadMem_40069d, %struct.Memory** %MEMORY
  %loadMem_4006a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %PC.i248
  %990 = add i64 %989, 181
  %991 = load i64, i64* %PC.i248
  %992 = add i64 %991, 6
  %993 = load i64, i64* %PC.i248
  %994 = add i64 %993, 6
  store i64 %994, i64* %PC.i248
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %996 = load i8, i8* %995, align 1
  %997 = icmp eq i8 %996, 0
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %999 = load i8, i8* %998, align 1
  %1000 = icmp ne i8 %999, 0
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1002 = load i8, i8* %1001, align 1
  %1003 = icmp ne i8 %1002, 0
  %1004 = xor i1 %1000, %1003
  %1005 = xor i1 %1004, true
  %1006 = and i1 %997, %1005
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %BRANCH_TAKEN, align 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1009 = select i1 %1006, i64 %990, i64 %992
  store i64 %1009, i64* %1008, align 8
  store %struct.Memory* %loadMem_4006a0, %struct.Memory** %MEMORY
  %loadBr_4006a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4006a0 = icmp eq i8 %loadBr_4006a0, 1
  br i1 %cmpBr_4006a0, label %block_.L_400755, label %block_4006a6

block_4006a6:                                     ; preds = %block_.L_400691
  %loadMem_4006a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 15
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1017 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1016, i64 0, i64 0
  %YMM0.i247 = bitcast %union.VectorReg* %1017 to %"class.std::bitset"*
  %1018 = bitcast %"class.std::bitset"* %YMM0.i247 to i8*
  %1019 = load i64, i64* %RBP.i246
  %1020 = sub i64 %1019, 72
  %1021 = load i64, i64* %PC.i245
  %1022 = add i64 %1021, 6
  store i64 %1022, i64* %PC.i245
  %1023 = inttoptr i64 %1020 to i64*
  %1024 = load i64, i64* %1023
  %1025 = sitofp i64 %1024 to double
  %1026 = bitcast i8* %1018 to double*
  store double %1025, double* %1026, align 1
  store %struct.Memory* %loadMem_4006a6, %struct.Memory** %MEMORY
  %loadMem_4006ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 15
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1033, i64 0, i64 0
  %YMM0.i244 = bitcast %union.VectorReg* %1034 to %"class.std::bitset"*
  %1035 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %1036 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %1037 = load i64, i64* %RBP.i243
  %1038 = sub i64 %1037, 48
  %1039 = load i64, i64* %PC.i242
  %1040 = add i64 %1039, 5
  store i64 %1040, i64* %PC.i242
  %1041 = bitcast i8* %1036 to double*
  %1042 = load double, double* %1041, align 1
  %1043 = getelementptr inbounds i8, i8* %1036, i64 8
  %1044 = bitcast i8* %1043 to i64*
  %1045 = load i64, i64* %1044, align 1
  %1046 = inttoptr i64 %1038 to double*
  %1047 = load double, double* %1046
  %1048 = fmul double %1042, %1047
  %1049 = bitcast i8* %1035 to double*
  store double %1048, double* %1049, align 1
  %1050 = getelementptr inbounds i8, i8* %1035, i64 8
  %1051 = bitcast i8* %1050 to i64*
  store i64 %1045, i64* %1051, align 1
  store %struct.Memory* %loadMem_4006ac, %struct.Memory** %MEMORY
  %loadMem_4006b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 15
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1059 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1058, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %1059 to %union.vec128_t*
  %1060 = load i64, i64* %RBP.i240
  %1061 = sub i64 %1060, 24
  %1062 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %1063 = load i64, i64* %PC.i239
  %1064 = add i64 %1063, 5
  store i64 %1064, i64* %PC.i239
  %1065 = bitcast i8* %1062 to double*
  %1066 = load double, double* %1065, align 1
  %1067 = inttoptr i64 %1061 to double*
  store double %1066, double* %1067
  store %struct.Memory* %loadMem_4006b1, %struct.Memory** %MEMORY
  %loadMem_4006b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1075 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1074, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %1075 to %"class.std::bitset"*
  %1076 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %1077 = load i64, i64* %RBP.i237
  %1078 = sub i64 %1077, 24
  %1079 = load i64, i64* %PC.i236
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC.i236
  %1081 = inttoptr i64 %1078 to double*
  %1082 = load double, double* %1081
  %1083 = bitcast i8* %1076 to double*
  store double %1082, double* %1083, align 1
  %1084 = getelementptr inbounds i8, i8* %1076, i64 8
  %1085 = bitcast i8* %1084 to double*
  store double 0.000000e+00, double* %1085, align 1
  store %struct.Memory* %loadMem_4006b6, %struct.Memory** %MEMORY
  %loadMem_4006bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 15
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1093 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1092, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %1093 to %"class.std::bitset"*
  %1094 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %1095 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %1096 = load i64, i64* %RBP.i234
  %1097 = sub i64 %1096, 24
  %1098 = load i64, i64* %PC.i233
  %1099 = add i64 %1098, 5
  store i64 %1099, i64* %PC.i233
  %1100 = bitcast i8* %1095 to double*
  %1101 = load double, double* %1100, align 1
  %1102 = getelementptr inbounds i8, i8* %1095, i64 8
  %1103 = bitcast i8* %1102 to i64*
  %1104 = load i64, i64* %1103, align 1
  %1105 = inttoptr i64 %1097 to double*
  %1106 = load double, double* %1105
  %1107 = fmul double %1101, %1106
  %1108 = bitcast i8* %1094 to double*
  store double %1107, double* %1108, align 1
  %1109 = getelementptr inbounds i8, i8* %1094, i64 8
  %1110 = bitcast i8* %1109 to i64*
  store i64 %1104, i64* %1110, align 1
  store %struct.Memory* %loadMem_4006bb, %struct.Memory** %MEMORY
  %loadMem_4006c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 15
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1117, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %1118 to %union.vec128_t*
  %1119 = load i64, i64* %RBP.i231
  %1120 = sub i64 %1119, 40
  %1121 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %1122 = load i64, i64* %PC.i230
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %PC.i230
  %1124 = bitcast i8* %1121 to double*
  %1125 = load double, double* %1124, align 1
  %1126 = inttoptr i64 %1120 to double*
  store double %1125, double* %1126
  store %struct.Memory* %loadMem_4006c0, %struct.Memory** %MEMORY
  %loadMem_4006c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 15
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1134 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1133, i64 0, i64 0
  %YMM0.i229 = bitcast %union.VectorReg* %1134 to %"class.std::bitset"*
  %1135 = bitcast %"class.std::bitset"* %YMM0.i229 to i8*
  %1136 = load i64, i64* %RBP.i228
  %1137 = sub i64 %1136, 16
  %1138 = load i64, i64* %PC.i227
  %1139 = add i64 %1138, 5
  store i64 %1139, i64* %PC.i227
  %1140 = inttoptr i64 %1137 to double*
  %1141 = load double, double* %1140
  %1142 = bitcast i8* %1135 to double*
  store double %1141, double* %1142, align 1
  %1143 = getelementptr inbounds i8, i8* %1135, i64 8
  %1144 = bitcast i8* %1143 to double*
  store double 0.000000e+00, double* %1144, align 1
  store %struct.Memory* %loadMem_4006c5, %struct.Memory** %MEMORY
  %loadMem_4006ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1151, i64 0, i64 1
  %YMM1.i226 = bitcast %union.VectorReg* %1152 to %"class.std::bitset"*
  %1153 = bitcast %"class.std::bitset"* %YMM1.i226 to i8*
  %1154 = load i64, i64* %RBP.i225
  %1155 = sub i64 %1154, 40
  %1156 = load i64, i64* %PC.i224
  %1157 = add i64 %1156, 5
  store i64 %1157, i64* %PC.i224
  %1158 = inttoptr i64 %1155 to double*
  %1159 = load double, double* %1158
  %1160 = bitcast i8* %1153 to double*
  store double %1159, double* %1160, align 1
  %1161 = getelementptr inbounds i8, i8* %1153, i64 8
  %1162 = bitcast i8* %1161 to double*
  store double 0.000000e+00, double* %1162, align 1
  store %struct.Memory* %loadMem_4006ca, %struct.Memory** %MEMORY
  %loadMem_4006cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1169, i64 0, i64 2
  %YMM2.i223 = bitcast %union.VectorReg* %1170 to %"class.std::bitset"*
  %1171 = bitcast %"class.std::bitset"* %YMM2.i223 to i8*
  %1172 = load i64, i64* %RBP.i222
  %1173 = sub i64 %1172, 40
  %1174 = load i64, i64* %PC.i221
  %1175 = add i64 %1174, 5
  store i64 %1175, i64* %PC.i221
  %1176 = inttoptr i64 %1173 to double*
  %1177 = load double, double* %1176
  %1178 = bitcast i8* %1171 to double*
  store double %1177, double* %1178, align 1
  %1179 = getelementptr inbounds i8, i8* %1171, i64 8
  %1180 = bitcast i8* %1179 to double*
  store double 0.000000e+00, double* %1180, align 1
  store %struct.Memory* %loadMem_4006cf, %struct.Memory** %MEMORY
  %loadMem_4006d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1187, i64 0, i64 3
  %YMM3.i220 = bitcast %union.VectorReg* %1188 to %"class.std::bitset"*
  %1189 = bitcast %"class.std::bitset"* %YMM3.i220 to i8*
  %1190 = load i64, i64* %RBP.i219
  %1191 = sub i64 %1190, 40
  %1192 = load i64, i64* %PC.i218
  %1193 = add i64 %1192, 5
  store i64 %1193, i64* %PC.i218
  %1194 = inttoptr i64 %1191 to double*
  %1195 = load double, double* %1194
  %1196 = bitcast i8* %1189 to double*
  store double %1195, double* %1196, align 1
  %1197 = getelementptr inbounds i8, i8* %1189, i64 8
  %1198 = bitcast i8* %1197 to double*
  store double 0.000000e+00, double* %1198, align 1
  store %struct.Memory* %loadMem_4006d4, %struct.Memory** %MEMORY
  %loadMem_4006d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 15
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1205, i64 0, i64 4
  %YMM4.i217 = bitcast %union.VectorReg* %1206 to %"class.std::bitset"*
  %1207 = bitcast %"class.std::bitset"* %YMM4.i217 to i8*
  %1208 = load i64, i64* %RBP.i216
  %1209 = sub i64 %1208, 40
  %1210 = load i64, i64* %PC.i215
  %1211 = add i64 %1210, 5
  store i64 %1211, i64* %PC.i215
  %1212 = inttoptr i64 %1209 to double*
  %1213 = load double, double* %1212
  %1214 = bitcast i8* %1207 to double*
  store double %1213, double* %1214, align 1
  %1215 = getelementptr inbounds i8, i8* %1207, i64 8
  %1216 = bitcast i8* %1215 to double*
  store double 0.000000e+00, double* %1216, align 1
  store %struct.Memory* %loadMem_4006d9, %struct.Memory** %MEMORY
  %loadMem_4006de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 15
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 5
  %YMM5.i214 = bitcast %union.VectorReg* %1224 to %"class.std::bitset"*
  %1225 = bitcast %"class.std::bitset"* %YMM5.i214 to i8*
  %1226 = load i64, i64* %RBP.i213
  %1227 = sub i64 %1226, 40
  %1228 = load i64, i64* %PC.i212
  %1229 = add i64 %1228, 5
  store i64 %1229, i64* %PC.i212
  %1230 = inttoptr i64 %1227 to double*
  %1231 = load double, double* %1230
  %1232 = bitcast i8* %1225 to double*
  store double %1231, double* %1232, align 1
  %1233 = getelementptr inbounds i8, i8* %1225, i64 8
  %1234 = bitcast i8* %1233 to double*
  store double 0.000000e+00, double* %1234, align 1
  store %struct.Memory* %loadMem_4006de, %struct.Memory** %MEMORY
  %loadMem_4006e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1238, i64 0, i64 6
  %YMM6.i211 = bitcast %union.VectorReg* %1239 to %"class.std::bitset"*
  %1240 = bitcast %"class.std::bitset"* %YMM6.i211 to i8*
  %1241 = load i64, i64* %PC.i210
  %1242 = add i64 %1241, 9
  store i64 %1242, i64* %PC.i210
  %1243 = load double, double* inttoptr (i64 6295704 to double*)
  %1244 = bitcast i8* %1240 to double*
  store double %1243, double* %1244, align 1
  %1245 = getelementptr inbounds i8, i8* %1240, i64 8
  %1246 = bitcast i8* %1245 to double*
  store double 0.000000e+00, double* %1246, align 1
  store %struct.Memory* %loadMem_4006e3, %struct.Memory** %MEMORY
  %loadMem_4006ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 15
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1253, i64 0, i64 6
  %YMM6.i209 = bitcast %union.VectorReg* %1254 to %"class.std::bitset"*
  %1255 = bitcast %"class.std::bitset"* %YMM6.i209 to i8*
  %1256 = bitcast %"class.std::bitset"* %YMM6.i209 to i8*
  %1257 = load i64, i64* %RBP.i208
  %1258 = sub i64 %1257, 40
  %1259 = load i64, i64* %PC.i207
  %1260 = add i64 %1259, 5
  store i64 %1260, i64* %PC.i207
  %1261 = bitcast i8* %1256 to double*
  %1262 = load double, double* %1261, align 1
  %1263 = getelementptr inbounds i8, i8* %1256, i64 8
  %1264 = bitcast i8* %1263 to i64*
  %1265 = load i64, i64* %1264, align 1
  %1266 = inttoptr i64 %1258 to double*
  %1267 = load double, double* %1266
  %1268 = fmul double %1262, %1267
  %1269 = bitcast i8* %1255 to double*
  store double %1268, double* %1269, align 1
  %1270 = getelementptr inbounds i8, i8* %1255, i64 8
  %1271 = bitcast i8* %1270 to i64*
  store i64 %1265, i64* %1271, align 1
  store %struct.Memory* %loadMem_4006ec, %struct.Memory** %MEMORY
  %loadMem_4006f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1275, i64 0, i64 6
  %YMM6.i206 = bitcast %union.VectorReg* %1276 to %"class.std::bitset"*
  %1277 = bitcast %"class.std::bitset"* %YMM6.i206 to i8*
  %1278 = bitcast %"class.std::bitset"* %YMM6.i206 to i8*
  %1279 = load i64, i64* %PC.i205
  %1280 = add i64 %1279, 9
  store i64 %1280, i64* %PC.i205
  %1281 = bitcast i8* %1278 to double*
  %1282 = load double, double* %1281, align 1
  %1283 = getelementptr inbounds i8, i8* %1278, i64 8
  %1284 = bitcast i8* %1283 to i64*
  %1285 = load i64, i64* %1284, align 1
  %1286 = load double, double* inttoptr (i64 6295696 to double*)
  %1287 = fadd double %1282, %1286
  %1288 = bitcast i8* %1277 to double*
  store double %1287, double* %1288, align 1
  %1289 = getelementptr inbounds i8, i8* %1277, i64 8
  %1290 = bitcast i8* %1289 to i64*
  store i64 %1285, i64* %1290, align 1
  store %struct.Memory* %loadMem_4006f1, %struct.Memory** %MEMORY
  %loadMem_4006fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1294, i64 0, i64 5
  %YMM5.i203 = bitcast %union.VectorReg* %1295 to %"class.std::bitset"*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1296, i64 0, i64 6
  %XMM6.i204 = bitcast %union.VectorReg* %1297 to %union.vec128_t*
  %1298 = bitcast %"class.std::bitset"* %YMM5.i203 to i8*
  %1299 = bitcast %"class.std::bitset"* %YMM5.i203 to i8*
  %1300 = bitcast %union.vec128_t* %XMM6.i204 to i8*
  %1301 = load i64, i64* %PC.i202
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC.i202
  %1303 = bitcast i8* %1299 to double*
  %1304 = load double, double* %1303, align 1
  %1305 = getelementptr inbounds i8, i8* %1299, i64 8
  %1306 = bitcast i8* %1305 to i64*
  %1307 = load i64, i64* %1306, align 1
  %1308 = bitcast i8* %1300 to double*
  %1309 = load double, double* %1308, align 1
  %1310 = fmul double %1304, %1309
  %1311 = bitcast i8* %1298 to double*
  store double %1310, double* %1311, align 1
  %1312 = getelementptr inbounds i8, i8* %1298, i64 8
  %1313 = bitcast i8* %1312 to i64*
  store i64 %1307, i64* %1313, align 1
  store %struct.Memory* %loadMem_4006fa, %struct.Memory** %MEMORY
  %loadMem_4006fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1317, i64 0, i64 5
  %YMM5.i201 = bitcast %union.VectorReg* %1318 to %"class.std::bitset"*
  %1319 = bitcast %"class.std::bitset"* %YMM5.i201 to i8*
  %1320 = bitcast %"class.std::bitset"* %YMM5.i201 to i8*
  %1321 = load i64, i64* %PC.i200
  %1322 = add i64 %1321, 9
  store i64 %1322, i64* %PC.i200
  %1323 = bitcast i8* %1320 to double*
  %1324 = load double, double* %1323, align 1
  %1325 = getelementptr inbounds i8, i8* %1320, i64 8
  %1326 = bitcast i8* %1325 to i64*
  %1327 = load i64, i64* %1326, align 1
  %1328 = load double, double* inttoptr (i64 6295688 to double*)
  %1329 = fadd double %1324, %1328
  %1330 = bitcast i8* %1319 to double*
  store double %1329, double* %1330, align 1
  %1331 = getelementptr inbounds i8, i8* %1319, i64 8
  %1332 = bitcast i8* %1331 to i64*
  store i64 %1327, i64* %1332, align 1
  store %struct.Memory* %loadMem_4006fe, %struct.Memory** %MEMORY
  %loadMem_400707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1337 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1336, i64 0, i64 4
  %YMM4.i198 = bitcast %union.VectorReg* %1337 to %"class.std::bitset"*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1338, i64 0, i64 5
  %XMM5.i199 = bitcast %union.VectorReg* %1339 to %union.vec128_t*
  %1340 = bitcast %"class.std::bitset"* %YMM4.i198 to i8*
  %1341 = bitcast %"class.std::bitset"* %YMM4.i198 to i8*
  %1342 = bitcast %union.vec128_t* %XMM5.i199 to i8*
  %1343 = load i64, i64* %PC.i197
  %1344 = add i64 %1343, 4
  store i64 %1344, i64* %PC.i197
  %1345 = bitcast i8* %1341 to double*
  %1346 = load double, double* %1345, align 1
  %1347 = getelementptr inbounds i8, i8* %1341, i64 8
  %1348 = bitcast i8* %1347 to i64*
  %1349 = load i64, i64* %1348, align 1
  %1350 = bitcast i8* %1342 to double*
  %1351 = load double, double* %1350, align 1
  %1352 = fmul double %1346, %1351
  %1353 = bitcast i8* %1340 to double*
  store double %1352, double* %1353, align 1
  %1354 = getelementptr inbounds i8, i8* %1340, i64 8
  %1355 = bitcast i8* %1354 to i64*
  store i64 %1349, i64* %1355, align 1
  store %struct.Memory* %loadMem_400707, %struct.Memory** %MEMORY
  %loadMem_40070b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 33
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1360 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1359, i64 0, i64 4
  %YMM4.i196 = bitcast %union.VectorReg* %1360 to %"class.std::bitset"*
  %1361 = bitcast %"class.std::bitset"* %YMM4.i196 to i8*
  %1362 = bitcast %"class.std::bitset"* %YMM4.i196 to i8*
  %1363 = load i64, i64* %PC.i195
  %1364 = add i64 %1363, 9
  store i64 %1364, i64* %PC.i195
  %1365 = bitcast i8* %1362 to double*
  %1366 = load double, double* %1365, align 1
  %1367 = getelementptr inbounds i8, i8* %1362, i64 8
  %1368 = bitcast i8* %1367 to i64*
  %1369 = load i64, i64* %1368, align 1
  %1370 = load double, double* inttoptr (i64 6295680 to double*)
  %1371 = fadd double %1366, %1370
  %1372 = bitcast i8* %1361 to double*
  store double %1371, double* %1372, align 1
  %1373 = getelementptr inbounds i8, i8* %1361, i64 8
  %1374 = bitcast i8* %1373 to i64*
  store i64 %1369, i64* %1374, align 1
  store %struct.Memory* %loadMem_40070b, %struct.Memory** %MEMORY
  %loadMem_400714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1379 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1378, i64 0, i64 3
  %YMM3.i193 = bitcast %union.VectorReg* %1379 to %"class.std::bitset"*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1380, i64 0, i64 4
  %XMM4.i194 = bitcast %union.VectorReg* %1381 to %union.vec128_t*
  %1382 = bitcast %"class.std::bitset"* %YMM3.i193 to i8*
  %1383 = bitcast %"class.std::bitset"* %YMM3.i193 to i8*
  %1384 = bitcast %union.vec128_t* %XMM4.i194 to i8*
  %1385 = load i64, i64* %PC.i192
  %1386 = add i64 %1385, 4
  store i64 %1386, i64* %PC.i192
  %1387 = bitcast i8* %1383 to double*
  %1388 = load double, double* %1387, align 1
  %1389 = getelementptr inbounds i8, i8* %1383, i64 8
  %1390 = bitcast i8* %1389 to i64*
  %1391 = load i64, i64* %1390, align 1
  %1392 = bitcast i8* %1384 to double*
  %1393 = load double, double* %1392, align 1
  %1394 = fmul double %1388, %1393
  %1395 = bitcast i8* %1382 to double*
  store double %1394, double* %1395, align 1
  %1396 = getelementptr inbounds i8, i8* %1382, i64 8
  %1397 = bitcast i8* %1396 to i64*
  store i64 %1391, i64* %1397, align 1
  store %struct.Memory* %loadMem_400714, %struct.Memory** %MEMORY
  %loadMem_400718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1401, i64 0, i64 3
  %YMM3.i191 = bitcast %union.VectorReg* %1402 to %"class.std::bitset"*
  %1403 = bitcast %"class.std::bitset"* %YMM3.i191 to i8*
  %1404 = bitcast %"class.std::bitset"* %YMM3.i191 to i8*
  %1405 = load i64, i64* %PC.i190
  %1406 = add i64 %1405, 9
  store i64 %1406, i64* %PC.i190
  %1407 = bitcast i8* %1404 to double*
  %1408 = load double, double* %1407, align 1
  %1409 = getelementptr inbounds i8, i8* %1404, i64 8
  %1410 = bitcast i8* %1409 to i64*
  %1411 = load i64, i64* %1410, align 1
  %1412 = load double, double* inttoptr (i64 6295672 to double*)
  %1413 = fadd double %1408, %1412
  %1414 = bitcast i8* %1403 to double*
  store double %1413, double* %1414, align 1
  %1415 = getelementptr inbounds i8, i8* %1403, i64 8
  %1416 = bitcast i8* %1415 to i64*
  store i64 %1411, i64* %1416, align 1
  store %struct.Memory* %loadMem_400718, %struct.Memory** %MEMORY
  %loadMem_400721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1421 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1420, i64 0, i64 2
  %YMM2.i188 = bitcast %union.VectorReg* %1421 to %"class.std::bitset"*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1422, i64 0, i64 3
  %XMM3.i189 = bitcast %union.VectorReg* %1423 to %union.vec128_t*
  %1424 = bitcast %"class.std::bitset"* %YMM2.i188 to i8*
  %1425 = bitcast %"class.std::bitset"* %YMM2.i188 to i8*
  %1426 = bitcast %union.vec128_t* %XMM3.i189 to i8*
  %1427 = load i64, i64* %PC.i187
  %1428 = add i64 %1427, 4
  store i64 %1428, i64* %PC.i187
  %1429 = bitcast i8* %1425 to double*
  %1430 = load double, double* %1429, align 1
  %1431 = getelementptr inbounds i8, i8* %1425, i64 8
  %1432 = bitcast i8* %1431 to i64*
  %1433 = load i64, i64* %1432, align 1
  %1434 = bitcast i8* %1426 to double*
  %1435 = load double, double* %1434, align 1
  %1436 = fmul double %1430, %1435
  %1437 = bitcast i8* %1424 to double*
  store double %1436, double* %1437, align 1
  %1438 = getelementptr inbounds i8, i8* %1424, i64 8
  %1439 = bitcast i8* %1438 to i64*
  store i64 %1433, i64* %1439, align 1
  store %struct.Memory* %loadMem_400721, %struct.Memory** %MEMORY
  %loadMem_400725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1443, i64 0, i64 2
  %YMM2.i186 = bitcast %union.VectorReg* %1444 to %"class.std::bitset"*
  %1445 = bitcast %"class.std::bitset"* %YMM2.i186 to i8*
  %1446 = bitcast %"class.std::bitset"* %YMM2.i186 to i8*
  %1447 = load i64, i64* %PC.i185
  %1448 = add i64 %1447, 9
  store i64 %1448, i64* %PC.i185
  %1449 = bitcast i8* %1446 to double*
  %1450 = load double, double* %1449, align 1
  %1451 = getelementptr inbounds i8, i8* %1446, i64 8
  %1452 = bitcast i8* %1451 to i64*
  %1453 = load i64, i64* %1452, align 1
  %1454 = load double, double* inttoptr (i64 6295664 to double*)
  %1455 = fadd double %1450, %1454
  %1456 = bitcast i8* %1445 to double*
  store double %1455, double* %1456, align 1
  %1457 = getelementptr inbounds i8, i8* %1445, i64 8
  %1458 = bitcast i8* %1457 to i64*
  store i64 %1453, i64* %1458, align 1
  store %struct.Memory* %loadMem_400725, %struct.Memory** %MEMORY
  %loadMem_40072e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1462, i64 0, i64 1
  %YMM1.i183 = bitcast %union.VectorReg* %1463 to %"class.std::bitset"*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1464, i64 0, i64 2
  %XMM2.i184 = bitcast %union.VectorReg* %1465 to %union.vec128_t*
  %1466 = bitcast %"class.std::bitset"* %YMM1.i183 to i8*
  %1467 = bitcast %"class.std::bitset"* %YMM1.i183 to i8*
  %1468 = bitcast %union.vec128_t* %XMM2.i184 to i8*
  %1469 = load i64, i64* %PC.i182
  %1470 = add i64 %1469, 4
  store i64 %1470, i64* %PC.i182
  %1471 = bitcast i8* %1467 to double*
  %1472 = load double, double* %1471, align 1
  %1473 = getelementptr inbounds i8, i8* %1467, i64 8
  %1474 = bitcast i8* %1473 to i64*
  %1475 = load i64, i64* %1474, align 1
  %1476 = bitcast i8* %1468 to double*
  %1477 = load double, double* %1476, align 1
  %1478 = fmul double %1472, %1477
  %1479 = bitcast i8* %1466 to double*
  store double %1478, double* %1479, align 1
  %1480 = getelementptr inbounds i8, i8* %1466, i64 8
  %1481 = bitcast i8* %1480 to i64*
  store i64 %1475, i64* %1481, align 1
  store %struct.Memory* %loadMem_40072e, %struct.Memory** %MEMORY
  %loadMem_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1486 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1485, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %1486 to %"class.std::bitset"*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1487, i64 0, i64 1
  %XMM1.i181 = bitcast %union.VectorReg* %1488 to %union.vec128_t*
  %1489 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %1490 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %1491 = bitcast %union.vec128_t* %XMM1.i181 to i8*
  %1492 = load i64, i64* %PC.i179
  %1493 = add i64 %1492, 4
  store i64 %1493, i64* %PC.i179
  %1494 = bitcast i8* %1490 to double*
  %1495 = load double, double* %1494, align 1
  %1496 = getelementptr inbounds i8, i8* %1490, i64 8
  %1497 = bitcast i8* %1496 to i64*
  %1498 = load i64, i64* %1497, align 1
  %1499 = bitcast i8* %1491 to double*
  %1500 = load double, double* %1499, align 1
  %1501 = fadd double %1495, %1500
  %1502 = bitcast i8* %1489 to double*
  store double %1501, double* %1502, align 1
  %1503 = getelementptr inbounds i8, i8* %1489, i64 8
  %1504 = bitcast i8* %1503 to i64*
  store i64 %1498, i64* %1504, align 1
  store %struct.Memory* %loadMem_400732, %struct.Memory** %MEMORY
  %loadMem_400736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1509 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1508, i64 0, i64 0
  %YMM0.i178 = bitcast %union.VectorReg* %1509 to %"class.std::bitset"*
  %1510 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %1511 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %1512 = load i64, i64* %PC.i177
  %1513 = add i64 %1512, 9
  store i64 %1513, i64* %PC.i177
  %1514 = bitcast i8* %1511 to double*
  %1515 = load double, double* %1514, align 1
  %1516 = getelementptr inbounds i8, i8* %1511, i64 8
  %1517 = bitcast i8* %1516 to i64*
  %1518 = load i64, i64* %1517, align 1
  %1519 = load double, double* inttoptr (i64 6296200 to double*)
  %1520 = fadd double %1515, %1519
  %1521 = bitcast i8* %1510 to double*
  store double %1520, double* %1521, align 1
  %1522 = getelementptr inbounds i8, i8* %1510, i64 8
  %1523 = bitcast i8* %1522 to i64*
  store i64 %1518, i64* %1523, align 1
  store %struct.Memory* %loadMem_400736, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 15
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1530, i64 0, i64 0
  %XMM0.i176 = bitcast %union.VectorReg* %1531 to %union.vec128_t*
  %1532 = load i64, i64* %RBP.i175
  %1533 = sub i64 %1532, 16
  %1534 = bitcast %union.vec128_t* %XMM0.i176 to i8*
  %1535 = load i64, i64* %PC.i174
  %1536 = add i64 %1535, 5
  store i64 %1536, i64* %PC.i174
  %1537 = bitcast i8* %1534 to double*
  %1538 = load double, double* %1537, align 1
  %1539 = inttoptr i64 %1533 to double*
  store double %1538, double* %1539
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 1
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i173
  %1550 = sub i64 %1549, 72
  %1551 = load i64, i64* %PC.i171
  %1552 = add i64 %1551, 4
  store i64 %1552, i64* %PC.i171
  %1553 = inttoptr i64 %1550 to i64*
  %1554 = load i64, i64* %1553
  store i64 %1554, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_400744, %struct.Memory** %MEMORY
  %loadMem_400748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RAX.i170
  %1562 = load i64, i64* %PC.i169
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %PC.i169
  %1564 = add i64 1, %1561
  store i64 %1564, i64* %RAX.i170, align 8
  %1565 = icmp ult i64 %1564, %1561
  %1566 = icmp ult i64 %1564, 1
  %1567 = or i1 %1565, %1566
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1568, i8* %1569, align 1
  %1570 = trunc i64 %1564 to i32
  %1571 = and i32 %1570, 255
  %1572 = call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1575, i8* %1576, align 1
  %1577 = xor i64 1, %1561
  %1578 = xor i64 %1577, %1564
  %1579 = lshr i64 %1578, 4
  %1580 = trunc i64 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1581, i8* %1582, align 1
  %1583 = icmp eq i64 %1564, 0
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1584, i8* %1585, align 1
  %1586 = lshr i64 %1564, 63
  %1587 = trunc i64 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1587, i8* %1588, align 1
  %1589 = lshr i64 %1561, 63
  %1590 = xor i64 %1586, %1589
  %1591 = add i64 %1590, %1586
  %1592 = icmp eq i64 %1591, 2
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1593, i8* %1594, align 1
  store %struct.Memory* %loadMem_400748, %struct.Memory** %MEMORY
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 1
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %RBP.i168
  %1605 = sub i64 %1604, 72
  %1606 = load i64, i64* %RAX.i167
  %1607 = load i64, i64* %PC.i166
  %1608 = add i64 %1607, 4
  store i64 %1608, i64* %PC.i166
  %1609 = inttoptr i64 %1605 to i64*
  store i64 %1606, i64* %1609
  store %struct.Memory* %loadMem_40074c, %struct.Memory** %MEMORY
  %loadMem_400750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %PC.i165
  %1614 = add i64 %1613, -191
  %1615 = load i64, i64* %PC.i165
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %PC.i165
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1614, i64* %1617, align 8
  store %struct.Memory* %loadMem_400750, %struct.Memory** %MEMORY
  br label %block_.L_400691

block_.L_400755:                                  ; preds = %block_.L_400691
  %loadMem_400755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 11
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1623 to i64*
  %1624 = load i64, i64* %PC.i164
  %1625 = add i64 %1624, 10
  store i64 %1625, i64* %PC.i164
  store i64 4196990, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400755, %struct.Memory** %MEMORY
  %loadMem_40075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1629, i64 0, i64 0
  %YMM0.i162 = bitcast %union.VectorReg* %1630 to %"class.std::bitset"*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1631, i64 0, i64 0
  %XMM0.i163 = bitcast %union.VectorReg* %1632 to %union.vec128_t*
  %1633 = bitcast %"class.std::bitset"* %YMM0.i162 to i8*
  %1634 = bitcast %"class.std::bitset"* %YMM0.i162 to i8*
  %1635 = bitcast %union.vec128_t* %XMM0.i163 to i8*
  %1636 = load i64, i64* %PC.i161
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %PC.i161
  %1638 = bitcast i8* %1634 to i64*
  %1639 = load i64, i64* %1638, align 1
  %1640 = getelementptr inbounds i8, i8* %1634, i64 8
  %1641 = bitcast i8* %1640 to i64*
  %1642 = load i64, i64* %1641, align 1
  %1643 = bitcast i8* %1635 to i64*
  %1644 = load i64, i64* %1643, align 1
  %1645 = getelementptr inbounds i8, i8* %1635, i64 8
  %1646 = bitcast i8* %1645 to i64*
  %1647 = load i64, i64* %1646, align 1
  %1648 = xor i64 %1644, %1639
  %1649 = xor i64 %1647, %1642
  %1650 = trunc i64 %1648 to i32
  %1651 = lshr i64 %1648, 32
  %1652 = trunc i64 %1651 to i32
  %1653 = bitcast i8* %1633 to i32*
  store i32 %1650, i32* %1653, align 1
  %1654 = getelementptr inbounds i8, i8* %1633, i64 4
  %1655 = bitcast i8* %1654 to i32*
  store i32 %1652, i32* %1655, align 1
  %1656 = trunc i64 %1649 to i32
  %1657 = getelementptr inbounds i8, i8* %1633, i64 8
  %1658 = bitcast i8* %1657 to i32*
  store i32 %1656, i32* %1658, align 1
  %1659 = lshr i64 %1649, 32
  %1660 = trunc i64 %1659 to i32
  %1661 = getelementptr inbounds i8, i8* %1633, i64 12
  %1662 = bitcast i8* %1661 to i32*
  store i32 %1660, i32* %1662, align 1
  store %struct.Memory* %loadMem_40075f, %struct.Memory** %MEMORY
  %loadMem_400762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1666, i64 0, i64 1
  %YMM1.i160 = bitcast %union.VectorReg* %1667 to %"class.std::bitset"*
  %1668 = bitcast %"class.std::bitset"* %YMM1.i160 to i8*
  %1669 = load i64, i64* %PC.i159
  %1670 = add i64 %1669, 646
  %1671 = load i64, i64* %PC.i159
  %1672 = add i64 %1671, 8
  store i64 %1672, i64* %PC.i159
  %1673 = inttoptr i64 %1670 to double*
  %1674 = load double, double* %1673
  %1675 = bitcast i8* %1668 to double*
  store double %1674, double* %1675, align 1
  %1676 = getelementptr inbounds i8, i8* %1668, i64 8
  %1677 = bitcast i8* %1676 to double*
  store double 0.000000e+00, double* %1677, align 1
  store %struct.Memory* %loadMem_400762, %struct.Memory** %MEMORY
  %loadMem_40076a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1681, i64 0, i64 2
  %YMM2.i158 = bitcast %union.VectorReg* %1682 to %"class.std::bitset"*
  %1683 = bitcast %"class.std::bitset"* %YMM2.i158 to i8*
  %1684 = load i64, i64* %PC.i157
  %1685 = add i64 %1684, 9
  store i64 %1685, i64* %PC.i157
  %1686 = load double, double* inttoptr (i64 6296160 to double*)
  %1687 = bitcast i8* %1683 to double*
  store double %1686, double* %1687, align 1
  %1688 = getelementptr inbounds i8, i8* %1683, i64 8
  %1689 = bitcast i8* %1688 to double*
  store double 0.000000e+00, double* %1689, align 1
  store %struct.Memory* %loadMem_40076a, %struct.Memory** %MEMORY
  %loadMem_400773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1693, i64 0, i64 2
  %YMM2.i156 = bitcast %union.VectorReg* %1694 to %"class.std::bitset"*
  %1695 = bitcast %"class.std::bitset"* %YMM2.i156 to i8*
  %1696 = bitcast %"class.std::bitset"* %YMM2.i156 to i8*
  %1697 = load i64, i64* %PC.i155
  %1698 = add i64 %1697, 9
  store i64 %1698, i64* %PC.i155
  %1699 = bitcast i8* %1696 to double*
  %1700 = load double, double* %1699, align 1
  %1701 = getelementptr inbounds i8, i8* %1696, i64 8
  %1702 = bitcast i8* %1701 to i64*
  %1703 = load i64, i64* %1702, align 1
  %1704 = load double, double* inttoptr (i64 6296224 to double*)
  %1705 = fdiv double %1700, %1704
  %1706 = bitcast i8* %1695 to double*
  store double %1705, double* %1706, align 1
  %1707 = getelementptr inbounds i8, i8* %1695, i64 8
  %1708 = bitcast i8* %1707 to i64*
  store i64 %1703, i64* %1708, align 1
  store %struct.Memory* %loadMem_400773, %struct.Memory** %MEMORY
  %loadMem_40077c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1715, i64 0, i64 2
  %XMM2.i154 = bitcast %union.VectorReg* %1716 to %union.vec128_t*
  %1717 = load i64, i64* %RBP.i153
  %1718 = sub i64 %1717, 24
  %1719 = bitcast %union.vec128_t* %XMM2.i154 to i8*
  %1720 = load i64, i64* %PC.i152
  %1721 = add i64 %1720, 5
  store i64 %1721, i64* %PC.i152
  %1722 = bitcast i8* %1719 to double*
  %1723 = load double, double* %1722, align 1
  %1724 = inttoptr i64 %1718 to double*
  store double %1723, double* %1724
  store %struct.Memory* %loadMem_40077c, %struct.Memory** %MEMORY
  %loadMem_400781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1730 to i64*
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1731, i64 0, i64 2
  %YMM2.i151 = bitcast %union.VectorReg* %1732 to %"class.std::bitset"*
  %1733 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1734 = load i64, i64* %RBP.i150
  %1735 = sub i64 %1734, 24
  %1736 = load i64, i64* %PC.i149
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC.i149
  %1738 = inttoptr i64 %1735 to double*
  %1739 = load double, double* %1738
  %1740 = bitcast i8* %1733 to double*
  store double %1739, double* %1740, align 1
  %1741 = getelementptr inbounds i8, i8* %1733, i64 8
  %1742 = bitcast i8* %1741 to double*
  store double 0.000000e+00, double* %1742, align 1
  store %struct.Memory* %loadMem_400781, %struct.Memory** %MEMORY
  %loadMem_400786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1749, i64 0, i64 2
  %YMM2.i148 = bitcast %union.VectorReg* %1750 to %"class.std::bitset"*
  %1751 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %1752 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %1753 = load i64, i64* %RBP.i147
  %1754 = sub i64 %1753, 24
  %1755 = load i64, i64* %PC.i146
  %1756 = add i64 %1755, 5
  store i64 %1756, i64* %PC.i146
  %1757 = bitcast i8* %1752 to double*
  %1758 = load double, double* %1757, align 1
  %1759 = getelementptr inbounds i8, i8* %1752, i64 8
  %1760 = bitcast i8* %1759 to i64*
  %1761 = load i64, i64* %1760, align 1
  %1762 = inttoptr i64 %1754 to double*
  %1763 = load double, double* %1762
  %1764 = fmul double %1758, %1763
  %1765 = bitcast i8* %1751 to double*
  store double %1764, double* %1765, align 1
  %1766 = getelementptr inbounds i8, i8* %1751, i64 8
  %1767 = bitcast i8* %1766 to i64*
  store i64 %1761, i64* %1767, align 1
  store %struct.Memory* %loadMem_400786, %struct.Memory** %MEMORY
  %loadMem_40078b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1774, i64 0, i64 2
  %XMM2.i145 = bitcast %union.VectorReg* %1775 to %union.vec128_t*
  %1776 = load i64, i64* %RBP.i144
  %1777 = sub i64 %1776, 40
  %1778 = bitcast %union.vec128_t* %XMM2.i145 to i8*
  %1779 = load i64, i64* %PC.i143
  %1780 = add i64 %1779, 5
  store i64 %1780, i64* %PC.i143
  %1781 = bitcast i8* %1778 to double*
  %1782 = load double, double* %1781, align 1
  %1783 = inttoptr i64 %1777 to double*
  store double %1782, double* %1783
  store %struct.Memory* %loadMem_40078b, %struct.Memory** %MEMORY
  %loadMem_400790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1790, i64 0, i64 2
  %YMM2.i142 = bitcast %union.VectorReg* %1791 to %"class.std::bitset"*
  %1792 = bitcast %"class.std::bitset"* %YMM2.i142 to i8*
  %1793 = load i64, i64* %RBP.i141
  %1794 = sub i64 %1793, 40
  %1795 = load i64, i64* %PC.i140
  %1796 = add i64 %1795, 5
  store i64 %1796, i64* %PC.i140
  %1797 = inttoptr i64 %1794 to double*
  %1798 = load double, double* %1797
  %1799 = bitcast i8* %1792 to double*
  store double %1798, double* %1799, align 1
  %1800 = getelementptr inbounds i8, i8* %1792, i64 8
  %1801 = bitcast i8* %1800 to double*
  store double 0.000000e+00, double* %1801, align 1
  store %struct.Memory* %loadMem_400790, %struct.Memory** %MEMORY
  %loadMem_400795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 33
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1808, i64 0, i64 3
  %YMM3.i139 = bitcast %union.VectorReg* %1809 to %"class.std::bitset"*
  %1810 = bitcast %"class.std::bitset"* %YMM3.i139 to i8*
  %1811 = load i64, i64* %RBP.i138
  %1812 = sub i64 %1811, 40
  %1813 = load i64, i64* %PC.i137
  %1814 = add i64 %1813, 5
  store i64 %1814, i64* %PC.i137
  %1815 = inttoptr i64 %1812 to double*
  %1816 = load double, double* %1815
  %1817 = bitcast i8* %1810 to double*
  store double %1816, double* %1817, align 1
  %1818 = getelementptr inbounds i8, i8* %1810, i64 8
  %1819 = bitcast i8* %1818 to double*
  store double 0.000000e+00, double* %1819, align 1
  store %struct.Memory* %loadMem_400795, %struct.Memory** %MEMORY
  %loadMem_40079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 15
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1826, i64 0, i64 4
  %YMM4.i136 = bitcast %union.VectorReg* %1827 to %"class.std::bitset"*
  %1828 = bitcast %"class.std::bitset"* %YMM4.i136 to i8*
  %1829 = load i64, i64* %RBP.i135
  %1830 = sub i64 %1829, 40
  %1831 = load i64, i64* %PC.i134
  %1832 = add i64 %1831, 5
  store i64 %1832, i64* %PC.i134
  %1833 = inttoptr i64 %1830 to double*
  %1834 = load double, double* %1833
  %1835 = bitcast i8* %1828 to double*
  store double %1834, double* %1835, align 1
  %1836 = getelementptr inbounds i8, i8* %1828, i64 8
  %1837 = bitcast i8* %1836 to double*
  store double 0.000000e+00, double* %1837, align 1
  store %struct.Memory* %loadMem_40079a, %struct.Memory** %MEMORY
  %loadMem_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1844, i64 0, i64 5
  %YMM5.i133 = bitcast %union.VectorReg* %1845 to %"class.std::bitset"*
  %1846 = bitcast %"class.std::bitset"* %YMM5.i133 to i8*
  %1847 = load i64, i64* %RBP.i132
  %1848 = sub i64 %1847, 40
  %1849 = load i64, i64* %PC.i131
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %PC.i131
  %1851 = inttoptr i64 %1848 to double*
  %1852 = load double, double* %1851
  %1853 = bitcast i8* %1846 to double*
  store double %1852, double* %1853, align 1
  %1854 = getelementptr inbounds i8, i8* %1846, i64 8
  %1855 = bitcast i8* %1854 to double*
  store double 0.000000e+00, double* %1855, align 1
  store %struct.Memory* %loadMem_40079f, %struct.Memory** %MEMORY
  %loadMem_4007a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 15
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1862, i64 0, i64 6
  %YMM6.i130 = bitcast %union.VectorReg* %1863 to %"class.std::bitset"*
  %1864 = bitcast %"class.std::bitset"* %YMM6.i130 to i8*
  %1865 = load i64, i64* %RBP.i129
  %1866 = sub i64 %1865, 40
  %1867 = load i64, i64* %PC.i128
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i128
  %1869 = inttoptr i64 %1866 to double*
  %1870 = load double, double* %1869
  %1871 = bitcast i8* %1864 to double*
  store double %1870, double* %1871, align 1
  %1872 = getelementptr inbounds i8, i8* %1864, i64 8
  %1873 = bitcast i8* %1872 to double*
  store double 0.000000e+00, double* %1873, align 1
  store %struct.Memory* %loadMem_4007a4, %struct.Memory** %MEMORY
  %loadMem_4007a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1878 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1877, i64 0, i64 7
  %YMM7.i127 = bitcast %union.VectorReg* %1878 to %"class.std::bitset"*
  %1879 = bitcast %"class.std::bitset"* %YMM7.i127 to i8*
  %1880 = load i64, i64* %PC.i126
  %1881 = add i64 %1880, 9
  store i64 %1881, i64* %PC.i126
  %1882 = load double, double* inttoptr (i64 6295704 to double*)
  %1883 = bitcast i8* %1879 to double*
  store double %1882, double* %1883, align 1
  %1884 = getelementptr inbounds i8, i8* %1879, i64 8
  %1885 = bitcast i8* %1884 to double*
  store double 0.000000e+00, double* %1885, align 1
  store %struct.Memory* %loadMem_4007a9, %struct.Memory** %MEMORY
  %loadMem_4007b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 15
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1892, i64 0, i64 7
  %YMM7.i125 = bitcast %union.VectorReg* %1893 to %"class.std::bitset"*
  %1894 = bitcast %"class.std::bitset"* %YMM7.i125 to i8*
  %1895 = bitcast %"class.std::bitset"* %YMM7.i125 to i8*
  %1896 = load i64, i64* %RBP.i124
  %1897 = sub i64 %1896, 40
  %1898 = load i64, i64* %PC.i123
  %1899 = add i64 %1898, 5
  store i64 %1899, i64* %PC.i123
  %1900 = bitcast i8* %1895 to double*
  %1901 = load double, double* %1900, align 1
  %1902 = getelementptr inbounds i8, i8* %1895, i64 8
  %1903 = bitcast i8* %1902 to i64*
  %1904 = load i64, i64* %1903, align 1
  %1905 = inttoptr i64 %1897 to double*
  %1906 = load double, double* %1905
  %1907 = fmul double %1901, %1906
  %1908 = bitcast i8* %1894 to double*
  store double %1907, double* %1908, align 1
  %1909 = getelementptr inbounds i8, i8* %1894, i64 8
  %1910 = bitcast i8* %1909 to i64*
  store i64 %1904, i64* %1910, align 1
  store %struct.Memory* %loadMem_4007b2, %struct.Memory** %MEMORY
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1915 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1914, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %1915 to %"class.std::bitset"*
  %1916 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %1917 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %1918 = load i64, i64* %PC.i122
  %1919 = add i64 %1918, 9
  store i64 %1919, i64* %PC.i122
  %1920 = bitcast i8* %1917 to double*
  %1921 = load double, double* %1920, align 1
  %1922 = getelementptr inbounds i8, i8* %1917, i64 8
  %1923 = bitcast i8* %1922 to i64*
  %1924 = load i64, i64* %1923, align 1
  %1925 = load double, double* inttoptr (i64 6295696 to double*)
  %1926 = fadd double %1921, %1925
  %1927 = bitcast i8* %1916 to double*
  store double %1926, double* %1927, align 1
  %1928 = getelementptr inbounds i8, i8* %1916, i64 8
  %1929 = bitcast i8* %1928 to i64*
  store i64 %1924, i64* %1929, align 1
  store %struct.Memory* %loadMem_4007b7, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1934 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1933, i64 0, i64 6
  %YMM6.i121 = bitcast %union.VectorReg* %1934 to %"class.std::bitset"*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1935, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %1936 to %union.vec128_t*
  %1937 = bitcast %"class.std::bitset"* %YMM6.i121 to i8*
  %1938 = bitcast %"class.std::bitset"* %YMM6.i121 to i8*
  %1939 = bitcast %union.vec128_t* %XMM7.i to i8*
  %1940 = load i64, i64* %PC.i120
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i120
  %1942 = bitcast i8* %1938 to double*
  %1943 = load double, double* %1942, align 1
  %1944 = getelementptr inbounds i8, i8* %1938, i64 8
  %1945 = bitcast i8* %1944 to i64*
  %1946 = load i64, i64* %1945, align 1
  %1947 = bitcast i8* %1939 to double*
  %1948 = load double, double* %1947, align 1
  %1949 = fmul double %1943, %1948
  %1950 = bitcast i8* %1937 to double*
  store double %1949, double* %1950, align 1
  %1951 = getelementptr inbounds i8, i8* %1937, i64 8
  %1952 = bitcast i8* %1951 to i64*
  store i64 %1946, i64* %1952, align 1
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1956, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %1957 to %"class.std::bitset"*
  %1958 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %1959 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %1960 = load i64, i64* %PC.i119
  %1961 = add i64 %1960, 9
  store i64 %1961, i64* %PC.i119
  %1962 = bitcast i8* %1959 to double*
  %1963 = load double, double* %1962, align 1
  %1964 = getelementptr inbounds i8, i8* %1959, i64 8
  %1965 = bitcast i8* %1964 to i64*
  %1966 = load i64, i64* %1965, align 1
  %1967 = load double, double* inttoptr (i64 6295688 to double*)
  %1968 = fadd double %1963, %1967
  %1969 = bitcast i8* %1958 to double*
  store double %1968, double* %1969, align 1
  %1970 = getelementptr inbounds i8, i8* %1958, i64 8
  %1971 = bitcast i8* %1970 to i64*
  store i64 %1966, i64* %1971, align 1
  store %struct.Memory* %loadMem_4007c4, %struct.Memory** %MEMORY
  %loadMem_4007cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1975, i64 0, i64 5
  %YMM5.i118 = bitcast %union.VectorReg* %1976 to %"class.std::bitset"*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1977, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %1978 to %union.vec128_t*
  %1979 = bitcast %"class.std::bitset"* %YMM5.i118 to i8*
  %1980 = bitcast %"class.std::bitset"* %YMM5.i118 to i8*
  %1981 = bitcast %union.vec128_t* %XMM6.i to i8*
  %1982 = load i64, i64* %PC.i117
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %PC.i117
  %1984 = bitcast i8* %1980 to double*
  %1985 = load double, double* %1984, align 1
  %1986 = getelementptr inbounds i8, i8* %1980, i64 8
  %1987 = bitcast i8* %1986 to i64*
  %1988 = load i64, i64* %1987, align 1
  %1989 = bitcast i8* %1981 to double*
  %1990 = load double, double* %1989, align 1
  %1991 = fmul double %1985, %1990
  %1992 = bitcast i8* %1979 to double*
  store double %1991, double* %1992, align 1
  %1993 = getelementptr inbounds i8, i8* %1979, i64 8
  %1994 = bitcast i8* %1993 to i64*
  store i64 %1988, i64* %1994, align 1
  store %struct.Memory* %loadMem_4007cd, %struct.Memory** %MEMORY
  %loadMem_4007d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %1999 to %"class.std::bitset"*
  %2000 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2001 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2002 = load i64, i64* %PC.i116
  %2003 = add i64 %2002, 9
  store i64 %2003, i64* %PC.i116
  %2004 = bitcast i8* %2001 to double*
  %2005 = load double, double* %2004, align 1
  %2006 = getelementptr inbounds i8, i8* %2001, i64 8
  %2007 = bitcast i8* %2006 to i64*
  %2008 = load i64, i64* %2007, align 1
  %2009 = load double, double* inttoptr (i64 6295680 to double*)
  %2010 = fadd double %2005, %2009
  %2011 = bitcast i8* %2000 to double*
  store double %2010, double* %2011, align 1
  %2012 = getelementptr inbounds i8, i8* %2000, i64 8
  %2013 = bitcast i8* %2012 to i64*
  store i64 %2008, i64* %2013, align 1
  store %struct.Memory* %loadMem_4007d1, %struct.Memory** %MEMORY
  %loadMem_4007da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2017, i64 0, i64 4
  %YMM4.i115 = bitcast %union.VectorReg* %2018 to %"class.std::bitset"*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2019, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2020 to %union.vec128_t*
  %2021 = bitcast %"class.std::bitset"* %YMM4.i115 to i8*
  %2022 = bitcast %"class.std::bitset"* %YMM4.i115 to i8*
  %2023 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2024 = load i64, i64* %PC.i114
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC.i114
  %2026 = bitcast i8* %2022 to double*
  %2027 = load double, double* %2026, align 1
  %2028 = getelementptr inbounds i8, i8* %2022, i64 8
  %2029 = bitcast i8* %2028 to i64*
  %2030 = load i64, i64* %2029, align 1
  %2031 = bitcast i8* %2023 to double*
  %2032 = load double, double* %2031, align 1
  %2033 = fmul double %2027, %2032
  %2034 = bitcast i8* %2021 to double*
  store double %2033, double* %2034, align 1
  %2035 = getelementptr inbounds i8, i8* %2021, i64 8
  %2036 = bitcast i8* %2035 to i64*
  store i64 %2030, i64* %2036, align 1
  store %struct.Memory* %loadMem_4007da, %struct.Memory** %MEMORY
  %loadMem_4007de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2041 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2040, i64 0, i64 4
  %YMM4.i113 = bitcast %union.VectorReg* %2041 to %"class.std::bitset"*
  %2042 = bitcast %"class.std::bitset"* %YMM4.i113 to i8*
  %2043 = bitcast %"class.std::bitset"* %YMM4.i113 to i8*
  %2044 = load i64, i64* %PC.i112
  %2045 = add i64 %2044, 9
  store i64 %2045, i64* %PC.i112
  %2046 = bitcast i8* %2043 to double*
  %2047 = load double, double* %2046, align 1
  %2048 = getelementptr inbounds i8, i8* %2043, i64 8
  %2049 = bitcast i8* %2048 to i64*
  %2050 = load i64, i64* %2049, align 1
  %2051 = load double, double* inttoptr (i64 6295672 to double*)
  %2052 = fadd double %2047, %2051
  %2053 = bitcast i8* %2042 to double*
  store double %2052, double* %2053, align 1
  %2054 = getelementptr inbounds i8, i8* %2042, i64 8
  %2055 = bitcast i8* %2054 to i64*
  store i64 %2050, i64* %2055, align 1
  store %struct.Memory* %loadMem_4007de, %struct.Memory** %MEMORY
  %loadMem_4007e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2059, i64 0, i64 3
  %YMM3.i110 = bitcast %union.VectorReg* %2060 to %"class.std::bitset"*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2062 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2061, i64 0, i64 4
  %XMM4.i111 = bitcast %union.VectorReg* %2062 to %union.vec128_t*
  %2063 = bitcast %"class.std::bitset"* %YMM3.i110 to i8*
  %2064 = bitcast %"class.std::bitset"* %YMM3.i110 to i8*
  %2065 = bitcast %union.vec128_t* %XMM4.i111 to i8*
  %2066 = load i64, i64* %PC.i109
  %2067 = add i64 %2066, 4
  store i64 %2067, i64* %PC.i109
  %2068 = bitcast i8* %2064 to double*
  %2069 = load double, double* %2068, align 1
  %2070 = getelementptr inbounds i8, i8* %2064, i64 8
  %2071 = bitcast i8* %2070 to i64*
  %2072 = load i64, i64* %2071, align 1
  %2073 = bitcast i8* %2065 to double*
  %2074 = load double, double* %2073, align 1
  %2075 = fmul double %2069, %2074
  %2076 = bitcast i8* %2063 to double*
  store double %2075, double* %2076, align 1
  %2077 = getelementptr inbounds i8, i8* %2063, i64 8
  %2078 = bitcast i8* %2077 to i64*
  store i64 %2072, i64* %2078, align 1
  store %struct.Memory* %loadMem_4007e7, %struct.Memory** %MEMORY
  %loadMem_4007eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2082, i64 0, i64 3
  %YMM3.i108 = bitcast %union.VectorReg* %2083 to %"class.std::bitset"*
  %2084 = bitcast %"class.std::bitset"* %YMM3.i108 to i8*
  %2085 = bitcast %"class.std::bitset"* %YMM3.i108 to i8*
  %2086 = load i64, i64* %PC.i107
  %2087 = add i64 %2086, 9
  store i64 %2087, i64* %PC.i107
  %2088 = bitcast i8* %2085 to double*
  %2089 = load double, double* %2088, align 1
  %2090 = getelementptr inbounds i8, i8* %2085, i64 8
  %2091 = bitcast i8* %2090 to i64*
  %2092 = load i64, i64* %2091, align 1
  %2093 = load double, double* inttoptr (i64 6295664 to double*)
  %2094 = fadd double %2089, %2093
  %2095 = bitcast i8* %2084 to double*
  store double %2094, double* %2095, align 1
  %2096 = getelementptr inbounds i8, i8* %2084, i64 8
  %2097 = bitcast i8* %2096 to i64*
  store i64 %2092, i64* %2097, align 1
  store %struct.Memory* %loadMem_4007eb, %struct.Memory** %MEMORY
  %loadMem_4007f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2101, i64 0, i64 2
  %YMM2.i105 = bitcast %union.VectorReg* %2102 to %"class.std::bitset"*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2103, i64 0, i64 3
  %XMM3.i106 = bitcast %union.VectorReg* %2104 to %union.vec128_t*
  %2105 = bitcast %"class.std::bitset"* %YMM2.i105 to i8*
  %2106 = bitcast %"class.std::bitset"* %YMM2.i105 to i8*
  %2107 = bitcast %union.vec128_t* %XMM3.i106 to i8*
  %2108 = load i64, i64* %PC.i104
  %2109 = add i64 %2108, 4
  store i64 %2109, i64* %PC.i104
  %2110 = bitcast i8* %2106 to double*
  %2111 = load double, double* %2110, align 1
  %2112 = getelementptr inbounds i8, i8* %2106, i64 8
  %2113 = bitcast i8* %2112 to i64*
  %2114 = load i64, i64* %2113, align 1
  %2115 = bitcast i8* %2107 to double*
  %2116 = load double, double* %2115, align 1
  %2117 = fmul double %2111, %2116
  %2118 = bitcast i8* %2105 to double*
  store double %2117, double* %2118, align 1
  %2119 = getelementptr inbounds i8, i8* %2105, i64 8
  %2120 = bitcast i8* %2119 to i64*
  store i64 %2114, i64* %2120, align 1
  store %struct.Memory* %loadMem_4007f4, %struct.Memory** %MEMORY
  %loadMem_4007f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2124, i64 0, i64 2
  %YMM2.i103 = bitcast %union.VectorReg* %2125 to %"class.std::bitset"*
  %2126 = bitcast %"class.std::bitset"* %YMM2.i103 to i8*
  %2127 = bitcast %"class.std::bitset"* %YMM2.i103 to i8*
  %2128 = load i64, i64* %PC.i102
  %2129 = add i64 %2128, 9
  store i64 %2129, i64* %PC.i102
  %2130 = bitcast i8* %2127 to double*
  %2131 = load double, double* %2130, align 1
  %2132 = getelementptr inbounds i8, i8* %2127, i64 8
  %2133 = bitcast i8* %2132 to i64*
  %2134 = load i64, i64* %2133, align 1
  %2135 = load double, double* inttoptr (i64 6296200 to double*)
  %2136 = fadd double %2131, %2135
  %2137 = bitcast i8* %2126 to double*
  store double %2136, double* %2137, align 1
  %2138 = getelementptr inbounds i8, i8* %2126, i64 8
  %2139 = bitcast i8* %2138 to i64*
  store i64 %2134, i64* %2139, align 1
  store %struct.Memory* %loadMem_4007f8, %struct.Memory** %MEMORY
  %loadMem_400801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2143, i64 0, i64 2
  %XMM2.i101 = bitcast %union.VectorReg* %2144 to %union.vec128_t*
  %2145 = bitcast %union.vec128_t* %XMM2.i101 to i8*
  %2146 = load i64, i64* %PC.i100
  %2147 = add i64 %2146, 9
  store i64 %2147, i64* %PC.i100
  %2148 = bitcast i8* %2145 to double*
  %2149 = load double, double* %2148, align 1
  store double %2149, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_400801, %struct.Memory** %MEMORY
  %loadMem_40080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 15
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2156, i64 0, i64 2
  %YMM2.i99 = bitcast %union.VectorReg* %2157 to %"class.std::bitset"*
  %2158 = bitcast %"class.std::bitset"* %YMM2.i99 to i8*
  %2159 = load i64, i64* %RBP.i98
  %2160 = sub i64 %2159, 48
  %2161 = load i64, i64* %PC.i97
  %2162 = add i64 %2161, 5
  store i64 %2162, i64* %PC.i97
  %2163 = inttoptr i64 %2160 to double*
  %2164 = load double, double* %2163
  %2165 = bitcast i8* %2158 to double*
  store double %2164, double* %2165, align 1
  %2166 = getelementptr inbounds i8, i8* %2158, i64 8
  %2167 = bitcast i8* %2166 to double*
  store double 0.000000e+00, double* %2167, align 1
  store %struct.Memory* %loadMem_40080a, %struct.Memory** %MEMORY
  %loadMem_40080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2171, i64 0, i64 3
  %YMM3.i96 = bitcast %union.VectorReg* %2172 to %"class.std::bitset"*
  %2173 = bitcast %"class.std::bitset"* %YMM3.i96 to i8*
  %2174 = load i64, i64* %PC.i95
  %2175 = add i64 %2174, 9
  store i64 %2175, i64* %PC.i95
  %2176 = load double, double* inttoptr (i64 6296216 to double*)
  %2177 = bitcast i8* %2173 to double*
  store double %2176, double* %2177, align 1
  %2178 = getelementptr inbounds i8, i8* %2173, i64 8
  %2179 = bitcast i8* %2178 to double*
  store double 0.000000e+00, double* %2179, align 1
  store %struct.Memory* %loadMem_40080f, %struct.Memory** %MEMORY
  %loadMem_400818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2184 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2183, i64 0, i64 3
  %YMM3.i94 = bitcast %union.VectorReg* %2184 to %"class.std::bitset"*
  %2185 = bitcast %"class.std::bitset"* %YMM3.i94 to i8*
  %2186 = bitcast %"class.std::bitset"* %YMM3.i94 to i8*
  %2187 = load i64, i64* %PC.i93
  %2188 = add i64 %2187, 9
  store i64 %2188, i64* %PC.i93
  %2189 = bitcast i8* %2186 to double*
  %2190 = load double, double* %2189, align 1
  %2191 = getelementptr inbounds i8, i8* %2186, i64 8
  %2192 = bitcast i8* %2191 to i64*
  %2193 = load i64, i64* %2192, align 1
  %2194 = load double, double* inttoptr (i64 6296200 to double*)
  %2195 = fadd double %2190, %2194
  %2196 = bitcast i8* %2185 to double*
  store double %2195, double* %2196, align 1
  %2197 = getelementptr inbounds i8, i8* %2185, i64 8
  %2198 = bitcast i8* %2197 to i64*
  store i64 %2193, i64* %2198, align 1
  store %struct.Memory* %loadMem_400818, %struct.Memory** %MEMORY
  %loadMem_400821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 33
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2203 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2202, i64 0, i64 4
  %YMM4.i92 = bitcast %union.VectorReg* %2203 to %"class.std::bitset"*
  %2204 = bitcast %"class.std::bitset"* %YMM4.i92 to i8*
  %2205 = load i64, i64* %PC.i91
  %2206 = add i64 %2205, 9
  store i64 %2206, i64* %PC.i91
  %2207 = load double, double* inttoptr (i64 6295840 to double*)
  %2208 = bitcast i8* %2204 to double*
  store double %2207, double* %2208, align 1
  %2209 = getelementptr inbounds i8, i8* %2204, i64 8
  %2210 = bitcast i8* %2209 to double*
  store double 0.000000e+00, double* %2210, align 1
  store %struct.Memory* %loadMem_400821, %struct.Memory** %MEMORY
  %loadMem_40082a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 15
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2218 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2217, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2218 to %"class.std::bitset"*
  %2219 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2220 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2221 = load i64, i64* %RBP.i90
  %2222 = sub i64 %2221, 16
  %2223 = load i64, i64* %PC.i89
  %2224 = add i64 %2223, 5
  store i64 %2224, i64* %PC.i89
  %2225 = bitcast i8* %2220 to double*
  %2226 = load double, double* %2225, align 1
  %2227 = getelementptr inbounds i8, i8* %2220, i64 8
  %2228 = bitcast i8* %2227 to i64*
  %2229 = load i64, i64* %2228, align 1
  %2230 = inttoptr i64 %2222 to double*
  %2231 = load double, double* %2230
  %2232 = fmul double %2226, %2231
  %2233 = bitcast i8* %2219 to double*
  store double %2232, double* %2233, align 1
  %2234 = getelementptr inbounds i8, i8* %2219, i64 8
  %2235 = bitcast i8* %2234 to i64*
  store i64 %2229, i64* %2235, align 1
  store %struct.Memory* %loadMem_40082a, %struct.Memory** %MEMORY
  %loadMem_40082f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2240 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2239, i64 0, i64 3
  %YMM3.i88 = bitcast %union.VectorReg* %2240 to %"class.std::bitset"*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2241, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2242 to %union.vec128_t*
  %2243 = bitcast %"class.std::bitset"* %YMM3.i88 to i8*
  %2244 = bitcast %"class.std::bitset"* %YMM3.i88 to i8*
  %2245 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2246 = load i64, i64* %PC.i87
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %PC.i87
  %2248 = bitcast i8* %2244 to double*
  %2249 = load double, double* %2248, align 1
  %2250 = getelementptr inbounds i8, i8* %2244, i64 8
  %2251 = bitcast i8* %2250 to i64*
  %2252 = load i64, i64* %2251, align 1
  %2253 = bitcast i8* %2245 to double*
  %2254 = load double, double* %2253, align 1
  %2255 = fadd double %2249, %2254
  %2256 = bitcast i8* %2243 to double*
  store double %2255, double* %2256, align 1
  %2257 = getelementptr inbounds i8, i8* %2243, i64 8
  %2258 = bitcast i8* %2257 to i64*
  store i64 %2252, i64* %2258, align 1
  store %struct.Memory* %loadMem_40082f, %struct.Memory** %MEMORY
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2262, i64 0, i64 2
  %YMM2.i85 = bitcast %union.VectorReg* %2263 to %"class.std::bitset"*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2264, i64 0, i64 3
  %XMM3.i86 = bitcast %union.VectorReg* %2265 to %union.vec128_t*
  %2266 = bitcast %"class.std::bitset"* %YMM2.i85 to i8*
  %2267 = bitcast %"class.std::bitset"* %YMM2.i85 to i8*
  %2268 = bitcast %union.vec128_t* %XMM3.i86 to i8*
  %2269 = load i64, i64* %PC.i84
  %2270 = add i64 %2269, 4
  store i64 %2270, i64* %PC.i84
  %2271 = bitcast i8* %2267 to double*
  %2272 = load double, double* %2271, align 1
  %2273 = getelementptr inbounds i8, i8* %2267, i64 8
  %2274 = bitcast i8* %2273 to i64*
  %2275 = load i64, i64* %2274, align 1
  %2276 = bitcast i8* %2268 to double*
  %2277 = load double, double* %2276, align 1
  %2278 = fmul double %2272, %2277
  %2279 = bitcast i8* %2266 to double*
  store double %2278, double* %2279, align 1
  %2280 = getelementptr inbounds i8, i8* %2266, i64 8
  %2281 = bitcast i8* %2280 to i64*
  store i64 %2275, i64* %2281, align 1
  store %struct.Memory* %loadMem_400833, %struct.Memory** %MEMORY
  %loadMem_400837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2285, i64 0, i64 2
  %YMM2.i83 = bitcast %union.VectorReg* %2286 to %"class.std::bitset"*
  %2287 = bitcast %"class.std::bitset"* %YMM2.i83 to i8*
  %2288 = bitcast %"class.std::bitset"* %YMM2.i83 to i8*
  %2289 = load i64, i64* %PC.i82
  %2290 = add i64 %2289, 9
  store i64 %2290, i64* %PC.i82
  %2291 = bitcast i8* %2288 to double*
  %2292 = load double, double* %2291, align 1
  %2293 = getelementptr inbounds i8, i8* %2288, i64 8
  %2294 = bitcast i8* %2293 to i64*
  %2295 = load i64, i64* %2294, align 1
  %2296 = load double, double* inttoptr (i64 6295840 to double*)
  %2297 = fdiv double %2292, %2296
  %2298 = bitcast i8* %2287 to double*
  store double %2297, double* %2298, align 1
  %2299 = getelementptr inbounds i8, i8* %2287, i64 8
  %2300 = bitcast i8* %2299 to i64*
  store i64 %2295, i64* %2300, align 1
  store %struct.Memory* %loadMem_400837, %struct.Memory** %MEMORY
  %loadMem_400840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2304, i64 0, i64 2
  %XMM2.i81 = bitcast %union.VectorReg* %2305 to %union.vec128_t*
  %2306 = bitcast %union.vec128_t* %XMM2.i81 to i8*
  %2307 = load i64, i64* %PC.i80
  %2308 = add i64 %2307, 9
  store i64 %2308, i64* %PC.i80
  %2309 = bitcast i8* %2306 to double*
  %2310 = load double, double* %2309, align 1
  store double %2310, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_400840, %struct.Memory** %MEMORY
  %loadMem_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2314, i64 0, i64 2
  %YMM2.i79 = bitcast %union.VectorReg* %2315 to %"class.std::bitset"*
  %2316 = bitcast %"class.std::bitset"* %YMM2.i79 to i8*
  %2317 = load i64, i64* %PC.i78
  %2318 = add i64 %2317, 9
  store i64 %2318, i64* %PC.i78
  %2319 = load double, double* inttoptr (i64 6296160 to double*)
  %2320 = bitcast i8* %2316 to double*
  store double %2319, double* %2320, align 1
  %2321 = getelementptr inbounds i8, i8* %2316, i64 8
  %2322 = bitcast i8* %2321 to double*
  store double 0.000000e+00, double* %2322, align 1
  store %struct.Memory* %loadMem_400849, %struct.Memory** %MEMORY
  %loadMem_400852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2326, i64 0, i64 2
  %YMM2.i77 = bitcast %union.VectorReg* %2327 to %"class.std::bitset"*
  %2328 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %2329 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %2330 = load i64, i64* %PC.i76
  %2331 = add i64 %2330, 9
  store i64 %2331, i64* %PC.i76
  %2332 = bitcast i8* %2329 to double*
  %2333 = load double, double* %2332, align 1
  %2334 = getelementptr inbounds i8, i8* %2329, i64 8
  %2335 = bitcast i8* %2334 to i64*
  %2336 = load i64, i64* %2335, align 1
  %2337 = load double, double* inttoptr (i64 6296224 to double*)
  %2338 = fdiv double %2333, %2337
  %2339 = bitcast i8* %2328 to double*
  store double %2338, double* %2339, align 1
  %2340 = getelementptr inbounds i8, i8* %2328, i64 8
  %2341 = bitcast i8* %2340 to i64*
  store i64 %2336, i64* %2341, align 1
  store %struct.Memory* %loadMem_400852, %struct.Memory** %MEMORY
  %loadMem_40085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2348, i64 0, i64 2
  %XMM2.i75 = bitcast %union.VectorReg* %2349 to %union.vec128_t*
  %2350 = load i64, i64* %RBP.i74
  %2351 = sub i64 %2350, 24
  %2352 = bitcast %union.vec128_t* %XMM2.i75 to i8*
  %2353 = load i64, i64* %PC.i73
  %2354 = add i64 %2353, 5
  store i64 %2354, i64* %PC.i73
  %2355 = bitcast i8* %2352 to double*
  %2356 = load double, double* %2355, align 1
  %2357 = inttoptr i64 %2351 to double*
  store double %2356, double* %2357
  store %struct.Memory* %loadMem_40085b, %struct.Memory** %MEMORY
  %loadMem_400860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 33
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 15
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2364, i64 0, i64 2
  %YMM2.i72 = bitcast %union.VectorReg* %2365 to %"class.std::bitset"*
  %2366 = bitcast %"class.std::bitset"* %YMM2.i72 to i8*
  %2367 = load i64, i64* %RBP.i71
  %2368 = sub i64 %2367, 24
  %2369 = load i64, i64* %PC.i70
  %2370 = add i64 %2369, 5
  store i64 %2370, i64* %PC.i70
  %2371 = inttoptr i64 %2368 to double*
  %2372 = load double, double* %2371
  %2373 = bitcast i8* %2366 to double*
  store double %2372, double* %2373, align 1
  %2374 = getelementptr inbounds i8, i8* %2366, i64 8
  %2375 = bitcast i8* %2374 to double*
  store double 0.000000e+00, double* %2375, align 1
  store %struct.Memory* %loadMem_400860, %struct.Memory** %MEMORY
  %loadMem_400865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 15
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2382, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %2383 to %"class.std::bitset"*
  %2384 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %2385 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %2386 = load i64, i64* %RBP.i68
  %2387 = sub i64 %2386, 24
  %2388 = load i64, i64* %PC.i67
  %2389 = add i64 %2388, 5
  store i64 %2389, i64* %PC.i67
  %2390 = bitcast i8* %2385 to double*
  %2391 = load double, double* %2390, align 1
  %2392 = getelementptr inbounds i8, i8* %2385, i64 8
  %2393 = bitcast i8* %2392 to i64*
  %2394 = load i64, i64* %2393, align 1
  %2395 = inttoptr i64 %2387 to double*
  %2396 = load double, double* %2395
  %2397 = fmul double %2391, %2396
  %2398 = bitcast i8* %2384 to double*
  store double %2397, double* %2398, align 1
  %2399 = getelementptr inbounds i8, i8* %2384, i64 8
  %2400 = bitcast i8* %2399 to i64*
  store i64 %2394, i64* %2400, align 1
  store %struct.Memory* %loadMem_400865, %struct.Memory** %MEMORY
  %loadMem_40086a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 15
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2407, i64 0, i64 2
  %XMM2.i66 = bitcast %union.VectorReg* %2408 to %union.vec128_t*
  %2409 = load i64, i64* %RBP.i65
  %2410 = sub i64 %2409, 40
  %2411 = bitcast %union.vec128_t* %XMM2.i66 to i8*
  %2412 = load i64, i64* %PC.i64
  %2413 = add i64 %2412, 5
  store i64 %2413, i64* %PC.i64
  %2414 = bitcast i8* %2411 to double*
  %2415 = load double, double* %2414, align 1
  %2416 = inttoptr i64 %2410 to double*
  store double %2415, double* %2416
  store %struct.Memory* %loadMem_40086a, %struct.Memory** %MEMORY
  %loadMem_40086f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2423, i64 0, i64 2
  %YMM2.i63 = bitcast %union.VectorReg* %2424 to %"class.std::bitset"*
  %2425 = bitcast %"class.std::bitset"* %YMM2.i63 to i8*
  %2426 = load i64, i64* %RBP.i62
  %2427 = sub i64 %2426, 24
  %2428 = load i64, i64* %PC.i61
  %2429 = add i64 %2428, 5
  store i64 %2429, i64* %PC.i61
  %2430 = inttoptr i64 %2427 to double*
  %2431 = load double, double* %2430
  %2432 = bitcast i8* %2425 to double*
  store double %2431, double* %2432, align 1
  %2433 = getelementptr inbounds i8, i8* %2425, i64 8
  %2434 = bitcast i8* %2433 to double*
  store double 0.000000e+00, double* %2434, align 1
  store %struct.Memory* %loadMem_40086f, %struct.Memory** %MEMORY
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 3
  %YMM3.i60 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = bitcast %"class.std::bitset"* %YMM3.i60 to i8*
  %2441 = load i64, i64* %PC.i59
  %2442 = add i64 %2441, 9
  store i64 %2442, i64* %PC.i59
  %2443 = load double, double* inttoptr (i64 6295648 to double*)
  %2444 = bitcast i8* %2440 to double*
  store double %2443, double* %2444, align 1
  %2445 = getelementptr inbounds i8, i8* %2440, i64 8
  %2446 = bitcast i8* %2445 to double*
  store double 0.000000e+00, double* %2446, align 1
  store %struct.Memory* %loadMem_400874, %struct.Memory** %MEMORY
  %loadMem_40087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2453, i64 0, i64 3
  %YMM3.i58 = bitcast %union.VectorReg* %2454 to %"class.std::bitset"*
  %2455 = bitcast %"class.std::bitset"* %YMM3.i58 to i8*
  %2456 = bitcast %"class.std::bitset"* %YMM3.i58 to i8*
  %2457 = load i64, i64* %RBP.i57
  %2458 = sub i64 %2457, 40
  %2459 = load i64, i64* %PC.i56
  %2460 = add i64 %2459, 5
  store i64 %2460, i64* %PC.i56
  %2461 = bitcast i8* %2456 to double*
  %2462 = load double, double* %2461, align 1
  %2463 = getelementptr inbounds i8, i8* %2456, i64 8
  %2464 = bitcast i8* %2463 to i64*
  %2465 = load i64, i64* %2464, align 1
  %2466 = inttoptr i64 %2458 to double*
  %2467 = load double, double* %2466
  %2468 = fmul double %2462, %2467
  %2469 = bitcast i8* %2455 to double*
  store double %2468, double* %2469, align 1
  %2470 = getelementptr inbounds i8, i8* %2455, i64 8
  %2471 = bitcast i8* %2470 to i64*
  store i64 %2465, i64* %2471, align 1
  store %struct.Memory* %loadMem_40087d, %struct.Memory** %MEMORY
  %loadMem_400882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2475, i64 0, i64 3
  %YMM3.i55 = bitcast %union.VectorReg* %2476 to %"class.std::bitset"*
  %2477 = bitcast %"class.std::bitset"* %YMM3.i55 to i8*
  %2478 = bitcast %"class.std::bitset"* %YMM3.i55 to i8*
  %2479 = load i64, i64* %PC.i54
  %2480 = add i64 %2479, 9
  store i64 %2480, i64* %PC.i54
  %2481 = bitcast i8* %2478 to double*
  %2482 = load double, double* %2481, align 1
  %2483 = getelementptr inbounds i8, i8* %2478, i64 8
  %2484 = bitcast i8* %2483 to i64*
  %2485 = load i64, i64* %2484, align 1
  %2486 = load double, double* inttoptr (i64 6295640 to double*)
  %2487 = fadd double %2482, %2486
  %2488 = bitcast i8* %2477 to double*
  store double %2487, double* %2488, align 1
  %2489 = getelementptr inbounds i8, i8* %2477, i64 8
  %2490 = bitcast i8* %2489 to i64*
  store i64 %2485, i64* %2490, align 1
  store %struct.Memory* %loadMem_400882, %struct.Memory** %MEMORY
  %loadMem_40088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 15
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2497, i64 0, i64 3
  %YMM3.i53 = bitcast %union.VectorReg* %2498 to %"class.std::bitset"*
  %2499 = bitcast %"class.std::bitset"* %YMM3.i53 to i8*
  %2500 = bitcast %"class.std::bitset"* %YMM3.i53 to i8*
  %2501 = load i64, i64* %RBP.i52
  %2502 = sub i64 %2501, 40
  %2503 = load i64, i64* %PC.i51
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i51
  %2505 = bitcast i8* %2500 to double*
  %2506 = load double, double* %2505, align 1
  %2507 = getelementptr inbounds i8, i8* %2500, i64 8
  %2508 = bitcast i8* %2507 to i64*
  %2509 = load i64, i64* %2508, align 1
  %2510 = inttoptr i64 %2502 to double*
  %2511 = load double, double* %2510
  %2512 = fmul double %2506, %2511
  %2513 = bitcast i8* %2499 to double*
  store double %2512, double* %2513, align 1
  %2514 = getelementptr inbounds i8, i8* %2499, i64 8
  %2515 = bitcast i8* %2514 to i64*
  store i64 %2509, i64* %2515, align 1
  store %struct.Memory* %loadMem_40088b, %struct.Memory** %MEMORY
  %loadMem_400890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2520 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2519, i64 0, i64 3
  %YMM3.i50 = bitcast %union.VectorReg* %2520 to %"class.std::bitset"*
  %2521 = bitcast %"class.std::bitset"* %YMM3.i50 to i8*
  %2522 = bitcast %"class.std::bitset"* %YMM3.i50 to i8*
  %2523 = load i64, i64* %PC.i49
  %2524 = add i64 %2523, 9
  store i64 %2524, i64* %PC.i49
  %2525 = bitcast i8* %2522 to double*
  %2526 = load double, double* %2525, align 1
  %2527 = getelementptr inbounds i8, i8* %2522, i64 8
  %2528 = bitcast i8* %2527 to i64*
  %2529 = load i64, i64* %2528, align 1
  %2530 = load double, double* inttoptr (i64 6295632 to double*)
  %2531 = fadd double %2526, %2530
  %2532 = bitcast i8* %2521 to double*
  store double %2531, double* %2532, align 1
  %2533 = getelementptr inbounds i8, i8* %2521, i64 8
  %2534 = bitcast i8* %2533 to i64*
  store i64 %2529, i64* %2534, align 1
  store %struct.Memory* %loadMem_400890, %struct.Memory** %MEMORY
  %loadMem_400899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 15
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2541, i64 0, i64 3
  %YMM3.i48 = bitcast %union.VectorReg* %2542 to %"class.std::bitset"*
  %2543 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2544 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2545 = load i64, i64* %RBP.i47
  %2546 = sub i64 %2545, 40
  %2547 = load i64, i64* %PC.i46
  %2548 = add i64 %2547, 5
  store i64 %2548, i64* %PC.i46
  %2549 = bitcast i8* %2544 to double*
  %2550 = load double, double* %2549, align 1
  %2551 = getelementptr inbounds i8, i8* %2544, i64 8
  %2552 = bitcast i8* %2551 to i64*
  %2553 = load i64, i64* %2552, align 1
  %2554 = inttoptr i64 %2546 to double*
  %2555 = load double, double* %2554
  %2556 = fmul double %2550, %2555
  %2557 = bitcast i8* %2543 to double*
  store double %2556, double* %2557, align 1
  %2558 = getelementptr inbounds i8, i8* %2543, i64 8
  %2559 = bitcast i8* %2558 to i64*
  store i64 %2553, i64* %2559, align 1
  store %struct.Memory* %loadMem_400899, %struct.Memory** %MEMORY
  %loadMem_40089e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 33
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2562 to i64*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2563, i64 0, i64 3
  %YMM3.i45 = bitcast %union.VectorReg* %2564 to %"class.std::bitset"*
  %2565 = bitcast %"class.std::bitset"* %YMM3.i45 to i8*
  %2566 = bitcast %"class.std::bitset"* %YMM3.i45 to i8*
  %2567 = load i64, i64* %PC.i44
  %2568 = add i64 %2567, 9
  store i64 %2568, i64* %PC.i44
  %2569 = bitcast i8* %2566 to double*
  %2570 = load double, double* %2569, align 1
  %2571 = getelementptr inbounds i8, i8* %2566, i64 8
  %2572 = bitcast i8* %2571 to i64*
  %2573 = load i64, i64* %2572, align 1
  %2574 = load double, double* inttoptr (i64 6295624 to double*)
  %2575 = fadd double %2570, %2574
  %2576 = bitcast i8* %2565 to double*
  store double %2575, double* %2576, align 1
  %2577 = getelementptr inbounds i8, i8* %2565, i64 8
  %2578 = bitcast i8* %2577 to i64*
  store i64 %2573, i64* %2578, align 1
  store %struct.Memory* %loadMem_40089e, %struct.Memory** %MEMORY
  %loadMem_4008a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 15
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2585, i64 0, i64 3
  %YMM3.i43 = bitcast %union.VectorReg* %2586 to %"class.std::bitset"*
  %2587 = bitcast %"class.std::bitset"* %YMM3.i43 to i8*
  %2588 = bitcast %"class.std::bitset"* %YMM3.i43 to i8*
  %2589 = load i64, i64* %RBP.i42
  %2590 = sub i64 %2589, 40
  %2591 = load i64, i64* %PC.i41
  %2592 = add i64 %2591, 5
  store i64 %2592, i64* %PC.i41
  %2593 = bitcast i8* %2588 to double*
  %2594 = load double, double* %2593, align 1
  %2595 = getelementptr inbounds i8, i8* %2588, i64 8
  %2596 = bitcast i8* %2595 to i64*
  %2597 = load i64, i64* %2596, align 1
  %2598 = inttoptr i64 %2590 to double*
  %2599 = load double, double* %2598
  %2600 = fmul double %2594, %2599
  %2601 = bitcast i8* %2587 to double*
  store double %2600, double* %2601, align 1
  %2602 = getelementptr inbounds i8, i8* %2587, i64 8
  %2603 = bitcast i8* %2602 to i64*
  store i64 %2597, i64* %2603, align 1
  store %struct.Memory* %loadMem_4008a7, %struct.Memory** %MEMORY
  %loadMem_4008ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2607, i64 0, i64 3
  %YMM3.i40 = bitcast %union.VectorReg* %2608 to %"class.std::bitset"*
  %2609 = bitcast %"class.std::bitset"* %YMM3.i40 to i8*
  %2610 = bitcast %"class.std::bitset"* %YMM3.i40 to i8*
  %2611 = load i64, i64* %PC.i39
  %2612 = add i64 %2611, 9
  store i64 %2612, i64* %PC.i39
  %2613 = bitcast i8* %2610 to double*
  %2614 = load double, double* %2613, align 1
  %2615 = getelementptr inbounds i8, i8* %2610, i64 8
  %2616 = bitcast i8* %2615 to i64*
  %2617 = load i64, i64* %2616, align 1
  %2618 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %2619 = fadd double %2614, %2618
  %2620 = bitcast i8* %2609 to double*
  store double %2619, double* %2620, align 1
  %2621 = getelementptr inbounds i8, i8* %2609, i64 8
  %2622 = bitcast i8* %2621 to i64*
  store i64 %2617, i64* %2622, align 1
  store %struct.Memory* %loadMem_4008ac, %struct.Memory** %MEMORY
  %loadMem_4008b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2629, i64 0, i64 3
  %YMM3.i38 = bitcast %union.VectorReg* %2630 to %"class.std::bitset"*
  %2631 = bitcast %"class.std::bitset"* %YMM3.i38 to i8*
  %2632 = bitcast %"class.std::bitset"* %YMM3.i38 to i8*
  %2633 = load i64, i64* %RBP.i37
  %2634 = sub i64 %2633, 40
  %2635 = load i64, i64* %PC.i36
  %2636 = add i64 %2635, 5
  store i64 %2636, i64* %PC.i36
  %2637 = bitcast i8* %2632 to double*
  %2638 = load double, double* %2637, align 1
  %2639 = getelementptr inbounds i8, i8* %2632, i64 8
  %2640 = bitcast i8* %2639 to i64*
  %2641 = load i64, i64* %2640, align 1
  %2642 = inttoptr i64 %2634 to double*
  %2643 = load double, double* %2642
  %2644 = fmul double %2638, %2643
  %2645 = bitcast i8* %2631 to double*
  store double %2644, double* %2645, align 1
  %2646 = getelementptr inbounds i8, i8* %2631, i64 8
  %2647 = bitcast i8* %2646 to i64*
  store i64 %2641, i64* %2647, align 1
  store %struct.Memory* %loadMem_4008b5, %struct.Memory** %MEMORY
  %loadMem_4008ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2651, i64 0, i64 3
  %YMM3.i35 = bitcast %union.VectorReg* %2652 to %"class.std::bitset"*
  %2653 = bitcast %"class.std::bitset"* %YMM3.i35 to i8*
  %2654 = bitcast %"class.std::bitset"* %YMM3.i35 to i8*
  %2655 = load i64, i64* %PC.i34
  %2656 = add i64 %2655, 9
  store i64 %2656, i64* %PC.i34
  %2657 = bitcast i8* %2654 to double*
  %2658 = load double, double* %2657, align 1
  %2659 = getelementptr inbounds i8, i8* %2654, i64 8
  %2660 = bitcast i8* %2659 to i64*
  %2661 = load i64, i64* %2660, align 1
  %2662 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %2663 = fadd double %2658, %2662
  %2664 = bitcast i8* %2653 to double*
  store double %2663, double* %2664, align 1
  %2665 = getelementptr inbounds i8, i8* %2653, i64 8
  %2666 = bitcast i8* %2665 to i64*
  store i64 %2661, i64* %2666, align 1
  store %struct.Memory* %loadMem_4008ba, %struct.Memory** %MEMORY
  %loadMem_4008c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 15
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2673, i64 0, i64 3
  %YMM3.i33 = bitcast %union.VectorReg* %2674 to %"class.std::bitset"*
  %2675 = bitcast %"class.std::bitset"* %YMM3.i33 to i8*
  %2676 = bitcast %"class.std::bitset"* %YMM3.i33 to i8*
  %2677 = load i64, i64* %RBP.i32
  %2678 = sub i64 %2677, 40
  %2679 = load i64, i64* %PC.i31
  %2680 = add i64 %2679, 5
  store i64 %2680, i64* %PC.i31
  %2681 = bitcast i8* %2676 to double*
  %2682 = load double, double* %2681, align 1
  %2683 = getelementptr inbounds i8, i8* %2676, i64 8
  %2684 = bitcast i8* %2683 to i64*
  %2685 = load i64, i64* %2684, align 1
  %2686 = inttoptr i64 %2678 to double*
  %2687 = load double, double* %2686
  %2688 = fmul double %2682, %2687
  %2689 = bitcast i8* %2675 to double*
  store double %2688, double* %2689, align 1
  %2690 = getelementptr inbounds i8, i8* %2675, i64 8
  %2691 = bitcast i8* %2690 to i64*
  store i64 %2685, i64* %2691, align 1
  store %struct.Memory* %loadMem_4008c3, %struct.Memory** %MEMORY
  %loadMem_4008c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2696 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2695, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2696 to %"class.std::bitset"*
  %2697 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2698 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2699 = load i64, i64* %PC.i30
  %2700 = add i64 %2699, 9
  store i64 %2700, i64* %PC.i30
  %2701 = bitcast i8* %2698 to double*
  %2702 = load double, double* %2701, align 1
  %2703 = getelementptr inbounds i8, i8* %2698, i64 8
  %2704 = bitcast i8* %2703 to i64*
  %2705 = load i64, i64* %2704, align 1
  %2706 = load double, double* bitcast (%G_0x601030_type* @G_0x601030 to double*)
  %2707 = fadd double %2702, %2706
  %2708 = bitcast i8* %2697 to double*
  store double %2707, double* %2708, align 1
  %2709 = getelementptr inbounds i8, i8* %2697, i64 8
  %2710 = bitcast i8* %2709 to i64*
  store i64 %2705, i64* %2710, align 1
  store %struct.Memory* %loadMem_4008c8, %struct.Memory** %MEMORY
  %loadMem_4008d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2714, i64 0, i64 2
  %YMM2.i29 = bitcast %union.VectorReg* %2715 to %"class.std::bitset"*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2716, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2717 to %union.vec128_t*
  %2718 = bitcast %"class.std::bitset"* %YMM2.i29 to i8*
  %2719 = bitcast %"class.std::bitset"* %YMM2.i29 to i8*
  %2720 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2721 = load i64, i64* %PC.i28
  %2722 = add i64 %2721, 4
  store i64 %2722, i64* %PC.i28
  %2723 = bitcast i8* %2719 to double*
  %2724 = load double, double* %2723, align 1
  %2725 = getelementptr inbounds i8, i8* %2719, i64 8
  %2726 = bitcast i8* %2725 to i64*
  %2727 = load i64, i64* %2726, align 1
  %2728 = bitcast i8* %2720 to double*
  %2729 = load double, double* %2728, align 1
  %2730 = fmul double %2724, %2729
  %2731 = bitcast i8* %2718 to double*
  store double %2730, double* %2731, align 1
  %2732 = getelementptr inbounds i8, i8* %2718, i64 8
  %2733 = bitcast i8* %2732 to i64*
  store i64 %2727, i64* %2733, align 1
  store %struct.Memory* %loadMem_4008d1, %struct.Memory** %MEMORY
  %loadMem_4008d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 33
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2737, i64 0, i64 2
  %XMM2.i27 = bitcast %union.VectorReg* %2738 to %union.vec128_t*
  %2739 = bitcast %union.vec128_t* %XMM2.i27 to i8*
  %2740 = load i64, i64* %PC.i26
  %2741 = add i64 %2740, 9
  store i64 %2741, i64* %PC.i26
  %2742 = bitcast i8* %2739 to double*
  %2743 = load double, double* %2742, align 1
  store double %2743, double* inttoptr (i64 6296152 to double*)
  store %struct.Memory* %loadMem_4008d5, %struct.Memory** %MEMORY
  %loadMem_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2747, i64 0, i64 2
  %YMM2.i25 = bitcast %union.VectorReg* %2748 to %"class.std::bitset"*
  %2749 = bitcast %"class.std::bitset"* %YMM2.i25 to i8*
  %2750 = load i64, i64* %PC.i24
  %2751 = add i64 %2750, 9
  store i64 %2751, i64* %PC.i24
  %2752 = load double, double* inttoptr (i64 6296216 to double*)
  %2753 = bitcast i8* %2749 to double*
  store double %2752, double* %2753, align 1
  %2754 = getelementptr inbounds i8, i8* %2749, i64 8
  %2755 = bitcast i8* %2754 to double*
  store double 0.000000e+00, double* %2755, align 1
  store %struct.Memory* %loadMem_4008de, %struct.Memory** %MEMORY
  %loadMem_4008e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2759, i64 0, i64 2
  %YMM2.i23 = bitcast %union.VectorReg* %2760 to %"class.std::bitset"*
  %2761 = bitcast %"class.std::bitset"* %YMM2.i23 to i8*
  %2762 = bitcast %"class.std::bitset"* %YMM2.i23 to i8*
  %2763 = load i64, i64* %PC.i22
  %2764 = add i64 %2763, 9
  store i64 %2764, i64* %PC.i22
  %2765 = bitcast i8* %2762 to double*
  %2766 = load double, double* %2765, align 1
  %2767 = getelementptr inbounds i8, i8* %2762, i64 8
  %2768 = bitcast i8* %2767 to i64*
  %2769 = load i64, i64* %2768, align 1
  %2770 = load double, double* inttoptr (i64 6296152 to double*)
  %2771 = fsub double %2766, %2770
  %2772 = bitcast i8* %2761 to double*
  store double %2771, double* %2772, align 1
  %2773 = getelementptr inbounds i8, i8* %2761, i64 8
  %2774 = bitcast i8* %2773 to i64*
  store i64 %2769, i64* %2774, align 1
  store %struct.Memory* %loadMem_4008e7, %struct.Memory** %MEMORY
  %loadMem_4008f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2779 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2778, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2779 to %union.vec128_t*
  %2780 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2781 = load i64, i64* %PC.i21
  %2782 = add i64 %2781, 9
  store i64 %2782, i64* %PC.i21
  %2783 = bitcast i8* %2780 to double*
  %2784 = load double, double* %2783, align 1
  store double %2784, double* inttoptr (i64 6296208 to double*)
  store %struct.Memory* %loadMem_4008f0, %struct.Memory** %MEMORY
  %loadMem_4008f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2788, i64 0, i64 1
  %YMM1.i20 = bitcast %union.VectorReg* %2789 to %"class.std::bitset"*
  %2790 = bitcast %"class.std::bitset"* %YMM1.i20 to i8*
  %2791 = bitcast %"class.std::bitset"* %YMM1.i20 to i8*
  %2792 = load i64, i64* %PC.i19
  %2793 = add i64 %2792, 9
  store i64 %2793, i64* %PC.i19
  %2794 = bitcast i8* %2791 to double*
  %2795 = load double, double* %2794, align 1
  %2796 = getelementptr inbounds i8, i8* %2791, i64 8
  %2797 = bitcast i8* %2796 to i64*
  %2798 = load i64, i64* %2797, align 1
  %2799 = load double, double* inttoptr (i64 6296208 to double*)
  %2800 = fmul double %2795, %2799
  %2801 = bitcast i8* %2790 to double*
  store double %2800, double* %2801, align 1
  %2802 = getelementptr inbounds i8, i8* %2790, i64 8
  %2803 = bitcast i8* %2802 to i64*
  store i64 %2798, i64* %2803, align 1
  store %struct.Memory* %loadMem_4008f9, %struct.Memory** %MEMORY
  %loadMem_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2811 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2810, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2811 to %union.vec128_t*
  %2812 = load i64, i64* %RBP.i18
  %2813 = sub i64 %2812, 112
  %2814 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2815 = load i64, i64* %PC.i17
  %2816 = add i64 %2815, 5
  store i64 %2816, i64* %PC.i17
  %2817 = bitcast i8* %2814 to double*
  %2818 = load double, double* %2817, align 1
  %2819 = inttoptr i64 %2813 to double*
  store double %2818, double* %2819
  store %struct.Memory* %loadMem_400902, %struct.Memory** %MEMORY
  %loadMem_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2823, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2824 to %"class.std::bitset"*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2825, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2826 to %union.vec128_t*
  %2827 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2828 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2829 = load i64, i64* %PC.i16
  %2830 = add i64 %2829, 3
  store i64 %2830, i64* %PC.i16
  %2831 = bitcast i8* %2828 to <2 x i32>*
  %2832 = load <2 x i32>, <2 x i32>* %2831, align 1
  %2833 = getelementptr inbounds i8, i8* %2828, i64 8
  %2834 = bitcast i8* %2833 to <2 x i32>*
  %2835 = load <2 x i32>, <2 x i32>* %2834, align 1
  %2836 = extractelement <2 x i32> %2832, i32 0
  %2837 = bitcast i8* %2827 to i32*
  store i32 %2836, i32* %2837, align 1
  %2838 = extractelement <2 x i32> %2832, i32 1
  %2839 = getelementptr inbounds i8, i8* %2827, i64 4
  %2840 = bitcast i8* %2839 to i32*
  store i32 %2838, i32* %2840, align 1
  %2841 = extractelement <2 x i32> %2835, i32 0
  %2842 = getelementptr inbounds i8, i8* %2827, i64 8
  %2843 = bitcast i8* %2842 to i32*
  store i32 %2841, i32* %2843, align 1
  %2844 = extractelement <2 x i32> %2835, i32 1
  %2845 = getelementptr inbounds i8, i8* %2827, i64 12
  %2846 = bitcast i8* %2845 to i32*
  store i32 %2844, i32* %2846, align 1
  store %struct.Memory* %loadMem_400907, %struct.Memory** %MEMORY
  %loadMem_40090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 15
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2853, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2854 to %"class.std::bitset"*
  %2855 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2856 = load i64, i64* %RBP.i15
  %2857 = sub i64 %2856, 112
  %2858 = load i64, i64* %PC.i14
  %2859 = add i64 %2858, 5
  store i64 %2859, i64* %PC.i14
  %2860 = inttoptr i64 %2857 to double*
  %2861 = load double, double* %2860
  %2862 = bitcast i8* %2855 to double*
  store double %2861, double* %2862, align 1
  %2863 = getelementptr inbounds i8, i8* %2855, i64 8
  %2864 = bitcast i8* %2863 to double*
  store double 0.000000e+00, double* %2864, align 1
  store %struct.Memory* %loadMem_40090a, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 15
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2872 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2871, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2872 to %"class.std::bitset"*
  %2873 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2874 = load i64, i64* %RBP.i13
  %2875 = sub i64 %2874, 112
  %2876 = load i64, i64* %PC.i12
  %2877 = add i64 %2876, 5
  store i64 %2877, i64* %PC.i12
  %2878 = inttoptr i64 %2875 to double*
  %2879 = load double, double* %2878
  %2880 = bitcast i8* %2873 to double*
  store double %2879, double* %2880, align 1
  %2881 = getelementptr inbounds i8, i8* %2873, i64 8
  %2882 = bitcast i8* %2881 to double*
  store double 0.000000e+00, double* %2882, align 1
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  %loadMem_400914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %2889 = bitcast %union.anon* %2888 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2889, i32 0, i32 0
  %2890 = load i64, i64* %PC.i11
  %2891 = add i64 %2890, 2
  store i64 %2891, i64* %PC.i11
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400914, %struct.Memory** %MEMORY
  %loadMem1_400916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2894 to i64*
  %2895 = load i64, i64* %PC.i10
  %2896 = add i64 %2895, -1286
  %2897 = load i64, i64* %PC.i10
  %2898 = add i64 %2897, 5
  %2899 = load i64, i64* %PC.i10
  %2900 = add i64 %2899, 5
  store i64 %2900, i64* %PC.i10
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2902 = load i64, i64* %2901, align 8
  %2903 = add i64 %2902, -8
  %2904 = inttoptr i64 %2903 to i64*
  store i64 %2898, i64* %2904
  store i64 %2903, i64* %2901, align 8
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2896, i64* %2905, align 8
  store %struct.Memory* %loadMem1_400916, %struct.Memory** %MEMORY
  %loadMem2_400916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400916 = load i64, i64* %3
  %call2_400916 = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_400916, %struct.Memory* %loadMem2_400916)
  store %struct.Memory* %call2_400916, %struct.Memory** %MEMORY
  %loadMem_40091b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 5
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %2911 to i32*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 5
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %RCX.i
  %2916 = load i32, i32* %ECX.i9
  %2917 = zext i32 %2916 to i64
  %2918 = load i64, i64* %PC.i8
  %2919 = add i64 %2918, 2
  store i64 %2919, i64* %PC.i8
  %2920 = xor i64 %2917, %2915
  %2921 = trunc i64 %2920 to i32
  %2922 = and i64 %2920, 4294967295
  store i64 %2922, i64* %RCX.i, align 8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2923, align 1
  %2924 = and i32 %2921, 255
  %2925 = call i32 @llvm.ctpop.i32(i32 %2924)
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2928, i8* %2929, align 1
  %2930 = icmp eq i32 %2921, 0
  %2931 = zext i1 %2930 to i8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2931, i8* %2932, align 1
  %2933 = lshr i32 %2921, 31
  %2934 = trunc i32 %2933 to i8
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2934, i8* %2935, align 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2936, align 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2937, align 1
  store %struct.Memory* %loadMem_40091b, %struct.Memory** %MEMORY
  %loadMem_40091d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2943 to i32*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 15
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RBP.i7
  %2948 = sub i64 %2947, 116
  %2949 = load i32, i32* %EAX.i
  %2950 = zext i32 %2949 to i64
  %2951 = load i64, i64* %PC.i6
  %2952 = add i64 %2951, 3
  store i64 %2952, i64* %PC.i6
  %2953 = inttoptr i64 %2948 to i32*
  store i32 %2949, i32* %2953
  store %struct.Memory* %loadMem_40091d, %struct.Memory** %MEMORY
  %loadMem_400920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 5
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2959 to i32*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2962 to i64*
  %2963 = load i32, i32* %ECX.i
  %2964 = zext i32 %2963 to i64
  %2965 = load i64, i64* %PC.i5
  %2966 = add i64 %2965, 2
  store i64 %2966, i64* %PC.i5
  %2967 = and i64 %2964, 4294967295
  store i64 %2967, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400920, %struct.Memory** %MEMORY
  %loadMem_400922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 13
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %RSP.i
  %2975 = load i64, i64* %PC.i4
  %2976 = add i64 %2975, 7
  store i64 %2976, i64* %PC.i4
  %2977 = add i64 128, %2974
  store i64 %2977, i64* %RSP.i, align 8
  %2978 = icmp ult i64 %2977, %2974
  %2979 = icmp ult i64 %2977, 128
  %2980 = or i1 %2978, %2979
  %2981 = zext i1 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2981, i8* %2982, align 1
  %2983 = trunc i64 %2977 to i32
  %2984 = and i32 %2983, 255
  %2985 = call i32 @llvm.ctpop.i32(i32 %2984)
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = xor i8 %2987, 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2988, i8* %2989, align 1
  %2990 = xor i64 128, %2974
  %2991 = xor i64 %2990, %2977
  %2992 = lshr i64 %2991, 4
  %2993 = trunc i64 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2994, i8* %2995, align 1
  %2996 = icmp eq i64 %2977, 0
  %2997 = zext i1 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2997, i8* %2998, align 1
  %2999 = lshr i64 %2977, 63
  %3000 = trunc i64 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3000, i8* %3001, align 1
  %3002 = lshr i64 %2974, 63
  %3003 = xor i64 %2999, %3002
  %3004 = add i64 %3003, %2999
  %3005 = icmp eq i64 %3004, 2
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3006, i8* %3007, align 1
  store %struct.Memory* %loadMem_400922, %struct.Memory** %MEMORY
  %loadMem_400929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 15
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %PC.i2
  %3015 = add i64 %3014, 1
  store i64 %3015, i64* %PC.i2
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3017 = load i64, i64* %3016, align 8
  %3018 = add i64 %3017, 8
  %3019 = inttoptr i64 %3017 to i64*
  %3020 = load i64, i64* %3019
  store i64 %3020, i64* %RBP.i3, align 8
  store i64 %3018, i64* %3016, align 8
  store %struct.Memory* %loadMem_400929, %struct.Memory** %MEMORY
  %loadMem_40092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 33
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %PC.i1
  %3025 = add i64 %3024, 1
  store i64 %3025, i64* %PC.i1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3028 = load i64, i64* %3027, align 8
  %3029 = inttoptr i64 %3028 to i64*
  %3030 = load i64, i64* %3029
  store i64 %3030, i64* %3026, align 8
  %3031 = add i64 %3028, 8
  store i64 %3031, i64* %3027, align 8
  store %struct.Memory* %loadMem_40092a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40092a
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

define %struct.Memory* @routine_movq__0x400a28___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196904, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x4009f0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196848, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a2a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196906, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x45f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movq__0x400a5a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196954, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x8000000000000000___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %23, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601048___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6295624 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x601048(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6295624 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601058___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6295640 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x601058(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6295640 to double*)
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

define %struct.Memory* @routine_jg_.L_400755(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x601098___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM6 to i8*
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

define %struct.Memory* @routine_addsd_0x601090___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295696 to double*)
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

define %struct.Memory* @routine_addsd_0x601088___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295688 to double*)
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

define %struct.Memory* @routine_addsd_0x601080___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295680 to double*)
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

define %struct.Memory* @routine_addsd_0x601078___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295672 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601070___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295664 to double*)
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

define %struct.Memory* @routine_jmpq_.L_400691(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400a7e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196990, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x27e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 646
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

define %struct.Memory* @routine_movsd_0x601260___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6296160 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x6012a0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6296224 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_movsd_0x601098___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM7 to i8*
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

define %struct.Memory* @routine_addsd_0x601090___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295696 to double*)
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

define %struct.Memory* @routine_addsd_0x601088___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295688 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601080___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295680 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601078___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295672 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601070___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295664 to double*)
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

define %struct.Memory* @routine_movsd__xmm2__0x601298(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* inttoptr (i64 6296216 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
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

define %struct.Memory* @routine_movsd_0x601120___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6295840 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd_0x601120___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295840 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601060___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* inttoptr (i64 6295648 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_0x601058___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295640 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295632 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* inttoptr (i64 6295624 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601030___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601030_type* @G_0x601030 to double*)
  %18 = fadd double %13, %17
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
