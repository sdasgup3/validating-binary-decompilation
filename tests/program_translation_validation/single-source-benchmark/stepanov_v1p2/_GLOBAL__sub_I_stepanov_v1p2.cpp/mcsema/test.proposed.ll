; ModuleID = 'test.bc'
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
%seg_600e40__init_array_type = type <{ i64, i64 }>
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
%struct.uint8v32_t = type { [32 x i8] }
%struct.anon.2 = type { i8, i8 }
%struct.int32v8_t = type { [8 x i32] }
%struct.float32v8_t = type { [8 x float] }
%struct.uint8v8_t = type { [8 x i8] }
%struct.uint8v16_t = type { [16 x i8] }
%struct.uint16v8_t = type { [8 x i16] }
%struct.uint8v4_t = type { [4 x i8] }
%struct.int16v4_t = type { [4 x i16] }
%struct.int32v4_t = type { [4 x i32] }
%struct.uint64v2_t = type { [2 x i64] }
%struct.uint64v4_t = type { [4 x i64] }
%struct.uint128v2_t = type { [2 x i128] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.float64v4_t = type { [4 x double] }
%"class.(anonymous namespace)::BitMatrix" = type { %"class.std::bitset", [16 x [16 x i8]] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.bcd80_t = type { [9 x %union.FPUAbridgedTagWord], %union.FPUAbridgedTagWord }
%struct.FpuFSAVE = type { %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, [8 x %struct.FPUStackElem] }
%struct.anon.5 = type { i32, i32 }
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

; Function Declaraions
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)
declare void @llvm.lifetime.start(i64, i8* nocapture)
declare void @llvm.lifetime.end(i64, i8* nocapture)
declare i32 @llvm.ctpop.i32(i32)
declare i32 @llvm.bswap.i32(i32)
declare i64 @llvm.bswap.i64(i64)
declare i32 @llvm.cttz.i32(i32, i1)
declare i64 @llvm.cttz.i64(i64, i1)
declare i32 @llvm.ctlz.i32(i32, i1)
declare i64 @llvm.ctlz.i64(i64, i1)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1)
declare double @llvm.nearbyint.f64(double)
declare double @llvm.fabs.f64(double)
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>)
declare double @llvm.trunc.f64(double)
declare <4 x double> @llvm.trunc.v4f64(<4 x double>)
declare float @llvm.nearbyint.f32(float)
declare float @llvm.fabs.f32(float)
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>)
declare float @llvm.trunc.f32(float)
declare <4 x float> @llvm.trunc.v4f32(<4 x float>)
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1)

