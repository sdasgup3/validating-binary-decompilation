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

declare %struct.Memory* @sub_400a70.list_sequence(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400be0.list_copy(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400a20.list_new(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400880.list_equal(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400550.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400580.exit_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400760.list_empty(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400800.list_pop_head(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400680.list_push_tail(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4006e0.list_pop_tail(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400d30.list_reverse(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_401090.list_first(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400d10.list_last(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400790.list_length(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400530.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Function Attrs: alwaysinline
define %struct.Memory* @test_lists(%struct.State* noalias, i64, %struct.Memory* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400d80, %struct.Memory** %MEMORY
  %loadMem_400d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i333 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i333
  %27 = load i64, i64* %PC.i332
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i332
  store i64 %26, i64* %RBP.i334, align 8
  store %struct.Memory* %loadMem_400d81, %struct.Memory** %MEMORY
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i331 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i331
  %36 = load i64, i64* %PC.i330
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i330
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i331, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_400d84, %struct.Memory** %MEMORY
  %loadMem_400d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i329 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i328
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i328
  store i64 1, i64* %RDI.i329, align 8
  store %struct.Memory* %loadMem_400d88, %struct.Memory** %MEMORY
  %loadMem_400d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RSI.i327 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i326
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC.i326
  store i64 100, i64* %RSI.i327, align 8
  store %struct.Memory* %loadMem_400d8d, %struct.Memory** %MEMORY
  %loadMem_400d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i325
  %90 = sub i64 %89, 4
  %91 = load i64, i64* %PC.i324
  %92 = add i64 %91, 7
  store i64 %92, i64* %PC.i324
  %93 = inttoptr i64 %90 to i32*
  store i32 0, i32* %93
  store %struct.Memory* %loadMem_400d92, %struct.Memory** %MEMORY
  %loadMem1_400d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %PC.i323
  %98 = add i64 %97, -809
  %99 = load i64, i64* %PC.i323
  %100 = add i64 %99, 5
  %101 = load i64, i64* %PC.i323
  %102 = add i64 %101, 5
  store i64 %102, i64* %PC.i323
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*
  store i64 %100, i64* %106
  store i64 %105, i64* %103, align 8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %98, i64* %107, align 8
  store %struct.Memory* %loadMem1_400d99, %struct.Memory** %MEMORY
  %loadMem2_400d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d99 = load i64, i64* %3
  %call2_400d99 = call %struct.Memory* @sub_400a70.list_sequence(%struct.State* %0, i64 %loadPC_400d99, %struct.Memory* %loadMem2_400d99)
  store %struct.Memory* %call2_400d99, %struct.Memory** %MEMORY
  %loadMem_400d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %113 to i64*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 15
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %116 to i64*
  %117 = load i64, i64* %RBP.i322
  %118 = sub i64 %117, 16
  %119 = load i64, i64* %RAX.i321
  %120 = load i64, i64* %PC.i320
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC.i320
  %122 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %122
  store %struct.Memory* %loadMem_400d9e, %struct.Memory** %MEMORY
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 11
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RDI.i318 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i319
  %133 = sub i64 %132, 16
  %134 = load i64, i64* %PC.i317
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i317
  %136 = inttoptr i64 %133 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %RDI.i318, align 8
  store %struct.Memory* %loadMem_400da2, %struct.Memory** %MEMORY
  %loadMem1_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %PC.i316
  %142 = add i64 %141, -454
  %143 = load i64, i64* %PC.i316
  %144 = add i64 %143, 5
  %145 = load i64, i64* %PC.i316
  %146 = add i64 %145, 5
  store i64 %146, i64* %PC.i316
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %144, i64* %150
  store i64 %149, i64* %147, align 8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %142, i64* %151, align 8
  store %struct.Memory* %loadMem1_400da6, %struct.Memory** %MEMORY
  %loadMem2_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400da6 = load i64, i64* %3
  %call2_400da6 = call %struct.Memory* @sub_400be0.list_copy(%struct.State* %0, i64 %loadPC_400da6, %struct.Memory* %loadMem2_400da6)
  store %struct.Memory* %call2_400da6, %struct.Memory** %MEMORY
  %loadMem_400dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RBP.i315
  %162 = sub i64 %161, 24
  %163 = load i64, i64* %RAX.i314
  %164 = load i64, i64* %PC.i313
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC.i313
  %166 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %166
  store %struct.Memory* %loadMem_400dab, %struct.Memory** %MEMORY
  %loadMem1_400daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %PC.i312
  %171 = add i64 %170, -911
  %172 = load i64, i64* %PC.i312
  %173 = add i64 %172, 5
  %174 = load i64, i64* %PC.i312
  %175 = add i64 %174, 5
  store i64 %175, i64* %PC.i312
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %173, i64* %179
  store i64 %178, i64* %176, align 8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %171, i64* %180, align 8
  store %struct.Memory* %loadMem1_400daf, %struct.Memory** %MEMORY
  %loadMem2_400daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400daf = load i64, i64* %3
  %call2_400daf = call %struct.Memory* @sub_400a20.list_new(%struct.State* %0, i64 %loadPC_400daf, %struct.Memory* %loadMem2_400daf)
  store %struct.Memory* %call2_400daf, %struct.Memory** %MEMORY
  %loadMem_400db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %189 to i64*
  %190 = load i64, i64* %RBP.i311
  %191 = sub i64 %190, 32
  %192 = load i64, i64* %RAX.i310
  %193 = load i64, i64* %PC.i309
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC.i309
  %195 = inttoptr i64 %191 to i64*
  store i64 %192, i64* %195
  store %struct.Memory* %loadMem_400db4, %struct.Memory** %MEMORY
  %loadMem_400db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 11
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RDI.i307 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i308
  %206 = sub i64 %205, 24
  %207 = load i64, i64* %PC.i306
  %208 = add i64 %207, 4
  store i64 %208, i64* %PC.i306
  %209 = inttoptr i64 %206 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %RDI.i307, align 8
  store %struct.Memory* %loadMem_400db8, %struct.Memory** %MEMORY
  %loadMem_400dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 9
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RSI.i304 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %RBP.i305
  %221 = sub i64 %220, 16
  %222 = load i64, i64* %PC.i303
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC.i303
  %224 = inttoptr i64 %221 to i64*
  %225 = load i64, i64* %224
  store i64 %225, i64* %RSI.i304, align 8
  store %struct.Memory* %loadMem_400dbc, %struct.Memory** %MEMORY
  %loadMem1_400dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i302
  %230 = add i64 %229, -1344
  %231 = load i64, i64* %PC.i302
  %232 = add i64 %231, 5
  %233 = load i64, i64* %PC.i302
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC.i302
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, -8
  %238 = inttoptr i64 %237 to i64*
  store i64 %232, i64* %238
  store i64 %237, i64* %235, align 8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %230, i64* %239, align 8
  store %struct.Memory* %loadMem1_400dc0, %struct.Memory** %MEMORY
  %loadMem2_400dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dc0 = load i64, i64* %3
  %call2_400dc0 = call %struct.Memory* @sub_400880.list_equal(%struct.State* %0, i64 %loadPC_400dc0, %struct.Memory* %loadMem2_400dc0)
  store %struct.Memory* %call2_400dc0, %struct.Memory** %MEMORY
  %loadMem_400dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %245 to i32*
  %246 = load i32, i32* %EAX.i301
  %247 = zext i32 %246 to i64
  %248 = load i64, i64* %PC.i300
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC.i300
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %250, align 1
  %251 = and i32 %246, 255
  %252 = call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %255, i8* %256, align 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %257, align 1
  %258 = icmp eq i32 %246, 0
  %259 = zext i1 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %259, i8* %260, align 1
  %261 = lshr i32 %246, 31
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %262, i8* %263, align 1
  %264 = lshr i32 %246, 31
  %265 = xor i32 %261, %264
  %266 = add i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %268, i8* %269, align 1
  store %struct.Memory* %loadMem_400dc5, %struct.Memory** %MEMORY
  %loadMem_400dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %PC.i299
  %274 = add i64 %273, 36
  %275 = load i64, i64* %PC.i299
  %276 = add i64 %275, 6
  %277 = load i64, i64* %PC.i299
  %278 = add i64 %277, 6
  store i64 %278, i64* %PC.i299
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %280 = load i8, i8* %279, align 1
  %281 = icmp eq i8 %280, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %BRANCH_TAKEN, align 1
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %284 = select i1 %281, i64 %274, i64 %276
  store i64 %284, i64* %283, align 8
  store %struct.Memory* %loadMem_400dc8, %struct.Memory** %MEMORY
  %loadBr_400dc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dc8 = icmp eq i8 %loadBr_400dc8, 1
  br i1 %cmpBr_400dc8, label %block_.L_400dec, label %block_400dce

block_400dce:                                     ; preds = %entry
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 11
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %PC.i297
  %292 = add i64 %291, 10
  store i64 %292, i64* %PC.i297
  store i64 4198973, i64* %RDI.i298, align 8
  store %struct.Memory* %loadMem_400dce, %struct.Memory** %MEMORY
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %299 = bitcast %union.anon* %298 to %struct.anon.2*
  %AL.i296 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %299, i32 0, i32 0
  %300 = load i64, i64* %PC.i295
  %301 = add i64 %300, 2
  store i64 %301, i64* %PC.i295
  store i8 0, i8* %AL.i296, align 1
  store %struct.Memory* %loadMem_400dd8, %struct.Memory** %MEMORY
  %loadMem1_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %PC.i294
  %306 = add i64 %305, -2186
  %307 = load i64, i64* %PC.i294
  %308 = add i64 %307, 5
  %309 = load i64, i64* %PC.i294
  %310 = add i64 %309, 5
  store i64 %310, i64* %PC.i294
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %308, i64* %314
  store i64 %313, i64* %311, align 8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %306, i64* %315, align 8
  store %struct.Memory* %loadMem1_400dda, %struct.Memory** %MEMORY
  %loadMem2_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dda = load i64, i64* %3
  %call2_400dda = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400dda, %struct.Memory* %loadMem2_400dda)
  store %struct.Memory* %call2_400dda, %struct.Memory** %MEMORY
  %loadMem_400ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 11
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RDI.i293 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i292
  %323 = add i64 %322, 5
  store i64 %323, i64* %PC.i292
  store i64 1, i64* %RDI.i293, align 8
  store %struct.Memory* %loadMem_400ddf, %struct.Memory** %MEMORY
  %loadMem_400de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %329 to i32*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 15
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %RBP.i291
  %334 = sub i64 %333, 36
  %335 = load i32, i32* %EAX.i290
  %336 = zext i32 %335 to i64
  %337 = load i64, i64* %PC.i289
  %338 = add i64 %337, 3
  store i64 %338, i64* %PC.i289
  %339 = inttoptr i64 %334 to i32*
  store i32 %335, i32* %339
  store %struct.Memory* %loadMem_400de4, %struct.Memory** %MEMORY
  %loadMem1_400de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %342 to i64*
  %343 = load i64, i64* %PC.i288
  %344 = add i64 %343, -2151
  %345 = load i64, i64* %PC.i288
  %346 = add i64 %345, 5
  %347 = load i64, i64* %PC.i288
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC.i288
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %346, i64* %352
  store i64 %351, i64* %349, align 8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %344, i64* %353, align 8
  store %struct.Memory* %loadMem1_400de7, %struct.Memory** %MEMORY
  %loadMem2_400de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400de7 = load i64, i64* %3
  %call2_400de7 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400de7, %struct.Memory* %loadMem2_400de7)
  store %struct.Memory* %call2_400de7, %struct.Memory** %MEMORY
  br label %block_.L_400dec

block_.L_400dec:                                  ; preds = %block_400dce, %entry
  %loadMem_400dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %PC.i287
  %358 = add i64 %357, 5
  %359 = load i64, i64* %PC.i287
  %360 = add i64 %359, 5
  store i64 %360, i64* %PC.i287
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %358, i64* %361, align 8
  store %struct.Memory* %loadMem_400dec, %struct.Memory** %MEMORY
  br label %block_.L_400df1

block_.L_400df1:                                  ; preds = %block_.L_400e11, %block_.L_400dec
  %loadMem_400df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 11
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 15
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RBP.i286
  %372 = sub i64 %371, 24
  %373 = load i64, i64* %PC.i284
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC.i284
  %375 = inttoptr i64 %372 to i64*
  %376 = load i64, i64* %375
  store i64 %376, i64* %RDI.i285, align 8
  store %struct.Memory* %loadMem_400df1, %struct.Memory** %MEMORY
  %loadMem1_400df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %PC.i283
  %381 = add i64 %380, -1685
  %382 = load i64, i64* %PC.i283
  %383 = add i64 %382, 5
  %384 = load i64, i64* %PC.i283
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC.i283
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add i64 %387, -8
  %389 = inttoptr i64 %388 to i64*
  store i64 %383, i64* %389
  store i64 %388, i64* %386, align 8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %381, i64* %390, align 8
  store %struct.Memory* %loadMem1_400df5, %struct.Memory** %MEMORY
  %loadMem2_400df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400df5 = load i64, i64* %3
  %call2_400df5 = call %struct.Memory* @sub_400760.list_empty(%struct.State* %0, i64 %loadPC_400df5, %struct.Memory* %loadMem2_400df5)
  store %struct.Memory* %call2_400df5, %struct.Memory** %MEMORY
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %EAX.i282 = bitcast %union.anon* %396 to i32*
  %397 = load i32, i32* %EAX.i282
  %398 = zext i32 %397 to i64
  %399 = load i64, i64* %PC.i281
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC.i281
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %401, align 1
  %402 = and i32 %397, 255
  %403 = call i32 @llvm.ctpop.i32(i32 %402)
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %406, i8* %407, align 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %408, align 1
  %409 = icmp eq i32 %397, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %397, 31
  %413 = trunc i32 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1
  %415 = lshr i32 %397, 31
  %416 = xor i32 %412, %415
  %417 = add i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %419, i8* %420, align 1
  store %struct.Memory* %loadMem_400dfa, %struct.Memory** %MEMORY
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %427 = bitcast %union.anon* %426 to %struct.anon.2*
  %CL.i280 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %427, i32 0, i32 0
  %428 = load i64, i64* %PC.i279
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i279
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %431 = load i8, i8* %430, align 1
  %432 = icmp eq i8 %431, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %CL.i280, align 1
  store %struct.Memory* %loadMem_400dfd, %struct.Memory** %MEMORY
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 5
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %440 = bitcast %union.anon* %439 to %struct.anon.2*
  %CL.i278 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %440, i32 0, i32 0
  %441 = load i8, i8* %CL.i278
  %442 = zext i8 %441 to i64
  %443 = load i64, i64* %PC.i277
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC.i277
  %445 = xor i64 255, %442
  %446 = trunc i64 %445 to i8
  store i8 %446, i8* %CL.i278, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %447, align 1
  %448 = trunc i64 %445 to i32
  %449 = and i32 %448, 255
  %450 = call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %453, i8* %454, align 1
  %455 = icmp eq i8 %446, 0
  %456 = zext i1 %455 to i8
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %456, i8* %457, align 1
  %458 = lshr i8 %446, 7
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %458, i8* %459, align 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %460, align 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %461, align 1
  store %struct.Memory* %loadMem_400e00, %struct.Memory** %MEMORY
  %loadMem_400e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 5
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %468 = bitcast %union.anon* %467 to %struct.anon.2*
  %CL.i276 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %468, i32 0, i32 0
  %469 = load i8, i8* %CL.i276
  %470 = zext i8 %469 to i64
  %471 = load i64, i64* %PC.i275
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i275
  %473 = and i64 1, %470
  %474 = trunc i64 %473 to i8
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %475, align 1
  %476 = trunc i64 %473 to i32
  %477 = and i32 %476, 255
  %478 = call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %481, i8* %482, align 1
  %483 = icmp eq i8 %474, 0
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %484, i8* %485, align 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %486, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %487, align 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %488, align 1
  store %struct.Memory* %loadMem_400e03, %struct.Memory** %MEMORY
  %loadMem_400e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %PC.i274
  %493 = add i64 %492, 11
  %494 = load i64, i64* %PC.i274
  %495 = add i64 %494, 6
  %496 = load i64, i64* %PC.i274
  %497 = add i64 %496, 6
  store i64 %497, i64* %PC.i274
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %499 = load i8, i8* %498, align 1
  %500 = icmp eq i8 %499, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %BRANCH_TAKEN, align 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %503 = select i1 %500, i64 %493, i64 %495
  store i64 %503, i64* %502, align 8
  store %struct.Memory* %loadMem_400e06, %struct.Memory** %MEMORY
  %loadBr_400e06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e06 = icmp eq i8 %loadBr_400e06, 1
  br i1 %cmpBr_400e06, label %block_.L_400e11, label %block_400e0c

block_400e0c:                                     ; preds = %block_.L_400df1
  %loadMem_400e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %PC.i273
  %508 = add i64 %507, 42
  %509 = load i64, i64* %PC.i273
  %510 = add i64 %509, 5
  store i64 %510, i64* %PC.i273
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %508, i64* %511, align 8
  store %struct.Memory* %loadMem_400e0c, %struct.Memory** %MEMORY
  br label %block_.L_400e36

block_.L_400e11:                                  ; preds = %block_.L_400df1
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 11
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RDI.i271 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 15
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %RBP.i272
  %522 = sub i64 %521, 32
  %523 = load i64, i64* %PC.i270
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC.i270
  %525 = inttoptr i64 %522 to i64*
  %526 = load i64, i64* %525
  store i64 %526, i64* %RDI.i271, align 8
  store %struct.Memory* %loadMem_400e11, %struct.Memory** %MEMORY
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i269
  %537 = sub i64 %536, 24
  %538 = load i64, i64* %PC.i267
  %539 = add i64 %538, 4
  store i64 %539, i64* %PC.i267
  %540 = inttoptr i64 %537 to i64*
  %541 = load i64, i64* %540
  store i64 %541, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_400e15, %struct.Memory** %MEMORY
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 11
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RDI.i265 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 15
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %RBP.i266
  %552 = sub i64 %551, 48
  %553 = load i64, i64* %RDI.i265
  %554 = load i64, i64* %PC.i264
  %555 = add i64 %554, 4
  store i64 %555, i64* %PC.i264
  %556 = inttoptr i64 %552 to i64*
  store i64 %553, i64* %556
  store %struct.Memory* %loadMem_400e19, %struct.Memory** %MEMORY
  %loadMem_400e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 11
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RDI.i263 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %RAX.i262
  %567 = load i64, i64* %PC.i261
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC.i261
  store i64 %566, i64* %RDI.i263, align 8
  store %struct.Memory* %loadMem_400e1d, %struct.Memory** %MEMORY
  %loadMem1_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %PC.i260
  %573 = add i64 %572, -1568
  %574 = load i64, i64* %PC.i260
  %575 = add i64 %574, 5
  %576 = load i64, i64* %PC.i260
  %577 = add i64 %576, 5
  store i64 %577, i64* %PC.i260
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = add i64 %579, -8
  %581 = inttoptr i64 %580 to i64*
  store i64 %575, i64* %581
  store i64 %580, i64* %578, align 8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %573, i64* %582, align 8
  store %struct.Memory* %loadMem1_400e20, %struct.Memory** %MEMORY
  %loadMem2_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e20 = load i64, i64* %3
  %call2_400e20 = call %struct.Memory* @sub_400800.list_pop_head(%struct.State* %0, i64 %loadPC_400e20, %struct.Memory* %loadMem2_400e20)
  store %struct.Memory* %call2_400e20, %struct.Memory** %MEMORY
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 11
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RDI.i258 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 15
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RBP.i259
  %593 = sub i64 %592, 48
  %594 = load i64, i64* %PC.i257
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC.i257
  %596 = inttoptr i64 %593 to i64*
  %597 = load i64, i64* %596
  store i64 %597, i64* %RDI.i258, align 8
  store %struct.Memory* %loadMem_400e25, %struct.Memory** %MEMORY
  %loadMem_400e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 1
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 9
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RAX.i255
  %608 = load i64, i64* %PC.i254
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC.i254
  store i64 %607, i64* %RSI.i256, align 8
  store %struct.Memory* %loadMem_400e29, %struct.Memory** %MEMORY
  %loadMem1_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %PC.i253
  %614 = add i64 %613, -1964
  %615 = load i64, i64* %PC.i253
  %616 = add i64 %615, 5
  %617 = load i64, i64* %PC.i253
  %618 = add i64 %617, 5
  store i64 %618, i64* %PC.i253
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %620 = load i64, i64* %619, align 8
  %621 = add i64 %620, -8
  %622 = inttoptr i64 %621 to i64*
  store i64 %616, i64* %622
  store i64 %621, i64* %619, align 8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %614, i64* %623, align 8
  store %struct.Memory* %loadMem1_400e2c, %struct.Memory** %MEMORY
  %loadMem2_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e2c = load i64, i64* %3
  %call2_400e2c = call %struct.Memory* @sub_400680.list_push_tail(%struct.State* %0, i64 %loadPC_400e2c, %struct.Memory* %loadMem2_400e2c)
  store %struct.Memory* %call2_400e2c, %struct.Memory** %MEMORY
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 33
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %626 to i64*
  %627 = load i64, i64* %PC.i252
  %628 = add i64 %627, -64
  %629 = load i64, i64* %PC.i252
  %630 = add i64 %629, 5
  store i64 %630, i64* %PC.i252
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %628, i64* %631, align 8
  store %struct.Memory* %loadMem_400e31, %struct.Memory** %MEMORY
  br label %block_.L_400df1

block_.L_400e36:                                  ; preds = %block_400e0c
  %loadMem_400e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 11
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RDI.i250 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 15
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %640 to i64*
  %641 = load i64, i64* %RBP.i251
  %642 = sub i64 %641, 24
  %643 = load i64, i64* %PC.i249
  %644 = add i64 %643, 4
  store i64 %644, i64* %PC.i249
  %645 = inttoptr i64 %642 to i64*
  %646 = load i64, i64* %645
  store i64 %646, i64* %RDI.i250, align 8
  store %struct.Memory* %loadMem_400e36, %struct.Memory** %MEMORY
  %loadMem1_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %PC.i248
  %651 = add i64 %650, -1754
  %652 = load i64, i64* %PC.i248
  %653 = add i64 %652, 5
  %654 = load i64, i64* %PC.i248
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC.i248
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %657 = load i64, i64* %656, align 8
  %658 = add i64 %657, -8
  %659 = inttoptr i64 %658 to i64*
  store i64 %653, i64* %659
  store i64 %658, i64* %656, align 8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %660, align 8
  store %struct.Memory* %loadMem1_400e3a, %struct.Memory** %MEMORY
  %loadMem2_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e3a = load i64, i64* %3
  %call2_400e3a = call %struct.Memory* @sub_400760.list_empty(%struct.State* %0, i64 %loadPC_400e3a, %struct.Memory* %loadMem2_400e3a)
  store %struct.Memory* %call2_400e3a, %struct.Memory** %MEMORY
  %loadMem_400e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %EAX.i247 = bitcast %union.anon* %666 to i32*
  %667 = load i32, i32* %EAX.i247
  %668 = zext i32 %667 to i64
  %669 = load i64, i64* %PC.i246
  %670 = add i64 %669, 3
  store i64 %670, i64* %PC.i246
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %671, align 1
  %672 = and i32 %667, 255
  %673 = call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %676, i8* %677, align 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %678, align 1
  %679 = icmp eq i32 %667, 0
  %680 = zext i1 %679 to i8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %680, i8* %681, align 1
  %682 = lshr i32 %667, 31
  %683 = trunc i32 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %683, i8* %684, align 1
  %685 = lshr i32 %667, 31
  %686 = xor i32 %682, %685
  %687 = add i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %689, i8* %690, align 1
  store %struct.Memory* %loadMem_400e3f, %struct.Memory** %MEMORY
  %loadMem_400e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %PC.i245
  %695 = add i64 %694, 36
  %696 = load i64, i64* %PC.i245
  %697 = add i64 %696, 6
  %698 = load i64, i64* %PC.i245
  %699 = add i64 %698, 6
  store i64 %699, i64* %PC.i245
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %701 = load i8, i8* %700, align 1
  %702 = icmp eq i8 %701, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %BRANCH_TAKEN, align 1
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %705 = select i1 %702, i64 %695, i64 %697
  store i64 %705, i64* %704, align 8
  store %struct.Memory* %loadMem_400e42, %struct.Memory** %MEMORY
  %loadBr_400e42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e42 = icmp eq i8 %loadBr_400e42, 1
  br i1 %cmpBr_400e42, label %block_.L_400e66, label %block_400e48

block_400e48:                                     ; preds = %block_.L_400e36
  %loadMem_400e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 11
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RDI.i244 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %PC.i243
  %713 = add i64 %712, 10
  store i64 %713, i64* %PC.i243
  store i64 4199000, i64* %RDI.i244, align 8
  store %struct.Memory* %loadMem_400e48, %struct.Memory** %MEMORY
  %loadMem_400e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %720 = bitcast %union.anon* %719 to %struct.anon.2*
  %AL.i242 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %720, i32 0, i32 0
  %721 = load i64, i64* %PC.i241
  %722 = add i64 %721, 2
  store i64 %722, i64* %PC.i241
  store i8 0, i8* %AL.i242, align 1
  store %struct.Memory* %loadMem_400e52, %struct.Memory** %MEMORY
  %loadMem1_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %PC.i240
  %727 = add i64 %726, -2308
  %728 = load i64, i64* %PC.i240
  %729 = add i64 %728, 5
  %730 = load i64, i64* %PC.i240
  %731 = add i64 %730, 5
  store i64 %731, i64* %PC.i240
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %733 = load i64, i64* %732, align 8
  %734 = add i64 %733, -8
  %735 = inttoptr i64 %734 to i64*
  store i64 %729, i64* %735
  store i64 %734, i64* %732, align 8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %727, i64* %736, align 8
  store %struct.Memory* %loadMem1_400e54, %struct.Memory** %MEMORY
  %loadMem2_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e54 = load i64, i64* %3
  %call2_400e54 = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400e54, %struct.Memory* %loadMem2_400e54)
  store %struct.Memory* %call2_400e54, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 11
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RDI.i239 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %PC.i238
  %744 = add i64 %743, 5
  store i64 %744, i64* %PC.i238
  store i64 1, i64* %RDI.i239, align 8
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 1
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %750 to i32*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 15
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %753 to i64*
  %754 = load i64, i64* %RBP.i237
  %755 = sub i64 %754, 52
  %756 = load i32, i32* %EAX.i236
  %757 = zext i32 %756 to i64
  %758 = load i64, i64* %PC.i235
  %759 = add i64 %758, 3
  store i64 %759, i64* %PC.i235
  %760 = inttoptr i64 %755 to i32*
  store i32 %756, i32* %760
  store %struct.Memory* %loadMem_400e5e, %struct.Memory** %MEMORY
  %loadMem1_400e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 33
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %763 to i64*
  %764 = load i64, i64* %PC.i234
  %765 = add i64 %764, -2273
  %766 = load i64, i64* %PC.i234
  %767 = add i64 %766, 5
  %768 = load i64, i64* %PC.i234
  %769 = add i64 %768, 5
  store i64 %769, i64* %PC.i234
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %771 = load i64, i64* %770, align 8
  %772 = add i64 %771, -8
  %773 = inttoptr i64 %772 to i64*
  store i64 %767, i64* %773
  store i64 %772, i64* %770, align 8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %765, i64* %774, align 8
  store %struct.Memory* %loadMem1_400e61, %struct.Memory** %MEMORY
  %loadMem2_400e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e61 = load i64, i64* %3
  %call2_400e61 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400e61, %struct.Memory* %loadMem2_400e61)
  store %struct.Memory* %call2_400e61, %struct.Memory** %MEMORY
  br label %block_.L_400e66

block_.L_400e66:                                  ; preds = %block_400e48, %block_.L_400e36
  %loadMem_400e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %PC.i233
  %779 = add i64 %778, 5
  %780 = load i64, i64* %PC.i233
  %781 = add i64 %780, 5
  store i64 %781, i64* %PC.i233
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %779, i64* %782, align 8
  store %struct.Memory* %loadMem_400e66, %struct.Memory** %MEMORY
  br label %block_.L_400e6b

block_.L_400e6b:                                  ; preds = %block_.L_400e8b, %block_.L_400e66
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 11
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 15
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %791 to i64*
  %792 = load i64, i64* %RBP.i232
  %793 = sub i64 %792, 32
  %794 = load i64, i64* %PC.i230
  %795 = add i64 %794, 4
  store i64 %795, i64* %PC.i230
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796
  store i64 %797, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_400e6b, %struct.Memory** %MEMORY
  %loadMem1_400e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %PC.i229
  %802 = add i64 %801, -1807
  %803 = load i64, i64* %PC.i229
  %804 = add i64 %803, 5
  %805 = load i64, i64* %PC.i229
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC.i229
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %808 = load i64, i64* %807, align 8
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %804, i64* %810
  store i64 %809, i64* %807, align 8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %802, i64* %811, align 8
  store %struct.Memory* %loadMem1_400e6f, %struct.Memory** %MEMORY
  %loadMem2_400e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e6f = load i64, i64* %3
  %call2_400e6f = call %struct.Memory* @sub_400760.list_empty(%struct.State* %0, i64 %loadPC_400e6f, %struct.Memory* %loadMem2_400e6f)
  store %struct.Memory* %call2_400e6f, %struct.Memory** %MEMORY
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %817 to i32*
  %818 = load i32, i32* %EAX.i228
  %819 = zext i32 %818 to i64
  %820 = load i64, i64* %PC.i227
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC.i227
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %822, align 1
  %823 = and i32 %818, 255
  %824 = call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %827, i8* %828, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %829, align 1
  %830 = icmp eq i32 %818, 0
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %831, i8* %832, align 1
  %833 = lshr i32 %818, 31
  %834 = trunc i32 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %834, i8* %835, align 1
  %836 = lshr i32 %818, 31
  %837 = xor i32 %833, %836
  %838 = add i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %840, i8* %841, align 1
  store %struct.Memory* %loadMem_400e74, %struct.Memory** %MEMORY
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 5
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %848 = bitcast %union.anon* %847 to %struct.anon.2*
  %CL.i226 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %848, i32 0, i32 0
  %849 = load i64, i64* %PC.i225
  %850 = add i64 %849, 3
  store i64 %850, i64* %PC.i225
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %852 = load i8, i8* %851, align 1
  %853 = icmp eq i8 %852, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %CL.i226, align 1
  store %struct.Memory* %loadMem_400e77, %struct.Memory** %MEMORY
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 5
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %861 = bitcast %union.anon* %860 to %struct.anon.2*
  %CL.i224 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %861, i32 0, i32 0
  %862 = load i8, i8* %CL.i224
  %863 = zext i8 %862 to i64
  %864 = load i64, i64* %PC.i223
  %865 = add i64 %864, 3
  store i64 %865, i64* %PC.i223
  %866 = xor i64 255, %863
  %867 = trunc i64 %866 to i8
  store i8 %867, i8* %CL.i224, align 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %868, align 1
  %869 = trunc i64 %866 to i32
  %870 = and i32 %869, 255
  %871 = call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %874, i8* %875, align 1
  %876 = icmp eq i8 %867, 0
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %877, i8* %878, align 1
  %879 = lshr i8 %867, 7
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %879, i8* %880, align 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %881, align 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %882, align 1
  store %struct.Memory* %loadMem_400e7a, %struct.Memory** %MEMORY
  %loadMem_400e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 5
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %889 = bitcast %union.anon* %888 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %889, i32 0, i32 0
  %890 = load i8, i8* %CL.i
  %891 = zext i8 %890 to i64
  %892 = load i64, i64* %PC.i222
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i222
  %894 = and i64 1, %891
  %895 = trunc i64 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %896, align 1
  %897 = trunc i64 %894 to i32
  %898 = and i32 %897, 255
  %899 = call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %902, i8* %903, align 1
  %904 = icmp eq i8 %895, 0
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %905, i8* %906, align 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %907, align 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %908, align 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %909, align 1
  store %struct.Memory* %loadMem_400e7d, %struct.Memory** %MEMORY
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %PC.i221
  %914 = add i64 %913, 11
  %915 = load i64, i64* %PC.i221
  %916 = add i64 %915, 6
  %917 = load i64, i64* %PC.i221
  %918 = add i64 %917, 6
  store i64 %918, i64* %PC.i221
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %920 = load i8, i8* %919, align 1
  %921 = icmp eq i8 %920, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %BRANCH_TAKEN, align 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %924 = select i1 %921, i64 %914, i64 %916
  store i64 %924, i64* %923, align 8
  store %struct.Memory* %loadMem_400e80, %struct.Memory** %MEMORY
  %loadBr_400e80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e80 = icmp eq i8 %loadBr_400e80, 1
  br i1 %cmpBr_400e80, label %block_.L_400e8b, label %block_400e86

block_400e86:                                     ; preds = %block_.L_400e6b
  %loadMem_400e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %PC.i220
  %929 = add i64 %928, 42
  %930 = load i64, i64* %PC.i220
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC.i220
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %929, i64* %932, align 8
  store %struct.Memory* %loadMem_400e86, %struct.Memory** %MEMORY
  br label %block_.L_400eb0

block_.L_400e8b:                                  ; preds = %block_.L_400e6b
  %loadMem_400e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 33
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 11
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RDI.i218 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 15
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %941 to i64*
  %942 = load i64, i64* %RBP.i219
  %943 = sub i64 %942, 24
  %944 = load i64, i64* %PC.i217
  %945 = add i64 %944, 4
  store i64 %945, i64* %PC.i217
  %946 = inttoptr i64 %943 to i64*
  %947 = load i64, i64* %946
  store i64 %947, i64* %RDI.i218, align 8
  store %struct.Memory* %loadMem_400e8b, %struct.Memory** %MEMORY
  %loadMem_400e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 15
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RBP.i216
  %958 = sub i64 %957, 32
  %959 = load i64, i64* %PC.i214
  %960 = add i64 %959, 4
  store i64 %960, i64* %PC.i214
  %961 = inttoptr i64 %958 to i64*
  %962 = load i64, i64* %961
  store i64 %962, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_400e8f, %struct.Memory** %MEMORY
  %loadMem_400e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 11
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 15
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %RBP.i213
  %973 = sub i64 %972, 64
  %974 = load i64, i64* %RDI.i212
  %975 = load i64, i64* %PC.i211
  %976 = add i64 %975, 4
  store i64 %976, i64* %PC.i211
  %977 = inttoptr i64 %973 to i64*
  store i64 %974, i64* %977
  store %struct.Memory* %loadMem_400e93, %struct.Memory** %MEMORY
  %loadMem_400e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 1
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 11
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RDI.i210 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RAX.i209
  %988 = load i64, i64* %PC.i208
  %989 = add i64 %988, 3
  store i64 %989, i64* %PC.i208
  store i64 %987, i64* %RDI.i210, align 8
  store %struct.Memory* %loadMem_400e97, %struct.Memory** %MEMORY
  %loadMem1_400e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %PC.i207
  %994 = add i64 %993, -1978
  %995 = load i64, i64* %PC.i207
  %996 = add i64 %995, 5
  %997 = load i64, i64* %PC.i207
  %998 = add i64 %997, 5
  store i64 %998, i64* %PC.i207
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1000 = load i64, i64* %999, align 8
  %1001 = add i64 %1000, -8
  %1002 = inttoptr i64 %1001 to i64*
  store i64 %996, i64* %1002
  store i64 %1001, i64* %999, align 8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %994, i64* %1003, align 8
  store %struct.Memory* %loadMem1_400e9a, %struct.Memory** %MEMORY
  %loadMem2_400e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e9a = load i64, i64* %3
  %call2_400e9a = call %struct.Memory* @sub_4006e0.list_pop_tail(%struct.State* %0, i64 %loadPC_400e9a, %struct.Memory* %loadMem2_400e9a)
  store %struct.Memory* %call2_400e9a, %struct.Memory** %MEMORY
  %loadMem_400e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 11
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDI.i205 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i206
  %1014 = sub i64 %1013, 64
  %1015 = load i64, i64* %PC.i204
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC.i204
  %1017 = inttoptr i64 %1014 to i64*
  %1018 = load i64, i64* %1017
  store i64 %1018, i64* %RDI.i205, align 8
  store %struct.Memory* %loadMem_400e9f, %struct.Memory** %MEMORY
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 9
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RSI.i203 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %RAX.i202
  %1029 = load i64, i64* %PC.i201
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC.i201
  store i64 %1028, i64* %RSI.i203, align 8
  store %struct.Memory* %loadMem_400ea3, %struct.Memory** %MEMORY
  %loadMem1_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %PC.i200
  %1035 = add i64 %1034, -2086
  %1036 = load i64, i64* %PC.i200
  %1037 = add i64 %1036, 5
  %1038 = load i64, i64* %PC.i200
  %1039 = add i64 %1038, 5
  store i64 %1039, i64* %PC.i200
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1041 = load i64, i64* %1040, align 8
  %1042 = add i64 %1041, -8
  %1043 = inttoptr i64 %1042 to i64*
  store i64 %1037, i64* %1043
  store i64 %1042, i64* %1040, align 8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1035, i64* %1044, align 8
  store %struct.Memory* %loadMem1_400ea6, %struct.Memory** %MEMORY
  %loadMem2_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ea6 = load i64, i64* %3
  %call2_400ea6 = call %struct.Memory* @sub_400680.list_push_tail(%struct.State* %0, i64 %loadPC_400ea6, %struct.Memory* %loadMem2_400ea6)
  store %struct.Memory* %call2_400ea6, %struct.Memory** %MEMORY
  %loadMem_400eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %PC.i199
  %1049 = add i64 %1048, -64
  %1050 = load i64, i64* %PC.i199
  %1051 = add i64 %1050, 5
  store i64 %1051, i64* %PC.i199
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1049, i64* %1052, align 8
  store %struct.Memory* %loadMem_400eab, %struct.Memory** %MEMORY
  br label %block_.L_400e6b

block_.L_400eb0:                                  ; preds = %block_400e86
  %loadMem_400eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 11
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RDI.i197 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %RBP.i198
  %1063 = sub i64 %1062, 32
  %1064 = load i64, i64* %PC.i196
  %1065 = add i64 %1064, 4
  store i64 %1065, i64* %PC.i196
  %1066 = inttoptr i64 %1063 to i64*
  %1067 = load i64, i64* %1066
  store i64 %1067, i64* %RDI.i197, align 8
  store %struct.Memory* %loadMem_400eb0, %struct.Memory** %MEMORY
  %loadMem1_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1070 to i64*
  %1071 = load i64, i64* %PC.i195
  %1072 = add i64 %1071, -1876
  %1073 = load i64, i64* %PC.i195
  %1074 = add i64 %1073, 5
  %1075 = load i64, i64* %PC.i195
  %1076 = add i64 %1075, 5
  store i64 %1076, i64* %PC.i195
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1078 = load i64, i64* %1077, align 8
  %1079 = add i64 %1078, -8
  %1080 = inttoptr i64 %1079 to i64*
  store i64 %1074, i64* %1080
  store i64 %1079, i64* %1077, align 8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1072, i64* %1081, align 8
  store %struct.Memory* %loadMem1_400eb4, %struct.Memory** %MEMORY
  %loadMem2_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400eb4 = load i64, i64* %3
  %call2_400eb4 = call %struct.Memory* @sub_400760.list_empty(%struct.State* %0, i64 %loadPC_400eb4, %struct.Memory* %loadMem2_400eb4)
  store %struct.Memory* %call2_400eb4, %struct.Memory** %MEMORY
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 33
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 1
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %1087 to i32*
  %1088 = load i32, i32* %EAX.i194
  %1089 = zext i32 %1088 to i64
  %1090 = load i64, i64* %PC.i193
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC.i193
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1092, align 1
  %1093 = and i32 %1088, 255
  %1094 = call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1097, i8* %1098, align 1
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1099, align 1
  %1100 = icmp eq i32 %1088, 0
  %1101 = zext i1 %1100 to i8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1101, i8* %1102, align 1
  %1103 = lshr i32 %1088, 31
  %1104 = trunc i32 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1104, i8* %1105, align 1
  %1106 = lshr i32 %1088, 31
  %1107 = xor i32 %1103, %1106
  %1108 = add i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1110, i8* %1111, align 1
  store %struct.Memory* %loadMem_400eb9, %struct.Memory** %MEMORY
  %loadMem_400ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1114 to i64*
  %1115 = load i64, i64* %PC.i192
  %1116 = add i64 %1115, 36
  %1117 = load i64, i64* %PC.i192
  %1118 = add i64 %1117, 6
  %1119 = load i64, i64* %PC.i192
  %1120 = add i64 %1119, 6
  store i64 %1120, i64* %PC.i192
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1122 = load i8, i8* %1121, align 1
  %1123 = icmp eq i8 %1122, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %BRANCH_TAKEN, align 1
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1126 = select i1 %1123, i64 %1116, i64 %1118
  store i64 %1126, i64* %1125, align 8
  store %struct.Memory* %loadMem_400ebc, %struct.Memory** %MEMORY
  %loadBr_400ebc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ebc = icmp eq i8 %loadBr_400ebc, 1
  br i1 %cmpBr_400ebc, label %block_.L_400ee0, label %block_400ec2

block_400ec2:                                     ; preds = %block_.L_400eb0
  %loadMem_400ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 11
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RDI.i191 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %PC.i190
  %1134 = add i64 %1133, 10
  store i64 %1134, i64* %PC.i190
  store i64 4199025, i64* %RDI.i191, align 8
  store %struct.Memory* %loadMem_400ec2, %struct.Memory** %MEMORY
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 1
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %1141 = bitcast %union.anon* %1140 to %struct.anon.2*
  %AL.i189 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1141, i32 0, i32 0
  %1142 = load i64, i64* %PC.i188
  %1143 = add i64 %1142, 2
  store i64 %1143, i64* %PC.i188
  store i8 0, i8* %AL.i189, align 1
  store %struct.Memory* %loadMem_400ecc, %struct.Memory** %MEMORY
  %loadMem1_400ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %PC.i187
  %1148 = add i64 %1147, -2430
  %1149 = load i64, i64* %PC.i187
  %1150 = add i64 %1149, 5
  %1151 = load i64, i64* %PC.i187
  %1152 = add i64 %1151, 5
  store i64 %1152, i64* %PC.i187
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1154 = load i64, i64* %1153, align 8
  %1155 = add i64 %1154, -8
  %1156 = inttoptr i64 %1155 to i64*
  store i64 %1150, i64* %1156
  store i64 %1155, i64* %1153, align 8
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1148, i64* %1157, align 8
  store %struct.Memory* %loadMem1_400ece, %struct.Memory** %MEMORY
  %loadMem2_400ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ece = load i64, i64* %3
  %call2_400ece = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400ece, %struct.Memory* %loadMem2_400ece)
  store %struct.Memory* %call2_400ece, %struct.Memory** %MEMORY
  %loadMem_400ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 11
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RDI.i186 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %PC.i185
  %1165 = add i64 %1164, 5
  store i64 %1165, i64* %PC.i185
  store i64 1, i64* %RDI.i186, align 8
  store %struct.Memory* %loadMem_400ed3, %struct.Memory** %MEMORY
  %loadMem_400ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %1171 to i32*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 15
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RBP.i184
  %1176 = sub i64 %1175, 68
  %1177 = load i32, i32* %EAX.i183
  %1178 = zext i32 %1177 to i64
  %1179 = load i64, i64* %PC.i182
  %1180 = add i64 %1179, 3
  store i64 %1180, i64* %PC.i182
  %1181 = inttoptr i64 %1176 to i32*
  store i32 %1177, i32* %1181
  store %struct.Memory* %loadMem_400ed8, %struct.Memory** %MEMORY
  %loadMem1_400edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %PC.i181
  %1186 = add i64 %1185, -2395
  %1187 = load i64, i64* %PC.i181
  %1188 = add i64 %1187, 5
  %1189 = load i64, i64* %PC.i181
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC.i181
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1192 = load i64, i64* %1191, align 8
  %1193 = add i64 %1192, -8
  %1194 = inttoptr i64 %1193 to i64*
  store i64 %1188, i64* %1194
  store i64 %1193, i64* %1191, align 8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1186, i64* %1195, align 8
  store %struct.Memory* %loadMem1_400edb, %struct.Memory** %MEMORY
  %loadMem2_400edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400edb = load i64, i64* %3
  %call2_400edb = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400edb, %struct.Memory* %loadMem2_400edb)
  store %struct.Memory* %call2_400edb, %struct.Memory** %MEMORY
  br label %block_.L_400ee0

block_.L_400ee0:                                  ; preds = %block_400ec2, %block_.L_400eb0
  %loadMem_400ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 11
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RDI.i179 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 15
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %RBP.i180
  %1206 = sub i64 %1205, 16
  %1207 = load i64, i64* %PC.i178
  %1208 = add i64 %1207, 4
  store i64 %1208, i64* %PC.i178
  %1209 = inttoptr i64 %1206 to i64*
  %1210 = load i64, i64* %1209
  store i64 %1210, i64* %RDI.i179, align 8
  store %struct.Memory* %loadMem_400ee0, %struct.Memory** %MEMORY
  %loadMem1_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %PC.i177
  %1215 = add i64 %1214, -436
  %1216 = load i64, i64* %PC.i177
  %1217 = add i64 %1216, 5
  %1218 = load i64, i64* %PC.i177
  %1219 = add i64 %1218, 5
  store i64 %1219, i64* %PC.i177
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1221 = load i64, i64* %1220, align 8
  %1222 = add i64 %1221, -8
  %1223 = inttoptr i64 %1222 to i64*
  store i64 %1217, i64* %1223
  store i64 %1222, i64* %1220, align 8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1215, i64* %1224, align 8
  store %struct.Memory* %loadMem1_400ee4, %struct.Memory** %MEMORY
  %loadMem2_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ee4 = load i64, i64* %3
  %call2_400ee4 = call %struct.Memory* @sub_400d30.list_reverse(%struct.State* %0, i64 %loadPC_400ee4, %struct.Memory* %loadMem2_400ee4)
  store %struct.Memory* %call2_400ee4, %struct.Memory** %MEMORY
  %loadMem_400ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 11
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RDI.i175 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RBP.i176
  %1235 = sub i64 %1234, 16
  %1236 = load i64, i64* %PC.i174
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %PC.i174
  %1238 = inttoptr i64 %1235 to i64*
  %1239 = load i64, i64* %1238
  store i64 %1239, i64* %RDI.i175, align 8
  store %struct.Memory* %loadMem_400ee9, %struct.Memory** %MEMORY
  %loadMem1_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %PC.i173
  %1244 = add i64 %1243, 419
  %1245 = load i64, i64* %PC.i173
  %1246 = add i64 %1245, 5
  %1247 = load i64, i64* %PC.i173
  %1248 = add i64 %1247, 5
  store i64 %1248, i64* %PC.i173
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1250 = load i64, i64* %1249, align 8
  %1251 = add i64 %1250, -8
  %1252 = inttoptr i64 %1251 to i64*
  store i64 %1246, i64* %1252
  store i64 %1251, i64* %1249, align 8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1244, i64* %1253, align 8
  store %struct.Memory* %loadMem1_400eed, %struct.Memory** %MEMORY
  %loadMem2_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400eed = load i64, i64* %3
  %call2_400eed = call %struct.Memory* @sub_401090.list_first(%struct.State* %0, i64 %loadPC_400eed, %struct.Memory* %loadMem2_400eed)
  store %struct.Memory* %call2_400eed, %struct.Memory** %MEMORY
  %loadMem_400ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 1
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %RAX.i172
  %1261 = load i64, i64* %PC.i171
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %PC.i171
  %1263 = inttoptr i64 %1260 to i32*
  %1264 = load i32, i32* %1263
  %1265 = sub i32 %1264, 100
  %1266 = icmp ult i32 %1264, 100
  %1267 = zext i1 %1266 to i8
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1267, i8* %1268, align 1
  %1269 = and i32 %1265, 255
  %1270 = call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1273, i8* %1274, align 1
  %1275 = xor i32 %1264, 100
  %1276 = xor i32 %1275, %1265
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1279, i8* %1280, align 1
  %1281 = icmp eq i32 %1265, 0
  %1282 = zext i1 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1282, i8* %1283, align 1
  %1284 = lshr i32 %1265, 31
  %1285 = trunc i32 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1285, i8* %1286, align 1
  %1287 = lshr i32 %1264, 31
  %1288 = xor i32 %1284, %1287
  %1289 = add i32 %1288, %1287
  %1290 = icmp eq i32 %1289, 2
  %1291 = zext i1 %1290 to i8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1291, i8* %1292, align 1
  store %struct.Memory* %loadMem_400ef2, %struct.Memory** %MEMORY
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %PC.i170
  %1297 = add i64 %1296, 52
  %1298 = load i64, i64* %PC.i170
  %1299 = add i64 %1298, 6
  %1300 = load i64, i64* %PC.i170
  %1301 = add i64 %1300, 6
  store i64 %1301, i64* %PC.i170
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1303 = load i8, i8* %1302, align 1
  store i8 %1303, i8* %BRANCH_TAKEN, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1305 = icmp ne i8 %1303, 0
  %1306 = select i1 %1305, i64 %1297, i64 %1299
  store i64 %1306, i64* %1304, align 8
  store %struct.Memory* %loadMem_400ef5, %struct.Memory** %MEMORY
  %loadBr_400ef5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ef5 = icmp eq i8 %loadBr_400ef5, 1
  br i1 %cmpBr_400ef5, label %block_.L_400f29, label %block_400efb

block_400efb:                                     ; preds = %block_.L_400ee0
  %loadMem_400efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 33
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 11
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RDI.i168 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 15
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %1315 to i64*
  %1316 = load i64, i64* %RBP.i169
  %1317 = sub i64 %1316, 16
  %1318 = load i64, i64* %PC.i167
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %PC.i167
  %1320 = inttoptr i64 %1317 to i64*
  %1321 = load i64, i64* %1320
  store i64 %1321, i64* %RDI.i168, align 8
  store %struct.Memory* %loadMem_400efb, %struct.Memory** %MEMORY
  %loadMem1_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1324 to i64*
  %1325 = load i64, i64* %PC.i166
  %1326 = add i64 %1325, 401
  %1327 = load i64, i64* %PC.i166
  %1328 = add i64 %1327, 5
  %1329 = load i64, i64* %PC.i166
  %1330 = add i64 %1329, 5
  store i64 %1330, i64* %PC.i166
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1332 = load i64, i64* %1331, align 8
  %1333 = add i64 %1332, -8
  %1334 = inttoptr i64 %1333 to i64*
  store i64 %1328, i64* %1334
  store i64 %1333, i64* %1331, align 8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1326, i64* %1335, align 8
  store %struct.Memory* %loadMem1_400eff, %struct.Memory** %MEMORY
  %loadMem2_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400eff = load i64, i64* %3
  %call2_400eff = call %struct.Memory* @sub_401090.list_first(%struct.State* %0, i64 %loadPC_400eff, %struct.Memory* %loadMem2_400eff)
  store %struct.Memory* %call2_400eff, %struct.Memory** %MEMORY
  %loadMem_400f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 11
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RDI.i165 = bitcast %union.anon* %1341 to i64*
  %1342 = load i64, i64* %PC.i164
  %1343 = add i64 %1342, 10
  store i64 %1343, i64* %PC.i164
  store i64 4199050, i64* %RDI.i165, align 8
  store %struct.Memory* %loadMem_400f04, %struct.Memory** %MEMORY
  %loadMem_400f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 9
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RSI.i163 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %PC.i162
  %1351 = add i64 %1350, 5
  store i64 %1351, i64* %PC.i162
  store i64 100, i64* %RSI.i163, align 8
  store %struct.Memory* %loadMem_400f0e, %struct.Memory** %MEMORY
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 7
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RAX.i160
  %1362 = load i64, i64* %PC.i159
  %1363 = add i64 %1362, 2
  store i64 %1363, i64* %PC.i159
  %1364 = inttoptr i64 %1361 to i32*
  %1365 = load i32, i32* %1364
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RDX.i161, align 8
  store %struct.Memory* %loadMem_400f13, %struct.Memory** %MEMORY
  %loadMem_400f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 1
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %1373 = bitcast %union.anon* %1372 to %struct.anon.2*
  %AL.i158 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1373, i32 0, i32 0
  %1374 = load i64, i64* %PC.i157
  %1375 = add i64 %1374, 2
  store i64 %1375, i64* %PC.i157
  store i8 0, i8* %AL.i158, align 1
  store %struct.Memory* %loadMem_400f15, %struct.Memory** %MEMORY
  %loadMem1_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %PC.i156
  %1380 = add i64 %1379, -2503
  %1381 = load i64, i64* %PC.i156
  %1382 = add i64 %1381, 5
  %1383 = load i64, i64* %PC.i156
  %1384 = add i64 %1383, 5
  store i64 %1384, i64* %PC.i156
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1386 = load i64, i64* %1385, align 8
  %1387 = add i64 %1386, -8
  %1388 = inttoptr i64 %1387 to i64*
  store i64 %1382, i64* %1388
  store i64 %1387, i64* %1385, align 8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1380, i64* %1389, align 8
  store %struct.Memory* %loadMem1_400f17, %struct.Memory** %MEMORY
  %loadMem2_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f17 = load i64, i64* %3
  %call2_400f17 = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400f17, %struct.Memory* %loadMem2_400f17)
  store %struct.Memory* %call2_400f17, %struct.Memory** %MEMORY
  %loadMem_400f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 11
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RDI.i155 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %PC.i154
  %1397 = add i64 %1396, 5
  store i64 %1397, i64* %PC.i154
  store i64 1, i64* %RDI.i155, align 8
  store %struct.Memory* %loadMem_400f1c, %struct.Memory** %MEMORY
  %loadMem_400f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 1
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %1403 to i32*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 15
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %RBP.i153
  %1408 = sub i64 %1407, 72
  %1409 = load i32, i32* %EAX.i152
  %1410 = zext i32 %1409 to i64
  %1411 = load i64, i64* %PC.i151
  %1412 = add i64 %1411, 3
  store i64 %1412, i64* %PC.i151
  %1413 = inttoptr i64 %1408 to i32*
  store i32 %1409, i32* %1413
  store %struct.Memory* %loadMem_400f21, %struct.Memory** %MEMORY
  %loadMem1_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %PC.i150
  %1418 = add i64 %1417, -2468
  %1419 = load i64, i64* %PC.i150
  %1420 = add i64 %1419, 5
  %1421 = load i64, i64* %PC.i150
  %1422 = add i64 %1421, 5
  store i64 %1422, i64* %PC.i150
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1424 = load i64, i64* %1423, align 8
  %1425 = add i64 %1424, -8
  %1426 = inttoptr i64 %1425 to i64*
  store i64 %1420, i64* %1426
  store i64 %1425, i64* %1423, align 8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1418, i64* %1427, align 8
  store %struct.Memory* %loadMem1_400f24, %struct.Memory** %MEMORY
  %loadMem2_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f24 = load i64, i64* %3
  %call2_400f24 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400f24, %struct.Memory* %loadMem2_400f24)
  store %struct.Memory* %call2_400f24, %struct.Memory** %MEMORY
  br label %block_.L_400f29

block_.L_400f29:                                  ; preds = %block_400efb, %block_.L_400ee0
  %loadMem_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 11
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RDI.i148 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 15
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %1436 to i64*
  %1437 = load i64, i64* %RBP.i149
  %1438 = sub i64 %1437, 16
  %1439 = load i64, i64* %PC.i147
  %1440 = add i64 %1439, 4
  store i64 %1440, i64* %PC.i147
  %1441 = inttoptr i64 %1438 to i64*
  %1442 = load i64, i64* %1441
  store i64 %1442, i64* %RDI.i148, align 8
  store %struct.Memory* %loadMem_400f29, %struct.Memory** %MEMORY
  %loadMem1_400f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1445 to i64*
  %1446 = load i64, i64* %PC.i146
  %1447 = add i64 %1446, -541
  %1448 = load i64, i64* %PC.i146
  %1449 = add i64 %1448, 5
  %1450 = load i64, i64* %PC.i146
  %1451 = add i64 %1450, 5
  store i64 %1451, i64* %PC.i146
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1453 = load i64, i64* %1452, align 8
  %1454 = add i64 %1453, -8
  %1455 = inttoptr i64 %1454 to i64*
  store i64 %1449, i64* %1455
  store i64 %1454, i64* %1452, align 8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1447, i64* %1456, align 8
  store %struct.Memory* %loadMem1_400f2d, %struct.Memory** %MEMORY
  %loadMem2_400f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f2d = load i64, i64* %3
  %call2_400f2d = call %struct.Memory* @sub_400d10.list_last(%struct.State* %0, i64 %loadPC_400f2d, %struct.Memory* %loadMem2_400f2d)
  store %struct.Memory* %call2_400f2d, %struct.Memory** %MEMORY
  %loadMem_400f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 1
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RAX.i145
  %1464 = load i64, i64* %PC.i144
  %1465 = add i64 %1464, 3
  store i64 %1465, i64* %PC.i144
  %1466 = inttoptr i64 %1463 to i32*
  %1467 = load i32, i32* %1466
  %1468 = sub i32 %1467, 1
  %1469 = icmp ult i32 %1467, 1
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1470, i8* %1471, align 1
  %1472 = and i32 %1468, 255
  %1473 = call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1476, i8* %1477, align 1
  %1478 = xor i32 %1467, 1
  %1479 = xor i32 %1478, %1468
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1482, i8* %1483, align 1
  %1484 = icmp eq i32 %1468, 0
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1468, 31
  %1488 = trunc i32 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1488, i8* %1489, align 1
  %1490 = lshr i32 %1467, 31
  %1491 = xor i32 %1487, %1490
  %1492 = add i32 %1491, %1490
  %1493 = icmp eq i32 %1492, 2
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1494, i8* %1495, align 1
  store %struct.Memory* %loadMem_400f32, %struct.Memory** %MEMORY
  %loadMem_400f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1498 to i64*
  %1499 = load i64, i64* %PC.i143
  %1500 = add i64 %1499, 52
  %1501 = load i64, i64* %PC.i143
  %1502 = add i64 %1501, 6
  %1503 = load i64, i64* %PC.i143
  %1504 = add i64 %1503, 6
  store i64 %1504, i64* %PC.i143
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1506 = load i8, i8* %1505, align 1
  store i8 %1506, i8* %BRANCH_TAKEN, align 1
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1508 = icmp ne i8 %1506, 0
  %1509 = select i1 %1508, i64 %1500, i64 %1502
  store i64 %1509, i64* %1507, align 8
  store %struct.Memory* %loadMem_400f35, %struct.Memory** %MEMORY
  %loadBr_400f35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f35 = icmp eq i8 %loadBr_400f35, 1
  br i1 %cmpBr_400f35, label %block_.L_400f69, label %block_400f3b

block_400f3b:                                     ; preds = %block_.L_400f29
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 11
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RDI.i141 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i142
  %1520 = sub i64 %1519, 16
  %1521 = load i64, i64* %PC.i140
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i140
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523
  store i64 %1524, i64* %RDI.i141, align 8
  store %struct.Memory* %loadMem_400f3b, %struct.Memory** %MEMORY
  %loadMem1_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %PC.i139
  %1529 = add i64 %1528, -559
  %1530 = load i64, i64* %PC.i139
  %1531 = add i64 %1530, 5
  %1532 = load i64, i64* %PC.i139
  %1533 = add i64 %1532, 5
  store i64 %1533, i64* %PC.i139
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1535 = load i64, i64* %1534, align 8
  %1536 = add i64 %1535, -8
  %1537 = inttoptr i64 %1536 to i64*
  store i64 %1531, i64* %1537
  store i64 %1536, i64* %1534, align 8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1529, i64* %1538, align 8
  store %struct.Memory* %loadMem1_400f3f, %struct.Memory** %MEMORY
  %loadMem2_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f3f = load i64, i64* %3
  %call2_400f3f = call %struct.Memory* @sub_400d10.list_last(%struct.State* %0, i64 %loadPC_400f3f, %struct.Memory* %loadMem2_400f3f)
  store %struct.Memory* %call2_400f3f, %struct.Memory** %MEMORY
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 11
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RDI.i138 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %PC.i137
  %1546 = add i64 %1545, 10
  store i64 %1546, i64* %PC.i137
  store i64 4199092, i64* %RDI.i138, align 8
  store %struct.Memory* %loadMem_400f44, %struct.Memory** %MEMORY
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 9
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %PC.i135
  %1554 = add i64 %1553, 5
  store i64 %1554, i64* %PC.i135
  store i64 100, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_400f4e, %struct.Memory** %MEMORY
  %loadMem_400f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 7
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RAX.i133
  %1565 = load i64, i64* %PC.i132
  %1566 = add i64 %1565, 2
  store i64 %1566, i64* %PC.i132
  %1567 = inttoptr i64 %1564 to i32*
  %1568 = load i32, i32* %1567
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_400f53, %struct.Memory** %MEMORY
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 1
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %1576 = bitcast %union.anon* %1575 to %struct.anon.2*
  %AL.i131 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1576, i32 0, i32 0
  %1577 = load i64, i64* %PC.i130
  %1578 = add i64 %1577, 2
  store i64 %1578, i64* %PC.i130
  store i8 0, i8* %AL.i131, align 1
  store %struct.Memory* %loadMem_400f55, %struct.Memory** %MEMORY
  %loadMem1_400f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1581 to i64*
  %1582 = load i64, i64* %PC.i129
  %1583 = add i64 %1582, -2567
  %1584 = load i64, i64* %PC.i129
  %1585 = add i64 %1584, 5
  %1586 = load i64, i64* %PC.i129
  %1587 = add i64 %1586, 5
  store i64 %1587, i64* %PC.i129
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1589 = load i64, i64* %1588, align 8
  %1590 = add i64 %1589, -8
  %1591 = inttoptr i64 %1590 to i64*
  store i64 %1585, i64* %1591
  store i64 %1590, i64* %1588, align 8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1583, i64* %1592, align 8
  store %struct.Memory* %loadMem1_400f57, %struct.Memory** %MEMORY
  %loadMem2_400f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f57 = load i64, i64* %3
  %call2_400f57 = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400f57, %struct.Memory* %loadMem2_400f57)
  store %struct.Memory* %call2_400f57, %struct.Memory** %MEMORY
  %loadMem_400f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 11
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RDI.i128 = bitcast %union.anon* %1598 to i64*
  %1599 = load i64, i64* %PC.i127
  %1600 = add i64 %1599, 5
  store i64 %1600, i64* %PC.i127
  store i64 1, i64* %RDI.i128, align 8
  store %struct.Memory* %loadMem_400f5c, %struct.Memory** %MEMORY
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 1
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %1606 to i32*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 15
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %RBP.i126
  %1611 = sub i64 %1610, 76
  %1612 = load i32, i32* %EAX.i125
  %1613 = zext i32 %1612 to i64
  %1614 = load i64, i64* %PC.i124
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %PC.i124
  %1616 = inttoptr i64 %1611 to i32*
  store i32 %1612, i32* %1616
  store %struct.Memory* %loadMem_400f61, %struct.Memory** %MEMORY
  %loadMem1_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %PC.i123
  %1621 = add i64 %1620, -2532
  %1622 = load i64, i64* %PC.i123
  %1623 = add i64 %1622, 5
  %1624 = load i64, i64* %PC.i123
  %1625 = add i64 %1624, 5
  store i64 %1625, i64* %PC.i123
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1627 = load i64, i64* %1626, align 8
  %1628 = add i64 %1627, -8
  %1629 = inttoptr i64 %1628 to i64*
  store i64 %1623, i64* %1629
  store i64 %1628, i64* %1626, align 8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1621, i64* %1630, align 8
  store %struct.Memory* %loadMem1_400f64, %struct.Memory** %MEMORY
  %loadMem2_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f64 = load i64, i64* %3
  %call2_400f64 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400f64, %struct.Memory* %loadMem2_400f64)
  store %struct.Memory* %call2_400f64, %struct.Memory** %MEMORY
  br label %block_.L_400f69

block_.L_400f69:                                  ; preds = %block_400f3b, %block_.L_400f29
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 11
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RDI.i121 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 15
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RBP.i122
  %1641 = sub i64 %1640, 24
  %1642 = load i64, i64* %PC.i120
  %1643 = add i64 %1642, 4
  store i64 %1643, i64* %PC.i120
  %1644 = inttoptr i64 %1641 to i64*
  %1645 = load i64, i64* %1644
  store i64 %1645, i64* %RDI.i121, align 8
  store %struct.Memory* %loadMem_400f69, %struct.Memory** %MEMORY
  %loadMem1_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %PC.i119
  %1650 = add i64 %1649, 291
  %1651 = load i64, i64* %PC.i119
  %1652 = add i64 %1651, 5
  %1653 = load i64, i64* %PC.i119
  %1654 = add i64 %1653, 5
  store i64 %1654, i64* %PC.i119
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1656 = load i64, i64* %1655, align 8
  %1657 = add i64 %1656, -8
  %1658 = inttoptr i64 %1657 to i64*
  store i64 %1652, i64* %1658
  store i64 %1657, i64* %1655, align 8
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1650, i64* %1659, align 8
  store %struct.Memory* %loadMem1_400f6d, %struct.Memory** %MEMORY
  %loadMem2_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f6d = load i64, i64* %3
  %call2_400f6d = call %struct.Memory* @sub_401090.list_first(%struct.State* %0, i64 %loadPC_400f6d, %struct.Memory* %loadMem2_400f6d)
  store %struct.Memory* %call2_400f6d, %struct.Memory** %MEMORY
  %loadMem_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RAX.i118
  %1667 = load i64, i64* %PC.i117
  %1668 = add i64 %1667, 3
  store i64 %1668, i64* %PC.i117
  %1669 = inttoptr i64 %1666 to i32*
  %1670 = load i32, i32* %1669
  %1671 = sub i32 %1670, 100
  %1672 = icmp ult i32 %1670, 100
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1673, i8* %1674, align 1
  %1675 = and i32 %1671, 255
  %1676 = call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1679, i8* %1680, align 1
  %1681 = xor i32 %1670, 100
  %1682 = xor i32 %1681, %1671
  %1683 = lshr i32 %1682, 4
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1685, i8* %1686, align 1
  %1687 = icmp eq i32 %1671, 0
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1688, i8* %1689, align 1
  %1690 = lshr i32 %1671, 31
  %1691 = trunc i32 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1670, 31
  %1694 = xor i32 %1690, %1693
  %1695 = add i32 %1694, %1693
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1697, i8* %1698, align 1
  store %struct.Memory* %loadMem_400f72, %struct.Memory** %MEMORY
  %loadMem_400f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %PC.i116
  %1703 = add i64 %1702, 52
  %1704 = load i64, i64* %PC.i116
  %1705 = add i64 %1704, 6
  %1706 = load i64, i64* %PC.i116
  %1707 = add i64 %1706, 6
  store i64 %1707, i64* %PC.i116
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1709 = load i8, i8* %1708, align 1
  store i8 %1709, i8* %BRANCH_TAKEN, align 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1711 = icmp ne i8 %1709, 0
  %1712 = select i1 %1711, i64 %1703, i64 %1705
  store i64 %1712, i64* %1710, align 8
  store %struct.Memory* %loadMem_400f75, %struct.Memory** %MEMORY
  %loadBr_400f75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f75 = icmp eq i8 %loadBr_400f75, 1
  br i1 %cmpBr_400f75, label %block_.L_400fa9, label %block_400f7b

block_400f7b:                                     ; preds = %block_.L_400f69
  %loadMem_400f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 11
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i115
  %1723 = sub i64 %1722, 24
  %1724 = load i64, i64* %PC.i113
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC.i113
  %1726 = inttoptr i64 %1723 to i64*
  %1727 = load i64, i64* %1726
  store i64 %1727, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_400f7b, %struct.Memory** %MEMORY
  %loadMem1_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %PC.i112
  %1732 = add i64 %1731, 273
  %1733 = load i64, i64* %PC.i112
  %1734 = add i64 %1733, 5
  %1735 = load i64, i64* %PC.i112
  %1736 = add i64 %1735, 5
  store i64 %1736, i64* %PC.i112
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1738 = load i64, i64* %1737, align 8
  %1739 = add i64 %1738, -8
  %1740 = inttoptr i64 %1739 to i64*
  store i64 %1734, i64* %1740
  store i64 %1739, i64* %1737, align 8
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1732, i64* %1741, align 8
  store %struct.Memory* %loadMem1_400f7f, %struct.Memory** %MEMORY
  %loadMem2_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f7f = load i64, i64* %3
  %call2_400f7f = call %struct.Memory* @sub_401090.list_first(%struct.State* %0, i64 %loadPC_400f7f, %struct.Memory* %loadMem2_400f7f)
  store %struct.Memory* %call2_400f7f, %struct.Memory** %MEMORY
  %loadMem_400f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 11
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RDI.i111 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %PC.i110
  %1749 = add i64 %1748, 10
  store i64 %1749, i64* %PC.i110
  store i64 4199129, i64* %RDI.i111, align 8
  store %struct.Memory* %loadMem_400f84, %struct.Memory** %MEMORY
  %loadMem_400f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 9
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RSI.i109 = bitcast %union.anon* %1755 to i64*
  %1756 = load i64, i64* %PC.i108
  %1757 = add i64 %1756, 5
  store i64 %1757, i64* %PC.i108
  store i64 100, i64* %RSI.i109, align 8
  store %struct.Memory* %loadMem_400f8e, %struct.Memory** %MEMORY
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 1
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 7
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %RAX.i106
  %1768 = load i64, i64* %PC.i105
  %1769 = add i64 %1768, 2
  store i64 %1769, i64* %PC.i105
  %1770 = inttoptr i64 %1767 to i32*
  %1771 = load i32, i32* %1770
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RDX.i107, align 8
  store %struct.Memory* %loadMem_400f93, %struct.Memory** %MEMORY
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 1
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %1779 = bitcast %union.anon* %1778 to %struct.anon.2*
  %AL.i104 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1779, i32 0, i32 0
  %1780 = load i64, i64* %PC.i103
  %1781 = add i64 %1780, 2
  store i64 %1781, i64* %PC.i103
  store i8 0, i8* %AL.i104, align 1
  store %struct.Memory* %loadMem_400f95, %struct.Memory** %MEMORY
  %loadMem1_400f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %PC.i102
  %1786 = add i64 %1785, -2631
  %1787 = load i64, i64* %PC.i102
  %1788 = add i64 %1787, 5
  %1789 = load i64, i64* %PC.i102
  %1790 = add i64 %1789, 5
  store i64 %1790, i64* %PC.i102
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1792 = load i64, i64* %1791, align 8
  %1793 = add i64 %1792, -8
  %1794 = inttoptr i64 %1793 to i64*
  store i64 %1788, i64* %1794
  store i64 %1793, i64* %1791, align 8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1786, i64* %1795, align 8
  store %struct.Memory* %loadMem1_400f97, %struct.Memory** %MEMORY
  %loadMem2_400f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f97 = load i64, i64* %3
  %call2_400f97 = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400f97, %struct.Memory* %loadMem2_400f97)
  store %struct.Memory* %call2_400f97, %struct.Memory** %MEMORY
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 11
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %PC.i100
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i100
  store i64 1, i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_400f9c, %struct.Memory** %MEMORY
  %loadMem_400fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 1
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %EAX.i98 = bitcast %union.anon* %1809 to i32*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 15
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RBP.i99
  %1814 = sub i64 %1813, 80
  %1815 = load i32, i32* %EAX.i98
  %1816 = zext i32 %1815 to i64
  %1817 = load i64, i64* %PC.i97
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC.i97
  %1819 = inttoptr i64 %1814 to i32*
  store i32 %1815, i32* %1819
  store %struct.Memory* %loadMem_400fa1, %struct.Memory** %MEMORY
  %loadMem1_400fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %PC.i96
  %1824 = add i64 %1823, -2596
  %1825 = load i64, i64* %PC.i96
  %1826 = add i64 %1825, 5
  %1827 = load i64, i64* %PC.i96
  %1828 = add i64 %1827, 5
  store i64 %1828, i64* %PC.i96
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1830 = load i64, i64* %1829, align 8
  %1831 = add i64 %1830, -8
  %1832 = inttoptr i64 %1831 to i64*
  store i64 %1826, i64* %1832
  store i64 %1831, i64* %1829, align 8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1824, i64* %1833, align 8
  store %struct.Memory* %loadMem1_400fa4, %struct.Memory** %MEMORY
  %loadMem2_400fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fa4 = load i64, i64* %3
  %call2_400fa4 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400fa4, %struct.Memory* %loadMem2_400fa4)
  store %struct.Memory* %call2_400fa4, %struct.Memory** %MEMORY
  br label %block_.L_400fa9

block_.L_400fa9:                                  ; preds = %block_400f7b, %block_.L_400f69
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 11
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 15
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %RBP.i95
  %1844 = sub i64 %1843, 24
  %1845 = load i64, i64* %PC.i93
  %1846 = add i64 %1845, 4
  store i64 %1846, i64* %PC.i93
  %1847 = inttoptr i64 %1844 to i64*
  %1848 = load i64, i64* %1847
  store i64 %1848, i64* %RDI.i94, align 8
  store %struct.Memory* %loadMem_400fa9, %struct.Memory** %MEMORY
  %loadMem1_400fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %PC.i92
  %1853 = add i64 %1852, -669
  %1854 = load i64, i64* %PC.i92
  %1855 = add i64 %1854, 5
  %1856 = load i64, i64* %PC.i92
  %1857 = add i64 %1856, 5
  store i64 %1857, i64* %PC.i92
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1859 = load i64, i64* %1858, align 8
  %1860 = add i64 %1859, -8
  %1861 = inttoptr i64 %1860 to i64*
  store i64 %1855, i64* %1861
  store i64 %1860, i64* %1858, align 8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1853, i64* %1862, align 8
  store %struct.Memory* %loadMem1_400fad, %struct.Memory** %MEMORY
  %loadMem2_400fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fad = load i64, i64* %3
  %call2_400fad = call %struct.Memory* @sub_400d10.list_last(%struct.State* %0, i64 %loadPC_400fad, %struct.Memory* %loadMem2_400fad)
  store %struct.Memory* %call2_400fad, %struct.Memory** %MEMORY
  %loadMem_400fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 1
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %RAX.i91
  %1870 = load i64, i64* %PC.i90
  %1871 = add i64 %1870, 3
  store i64 %1871, i64* %PC.i90
  %1872 = inttoptr i64 %1869 to i32*
  %1873 = load i32, i32* %1872
  %1874 = sub i32 %1873, 1
  %1875 = icmp ult i32 %1873, 1
  %1876 = zext i1 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1876, i8* %1877, align 1
  %1878 = and i32 %1874, 255
  %1879 = call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1882, i8* %1883, align 1
  %1884 = xor i32 %1873, 1
  %1885 = xor i32 %1884, %1874
  %1886 = lshr i32 %1885, 4
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1888, i8* %1889, align 1
  %1890 = icmp eq i32 %1874, 0
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1891, i8* %1892, align 1
  %1893 = lshr i32 %1874, 31
  %1894 = trunc i32 %1893 to i8
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1894, i8* %1895, align 1
  %1896 = lshr i32 %1873, 31
  %1897 = xor i32 %1893, %1896
  %1898 = add i32 %1897, %1896
  %1899 = icmp eq i32 %1898, 2
  %1900 = zext i1 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1900, i8* %1901, align 1
  store %struct.Memory* %loadMem_400fb2, %struct.Memory** %MEMORY
  %loadMem_400fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %PC.i89
  %1906 = add i64 %1905, 52
  %1907 = load i64, i64* %PC.i89
  %1908 = add i64 %1907, 6
  %1909 = load i64, i64* %PC.i89
  %1910 = add i64 %1909, 6
  store i64 %1910, i64* %PC.i89
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1912 = load i8, i8* %1911, align 1
  store i8 %1912, i8* %BRANCH_TAKEN, align 1
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1914 = icmp ne i8 %1912, 0
  %1915 = select i1 %1914, i64 %1906, i64 %1908
  store i64 %1915, i64* %1913, align 8
  store %struct.Memory* %loadMem_400fb5, %struct.Memory** %MEMORY
  %loadBr_400fb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fb5 = icmp eq i8 %loadBr_400fb5, 1
  br i1 %cmpBr_400fb5, label %block_.L_400fe9, label %block_400fbb

block_400fbb:                                     ; preds = %block_.L_400fa9
  %loadMem_400fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 11
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 15
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %RBP.i88
  %1926 = sub i64 %1925, 24
  %1927 = load i64, i64* %PC.i86
  %1928 = add i64 %1927, 4
  store i64 %1928, i64* %PC.i86
  %1929 = inttoptr i64 %1926 to i64*
  %1930 = load i64, i64* %1929
  store i64 %1930, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_400fbb, %struct.Memory** %MEMORY
  %loadMem1_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %PC.i85
  %1935 = add i64 %1934, -687
  %1936 = load i64, i64* %PC.i85
  %1937 = add i64 %1936, 5
  %1938 = load i64, i64* %PC.i85
  %1939 = add i64 %1938, 5
  store i64 %1939, i64* %PC.i85
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1941 = load i64, i64* %1940, align 8
  %1942 = add i64 %1941, -8
  %1943 = inttoptr i64 %1942 to i64*
  store i64 %1937, i64* %1943
  store i64 %1942, i64* %1940, align 8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1935, i64* %1944, align 8
  store %struct.Memory* %loadMem1_400fbf, %struct.Memory** %MEMORY
  %loadMem2_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fbf = load i64, i64* %3
  %call2_400fbf = call %struct.Memory* @sub_400d10.list_last(%struct.State* %0, i64 %loadPC_400fbf, %struct.Memory* %loadMem2_400fbf)
  store %struct.Memory* %call2_400fbf, %struct.Memory** %MEMORY
  %loadMem_400fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 11
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RDI.i84 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %PC.i83
  %1952 = add i64 %1951, 10
  store i64 %1952, i64* %PC.i83
  store i64 4199092, i64* %RDI.i84, align 8
  store %struct.Memory* %loadMem_400fc4, %struct.Memory** %MEMORY
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 9
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %PC.i81
  %1960 = add i64 %1959, 5
  store i64 %1960, i64* %PC.i81
  store i64 100, i64* %RSI.i82, align 8
  store %struct.Memory* %loadMem_400fce, %struct.Memory** %MEMORY
  %loadMem_400fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 7
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %RAX.i79
  %1971 = load i64, i64* %PC.i78
  %1972 = add i64 %1971, 2
  store i64 %1972, i64* %PC.i78
  %1973 = inttoptr i64 %1970 to i32*
  %1974 = load i32, i32* %1973
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RDX.i80, align 8
  store %struct.Memory* %loadMem_400fd3, %struct.Memory** %MEMORY
  %loadMem_400fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 1
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %1982 = bitcast %union.anon* %1981 to %struct.anon.2*
  %AL.i77 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1982, i32 0, i32 0
  %1983 = load i64, i64* %PC.i76
  %1984 = add i64 %1983, 2
  store i64 %1984, i64* %PC.i76
  store i8 0, i8* %AL.i77, align 1
  store %struct.Memory* %loadMem_400fd5, %struct.Memory** %MEMORY
  %loadMem1_400fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i75
  %1989 = add i64 %1988, -2695
  %1990 = load i64, i64* %PC.i75
  %1991 = add i64 %1990, 5
  %1992 = load i64, i64* %PC.i75
  %1993 = add i64 %1992, 5
  store i64 %1993, i64* %PC.i75
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1995 = load i64, i64* %1994, align 8
  %1996 = add i64 %1995, -8
  %1997 = inttoptr i64 %1996 to i64*
  store i64 %1991, i64* %1997
  store i64 %1996, i64* %1994, align 8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1989, i64* %1998, align 8
  store %struct.Memory* %loadMem1_400fd7, %struct.Memory** %MEMORY
  %loadMem2_400fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fd7 = load i64, i64* %3
  %call2_400fd7 = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_400fd7, %struct.Memory* %loadMem2_400fd7)
  store %struct.Memory* %call2_400fd7, %struct.Memory** %MEMORY
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 11
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %PC.i73
  %2006 = add i64 %2005, 5
  store i64 %2006, i64* %PC.i73
  store i64 1, i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_400fdc, %struct.Memory** %MEMORY
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 1
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %2012 to i32*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i72
  %2017 = sub i64 %2016, 84
  %2018 = load i32, i32* %EAX.i71
  %2019 = zext i32 %2018 to i64
  %2020 = load i64, i64* %PC.i70
  %2021 = add i64 %2020, 3
  store i64 %2021, i64* %PC.i70
  %2022 = inttoptr i64 %2017 to i32*
  store i32 %2018, i32* %2022
  store %struct.Memory* %loadMem_400fe1, %struct.Memory** %MEMORY
  %loadMem1_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2025 to i64*
  %2026 = load i64, i64* %PC.i69
  %2027 = add i64 %2026, -2660
  %2028 = load i64, i64* %PC.i69
  %2029 = add i64 %2028, 5
  %2030 = load i64, i64* %PC.i69
  %2031 = add i64 %2030, 5
  store i64 %2031, i64* %PC.i69
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2033 = load i64, i64* %2032, align 8
  %2034 = add i64 %2033, -8
  %2035 = inttoptr i64 %2034 to i64*
  store i64 %2029, i64* %2035
  store i64 %2034, i64* %2032, align 8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2027, i64* %2036, align 8
  store %struct.Memory* %loadMem1_400fe4, %struct.Memory** %MEMORY
  %loadMem2_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fe4 = load i64, i64* %3
  %call2_400fe4 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_400fe4, %struct.Memory* %loadMem2_400fe4)
  store %struct.Memory* %call2_400fe4, %struct.Memory** %MEMORY
  br label %block_.L_400fe9

