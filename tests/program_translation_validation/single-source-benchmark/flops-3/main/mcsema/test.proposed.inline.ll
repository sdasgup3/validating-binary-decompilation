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
  %PC.i303 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i304 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i304
  %27 = load i64, i64* %PC.i303
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i303
  store i64 %26, i64* %RBP.i305, align 8
  store %struct.Memory* %loadMem_400511, %struct.Memory** %MEMORY
  %loadMem_400514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i302 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i302
  %36 = load i64, i64* %PC.i301
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i301
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i302, align 8
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
  %PC.i299 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i300 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i299
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i299
  store i64 4196704, i64* %RDI.i300, align 8
  store %struct.Memory* %loadMem_40051b, %struct.Memory** %MEMORY
  %loadMem_400525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i298
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i297
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i297
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400525, %struct.Memory** %MEMORY
  %loadMem_40052c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i296 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i295
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i295
  store i8 0, i8* %AL.i296, align 1
  store %struct.Memory* %loadMem_40052c, %struct.Memory** %MEMORY
  %loadMem1_40052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i294
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i294
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i294
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i294
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
  %PC.i292 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 11
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RDI.i293 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %PC.i292
  %116 = add i64 %115, 10
  store i64 %116, i64* %PC.i292
  store i64 4196648, i64* %RDI.i293, align 8
  store %struct.Memory* %loadMem_400533, %struct.Memory** %MEMORY
  %loadMem_40053d = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %122 to i32*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i291
  %127 = sub i64 %126, 92
  %128 = load i32, i32* %EAX.i290
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %PC.i289
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC.i289
  %132 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %132
  store %struct.Memory* %loadMem_40053d, %struct.Memory** %MEMORY
  %loadMem_400540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %139 = bitcast %union.anon* %138 to %struct.anon.2*
  %AL.i288 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %139, i32 0, i32 0
  %140 = load i64, i64* %PC.i287
  %141 = add i64 %140, 2
  store i64 %141, i64* %PC.i287
  store i8 0, i8* %AL.i288, align 1
  store %struct.Memory* %loadMem_400540, %struct.Memory** %MEMORY
  %loadMem1_400542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %PC.i286
  %146 = add i64 %145, -306
  %147 = load i64, i64* %PC.i286
  %148 = add i64 %147, 5
  %149 = load i64, i64* %PC.i286
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC.i286
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
  %PC.i284 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 11
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %PC.i284
  %163 = add i64 %162, 10
  store i64 %163, i64* %PC.i284
  store i64 4196706, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_400547, %struct.Memory** %MEMORY
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %167, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %168 to %"class.std::bitset"*
  %169 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %170 = load i64, i64* %PC.i282
  %171 = add i64 %170, 919
  %172 = load i64, i64* %PC.i282
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC.i282
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
  %PC.i280 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %182, i64 0, i64 1
  %YMM1.i281 = bitcast %union.VectorReg* %183 to %"class.std::bitset"*
  %184 = bitcast %"class.std::bitset"* %YMM1.i281 to i8*
  %185 = load i64, i64* %PC.i280
  %186 = add i64 %185, 919
  %187 = load i64, i64* %PC.i280
  %188 = add i64 %187, 8
  store i64 %188, i64* %PC.i280
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
  %PC.i278 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %197, i64 0, i64 2
  %YMM2.i279 = bitcast %union.VectorReg* %198 to %"class.std::bitset"*
  %199 = bitcast %"class.std::bitset"* %YMM2.i279 to i8*
  %200 = load i64, i64* %PC.i278
  %201 = add i64 %200, 919
  %202 = load i64, i64* %PC.i278
  %203 = add i64 %202, 8
  store i64 %203, i64* %PC.i278
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
  %PC.i276 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %212, i64 0, i64 3
  %YMM3.i277 = bitcast %union.VectorReg* %213 to %"class.std::bitset"*
  %214 = bitcast %"class.std::bitset"* %YMM3.i277 to i8*
  %215 = load i64, i64* %PC.i276
  %216 = add i64 %215, 919
  %217 = load i64, i64* %PC.i276
  %218 = add i64 %217, 8
  store i64 %218, i64* %PC.i276
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
  %PC.i274 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 4
  %YMM4.i275 = bitcast %union.VectorReg* %228 to %"class.std::bitset"*
  %229 = bitcast %"class.std::bitset"* %YMM4.i275 to i8*
  %230 = load i64, i64* %PC.i274
  %231 = add i64 %230, 919
  %232 = load i64, i64* %PC.i274
  %233 = add i64 %232, 8
  store i64 %233, i64* %PC.i274
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
  %PC.i272 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %242, i64 0, i64 5
  %YMM5.i273 = bitcast %union.VectorReg* %243 to %"class.std::bitset"*
  %244 = bitcast %"class.std::bitset"* %YMM5.i273 to i8*
  %245 = load i64, i64* %PC.i272
  %246 = add i64 %245, 919
  %247 = load i64, i64* %PC.i272
  %248 = add i64 %247, 8
  store i64 %248, i64* %PC.i272
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
  %PC.i270 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 15
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RBP.i271
  %261 = sub i64 %260, 56
  %262 = load i64, i64* %PC.i270
  %263 = add i64 %262, 8
  store i64 %263, i64* %PC.i270
  %264 = inttoptr i64 %261 to i64*
  store i64 15625, i64* %264
  store %struct.Memory* %loadMem_400581, %struct.Memory** %MEMORY
  %loadMem_400589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 4
  %XMM4.i269 = bitcast %union.VectorReg* %269 to %union.vec128_t*
  %270 = bitcast %union.vec128_t* %XMM4.i269 to i8*
  %271 = load i64, i64* %PC.i268
  %272 = add i64 %271, 9
  store i64 %272, i64* %PC.i268
  %273 = bitcast i8* %270 to double*
  %274 = load double, double* %273, align 1
  store double %274, double* inttoptr (i64 6296272 to double*)
  store %struct.Memory* %loadMem_400589, %struct.Memory** %MEMORY
  %loadMem_400592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i267
  %282 = sub i64 %281, 64
  %283 = load i64, i64* %PC.i266
  %284 = add i64 %283, 8
  store i64 %284, i64* %PC.i266
  %285 = inttoptr i64 %282 to i64*
  store i64 512000000, i64* %285
  store %struct.Memory* %loadMem_400592, %struct.Memory** %MEMORY
  %loadMem_40059a = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %289, i64 0, i64 5
  %XMM5.i265 = bitcast %union.VectorReg* %290 to %union.vec128_t*
  %291 = bitcast %union.vec128_t* %XMM5.i265 to i8*
  %292 = load i64, i64* %PC.i264
  %293 = add i64 %292, 9
  store i64 %293, i64* %PC.i264
  %294 = bitcast i8* %291 to double*
  %295 = load double, double* %294, align 1
  store double %295, double* inttoptr (i64 6296160 to double*)
  store %struct.Memory* %loadMem_40059a, %struct.Memory** %MEMORY
  %loadMem_4005a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 4
  %XMM4.i263 = bitcast %union.VectorReg* %300 to %union.vec128_t*
  %301 = bitcast %union.vec128_t* %XMM4.i263 to i8*
  %302 = load i64, i64* %PC.i262
  %303 = add i64 %302, 9
  store i64 %303, i64* %PC.i262
  %304 = bitcast i8* %301 to double*
  %305 = load double, double* %304, align 1
  store double %305, double* inttoptr (i64 6296200 to double*)
  store %struct.Memory* %loadMem_4005a3, %struct.Memory** %MEMORY
  %loadMem_4005ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %309, i64 0, i64 3
  %XMM3.i261 = bitcast %union.VectorReg* %310 to %union.vec128_t*
  %311 = bitcast %union.vec128_t* %XMM3.i261 to i8*
  %312 = load i64, i64* %PC.i260
  %313 = add i64 %312, 9
  store i64 %313, i64* %PC.i260
  %314 = bitcast i8* %311 to double*
  %315 = load double, double* %314, align 1
  store double %315, double* inttoptr (i64 6295840 to double*)
  store %struct.Memory* %loadMem_4005ac, %struct.Memory** %MEMORY
  %loadMem_4005b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %319, i64 0, i64 2
  %XMM2.i259 = bitcast %union.VectorReg* %320 to %union.vec128_t*
  %321 = bitcast %union.vec128_t* %XMM2.i259 to i8*
  %322 = load i64, i64* %PC.i258
  %323 = add i64 %322, 9
  store i64 %323, i64* %PC.i258
  %324 = bitcast i8* %321 to double*
  %325 = load double, double* %324, align 1
  store double %325, double* inttoptr (i64 6296224 to double*)
  store %struct.Memory* %loadMem_4005b5, %struct.Memory** %MEMORY
  %loadMem_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %329, i64 0, i64 1
  %XMM1.i257 = bitcast %union.VectorReg* %330 to %union.vec128_t*
  %331 = bitcast %union.vec128_t* %XMM1.i257 to i8*
  %332 = load i64, i64* %PC.i256
  %333 = add i64 %332, 9
  store i64 %333, i64* %PC.i256
  %334 = bitcast i8* %331 to double*
  %335 = load double, double* %334, align 1
  store double %335, double* inttoptr (i64 6296184 to double*)
  store %struct.Memory* %loadMem_4005be, %struct.Memory** %MEMORY
  %loadMem_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %339, i64 0, i64 0
  %XMM0.i255 = bitcast %union.VectorReg* %340 to %union.vec128_t*
  %341 = bitcast %union.vec128_t* %XMM0.i255 to i8*
  %342 = load i64, i64* %PC.i254
  %343 = add i64 %342, 9
  store i64 %343, i64* %PC.i254
  %344 = bitcast i8* %341 to double*
  %345 = load double, double* %344, align 1
  store double %345, double* inttoptr (i64 6295848 to double*)
  store %struct.Memory* %loadMem_4005c7, %struct.Memory** %MEMORY
  %loadMem_4005d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %349, i64 0, i64 0
  %YMM0.i253 = bitcast %union.VectorReg* %350 to %"class.std::bitset"*
  %351 = bitcast %"class.std::bitset"* %YMM0.i253 to i8*
  %352 = load i64, i64* %PC.i252
  %353 = add i64 %352, 9
  store i64 %353, i64* %PC.i252
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
  %PC.i250 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %361, i64 0, i64 0
  %XMM0.i251 = bitcast %union.VectorReg* %362 to %union.vec128_t*
  %363 = bitcast %union.vec128_t* %XMM0.i251 to i8*
  %364 = load i64, i64* %PC.i250
  %365 = add i64 %364, 9
  store i64 %365, i64* %PC.i250
  %366 = bitcast i8* %363 to double*
  %367 = load double, double* %366, align 1
  store double %367, double* inttoptr (i64 6296192 to double*)
  store %struct.Memory* %loadMem_4005d9, %struct.Memory** %MEMORY
  %loadMem_4005e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %EAX.i248 = bitcast %union.anon* %373 to i32*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i249
  %378 = sub i64 %377, 96
  %379 = load i32, i32* %EAX.i248
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %PC.i247
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i247
  %383 = inttoptr i64 %378 to i32*
  store i32 %379, i32* %383
  store %struct.Memory* %loadMem_4005e2, %struct.Memory** %MEMORY
  %loadMem_4005e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %390 = bitcast %union.anon* %389 to %struct.anon.2*
  %AL.i246 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %390, i32 0, i32 0
  %391 = load i64, i64* %PC.i245
  %392 = add i64 %391, 2
  store i64 %392, i64* %PC.i245
  store i8 0, i8* %AL.i246, align 1
  store %struct.Memory* %loadMem_4005e5, %struct.Memory** %MEMORY
  %loadMem1_4005e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %PC.i244
  %397 = add i64 %396, -471
  %398 = load i64, i64* %PC.i244
  %399 = add i64 %398, 5
  %400 = load i64, i64* %PC.i244
  %401 = add i64 %400, 5
  store i64 %401, i64* %PC.i244
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
  %PC.i242 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 11
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RDI.i243 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %PC.i242
  %414 = add i64 %413, 10
  store i64 %414, i64* %PC.i242
  store i64 4196754, i64* %RDI.i243, align 8
  store %struct.Memory* %loadMem_4005ec, %struct.Memory** %MEMORY
  %loadMem_4005f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %420 to i32*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i241
  %425 = sub i64 %424, 100
  %426 = load i32, i32* %EAX.i240
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC.i239
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i239
  %430 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %430
  store %struct.Memory* %loadMem_4005f6, %struct.Memory** %MEMORY
  %loadMem_4005f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %437 = bitcast %union.anon* %436 to %struct.anon.2*
  %AL.i238 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %437, i32 0, i32 0
  %438 = load i64, i64* %PC.i237
  %439 = add i64 %438, 2
  store i64 %439, i64* %PC.i237
  store i8 0, i8* %AL.i238, align 1
  store %struct.Memory* %loadMem_4005f9, %struct.Memory** %MEMORY
  %loadMem1_4005fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i236
  %444 = add i64 %443, -491
  %445 = load i64, i64* %PC.i236
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i236
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i236
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
  %PC.i233 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %457, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %458 to %"class.std::bitset"*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %460 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %459, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %460 to %union.vec128_t*
  %461 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %462 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %463 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %464 = load i64, i64* %PC.i233
  %465 = add i64 %464, 3
  store i64 %465, i64* %PC.i233
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
  %PC.i230 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 11
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i232
  %501 = sub i64 %500, 56
  %502 = load i64, i64* %PC.i230
  %503 = add i64 %502, 8
  store i64 %503, i64* %PC.i230
  %504 = inttoptr i64 %501 to i64*
  %505 = load i64, i64* %504
  %506 = sext i64 %505 to i128
  %507 = and i128 %506, -18446744073709551616
  %508 = zext i64 %505 to i128
  %509 = or i128 %507, %508
  %510 = mul i128 %509, 20000
  %511 = trunc i128 %510 to i64
  store i64 %511, i64* %RDI.i231, align 8
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
  %PC.i227 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 11
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RDI.i228 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 15
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %537 to i64*
  %538 = load i64, i64* %RBP.i229
  %539 = sub i64 %538, 80
  %540 = load i64, i64* %RDI.i228
  %541 = load i64, i64* %PC.i227
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i227
  %543 = inttoptr i64 %539 to i64*
  store i64 %540, i64* %543
  store %struct.Memory* %loadMem_40060b, %struct.Memory** %MEMORY
  %loadMem_40060f = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %547, i64 0, i64 1
  %YMM1.i226 = bitcast %union.VectorReg* %548 to %"class.std::bitset"*
  %549 = bitcast %"class.std::bitset"* %YMM1.i226 to i8*
  %550 = load i64, i64* %PC.i225
  %551 = add i64 %550, 9
  store i64 %551, i64* %PC.i225
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
  %PC.i223 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %559, i64 0, i64 2
  %YMM2.i224 = bitcast %union.VectorReg* %560 to %"class.std::bitset"*
  %561 = bitcast %"class.std::bitset"* %YMM2.i224 to i8*
  %562 = load i64, i64* %PC.i223
  %563 = add i64 %562, 9
  store i64 %563, i64* %PC.i223
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
  %PC.i220 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 15
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %574, i64 0, i64 3
  %YMM3.i222 = bitcast %union.VectorReg* %575 to %"class.std::bitset"*
  %576 = bitcast %"class.std::bitset"* %YMM3.i222 to i8*
  %577 = load i64, i64* %RBP.i221
  %578 = sub i64 %577, 80
  %579 = load i64, i64* %PC.i220
  %580 = add i64 %579, 6
  store i64 %580, i64* %PC.i220
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
  %PC.i217 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %588, i64 0, i64 2
  %YMM2.i218 = bitcast %union.VectorReg* %589 to %"class.std::bitset"*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %590, i64 0, i64 3
  %XMM3.i219 = bitcast %union.VectorReg* %591 to %union.vec128_t*
  %592 = bitcast %"class.std::bitset"* %YMM2.i218 to i8*
  %593 = bitcast %"class.std::bitset"* %YMM2.i218 to i8*
  %594 = bitcast %union.vec128_t* %XMM3.i219 to i8*
  %595 = load i64, i64* %PC.i217
  %596 = add i64 %595, 4
  store i64 %596, i64* %PC.i217
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
  %PC.i214 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %611, i64 0, i64 1
  %YMM1.i215 = bitcast %union.VectorReg* %612 to %"class.std::bitset"*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %613, i64 0, i64 2
  %XMM2.i216 = bitcast %union.VectorReg* %614 to %union.vec128_t*
  %615 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %616 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %617 = bitcast %union.vec128_t* %XMM2.i216 to i8*
  %618 = load i64, i64* %PC.i214
  %619 = add i64 %618, 4
  store i64 %619, i64* %PC.i214
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
  %PC.i211 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 15
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %637, i64 0, i64 1
  %XMM1.i213 = bitcast %union.VectorReg* %638 to %union.vec128_t*
  %639 = load i64, i64* %RBP.i212
  %640 = sub i64 %639, 48
  %641 = bitcast %union.vec128_t* %XMM1.i213 to i8*
  %642 = load i64, i64* %PC.i211
  %643 = add i64 %642, 5
  store i64 %643, i64* %PC.i211
  %644 = bitcast i8* %641 to double*
  %645 = load double, double* %644, align 1
  %646 = inttoptr i64 %640 to double*
  store double %645, double* %646
  store %struct.Memory* %loadMem_40062f, %struct.Memory** %MEMORY
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %653, i64 0, i64 0
  %XMM0.i210 = bitcast %union.VectorReg* %654 to %union.vec128_t*
  %655 = load i64, i64* %RBP.i209
  %656 = sub i64 %655, 16
  %657 = bitcast %union.vec128_t* %XMM0.i210 to i8*
  %658 = load i64, i64* %PC.i208
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC.i208
  %660 = bitcast i8* %657 to double*
  %661 = load double, double* %660, align 1
  %662 = inttoptr i64 %656 to double*
  store double %661, double* %662
  store %struct.Memory* %loadMem_400634, %struct.Memory** %MEMORY
  %loadMem_400639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 15
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %669, i64 0, i64 0
  %XMM0.i207 = bitcast %union.VectorReg* %670 to %union.vec128_t*
  %671 = load i64, i64* %RBP.i206
  %672 = sub i64 %671, 32
  %673 = bitcast %union.vec128_t* %XMM0.i207 to i8*
  %674 = load i64, i64* %PC.i205
  %675 = add i64 %674, 5
  store i64 %675, i64* %PC.i205
  %676 = bitcast i8* %673 to double*
  %677 = load double, double* %676, align 1
  %678 = inttoptr i64 %672 to double*
  store double %677, double* %678
  store %struct.Memory* %loadMem_400639, %struct.Memory** %MEMORY
  %loadMem_40063e = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 15
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RBP.i204
  %686 = sub i64 %685, 72
  %687 = load i64, i64* %PC.i203
  %688 = add i64 %687, 8
  store i64 %688, i64* %PC.i203
  %689 = inttoptr i64 %686 to i64*
  store i64 1, i64* %689
  store %struct.Memory* %loadMem_40063e, %struct.Memory** %MEMORY
  %loadMem_400646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %695 to i32*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %RBP.i202
  %700 = sub i64 %699, 104
  %701 = load i32, i32* %EAX.i201
  %702 = zext i32 %701 to i64
  %703 = load i64, i64* %PC.i200
  %704 = add i64 %703, 3
  store i64 %704, i64* %PC.i200
  %705 = inttoptr i64 %700 to i32*
  store i32 %701, i32* %705
  store %struct.Memory* %loadMem_400646, %struct.Memory** %MEMORY
  br label %block_.L_400649