declare %struct.Memory* @sub_4005e0.__cxx_global_var_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400640.__cxx_global_var_init_6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400670.__cxx_global_var_init_7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400690.__cxx_global_var_init_8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4006b0.__cxx_global_var_init_9(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4006d0.__cxx_global_var_init_10(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4006f0.__cxx_global_var_init_11(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400710.__cxx_global_var_init_12(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400730.__cxx_global_var_init_13(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400750.__cxx_global_var_init_14(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400770.__cxx_global_var_init_15(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4007a0.__cxx_global_var_init_16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4007d0.__cxx_global_var_init_17(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400800.__cxx_global_var_init_18(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400830.__cxx_global_var_init_19(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400860.__cxx_global_var_init_20(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400890.__cxx_global_var_init_21(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4008c0.__cxx_global_var_init_22(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4008f0.__cxx_global_var_init_23(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400920.__cxx_global_var_init_24(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400950.__cxx_global_var_init_25(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400980.__cxx_global_var_init_26(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals


define %struct.Memory* @_GLOBAL__sub_I_stepanov_v1p2.cpp(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: ._GLOBAL__sub_I_stepanov_v1p2_cpp:	 RIP: 400560	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400560	 Bytes: 1
  %loadMem_400560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400560 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400560)
  store %struct.Memory* %call_400560, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400561	 Bytes: 3
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400561 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400561)
  store %struct.Memory* %call_400561, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init	 RIP: 400564	 Bytes: 5
  %loadMem1_400564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400564 = call %struct.Memory* @routine_callq_.__cxx_global_var_init(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400564, i64 124, i64 5, i64 5)
  store %struct.Memory* %call1_400564, %struct.Memory** %MEMORY

  %loadMem2_400564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400564 = load i64, i64* %3
  %call2_400564 = call %struct.Memory* @sub_4005e0.__cxx_global_var_init(%struct.State* %0, i64  %loadPC_400564, %struct.Memory* %loadMem2_400564)
  store %struct.Memory* %call2_400564, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_6	 RIP: 400569	 Bytes: 5
  %loadMem1_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400569 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_6(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400569, i64 215, i64 5, i64 5)
  store %struct.Memory* %call1_400569, %struct.Memory** %MEMORY

  %loadMem2_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400569 = load i64, i64* %3
  %call2_400569 = call %struct.Memory* @sub_400640.__cxx_global_var_init_6(%struct.State* %0, i64  %loadPC_400569, %struct.Memory* %loadMem2_400569)
  store %struct.Memory* %call2_400569, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_7	 RIP: 40056e	 Bytes: 5
  %loadMem1_40056e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40056e = call %struct.Memory* @routine_callq_.__cxx_global_var_init_7(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40056e, i64 258, i64 5, i64 5)
  store %struct.Memory* %call1_40056e, %struct.Memory** %MEMORY

  %loadMem2_40056e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40056e = load i64, i64* %3
  %call2_40056e = call %struct.Memory* @sub_400670.__cxx_global_var_init_7(%struct.State* %0, i64  %loadPC_40056e, %struct.Memory* %loadMem2_40056e)
  store %struct.Memory* %call2_40056e, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_8	 RIP: 400573	 Bytes: 5
  %loadMem1_400573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400573 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_8(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400573, i64 285, i64 5, i64 5)
  store %struct.Memory* %call1_400573, %struct.Memory** %MEMORY

  %loadMem2_400573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400573 = load i64, i64* %3
  %call2_400573 = call %struct.Memory* @sub_400690.__cxx_global_var_init_8(%struct.State* %0, i64  %loadPC_400573, %struct.Memory* %loadMem2_400573)
  store %struct.Memory* %call2_400573, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_9	 RIP: 400578	 Bytes: 5
  %loadMem1_400578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400578 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_9(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400578, i64 312, i64 5, i64 5)
  store %struct.Memory* %call1_400578, %struct.Memory** %MEMORY

  %loadMem2_400578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400578 = load i64, i64* %3
  %call2_400578 = call %struct.Memory* @sub_4006b0.__cxx_global_var_init_9(%struct.State* %0, i64  %loadPC_400578, %struct.Memory* %loadMem2_400578)
  store %struct.Memory* %call2_400578, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_10	 RIP: 40057d	 Bytes: 5
  %loadMem1_40057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40057d = call %struct.Memory* @routine_callq_.__cxx_global_var_init_10(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40057d, i64 339, i64 5, i64 5)
  store %struct.Memory* %call1_40057d, %struct.Memory** %MEMORY

  %loadMem2_40057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40057d = load i64, i64* %3
  %call2_40057d = call %struct.Memory* @sub_4006d0.__cxx_global_var_init_10(%struct.State* %0, i64  %loadPC_40057d, %struct.Memory* %loadMem2_40057d)
  store %struct.Memory* %call2_40057d, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_11	 RIP: 400582	 Bytes: 5
  %loadMem1_400582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400582 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_11(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400582, i64 366, i64 5, i64 5)
  store %struct.Memory* %call1_400582, %struct.Memory** %MEMORY

  %loadMem2_400582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400582 = load i64, i64* %3
  %call2_400582 = call %struct.Memory* @sub_4006f0.__cxx_global_var_init_11(%struct.State* %0, i64  %loadPC_400582, %struct.Memory* %loadMem2_400582)
  store %struct.Memory* %call2_400582, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_12	 RIP: 400587	 Bytes: 5
  %loadMem1_400587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400587 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_12(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400587, i64 393, i64 5, i64 5)
  store %struct.Memory* %call1_400587, %struct.Memory** %MEMORY

  %loadMem2_400587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400587 = load i64, i64* %3
  %call2_400587 = call %struct.Memory* @sub_400710.__cxx_global_var_init_12(%struct.State* %0, i64  %loadPC_400587, %struct.Memory* %loadMem2_400587)
  store %struct.Memory* %call2_400587, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_13	 RIP: 40058c	 Bytes: 5
  %loadMem1_40058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40058c = call %struct.Memory* @routine_callq_.__cxx_global_var_init_13(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40058c, i64 420, i64 5, i64 5)
  store %struct.Memory* %call1_40058c, %struct.Memory** %MEMORY

  %loadMem2_40058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40058c = load i64, i64* %3
  %call2_40058c = call %struct.Memory* @sub_400730.__cxx_global_var_init_13(%struct.State* %0, i64  %loadPC_40058c, %struct.Memory* %loadMem2_40058c)
  store %struct.Memory* %call2_40058c, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_14	 RIP: 400591	 Bytes: 5
  %loadMem1_400591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400591 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_14(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400591, i64 447, i64 5, i64 5)
  store %struct.Memory* %call1_400591, %struct.Memory** %MEMORY

  %loadMem2_400591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400591 = load i64, i64* %3
  %call2_400591 = call %struct.Memory* @sub_400750.__cxx_global_var_init_14(%struct.State* %0, i64  %loadPC_400591, %struct.Memory* %loadMem2_400591)
  store %struct.Memory* %call2_400591, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_15	 RIP: 400596	 Bytes: 5
  %loadMem1_400596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400596 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_15(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400596, i64 474, i64 5, i64 5)
  store %struct.Memory* %call1_400596, %struct.Memory** %MEMORY

  %loadMem2_400596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400596 = load i64, i64* %3
  %call2_400596 = call %struct.Memory* @sub_400770.__cxx_global_var_init_15(%struct.State* %0, i64  %loadPC_400596, %struct.Memory* %loadMem2_400596)
  store %struct.Memory* %call2_400596, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_16	 RIP: 40059b	 Bytes: 5
  %loadMem1_40059b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40059b = call %struct.Memory* @routine_callq_.__cxx_global_var_init_16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40059b, i64 517, i64 5, i64 5)
  store %struct.Memory* %call1_40059b, %struct.Memory** %MEMORY

  %loadMem2_40059b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40059b = load i64, i64* %3
  %call2_40059b = call %struct.Memory* @sub_4007a0.__cxx_global_var_init_16(%struct.State* %0, i64  %loadPC_40059b, %struct.Memory* %loadMem2_40059b)
  store %struct.Memory* %call2_40059b, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_17	 RIP: 4005a0	 Bytes: 5
  %loadMem1_4005a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005a0 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_17(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005a0, i64 560, i64 5, i64 5)
  store %struct.Memory* %call1_4005a0, %struct.Memory** %MEMORY

  %loadMem2_4005a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005a0 = load i64, i64* %3
  %call2_4005a0 = call %struct.Memory* @sub_4007d0.__cxx_global_var_init_17(%struct.State* %0, i64  %loadPC_4005a0, %struct.Memory* %loadMem2_4005a0)
  store %struct.Memory* %call2_4005a0, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_18	 RIP: 4005a5	 Bytes: 5
  %loadMem1_4005a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005a5 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_18(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005a5, i64 603, i64 5, i64 5)
  store %struct.Memory* %call1_4005a5, %struct.Memory** %MEMORY

  %loadMem2_4005a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005a5 = load i64, i64* %3
  %call2_4005a5 = call %struct.Memory* @sub_400800.__cxx_global_var_init_18(%struct.State* %0, i64  %loadPC_4005a5, %struct.Memory* %loadMem2_4005a5)
  store %struct.Memory* %call2_4005a5, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_19	 RIP: 4005aa	 Bytes: 5
  %loadMem1_4005aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005aa = call %struct.Memory* @routine_callq_.__cxx_global_var_init_19(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005aa, i64 646, i64 5, i64 5)
  store %struct.Memory* %call1_4005aa, %struct.Memory** %MEMORY

  %loadMem2_4005aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005aa = load i64, i64* %3
  %call2_4005aa = call %struct.Memory* @sub_400830.__cxx_global_var_init_19(%struct.State* %0, i64  %loadPC_4005aa, %struct.Memory* %loadMem2_4005aa)
  store %struct.Memory* %call2_4005aa, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_20	 RIP: 4005af	 Bytes: 5
  %loadMem1_4005af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005af = call %struct.Memory* @routine_callq_.__cxx_global_var_init_20(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005af, i64 689, i64 5, i64 5)
  store %struct.Memory* %call1_4005af, %struct.Memory** %MEMORY

  %loadMem2_4005af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005af = load i64, i64* %3
  %call2_4005af = call %struct.Memory* @sub_400860.__cxx_global_var_init_20(%struct.State* %0, i64  %loadPC_4005af, %struct.Memory* %loadMem2_4005af)
  store %struct.Memory* %call2_4005af, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_21	 RIP: 4005b4	 Bytes: 5
  %loadMem1_4005b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005b4 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_21(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005b4, i64 732, i64 5, i64 5)
  store %struct.Memory* %call1_4005b4, %struct.Memory** %MEMORY

  %loadMem2_4005b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005b4 = load i64, i64* %3
  %call2_4005b4 = call %struct.Memory* @sub_400890.__cxx_global_var_init_21(%struct.State* %0, i64  %loadPC_4005b4, %struct.Memory* %loadMem2_4005b4)
  store %struct.Memory* %call2_4005b4, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_22	 RIP: 4005b9	 Bytes: 5
  %loadMem1_4005b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005b9 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_22(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005b9, i64 775, i64 5, i64 5)
  store %struct.Memory* %call1_4005b9, %struct.Memory** %MEMORY

  %loadMem2_4005b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005b9 = load i64, i64* %3
  %call2_4005b9 = call %struct.Memory* @sub_4008c0.__cxx_global_var_init_22(%struct.State* %0, i64  %loadPC_4005b9, %struct.Memory* %loadMem2_4005b9)
  store %struct.Memory* %call2_4005b9, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_23	 RIP: 4005be	 Bytes: 5
  %loadMem1_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005be = call %struct.Memory* @routine_callq_.__cxx_global_var_init_23(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005be, i64 818, i64 5, i64 5)
  store %struct.Memory* %call1_4005be, %struct.Memory** %MEMORY

  %loadMem2_4005be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005be = load i64, i64* %3
  %call2_4005be = call %struct.Memory* @sub_4008f0.__cxx_global_var_init_23(%struct.State* %0, i64  %loadPC_4005be, %struct.Memory* %loadMem2_4005be)
  store %struct.Memory* %call2_4005be, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_24	 RIP: 4005c3	 Bytes: 5
  %loadMem1_4005c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005c3 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_24(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005c3, i64 861, i64 5, i64 5)
  store %struct.Memory* %call1_4005c3, %struct.Memory** %MEMORY

  %loadMem2_4005c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005c3 = load i64, i64* %3
  %call2_4005c3 = call %struct.Memory* @sub_400920.__cxx_global_var_init_24(%struct.State* %0, i64  %loadPC_4005c3, %struct.Memory* %loadMem2_4005c3)
  store %struct.Memory* %call2_4005c3, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_25	 RIP: 4005c8	 Bytes: 5
  %loadMem1_4005c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005c8 = call %struct.Memory* @routine_callq_.__cxx_global_var_init_25(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005c8, i64 904, i64 5, i64 5)
  store %struct.Memory* %call1_4005c8, %struct.Memory** %MEMORY

  %loadMem2_4005c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005c8 = load i64, i64* %3
  %call2_4005c8 = call %struct.Memory* @sub_400950.__cxx_global_var_init_25(%struct.State* %0, i64  %loadPC_4005c8, %struct.Memory* %loadMem2_4005c8)
  store %struct.Memory* %call2_4005c8, %struct.Memory** %MEMORY

  ; Code: callq .__cxx_global_var_init_26	 RIP: 4005cd	 Bytes: 5
  %loadMem1_4005cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4005cd = call %struct.Memory* @routine_callq_.__cxx_global_var_init_26(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4005cd, i64 947, i64 5, i64 5)
  store %struct.Memory* %call1_4005cd, %struct.Memory** %MEMORY

  %loadMem2_4005cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005cd = load i64, i64* %3
  %call2_4005cd = call %struct.Memory* @sub_400980.__cxx_global_var_init_26(%struct.State* %0, i64  %loadPC_4005cd, %struct.Memory* %loadMem2_4005cd)
  store %struct.Memory* %call2_4005cd, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4005d2	 Bytes: 1
  %loadMem_4005d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d2)
  store %struct.Memory* %call_4005d2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4005d3	 Bytes: 1
  %loadMem_4005d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d3)
  store %struct.Memory* %call_4005d3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4005d3
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBP, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8
  store i64 %7, i64* %5, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %9, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_callq_.__cxx_global_var_init(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.__cxx_global_var_init_26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBP)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6
  store i64 %7, i64* %3, align 8
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}