block_.L_400fe9:                                  ; preds = %block_400fbb, %block_.L_400fa9
  %loadMem_400fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 11
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RDI.i67 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 15
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %RBP.i68
  %2047 = sub i64 %2046, 16
  %2048 = load i64, i64* %PC.i66
  %2049 = add i64 %2048, 4
  store i64 %2049, i64* %PC.i66
  %2050 = inttoptr i64 %2047 to i64*
  %2051 = load i64, i64* %2050
  store i64 %2051, i64* %RDI.i67, align 8
  store %struct.Memory* %loadMem_400fe9, %struct.Memory** %MEMORY
  %loadMem1_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 33
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %PC.i65
  %2056 = add i64 %2055, -2141
  %2057 = load i64, i64* %PC.i65
  %2058 = add i64 %2057, 5
  %2059 = load i64, i64* %PC.i65
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %PC.i65
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2062 = load i64, i64* %2061, align 8
  %2063 = add i64 %2062, -8
  %2064 = inttoptr i64 %2063 to i64*
  store i64 %2058, i64* %2064
  store i64 %2063, i64* %2061, align 8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2056, i64* %2065, align 8
  store %struct.Memory* %loadMem1_400fed, %struct.Memory** %MEMORY
  %loadMem2_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fed = load i64, i64* %3
  %call2_400fed = call %struct.Memory* @sub_400790.list_length(%struct.State* %0, i64 %loadPC_400fed, %struct.Memory* %loadMem2_400fed)
  store %struct.Memory* %call2_400fed, %struct.Memory** %MEMORY
  %loadMem_400ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 1
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %2071 to i32*
  %2072 = load i32, i32* %EAX.i64
  %2073 = zext i32 %2072 to i64
  %2074 = load i64, i64* %PC.i63
  %2075 = add i64 %2074, 3
  store i64 %2075, i64* %PC.i63
  %2076 = sub i32 %2072, 100
  %2077 = icmp ult i32 %2072, 100
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2078, i8* %2079, align 1
  %2080 = and i32 %2076, 255
  %2081 = call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2084, i8* %2085, align 1
  %2086 = xor i64 100, %2073
  %2087 = trunc i64 %2086 to i32
  %2088 = xor i32 %2087, %2076
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2091, i8* %2092, align 1
  %2093 = icmp eq i32 %2076, 0
  %2094 = zext i1 %2093 to i8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2094, i8* %2095, align 1
  %2096 = lshr i32 %2076, 31
  %2097 = trunc i32 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2097, i8* %2098, align 1
  %2099 = lshr i32 %2072, 31
  %2100 = xor i32 %2096, %2099
  %2101 = add i32 %2100, %2099
  %2102 = icmp eq i32 %2101, 2
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2103, i8* %2104, align 1
  store %struct.Memory* %loadMem_400ff2, %struct.Memory** %MEMORY
  %loadMem_400ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2107 to i64*
  %2108 = load i64, i64* %PC.i62
  %2109 = add i64 %2108, 52
  %2110 = load i64, i64* %PC.i62
  %2111 = add i64 %2110, 6
  %2112 = load i64, i64* %PC.i62
  %2113 = add i64 %2112, 6
  store i64 %2113, i64* %PC.i62
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2115 = load i8, i8* %2114, align 1
  store i8 %2115, i8* %BRANCH_TAKEN, align 1
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2117 = icmp ne i8 %2115, 0
  %2118 = select i1 %2117, i64 %2109, i64 %2111
  store i64 %2118, i64* %2116, align 8
  store %struct.Memory* %loadMem_400ff5, %struct.Memory** %MEMORY
  %loadBr_400ff5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ff5 = icmp eq i8 %loadBr_400ff5, 1
  br i1 %cmpBr_400ff5, label %block_.L_401029, label %block_400ffb