block_.L_400649:                                  ; preds = %block_40065e, %entry
  %loadMem_400649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 1
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 15
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %714 to i64*
  %715 = load i64, i64* %RBP.i199
  %716 = sub i64 %715, 72
  %717 = load i64, i64* %PC.i197
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC.i197
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719
  store i64 %720, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_400649, %struct.Memory** %MEMORY
  %loadMem_40064d = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 5
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 15
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RBP.i196
  %731 = sub i64 %730, 80
  %732 = load i64, i64* %PC.i194
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC.i194
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734
  store i64 %735, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_40064d, %struct.Memory** %MEMORY
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RCX.i193
  %743 = load i64, i64* %PC.i192
  %744 = add i64 %743, 4
  store i64 %744, i64* %PC.i192
  %745 = sub i64 %742, 1
  store i64 %745, i64* %RCX.i193, align 8
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
  %PC.i189 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 5
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RAX.i190
  %784 = load i64, i64* %RCX.i191
  %785 = load i64, i64* %PC.i189
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC.i189
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
  %PC.i188 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i188
  %822 = add i64 %821, 188
  %823 = load i64, i64* %PC.i188
  %824 = add i64 %823, 6
  %825 = load i64, i64* %PC.i188
  %826 = add i64 %825, 6
  store i64 %826, i64* %PC.i188
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
  br i1 %cmpBr_400658, label %block_.L_400714, label %block_40065e

