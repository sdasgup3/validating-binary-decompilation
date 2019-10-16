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
declare i32 @llvm.ctpop.i32(i32) #2
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_400bb0.init_array(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_400dd0.kernel_3mm(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4010b0.kernel_3mm_StrictFP(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_401390.check_FP(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4014c0.print_array(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4005f0.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Data Access Globals


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 400940	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400940	 Bytes: 1
  %loadMem_400940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400940 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400940)
  store %struct.Memory* %call_400940, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400941	 Bytes: 3
  %loadMem_400941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400941 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400941)
  store %struct.Memory* %call_400941, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 400944	 Bytes: 2
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400944 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400944)
  store %struct.Memory* %call_400944, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 400946	 Bytes: 2
  %loadMem_400946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400946 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400946)
  store %struct.Memory* %call_400946, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 400948	 Bytes: 1
  %loadMem_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400948 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400948)
  store %struct.Memory* %call_400948, %struct.Memory** %MEMORY

  ; Code: subq $0x98, %rsp	 RIP: 400949	 Bytes: 7
  %loadMem_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400949 = call %struct.Memory* @routine_subq__0x98___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400949)
  store %struct.Memory* %call_400949, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %eax	 RIP: 400950	 Bytes: 5
  %loadMem_400950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400950 = call %struct.Memory* @routine_movl__0x100000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400950)
  store %struct.Memory* %call_400950, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 400955	 Bytes: 2
  %loadMem_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400955 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400955)
  store %struct.Memory* %call_400955, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %eax	 RIP: 400957	 Bytes: 5
  %loadMem_400957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400957 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400957)
  store %struct.Memory* %call_400957, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40095c	 Bytes: 7
  %loadMem_40095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095c = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095c)
  store %struct.Memory* %call_40095c, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x20(%rbp)	 RIP: 400963	 Bytes: 3
  %loadMem_400963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400963 = call %struct.Memory* @routine_movl__edi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400963)
  store %struct.Memory* %call_400963, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 400966	 Bytes: 4
  %loadMem_400966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400966 = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400966)
  store %struct.Memory* %call_400966, %struct.Memory** %MEMORY

  ; Code: movl $0x400, -0x2c(%rbp)	 RIP: 40096a	 Bytes: 7
  %loadMem_40096a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096a = call %struct.Memory* @routine_movl__0x400__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096a)
  store %struct.Memory* %call_40096a, %struct.Memory** %MEMORY

  ; Code: movl $0x400, -0x30(%rbp)	 RIP: 400971	 Bytes: 7
  %loadMem_400971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400971 = call %struct.Memory* @routine_movl__0x400__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400971)
  store %struct.Memory* %call_400971, %struct.Memory** %MEMORY

  ; Code: movl $0x400, -0x34(%rbp)	 RIP: 400978	 Bytes: 7
  %loadMem_400978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400978 = call %struct.Memory* @routine_movl__0x400__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400978)
  store %struct.Memory* %call_400978, %struct.Memory** %MEMORY

  ; Code: movl $0x400, -0x38(%rbp)	 RIP: 40097f	 Bytes: 7
  %loadMem_40097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097f = call %struct.Memory* @routine_movl__0x400__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097f)
  store %struct.Memory* %call_40097f, %struct.Memory** %MEMORY

  ; Code: movl $0x400, -0x3c(%rbp)	 RIP: 400986	 Bytes: 7
  %loadMem_400986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400986 = call %struct.Memory* @routine_movl__0x400__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400986)
  store %struct.Memory* %call_400986, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 40098d	 Bytes: 3
  %loadMem_40098d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098d)
  store %struct.Memory* %call_40098d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 400990	 Bytes: 2
  %loadMem_400990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400990 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400990)
  store %struct.Memory* %call_400990, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 400992	 Bytes: 5
  %loadMem1_400992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400992 = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400992, i64 -274, i64 5, i64 5)
  store %struct.Memory* %call1_400992, %struct.Memory** %MEMORY

  %loadMem2_400992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400992 = load i64, i64* %3
  %call2_400992 = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_400992, %struct.Memory* %loadMem2_400992)
  store %struct.Memory* %call2_400992, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 400997	 Bytes: 5
  %loadMem_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400997 = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400997)
  store %struct.Memory* %call_400997, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 40099c	 Bytes: 2
  %loadMem_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099c = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099c)
  store %struct.Memory* %call_40099c, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 40099e	 Bytes: 5
  %loadMem_40099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099e = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099e)
  store %struct.Memory* %call_40099e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4009a3	 Bytes: 4
  %loadMem_4009a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a3 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a3)
  store %struct.Memory* %call_4009a3, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 4009a7	 Bytes: 5
  %loadMem1_4009a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009a7 = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009a7, i64 -295, i64 5, i64 5)
  store %struct.Memory* %call1_4009a7, %struct.Memory** %MEMORY

  %loadMem2_4009a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009a7 = load i64, i64* %3
  %call2_4009a7 = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_4009a7, %struct.Memory* %loadMem2_4009a7)
  store %struct.Memory* %call2_4009a7, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 4009ac	 Bytes: 5
  %loadMem_4009ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ac = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ac)
  store %struct.Memory* %call_4009ac, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 4009b1	 Bytes: 2
  %loadMem_4009b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b1 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b1)
  store %struct.Memory* %call_4009b1, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 4009b3	 Bytes: 5
  %loadMem_4009b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b3 = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b3)
  store %struct.Memory* %call_4009b3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 4009b8	 Bytes: 4
  %loadMem_4009b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b8 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b8)
  store %struct.Memory* %call_4009b8, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 4009bc	 Bytes: 5
  %loadMem1_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009bc = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009bc, i64 -316, i64 5, i64 5)
  store %struct.Memory* %call1_4009bc, %struct.Memory** %MEMORY

  %loadMem2_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009bc = load i64, i64* %3
  %call2_4009bc = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_4009bc, %struct.Memory* %loadMem2_4009bc)
  store %struct.Memory* %call2_4009bc, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 4009c1	 Bytes: 5
  %loadMem_4009c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c1 = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c1)
  store %struct.Memory* %call_4009c1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 4009c6	 Bytes: 2
  %loadMem_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c6 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c6)
  store %struct.Memory* %call_4009c6, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 4009c8	 Bytes: 5
  %loadMem_4009c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c8 = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c8)
  store %struct.Memory* %call_4009c8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 4009cd	 Bytes: 4
  %loadMem_4009cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cd = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cd)
  store %struct.Memory* %call_4009cd, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 4009d1	 Bytes: 5
  %loadMem1_4009d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009d1 = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009d1, i64 -337, i64 5, i64 5)
  store %struct.Memory* %call1_4009d1, %struct.Memory** %MEMORY

  %loadMem2_4009d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009d1 = load i64, i64* %3
  %call2_4009d1 = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_4009d1, %struct.Memory* %loadMem2_4009d1)
  store %struct.Memory* %call2_4009d1, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 4009d6	 Bytes: 5
  %loadMem_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d6 = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d6)
  store %struct.Memory* %call_4009d6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 4009db	 Bytes: 2
  %loadMem_4009db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009db = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009db)
  store %struct.Memory* %call_4009db, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 4009dd	 Bytes: 5
  %loadMem_4009dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009dd = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009dd)
  store %struct.Memory* %call_4009dd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 4009e2	 Bytes: 4
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e2 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e2)
  store %struct.Memory* %call_4009e2, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 4009e6	 Bytes: 5
  %loadMem1_4009e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009e6 = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009e6, i64 -358, i64 5, i64 5)
  store %struct.Memory* %call1_4009e6, %struct.Memory** %MEMORY

  %loadMem2_4009e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009e6 = load i64, i64* %3
  %call2_4009e6 = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_4009e6, %struct.Memory* %loadMem2_4009e6)
  store %struct.Memory* %call2_4009e6, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 4009eb	 Bytes: 5
  %loadMem_4009eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009eb = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009eb)
  store %struct.Memory* %call_4009eb, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 4009f0	 Bytes: 2
  %loadMem_4009f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f0 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f0)
  store %struct.Memory* %call_4009f0, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 4009f2	 Bytes: 5
  %loadMem_4009f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f2 = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f2)
  store %struct.Memory* %call_4009f2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 4009f7	 Bytes: 4
  %loadMem_4009f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f7 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f7)
  store %struct.Memory* %call_4009f7, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 4009fb	 Bytes: 5
  %loadMem1_4009fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009fb = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009fb, i64 -379, i64 5, i64 5)
  store %struct.Memory* %call1_4009fb, %struct.Memory** %MEMORY

  %loadMem2_4009fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009fb = load i64, i64* %3
  %call2_4009fb = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_4009fb, %struct.Memory* %loadMem2_4009fb)
  store %struct.Memory* %call2_4009fb, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 400a00	 Bytes: 5
  %loadMem_400a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a00 = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a00)
  store %struct.Memory* %call_400a00, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 400a05	 Bytes: 2
  %loadMem_400a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a05 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a05)
  store %struct.Memory* %call_400a05, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 400a07	 Bytes: 5
  %loadMem_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a07 = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a07)
  store %struct.Memory* %call_400a07, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 400a0c	 Bytes: 4
  %loadMem_400a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0c = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0c)
  store %struct.Memory* %call_400a0c, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 400a10	 Bytes: 5
  %loadMem1_400a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400a10 = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400a10, i64 -400, i64 5, i64 5)
  store %struct.Memory* %call1_400a10, %struct.Memory** %MEMORY

  %loadMem2_400a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a10 = load i64, i64* %3
  %call2_400a10 = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_400a10, %struct.Memory* %loadMem2_400a10)
  store %struct.Memory* %call2_400a10, %struct.Memory** %MEMORY

  ; Code: movl $0x100000, %esi	 RIP: 400a15	 Bytes: 5
  %loadMem_400a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a15 = call %struct.Memory* @routine_movl__0x100000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a15)
  store %struct.Memory* %call_400a15, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 400a1a	 Bytes: 2
  %loadMem_400a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1a = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1a)
  store %struct.Memory* %call_400a1a, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %esi	 RIP: 400a1c	 Bytes: 5
  %loadMem_400a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1c = call %struct.Memory* @routine_movl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1c)
  store %struct.Memory* %call_400a1c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 400a21	 Bytes: 4
  %loadMem_400a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a21 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a21)
  store %struct.Memory* %call_400a21, %struct.Memory** %MEMORY

  ; Code: callq .polybench_alloc_data	 RIP: 400a25	 Bytes: 5
  %loadMem1_400a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400a25 = call %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400a25, i64 -421, i64 5, i64 5)
  store %struct.Memory* %call1_400a25, %struct.Memory** %MEMORY

  %loadMem2_400a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a25 = load i64, i64* %3
  %call2_400a25 = call %struct.Memory* @sub_400880.polybench_alloc_data(%struct.State* %0, i64  %loadPC_400a25, %struct.Memory* %loadMem2_400a25)
  store %struct.Memory* %call2_400a25, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 400a2a	 Bytes: 4
  %loadMem_400a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2a = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2a)
  store %struct.Memory* %call_400a2a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 400a2e	 Bytes: 3
  %loadMem_400a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2e)
  store %struct.Memory* %call_400a2e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 400a31	 Bytes: 3
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a31 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a31)
  store %struct.Memory* %call_400a31, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 400a34	 Bytes: 3
  %loadMem_400a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a34 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a34)
  store %struct.Memory* %call_400a34, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 400a37	 Bytes: 3
  %loadMem_400a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a37 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a37)
  store %struct.Memory* %call_400a37, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 400a3a	 Bytes: 4
  %loadMem_400a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3a = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3a)
  store %struct.Memory* %call_400a3a, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %r9	 RIP: 400a3e	 Bytes: 4
  %loadMem_400a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3e)
  store %struct.Memory* %call_400a3e, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 400a42	 Bytes: 4
  %loadMem_400a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a42 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a42)
  store %struct.Memory* %call_400a42, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %r10	 RIP: 400a46	 Bytes: 4
  %loadMem_400a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a46 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a46)
  store %struct.Memory* %call_400a46, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r11	 RIP: 400a4a	 Bytes: 4
  %loadMem_400a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4a = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4a)
  store %struct.Memory* %call_400a4a, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 400a4e	 Bytes: 4
  %loadMem_400a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4e = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4e)
  store %struct.Memory* %call_400a4e, %struct.Memory** %MEMORY

  ; Code: movq %r10, 0x8(%rsp)	 RIP: 400a52	 Bytes: 5
  %loadMem_400a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a52 = call %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a52)
  store %struct.Memory* %call_400a52, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x10(%rsp)	 RIP: 400a57	 Bytes: 5
  %loadMem_400a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a57 = call %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a57)
  store %struct.Memory* %call_400a57, %struct.Memory** %MEMORY

  ; Code: callq .init_array	 RIP: 400a5c	 Bytes: 5
  %loadMem1_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400a5c = call %struct.Memory* @routine_callq_.init_array(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400a5c, i64 340, i64 5, i64 5)
  store %struct.Memory* %call1_400a5c, %struct.Memory** %MEMORY

  %loadMem2_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a5c = load i64, i64* %3
  %call2_400a5c = call %struct.Memory* @sub_400bb0.init_array(%struct.State* %0, i64  %loadPC_400a5c, %struct.Memory* %loadMem2_400a5c)
  store %struct.Memory* %call2_400a5c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 400a61	 Bytes: 3
  %loadMem_400a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a61 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a61)
  store %struct.Memory* %call_400a61, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 400a64	 Bytes: 3
  %loadMem_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a64 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a64)
  store %struct.Memory* %call_400a64, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 400a67	 Bytes: 3
  %loadMem_400a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a67 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a67)
  store %struct.Memory* %call_400a67, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 400a6a	 Bytes: 3
  %loadMem_400a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6a)
  store %struct.Memory* %call_400a6a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 400a6d	 Bytes: 4
  %loadMem_400a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6d)
  store %struct.Memory* %call_400a6d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %r9	 RIP: 400a71	 Bytes: 4
  %loadMem_400a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a71 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a71)
  store %struct.Memory* %call_400a71, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 400a75	 Bytes: 4
  %loadMem_400a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a75 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a75)
  store %struct.Memory* %call_400a75, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %r10	 RIP: 400a79	 Bytes: 4
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a79 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a79)
  store %struct.Memory* %call_400a79, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %r11	 RIP: 400a7d	 Bytes: 4
  %loadMem_400a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7d = call %struct.Memory* @routine_movq_MINUS0x60__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7d)
  store %struct.Memory* %call_400a7d, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rbx	 RIP: 400a81	 Bytes: 4
  %loadMem_400a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a81 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a81)
  store %struct.Memory* %call_400a81, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r14	 RIP: 400a85	 Bytes: 4
  %loadMem_400a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a85 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a85)
  store %struct.Memory* %call_400a85, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %r15	 RIP: 400a89	 Bytes: 4
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a89 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a89)
  store %struct.Memory* %call_400a89, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 400a8d	 Bytes: 4
  %loadMem_400a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8d = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8d)
  store %struct.Memory* %call_400a8d, %struct.Memory** %MEMORY

  ; Code: movq %r10, 0x8(%rsp)	 RIP: 400a91	 Bytes: 5
  %loadMem_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a91 = call %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a91)
  store %struct.Memory* %call_400a91, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x10(%rsp)	 RIP: 400a96	 Bytes: 5
  %loadMem_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a96 = call %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a96)
  store %struct.Memory* %call_400a96, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x18(%rsp)	 RIP: 400a9b	 Bytes: 5
  %loadMem_400a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9b = call %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9b)
  store %struct.Memory* %call_400a9b, %struct.Memory** %MEMORY

  ; Code: movq %r14, 0x20(%rsp)	 RIP: 400aa0	 Bytes: 5
  %loadMem_400aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa0 = call %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa0)
  store %struct.Memory* %call_400aa0, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x28(%rsp)	 RIP: 400aa5	 Bytes: 5
  %loadMem_400aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa5 = call %struct.Memory* @routine_movq__r15__0x28__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa5)
  store %struct.Memory* %call_400aa5, %struct.Memory** %MEMORY

  ; Code: callq .kernel_3mm	 RIP: 400aaa	 Bytes: 5
  %loadMem1_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400aaa = call %struct.Memory* @routine_callq_.kernel_3mm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400aaa, i64 806, i64 5, i64 5)
  store %struct.Memory* %call1_400aaa, %struct.Memory** %MEMORY

  %loadMem2_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aaa = load i64, i64* %3
  %call2_400aaa = call %struct.Memory* @sub_400dd0.kernel_3mm(%struct.State* %0, i64  %loadPC_400aaa, %struct.Memory* %loadMem2_400aaa)
  store %struct.Memory* %call2_400aaa, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 400aaf	 Bytes: 3
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaf)
  store %struct.Memory* %call_400aaf, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 400ab2	 Bytes: 3
  %loadMem_400ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab2)
  store %struct.Memory* %call_400ab2, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 400ab5	 Bytes: 3
  %loadMem_400ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab5 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab5)
  store %struct.Memory* %call_400ab5, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 400ab8	 Bytes: 3
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab8 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab8)
  store %struct.Memory* %call_400ab8, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 400abb	 Bytes: 4
  %loadMem_400abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abb = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abb)
  store %struct.Memory* %call_400abb, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %r9	 RIP: 400abf	 Bytes: 4
  %loadMem_400abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abf)
  store %struct.Memory* %call_400abf, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 400ac3	 Bytes: 4
  %loadMem_400ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac3 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac3)
  store %struct.Memory* %call_400ac3, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %r10	 RIP: 400ac7	 Bytes: 4
  %loadMem_400ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac7 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac7)
  store %struct.Memory* %call_400ac7, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %r11	 RIP: 400acb	 Bytes: 4
  %loadMem_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400acb = call %struct.Memory* @routine_movq_MINUS0x60__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400acb)
  store %struct.Memory* %call_400acb, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rbx	 RIP: 400acf	 Bytes: 4
  %loadMem_400acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400acf = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400acf)
  store %struct.Memory* %call_400acf, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %r14	 RIP: 400ad3	 Bytes: 4
  %loadMem_400ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad3 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad3)
  store %struct.Memory* %call_400ad3, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %r15	 RIP: 400ad7	 Bytes: 4
  %loadMem_400ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad7 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad7)
  store %struct.Memory* %call_400ad7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 400adb	 Bytes: 4
  %loadMem_400adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400adb = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400adb)
  store %struct.Memory* %call_400adb, %struct.Memory** %MEMORY

  ; Code: movq %r10, 0x8(%rsp)	 RIP: 400adf	 Bytes: 5
  %loadMem_400adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400adf = call %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400adf)
  store %struct.Memory* %call_400adf, %struct.Memory** %MEMORY

  ; Code: movq %r11, 0x10(%rsp)	 RIP: 400ae4	 Bytes: 5
  %loadMem_400ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae4 = call %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae4)
  store %struct.Memory* %call_400ae4, %struct.Memory** %MEMORY

  ; Code: movq %rbx, 0x18(%rsp)	 RIP: 400ae9	 Bytes: 5
  %loadMem_400ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae9 = call %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae9)
  store %struct.Memory* %call_400ae9, %struct.Memory** %MEMORY

  ; Code: movq %r14, 0x20(%rsp)	 RIP: 400aee	 Bytes: 5
  %loadMem_400aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aee = call %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aee)
  store %struct.Memory* %call_400aee, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x28(%rsp)	 RIP: 400af3	 Bytes: 5
  %loadMem_400af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af3 = call %struct.Memory* @routine_movq__r15__0x28__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af3)
  store %struct.Memory* %call_400af3, %struct.Memory** %MEMORY

  ; Code: callq .kernel_3mm_StrictFP	 RIP: 400af8	 Bytes: 5
  %loadMem1_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400af8 = call %struct.Memory* @routine_callq_.kernel_3mm_StrictFP(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400af8, i64 1464, i64 5, i64 5)
  store %struct.Memory* %call1_400af8, %struct.Memory** %MEMORY

  %loadMem2_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400af8 = load i64, i64* %3
  %call2_400af8 = call %struct.Memory* @sub_4010b0.kernel_3mm_StrictFP(%struct.State* %0, i64  %loadPC_400af8, %struct.Memory* %loadMem2_400af8)
  store %struct.Memory* %call2_400af8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 400afd	 Bytes: 3
  %loadMem_400afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afd = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afd)
  store %struct.Memory* %call_400afd, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400b00	 Bytes: 3
  %loadMem_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b00 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b00)
  store %struct.Memory* %call_400b00, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rdx	 RIP: 400b03	 Bytes: 4
  %loadMem_400b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b03 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b03)
  store %struct.Memory* %call_400b03, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 400b07	 Bytes: 4
  %loadMem_400b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b07 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b07)
  store %struct.Memory* %call_400b07, %struct.Memory** %MEMORY

  ; Code: callq .check_FP	 RIP: 400b0b	 Bytes: 5
  %loadMem1_400b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b0b = call %struct.Memory* @routine_callq_.check_FP(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b0b, i64 2181, i64 5, i64 5)
  store %struct.Memory* %call1_400b0b, %struct.Memory** %MEMORY

  %loadMem2_400b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b0b = load i64, i64* %3
  %call2_400b0b = call %struct.Memory* @sub_401390.check_FP(%struct.State* %0, i64  %loadPC_400b0b, %struct.Memory* %loadMem2_400b0b)
  store %struct.Memory* %call2_400b0b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 400b10	 Bytes: 3
  %loadMem_400b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b10 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b10)
  store %struct.Memory* %call_400b10, %struct.Memory** %MEMORY

  ; Code: jne .L_400b25	 RIP: 400b13	 Bytes: 6
  %loadMem_400b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b13 = call %struct.Memory* @routine_jne_.L_400b25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b13, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_400b13, %struct.Memory** %MEMORY

  %loadBr_400b13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b13 = icmp eq i8 %loadBr_400b13, 1
  br i1 %cmpBr_400b13, label %block_.L_400b25, label %block_400b19