block_400ffb:                                     ; preds = %block_.L_400fe9
  %loadMem_400ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 11
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RDI.i60 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RBP.i61
  %2129 = sub i64 %2128, 16
  %2130 = load i64, i64* %PC.i59
  %2131 = add i64 %2130, 4
  store i64 %2131, i64* %PC.i59
  %2132 = inttoptr i64 %2129 to i64*
  %2133 = load i64, i64* %2132
  store i64 %2133, i64* %RDI.i60, align 8
  store %struct.Memory* %loadMem_400ffb, %struct.Memory** %MEMORY
  %loadMem1_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 33
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2136 to i64*
  %2137 = load i64, i64* %PC.i58
  %2138 = add i64 %2137, -2159
  %2139 = load i64, i64* %PC.i58
  %2140 = add i64 %2139, 5
  %2141 = load i64, i64* %PC.i58
  %2142 = add i64 %2141, 5
  store i64 %2142, i64* %PC.i58
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2144 = load i64, i64* %2143, align 8
  %2145 = add i64 %2144, -8
  %2146 = inttoptr i64 %2145 to i64*
  store i64 %2140, i64* %2146
  store i64 %2145, i64* %2143, align 8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2138, i64* %2147, align 8
  store %struct.Memory* %loadMem1_400fff, %struct.Memory** %MEMORY
  %loadMem2_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fff = load i64, i64* %3
  %call2_400fff = call %struct.Memory* @sub_400790.list_length(%struct.State* %0, i64 %loadPC_400fff, %struct.Memory* %loadMem2_400fff)
  store %struct.Memory* %call2_400fff, %struct.Memory** %MEMORY
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 11
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RDI.i57 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %PC.i56
  %2155 = add i64 %2154, 10
  store i64 %2155, i64* %PC.i56
  store i64 4199171, i64* %RDI.i57, align 8
  store %struct.Memory* %loadMem_401004, %struct.Memory** %MEMORY
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 9
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RSI.i55 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %PC.i54
  %2163 = add i64 %2162, 5
  store i64 %2163, i64* %PC.i54
  store i64 100, i64* %RSI.i55, align 8
  store %struct.Memory* %loadMem_40100e, %struct.Memory** %MEMORY
  %loadMem_401013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 1
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %EAX.i53 = bitcast %union.anon* %2169 to i32*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 7
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2172 to i64*
  %2173 = load i32, i32* %EAX.i53
  %2174 = zext i32 %2173 to i64
  %2175 = load i64, i64* %PC.i52
  %2176 = add i64 %2175, 2
  store i64 %2176, i64* %PC.i52
  %2177 = and i64 %2174, 4294967295
  store i64 %2177, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_401013, %struct.Memory** %MEMORY
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 1
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %2184 = bitcast %union.anon* %2183 to %struct.anon.2*
  %AL.i51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2184, i32 0, i32 0
  %2185 = load i64, i64* %PC.i50
  %2186 = add i64 %2185, 2
  store i64 %2186, i64* %PC.i50
  store i8 0, i8* %AL.i51, align 1
  store %struct.Memory* %loadMem_401015, %struct.Memory** %MEMORY
  %loadMem1_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %PC.i49
  %2191 = add i64 %2190, -2759
  %2192 = load i64, i64* %PC.i49
  %2193 = add i64 %2192, 5
  %2194 = load i64, i64* %PC.i49
  %2195 = add i64 %2194, 5
  store i64 %2195, i64* %PC.i49
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2197 = load i64, i64* %2196, align 8
  %2198 = add i64 %2197, -8
  %2199 = inttoptr i64 %2198 to i64*
  store i64 %2193, i64* %2199
  store i64 %2198, i64* %2196, align 8
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2191, i64* %2200, align 8
  store %struct.Memory* %loadMem1_401017, %struct.Memory** %MEMORY
  %loadMem2_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401017 = load i64, i64* %3
  %call2_401017 = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_401017, %struct.Memory* %loadMem2_401017)
  store %struct.Memory* %call2_401017, %struct.Memory** %MEMORY
  %loadMem_40101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 11
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RDI.i48 = bitcast %union.anon* %2206 to i64*
  %2207 = load i64, i64* %PC.i47
  %2208 = add i64 %2207, 5
  store i64 %2208, i64* %PC.i47
  store i64 1, i64* %RDI.i48, align 8
  store %struct.Memory* %loadMem_40101c, %struct.Memory** %MEMORY
  %loadMem_401021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 1
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %2214 to i32*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i46
  %2219 = sub i64 %2218, 88
  %2220 = load i32, i32* %EAX.i45
  %2221 = zext i32 %2220 to i64
  %2222 = load i64, i64* %PC.i44
  %2223 = add i64 %2222, 3
  store i64 %2223, i64* %PC.i44
  %2224 = inttoptr i64 %2219 to i32*
  store i32 %2220, i32* %2224
  store %struct.Memory* %loadMem_401021, %struct.Memory** %MEMORY
  %loadMem1_401024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %PC.i43
  %2229 = add i64 %2228, -2724
  %2230 = load i64, i64* %PC.i43
  %2231 = add i64 %2230, 5
  %2232 = load i64, i64* %PC.i43
  %2233 = add i64 %2232, 5
  store i64 %2233, i64* %PC.i43
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2235 = load i64, i64* %2234, align 8
  %2236 = add i64 %2235, -8
  %2237 = inttoptr i64 %2236 to i64*
  store i64 %2231, i64* %2237
  store i64 %2236, i64* %2234, align 8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2229, i64* %2238, align 8
  store %struct.Memory* %loadMem1_401024, %struct.Memory** %MEMORY
  %loadMem2_401024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401024 = load i64, i64* %3
  %call2_401024 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_401024, %struct.Memory* %loadMem2_401024)
  store %struct.Memory* %call2_401024, %struct.Memory** %MEMORY
  br label %block_.L_401029