block_40065e:                                     ; preds = %block_.L_400649
  %loadMem_40065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 15
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %848, i64 0, i64 0
  %YMM0.i187 = bitcast %union.VectorReg* %849 to %"class.std::bitset"*
  %850 = bitcast %"class.std::bitset"* %YMM0.i187 to i8*
  %851 = load i64, i64* %RBP.i186
  %852 = sub i64 %851, 32
  %853 = load i64, i64* %PC.i185
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i185
  %855 = inttoptr i64 %852 to double*
  %856 = load double, double* %855
  %857 = bitcast i8* %850 to double*
  store double %856, double* %857, align 1
  %858 = getelementptr inbounds i8, i8* %850, i64 8
  %859 = bitcast i8* %858 to double*
  store double 0.000000e+00, double* %859, align 1
  store %struct.Memory* %loadMem_40065e, %struct.Memory** %MEMORY
  %loadMem_400663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %864 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %863, i64 0, i64 0
  %YMM0.i184 = bitcast %union.VectorReg* %864 to %"class.std::bitset"*
  %865 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %866 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %867 = load i64, i64* %PC.i183
  %868 = add i64 %867, 9
  store i64 %868, i64* %PC.i183
  %869 = bitcast i8* %866 to double*
  %870 = load double, double* %869, align 1
  %871 = getelementptr inbounds i8, i8* %866, i64 8
  %872 = bitcast i8* %871 to i64*
  %873 = load i64, i64* %872, align 1
  %874 = load double, double* inttoptr (i64 6296200 to double*)
  %875 = fadd double %870, %874
  %876 = bitcast i8* %865 to double*
  store double %875, double* %876, align 1
  %877 = getelementptr inbounds i8, i8* %865, i64 8
  %878 = bitcast i8* %877 to i64*
  store i64 %873, i64* %878, align 1
  store %struct.Memory* %loadMem_400663, %struct.Memory** %MEMORY
  %loadMem_40066c = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %885, i64 0, i64 0
  %XMM0.i182 = bitcast %union.VectorReg* %886 to %union.vec128_t*
  %887 = load i64, i64* %RBP.i181
  %888 = sub i64 %887, 32
  %889 = bitcast %union.vec128_t* %XMM0.i182 to i8*
  %890 = load i64, i64* %PC.i180
  %891 = add i64 %890, 5
  store i64 %891, i64* %PC.i180
  %892 = bitcast i8* %889 to double*
  %893 = load double, double* %892, align 1
  %894 = inttoptr i64 %888 to double*
  store double %893, double* %894
  store %struct.Memory* %loadMem_40066c, %struct.Memory** %MEMORY
  %loadMem_400671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 15
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %901, i64 0, i64 0
  %YMM0.i179 = bitcast %union.VectorReg* %902 to %"class.std::bitset"*
  %903 = bitcast %"class.std::bitset"* %YMM0.i179 to i8*
  %904 = load i64, i64* %RBP.i178
  %905 = sub i64 %904, 32
  %906 = load i64, i64* %PC.i177
  %907 = add i64 %906, 5
  store i64 %907, i64* %PC.i177
  %908 = inttoptr i64 %905 to double*
  %909 = load double, double* %908
  %910 = bitcast i8* %903 to double*
  store double %909, double* %910, align 1
  %911 = getelementptr inbounds i8, i8* %903, i64 8
  %912 = bitcast i8* %911 to double*
  store double 0.000000e+00, double* %912, align 1
  store %struct.Memory* %loadMem_400671, %struct.Memory** %MEMORY
  %loadMem_400676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %920 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %919, i64 0, i64 0
  %YMM0.i176 = bitcast %union.VectorReg* %920 to %"class.std::bitset"*
  %921 = bitcast %"class.std::bitset"* %YMM0.i176 to i8*
  %922 = bitcast %"class.std::bitset"* %YMM0.i176 to i8*
  %923 = load i64, i64* %RBP.i175
  %924 = sub i64 %923, 48
  %925 = load i64, i64* %PC.i174
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC.i174
  %927 = bitcast i8* %922 to double*
  %928 = load double, double* %927, align 1
  %929 = getelementptr inbounds i8, i8* %922, i64 8
  %930 = bitcast i8* %929 to i64*
  %931 = load i64, i64* %930, align 1
  %932 = inttoptr i64 %924 to double*
  %933 = load double, double* %932
  %934 = fmul double %928, %933
  %935 = bitcast i8* %921 to double*
  store double %934, double* %935, align 1
  %936 = getelementptr inbounds i8, i8* %921, i64 8
  %937 = bitcast i8* %936 to i64*
  store i64 %931, i64* %937, align 1
  store %struct.Memory* %loadMem_400676, %struct.Memory** %MEMORY
  %loadMem_40067b = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %944, i64 0, i64 0
  %XMM0.i173 = bitcast %union.VectorReg* %945 to %union.vec128_t*
  %946 = load i64, i64* %RBP.i172
  %947 = sub i64 %946, 24
  %948 = bitcast %union.vec128_t* %XMM0.i173 to i8*
  %949 = load i64, i64* %PC.i171
  %950 = add i64 %949, 5
  store i64 %950, i64* %PC.i171
  %951 = bitcast i8* %948 to double*
  %952 = load double, double* %951, align 1
  %953 = inttoptr i64 %947 to double*
  store double %952, double* %953
  store %struct.Memory* %loadMem_40067b, %struct.Memory** %MEMORY
  %loadMem_400680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 15
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %960, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %961 to %"class.std::bitset"*
  %962 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %963 = load i64, i64* %RBP.i169
  %964 = sub i64 %963, 24
  %965 = load i64, i64* %PC.i168
  %966 = add i64 %965, 5
  store i64 %966, i64* %PC.i168
  %967 = inttoptr i64 %964 to double*
  %968 = load double, double* %967
  %969 = bitcast i8* %962 to double*
  store double %968, double* %969, align 1
  %970 = getelementptr inbounds i8, i8* %962, i64 8
  %971 = bitcast i8* %970 to double*
  store double 0.000000e+00, double* %971, align 1
  store %struct.Memory* %loadMem_400680, %struct.Memory** %MEMORY
  %loadMem_400685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %979 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %978, i64 0, i64 0
  %YMM0.i167 = bitcast %union.VectorReg* %979 to %"class.std::bitset"*
  %980 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %981 = bitcast %"class.std::bitset"* %YMM0.i167 to i8*
  %982 = load i64, i64* %RBP.i166
  %983 = sub i64 %982, 24
  %984 = load i64, i64* %PC.i165
  %985 = add i64 %984, 5
  store i64 %985, i64* %PC.i165
  %986 = bitcast i8* %981 to double*
  %987 = load double, double* %986, align 1
  %988 = getelementptr inbounds i8, i8* %981, i64 8
  %989 = bitcast i8* %988 to i64*
  %990 = load i64, i64* %989, align 1
  %991 = inttoptr i64 %983 to double*
  %992 = load double, double* %991
  %993 = fmul double %987, %992
  %994 = bitcast i8* %980 to double*
  store double %993, double* %994, align 1
  %995 = getelementptr inbounds i8, i8* %980, i64 8
  %996 = bitcast i8* %995 to i64*
  store i64 %990, i64* %996, align 1
  store %struct.Memory* %loadMem_400685, %struct.Memory** %MEMORY
  %loadMem_40068a = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1003, i64 0, i64 0
  %XMM0.i164 = bitcast %union.VectorReg* %1004 to %union.vec128_t*
  %1005 = load i64, i64* %RBP.i163
  %1006 = sub i64 %1005, 40
  %1007 = bitcast %union.vec128_t* %XMM0.i164 to i8*
  %1008 = load i64, i64* %PC.i162
  %1009 = add i64 %1008, 5
  store i64 %1009, i64* %PC.i162
  %1010 = bitcast i8* %1007 to double*
  %1011 = load double, double* %1010, align 1
  %1012 = inttoptr i64 %1006 to double*
  store double %1011, double* %1012
  store %struct.Memory* %loadMem_40068a, %struct.Memory** %MEMORY
  %loadMem_40068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 15
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1019, i64 0, i64 0
  %YMM0.i161 = bitcast %union.VectorReg* %1020 to %"class.std::bitset"*
  %1021 = bitcast %"class.std::bitset"* %YMM0.i161 to i8*
  %1022 = load i64, i64* %RBP.i160
  %1023 = sub i64 %1022, 16
  %1024 = load i64, i64* %PC.i159
  %1025 = add i64 %1024, 5
  store i64 %1025, i64* %PC.i159
  %1026 = inttoptr i64 %1023 to double*
  %1027 = load double, double* %1026
  %1028 = bitcast i8* %1021 to double*
  store double %1027, double* %1028, align 1
  %1029 = getelementptr inbounds i8, i8* %1021, i64 8
  %1030 = bitcast i8* %1029 to double*
  store double 0.000000e+00, double* %1030, align 1
  store %struct.Memory* %loadMem_40068f, %struct.Memory** %MEMORY
  %loadMem_400694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 15
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1037, i64 0, i64 1
  %YMM1.i158 = bitcast %union.VectorReg* %1038 to %"class.std::bitset"*
  %1039 = bitcast %"class.std::bitset"* %YMM1.i158 to i8*
  %1040 = load i64, i64* %RBP.i157
  %1041 = sub i64 %1040, 24
  %1042 = load i64, i64* %PC.i156
  %1043 = add i64 %1042, 5
  store i64 %1043, i64* %PC.i156
  %1044 = inttoptr i64 %1041 to double*
  %1045 = load double, double* %1044
  %1046 = bitcast i8* %1039 to double*
  store double %1045, double* %1046, align 1
  %1047 = getelementptr inbounds i8, i8* %1039, i64 8
  %1048 = bitcast i8* %1047 to double*
  store double 0.000000e+00, double* %1048, align 1
  store %struct.Memory* %loadMem_400694, %struct.Memory** %MEMORY
  %loadMem_400699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1053 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1052, i64 0, i64 2
  %YMM2.i155 = bitcast %union.VectorReg* %1053 to %"class.std::bitset"*
  %1054 = bitcast %"class.std::bitset"* %YMM2.i155 to i8*
  %1055 = load i64, i64* %PC.i154
  %1056 = add i64 %1055, 9
  store i64 %1056, i64* %PC.i154
  %1057 = load double, double* inttoptr (i64 6295648 to double*)
  %1058 = bitcast i8* %1054 to double*
  store double %1057, double* %1058, align 1
  %1059 = getelementptr inbounds i8, i8* %1054, i64 8
  %1060 = bitcast i8* %1059 to double*
  store double 0.000000e+00, double* %1060, align 1
  store %struct.Memory* %loadMem_400699, %struct.Memory** %MEMORY
  %loadMem_4006a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 15
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1067, i64 0, i64 2
  %YMM2.i153 = bitcast %union.VectorReg* %1068 to %"class.std::bitset"*
  %1069 = bitcast %"class.std::bitset"* %YMM2.i153 to i8*
  %1070 = bitcast %"class.std::bitset"* %YMM2.i153 to i8*
  %1071 = load i64, i64* %RBP.i152
  %1072 = sub i64 %1071, 40
  %1073 = load i64, i64* %PC.i151
  %1074 = add i64 %1073, 5
  store i64 %1074, i64* %PC.i151
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
  store %struct.Memory* %loadMem_4006a2, %struct.Memory** %MEMORY
  %loadMem_4006a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1089, i64 0, i64 2
  %YMM2.i150 = bitcast %union.VectorReg* %1090 to %"class.std::bitset"*
  %1091 = bitcast %"class.std::bitset"* %YMM2.i150 to i8*
  %1092 = bitcast %"class.std::bitset"* %YMM2.i150 to i8*
  %1093 = load i64, i64* %PC.i149
  %1094 = add i64 %1093, 9
  store i64 %1094, i64* %PC.i149
  %1095 = bitcast i8* %1092 to double*
  %1096 = load double, double* %1095, align 1
  %1097 = getelementptr inbounds i8, i8* %1092, i64 8
  %1098 = bitcast i8* %1097 to i64*
  %1099 = load i64, i64* %1098, align 1
  %1100 = load double, double* inttoptr (i64 6295640 to double*)
  %1101 = fsub double %1096, %1100
  %1102 = bitcast i8* %1091 to double*
  store double %1101, double* %1102, align 1
  %1103 = getelementptr inbounds i8, i8* %1091, i64 8
  %1104 = bitcast i8* %1103 to i64*
  store i64 %1099, i64* %1104, align 1
  store %struct.Memory* %loadMem_4006a7, %struct.Memory** %MEMORY
  %loadMem_4006b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 15
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1111, i64 0, i64 2
  %YMM2.i148 = bitcast %union.VectorReg* %1112 to %"class.std::bitset"*
  %1113 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %1114 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %1115 = load i64, i64* %RBP.i147
  %1116 = sub i64 %1115, 40
  %1117 = load i64, i64* %PC.i146
  %1118 = add i64 %1117, 5
  store i64 %1118, i64* %PC.i146
  %1119 = bitcast i8* %1114 to double*
  %1120 = load double, double* %1119, align 1
  %1121 = getelementptr inbounds i8, i8* %1114, i64 8
  %1122 = bitcast i8* %1121 to i64*
  %1123 = load i64, i64* %1122, align 1
  %1124 = inttoptr i64 %1116 to double*
  %1125 = load double, double* %1124
  %1126 = fmul double %1120, %1125
  %1127 = bitcast i8* %1113 to double*
  store double %1126, double* %1127, align 1
  %1128 = getelementptr inbounds i8, i8* %1113, i64 8
  %1129 = bitcast i8* %1128 to i64*
  store i64 %1123, i64* %1129, align 1
  store %struct.Memory* %loadMem_4006b0, %struct.Memory** %MEMORY
  %loadMem_4006b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1134 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1133, i64 0, i64 2
  %YMM2.i145 = bitcast %union.VectorReg* %1134 to %"class.std::bitset"*
  %1135 = bitcast %"class.std::bitset"* %YMM2.i145 to i8*
  %1136 = bitcast %"class.std::bitset"* %YMM2.i145 to i8*
  %1137 = load i64, i64* %PC.i144
  %1138 = add i64 %1137, 9
  store i64 %1138, i64* %PC.i144
  %1139 = bitcast i8* %1136 to double*
  %1140 = load double, double* %1139, align 1
  %1141 = getelementptr inbounds i8, i8* %1136, i64 8
  %1142 = bitcast i8* %1141 to i64*
  %1143 = load i64, i64* %1142, align 1
  %1144 = load double, double* inttoptr (i64 6295632 to double*)
  %1145 = fadd double %1140, %1144
  %1146 = bitcast i8* %1135 to double*
  store double %1145, double* %1146, align 1
  %1147 = getelementptr inbounds i8, i8* %1135, i64 8
  %1148 = bitcast i8* %1147 to i64*
  store i64 %1143, i64* %1148, align 1
  store %struct.Memory* %loadMem_4006b5, %struct.Memory** %MEMORY
  %loadMem_4006be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 15
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1155, i64 0, i64 2
  %YMM2.i143 = bitcast %union.VectorReg* %1156 to %"class.std::bitset"*
  %1157 = bitcast %"class.std::bitset"* %YMM2.i143 to i8*
  %1158 = bitcast %"class.std::bitset"* %YMM2.i143 to i8*
  %1159 = load i64, i64* %RBP.i142
  %1160 = sub i64 %1159, 40
  %1161 = load i64, i64* %PC.i141
  %1162 = add i64 %1161, 5
  store i64 %1162, i64* %PC.i141
  %1163 = bitcast i8* %1158 to double*
  %1164 = load double, double* %1163, align 1
  %1165 = getelementptr inbounds i8, i8* %1158, i64 8
  %1166 = bitcast i8* %1165 to i64*
  %1167 = load i64, i64* %1166, align 1
  %1168 = inttoptr i64 %1160 to double*
  %1169 = load double, double* %1168
  %1170 = fmul double %1164, %1169
  %1171 = bitcast i8* %1157 to double*
  store double %1170, double* %1171, align 1
  %1172 = getelementptr inbounds i8, i8* %1157, i64 8
  %1173 = bitcast i8* %1172 to i64*
  store i64 %1167, i64* %1173, align 1
  store %struct.Memory* %loadMem_4006be, %struct.Memory** %MEMORY
  %loadMem_4006c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1177, i64 0, i64 2
  %YMM2.i140 = bitcast %union.VectorReg* %1178 to %"class.std::bitset"*
  %1179 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %1180 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %1181 = load i64, i64* %PC.i139
  %1182 = add i64 %1181, 9
  store i64 %1182, i64* %PC.i139
  %1183 = bitcast i8* %1180 to double*
  %1184 = load double, double* %1183, align 1
  %1185 = getelementptr inbounds i8, i8* %1180, i64 8
  %1186 = bitcast i8* %1185 to i64*
  %1187 = load i64, i64* %1186, align 1
  %1188 = load double, double* inttoptr (i64 6295624 to double*)
  %1189 = fsub double %1184, %1188
  %1190 = bitcast i8* %1179 to double*
  store double %1189, double* %1190, align 1
  %1191 = getelementptr inbounds i8, i8* %1179, i64 8
  %1192 = bitcast i8* %1191 to i64*
  store i64 %1187, i64* %1192, align 1
  store %struct.Memory* %loadMem_4006c3, %struct.Memory** %MEMORY
  %loadMem_4006cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 15
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1199, i64 0, i64 2
  %YMM2.i138 = bitcast %union.VectorReg* %1200 to %"class.std::bitset"*
  %1201 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %1202 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %1203 = load i64, i64* %RBP.i137
  %1204 = sub i64 %1203, 40
  %1205 = load i64, i64* %PC.i136
  %1206 = add i64 %1205, 5
  store i64 %1206, i64* %PC.i136
  %1207 = bitcast i8* %1202 to double*
  %1208 = load double, double* %1207, align 1
  %1209 = getelementptr inbounds i8, i8* %1202, i64 8
  %1210 = bitcast i8* %1209 to i64*
  %1211 = load i64, i64* %1210, align 1
  %1212 = inttoptr i64 %1204 to double*
  %1213 = load double, double* %1212
  %1214 = fmul double %1208, %1213
  %1215 = bitcast i8* %1201 to double*
  store double %1214, double* %1215, align 1
  %1216 = getelementptr inbounds i8, i8* %1201, i64 8
  %1217 = bitcast i8* %1216 to i64*
  store i64 %1211, i64* %1217, align 1
  store %struct.Memory* %loadMem_4006cc, %struct.Memory** %MEMORY
  %loadMem_4006d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1221, i64 0, i64 2
  %YMM2.i135 = bitcast %union.VectorReg* %1222 to %"class.std::bitset"*
  %1223 = bitcast %"class.std::bitset"* %YMM2.i135 to i8*
  %1224 = bitcast %"class.std::bitset"* %YMM2.i135 to i8*
  %1225 = load i64, i64* %PC.i134
  %1226 = add i64 %1225, 9
  store i64 %1226, i64* %PC.i134
  %1227 = bitcast i8* %1224 to double*
  %1228 = load double, double* %1227, align 1
  %1229 = getelementptr inbounds i8, i8* %1224, i64 8
  %1230 = bitcast i8* %1229 to i64*
  %1231 = load i64, i64* %1230, align 1
  %1232 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1233 = fadd double %1228, %1232
  %1234 = bitcast i8* %1223 to double*
  store double %1233, double* %1234, align 1
  %1235 = getelementptr inbounds i8, i8* %1223, i64 8
  %1236 = bitcast i8* %1235 to i64*
  store i64 %1231, i64* %1236, align 1
  store %struct.Memory* %loadMem_4006d1, %struct.Memory** %MEMORY
  %loadMem_4006da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1243, i64 0, i64 2
  %YMM2.i133 = bitcast %union.VectorReg* %1244 to %"class.std::bitset"*
  %1245 = bitcast %"class.std::bitset"* %YMM2.i133 to i8*
  %1246 = bitcast %"class.std::bitset"* %YMM2.i133 to i8*
  %1247 = load i64, i64* %RBP.i132
  %1248 = sub i64 %1247, 40
  %1249 = load i64, i64* %PC.i131
  %1250 = add i64 %1249, 5
  store i64 %1250, i64* %PC.i131
  %1251 = bitcast i8* %1246 to double*
  %1252 = load double, double* %1251, align 1
  %1253 = getelementptr inbounds i8, i8* %1246, i64 8
  %1254 = bitcast i8* %1253 to i64*
  %1255 = load i64, i64* %1254, align 1
  %1256 = inttoptr i64 %1248 to double*
  %1257 = load double, double* %1256
  %1258 = fmul double %1252, %1257
  %1259 = bitcast i8* %1245 to double*
  store double %1258, double* %1259, align 1
  %1260 = getelementptr inbounds i8, i8* %1245, i64 8
  %1261 = bitcast i8* %1260 to i64*
  store i64 %1255, i64* %1261, align 1
  store %struct.Memory* %loadMem_4006da, %struct.Memory** %MEMORY
  %loadMem_4006df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1265, i64 0, i64 2
  %YMM2.i130 = bitcast %union.VectorReg* %1266 to %"class.std::bitset"*
  %1267 = bitcast %"class.std::bitset"* %YMM2.i130 to i8*
  %1268 = bitcast %"class.std::bitset"* %YMM2.i130 to i8*
  %1269 = load i64, i64* %PC.i129
  %1270 = add i64 %1269, 9
  store i64 %1270, i64* %PC.i129
  %1271 = bitcast i8* %1268 to double*
  %1272 = load double, double* %1271, align 1
  %1273 = getelementptr inbounds i8, i8* %1268, i64 8
  %1274 = bitcast i8* %1273 to i64*
  %1275 = load i64, i64* %1274, align 1
  %1276 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1277 = fadd double %1272, %1276
  %1278 = bitcast i8* %1267 to double*
  store double %1277, double* %1278, align 1
  %1279 = getelementptr inbounds i8, i8* %1267, i64 8
  %1280 = bitcast i8* %1279 to i64*
  store i64 %1275, i64* %1280, align 1
  store %struct.Memory* %loadMem_4006df, %struct.Memory** %MEMORY
  %loadMem_4006e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 15
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1287, i64 0, i64 2
  %YMM2.i128 = bitcast %union.VectorReg* %1288 to %"class.std::bitset"*
  %1289 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %1290 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %1291 = load i64, i64* %RBP.i127
  %1292 = sub i64 %1291, 40
  %1293 = load i64, i64* %PC.i126
  %1294 = add i64 %1293, 5
  store i64 %1294, i64* %PC.i126
  %1295 = bitcast i8* %1290 to double*
  %1296 = load double, double* %1295, align 1
  %1297 = getelementptr inbounds i8, i8* %1290, i64 8
  %1298 = bitcast i8* %1297 to i64*
  %1299 = load i64, i64* %1298, align 1
  %1300 = inttoptr i64 %1292 to double*
  %1301 = load double, double* %1300
  %1302 = fmul double %1296, %1301
  %1303 = bitcast i8* %1289 to double*
  store double %1302, double* %1303, align 1
  %1304 = getelementptr inbounds i8, i8* %1289, i64 8
  %1305 = bitcast i8* %1304 to i64*
  store i64 %1299, i64* %1305, align 1
  store %struct.Memory* %loadMem_4006e8, %struct.Memory** %MEMORY
  %loadMem_4006ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1309, i64 0, i64 2
  %YMM2.i125 = bitcast %union.VectorReg* %1310 to %"class.std::bitset"*
  %1311 = bitcast %"class.std::bitset"* %YMM2.i125 to i8*
  %1312 = bitcast %"class.std::bitset"* %YMM2.i125 to i8*
  %1313 = load i64, i64* %PC.i124
  %1314 = add i64 %1313, 9
  store i64 %1314, i64* %PC.i124
  %1315 = bitcast i8* %1312 to double*
  %1316 = load double, double* %1315, align 1
  %1317 = getelementptr inbounds i8, i8* %1312, i64 8
  %1318 = bitcast i8* %1317 to i64*
  %1319 = load i64, i64* %1318, align 1
  %1320 = load double, double* inttoptr (i64 6296200 to double*)
  %1321 = fadd double %1316, %1320
  %1322 = bitcast i8* %1311 to double*
  store double %1321, double* %1322, align 1
  %1323 = getelementptr inbounds i8, i8* %1311, i64 8
  %1324 = bitcast i8* %1323 to i64*
  store i64 %1319, i64* %1324, align 1
  store %struct.Memory* %loadMem_4006ed, %struct.Memory** %MEMORY
  %loadMem_4006f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1329 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1328, i64 0, i64 1
  %YMM1.i122 = bitcast %union.VectorReg* %1329 to %"class.std::bitset"*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1330, i64 0, i64 2
  %XMM2.i123 = bitcast %union.VectorReg* %1331 to %union.vec128_t*
  %1332 = bitcast %"class.std::bitset"* %YMM1.i122 to i8*
  %1333 = bitcast %"class.std::bitset"* %YMM1.i122 to i8*
  %1334 = bitcast %union.vec128_t* %XMM2.i123 to i8*
  %1335 = load i64, i64* %PC.i121
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i121
  %1337 = bitcast i8* %1333 to double*
  %1338 = load double, double* %1337, align 1
  %1339 = getelementptr inbounds i8, i8* %1333, i64 8
  %1340 = bitcast i8* %1339 to i64*
  %1341 = load i64, i64* %1340, align 1
  %1342 = bitcast i8* %1334 to double*
  %1343 = load double, double* %1342, align 1
  %1344 = fmul double %1338, %1343
  %1345 = bitcast i8* %1332 to double*
  store double %1344, double* %1345, align 1
  %1346 = getelementptr inbounds i8, i8* %1332, i64 8
  %1347 = bitcast i8* %1346 to i64*
  store i64 %1341, i64* %1347, align 1
  store %struct.Memory* %loadMem_4006f6, %struct.Memory** %MEMORY
  %loadMem_4006fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1351, i64 0, i64 0
  %YMM0.i119 = bitcast %union.VectorReg* %1352 to %"class.std::bitset"*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1353, i64 0, i64 1
  %XMM1.i120 = bitcast %union.VectorReg* %1354 to %union.vec128_t*
  %1355 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %1356 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %1357 = bitcast %union.vec128_t* %XMM1.i120 to i8*
  %1358 = load i64, i64* %PC.i118
  %1359 = add i64 %1358, 4
  store i64 %1359, i64* %PC.i118
  %1360 = bitcast i8* %1356 to double*
  %1361 = load double, double* %1360, align 1
  %1362 = getelementptr inbounds i8, i8* %1356, i64 8
  %1363 = bitcast i8* %1362 to i64*
  %1364 = load i64, i64* %1363, align 1
  %1365 = bitcast i8* %1357 to double*
  %1366 = load double, double* %1365, align 1
  %1367 = fadd double %1361, %1366
  %1368 = bitcast i8* %1355 to double*
  store double %1367, double* %1368, align 1
  %1369 = getelementptr inbounds i8, i8* %1355, i64 8
  %1370 = bitcast i8* %1369 to i64*
  store i64 %1364, i64* %1370, align 1
  store %struct.Memory* %loadMem_4006fa, %struct.Memory** %MEMORY
  %loadMem_4006fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1377, i64 0, i64 0
  %XMM0.i117 = bitcast %union.VectorReg* %1378 to %union.vec128_t*
  %1379 = load i64, i64* %RBP.i116
  %1380 = sub i64 %1379, 16
  %1381 = bitcast %union.vec128_t* %XMM0.i117 to i8*
  %1382 = load i64, i64* %PC.i115
  %1383 = add i64 %1382, 5
  store i64 %1383, i64* %PC.i115
  %1384 = bitcast i8* %1381 to double*
  %1385 = load double, double* %1384, align 1
  %1386 = inttoptr i64 %1380 to double*
  store double %1385, double* %1386
  store %struct.Memory* %loadMem_4006fe, %struct.Memory** %MEMORY
  %loadMem_400703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 1
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 15
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %RBP.i114
  %1397 = sub i64 %1396, 72
  %1398 = load i64, i64* %PC.i112
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC.i112
  %1400 = inttoptr i64 %1397 to i64*
  %1401 = load i64, i64* %1400
  store i64 %1401, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_400703, %struct.Memory** %MEMORY
  %loadMem_400707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 1
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %RAX.i111
  %1409 = load i64, i64* %PC.i110
  %1410 = add i64 %1409, 4
  store i64 %1410, i64* %PC.i110
  %1411 = add i64 1, %1408
  store i64 %1411, i64* %RAX.i111, align 8
  %1412 = icmp ult i64 %1411, %1408
  %1413 = icmp ult i64 %1411, 1
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
  %1424 = xor i64 1, %1408
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
  %1436 = lshr i64 %1408, 63
  %1437 = xor i64 %1433, %1436
  %1438 = add i64 %1437, %1433
  %1439 = icmp eq i64 %1438, 2
  %1440 = zext i1 %1439 to i8
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1440, i8* %1441, align 1
  store %struct.Memory* %loadMem_400707, %struct.Memory** %MEMORY
  %loadMem_40070b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 1
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 15
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RBP.i109
  %1452 = sub i64 %1451, 72
  %1453 = load i64, i64* %RAX.i108
  %1454 = load i64, i64* %PC.i107
  %1455 = add i64 %1454, 4
  store i64 %1455, i64* %PC.i107
  %1456 = inttoptr i64 %1452 to i64*
  store i64 %1453, i64* %1456
  store %struct.Memory* %loadMem_40070b, %struct.Memory** %MEMORY
  %loadMem_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %PC.i106
  %1461 = add i64 %1460, -198
  %1462 = load i64, i64* %PC.i106
  %1463 = add i64 %1462, 5
  store i64 %1463, i64* %PC.i106
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1461, i64* %1464, align 8
  store %struct.Memory* %loadMem_40070f, %struct.Memory** %MEMORY
  br label %block_.L_400649