block_400b19:
  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 400b19	 Bytes: 7
  %loadMem_400b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b19 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b19)
  store %struct.Memory* %call_400b19, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b9b	 RIP: 400b20	 Bytes: 5
  %loadMem_400b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b20 = call %struct.Memory* @routine_jmpq_.L_400b9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b20, i64 123, i64 5)
  store %struct.Memory* %call_400b20, %struct.Memory** %MEMORY

  br label %block_.L_400b9b

  ; Code: .L_400b25:	 RIP: 400b25	 Bytes: 0
block_.L_400b25:

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 400b25	 Bytes: 3
  %loadMem_400b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b25 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b25)
  store %struct.Memory* %call_400b25, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 400b28	 Bytes: 3
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b28 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b28)
  store %struct.Memory* %call_400b28, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rdx	 RIP: 400b2b	 Bytes: 4
  %loadMem_400b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2b = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2b)
  store %struct.Memory* %call_400b2b, %struct.Memory** %MEMORY

  ; Code: callq .print_array	 RIP: 400b2f	 Bytes: 5
  %loadMem1_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b2f = call %struct.Memory* @routine_callq_.print_array(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b2f, i64 2449, i64 5, i64 5)
  store %struct.Memory* %call1_400b2f, %struct.Memory** %MEMORY

  %loadMem2_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b2f = load i64, i64* %3
  %call2_400b2f = call %struct.Memory* @sub_4014c0.print_array(%struct.State* %0, i64  %loadPC_400b2f, %struct.Memory* %loadMem2_400b2f)
  store %struct.Memory* %call2_400b2f, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 400b34	 Bytes: 4
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b34 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b34)
  store %struct.Memory* %call_400b34, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b38	 Bytes: 3
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b38 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b38)
  store %struct.Memory* %call_400b38, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b3b	 Bytes: 5
  %loadMem1_400b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b3b = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b3b, i64 -1355, i64 5, i64 5)
  store %struct.Memory* %call1_400b3b, %struct.Memory** %MEMORY

  %loadMem2_400b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b3b = load i64, i64* %3
  %call2_400b3b = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b3b, %struct.Memory* %loadMem2_400b3b)
  store %struct.Memory* %call2_400b3b, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdx	 RIP: 400b40	 Bytes: 4
  %loadMem_400b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b40 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b40)
  store %struct.Memory* %call_400b40, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b44	 Bytes: 3
  %loadMem_400b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b44 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b44)
  store %struct.Memory* %call_400b44, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b47	 Bytes: 5
  %loadMem1_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b47 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b47, i64 -1367, i64 5, i64 5)
  store %struct.Memory* %call1_400b47, %struct.Memory** %MEMORY

  %loadMem2_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b47 = load i64, i64* %3
  %call2_400b47 = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b47, %struct.Memory* %loadMem2_400b47)
  store %struct.Memory* %call2_400b47, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdx	 RIP: 400b4c	 Bytes: 4
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4c = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4c)
  store %struct.Memory* %call_400b4c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b50	 Bytes: 3
  %loadMem_400b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b50 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b50)
  store %struct.Memory* %call_400b50, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b53	 Bytes: 5
  %loadMem1_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b53 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b53, i64 -1379, i64 5, i64 5)
  store %struct.Memory* %call1_400b53, %struct.Memory** %MEMORY

  %loadMem2_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b53 = load i64, i64* %3
  %call2_400b53 = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b53, %struct.Memory* %loadMem2_400b53)
  store %struct.Memory* %call2_400b53, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdx	 RIP: 400b58	 Bytes: 4
  %loadMem_400b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b58 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b58)
  store %struct.Memory* %call_400b58, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b5c	 Bytes: 3
  %loadMem_400b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5c = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5c)
  store %struct.Memory* %call_400b5c, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b5f	 Bytes: 5
  %loadMem1_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b5f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b5f, i64 -1391, i64 5, i64 5)
  store %struct.Memory* %call1_400b5f, %struct.Memory** %MEMORY

  %loadMem2_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b5f = load i64, i64* %3
  %call2_400b5f = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b5f, %struct.Memory* %loadMem2_400b5f)
  store %struct.Memory* %call2_400b5f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdx	 RIP: 400b64	 Bytes: 4
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b64 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b64)
  store %struct.Memory* %call_400b64, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b68	 Bytes: 3
  %loadMem_400b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b68 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b68)
  store %struct.Memory* %call_400b68, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b6b	 Bytes: 5
  %loadMem1_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b6b = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b6b, i64 -1403, i64 5, i64 5)
  store %struct.Memory* %call1_400b6b, %struct.Memory** %MEMORY

  %loadMem2_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b6b = load i64, i64* %3
  %call2_400b6b = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b6b, %struct.Memory* %loadMem2_400b6b)
  store %struct.Memory* %call2_400b6b, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdx	 RIP: 400b70	 Bytes: 4
  %loadMem_400b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b70 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b70)
  store %struct.Memory* %call_400b70, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b74	 Bytes: 3
  %loadMem_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b74 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b74)
  store %struct.Memory* %call_400b74, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b77	 Bytes: 5
  %loadMem1_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b77 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b77, i64 -1415, i64 5, i64 5)
  store %struct.Memory* %call1_400b77, %struct.Memory** %MEMORY

  %loadMem2_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b77 = load i64, i64* %3
  %call2_400b77 = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b77, %struct.Memory* %loadMem2_400b77)
  store %struct.Memory* %call2_400b77, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rdx	 RIP: 400b7c	 Bytes: 4
  %loadMem_400b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7c = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7c)
  store %struct.Memory* %call_400b7c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b80	 Bytes: 3
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b80 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b80)
  store %struct.Memory* %call_400b80, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b83	 Bytes: 5
  %loadMem1_400b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b83 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b83, i64 -1427, i64 5, i64 5)
  store %struct.Memory* %call1_400b83, %struct.Memory** %MEMORY

  %loadMem2_400b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b83 = load i64, i64* %3
  %call2_400b83 = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b83, %struct.Memory* %loadMem2_400b83)
  store %struct.Memory* %call2_400b83, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rdx	 RIP: 400b88	 Bytes: 4
  %loadMem_400b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b88 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b88)
  store %struct.Memory* %call_400b88, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 400b8c	 Bytes: 3
  %loadMem_400b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b8c = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b8c)
  store %struct.Memory* %call_400b8c, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 400b8f	 Bytes: 5
  %loadMem1_400b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b8f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b8f, i64 -1439, i64 5, i64 5)
  store %struct.Memory* %call1_400b8f, %struct.Memory** %MEMORY

  %loadMem2_400b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b8f = load i64, i64* %3
  %call2_400b8f = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_400b8f, %struct.Memory* %loadMem2_400b8f)
  store %struct.Memory* %call2_400b8f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 400b94	 Bytes: 7
  %loadMem_400b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b94 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b94)
  store %struct.Memory* %call_400b94, %struct.Memory** %MEMORY

  ; Code: .L_400b9b:	 RIP: 400b9b	 Bytes: 0
  br label %block_.L_400b9b