block_.L_401029:                                  ; preds = %block_400ffb, %block_.L_400fe9
  %loadMem_401029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 11
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RDI.i41 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 15
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2247 to i64*
  %2248 = load i64, i64* %RBP.i42
  %2249 = sub i64 %2248, 16
  %2250 = load i64, i64* %PC.i40
  %2251 = add i64 %2250, 4
  store i64 %2251, i64* %PC.i40
  %2252 = inttoptr i64 %2249 to i64*
  %2253 = load i64, i64* %2252
  store i64 %2253, i64* %RDI.i41, align 8
  store %struct.Memory* %loadMem_401029, %struct.Memory** %MEMORY
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 9
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 15
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %2262 to i64*
  %2263 = load i64, i64* %RBP.i39
  %2264 = sub i64 %2263, 24
  %2265 = load i64, i64* %PC.i38
  %2266 = add i64 %2265, 4
  store i64 %2266, i64* %PC.i38
  %2267 = inttoptr i64 %2264 to i64*
  %2268 = load i64, i64* %2267
  store i64 %2268, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40102d, %struct.Memory** %MEMORY
  %loadMem1_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %PC.i37
  %2273 = add i64 %2272, -1969
  %2274 = load i64, i64* %PC.i37
  %2275 = add i64 %2274, 5
  %2276 = load i64, i64* %PC.i37
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %PC.i37
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2279 = load i64, i64* %2278, align 8
  %2280 = add i64 %2279, -8
  %2281 = inttoptr i64 %2280 to i64*
  store i64 %2275, i64* %2281
  store i64 %2280, i64* %2278, align 8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2273, i64* %2282, align 8
  store %struct.Memory* %loadMem1_401031, %struct.Memory** %MEMORY
  %loadMem2_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401031 = load i64, i64* %3
  %call2_401031 = call %struct.Memory* @sub_400880.list_equal(%struct.State* %0, i64 %loadPC_401031, %struct.Memory* %loadMem2_401031)
  store %struct.Memory* %call2_401031, %struct.Memory** %MEMORY
  %loadMem_401036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 1
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %2288 to i32*
  %2289 = load i32, i32* %EAX.i36
  %2290 = zext i32 %2289 to i64
  %2291 = load i64, i64* %PC.i35
  %2292 = add i64 %2291, 3
  store i64 %2292, i64* %PC.i35
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2293, align 1
  %2294 = and i32 %2289, 255
  %2295 = call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2298, i8* %2299, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2300, align 1
  %2301 = icmp eq i32 %2289, 0
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2302, i8* %2303, align 1
  %2304 = lshr i32 %2289, 31
  %2305 = trunc i32 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2305, i8* %2306, align 1
  %2307 = lshr i32 %2289, 31
  %2308 = xor i32 %2304, %2307
  %2309 = add i32 %2308, %2307
  %2310 = icmp eq i32 %2309, 2
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2311, i8* %2312, align 1
  store %struct.Memory* %loadMem_401036, %struct.Memory** %MEMORY
  %loadMem_401039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %PC.i34
  %2317 = add i64 %2316, 36
  %2318 = load i64, i64* %PC.i34
  %2319 = add i64 %2318, 6
  %2320 = load i64, i64* %PC.i34
  %2321 = add i64 %2320, 6
  store i64 %2321, i64* %PC.i34
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2323 = load i8, i8* %2322, align 1
  %2324 = icmp eq i8 %2323, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %BRANCH_TAKEN, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2327 = select i1 %2324, i64 %2317, i64 %2319
  store i64 %2327, i64* %2326, align 8
  store %struct.Memory* %loadMem_401039, %struct.Memory** %MEMORY
  %loadBr_401039 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401039 = icmp eq i8 %loadBr_401039, 1
  br i1 %cmpBr_401039, label %block_.L_40105d, label %block_40103f