block_.L_400714:                                  ; preds = %block_.L_400649
  %loadMem_400714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 11
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %PC.i105
  %1472 = add i64 %1471, 10
  store i64 %1472, i64* %PC.i105
  store i64 4196790, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400714, %struct.Memory** %MEMORY
  %loadMem_40071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1477 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1476, i64 0, i64 0
  %YMM0.i103 = bitcast %union.VectorReg* %1477 to %"class.std::bitset"*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1479 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1478, i64 0, i64 0
  %XMM0.i104 = bitcast %union.VectorReg* %1479 to %union.vec128_t*
  %1480 = bitcast %"class.std::bitset"* %YMM0.i103 to i8*
  %1481 = bitcast %"class.std::bitset"* %YMM0.i103 to i8*
  %1482 = bitcast %union.vec128_t* %XMM0.i104 to i8*
  %1483 = load i64, i64* %PC.i102
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i102
  %1485 = bitcast i8* %1481 to i64*
  %1486 = load i64, i64* %1485, align 1
  %1487 = getelementptr inbounds i8, i8* %1481, i64 8
  %1488 = bitcast i8* %1487 to i64*
  %1489 = load i64, i64* %1488, align 1
  %1490 = bitcast i8* %1482 to i64*
  %1491 = load i64, i64* %1490, align 1
  %1492 = getelementptr inbounds i8, i8* %1482, i64 8
  %1493 = bitcast i8* %1492 to i64*
  %1494 = load i64, i64* %1493, align 1
  %1495 = xor i64 %1491, %1486
  %1496 = xor i64 %1494, %1489
  %1497 = trunc i64 %1495 to i32
  %1498 = lshr i64 %1495, 32
  %1499 = trunc i64 %1498 to i32
  %1500 = bitcast i8* %1480 to i32*
  store i32 %1497, i32* %1500, align 1
  %1501 = getelementptr inbounds i8, i8* %1480, i64 4
  %1502 = bitcast i8* %1501 to i32*
  store i32 %1499, i32* %1502, align 1
  %1503 = trunc i64 %1496 to i32
  %1504 = getelementptr inbounds i8, i8* %1480, i64 8
  %1505 = bitcast i8* %1504 to i32*
  store i32 %1503, i32* %1505, align 1
  %1506 = lshr i64 %1496, 32
  %1507 = trunc i64 %1506 to i32
  %1508 = getelementptr inbounds i8, i8* %1480, i64 12
  %1509 = bitcast i8* %1508 to i32*
  store i32 %1507, i32* %1509, align 1
  store %struct.Memory* %loadMem_40071e, %struct.Memory** %MEMORY
  %loadMem_400721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1513, i64 0, i64 1
  %YMM1.i101 = bitcast %union.VectorReg* %1514 to %"class.std::bitset"*
  %1515 = bitcast %"class.std::bitset"* %YMM1.i101 to i8*
  %1516 = load i64, i64* %PC.i100
  %1517 = add i64 %1516, 503
  %1518 = load i64, i64* %PC.i100
  %1519 = add i64 %1518, 8
  store i64 %1519, i64* %PC.i100
  %1520 = inttoptr i64 %1517 to double*
  %1521 = load double, double* %1520
  %1522 = bitcast i8* %1515 to double*
  store double %1521, double* %1522, align 1
  %1523 = getelementptr inbounds i8, i8* %1515, i64 8
  %1524 = bitcast i8* %1523 to double*
  store double 0.000000e+00, double* %1524, align 1
  store %struct.Memory* %loadMem_400721, %struct.Memory** %MEMORY
  %loadMem_400729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1528, i64 0, i64 2
  %YMM2.i99 = bitcast %union.VectorReg* %1529 to %"class.std::bitset"*
  %1530 = bitcast %"class.std::bitset"* %YMM2.i99 to i8*
  %1531 = load i64, i64* %PC.i98
  %1532 = add i64 %1531, 503
  %1533 = load i64, i64* %PC.i98
  %1534 = add i64 %1533, 8
  store i64 %1534, i64* %PC.i98
  %1535 = inttoptr i64 %1532 to double*
  %1536 = load double, double* %1535
  %1537 = bitcast i8* %1530 to double*
  store double %1536, double* %1537, align 1
  %1538 = getelementptr inbounds i8, i8* %1530, i64 8
  %1539 = bitcast i8* %1538 to double*
  store double 0.000000e+00, double* %1539, align 1
  store %struct.Memory* %loadMem_400729, %struct.Memory** %MEMORY
  %loadMem_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1543, i64 0, i64 3
  %YMM3.i97 = bitcast %union.VectorReg* %1544 to %"class.std::bitset"*
  %1545 = bitcast %"class.std::bitset"* %YMM3.i97 to i8*
  %1546 = load i64, i64* %PC.i96
  %1547 = add i64 %1546, 9
  store i64 %1547, i64* %PC.i96
  %1548 = load double, double* inttoptr (i64 6296160 to double*)
  %1549 = bitcast i8* %1545 to double*
  store double %1548, double* %1549, align 1
  %1550 = getelementptr inbounds i8, i8* %1545, i64 8
  %1551 = bitcast i8* %1550 to double*
  store double 0.000000e+00, double* %1551, align 1
  store %struct.Memory* %loadMem_400731, %struct.Memory** %MEMORY
  %loadMem_40073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1555, i64 0, i64 3
  %YMM3.i95 = bitcast %union.VectorReg* %1556 to %"class.std::bitset"*
  %1557 = bitcast %"class.std::bitset"* %YMM3.i95 to i8*
  %1558 = bitcast %"class.std::bitset"* %YMM3.i95 to i8*
  %1559 = load i64, i64* %PC.i94
  %1560 = add i64 %1559, 9
  store i64 %1560, i64* %PC.i94
  %1561 = bitcast i8* %1558 to double*
  %1562 = load double, double* %1561, align 1
  %1563 = getelementptr inbounds i8, i8* %1558, i64 8
  %1564 = bitcast i8* %1563 to i64*
  %1565 = load i64, i64* %1564, align 1
  %1566 = load double, double* inttoptr (i64 6296224 to double*)
  %1567 = fdiv double %1562, %1566
  %1568 = bitcast i8* %1557 to double*
  store double %1567, double* %1568, align 1
  %1569 = getelementptr inbounds i8, i8* %1557, i64 8
  %1570 = bitcast i8* %1569 to i64*
  store i64 %1565, i64* %1570, align 1
  store %struct.Memory* %loadMem_40073a, %struct.Memory** %MEMORY
  %loadMem_400743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 15
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1577, i64 0, i64 3
  %XMM3.i93 = bitcast %union.VectorReg* %1578 to %union.vec128_t*
  %1579 = load i64, i64* %RBP.i92
  %1580 = sub i64 %1579, 24
  %1581 = bitcast %union.vec128_t* %XMM3.i93 to i8*
  %1582 = load i64, i64* %PC.i91
  %1583 = add i64 %1582, 5
  store i64 %1583, i64* %PC.i91
  %1584 = bitcast i8* %1581 to double*
  %1585 = load double, double* %1584, align 1
  %1586 = inttoptr i64 %1580 to double*
  store double %1585, double* %1586
  store %struct.Memory* %loadMem_400743, %struct.Memory** %MEMORY
  %loadMem_400748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1593, i64 0, i64 3
  %YMM3.i90 = bitcast %union.VectorReg* %1594 to %"class.std::bitset"*
  %1595 = bitcast %"class.std::bitset"* %YMM3.i90 to i8*
  %1596 = load i64, i64* %RBP.i89
  %1597 = sub i64 %1596, 24
  %1598 = load i64, i64* %PC.i88
  %1599 = add i64 %1598, 5
  store i64 %1599, i64* %PC.i88
  %1600 = inttoptr i64 %1597 to double*
  %1601 = load double, double* %1600
  %1602 = bitcast i8* %1595 to double*
  store double %1601, double* %1602, align 1
  %1603 = getelementptr inbounds i8, i8* %1595, i64 8
  %1604 = bitcast i8* %1603 to double*
  store double 0.000000e+00, double* %1604, align 1
  store %struct.Memory* %loadMem_400748, %struct.Memory** %MEMORY
  %loadMem_40074d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 3
  %YMM3.i87 = bitcast %union.VectorReg* %1612 to %"class.std::bitset"*
  %1613 = bitcast %"class.std::bitset"* %YMM3.i87 to i8*
  %1614 = bitcast %"class.std::bitset"* %YMM3.i87 to i8*
  %1615 = load i64, i64* %RBP.i86
  %1616 = sub i64 %1615, 24
  %1617 = load i64, i64* %PC.i85
  %1618 = add i64 %1617, 5
  store i64 %1618, i64* %PC.i85
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
  store %struct.Memory* %loadMem_40074d, %struct.Memory** %MEMORY
  %loadMem_400752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1637 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1636, i64 0, i64 3
  %XMM3.i84 = bitcast %union.VectorReg* %1637 to %union.vec128_t*
  %1638 = load i64, i64* %RBP.i83
  %1639 = sub i64 %1638, 40
  %1640 = bitcast %union.vec128_t* %XMM3.i84 to i8*
  %1641 = load i64, i64* %PC.i82
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %PC.i82
  %1643 = bitcast i8* %1640 to double*
  %1644 = load double, double* %1643, align 1
  %1645 = inttoptr i64 %1639 to double*
  store double %1644, double* %1645
  store %struct.Memory* %loadMem_400752, %struct.Memory** %MEMORY
  %loadMem_400757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 15
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1653 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1652, i64 0, i64 3
  %YMM3.i81 = bitcast %union.VectorReg* %1653 to %"class.std::bitset"*
  %1654 = bitcast %"class.std::bitset"* %YMM3.i81 to i8*
  %1655 = load i64, i64* %RBP.i80
  %1656 = sub i64 %1655, 24
  %1657 = load i64, i64* %PC.i79
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %PC.i79
  %1659 = inttoptr i64 %1656 to double*
  %1660 = load double, double* %1659
  %1661 = bitcast i8* %1654 to double*
  store double %1660, double* %1661, align 1
  %1662 = getelementptr inbounds i8, i8* %1654, i64 8
  %1663 = bitcast i8* %1662 to double*
  store double 0.000000e+00, double* %1663, align 1
  store %struct.Memory* %loadMem_400757, %struct.Memory** %MEMORY
  %loadMem_40075c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1667, i64 0, i64 4
  %YMM4.i78 = bitcast %union.VectorReg* %1668 to %"class.std::bitset"*
  %1669 = bitcast %"class.std::bitset"* %YMM4.i78 to i8*
  %1670 = load i64, i64* %PC.i77
  %1671 = add i64 %1670, 9
  store i64 %1671, i64* %PC.i77
  %1672 = load double, double* inttoptr (i64 6295648 to double*)
  %1673 = bitcast i8* %1669 to double*
  store double %1672, double* %1673, align 1
  %1674 = getelementptr inbounds i8, i8* %1669, i64 8
  %1675 = bitcast i8* %1674 to double*
  store double 0.000000e+00, double* %1675, align 1
  store %struct.Memory* %loadMem_40075c, %struct.Memory** %MEMORY
  %loadMem_400765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 15
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1682, i64 0, i64 4
  %YMM4.i76 = bitcast %union.VectorReg* %1683 to %"class.std::bitset"*
  %1684 = bitcast %"class.std::bitset"* %YMM4.i76 to i8*
  %1685 = bitcast %"class.std::bitset"* %YMM4.i76 to i8*
  %1686 = load i64, i64* %RBP.i75
  %1687 = sub i64 %1686, 40
  %1688 = load i64, i64* %PC.i74
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %PC.i74
  %1690 = bitcast i8* %1685 to double*
  %1691 = load double, double* %1690, align 1
  %1692 = getelementptr inbounds i8, i8* %1685, i64 8
  %1693 = bitcast i8* %1692 to i64*
  %1694 = load i64, i64* %1693, align 1
  %1695 = inttoptr i64 %1687 to double*
  %1696 = load double, double* %1695
  %1697 = fmul double %1691, %1696
  %1698 = bitcast i8* %1684 to double*
  store double %1697, double* %1698, align 1
  %1699 = getelementptr inbounds i8, i8* %1684, i64 8
  %1700 = bitcast i8* %1699 to i64*
  store i64 %1694, i64* %1700, align 1
  store %struct.Memory* %loadMem_400765, %struct.Memory** %MEMORY
  %loadMem_40076a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1704, i64 0, i64 4
  %YMM4.i73 = bitcast %union.VectorReg* %1705 to %"class.std::bitset"*
  %1706 = bitcast %"class.std::bitset"* %YMM4.i73 to i8*
  %1707 = bitcast %"class.std::bitset"* %YMM4.i73 to i8*
  %1708 = load i64, i64* %PC.i72
  %1709 = add i64 %1708, 9
  store i64 %1709, i64* %PC.i72
  %1710 = bitcast i8* %1707 to double*
  %1711 = load double, double* %1710, align 1
  %1712 = getelementptr inbounds i8, i8* %1707, i64 8
  %1713 = bitcast i8* %1712 to i64*
  %1714 = load i64, i64* %1713, align 1
  %1715 = load double, double* inttoptr (i64 6295640 to double*)
  %1716 = fsub double %1711, %1715
  %1717 = bitcast i8* %1706 to double*
  store double %1716, double* %1717, align 1
  %1718 = getelementptr inbounds i8, i8* %1706, i64 8
  %1719 = bitcast i8* %1718 to i64*
  store i64 %1714, i64* %1719, align 1
  store %struct.Memory* %loadMem_40076a, %struct.Memory** %MEMORY
  %loadMem_400773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 15
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1726, i64 0, i64 4
  %YMM4.i71 = bitcast %union.VectorReg* %1727 to %"class.std::bitset"*
  %1728 = bitcast %"class.std::bitset"* %YMM4.i71 to i8*
  %1729 = bitcast %"class.std::bitset"* %YMM4.i71 to i8*
  %1730 = load i64, i64* %RBP.i70
  %1731 = sub i64 %1730, 40
  %1732 = load i64, i64* %PC.i69
  %1733 = add i64 %1732, 5
  store i64 %1733, i64* %PC.i69
  %1734 = bitcast i8* %1729 to double*
  %1735 = load double, double* %1734, align 1
  %1736 = getelementptr inbounds i8, i8* %1729, i64 8
  %1737 = bitcast i8* %1736 to i64*
  %1738 = load i64, i64* %1737, align 1
  %1739 = inttoptr i64 %1731 to double*
  %1740 = load double, double* %1739
  %1741 = fmul double %1735, %1740
  %1742 = bitcast i8* %1728 to double*
  store double %1741, double* %1742, align 1
  %1743 = getelementptr inbounds i8, i8* %1728, i64 8
  %1744 = bitcast i8* %1743 to i64*
  store i64 %1738, i64* %1744, align 1
  store %struct.Memory* %loadMem_400773, %struct.Memory** %MEMORY
  %loadMem_400778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1748, i64 0, i64 4
  %YMM4.i68 = bitcast %union.VectorReg* %1749 to %"class.std::bitset"*
  %1750 = bitcast %"class.std::bitset"* %YMM4.i68 to i8*
  %1751 = bitcast %"class.std::bitset"* %YMM4.i68 to i8*
  %1752 = load i64, i64* %PC.i67
  %1753 = add i64 %1752, 9
  store i64 %1753, i64* %PC.i67
  %1754 = bitcast i8* %1751 to double*
  %1755 = load double, double* %1754, align 1
  %1756 = getelementptr inbounds i8, i8* %1751, i64 8
  %1757 = bitcast i8* %1756 to i64*
  %1758 = load i64, i64* %1757, align 1
  %1759 = load double, double* inttoptr (i64 6295632 to double*)
  %1760 = fadd double %1755, %1759
  %1761 = bitcast i8* %1750 to double*
  store double %1760, double* %1761, align 1
  %1762 = getelementptr inbounds i8, i8* %1750, i64 8
  %1763 = bitcast i8* %1762 to i64*
  store i64 %1758, i64* %1763, align 1
  store %struct.Memory* %loadMem_400778, %struct.Memory** %MEMORY
  %loadMem_400781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1770, i64 0, i64 4
  %YMM4.i66 = bitcast %union.VectorReg* %1771 to %"class.std::bitset"*
  %1772 = bitcast %"class.std::bitset"* %YMM4.i66 to i8*
  %1773 = bitcast %"class.std::bitset"* %YMM4.i66 to i8*
  %1774 = load i64, i64* %RBP.i65
  %1775 = sub i64 %1774, 40
  %1776 = load i64, i64* %PC.i64
  %1777 = add i64 %1776, 5
  store i64 %1777, i64* %PC.i64
  %1778 = bitcast i8* %1773 to double*
  %1779 = load double, double* %1778, align 1
  %1780 = getelementptr inbounds i8, i8* %1773, i64 8
  %1781 = bitcast i8* %1780 to i64*
  %1782 = load i64, i64* %1781, align 1
  %1783 = inttoptr i64 %1775 to double*
  %1784 = load double, double* %1783
  %1785 = fmul double %1779, %1784
  %1786 = bitcast i8* %1772 to double*
  store double %1785, double* %1786, align 1
  %1787 = getelementptr inbounds i8, i8* %1772, i64 8
  %1788 = bitcast i8* %1787 to i64*
  store i64 %1782, i64* %1788, align 1
  store %struct.Memory* %loadMem_400781, %struct.Memory** %MEMORY
  %loadMem_400786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1792, i64 0, i64 4
  %YMM4.i63 = bitcast %union.VectorReg* %1793 to %"class.std::bitset"*
  %1794 = bitcast %"class.std::bitset"* %YMM4.i63 to i8*
  %1795 = bitcast %"class.std::bitset"* %YMM4.i63 to i8*
  %1796 = load i64, i64* %PC.i62
  %1797 = add i64 %1796, 9
  store i64 %1797, i64* %PC.i62
  %1798 = bitcast i8* %1795 to double*
  %1799 = load double, double* %1798, align 1
  %1800 = getelementptr inbounds i8, i8* %1795, i64 8
  %1801 = bitcast i8* %1800 to i64*
  %1802 = load i64, i64* %1801, align 1
  %1803 = load double, double* inttoptr (i64 6295624 to double*)
  %1804 = fsub double %1799, %1803
  %1805 = bitcast i8* %1794 to double*
  store double %1804, double* %1805, align 1
  %1806 = getelementptr inbounds i8, i8* %1794, i64 8
  %1807 = bitcast i8* %1806 to i64*
  store i64 %1802, i64* %1807, align 1
  store %struct.Memory* %loadMem_400786, %struct.Memory** %MEMORY
  %loadMem_40078f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1814, i64 0, i64 4
  %YMM4.i61 = bitcast %union.VectorReg* %1815 to %"class.std::bitset"*
  %1816 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %1817 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %1818 = load i64, i64* %RBP.i60
  %1819 = sub i64 %1818, 40
  %1820 = load i64, i64* %PC.i59
  %1821 = add i64 %1820, 5
  store i64 %1821, i64* %PC.i59
  %1822 = bitcast i8* %1817 to double*
  %1823 = load double, double* %1822, align 1
  %1824 = getelementptr inbounds i8, i8* %1817, i64 8
  %1825 = bitcast i8* %1824 to i64*
  %1826 = load i64, i64* %1825, align 1
  %1827 = inttoptr i64 %1819 to double*
  %1828 = load double, double* %1827
  %1829 = fmul double %1823, %1828
  %1830 = bitcast i8* %1816 to double*
  store double %1829, double* %1830, align 1
  %1831 = getelementptr inbounds i8, i8* %1816, i64 8
  %1832 = bitcast i8* %1831 to i64*
  store i64 %1826, i64* %1832, align 1
  store %struct.Memory* %loadMem_40078f, %struct.Memory** %MEMORY
  %loadMem_400794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1837 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1836, i64 0, i64 4
  %YMM4.i58 = bitcast %union.VectorReg* %1837 to %"class.std::bitset"*
  %1838 = bitcast %"class.std::bitset"* %YMM4.i58 to i8*
  %1839 = bitcast %"class.std::bitset"* %YMM4.i58 to i8*
  %1840 = load i64, i64* %PC.i57
  %1841 = add i64 %1840, 9
  store i64 %1841, i64* %PC.i57
  %1842 = bitcast i8* %1839 to double*
  %1843 = load double, double* %1842, align 1
  %1844 = getelementptr inbounds i8, i8* %1839, i64 8
  %1845 = bitcast i8* %1844 to i64*
  %1846 = load i64, i64* %1845, align 1
  %1847 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1848 = fadd double %1843, %1847
  %1849 = bitcast i8* %1838 to double*
  store double %1848, double* %1849, align 1
  %1850 = getelementptr inbounds i8, i8* %1838, i64 8
  %1851 = bitcast i8* %1850 to i64*
  store i64 %1846, i64* %1851, align 1
  store %struct.Memory* %loadMem_400794, %struct.Memory** %MEMORY
  %loadMem_40079d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 15
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1858, i64 0, i64 4
  %YMM4.i56 = bitcast %union.VectorReg* %1859 to %"class.std::bitset"*
  %1860 = bitcast %"class.std::bitset"* %YMM4.i56 to i8*
  %1861 = bitcast %"class.std::bitset"* %YMM4.i56 to i8*
  %1862 = load i64, i64* %RBP.i55
  %1863 = sub i64 %1862, 40
  %1864 = load i64, i64* %PC.i54
  %1865 = add i64 %1864, 5
  store i64 %1865, i64* %PC.i54
  %1866 = bitcast i8* %1861 to double*
  %1867 = load double, double* %1866, align 1
  %1868 = getelementptr inbounds i8, i8* %1861, i64 8
  %1869 = bitcast i8* %1868 to i64*
  %1870 = load i64, i64* %1869, align 1
  %1871 = inttoptr i64 %1863 to double*
  %1872 = load double, double* %1871
  %1873 = fmul double %1867, %1872
  %1874 = bitcast i8* %1860 to double*
  store double %1873, double* %1874, align 1
  %1875 = getelementptr inbounds i8, i8* %1860, i64 8
  %1876 = bitcast i8* %1875 to i64*
  store i64 %1870, i64* %1876, align 1
  store %struct.Memory* %loadMem_40079d, %struct.Memory** %MEMORY
  %loadMem_4007a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1880, i64 0, i64 4
  %YMM4.i53 = bitcast %union.VectorReg* %1881 to %"class.std::bitset"*
  %1882 = bitcast %"class.std::bitset"* %YMM4.i53 to i8*
  %1883 = bitcast %"class.std::bitset"* %YMM4.i53 to i8*
  %1884 = load i64, i64* %PC.i52
  %1885 = add i64 %1884, 9
  store i64 %1885, i64* %PC.i52
  %1886 = bitcast i8* %1883 to double*
  %1887 = load double, double* %1886, align 1
  %1888 = getelementptr inbounds i8, i8* %1883, i64 8
  %1889 = bitcast i8* %1888 to i64*
  %1890 = load i64, i64* %1889, align 1
  %1891 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1892 = fadd double %1887, %1891
  %1893 = bitcast i8* %1882 to double*
  store double %1892, double* %1893, align 1
  %1894 = getelementptr inbounds i8, i8* %1882, i64 8
  %1895 = bitcast i8* %1894 to i64*
  store i64 %1890, i64* %1895, align 1
  store %struct.Memory* %loadMem_4007a2, %struct.Memory** %MEMORY
  %loadMem_4007ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1902, i64 0, i64 4
  %YMM4.i51 = bitcast %union.VectorReg* %1903 to %"class.std::bitset"*
  %1904 = bitcast %"class.std::bitset"* %YMM4.i51 to i8*
  %1905 = bitcast %"class.std::bitset"* %YMM4.i51 to i8*
  %1906 = load i64, i64* %RBP.i50
  %1907 = sub i64 %1906, 40
  %1908 = load i64, i64* %PC.i49
  %1909 = add i64 %1908, 5
  store i64 %1909, i64* %PC.i49
  %1910 = bitcast i8* %1905 to double*
  %1911 = load double, double* %1910, align 1
  %1912 = getelementptr inbounds i8, i8* %1905, i64 8
  %1913 = bitcast i8* %1912 to i64*
  %1914 = load i64, i64* %1913, align 1
  %1915 = inttoptr i64 %1907 to double*
  %1916 = load double, double* %1915
  %1917 = fmul double %1911, %1916
  %1918 = bitcast i8* %1904 to double*
  store double %1917, double* %1918, align 1
  %1919 = getelementptr inbounds i8, i8* %1904, i64 8
  %1920 = bitcast i8* %1919 to i64*
  store i64 %1914, i64* %1920, align 1
  store %struct.Memory* %loadMem_4007ab, %struct.Memory** %MEMORY
  %loadMem_4007b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1924, i64 0, i64 4
  %YMM4.i48 = bitcast %union.VectorReg* %1925 to %"class.std::bitset"*
  %1926 = bitcast %"class.std::bitset"* %YMM4.i48 to i8*
  %1927 = bitcast %"class.std::bitset"* %YMM4.i48 to i8*
  %1928 = load i64, i64* %PC.i47
  %1929 = add i64 %1928, 9
  store i64 %1929, i64* %PC.i47
  %1930 = bitcast i8* %1927 to double*
  %1931 = load double, double* %1930, align 1
  %1932 = getelementptr inbounds i8, i8* %1927, i64 8
  %1933 = bitcast i8* %1932 to i64*
  %1934 = load i64, i64* %1933, align 1
  %1935 = load double, double* inttoptr (i64 6296200 to double*)
  %1936 = fadd double %1931, %1935
  %1937 = bitcast i8* %1926 to double*
  store double %1936, double* %1937, align 1
  %1938 = getelementptr inbounds i8, i8* %1926, i64 8
  %1939 = bitcast i8* %1938 to i64*
  store i64 %1934, i64* %1939, align 1
  store %struct.Memory* %loadMem_4007b0, %struct.Memory** %MEMORY
  %loadMem_4007b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1943, i64 0, i64 3
  %YMM3.i45 = bitcast %union.VectorReg* %1944 to %"class.std::bitset"*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1945, i64 0, i64 4
  %XMM4.i46 = bitcast %union.VectorReg* %1946 to %union.vec128_t*
  %1947 = bitcast %"class.std::bitset"* %YMM3.i45 to i8*
  %1948 = bitcast %"class.std::bitset"* %YMM3.i45 to i8*
  %1949 = bitcast %union.vec128_t* %XMM4.i46 to i8*
  %1950 = load i64, i64* %PC.i44
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i44
  %1952 = bitcast i8* %1948 to double*
  %1953 = load double, double* %1952, align 1
  %1954 = getelementptr inbounds i8, i8* %1948, i64 8
  %1955 = bitcast i8* %1954 to i64*
  %1956 = load i64, i64* %1955, align 1
  %1957 = bitcast i8* %1949 to double*
  %1958 = load double, double* %1957, align 1
  %1959 = fmul double %1953, %1958
  %1960 = bitcast i8* %1947 to double*
  store double %1959, double* %1960, align 1
  %1961 = getelementptr inbounds i8, i8* %1947, i64 8
  %1962 = bitcast i8* %1961 to i64*
  store i64 %1956, i64* %1962, align 1
  store %struct.Memory* %loadMem_4007b9, %struct.Memory** %MEMORY
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1966, i64 0, i64 3
  %XMM3.i43 = bitcast %union.VectorReg* %1967 to %union.vec128_t*
  %1968 = bitcast %union.vec128_t* %XMM3.i43 to i8*
  %1969 = load i64, i64* %PC.i42
  %1970 = add i64 %1969, 9
  store i64 %1970, i64* %PC.i42
  %1971 = bitcast i8* %1968 to double*
  %1972 = load double, double* %1971, align 1
  store double %1972, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_4007bd, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 3
  %YMM3.i41 = bitcast %union.VectorReg* %1980 to %"class.std::bitset"*
  %1981 = bitcast %"class.std::bitset"* %YMM3.i41 to i8*
  %1982 = load i64, i64* %RBP.i40
  %1983 = sub i64 %1982, 48
  %1984 = load i64, i64* %PC.i39
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i39
  %1986 = inttoptr i64 %1983 to double*
  %1987 = load double, double* %1986
  %1988 = bitcast i8* %1981 to double*
  store double %1987, double* %1988, align 1
  %1989 = getelementptr inbounds i8, i8* %1981, i64 8
  %1990 = bitcast i8* %1989 to double*
  store double 0.000000e+00, double* %1990, align 1
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 4
  %YMM4.i38 = bitcast %union.VectorReg* %1995 to %"class.std::bitset"*
  %1996 = bitcast %"class.std::bitset"* %YMM4.i38 to i8*
  %1997 = load i64, i64* %PC.i37
  %1998 = add i64 %1997, 9
  store i64 %1998, i64* %PC.i37
  %1999 = load double, double* inttoptr (i64 6296216 to double*)
  %2000 = bitcast i8* %1996 to double*
  store double %1999, double* %2000, align 1
  %2001 = getelementptr inbounds i8, i8* %1996, i64 8
  %2002 = bitcast i8* %2001 to double*
  store double 0.000000e+00, double* %2002, align 1
  store %struct.Memory* %loadMem_4007cb, %struct.Memory** %MEMORY
  %loadMem_4007d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2007 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2006, i64 0, i64 5
  %YMM5.i36 = bitcast %union.VectorReg* %2007 to %"class.std::bitset"*
  %2008 = bitcast %"class.std::bitset"* %YMM5.i36 to i8*
  %2009 = load i64, i64* %PC.i35
  %2010 = add i64 %2009, 9
  store i64 %2010, i64* %PC.i35
  %2011 = load double, double* inttoptr (i64 6295840 to double*)
  %2012 = bitcast i8* %2008 to double*
  store double %2011, double* %2012, align 1
  %2013 = getelementptr inbounds i8, i8* %2008, i64 8
  %2014 = bitcast i8* %2013 to double*
  store double 0.000000e+00, double* %2014, align 1
  store %struct.Memory* %loadMem_4007d4, %struct.Memory** %MEMORY
  %loadMem_4007dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 15
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2021, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2022 to %"class.std::bitset"*
  %2023 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2024 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2025 = load i64, i64* %RBP.i34
  %2026 = sub i64 %2025, 16
  %2027 = load i64, i64* %PC.i33
  %2028 = add i64 %2027, 5
  store i64 %2028, i64* %PC.i33
  %2029 = bitcast i8* %2024 to double*
  %2030 = load double, double* %2029, align 1
  %2031 = getelementptr inbounds i8, i8* %2024, i64 8
  %2032 = bitcast i8* %2031 to i64*
  %2033 = load i64, i64* %2032, align 1
  %2034 = inttoptr i64 %2026 to double*
  %2035 = load double, double* %2034
  %2036 = fmul double %2030, %2035
  %2037 = bitcast i8* %2023 to double*
  store double %2036, double* %2037, align 1
  %2038 = getelementptr inbounds i8, i8* %2023, i64 8
  %2039 = bitcast i8* %2038 to i64*
  store i64 %2033, i64* %2039, align 1
  store %struct.Memory* %loadMem_4007dd, %struct.Memory** %MEMORY
  %loadMem_4007e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2043, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2044 to %"class.std::bitset"*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2045, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2046 to %union.vec128_t*
  %2047 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2048 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2049 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2050 = load i64, i64* %PC.i32
  %2051 = add i64 %2050, 4
  store i64 %2051, i64* %PC.i32
  %2052 = bitcast i8* %2048 to double*
  %2053 = load double, double* %2052, align 1
  %2054 = getelementptr inbounds i8, i8* %2048, i64 8
  %2055 = bitcast i8* %2054 to i64*
  %2056 = load i64, i64* %2055, align 1
  %2057 = bitcast i8* %2049 to double*
  %2058 = load double, double* %2057, align 1
  %2059 = fadd double %2053, %2058
  %2060 = bitcast i8* %2047 to double*
  store double %2059, double* %2060, align 1
  %2061 = getelementptr inbounds i8, i8* %2047, i64 8
  %2062 = bitcast i8* %2061 to i64*
  store i64 %2056, i64* %2062, align 1
  store %struct.Memory* %loadMem_4007e2, %struct.Memory** %MEMORY
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2066, i64 0, i64 3
  %YMM3.i31 = bitcast %union.VectorReg* %2067 to %"class.std::bitset"*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2068, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2069 to %union.vec128_t*
  %2070 = bitcast %"class.std::bitset"* %YMM3.i31 to i8*
  %2071 = bitcast %"class.std::bitset"* %YMM3.i31 to i8*
  %2072 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2073 = load i64, i64* %PC.i30
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC.i30
  %2075 = bitcast i8* %2071 to double*
  %2076 = load double, double* %2075, align 1
  %2077 = getelementptr inbounds i8, i8* %2071, i64 8
  %2078 = bitcast i8* %2077 to i64*
  %2079 = load i64, i64* %2078, align 1
  %2080 = bitcast i8* %2072 to double*
  %2081 = load double, double* %2080, align 1
  %2082 = fmul double %2076, %2081
  %2083 = bitcast i8* %2070 to double*
  store double %2082, double* %2083, align 1
  %2084 = getelementptr inbounds i8, i8* %2070, i64 8
  %2085 = bitcast i8* %2084 to i64*
  store i64 %2079, i64* %2085, align 1
  store %struct.Memory* %loadMem_4007e6, %struct.Memory** %MEMORY
  %loadMem_4007ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2089, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2090 to %"class.std::bitset"*
  %2091 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2092 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2093 = load i64, i64* %PC.i29
  %2094 = add i64 %2093, 9
  store i64 %2094, i64* %PC.i29
  %2095 = bitcast i8* %2092 to double*
  %2096 = load double, double* %2095, align 1
  %2097 = getelementptr inbounds i8, i8* %2092, i64 8
  %2098 = bitcast i8* %2097 to i64*
  %2099 = load i64, i64* %2098, align 1
  %2100 = load double, double* inttoptr (i64 6295840 to double*)
  %2101 = fdiv double %2096, %2100
  %2102 = bitcast i8* %2091 to double*
  store double %2101, double* %2102, align 1
  %2103 = getelementptr inbounds i8, i8* %2091, i64 8
  %2104 = bitcast i8* %2103 to i64*
  store i64 %2099, i64* %2104, align 1
  store %struct.Memory* %loadMem_4007ea, %struct.Memory** %MEMORY
  %loadMem_4007f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2108, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2109 to %union.vec128_t*
  %2110 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2111 = load i64, i64* %PC.i28
  %2112 = add i64 %2111, 9
  store i64 %2112, i64* %PC.i28
  %2113 = bitcast i8* %2110 to double*
  %2114 = load double, double* %2113, align 1
  store double %2114, double* inttoptr (i64 6296216 to double*)
  store %struct.Memory* %loadMem_4007f3, %struct.Memory** %MEMORY
  %loadMem_4007fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2118, i64 0, i64 2
  %XMM2.i27 = bitcast %union.VectorReg* %2119 to %union.vec128_t*
  %2120 = bitcast %union.vec128_t* %XMM2.i27 to i8*
  %2121 = load i64, i64* %PC.i26
  %2122 = add i64 %2121, 9
  store i64 %2122, i64* %PC.i26
  %2123 = bitcast i8* %2120 to double*
  %2124 = load double, double* %2123, align 1
  store double %2124, double* inttoptr (i64 6296152 to double*)
  store %struct.Memory* %loadMem_4007fc, %struct.Memory** %MEMORY
  %loadMem_400805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2128, i64 0, i64 2
  %YMM2.i25 = bitcast %union.VectorReg* %2129 to %"class.std::bitset"*
  %2130 = bitcast %"class.std::bitset"* %YMM2.i25 to i8*
  %2131 = load i64, i64* %PC.i24
  %2132 = add i64 %2131, 9
  store i64 %2132, i64* %PC.i24
  %2133 = load double, double* inttoptr (i64 6296216 to double*)
  %2134 = bitcast i8* %2130 to double*
  store double %2133, double* %2134, align 1
  %2135 = getelementptr inbounds i8, i8* %2130, i64 8
  %2136 = bitcast i8* %2135 to double*
  store double 0.000000e+00, double* %2136, align 1
  store %struct.Memory* %loadMem_400805, %struct.Memory** %MEMORY
  %loadMem_40080e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2140, i64 0, i64 2
  %YMM2.i23 = bitcast %union.VectorReg* %2141 to %"class.std::bitset"*
  %2142 = bitcast %"class.std::bitset"* %YMM2.i23 to i8*
  %2143 = bitcast %"class.std::bitset"* %YMM2.i23 to i8*
  %2144 = load i64, i64* %PC.i22
  %2145 = add i64 %2144, 9
  store i64 %2145, i64* %PC.i22
  %2146 = bitcast i8* %2143 to double*
  %2147 = load double, double* %2146, align 1
  %2148 = getelementptr inbounds i8, i8* %2143, i64 8
  %2149 = bitcast i8* %2148 to i64*
  %2150 = load i64, i64* %2149, align 1
  %2151 = load double, double* inttoptr (i64 6296152 to double*)
  %2152 = fsub double %2147, %2151
  %2153 = bitcast i8* %2142 to double*
  store double %2152, double* %2153, align 1
  %2154 = getelementptr inbounds i8, i8* %2142, i64 8
  %2155 = bitcast i8* %2154 to i64*
  store i64 %2150, i64* %2155, align 1
  store %struct.Memory* %loadMem_40080e, %struct.Memory** %MEMORY
  %loadMem_400817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2159, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2160 to %union.vec128_t*
  %2161 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2162 = load i64, i64* %PC.i21
  %2163 = add i64 %2162, 9
  store i64 %2163, i64* %PC.i21
  %2164 = bitcast i8* %2161 to double*
  %2165 = load double, double* %2164, align 1
  store double %2165, double* inttoptr (i64 6296208 to double*)
  store %struct.Memory* %loadMem_400817, %struct.Memory** %MEMORY
  %loadMem_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 33
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2169, i64 0, i64 1
  %YMM1.i20 = bitcast %union.VectorReg* %2170 to %"class.std::bitset"*
  %2171 = bitcast %"class.std::bitset"* %YMM1.i20 to i8*
  %2172 = bitcast %"class.std::bitset"* %YMM1.i20 to i8*
  %2173 = load i64, i64* %PC.i19
  %2174 = add i64 %2173, 9
  store i64 %2174, i64* %PC.i19
  %2175 = bitcast i8* %2172 to double*
  %2176 = load double, double* %2175, align 1
  %2177 = getelementptr inbounds i8, i8* %2172, i64 8
  %2178 = bitcast i8* %2177 to i64*
  %2179 = load i64, i64* %2178, align 1
  %2180 = load double, double* inttoptr (i64 6296208 to double*)
  %2181 = fmul double %2176, %2180
  %2182 = bitcast i8* %2171 to double*
  store double %2181, double* %2182, align 1
  %2183 = getelementptr inbounds i8, i8* %2171, i64 8
  %2184 = bitcast i8* %2183 to i64*
  store i64 %2179, i64* %2184, align 1
  store %struct.Memory* %loadMem_400820, %struct.Memory** %MEMORY
  %loadMem_400829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 15
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2191, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2192 to %union.vec128_t*
  %2193 = load i64, i64* %RBP.i18
  %2194 = sub i64 %2193, 112
  %2195 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2196 = load i64, i64* %PC.i17
  %2197 = add i64 %2196, 5
  store i64 %2197, i64* %PC.i17
  %2198 = bitcast i8* %2195 to double*
  %2199 = load double, double* %2198, align 1
  %2200 = inttoptr i64 %2194 to double*
  store double %2199, double* %2200
  store %struct.Memory* %loadMem_400829, %struct.Memory** %MEMORY
  %loadMem_40082e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2204, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2205 to %"class.std::bitset"*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2207 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2206, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2207 to %union.vec128_t*
  %2208 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2209 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2210 = load i64, i64* %PC.i16
  %2211 = add i64 %2210, 3
  store i64 %2211, i64* %PC.i16
  %2212 = bitcast i8* %2209 to <2 x i32>*
  %2213 = load <2 x i32>, <2 x i32>* %2212, align 1
  %2214 = getelementptr inbounds i8, i8* %2209, i64 8
  %2215 = bitcast i8* %2214 to <2 x i32>*
  %2216 = load <2 x i32>, <2 x i32>* %2215, align 1
  %2217 = extractelement <2 x i32> %2213, i32 0
  %2218 = bitcast i8* %2208 to i32*
  store i32 %2217, i32* %2218, align 1
  %2219 = extractelement <2 x i32> %2213, i32 1
  %2220 = getelementptr inbounds i8, i8* %2208, i64 4
  %2221 = bitcast i8* %2220 to i32*
  store i32 %2219, i32* %2221, align 1
  %2222 = extractelement <2 x i32> %2216, i32 0
  %2223 = getelementptr inbounds i8, i8* %2208, i64 8
  %2224 = bitcast i8* %2223 to i32*
  store i32 %2222, i32* %2224, align 1
  %2225 = extractelement <2 x i32> %2216, i32 1
  %2226 = getelementptr inbounds i8, i8* %2208, i64 12
  %2227 = bitcast i8* %2226 to i32*
  store i32 %2225, i32* %2227, align 1
  store %struct.Memory* %loadMem_40082e, %struct.Memory** %MEMORY
  %loadMem_400831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 15
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2234, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2235 to %"class.std::bitset"*
  %2236 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2237 = load i64, i64* %RBP.i15
  %2238 = sub i64 %2237, 112
  %2239 = load i64, i64* %PC.i14
  %2240 = add i64 %2239, 5
  store i64 %2240, i64* %PC.i14
  %2241 = inttoptr i64 %2238 to double*
  %2242 = load double, double* %2241
  %2243 = bitcast i8* %2236 to double*
  store double %2242, double* %2243, align 1
  %2244 = getelementptr inbounds i8, i8* %2236, i64 8
  %2245 = bitcast i8* %2244 to double*
  store double 0.000000e+00, double* %2245, align 1
  store %struct.Memory* %loadMem_400831, %struct.Memory** %MEMORY
  %loadMem_400836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 15
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2252, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2253 to %"class.std::bitset"*
  %2254 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2255 = load i64, i64* %RBP.i13
  %2256 = sub i64 %2255, 112
  %2257 = load i64, i64* %PC.i12
  %2258 = add i64 %2257, 5
  store i64 %2258, i64* %PC.i12
  %2259 = inttoptr i64 %2256 to double*
  %2260 = load double, double* %2259
  %2261 = bitcast i8* %2254 to double*
  store double %2260, double* %2261, align 1
  %2262 = getelementptr inbounds i8, i8* %2254, i64 8
  %2263 = bitcast i8* %2262 to double*
  store double 0.000000e+00, double* %2263, align 1
  store %struct.Memory* %loadMem_400836, %struct.Memory** %MEMORY
  %loadMem_40083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %2270 = bitcast %union.anon* %2269 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2270, i32 0, i32 0
  %2271 = load i64, i64* %PC.i11
  %2272 = add i64 %2271, 2
  store i64 %2272, i64* %PC.i11
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40083b, %struct.Memory** %MEMORY
  %loadMem1_40083d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %PC.i10
  %2277 = add i64 %2276, -1069
  %2278 = load i64, i64* %PC.i10
  %2279 = add i64 %2278, 5
  %2280 = load i64, i64* %PC.i10
  %2281 = add i64 %2280, 5
  store i64 %2281, i64* %PC.i10
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2283 = load i64, i64* %2282, align 8
  %2284 = add i64 %2283, -8
  %2285 = inttoptr i64 %2284 to i64*
  store i64 %2279, i64* %2285
  store i64 %2284, i64* %2282, align 8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2277, i64* %2286, align 8
  store %struct.Memory* %loadMem1_40083d, %struct.Memory** %MEMORY
  %loadMem2_40083d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40083d = load i64, i64* %3
  %call2_40083d = call %struct.Memory* @sub_400410.printf_plt(%struct.State* %0, i64 %loadPC_40083d, %struct.Memory* %loadMem2_40083d)
  store %struct.Memory* %call2_40083d, %struct.Memory** %MEMORY
  %loadMem_400842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 5
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %2292 to i32*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 5
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RCX.i
  %2297 = load i32, i32* %ECX.i9
  %2298 = zext i32 %2297 to i64
  %2299 = load i64, i64* %PC.i8
  %2300 = add i64 %2299, 2
  store i64 %2300, i64* %PC.i8
  %2301 = xor i64 %2298, %2296
  %2302 = trunc i64 %2301 to i32
  %2303 = and i64 %2301, 4294967295
  store i64 %2303, i64* %RCX.i, align 8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2304, align 1
  %2305 = and i32 %2302, 255
  %2306 = call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2309, i8* %2310, align 1
  %2311 = icmp eq i32 %2302, 0
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2312, i8* %2313, align 1
  %2314 = lshr i32 %2302, 31
  %2315 = trunc i32 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2315, i8* %2316, align 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2317, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2318, align 1
  store %struct.Memory* %loadMem_400842, %struct.Memory** %MEMORY
  %loadMem_400844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 1
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2324 to i32*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 15
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %2327 to i64*
  %2328 = load i64, i64* %RBP.i7
  %2329 = sub i64 %2328, 116
  %2330 = load i32, i32* %EAX.i
  %2331 = zext i32 %2330 to i64
  %2332 = load i64, i64* %PC.i6
  %2333 = add i64 %2332, 3
  store i64 %2333, i64* %PC.i6
  %2334 = inttoptr i64 %2329 to i32*
  store i32 %2330, i32* %2334
  store %struct.Memory* %loadMem_400844, %struct.Memory** %MEMORY
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2340 to i32*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 1
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2343 to i64*
  %2344 = load i32, i32* %ECX.i
  %2345 = zext i32 %2344 to i64
  %2346 = load i64, i64* %PC.i5
  %2347 = add i64 %2346, 2
  store i64 %2347, i64* %PC.i5
  %2348 = and i64 %2345, 4294967295
  store i64 %2348, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400847, %struct.Memory** %MEMORY
  %loadMem_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 13
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2354 to i64*
  %2355 = load i64, i64* %RSP.i
  %2356 = load i64, i64* %PC.i4
  %2357 = add i64 %2356, 7
  store i64 %2357, i64* %PC.i4
  %2358 = add i64 128, %2355
  store i64 %2358, i64* %RSP.i, align 8
  %2359 = icmp ult i64 %2358, %2355
  %2360 = icmp ult i64 %2358, 128
  %2361 = or i1 %2359, %2360
  %2362 = zext i1 %2361 to i8
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2362, i8* %2363, align 1
  %2364 = trunc i64 %2358 to i32
  %2365 = and i32 %2364, 255
  %2366 = call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2369, i8* %2370, align 1
  %2371 = xor i64 128, %2355
  %2372 = xor i64 %2371, %2358
  %2373 = lshr i64 %2372, 4
  %2374 = trunc i64 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2375, i8* %2376, align 1
  %2377 = icmp eq i64 %2358, 0
  %2378 = zext i1 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2378, i8* %2379, align 1
  %2380 = lshr i64 %2358, 63
  %2381 = trunc i64 %2380 to i8
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2381, i8* %2382, align 1
  %2383 = lshr i64 %2355, 63
  %2384 = xor i64 %2380, %2383
  %2385 = add i64 %2384, %2380
  %2386 = icmp eq i64 %2385, 2
  %2387 = zext i1 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2387, i8* %2388, align 1
  store %struct.Memory* %loadMem_400849, %struct.Memory** %MEMORY
  %loadMem_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 15
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %PC.i2
  %2396 = add i64 %2395, 1
  store i64 %2396, i64* %PC.i2
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2398 = load i64, i64* %2397, align 8
  %2399 = add i64 %2398, 8
  %2400 = inttoptr i64 %2398 to i64*
  %2401 = load i64, i64* %2400
  store i64 %2401, i64* %RBP.i3, align 8
  store i64 %2399, i64* %2397, align 8
  store %struct.Memory* %loadMem_400850, %struct.Memory** %MEMORY
  %loadMem_400851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %PC.i1
  %2406 = add i64 %2405, 1
  store i64 %2406, i64* %PC.i1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2409 = load i64, i64* %2408, align 8
  %2410 = inttoptr i64 %2409 to i64*
  %2411 = load i64, i64* %2410
  store i64 %2411, i64* %2407, align 8
  %2412 = add i64 %2409, 8
  store i64 %2412, i64* %2408, align 8
  store %struct.Memory* %loadMem_400851, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400851
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

define %struct.Memory* @routine_movq__0x400960___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196704, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400928___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196648, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400962___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196706, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x38f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 919
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 919
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 919
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 919
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 919
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 919
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

define %struct.Memory* @routine_movq__0x400992___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196754, i64* %RDI, align 8
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

define %struct.Memory* @routine_imulq__0x4e20__MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = mul i128 %21, 20000
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

define %struct.Memory* @routine_jg_.L_400714(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subsd_0x601058___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fsub double %13, %17
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

define %struct.Memory* @routine_subsd_0x601048___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fsub double %13, %17
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

define %struct.Memory* @routine_movq__0x4009b6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4196790, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ef__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 503
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

define %struct.Memory* @routine_movsd_0x1ef__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 503
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

define %struct.Memory* @routine_subsd_0x601058___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fsub double %13, %17
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

define %struct.Memory* @routine_subsd_0x601048___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fsub double %13, %17
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