block_.L_400b9b:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 400b9b	 Bytes: 3
  %loadMem_400b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9b)
  store %struct.Memory* %call_400b9b, %struct.Memory** %MEMORY

  ; Code: addq $0x98, %rsp	 RIP: 400b9e	 Bytes: 7
  %loadMem_400b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9e = call %struct.Memory* @routine_addq__0x98___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9e)
  store %struct.Memory* %call_400b9e, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 400ba5	 Bytes: 1
  %loadMem_400ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba5 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba5)
  store %struct.Memory* %call_400ba5, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 400ba6	 Bytes: 2
  %loadMem_400ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba6 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba6)
  store %struct.Memory* %call_400ba6, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 400ba8	 Bytes: 2
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba8 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba8)
  store %struct.Memory* %call_400ba8, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 400baa	 Bytes: 1
  %loadMem_400baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400baa = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400baa)
  store %struct.Memory* %call_400baa, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 400bab	 Bytes: 1
  %loadMem_400bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bab = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bab)
  store %struct.Memory* %call_400bab, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_400bab
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = sub i64 %3, %4
  store i64 %6, i64* %2, align 8
  %7 = icmp ult i64 %3, %4
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %4, %3
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = lshr i64 %4, 63
  %31 = xor i64 %30, %29
  %32 = xor i64 %26, %29
  %33 = add   i64 %32, %31
  %34 = icmp eq i64 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subq__0x98___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 152)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x100000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1048576)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x400__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1024)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x400__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1024)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x400__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1024)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x400__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1024)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x400__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1024)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x100000___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1048576)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.init_array(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x60__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__0x28__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.kernel_3mm(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_movq_MINUS0x80__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_callq_.kernel_3mm_StrictFP(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.check_FP(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = trunc i64 %2 to i32
  %6 = trunc i64 %3 to i32
  %7 = sub i32 %5, %6
  %8 = icmp ult i32 %5, %6
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %2
  %18 = trunc i64 %17 to i32
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = lshr i32 %6, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jne_.L_400b25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_400b9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.print_array(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = add i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = icmp ult i64 %6, %3
  %8 = icmp ult i64 %6, %4
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %4, %3
  %20 = xor i64 %19, %6
  %21 = lshr i64 %20, 4
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %6, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %6, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %3, 63
  %32 = lshr i64 %4, 63
  %33 = xor i64 %28, %31
  %34 = xor i64 %28, %32
  %35 = add   i64 %33, %34
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq__0x98___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 152)
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
  ret %struct.Memory* %11
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