block_40103f:                                     ; preds = %block_.L_401029
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 11
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %RDI.i33 = bitcast %union.anon* %2333 to i64*
  %2334 = load i64, i64* %PC.i32
  %2335 = add i64 %2334, 10
  store i64 %2335, i64* %PC.i32
  store i64 4199206, i64* %RDI.i33, align 8
  store %struct.Memory* %loadMem_40103f, %struct.Memory** %MEMORY
  %loadMem_401049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %2342 = bitcast %union.anon* %2341 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2342, i32 0, i32 0
  %2343 = load i64, i64* %PC.i31
  %2344 = add i64 %2343, 2
  store i64 %2344, i64* %PC.i31
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_401049, %struct.Memory** %MEMORY
  %loadMem1_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %PC.i30
  %2349 = add i64 %2348, -2811
  %2350 = load i64, i64* %PC.i30
  %2351 = add i64 %2350, 5
  %2352 = load i64, i64* %PC.i30
  %2353 = add i64 %2352, 5
  store i64 %2353, i64* %PC.i30
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2355 = load i64, i64* %2354, align 8
  %2356 = add i64 %2355, -8
  %2357 = inttoptr i64 %2356 to i64*
  store i64 %2351, i64* %2357
  store i64 %2356, i64* %2354, align 8
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2349, i64* %2358, align 8
  store %struct.Memory* %loadMem1_40104b, %struct.Memory** %MEMORY
  %loadMem2_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40104b = load i64, i64* %3
  %call2_40104b = call %struct.Memory* @sub_400550.printf_plt(%struct.State* %0, i64 %loadPC_40104b, %struct.Memory* %loadMem2_40104b)
  store %struct.Memory* %call2_40104b, %struct.Memory** %MEMORY
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 11
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RDI.i29 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %PC.i28
  %2366 = add i64 %2365, 5
  store i64 %2366, i64* %PC.i28
  store i64 1, i64* %RDI.i29, align 8
  store %struct.Memory* %loadMem_401050, %struct.Memory** %MEMORY
  %loadMem_401055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 1
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %2372 to i32*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 15
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RBP.i27
  %2377 = sub i64 %2376, 92
  %2378 = load i32, i32* %EAX.i26
  %2379 = zext i32 %2378 to i64
  %2380 = load i64, i64* %PC.i25
  %2381 = add i64 %2380, 3
  store i64 %2381, i64* %PC.i25
  %2382 = inttoptr i64 %2377 to i32*
  store i32 %2378, i32* %2382
  store %struct.Memory* %loadMem_401055, %struct.Memory** %MEMORY
  %loadMem1_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %PC.i24
  %2387 = add i64 %2386, -2776
  %2388 = load i64, i64* %PC.i24
  %2389 = add i64 %2388, 5
  %2390 = load i64, i64* %PC.i24
  %2391 = add i64 %2390, 5
  store i64 %2391, i64* %PC.i24
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2393 = load i64, i64* %2392, align 8
  %2394 = add i64 %2393, -8
  %2395 = inttoptr i64 %2394 to i64*
  store i64 %2389, i64* %2395
  store i64 %2394, i64* %2392, align 8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2387, i64* %2396, align 8
  store %struct.Memory* %loadMem1_401058, %struct.Memory** %MEMORY
  %loadMem2_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401058 = load i64, i64* %3
  %call2_401058 = call %struct.Memory* @sub_400580.exit_plt(%struct.State* %0, i64 %loadPC_401058, %struct.Memory* %loadMem2_401058)
  store %struct.Memory* %call2_401058, %struct.Memory** %MEMORY
  br label %block_.L_40105d

block_.L_40105d:                                  ; preds = %block_40103f, %block_.L_401029
  %loadMem_40105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 11
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RDI.i22 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 15
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RBP.i23
  %2407 = sub i64 %2406, 16
  %2408 = load i64, i64* %PC.i21
  %2409 = add i64 %2408, 4
  store i64 %2409, i64* %PC.i21
  %2410 = inttoptr i64 %2407 to i64*
  %2411 = load i64, i64* %2410
  store i64 %2411, i64* %RDI.i22, align 8
  store %struct.Memory* %loadMem_40105d, %struct.Memory** %MEMORY
  %loadMem1_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2414 to i64*
  %2415 = load i64, i64* %PC.i20
  %2416 = add i64 %2415, -2257
  %2417 = load i64, i64* %PC.i20
  %2418 = add i64 %2417, 5
  %2419 = load i64, i64* %PC.i20
  %2420 = add i64 %2419, 5
  store i64 %2420, i64* %PC.i20
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2422 = load i64, i64* %2421, align 8
  %2423 = add i64 %2422, -8
  %2424 = inttoptr i64 %2423 to i64*
  store i64 %2418, i64* %2424
  store i64 %2423, i64* %2421, align 8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2416, i64* %2425, align 8
  store %struct.Memory* %loadMem1_401061, %struct.Memory** %MEMORY
  %loadMem2_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401061 = load i64, i64* %3
  %call2_401061 = call %struct.Memory* @sub_400790.list_length(%struct.State* %0, i64 %loadPC_401061, %struct.Memory* %loadMem2_401061)
  store %struct.Memory* %call2_401061, %struct.Memory** %MEMORY
  %loadMem_401066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2431 to i32*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 15
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RBP.i19
  %2436 = sub i64 %2435, 4
  %2437 = load i32, i32* %EAX.i
  %2438 = zext i32 %2437 to i64
  %2439 = load i64, i64* %PC.i18
  %2440 = add i64 %2439, 3
  store i64 %2440, i64* %PC.i18
  %2441 = inttoptr i64 %2436 to i32*
  store i32 %2437, i32* %2441
  store %struct.Memory* %loadMem_401066, %struct.Memory** %MEMORY
  %loadMem_401069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 11
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RDI.i16 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 15
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %2450 to i64*
  %2451 = load i64, i64* %RBP.i17
  %2452 = sub i64 %2451, 16
  %2453 = load i64, i64* %PC.i15
  %2454 = add i64 %2453, 4
  store i64 %2454, i64* %PC.i15
  %2455 = inttoptr i64 %2452 to i64*
  %2456 = load i64, i64* %2455
  store i64 %2456, i64* %RDI.i16, align 8
  store %struct.Memory* %loadMem_401069, %struct.Memory** %MEMORY
  %loadMem1_40106d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 33
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %PC.i14
  %2461 = add i64 %2460, -2877
  %2462 = load i64, i64* %PC.i14
  %2463 = add i64 %2462, 5
  %2464 = load i64, i64* %PC.i14
  %2465 = add i64 %2464, 5
  store i64 %2465, i64* %PC.i14
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2467 = load i64, i64* %2466, align 8
  %2468 = add i64 %2467, -8
  %2469 = inttoptr i64 %2468 to i64*
  store i64 %2463, i64* %2469
  store i64 %2468, i64* %2466, align 8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2461, i64* %2470, align 8
  store %struct.Memory* %loadMem1_40106d, %struct.Memory** %MEMORY
  %loadMem2_40106d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40106d = load i64, i64* %3
  %call2_40106d = call %struct.Memory* @sub_400530.free_plt(%struct.State* %0, i64 %loadPC_40106d, %struct.Memory* %loadMem2_40106d)
  store %struct.Memory* %call2_40106d, %struct.Memory** %MEMORY
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 11
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RDI.i12 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 15
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %RBP.i13
  %2481 = sub i64 %2480, 24
  %2482 = load i64, i64* %PC.i11
  %2483 = add i64 %2482, 4
  store i64 %2483, i64* %PC.i11
  %2484 = inttoptr i64 %2481 to i64*
  %2485 = load i64, i64* %2484
  store i64 %2485, i64* %RDI.i12, align 8
  store %struct.Memory* %loadMem_401072, %struct.Memory** %MEMORY
  %loadMem1_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 33
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %PC.i10
  %2490 = add i64 %2489, -2886
  %2491 = load i64, i64* %PC.i10
  %2492 = add i64 %2491, 5
  %2493 = load i64, i64* %PC.i10
  %2494 = add i64 %2493, 5
  store i64 %2494, i64* %PC.i10
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2496 = load i64, i64* %2495, align 8
  %2497 = add i64 %2496, -8
  %2498 = inttoptr i64 %2497 to i64*
  store i64 %2492, i64* %2498
  store i64 %2497, i64* %2495, align 8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2490, i64* %2499, align 8
  store %struct.Memory* %loadMem1_401076, %struct.Memory** %MEMORY
  %loadMem2_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401076 = load i64, i64* %3
  %call2_401076 = call %struct.Memory* @sub_400530.free_plt(%struct.State* %0, i64 %loadPC_401076, %struct.Memory* %loadMem2_401076)
  store %struct.Memory* %call2_401076, %struct.Memory** %MEMORY
  %loadMem_40107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 11
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 15
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %RBP.i9
  %2510 = sub i64 %2509, 32
  %2511 = load i64, i64* %PC.i8
  %2512 = add i64 %2511, 4
  store i64 %2512, i64* %PC.i8
  %2513 = inttoptr i64 %2510 to i64*
  %2514 = load i64, i64* %2513
  store i64 %2514, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40107b, %struct.Memory** %MEMORY
  %loadMem1_40107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %PC.i7
  %2519 = add i64 %2518, -2895
  %2520 = load i64, i64* %PC.i7
  %2521 = add i64 %2520, 5
  %2522 = load i64, i64* %PC.i7
  %2523 = add i64 %2522, 5
  store i64 %2523, i64* %PC.i7
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2525 = load i64, i64* %2524, align 8
  %2526 = add i64 %2525, -8
  %2527 = inttoptr i64 %2526 to i64*
  store i64 %2521, i64* %2527
  store i64 %2526, i64* %2524, align 8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2519, i64* %2528, align 8
  store %struct.Memory* %loadMem1_40107f, %struct.Memory** %MEMORY
  %loadMem2_40107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40107f = load i64, i64* %3
  %call2_40107f = call %struct.Memory* @sub_400530.free_plt(%struct.State* %0, i64 %loadPC_40107f, %struct.Memory* %loadMem2_40107f)
  store %struct.Memory* %call2_40107f, %struct.Memory** %MEMORY
  %loadMem_401084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 1
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 15
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %RBP.i6
  %2539 = sub i64 %2538, 4
  %2540 = load i64, i64* %PC.i5
  %2541 = add i64 %2540, 3
  store i64 %2541, i64* %PC.i5
  %2542 = inttoptr i64 %2539 to i32*
  %2543 = load i32, i32* %2542
  %2544 = zext i32 %2543 to i64
  store i64 %2544, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_401084, %struct.Memory** %MEMORY
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 13
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RSP.i
  %2552 = load i64, i64* %PC.i4
  %2553 = add i64 %2552, 4
  store i64 %2553, i64* %PC.i4
  %2554 = add i64 96, %2551
  store i64 %2554, i64* %RSP.i, align 8
  %2555 = icmp ult i64 %2554, %2551
  %2556 = icmp ult i64 %2554, 96
  %2557 = or i1 %2555, %2556
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2558, i8* %2559, align 1
  %2560 = trunc i64 %2554 to i32
  %2561 = and i32 %2560, 255
  %2562 = call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2565, i8* %2566, align 1
  %2567 = xor i64 96, %2551
  %2568 = xor i64 %2567, %2554
  %2569 = lshr i64 %2568, 4
  %2570 = trunc i64 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2571, i8* %2572, align 1
  %2573 = icmp eq i64 %2554, 0
  %2574 = zext i1 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2574, i8* %2575, align 1
  %2576 = lshr i64 %2554, 63
  %2577 = trunc i64 %2576 to i8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2577, i8* %2578, align 1
  %2579 = lshr i64 %2551, 63
  %2580 = xor i64 %2576, %2579
  %2581 = add i64 %2580, %2576
  %2582 = icmp eq i64 %2581, 2
  %2583 = zext i1 %2582 to i8
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2583, i8* %2584, align 1
  store %struct.Memory* %loadMem_401087, %struct.Memory** %MEMORY
  %loadMem_40108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 15
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %PC.i2
  %2592 = add i64 %2591, 1
  store i64 %2592, i64* %PC.i2
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2594 = load i64, i64* %2593, align 8
  %2595 = add i64 %2594, 8
  %2596 = inttoptr i64 %2594 to i64*
  %2597 = load i64, i64* %2596
  store i64 %2597, i64* %RBP.i3, align 8
  store i64 %2595, i64* %2593, align 8
  store %struct.Memory* %loadMem_40108b, %struct.Memory** %MEMORY
  %loadMem_40108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %PC.i1
  %2602 = add i64 %2601, 1
  store i64 %2602, i64* %PC.i1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2605 = load i64, i64* %2604, align 8
  %2606 = inttoptr i64 %2605 to i64*
  %2607 = load i64, i64* %2606
  store i64 %2607, i64* %2603, align 8
  %2608 = add i64 %2605, 8
  store i64 %2608, i64* %2604, align 8
  store %struct.Memory* %loadMem_40108c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40108c
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x64___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 100, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.list_sequence(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_copy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_new(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.list_equal(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_400dec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x40123d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4198973, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.exit_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400df1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.list_empty(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_setne__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = xor i64 255, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %CL, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e11(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400e36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_callq_.list_pop_head(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_push_tail(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_400e66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x401258___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199000, i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_400e6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_400e8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_pop_tail(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400ee0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x401271___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199025, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.list_reverse(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.list_first(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x64____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i32 %13, 100
  %15 = icmp ult i32 %13, 100
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
  %24 = xor i32 %13, 100
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400f29(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x40128a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199050, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.list_last(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i32 %13, 1
  %15 = icmp ult i32 %13, 1
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
  %24 = xor i32 %13, 1
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400f69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4012b4___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199092, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x4012d9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199129, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400fe9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_length(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x64___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 100
  %14 = icmp ult i32 %9, 100
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
  %23 = xor i64 100, %10
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

define %struct.Memory* @routine_je_.L_401029(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x401303___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199171, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40105d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x401326___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4199206, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
