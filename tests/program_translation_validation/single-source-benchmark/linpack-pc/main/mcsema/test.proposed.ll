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
%seg_400514__fini_type = type <{ [9 x i8] }>
%seg_400520__rodata_type = type <{ [4 x i8] }>
%seg_400524__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400558__eh_frame_type = type <{ [208 x i8] }>
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

; Function Declaraions
declare i32 @llvm.ctpop.i32(i32) #2
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_4004d0.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_401750.matgen(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4005e0.second(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_401920.dgefa(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_401c30.dgesl(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_401fb0.dmxpy(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4027b0.epslon(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402860.print_time(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Data Access Globals


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 400630	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400630	 Bytes: 1
  %loadMem_400630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400630 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400630)
  store %struct.Memory* %call_400630, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400631	 Bytes: 3
  %loadMem_400631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400631 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400631)
  store %struct.Memory* %call_400631, %struct.Memory** %MEMORY

  ; Code: subq $0x3f0, %rsp	 RIP: 400634	 Bytes: 7
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400634 = call %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400634)
  store %struct.Memory* %call_400634, %struct.Memory** %MEMORY

  ; Code: movq $0x402edb, %rsi	 RIP: 40063b	 Bytes: 10
  %loadMem_40063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40063b = call %struct.Memory* @routine_movq__0x402edb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40063b)
  store %struct.Memory* %call_40063b, %struct.Memory** %MEMORY

  ; Code: movss 0x27eb(%rip), %xmm0	 RIP: 400645	 Bytes: 8
  %loadMem_400645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400645 = call %struct.Memory* @routine_movss_0x27eb__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400645)
  store %struct.Memory* %call_400645, %struct.Memory** %MEMORY

  ; Code: movq $0x402eba, %rax	 RIP: 40064d	 Bytes: 10
  %loadMem_40064d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40064d = call %struct.Memory* @routine_movq__0x402eba___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40064d)
  store %struct.Memory* %call_40064d, %struct.Memory** %MEMORY

  ; Code: movq $0x402ea0, %rcx	 RIP: 400657	 Bytes: 10
  %loadMem_400657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400657 = call %struct.Memory* @routine_movq__0x402ea0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400657)
  store %struct.Memory* %call_400657, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 400661	 Bytes: 2
  %loadMem_400661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400661 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400661)
  store %struct.Memory* %call_400661, %struct.Memory** %MEMORY

  ; Code: movl $0x2d0, %edi	 RIP: 400663	 Bytes: 5
  %loadMem_400663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400663 = call %struct.Memory* @routine_movl__0x2d0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400663)
  store %struct.Memory* %call_400663, %struct.Memory** %MEMORY

  ; Code: movl %edi, %r8d	 RIP: 400668	 Bytes: 3
  %loadMem_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400668 = call %struct.Memory* @routine_movl__edi___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400668)
  store %struct.Memory* %call_400668, %struct.Memory** %MEMORY

  ; Code: leaq -0x340(%rbp), %r9	 RIP: 40066b	 Bytes: 7
  %loadMem_40066b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40066b = call %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40066b)
  store %struct.Memory* %call_40066b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400672	 Bytes: 7
  %loadMem_400672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400672 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400672)
  store %struct.Memory* %call_400672, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdi	 RIP: 400679	 Bytes: 3
  %loadMem_400679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400679 = call %struct.Memory* @routine_movq__r9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400679)
  store %struct.Memory* %call_400679, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x348(%rbp)	 RIP: 40067c	 Bytes: 7
  %loadMem_40067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40067c = call %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40067c)
  store %struct.Memory* %call_40067c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 400683	 Bytes: 2
  %loadMem_400683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400683 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400683)
  store %struct.Memory* %call_400683, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 400685	 Bytes: 3
  %loadMem_400685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400685 = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400685)
  store %struct.Memory* %call_400685, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x350(%rbp)	 RIP: 400688	 Bytes: 7
  %loadMem_400688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400688 = call %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400688)
  store %struct.Memory* %call_400688, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x354(%rbp)	 RIP: 40068f	 Bytes: 8
  %loadMem_40068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40068f = call %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40068f)
  store %struct.Memory* %call_40068f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x360(%rbp)	 RIP: 400697	 Bytes: 7
  %loadMem_400697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400697 = call %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400697)
  store %struct.Memory* %call_400697, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 40069e	 Bytes: 5
  %loadMem1_40069e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40069e = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40069e, i64 -462, i64 5, i64 5)
  store %struct.Memory* %call1_40069e, %struct.Memory** %MEMORY

  %loadMem2_40069e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40069e = load i64, i64* %3
  %call2_40069e = call %struct.Memory* @sub_4004d0.memset_plt(%struct.State* %0, i64  %loadPC_40069e, %struct.Memory* %loadMem2_40069e)
  store %struct.Memory* %call2_40069e, %struct.Memory** %MEMORY

  ; Code: movb $0x20, -0x340(%rbp)	 RIP: 4006a3	 Bytes: 7
  %loadMem_4006a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006a3 = call %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006a3)
  store %struct.Memory* %call_4006a3, %struct.Memory** %MEMORY

  ; Code: movq -0x350(%rbp), %rax	 RIP: 4006aa	 Bytes: 7
  %loadMem_4006aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006aa = call %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006aa)
  store %struct.Memory* %call_4006aa, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 4006b1	 Bytes: 4
  %loadMem_4006b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006b1 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006b1)
  store %struct.Memory* %call_4006b1, %struct.Memory** %MEMORY

  ; Code: movq -0x360(%rbp), %rcx	 RIP: 4006b5	 Bytes: 7
  %loadMem_4006b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006b5 = call %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006b5)
  store %struct.Memory* %call_4006b5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x68(%rbp)	 RIP: 4006bc	 Bytes: 4
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006bc = call %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006bc)
  store %struct.Memory* %call_4006bc, %struct.Memory** %MEMORY

  ; Code: movl $0xc9, 0x604050	 RIP: 4006c0	 Bytes: 11
  %loadMem_4006c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006c0 = call %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006c0)
  store %struct.Memory* %call_4006c0, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, 0x604054	 RIP: 4006cb	 Bytes: 11
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006cb = call %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006cb)
  store %struct.Memory* %call_4006cb, %struct.Memory** %MEMORY

  ; Code: movss -0x354(%rbp), %xmm0	 RIP: 4006d6	 Bytes: 8
  %loadMem_4006d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006d6 = call %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006d6)
  store %struct.Memory* %call_4006d6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x8(%rbp)	 RIP: 4006de	 Bytes: 5
  %loadMem_4006de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006de = call %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006de)
  store %struct.Memory* %call_4006de, %struct.Memory** %MEMORY

  ; Code: movl $0x64, 0x604058	 RIP: 4006e3	 Bytes: 11
  %loadMem_4006e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006e3 = call %struct.Memory* @routine_movl__0x64__0x604058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006e3)
  store %struct.Memory* %call_4006e3, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 4006ee	 Bytes: 8
  %loadMem_4006ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ee = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ee)
  store %struct.Memory* %call_4006ee, %struct.Memory** %MEMORY

  ; Code: movq -0x348(%rbp), %rsi	 RIP: 4006f6	 Bytes: 7
  %loadMem_4006f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006f6 = call %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006f6)
  store %struct.Memory* %call_4006f6, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4006fd	 Bytes: 2
  %loadMem_4006fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006fd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006fd)
  store %struct.Memory* %call_4006fd, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4006ff	 Bytes: 5
  %loadMem1_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4006ff = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4006ff, i64 -543, i64 5, i64 5)
  store %struct.Memory* %call1_4006ff, %struct.Memory** %MEMORY

  %loadMem2_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4006ff = load i64, i64* %3
  %call2_4006ff = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_4006ff, %struct.Memory* %loadMem2_4006ff)
  store %struct.Memory* %call2_4006ff, %struct.Memory** %MEMORY

  ; Code: movq $0x402ee3, %rsi	 RIP: 400704	 Bytes: 10
  %loadMem_400704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400704 = call %struct.Memory* @routine_movq__0x402ee3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400704)
  store %struct.Memory* %call_400704, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40070e	 Bytes: 8
  %loadMem_40070e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40070e = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40070e)
  store %struct.Memory* %call_40070e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x364(%rbp)	 RIP: 400716	 Bytes: 6
  %loadMem_400716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400716 = call %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400716)
  store %struct.Memory* %call_400716, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40071c	 Bytes: 2
  %loadMem_40071c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40071c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40071c)
  store %struct.Memory* %call_40071c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40071e	 Bytes: 5
  %loadMem1_40071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40071e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40071e, i64 -574, i64 5, i64 5)
  store %struct.Memory* %call1_40071e, %struct.Memory** %MEMORY

  %loadMem2_40071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40071e = load i64, i64* %3
  %call2_40071e = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_40071e, %struct.Memory* %loadMem2_40071e)
  store %struct.Memory* %call2_40071e, %struct.Memory** %MEMORY

  ; Code: movq $0x402eeb, %rsi	 RIP: 400723	 Bytes: 10
  %loadMem_400723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400723 = call %struct.Memory* @routine_movq__0x402eeb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400723)
  store %struct.Memory* %call_400723, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40072d	 Bytes: 8
  %loadMem_40072d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40072d = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40072d)
  store %struct.Memory* %call_40072d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x368(%rbp)	 RIP: 400735	 Bytes: 6
  %loadMem_400735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400735 = call %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400735)
  store %struct.Memory* %call_400735, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40073b	 Bytes: 2
  %loadMem_40073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40073b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40073b)
  store %struct.Memory* %call_40073b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40073d	 Bytes: 5
  %loadMem1_40073d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40073d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40073d, i64 -605, i64 5, i64 5)
  store %struct.Memory* %call1_40073d, %struct.Memory** %MEMORY

  %loadMem2_40073d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40073d = load i64, i64* %3
  %call2_40073d = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_40073d, %struct.Memory* %loadMem2_40073d)
  store %struct.Memory* %call2_40073d, %struct.Memory** %MEMORY

  ; Code: movq $0x402f21, %rsi	 RIP: 400742	 Bytes: 10
  %loadMem_400742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400742 = call %struct.Memory* @routine_movq__0x402f21___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400742)
  store %struct.Memory* %call_400742, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40074c	 Bytes: 8
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40074c = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40074c)
  store %struct.Memory* %call_40074c, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdx	 RIP: 400754	 Bytes: 4
  %loadMem_400754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400754 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400754)
  store %struct.Memory* %call_400754, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x36c(%rbp)	 RIP: 400758	 Bytes: 6
  %loadMem_400758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400758 = call %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400758)
  store %struct.Memory* %call_400758, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40075e	 Bytes: 2
  %loadMem_40075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40075e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40075e)
  store %struct.Memory* %call_40075e, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400760	 Bytes: 5
  %loadMem1_400760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400760 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400760, i64 -640, i64 5, i64 5)
  store %struct.Memory* %call1_400760, %struct.Memory** %MEMORY

  %loadMem2_400760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400760 = load i64, i64* %3
  %call2_400760 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400760, %struct.Memory* %loadMem2_400760)
  store %struct.Memory* %call2_400760, %struct.Memory** %MEMORY

  ; Code: movq $0x402f32, %rsi	 RIP: 400765	 Bytes: 10
  %loadMem_400765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400765 = call %struct.Memory* @routine_movq__0x402f32___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400765)
  store %struct.Memory* %call_400765, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40076f	 Bytes: 8
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40076f = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40076f)
  store %struct.Memory* %call_40076f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdx	 RIP: 400777	 Bytes: 4
  %loadMem_400777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400777 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400777)
  store %struct.Memory* %call_400777, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x370(%rbp)	 RIP: 40077b	 Bytes: 6
  %loadMem_40077b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40077b = call %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40077b)
  store %struct.Memory* %call_40077b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400781	 Bytes: 2
  %loadMem_400781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400781 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400781)
  store %struct.Memory* %call_400781, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400783	 Bytes: 5
  %loadMem1_400783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400783 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400783, i64 -675, i64 5, i64 5)
  store %struct.Memory* %call1_400783, %struct.Memory** %MEMORY

  %loadMem2_400783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400783 = load i64, i64* %3
  %call2_400783 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400783, %struct.Memory* %loadMem2_400783)
  store %struct.Memory* %call2_400783, %struct.Memory** %MEMORY

  ; Code: movq $0x604060, %rdi	 RIP: 400788	 Bytes: 10
  %loadMem_400788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400788 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400788)
  store %struct.Memory* %call_400788, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 400792	 Bytes: 10
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400792 = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400792)
  store %struct.Memory* %call_400792, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 40079c	 Bytes: 4
  %loadMem_40079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40079c = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40079c)
  store %struct.Memory* %call_40079c, %struct.Memory** %MEMORY

  ; Code: movsd 0x26a0(%rip), %xmm0	 RIP: 4007a0	 Bytes: 8
  %loadMem_4007a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a0 = call %struct.Memory* @routine_movsd_0x26a0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a0)
  store %struct.Memory* %call_4007a0, %struct.Memory** %MEMORY

  ; Code: movsd 0x26a0(%rip), %xmm1	 RIP: 4007a8	 Bytes: 8
  %loadMem_4007a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a8 = call %struct.Memory* @routine_movsd_0x26a0__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a8)
  store %struct.Memory* %call_4007a8, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %r10d	 RIP: 4007b0	 Bytes: 8
  %loadMem_4007b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b0 = call %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b0)
  store %struct.Memory* %call_4007b0, %struct.Memory** %MEMORY

  ; Code: imull 0x604058, %r10d	 RIP: 4007b8	 Bytes: 9
  %loadMem_4007b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b8 = call %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b8)
  store %struct.Memory* %call_4007b8, %struct.Memory** %MEMORY

  ; Code: imull 0x604058, %r10d	 RIP: 4007c1	 Bytes: 9
  %loadMem_4007c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c1 = call %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c1)
  store %struct.Memory* %call_4007c1, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %r10d, %xmm2	 RIP: 4007ca	 Bytes: 5
  %loadMem_4007ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ca = call %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ca)
  store %struct.Memory* %call_4007ca, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm3	 RIP: 4007cf	 Bytes: 3
  %loadMem_4007cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007cf = call %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007cf)
  store %struct.Memory* %call_4007cf, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm3	 RIP: 4007d2	 Bytes: 4
  %loadMem_4007d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d2 = call %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d2)
  store %struct.Memory* %call_4007d2, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm3	 RIP: 4007d6	 Bytes: 4
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d6 = call %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d6)
  store %struct.Memory* %call_4007d6, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %r10d	 RIP: 4007da	 Bytes: 8
  %loadMem_4007da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007da = call %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007da)
  store %struct.Memory* %call_4007da, %struct.Memory** %MEMORY

  ; Code: imull 0x604058, %r10d	 RIP: 4007e2	 Bytes: 9
  %loadMem_4007e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e2 = call %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e2)
  store %struct.Memory* %call_4007e2, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %r10d, %xmm1	 RIP: 4007eb	 Bytes: 5
  %loadMem_4007eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007eb = call %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007eb)
  store %struct.Memory* %call_4007eb, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4007f0	 Bytes: 4
  %loadMem_4007f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f0 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f0)
  store %struct.Memory* %call_4007f0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm3	 RIP: 4007f4	 Bytes: 4
  %loadMem_4007f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f4 = call %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f4)
  store %struct.Memory* %call_4007f4, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm3, %xmm0	 RIP: 4007f8	 Bytes: 4
  %loadMem_4007f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f8 = call %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f8)
  store %struct.Memory* %call_4007f8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0xc(%rbp)	 RIP: 4007fc	 Bytes: 5
  %loadMem_4007fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007fc = call %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007fc)
  store %struct.Memory* %call_4007fc, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 400801	 Bytes: 7
  %loadMem_400801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400801 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400801)
  store %struct.Memory* %call_400801, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400808	 Bytes: 7
  %loadMem_400808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400808 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400808)
  store %struct.Memory* %call_400808, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x374(%rbp)	 RIP: 40080f	 Bytes: 6
  %loadMem_40080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40080f = call %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40080f)
  store %struct.Memory* %call_40080f, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 400815	 Bytes: 5
  %loadMem1_400815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400815 = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400815, i64 3899, i64 5, i64 5)
  store %struct.Memory* %call1_400815, %struct.Memory** %MEMORY

  %loadMem2_400815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400815 = load i64, i64* %3
  %call2_400815 = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_400815, %struct.Memory* %loadMem2_400815)
  store %struct.Memory* %call2_400815, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 40081a	 Bytes: 5
  %loadMem1_40081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40081a = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40081a, i64 -570, i64 5, i64 5)
  store %struct.Memory* %call1_40081a, %struct.Memory** %MEMORY

  %loadMem2_40081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40081a = load i64, i64* %3
  %call2_40081a = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_40081a, %struct.Memory* %loadMem2_40081a)
  store %struct.Memory* %call2_40081a, %struct.Memory** %MEMORY

  ; Code: movq $0x604060, %rdi	 RIP: 40081f	 Bytes: 10
  %loadMem_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40081f = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40081f)
  store %struct.Memory* %call_40081f, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 400829	 Bytes: 10
  %loadMem_400829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400829 = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400829)
  store %struct.Memory* %call_400829, %struct.Memory** %MEMORY

  ; Code: movq $0x62bac0, %r8	 RIP: 400833	 Bytes: 10
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400833 = call %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400833)
  store %struct.Memory* %call_400833, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 40083d	 Bytes: 5
  %loadMem_40083d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40083d = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40083d)
  store %struct.Memory* %call_40083d, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 400842	 Bytes: 7
  %loadMem_400842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400842 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400842)
  store %struct.Memory* %call_400842, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400849	 Bytes: 7
  %loadMem_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400849 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400849)
  store %struct.Memory* %call_400849, %struct.Memory** %MEMORY

  ; Code: callq .dgefa	 RIP: 400850	 Bytes: 5
  %loadMem1_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400850 = call %struct.Memory* @routine_callq_.dgefa(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400850, i64 4304, i64 5, i64 5)
  store %struct.Memory* %call1_400850, %struct.Memory** %MEMORY

  %loadMem2_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400850 = load i64, i64* %3
  %call2_400850 = call %struct.Memory* @sub_401920.dgefa(%struct.State* %0, i64  %loadPC_400850, %struct.Memory* %loadMem2_400850)
  store %struct.Memory* %call2_400850, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 400855	 Bytes: 5
  %loadMem1_400855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400855 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400855, i64 -629, i64 5, i64 5)
  store %struct.Memory* %call1_400855, %struct.Memory** %MEMORY

  %loadMem2_400855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400855 = load i64, i64* %3
  %call2_400855 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_400855, %struct.Memory* %loadMem2_400855)
  store %struct.Memory* %call2_400855, %struct.Memory** %MEMORY

  ; Code: subss -0x28(%rbp), %xmm0	 RIP: 40085a	 Bytes: 5
  %loadMem_40085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40085a = call %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40085a)
  store %struct.Memory* %call_40085a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bad0	 RIP: 40085f	 Bytes: 9
  %loadMem_40085f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40085f = call %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40085f)
  store %struct.Memory* %call_40085f, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 400868	 Bytes: 5
  %loadMem1_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400868 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400868, i64 -648, i64 5, i64 5)
  store %struct.Memory* %call1_400868, %struct.Memory** %MEMORY

  %loadMem2_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400868 = load i64, i64* %3
  %call2_400868 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_400868, %struct.Memory* %loadMem2_400868)
  store %struct.Memory* %call2_400868, %struct.Memory** %MEMORY

  ; Code: movq $0x604060, %rdi	 RIP: 40086d	 Bytes: 10
  %loadMem_40086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40086d = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40086d)
  store %struct.Memory* %call_40086d, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 400877	 Bytes: 10
  %loadMem_400877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400877 = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400877)
  store %struct.Memory* %call_400877, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %r8	 RIP: 400881	 Bytes: 10
  %loadMem_400881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400881 = call %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400881)
  store %struct.Memory* %call_400881, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 40088b	 Bytes: 3
  %loadMem_40088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40088b = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40088b)
  store %struct.Memory* %call_40088b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 40088e	 Bytes: 5
  %loadMem_40088e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40088e = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40088e)
  store %struct.Memory* %call_40088e, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 400893	 Bytes: 7
  %loadMem_400893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400893 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400893)
  store %struct.Memory* %call_400893, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 40089a	 Bytes: 7
  %loadMem_40089a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089a = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089a)
  store %struct.Memory* %call_40089a, %struct.Memory** %MEMORY

  ; Code: callq .dgesl	 RIP: 4008a1	 Bytes: 5
  %loadMem1_4008a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4008a1 = call %struct.Memory* @routine_callq_.dgesl(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4008a1, i64 5007, i64 5, i64 5)
  store %struct.Memory* %call1_4008a1, %struct.Memory** %MEMORY

  %loadMem2_4008a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008a1 = load i64, i64* %3
  %call2_4008a1 = call %struct.Memory* @sub_401c30.dgesl(%struct.State* %0, i64  %loadPC_4008a1, %struct.Memory* %loadMem2_4008a1)
  store %struct.Memory* %call2_4008a1, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 4008a6	 Bytes: 5
  %loadMem1_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4008a6 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4008a6, i64 -710, i64 5, i64 5)
  store %struct.Memory* %call1_4008a6, %struct.Memory** %MEMORY

  %loadMem2_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008a6 = load i64, i64* %3
  %call2_4008a6 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_4008a6, %struct.Memory* %loadMem2_4008a6)
  store %struct.Memory* %call2_4008a6, %struct.Memory** %MEMORY

  ; Code: subss -0x28(%rbp), %xmm0	 RIP: 4008ab	 Bytes: 5
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ab = call %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ab)
  store %struct.Memory* %call_4008ab, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb0c	 RIP: 4008b0	 Bytes: 9
  %loadMem_4008b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b0 = call %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b0)
  store %struct.Memory* %call_4008b0, %struct.Memory** %MEMORY

  ; Code: movss 0x62bad0, %xmm0	 RIP: 4008b9	 Bytes: 9
  %loadMem_4008b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b9 = call %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b9)
  store %struct.Memory* %call_4008b9, %struct.Memory** %MEMORY

  ; Code: addss 0x62bb0c, %xmm0	 RIP: 4008c2	 Bytes: 9
  %loadMem_4008c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c2 = call %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c2)
  store %struct.Memory* %call_4008c2, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x10(%rbp)	 RIP: 4008cb	 Bytes: 5
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008cb = call %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008cb)
  store %struct.Memory* %call_4008cb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 4008d0	 Bytes: 11
  %loadMem_4008d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d0 = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d0)
  store %struct.Memory* %call_4008d0, %struct.Memory** %MEMORY

  ; Code: .L_4008db:	 RIP: 4008db	 Bytes: 0
  br label %block_.L_4008db
block_.L_4008db:

  ; Code: movl 0x62bcec, %eax	 RIP: 4008db	 Bytes: 7
  %loadMem_4008db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008db = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008db)
  store %struct.Memory* %call_4008db, %struct.Memory** %MEMORY

  ; Code: cmpl 0x604058, %eax	 RIP: 4008e2	 Bytes: 7
  %loadMem_4008e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e2 = call %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e2)
  store %struct.Memory* %call_4008e2, %struct.Memory** %MEMORY

  ; Code: jge .L_400927	 RIP: 4008e9	 Bytes: 6
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e9 = call %struct.Memory* @routine_jge_.L_400927(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e9, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4008e9, %struct.Memory** %MEMORY

  %loadBr_4008e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008e9 = icmp eq i8 %loadBr_4008e9, 1
  br i1 %cmpBr_4008e9, label %block_.L_400927, label %block_4008ef

block_4008ef:
  ; Code: movslq 0x62bcec, %rax	 RIP: 4008ef	 Bytes: 8
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ef = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ef)
  store %struct.Memory* %call_4008ef, %struct.Memory** %MEMORY

  ; Code: movss 0x62b480(,%rax,4), %xmm0	 RIP: 4008f7	 Bytes: 9
  %loadMem_4008f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f7 = call %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f7)
  store %struct.Memory* %call_4008f7, %struct.Memory** %MEMORY

  ; Code: movslq 0x62bcec, %rax	 RIP: 400900	 Bytes: 8
  %loadMem_400900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400900 = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400900)
  store %struct.Memory* %call_400900, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bcf0(,%rax,4)	 RIP: 400908	 Bytes: 9
  %loadMem_400908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400908 = call %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400908)
  store %struct.Memory* %call_400908, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 400911	 Bytes: 7
  %loadMem_400911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400911 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400911)
  store %struct.Memory* %call_400911, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400918	 Bytes: 3
  %loadMem_400918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400918 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400918)
  store %struct.Memory* %call_400918, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 40091b	 Bytes: 7
  %loadMem_40091b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40091b = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40091b)
  store %struct.Memory* %call_40091b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4008db	 RIP: 400922	 Bytes: 5
  %loadMem_400922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400922 = call %struct.Memory* @routine_jmpq_.L_4008db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400922, i64 -71, i64 5)
  store %struct.Memory* %call_400922, %struct.Memory** %MEMORY

  br label %block_.L_4008db

  ; Code: .L_400927:	 RIP: 400927	 Bytes: 0
block_.L_400927:

  ; Code: movq $0x604060, %rdi	 RIP: 400927	 Bytes: 10
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400927 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400927)
  store %struct.Memory* %call_400927, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 400931	 Bytes: 10
  %loadMem_400931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400931 = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400931)
  store %struct.Memory* %call_400931, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 40093b	 Bytes: 4
  %loadMem_40093b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093b = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093b)
  store %struct.Memory* %call_40093b, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 40093f	 Bytes: 7
  %loadMem_40093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093f = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093f)
  store %struct.Memory* %call_40093f, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400946	 Bytes: 7
  %loadMem_400946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400946 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400946)
  store %struct.Memory* %call_400946, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 40094d	 Bytes: 5
  %loadMem1_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40094d = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40094d, i64 3587, i64 5, i64 5)
  store %struct.Memory* %call1_40094d, %struct.Memory** %MEMORY

  %loadMem2_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40094d = load i64, i64* %3
  %call2_40094d = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_40094d, %struct.Memory* %loadMem2_40094d)
  store %struct.Memory* %call2_40094d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 400952	 Bytes: 11
  %loadMem_400952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400952 = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400952)
  store %struct.Memory* %call_400952, %struct.Memory** %MEMORY

  ; Code: .L_40095d:	 RIP: 40095d	 Bytes: 0
  br label %block_.L_40095d
block_.L_40095d:

  ; Code: movl 0x62bcec, %eax	 RIP: 40095d	 Bytes: 7
  %loadMem_40095d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095d = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095d)
  store %struct.Memory* %call_40095d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x604058, %eax	 RIP: 400964	 Bytes: 7
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400964 = call %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400964)
  store %struct.Memory* %call_400964, %struct.Memory** %MEMORY

  ; Code: jge .L_4009b7	 RIP: 40096b	 Bytes: 6
  %loadMem_40096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096b = call %struct.Memory* @routine_jge_.L_4009b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096b, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_40096b, %struct.Memory** %MEMORY

  %loadBr_40096b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40096b = icmp eq i8 %loadBr_40096b, 1
  br i1 %cmpBr_40096b, label %block_.L_4009b7, label %block_400971

block_400971:
  ; Code: movslq 0x62bcec, %rax	 RIP: 400971	 Bytes: 8
  %loadMem_400971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400971 = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400971)
  store %struct.Memory* %call_400971, %struct.Memory** %MEMORY

  ; Code: movss 0x62b480(,%rax,4), %xmm0	 RIP: 400979	 Bytes: 9
  %loadMem_400979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400979 = call %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400979)
  store %struct.Memory* %call_400979, %struct.Memory** %MEMORY

  ; Code: movd %xmm0, %ecx	 RIP: 400982	 Bytes: 4
  %loadMem_400982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400982 = call %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400982)
  store %struct.Memory* %call_400982, %struct.Memory** %MEMORY

  ; Code: xorl $0x80000000, %ecx	 RIP: 400986	 Bytes: 6
  %loadMem_400986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400986 = call %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400986)
  store %struct.Memory* %call_400986, %struct.Memory** %MEMORY

  ; Code: movd %ecx, %xmm0	 RIP: 40098c	 Bytes: 4
  %loadMem_40098c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098c = call %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098c)
  store %struct.Memory* %call_40098c, %struct.Memory** %MEMORY

  ; Code: movslq 0x62bcec, %rax	 RIP: 400990	 Bytes: 8
  %loadMem_400990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400990 = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400990)
  store %struct.Memory* %call_400990, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62b480(,%rax,4)	 RIP: 400998	 Bytes: 9
  %loadMem_400998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400998 = call %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400998)
  store %struct.Memory* %call_400998, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 4009a1	 Bytes: 7
  %loadMem_4009a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a1 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a1)
  store %struct.Memory* %call_4009a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4009a8	 Bytes: 3
  %loadMem_4009a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a8)
  store %struct.Memory* %call_4009a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 4009ab	 Bytes: 7
  %loadMem_4009ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ab = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ab)
  store %struct.Memory* %call_4009ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40095d	 RIP: 4009b2	 Bytes: 5
  %loadMem_4009b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b2 = call %struct.Memory* @routine_jmpq_.L_40095d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b2, i64 -85, i64 5)
  store %struct.Memory* %call_4009b2, %struct.Memory** %MEMORY

  br label %block_.L_40095d

  ; Code: .L_4009b7:	 RIP: 4009b7	 Bytes: 0
block_.L_4009b7:

  ; Code: movq $0x62b480, %rsi	 RIP: 4009b7	 Bytes: 10
  %loadMem_4009b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b7 = call %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b7)
  store %struct.Memory* %call_4009b7, %struct.Memory** %MEMORY

  ; Code: movq $0x62bcf0, %r8	 RIP: 4009c1	 Bytes: 10
  %loadMem_4009c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c1 = call %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c1)
  store %struct.Memory* %call_4009c1, %struct.Memory** %MEMORY

  ; Code: movq $0x604060, %r9	 RIP: 4009cb	 Bytes: 10
  %loadMem_4009cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cb = call %struct.Memory* @routine_movq__0x604060___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cb)
  store %struct.Memory* %call_4009cb, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edi	 RIP: 4009d5	 Bytes: 7
  %loadMem_4009d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d5 = call %struct.Memory* @routine_movl_0x604058___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d5)
  store %struct.Memory* %call_4009d5, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 4009dc	 Bytes: 7
  %loadMem_4009dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009dc = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009dc)
  store %struct.Memory* %call_4009dc, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %ecx	 RIP: 4009e3	 Bytes: 7
  %loadMem_4009e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e3 = call %struct.Memory* @routine_movl_0x604050___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e3)
  store %struct.Memory* %call_4009e3, %struct.Memory** %MEMORY

  ; Code: callq .dmxpy	 RIP: 4009ea	 Bytes: 5
  %loadMem1_4009ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009ea = call %struct.Memory* @routine_callq_.dmxpy(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009ea, i64 5574, i64 5, i64 5)
  store %struct.Memory* %call1_4009ea, %struct.Memory** %MEMORY

  %loadMem2_4009ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009ea = load i64, i64* %3
  %call2_4009ea = call %struct.Memory* @sub_401fb0.dmxpy(%struct.State* %0, i64  %loadPC_4009ea, %struct.Memory* %loadMem2_4009ea)
  store %struct.Memory* %call2_4009ea, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4009ef	 Bytes: 3
  %loadMem_4009ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ef = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ef)
  store %struct.Memory* %call_4009ef, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c(%rbp)	 RIP: 4009f2	 Bytes: 5
  %loadMem_4009f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f2)
  store %struct.Memory* %call_4009f2, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 4009f7	 Bytes: 5
  %loadMem_4009f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f7 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f7)
  store %struct.Memory* %call_4009f7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 4009fc	 Bytes: 11
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009fc = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009fc)
  store %struct.Memory* %call_4009fc, %struct.Memory** %MEMORY

  ; Code: .L_400a07:	 RIP: 400a07	 Bytes: 0
  br label %block_.L_400a07
block_.L_400a07:

  ; Code: movl 0x62bcec, %eax	 RIP: 400a07	 Bytes: 7
  %loadMem_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a07 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a07)
  store %struct.Memory* %call_400a07, %struct.Memory** %MEMORY

  ; Code: cmpl 0x604058, %eax	 RIP: 400a0e	 Bytes: 7
  %loadMem_400a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0e = call %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0e)
  store %struct.Memory* %call_400a0e, %struct.Memory** %MEMORY

  ; Code: jge .L_400b15	 RIP: 400a15	 Bytes: 6
  %loadMem_400a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a15 = call %struct.Memory* @routine_jge_.L_400b15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a15, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_400a15, %struct.Memory** %MEMORY

  %loadBr_400a15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a15 = icmp eq i8 %loadBr_400a15, 1
  br i1 %cmpBr_400a15, label %block_.L_400b15, label %block_400a1b

block_400a1b:
  ; Code: cvtss2sd -0x1c(%rbp), %xmm0	 RIP: 400a1b	 Bytes: 5
  %loadMem_400a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1b = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1b)
  store %struct.Memory* %call_400a1b, %struct.Memory** %MEMORY

  ; Code: movslq 0x62bcec, %rax	 RIP: 400a20	 Bytes: 8
  %loadMem_400a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a20 = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a20)
  store %struct.Memory* %call_400a20, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62b480(,%rax,4), %xmm1	 RIP: 400a28	 Bytes: 9
  %loadMem_400a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a28 = call %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a28)
  store %struct.Memory* %call_400a28, %struct.Memory** %MEMORY

  ; Code: movaps 0x2458(%rip), %xmm2	 RIP: 400a31	 Bytes: 7
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a31 = call %struct.Memory* @routine_movaps_0x2458__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a31)
  store %struct.Memory* %call_400a31, %struct.Memory** %MEMORY

  ; Code: pand %xmm2, %xmm1	 RIP: 400a38	 Bytes: 4
  %loadMem_400a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a38 = call %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a38)
  store %struct.Memory* %call_400a38, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 400a3c	 Bytes: 4
  %loadMem_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3c = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3c)
  store %struct.Memory* %call_400a3c, %struct.Memory** %MEMORY

  ; Code: jbe .L_400a58	 RIP: 400a40	 Bytes: 6
  %loadMem_400a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a40 = call %struct.Memory* @routine_jbe_.L_400a58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a40, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_400a40, %struct.Memory** %MEMORY

  %loadBr_400a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a40 = icmp eq i8 %loadBr_400a40, 1
  br i1 %cmpBr_400a40, label %block_.L_400a58, label %block_400a46

block_400a46:
  ; Code: cvtss2sd -0x1c(%rbp), %xmm0	 RIP: 400a46	 Bytes: 5
  %loadMem_400a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a46 = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a46)
  store %struct.Memory* %call_400a46, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x380(%rbp)	 RIP: 400a4b	 Bytes: 8
  %loadMem_400a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4b)
  store %struct.Memory* %call_400a4b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a7c	 RIP: 400a53	 Bytes: 5
  %loadMem_400a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a53 = call %struct.Memory* @routine_jmpq_.L_400a7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a53, i64 41, i64 5)
  store %struct.Memory* %call_400a53, %struct.Memory** %MEMORY

  br label %block_.L_400a7c

  ; Code: .L_400a58:	 RIP: 400a58	 Bytes: 0
block_.L_400a58:

  ; Code: movslq 0x62bcec, %rax	 RIP: 400a58	 Bytes: 8
  %loadMem_400a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a58 = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a58)
  store %struct.Memory* %call_400a58, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62b480(,%rax,4), %xmm0	 RIP: 400a60	 Bytes: 9
  %loadMem_400a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a60 = call %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a60)
  store %struct.Memory* %call_400a60, %struct.Memory** %MEMORY

  ; Code: movaps 0x2420(%rip), %xmm1	 RIP: 400a69	 Bytes: 7
  %loadMem_400a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a69 = call %struct.Memory* @routine_movaps_0x2420__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a69)
  store %struct.Memory* %call_400a69, %struct.Memory** %MEMORY

  ; Code: pand %xmm1, %xmm0	 RIP: 400a70	 Bytes: 4
  %loadMem_400a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a70 = call %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a70)
  store %struct.Memory* %call_400a70, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x380(%rbp)	 RIP: 400a74	 Bytes: 8
  %loadMem_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a74 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a74)
  store %struct.Memory* %call_400a74, %struct.Memory** %MEMORY

  ; Code: .L_400a7c:	 RIP: 400a7c	 Bytes: 0
  br label %block_.L_400a7c
block_.L_400a7c:

  ; Code: movsd -0x380(%rbp), %xmm0	 RIP: 400a7c	 Bytes: 8
  %loadMem_400a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7c = call %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7c)
  store %struct.Memory* %call_400a7c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 400a84	 Bytes: 4
  %loadMem_400a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a84 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a84)
  store %struct.Memory* %call_400a84, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x1c(%rbp)	 RIP: 400a88	 Bytes: 5
  %loadMem_400a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a88 = call %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a88)
  store %struct.Memory* %call_400a88, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 400a8d	 Bytes: 5
  %loadMem_400a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8d = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8d)
  store %struct.Memory* %call_400a8d, %struct.Memory** %MEMORY

  ; Code: movslq 0x62bcec, %rax	 RIP: 400a92	 Bytes: 8
  %loadMem_400a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a92 = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a92)
  store %struct.Memory* %call_400a92, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bcf0(,%rax,4), %xmm1	 RIP: 400a9a	 Bytes: 9
  %loadMem_400a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9a = call %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9a)
  store %struct.Memory* %call_400a9a, %struct.Memory** %MEMORY

  ; Code: movaps 0x23e6(%rip), %xmm2	 RIP: 400aa3	 Bytes: 7
  %loadMem_400aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa3 = call %struct.Memory* @routine_movaps_0x23e6__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa3)
  store %struct.Memory* %call_400aa3, %struct.Memory** %MEMORY

  ; Code: pand %xmm2, %xmm1	 RIP: 400aaa	 Bytes: 4
  %loadMem_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaa = call %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaa)
  store %struct.Memory* %call_400aaa, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 400aae	 Bytes: 4
  %loadMem_400aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aae = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aae)
  store %struct.Memory* %call_400aae, %struct.Memory** %MEMORY

  ; Code: jbe .L_400aca	 RIP: 400ab2	 Bytes: 6
  %loadMem_400ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab2 = call %struct.Memory* @routine_jbe_.L_400aca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab2, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_400ab2, %struct.Memory** %MEMORY

  %loadBr_400ab2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ab2 = icmp eq i8 %loadBr_400ab2, 1
  br i1 %cmpBr_400ab2, label %block_.L_400aca, label %block_400ab8

block_400ab8:
  ; Code: cvtss2sd -0x18(%rbp), %xmm0	 RIP: 400ab8	 Bytes: 5
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab8 = call %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab8)
  store %struct.Memory* %call_400ab8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x388(%rbp)	 RIP: 400abd	 Bytes: 8
  %loadMem_400abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abd)
  store %struct.Memory* %call_400abd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400aee	 RIP: 400ac5	 Bytes: 5
  %loadMem_400ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac5 = call %struct.Memory* @routine_jmpq_.L_400aee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac5, i64 41, i64 5)
  store %struct.Memory* %call_400ac5, %struct.Memory** %MEMORY

  br label %block_.L_400aee

  ; Code: .L_400aca:	 RIP: 400aca	 Bytes: 0
block_.L_400aca:

  ; Code: movslq 0x62bcec, %rax	 RIP: 400aca	 Bytes: 8
  %loadMem_400aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aca = call %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aca)
  store %struct.Memory* %call_400aca, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bcf0(,%rax,4), %xmm0	 RIP: 400ad2	 Bytes: 9
  %loadMem_400ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad2 = call %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad2)
  store %struct.Memory* %call_400ad2, %struct.Memory** %MEMORY

  ; Code: movaps 0x23ae(%rip), %xmm1	 RIP: 400adb	 Bytes: 7
  %loadMem_400adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400adb = call %struct.Memory* @routine_movaps_0x23ae__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400adb)
  store %struct.Memory* %call_400adb, %struct.Memory** %MEMORY

  ; Code: pand %xmm1, %xmm0	 RIP: 400ae2	 Bytes: 4
  %loadMem_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae2 = call %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae2)
  store %struct.Memory* %call_400ae2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x388(%rbp)	 RIP: 400ae6	 Bytes: 8
  %loadMem_400ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae6)
  store %struct.Memory* %call_400ae6, %struct.Memory** %MEMORY

  ; Code: .L_400aee:	 RIP: 400aee	 Bytes: 0
  br label %block_.L_400aee
block_.L_400aee:

  ; Code: movsd -0x388(%rbp), %xmm0	 RIP: 400aee	 Bytes: 8
  %loadMem_400aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aee = call %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aee)
  store %struct.Memory* %call_400aee, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 400af6	 Bytes: 4
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af6 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af6)
  store %struct.Memory* %call_400af6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 400afa	 Bytes: 5
  %loadMem_400afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afa = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afa)
  store %struct.Memory* %call_400afa, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 400aff	 Bytes: 7
  %loadMem_400aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aff = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aff)
  store %struct.Memory* %call_400aff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400b06	 Bytes: 3
  %loadMem_400b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b06 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b06)
  store %struct.Memory* %call_400b06, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 400b09	 Bytes: 7
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b09 = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b09)
  store %struct.Memory* %call_400b09, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a07	 RIP: 400b10	 Bytes: 5
  %loadMem_400b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b10 = call %struct.Memory* @routine_jmpq_.L_400a07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b10, i64 -265, i64 5)
  store %struct.Memory* %call_400b10, %struct.Memory** %MEMORY

  br label %block_.L_400a07

  ; Code: .L_400b15:	 RIP: 400b15	 Bytes: 0
block_.L_400b15:

  ; Code: movss 0x231f(%rip), %xmm0	 RIP: 400b15	 Bytes: 8
  %loadMem_400b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b15 = call %struct.Memory* @routine_movss_0x231f__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b15)
  store %struct.Memory* %call_400b15, %struct.Memory** %MEMORY

  ; Code: callq .epslon	 RIP: 400b1d	 Bytes: 5
  %loadMem1_400b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b1d = call %struct.Memory* @routine_callq_.epslon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b1d, i64 7315, i64 5, i64 5)
  store %struct.Memory* %call1_400b1d, %struct.Memory** %MEMORY

  %loadMem2_400b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b1d = load i64, i64* %3
  %call2_400b1d = call %struct.Memory* @sub_4027b0.epslon(%struct.State* %0, i64  %loadPC_400b1d, %struct.Memory* %loadMem2_400b1d)
  store %struct.Memory* %call2_400b1d, %struct.Memory** %MEMORY

  ; Code: movq $0x402f44, %rsi	 RIP: 400b22	 Bytes: 10
  %loadMem_400b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b22 = call %struct.Memory* @routine_movq__0x402f44___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b22)
  store %struct.Memory* %call_400b22, %struct.Memory** %MEMORY

  ; Code: movss 0x2308(%rip), %xmm1	 RIP: 400b2c	 Bytes: 8
  %loadMem_400b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2c = call %struct.Memory* @routine_movss_0x2308__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2c)
  store %struct.Memory* %call_400b2c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x24(%rbp)	 RIP: 400b34	 Bytes: 5
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b34 = call %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b34)
  store %struct.Memory* %call_400b34, %struct.Memory** %MEMORY

  ; Code: movss -0x1c(%rbp), %xmm0	 RIP: 400b39	 Bytes: 5
  %loadMem_400b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b39 = call %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b39)
  store %struct.Memory* %call_400b39, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x604058, %xmm2	 RIP: 400b3e	 Bytes: 9
  %loadMem_400b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3e = call %struct.Memory* @routine_cvtsi2ssl_0x604058___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3e)
  store %struct.Memory* %call_400b3e, %struct.Memory** %MEMORY

  ; Code: mulss -0x14(%rbp), %xmm2	 RIP: 400b47	 Bytes: 5
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b47 = call %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b47)
  store %struct.Memory* %call_400b47, %struct.Memory** %MEMORY

  ; Code: mulss -0x18(%rbp), %xmm2	 RIP: 400b4c	 Bytes: 5
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4c = call %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4c)
  store %struct.Memory* %call_400b4c, %struct.Memory** %MEMORY

  ; Code: mulss -0x24(%rbp), %xmm2	 RIP: 400b51	 Bytes: 5
  %loadMem_400b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b51 = call %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b51)
  store %struct.Memory* %call_400b51, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm0	 RIP: 400b56	 Bytes: 4
  %loadMem_400b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b56 = call %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b56)
  store %struct.Memory* %call_400b56, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x20(%rbp)	 RIP: 400b5a	 Bytes: 5
  %loadMem_400b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5a = call %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5a)
  store %struct.Memory* %call_400b5a, %struct.Memory** %MEMORY

  ; Code: movss -0x24(%rbp), %xmm0	 RIP: 400b5f	 Bytes: 5
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5f = call %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5f)
  store %struct.Memory* %call_400b5f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x30(%rbp)	 RIP: 400b64	 Bytes: 5
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b64 = call %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b64)
  store %struct.Memory* %call_400b64, %struct.Memory** %MEMORY

  ; Code: movss 0x62bcf0, %xmm0	 RIP: 400b69	 Bytes: 9
  %loadMem_400b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b69 = call %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b69)
  store %struct.Memory* %call_400b69, %struct.Memory** %MEMORY

  ; Code: subss %xmm1, %xmm0	 RIP: 400b72	 Bytes: 4
  %loadMem_400b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b72 = call %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b72)
  store %struct.Memory* %call_400b72, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x34(%rbp)	 RIP: 400b76	 Bytes: 5
  %loadMem_400b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b76 = call %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b76)
  store %struct.Memory* %call_400b76, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %eax	 RIP: 400b7b	 Bytes: 7
  %loadMem_400b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7b = call %struct.Memory* @routine_movl_0x604058___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7b)
  store %struct.Memory* %call_400b7b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 400b82	 Bytes: 3
  %loadMem_400b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b82 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b82)
  store %struct.Memory* %call_400b82, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 400b85	 Bytes: 3
  %loadMem_400b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b85 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b85)
  store %struct.Memory* %call_400b85, %struct.Memory** %MEMORY

  ; Code: movss 0x62bcf0(,%rcx,4), %xmm0	 RIP: 400b88	 Bytes: 9
  %loadMem_400b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b88 = call %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b88)
  store %struct.Memory* %call_400b88, %struct.Memory** %MEMORY

  ; Code: subss %xmm1, %xmm0	 RIP: 400b91	 Bytes: 4
  %loadMem_400b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b91 = call %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b91)
  store %struct.Memory* %call_400b91, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x38(%rbp)	 RIP: 400b95	 Bytes: 5
  %loadMem_400b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b95 = call %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b95)
  store %struct.Memory* %call_400b95, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400b9a	 Bytes: 8
  %loadMem_400b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9a = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9a)
  store %struct.Memory* %call_400b9a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400ba2	 Bytes: 2
  %loadMem_400ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba2)
  store %struct.Memory* %call_400ba2, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400ba4	 Bytes: 5
  %loadMem1_400ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ba4 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ba4, i64 -1732, i64 5, i64 5)
  store %struct.Memory* %call1_400ba4, %struct.Memory** %MEMORY

  %loadMem2_400ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ba4 = load i64, i64* %3
  %call2_400ba4 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400ba4, %struct.Memory* %loadMem2_400ba4)
  store %struct.Memory* %call2_400ba4, %struct.Memory** %MEMORY

  ; Code: movq $0x402f6b, %rsi	 RIP: 400ba9	 Bytes: 10
  %loadMem_400ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba9 = call %struct.Memory* @routine_movq__0x402f6b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba9)
  store %struct.Memory* %call_400ba9, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400bb3	 Bytes: 8
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb3 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb3)
  store %struct.Memory* %call_400bb3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38c(%rbp)	 RIP: 400bbb	 Bytes: 6
  %loadMem_400bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbb = call %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbb)
  store %struct.Memory* %call_400bbb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400bc1	 Bytes: 2
  %loadMem_400bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc1)
  store %struct.Memory* %call_400bc1, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400bc3	 Bytes: 5
  %loadMem1_400bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400bc3 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400bc3, i64 -1763, i64 5, i64 5)
  store %struct.Memory* %call1_400bc3, %struct.Memory** %MEMORY

  %loadMem2_400bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400bc3 = load i64, i64* %3
  %call2_400bc3 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400bc3, %struct.Memory* %loadMem2_400bc3)
  store %struct.Memory* %call2_400bc3, %struct.Memory** %MEMORY

  ; Code: movq $0x402f8e, %rsi	 RIP: 400bc8	 Bytes: 10
  %loadMem_400bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc8 = call %struct.Memory* @routine_movq__0x402f8e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc8)
  store %struct.Memory* %call_400bc8, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400bd2	 Bytes: 8
  %loadMem_400bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd2 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd2)
  store %struct.Memory* %call_400bd2, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x20(%rbp), %xmm0	 RIP: 400bda	 Bytes: 5
  %loadMem_400bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bda = call %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bda)
  store %struct.Memory* %call_400bda, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x1c(%rbp), %xmm1	 RIP: 400bdf	 Bytes: 5
  %loadMem_400bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bdf = call %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bdf)
  store %struct.Memory* %call_400bdf, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x30(%rbp), %xmm2	 RIP: 400be4	 Bytes: 5
  %loadMem_400be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be4 = call %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be4)
  store %struct.Memory* %call_400be4, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x34(%rbp), %xmm3	 RIP: 400be9	 Bytes: 5
  %loadMem_400be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be9 = call %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be9)
  store %struct.Memory* %call_400be9, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x38(%rbp), %xmm4	 RIP: 400bee	 Bytes: 5
  %loadMem_400bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bee = call %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bee)
  store %struct.Memory* %call_400bee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x390(%rbp)	 RIP: 400bf3	 Bytes: 6
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf3 = call %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf3)
  store %struct.Memory* %call_400bf3, %struct.Memory** %MEMORY

  ; Code: movb $0x5, %al	 RIP: 400bf9	 Bytes: 2
  %loadMem_400bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf9 = call %struct.Memory* @routine_movb__0x5___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf9)
  store %struct.Memory* %call_400bf9, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400bfb	 Bytes: 5
  %loadMem1_400bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400bfb = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400bfb, i64 -1819, i64 5, i64 5)
  store %struct.Memory* %call1_400bfb, %struct.Memory** %MEMORY

  %loadMem2_400bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400bfb = load i64, i64* %3
  %call2_400bfb = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400bfb, %struct.Memory* %loadMem2_400bfb)
  store %struct.Memory* %call2_400bfb, %struct.Memory** %MEMORY

  ; Code: movq $0x402faf, %rsi	 RIP: 400c00	 Bytes: 10
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c00 = call %struct.Memory* @routine_movq__0x402faf___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c00)
  store %struct.Memory* %call_400c00, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400c0a	 Bytes: 8
  %loadMem_400c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c0a = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c0a)
  store %struct.Memory* %call_400c0a, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400c12	 Bytes: 7
  %loadMem_400c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c12 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c12)
  store %struct.Memory* %call_400c12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x394(%rbp)	 RIP: 400c19	 Bytes: 6
  %loadMem_400c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c19 = call %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c19)
  store %struct.Memory* %call_400c19, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400c1f	 Bytes: 2
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1f)
  store %struct.Memory* %call_400c1f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400c21	 Bytes: 5
  %loadMem1_400c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400c21 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400c21, i64 -1857, i64 5, i64 5)
  store %struct.Memory* %call1_400c21, %struct.Memory** %MEMORY

  %loadMem2_400c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c21 = load i64, i64* %3
  %call2_400c21 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400c21, %struct.Memory* %loadMem2_400c21)
  store %struct.Memory* %call2_400c21, %struct.Memory** %MEMORY

  ; Code: movq $0x402fe4, %rsi	 RIP: 400c26	 Bytes: 10
  %loadMem_400c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c26 = call %struct.Memory* @routine_movq__0x402fe4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c26)
  store %struct.Memory* %call_400c26, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400c30	 Bytes: 8
  %loadMem_400c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c30 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c30)
  store %struct.Memory* %call_400c30, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %edx	 RIP: 400c38	 Bytes: 7
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c38 = call %struct.Memory* @routine_movl_0x604050___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c38)
  store %struct.Memory* %call_400c38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x398(%rbp)	 RIP: 400c3f	 Bytes: 6
  %loadMem_400c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3f = call %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3f)
  store %struct.Memory* %call_400c3f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400c45	 Bytes: 2
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c45 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c45)
  store %struct.Memory* %call_400c45, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400c47	 Bytes: 5
  %loadMem1_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400c47 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400c47, i64 -1895, i64 5, i64 5)
  store %struct.Memory* %call1_400c47, %struct.Memory** %MEMORY

  %loadMem2_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c47 = load i64, i64* %3
  %call2_400c47 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400c47, %struct.Memory* %loadMem2_400c47)
  store %struct.Memory* %call2_400c47, %struct.Memory** %MEMORY

  ; Code: movq $0x40301a, %rsi	 RIP: 400c4c	 Bytes: 10
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4c = call %struct.Memory* @routine_movq__0x40301a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4c)
  store %struct.Memory* %call_400c4c, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400c56	 Bytes: 8
  %loadMem_400c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c56 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c56)
  store %struct.Memory* %call_400c56, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x39c(%rbp)	 RIP: 400c5e	 Bytes: 6
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c5e = call %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c5e)
  store %struct.Memory* %call_400c5e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400c64	 Bytes: 2
  %loadMem_400c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c64 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c64)
  store %struct.Memory* %call_400c64, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400c66	 Bytes: 5
  %loadMem1_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400c66 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400c66, i64 -1926, i64 5, i64 5)
  store %struct.Memory* %call1_400c66, %struct.Memory** %MEMORY

  %loadMem2_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c66 = load i64, i64* %3
  %call2_400c66 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400c66, %struct.Memory* %loadMem2_400c66)
  store %struct.Memory* %call2_400c66, %struct.Memory** %MEMORY

  ; Code: movq $0x403052, %rsi	 RIP: 400c6b	 Bytes: 10
  %loadMem_400c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c6b = call %struct.Memory* @routine_movq__0x403052___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c6b)
  store %struct.Memory* %call_400c6b, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400c75	 Bytes: 8
  %loadMem_400c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c75 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c75)
  store %struct.Memory* %call_400c75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3a0(%rbp)	 RIP: 400c7d	 Bytes: 6
  %loadMem_400c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7d = call %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7d)
  store %struct.Memory* %call_400c7d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400c83	 Bytes: 2
  %loadMem_400c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c83 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c83)
  store %struct.Memory* %call_400c83, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400c85	 Bytes: 5
  %loadMem1_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400c85 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400c85, i64 -1957, i64 5, i64 5)
  store %struct.Memory* %call1_400c85, %struct.Memory** %MEMORY

  %loadMem2_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c85 = load i64, i64* %3
  %call2_400c85 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400c85, %struct.Memory* %loadMem2_400c85)
  store %struct.Memory* %call2_400c85, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 400c8a	 Bytes: 3
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8a = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8a)
  store %struct.Memory* %call_400c8a, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm1	 RIP: 400c8d	 Bytes: 5
  %loadMem_400c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8d = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8d)
  store %struct.Memory* %call_400c8d, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x62bb48	 RIP: 400c92	 Bytes: 9
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c92 = call %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c92)
  store %struct.Memory* %call_400c92, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm1	 RIP: 400c9b	 Bytes: 5
  %loadMem_400c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c9b = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c9b)
  store %struct.Memory* %call_400c9b, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 400ca0	 Bytes: 4
  %loadMem_400ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca0 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca0)
  store %struct.Memory* %call_400ca0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3a4(%rbp)	 RIP: 400ca4	 Bytes: 6
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca4 = call %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca4)
  store %struct.Memory* %call_400ca4, %struct.Memory** %MEMORY

  ; Code: jbe .L_400cfe	 RIP: 400caa	 Bytes: 6
  %loadMem_400caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400caa = call %struct.Memory* @routine_jbe_.L_400cfe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400caa, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_400caa, %struct.Memory** %MEMORY

  %loadBr_400caa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400caa = icmp eq i8 %loadBr_400caa, 1
  br i1 %cmpBr_400caa, label %block_.L_400cfe, label %block_400cb0

block_400cb0:
  ; Code: movsd 0x2190(%rip), %xmm0	 RIP: 400cb0	 Bytes: 8
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb0 = call %struct.Memory* @routine_movsd_0x2190__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb0)
  store %struct.Memory* %call_400cb0, %struct.Memory** %MEMORY

  ; Code: movsd 0x2198(%rip), %xmm1	 RIP: 400cb8	 Bytes: 8
  %loadMem_400cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb8 = call %struct.Memory* @routine_movsd_0x2198__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb8)
  store %struct.Memory* %call_400cb8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0xc(%rbp), %xmm2	 RIP: 400cc0	 Bytes: 5
  %loadMem_400cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc0 = call %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc0)
  store %struct.Memory* %call_400cc0, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm3	 RIP: 400cc5	 Bytes: 5
  %loadMem_400cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc5 = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc5)
  store %struct.Memory* %call_400cc5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm1	 RIP: 400cca	 Bytes: 4
  %loadMem_400cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cca = call %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cca)
  store %struct.Memory* %call_400cca, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm2	 RIP: 400cce	 Bytes: 4
  %loadMem_400cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cce = call %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cce)
  store %struct.Memory* %call_400cce, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm2, %xmm1	 RIP: 400cd2	 Bytes: 4
  %loadMem_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd2 = call %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd2)
  store %struct.Memory* %call_400cd2, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x62bb84	 RIP: 400cd6	 Bytes: 9
  %loadMem_400cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd6 = call %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd6)
  store %struct.Memory* %call_400cd6, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bb84, %xmm1	 RIP: 400cdf	 Bytes: 9
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdf = call %struct.Memory* @routine_cvtss2sd_0x62bb84___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdf)
  store %struct.Memory* %call_400cdf, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 400ce8	 Bytes: 4
  %loadMem_400ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce8 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce8)
  store %struct.Memory* %call_400ce8, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 400cec	 Bytes: 4
  %loadMem_400cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cec = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cec)
  store %struct.Memory* %call_400cec, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbc0	 RIP: 400cf0	 Bytes: 9
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf0 = call %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf0)
  store %struct.Memory* %call_400cf0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d13	 RIP: 400cf9	 Bytes: 5
  %loadMem_400cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf9 = call %struct.Memory* @routine_jmpq_.L_400d13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf9, i64 26, i64 5)
  store %struct.Memory* %call_400cf9, %struct.Memory** %MEMORY

  br label %block_.L_400d13

  ; Code: .L_400cfe:	 RIP: 400cfe	 Bytes: 0
block_.L_400cfe:

  ; Code: xorps %xmm0, %xmm0	 RIP: 400cfe	 Bytes: 3
  %loadMem_400cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfe = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfe)
  store %struct.Memory* %call_400cfe, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb84	 RIP: 400d01	 Bytes: 9
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d01 = call %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d01)
  store %struct.Memory* %call_400d01, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbc0	 RIP: 400d0a	 Bytes: 9
  %loadMem_400d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0a = call %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0a)
  store %struct.Memory* %call_400d0a, %struct.Memory** %MEMORY

  ; Code: .L_400d13:	 RIP: 400d13	 Bytes: 0
  br label %block_.L_400d13
block_.L_400d13:

  ; Code: xorl %edi, %edi	 RIP: 400d13	 Bytes: 2
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d13 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d13)
  store %struct.Memory* %call_400d13, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm0	 RIP: 400d15	 Bytes: 5
  %loadMem_400d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d15 = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d15)
  store %struct.Memory* %call_400d15, %struct.Memory** %MEMORY

  ; Code: divss -0x8(%rbp), %xmm0	 RIP: 400d1a	 Bytes: 5
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1a = call %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1a)
  store %struct.Memory* %call_400d1a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbfc	 RIP: 400d1f	 Bytes: 9
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1f = call %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1f)
  store %struct.Memory* %call_400d1f, %struct.Memory** %MEMORY

  ; Code: callq .print_time	 RIP: 400d28	 Bytes: 5
  %loadMem1_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400d28 = call %struct.Memory* @routine_callq_.print_time(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400d28, i64 6968, i64 5, i64 5)
  store %struct.Memory* %call1_400d28, %struct.Memory** %MEMORY

  %loadMem2_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d28 = load i64, i64* %3
  %call2_400d28 = call %struct.Memory* @sub_402860.print_time(%struct.State* %0, i64  %loadPC_400d28, %struct.Memory* %loadMem2_400d28)
  store %struct.Memory* %call2_400d28, %struct.Memory** %MEMORY

  ; Code: movq $0x40305f, %rsi	 RIP: 400d2d	 Bytes: 10
  %loadMem_400d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2d = call %struct.Memory* @routine_movq__0x40305f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2d)
  store %struct.Memory* %call_400d2d, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400d37	 Bytes: 8
  %loadMem_400d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d37 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d37)
  store %struct.Memory* %call_400d37, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400d3f	 Bytes: 2
  %loadMem_400d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3f)
  store %struct.Memory* %call_400d3f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400d41	 Bytes: 5
  %loadMem1_400d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400d41 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400d41, i64 -2145, i64 5, i64 5)
  store %struct.Memory* %call1_400d41, %struct.Memory** %MEMORY

  %loadMem2_400d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d41 = load i64, i64* %3
  %call2_400d41 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400d41, %struct.Memory* %loadMem2_400d41)
  store %struct.Memory* %call2_400d41, %struct.Memory** %MEMORY

  ; Code: movl $0xfffffffd, -0x40(%rbp)	 RIP: 400d46	 Bytes: 7
  %loadMem_400d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d46 = call %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d46)
  store %struct.Memory* %call_400d46, %struct.Memory** %MEMORY

  ; Code: movl $0x64, -0x44(%rbp)	 RIP: 400d4d	 Bytes: 7
  %loadMem_400d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4d = call %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4d)
  store %struct.Memory* %call_400d4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3a8(%rbp)	 RIP: 400d54	 Bytes: 6
  %loadMem_400d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d54 = call %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d54)
  store %struct.Memory* %call_400d54, %struct.Memory** %MEMORY

  ; Code: .L_400d5a:	 RIP: 400d5a	 Bytes: 0
  br label %block_.L_400d5a
block_.L_400d5a:

  ; Code: callq .second	 RIP: 400d5a	 Bytes: 5
  %loadMem1_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400d5a = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400d5a, i64 -1914, i64 5, i64 5)
  store %struct.Memory* %call1_400d5a, %struct.Memory** %MEMORY

  %loadMem2_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d5a = load i64, i64* %3
  %call2_400d5a = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_400d5a, %struct.Memory* %loadMem2_400d5a)
  store %struct.Memory* %call2_400d5a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x50(%rbp)	 RIP: 400d5f	 Bytes: 5
  %loadMem_400d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5f = call %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5f)
  store %struct.Memory* %call_400d5f, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 400d64	 Bytes: 3
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d64 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d64)
  store %struct.Memory* %call_400d64, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d67	 Bytes: 3
  %loadMem_400d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d67 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d67)
  store %struct.Memory* %call_400d67, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 400d6a	 Bytes: 3
  %loadMem_400d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6a = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6a)
  store %struct.Memory* %call_400d6a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 400d6d	 Bytes: 11
  %loadMem_400d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6d = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6d)
  store %struct.Memory* %call_400d6d, %struct.Memory** %MEMORY

  ; Code: .L_400d78:	 RIP: 400d78	 Bytes: 0
  br label %block_.L_400d78
block_.L_400d78:

  ; Code: movl 0x62bcec, %eax	 RIP: 400d78	 Bytes: 7
  %loadMem_400d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d78 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d78)
  store %struct.Memory* %call_400d78, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %eax	 RIP: 400d7f	 Bytes: 3
  %loadMem_400d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7f = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7f)
  store %struct.Memory* %call_400d7f, %struct.Memory** %MEMORY

  ; Code: jge .L_400dc9	 RIP: 400d82	 Bytes: 6
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d82 = call %struct.Memory* @routine_jge_.L_400dc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d82, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_400d82, %struct.Memory** %MEMORY

  %loadBr_400d82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d82 = icmp eq i8 %loadBr_400d82, 1
  br i1 %cmpBr_400d82, label %block_.L_400dc9, label %block_400d88

block_400d88:
  ; Code: movq $0x604060, %rdi	 RIP: 400d88	 Bytes: 10
  %loadMem_400d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d88 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d88)
  store %struct.Memory* %call_400d88, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 400d92	 Bytes: 10
  %loadMem_400d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d92 = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d92)
  store %struct.Memory* %call_400d92, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 400d9c	 Bytes: 4
  %loadMem_400d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9c = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9c)
  store %struct.Memory* %call_400d9c, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 400da0	 Bytes: 7
  %loadMem_400da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da0 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da0)
  store %struct.Memory* %call_400da0, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400da7	 Bytes: 7
  %loadMem_400da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da7 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da7)
  store %struct.Memory* %call_400da7, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 400dae	 Bytes: 5
  %loadMem1_400dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400dae = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400dae, i64 2466, i64 5, i64 5)
  store %struct.Memory* %call1_400dae, %struct.Memory** %MEMORY

  %loadMem2_400dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dae = load i64, i64* %3
  %call2_400dae = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_400dae, %struct.Memory* %loadMem2_400dae)
  store %struct.Memory* %call2_400dae, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 400db3	 Bytes: 7
  %loadMem_400db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db3 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db3)
  store %struct.Memory* %call_400db3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400dba	 Bytes: 3
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dba = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dba)
  store %struct.Memory* %call_400dba, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 400dbd	 Bytes: 7
  %loadMem_400dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbd = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbd)
  store %struct.Memory* %call_400dbd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d78	 RIP: 400dc4	 Bytes: 5
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc4 = call %struct.Memory* @routine_jmpq_.L_400d78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc4, i64 -76, i64 5)
  store %struct.Memory* %call_400dc4, %struct.Memory** %MEMORY

  br label %block_.L_400d78

  ; Code: .L_400dc9:	 RIP: 400dc9	 Bytes: 0
block_.L_400dc9:

  ; Code: callq .second	 RIP: 400dc9	 Bytes: 5
  %loadMem1_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400dc9 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400dc9, i64 -2025, i64 5, i64 5)
  store %struct.Memory* %call1_400dc9, %struct.Memory** %MEMORY

  %loadMem2_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dc9 = load i64, i64* %3
  %call2_400dc9 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_400dc9, %struct.Memory* %loadMem2_400dc9)
  store %struct.Memory* %call2_400dc9, %struct.Memory** %MEMORY

  ; Code: movq $0x40307d, %rsi	 RIP: 400dce	 Bytes: 10
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dce = call %struct.Memory* @routine_movq__0x40307d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dce)
  store %struct.Memory* %call_400dce, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 400dd8	 Bytes: 3
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd8 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd8)
  store %struct.Memory* %call_400dd8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x54(%rbp)	 RIP: 400ddb	 Bytes: 5
  %loadMem_400ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddb = call %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddb)
  store %struct.Memory* %call_400ddb, %struct.Memory** %MEMORY

  ; Code: movss -0x54(%rbp), %xmm0	 RIP: 400de0	 Bytes: 5
  %loadMem_400de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de0 = call %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de0)
  store %struct.Memory* %call_400de0, %struct.Memory** %MEMORY

  ; Code: subss -0x50(%rbp), %xmm0	 RIP: 400de5	 Bytes: 5
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de5 = call %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de5)
  store %struct.Memory* %call_400de5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x48(%rbp)	 RIP: 400dea	 Bytes: 5
  %loadMem_400dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dea = call %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dea)
  store %struct.Memory* %call_400dea, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400def	 Bytes: 8
  %loadMem_400def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400def = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400def)
  store %struct.Memory* %call_400def, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edx	 RIP: 400df7	 Bytes: 3
  %loadMem_400df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df7 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df7)
  store %struct.Memory* %call_400df7, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 400dfa	 Bytes: 3
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfa = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfa)
  store %struct.Memory* %call_400dfa, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 400dfd	 Bytes: 2
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfd = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfd)
  store %struct.Memory* %call_400dfd, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400dff	 Bytes: 5
  %loadMem1_400dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400dff = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400dff, i64 -2335, i64 5, i64 5)
  store %struct.Memory* %call1_400dff, %struct.Memory** %MEMORY

  %loadMem2_400dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dff = load i64, i64* %3
  %call2_400dff = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400dff, %struct.Memory* %loadMem2_400dff)
  store %struct.Memory* %call2_400dff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 400e04	 Bytes: 4
  %loadMem_400e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e04 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e04)
  store %struct.Memory* %call_400e04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3ac(%rbp)	 RIP: 400e08	 Bytes: 6
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e08 = call %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e08)
  store %struct.Memory* %call_400e08, %struct.Memory** %MEMORY

  ; Code: jge .L_400e1d	 RIP: 400e0e	 Bytes: 6
  %loadMem_400e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0e = call %struct.Memory* @routine_jge_.L_400e1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0e, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_400e0e, %struct.Memory** %MEMORY

  %loadBr_400e0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e0e = icmp eq i8 %loadBr_400e0e, 1
  br i1 %cmpBr_400e0e, label %block_.L_400e1d, label %block_400e14

block_400e14:
  ; Code: movl -0x44(%rbp), %eax	 RIP: 400e14	 Bytes: 3
  %loadMem_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e14 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e14)
  store %struct.Memory* %call_400e14, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 400e17	 Bytes: 3
  %loadMem_400e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e17 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e17)
  store %struct.Memory* %call_400e17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 400e1a	 Bytes: 3
  %loadMem_400e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1a = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1a)
  store %struct.Memory* %call_400e1a, %struct.Memory** %MEMORY

  ; Code: .L_400e1d:	 RIP: 400e1d	 Bytes: 0
  br label %block_.L_400e1d
block_.L_400e1d:

  ; Code: jmpq .L_400e22	 RIP: 400e1d	 Bytes: 5
  %loadMem_400e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1d = call %struct.Memory* @routine_jmpq_.L_400e22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1d, i64 5, i64 5)
  store %struct.Memory* %call_400e1d, %struct.Memory** %MEMORY

  br label %block_.L_400e22

  ; Code: .L_400e22:	 RIP: 400e22	 Bytes: 0
block_.L_400e22:

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 400e22	 Bytes: 4
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e22 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e22)
  store %struct.Memory* %call_400e22, %struct.Memory** %MEMORY

  ; Code: jl .L_400d5a	 RIP: 400e26	 Bytes: 6
  %loadMem_400e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e26 = call %struct.Memory* @routine_jl_.L_400d5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e26, i8* %BRANCH_TAKEN, i64 -204, i64 6, i64 6)
  store %struct.Memory* %call_400e26, %struct.Memory** %MEMORY

  %loadBr_400e26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e26 = icmp eq i8 %loadBr_400e26, 1
  br i1 %cmpBr_400e26, label %block_.L_400d5a, label %block_400e2c

block_400e2c:
  ; Code: movq $0x403097, %rsi	 RIP: 400e2c	 Bytes: 10
  %loadMem_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2c = call %struct.Memory* @routine_movq__0x403097___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2c)
  store %struct.Memory* %call_400e2c, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 400e36	 Bytes: 3
  %loadMem_400e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e36 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e36)
  store %struct.Memory* %call_400e36, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x48(%rbp), %xmm1	 RIP: 400e39	 Bytes: 5
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e39 = call %struct.Memory* @routine_cvtss2sd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e39)
  store %struct.Memory* %call_400e39, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x44(%rbp), %xmm2	 RIP: 400e3e	 Bytes: 5
  %loadMem_400e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3e = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3e)
  store %struct.Memory* %call_400e3e, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 400e43	 Bytes: 4
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e43 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e43)
  store %struct.Memory* %call_400e43, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm1	 RIP: 400e47	 Bytes: 4
  %loadMem_400e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e47 = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e47)
  store %struct.Memory* %call_400e47, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x48(%rbp)	 RIP: 400e4b	 Bytes: 5
  %loadMem_400e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4b = call %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4b)
  store %struct.Memory* %call_400e4b, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400e50	 Bytes: 8
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e50 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e50)
  store %struct.Memory* %call_400e50, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 400e58	 Bytes: 2
  %loadMem_400e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e58 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e58)
  store %struct.Memory* %call_400e58, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400e5a	 Bytes: 5
  %loadMem1_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e5a = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e5a, i64 -2426, i64 5, i64 5)
  store %struct.Memory* %call1_400e5a, %struct.Memory** %MEMORY

  %loadMem2_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e5a = load i64, i64* %3
  %call2_400e5a = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400e5a, %struct.Memory* %loadMem2_400e5a)
  store %struct.Memory* %call2_400e5a, %struct.Memory** %MEMORY

  ; Code: movq $0x4030be, %rsi	 RIP: 400e5f	 Bytes: 10
  %loadMem_400e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5f = call %struct.Memory* @routine_movq__0x4030be___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5f)
  store %struct.Memory* %call_400e5f, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400e69	 Bytes: 8
  %loadMem_400e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e69 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e69)
  store %struct.Memory* %call_400e69, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3b0(%rbp)	 RIP: 400e71	 Bytes: 6
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e71 = call %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e71)
  store %struct.Memory* %call_400e71, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400e77	 Bytes: 2
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e77 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e77)
  store %struct.Memory* %call_400e77, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400e79	 Bytes: 5
  %loadMem1_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e79 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e79, i64 -2457, i64 5, i64 5)
  store %struct.Memory* %call1_400e79, %struct.Memory** %MEMORY

  %loadMem2_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e79 = load i64, i64* %3
  %call2_400e79 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400e79, %struct.Memory* %loadMem2_400e79)
  store %struct.Memory* %call2_400e79, %struct.Memory** %MEMORY

  ; Code: movl $0xfffffffd, -0x40(%rbp)	 RIP: 400e7e	 Bytes: 7
  %loadMem_400e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7e = call %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7e)
  store %struct.Memory* %call_400e7e, %struct.Memory** %MEMORY

  ; Code: movl $0x64, 0x62c010	 RIP: 400e85	 Bytes: 11
  %loadMem_400e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e85 = call %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e85)
  store %struct.Memory* %call_400e85, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3b4(%rbp)	 RIP: 400e90	 Bytes: 6
  %loadMem_400e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e90 = call %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e90)
  store %struct.Memory* %call_400e90, %struct.Memory** %MEMORY

  ; Code: .L_400e96:	 RIP: 400e96	 Bytes: 0
  br label %block_.L_400e96
block_.L_400e96:

  ; Code: callq .second	 RIP: 400e96	 Bytes: 5
  %loadMem1_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e96 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e96, i64 -2230, i64 5, i64 5)
  store %struct.Memory* %call1_400e96, %struct.Memory** %MEMORY

  %loadMem2_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e96 = load i64, i64* %3
  %call2_400e96 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_400e96, %struct.Memory* %loadMem2_400e96)
  store %struct.Memory* %call2_400e96, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x50(%rbp)	 RIP: 400e9b	 Bytes: 5
  %loadMem_400e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9b = call %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9b)
  store %struct.Memory* %call_400e9b, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 400ea0	 Bytes: 3
  %loadMem_400ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea0 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea0)
  store %struct.Memory* %call_400ea0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ea3	 Bytes: 3
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea3)
  store %struct.Memory* %call_400ea3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 400ea6	 Bytes: 3
  %loadMem_400ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea6 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea6)
  store %struct.Memory* %call_400ea6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 400ea9	 Bytes: 11
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea9 = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea9)
  store %struct.Memory* %call_400ea9, %struct.Memory** %MEMORY

  ; Code: .L_400eb4:	 RIP: 400eb4	 Bytes: 0
  br label %block_.L_400eb4
block_.L_400eb4:

  ; Code: movl 0x62bcec, %eax	 RIP: 400eb4	 Bytes: 7
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb4 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb4)
  store %struct.Memory* %call_400eb4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62c010, %eax	 RIP: 400ebb	 Bytes: 7
  %loadMem_400ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebb = call %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebb)
  store %struct.Memory* %call_400ebb, %struct.Memory** %MEMORY

  ; Code: jge .L_400f3a	 RIP: 400ec2	 Bytes: 6
  %loadMem_400ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec2 = call %struct.Memory* @routine_jge_.L_400f3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec2, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_400ec2, %struct.Memory** %MEMORY

  %loadBr_400ec2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ec2 = icmp eq i8 %loadBr_400ec2, 1
  br i1 %cmpBr_400ec2, label %block_.L_400f3a, label %block_400ec8

block_400ec8:
  ; Code: movq $0x604060, %rdi	 RIP: 400ec8	 Bytes: 10
  %loadMem_400ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec8 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec8)
  store %struct.Memory* %call_400ec8, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 400ed2	 Bytes: 10
  %loadMem_400ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed2 = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed2)
  store %struct.Memory* %call_400ed2, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 400edc	 Bytes: 4
  %loadMem_400edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400edc = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400edc)
  store %struct.Memory* %call_400edc, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 400ee0	 Bytes: 7
  %loadMem_400ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee0 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee0)
  store %struct.Memory* %call_400ee0, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400ee7	 Bytes: 7
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee7 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee7)
  store %struct.Memory* %call_400ee7, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 400eee	 Bytes: 5
  %loadMem1_400eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400eee = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400eee, i64 2146, i64 5, i64 5)
  store %struct.Memory* %call1_400eee, %struct.Memory** %MEMORY

  %loadMem2_400eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400eee = load i64, i64* %3
  %call2_400eee = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_400eee, %struct.Memory* %loadMem2_400eee)
  store %struct.Memory* %call2_400eee, %struct.Memory** %MEMORY

  ; Code: movq $0x604060, %rdi	 RIP: 400ef3	 Bytes: 10
  %loadMem_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef3 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef3)
  store %struct.Memory* %call_400ef3, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 400efd	 Bytes: 10
  %loadMem_400efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efd = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efd)
  store %struct.Memory* %call_400efd, %struct.Memory** %MEMORY

  ; Code: movq $0x62bac0, %r8	 RIP: 400f07	 Bytes: 10
  %loadMem_400f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f07 = call %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f07)
  store %struct.Memory* %call_400f07, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 400f11	 Bytes: 7
  %loadMem_400f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f11 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f11)
  store %struct.Memory* %call_400f11, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 400f18	 Bytes: 7
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f18 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f18)
  store %struct.Memory* %call_400f18, %struct.Memory** %MEMORY

  ; Code: callq .dgefa	 RIP: 400f1f	 Bytes: 5
  %loadMem1_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f1f = call %struct.Memory* @routine_callq_.dgefa(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f1f, i64 2561, i64 5, i64 5)
  store %struct.Memory* %call1_400f1f, %struct.Memory** %MEMORY

  %loadMem2_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f1f = load i64, i64* %3
  %call2_400f1f = call %struct.Memory* @sub_401920.dgefa(%struct.State* %0, i64  %loadPC_400f1f, %struct.Memory* %loadMem2_400f1f)
  store %struct.Memory* %call2_400f1f, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 400f24	 Bytes: 7
  %loadMem_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f24 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f24)
  store %struct.Memory* %call_400f24, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f2b	 Bytes: 3
  %loadMem_400f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2b)
  store %struct.Memory* %call_400f2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 400f2e	 Bytes: 7
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2e = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2e)
  store %struct.Memory* %call_400f2e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400eb4	 RIP: 400f35	 Bytes: 5
  %loadMem_400f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f35 = call %struct.Memory* @routine_jmpq_.L_400eb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f35, i64 -129, i64 5)
  store %struct.Memory* %call_400f35, %struct.Memory** %MEMORY

  br label %block_.L_400eb4

  ; Code: .L_400f3a:	 RIP: 400f3a	 Bytes: 0
block_.L_400f3a:

  ; Code: callq .second	 RIP: 400f3a	 Bytes: 5
  %loadMem1_400f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f3a = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f3a, i64 -2394, i64 5, i64 5)
  store %struct.Memory* %call1_400f3a, %struct.Memory** %MEMORY

  %loadMem2_400f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f3a = load i64, i64* %3
  %call2_400f3a = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_400f3a, %struct.Memory* %loadMem2_400f3a)
  store %struct.Memory* %call2_400f3a, %struct.Memory** %MEMORY

  ; Code: movq $0x40307d, %rsi	 RIP: 400f3f	 Bytes: 10
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3f = call %struct.Memory* @routine_movq__0x40307d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3f)
  store %struct.Memory* %call_400f3f, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 400f49	 Bytes: 3
  %loadMem_400f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f49 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f49)
  store %struct.Memory* %call_400f49, %struct.Memory** %MEMORY

  ; Code: subss -0x50(%rbp), %xmm0	 RIP: 400f4c	 Bytes: 5
  %loadMem_400f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4c = call %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4c)
  store %struct.Memory* %call_400f4c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x54(%rbp)	 RIP: 400f51	 Bytes: 5
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f51 = call %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f51)
  store %struct.Memory* %call_400f51, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400f56	 Bytes: 8
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f56 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f56)
  store %struct.Memory* %call_400f56, %struct.Memory** %MEMORY

  ; Code: movl 0x62c010, %edx	 RIP: 400f5e	 Bytes: 7
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5e = call %struct.Memory* @routine_movl_0x62c010___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5e)
  store %struct.Memory* %call_400f5e, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 400f65	 Bytes: 3
  %loadMem_400f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f65 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f65)
  store %struct.Memory* %call_400f65, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 400f68	 Bytes: 2
  %loadMem_400f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f68 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f68)
  store %struct.Memory* %call_400f68, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400f6a	 Bytes: 5
  %loadMem1_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f6a = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f6a, i64 -2698, i64 5, i64 5)
  store %struct.Memory* %call1_400f6a, %struct.Memory** %MEMORY

  %loadMem2_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f6a = load i64, i64* %3
  %call2_400f6a = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400f6a, %struct.Memory* %loadMem2_400f6a)
  store %struct.Memory* %call2_400f6a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 400f6f	 Bytes: 4
  %loadMem_400f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6f)
  store %struct.Memory* %call_400f6f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3b8(%rbp)	 RIP: 400f73	 Bytes: 6
  %loadMem_400f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f73 = call %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f73)
  store %struct.Memory* %call_400f73, %struct.Memory** %MEMORY

  ; Code: jge .L_400f90	 RIP: 400f79	 Bytes: 6
  %loadMem_400f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f79 = call %struct.Memory* @routine_jge_.L_400f90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f79, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_400f79, %struct.Memory** %MEMORY

  %loadBr_400f79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f79 = icmp eq i8 %loadBr_400f79, 1
  br i1 %cmpBr_400f79, label %block_.L_400f90, label %block_400f7f

block_400f7f:
  ; Code: movl 0x62c010, %eax	 RIP: 400f7f	 Bytes: 7
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7f = call %struct.Memory* @routine_movl_0x62c010___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7f)
  store %struct.Memory* %call_400f7f, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 400f86	 Bytes: 3
  %loadMem_400f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f86 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f86)
  store %struct.Memory* %call_400f86, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62c010	 RIP: 400f89	 Bytes: 7
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f89 = call %struct.Memory* @routine_movl__eax__0x62c010(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f89)
  store %struct.Memory* %call_400f89, %struct.Memory** %MEMORY

  ; Code: .L_400f90:	 RIP: 400f90	 Bytes: 0
  br label %block_.L_400f90
block_.L_400f90:

  ; Code: jmpq .L_400f95	 RIP: 400f90	 Bytes: 5
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f90 = call %struct.Memory* @routine_jmpq_.L_400f95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f90, i64 5, i64 5)
  store %struct.Memory* %call_400f90, %struct.Memory** %MEMORY

  br label %block_.L_400f95

  ; Code: .L_400f95:	 RIP: 400f95	 Bytes: 0
block_.L_400f95:

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 400f95	 Bytes: 4
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f95 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f95)
  store %struct.Memory* %call_400f95, %struct.Memory** %MEMORY

  ; Code: jl .L_400e96	 RIP: 400f99	 Bytes: 6
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f99 = call %struct.Memory* @routine_jl_.L_400e96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f99, i8* %BRANCH_TAKEN, i64 -259, i64 6, i64 6)
  store %struct.Memory* %call_400f99, %struct.Memory** %MEMORY

  %loadBr_400f99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f99 = icmp eq i8 %loadBr_400f99, 1
  br i1 %cmpBr_400f99, label %block_.L_400e96, label %block_400f9f

block_400f9f:
  ; Code: movl $0x3e8, 0x62c010	 RIP: 400f9f	 Bytes: 11
  %loadMem_400f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9f = call %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9f)
  store %struct.Memory* %call_400f9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x62c010	 RIP: 400faa	 Bytes: 8
  %loadMem_400faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faa = call %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faa)
  store %struct.Memory* %call_400faa, %struct.Memory** %MEMORY

  ; Code: jne .L_400fc3	 RIP: 400fb2	 Bytes: 6
  %loadMem_400fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb2 = call %struct.Memory* @routine_jne_.L_400fc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb2, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_400fb2, %struct.Memory** %MEMORY

  %loadBr_400fb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fb2 = icmp eq i8 %loadBr_400fb2, 1
  br i1 %cmpBr_400fb2, label %block_.L_400fc3, label %block_400fb8

block_400fb8:
  ; Code: movl $0x1, 0x62c010	 RIP: 400fb8	 Bytes: 11
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb8 = call %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb8)
  store %struct.Memory* %call_400fb8, %struct.Memory** %MEMORY

  ; Code: .L_400fc3:	 RIP: 400fc3	 Bytes: 0
  br label %block_.L_400fc3
block_.L_400fc3:

  ; Code: movq $0x4030ed, %rsi	 RIP: 400fc3	 Bytes: 10
  %loadMem_400fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc3 = call %struct.Memory* @routine_movq__0x4030ed___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc3)
  store %struct.Memory* %call_400fc3, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 400fcd	 Bytes: 2
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcd = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcd)
  store %struct.Memory* %call_400fcd, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400fcf	 Bytes: 8
  %loadMem_400fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcf = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcf)
  store %struct.Memory* %call_400fcf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400fd7	 Bytes: 2
  %loadMem_400fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd7)
  store %struct.Memory* %call_400fd7, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400fd9	 Bytes: 5
  %loadMem1_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400fd9 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400fd9, i64 -2809, i64 5, i64 5)
  store %struct.Memory* %call1_400fd9, %struct.Memory** %MEMORY

  %loadMem2_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fd9 = load i64, i64* %3
  %call2_400fd9 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400fd9, %struct.Memory* %loadMem2_400fd9)
  store %struct.Memory* %call2_400fd9, %struct.Memory** %MEMORY

  ; Code: movq $0x403101, %rsi	 RIP: 400fde	 Bytes: 10
  %loadMem_400fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fde = call %struct.Memory* @routine_movq__0x403101___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fde)
  store %struct.Memory* %call_400fde, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 400fe8	 Bytes: 8
  %loadMem_400fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe8 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe8)
  store %struct.Memory* %call_400fe8, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %edx	 RIP: 400ff0	 Bytes: 7
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff0 = call %struct.Memory* @routine_movl_0x604050___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff0)
  store %struct.Memory* %call_400ff0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3bc(%rbp)	 RIP: 400ff7	 Bytes: 6
  %loadMem_400ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff7 = call %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff7)
  store %struct.Memory* %call_400ff7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400ffd	 Bytes: 2
  %loadMem_400ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffd)
  store %struct.Memory* %call_400ffd, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400fff	 Bytes: 5
  %loadMem1_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400fff = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400fff, i64 -2847, i64 5, i64 5)
  store %struct.Memory* %call1_400fff, %struct.Memory** %MEMORY

  %loadMem2_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fff = load i64, i64* %3
  %call2_400fff = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_400fff, %struct.Memory* %loadMem2_400fff)
  store %struct.Memory* %call2_400fff, %struct.Memory** %MEMORY

  ; Code: movq $0x40301a, %rsi	 RIP: 401004	 Bytes: 10
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401004 = call %struct.Memory* @routine_movq__0x40301a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401004)
  store %struct.Memory* %call_401004, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40100e	 Bytes: 8
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100e = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100e)
  store %struct.Memory* %call_40100e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c0(%rbp)	 RIP: 401016	 Bytes: 6
  %loadMem_401016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401016 = call %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401016)
  store %struct.Memory* %call_401016, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40101c	 Bytes: 2
  %loadMem_40101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101c)
  store %struct.Memory* %call_40101c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40101e	 Bytes: 5
  %loadMem1_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40101e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40101e, i64 -2878, i64 5, i64 5)
  store %struct.Memory* %call1_40101e, %struct.Memory** %MEMORY

  %loadMem2_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40101e = load i64, i64* %3
  %call2_40101e = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_40101e, %struct.Memory* %loadMem2_40101e)
  store %struct.Memory* %call2_40101e, %struct.Memory** %MEMORY

  ; Code: movq $0x403052, %rsi	 RIP: 401023	 Bytes: 10
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401023 = call %struct.Memory* @routine_movq__0x403052___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401023)
  store %struct.Memory* %call_401023, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40102d	 Bytes: 8
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102d = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102d)
  store %struct.Memory* %call_40102d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c4(%rbp)	 RIP: 401035	 Bytes: 6
  %loadMem_401035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401035 = call %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401035)
  store %struct.Memory* %call_401035, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40103b	 Bytes: 2
  %loadMem_40103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103b)
  store %struct.Memory* %call_40103b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40103d	 Bytes: 5
  %loadMem1_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40103d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40103d, i64 -2909, i64 5, i64 5)
  store %struct.Memory* %call1_40103d, %struct.Memory** %MEMORY

  %loadMem2_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40103d = load i64, i64* %3
  %call2_40103d = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_40103d, %struct.Memory* %loadMem2_40103d)
  store %struct.Memory* %call2_40103d, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 401042	 Bytes: 3
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401042 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401042)
  store %struct.Memory* %call_401042, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x62c010, %xmm1	 RIP: 401045	 Bytes: 9
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401045 = call %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401045)
  store %struct.Memory* %call_401045, %struct.Memory** %MEMORY

  ; Code: mulss -0x48(%rbp), %xmm1	 RIP: 40104e	 Bytes: 5
  %loadMem_40104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104e = call %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104e)
  store %struct.Memory* %call_40104e, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x2c(%rbp)	 RIP: 401053	 Bytes: 5
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401053 = call %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401053)
  store %struct.Memory* %call_401053, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb9c	 RIP: 401058	 Bytes: 9
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401058 = call %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401058)
  store %struct.Memory* %call_401058, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x62c014	 RIP: 401061	 Bytes: 11
  %loadMem_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401061 = call %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401061)
  store %struct.Memory* %call_401061, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c8(%rbp)	 RIP: 40106c	 Bytes: 6
  %loadMem_40106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106c = call %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106c)
  store %struct.Memory* %call_40106c, %struct.Memory** %MEMORY

  ; Code: .L_401072:	 RIP: 401072	 Bytes: 0
  br label %block_.L_401072
block_.L_401072:

  ; Code: cmpl $0x6, 0x62c014	 RIP: 401072	 Bytes: 8
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401072 = call %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401072)
  store %struct.Memory* %call_401072, %struct.Memory** %MEMORY

  ; Code: jge .L_4012e1	 RIP: 40107a	 Bytes: 6
  %loadMem_40107a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107a = call %struct.Memory* @routine_jge_.L_4012e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107a, i8* %BRANCH_TAKEN, i64 615, i64 6, i64 6)
  store %struct.Memory* %call_40107a, %struct.Memory** %MEMORY

  %loadBr_40107a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40107a = icmp eq i8 %loadBr_40107a, 1
  br i1 %cmpBr_40107a, label %block_.L_4012e1, label %block_401080

block_401080:
  ; Code: callq .second	 RIP: 401080	 Bytes: 5
  %loadMem1_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401080 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401080, i64 -2720, i64 5, i64 5)
  store %struct.Memory* %call1_401080, %struct.Memory** %MEMORY

  %loadMem2_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401080 = load i64, i64* %3
  %call2_401080 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_401080, %struct.Memory* %loadMem2_401080)
  store %struct.Memory* %call2_401080, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 401085	 Bytes: 5
  %loadMem_401085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401085 = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401085)
  store %struct.Memory* %call_401085, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 40108a	 Bytes: 11
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108a = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108a)
  store %struct.Memory* %call_40108a, %struct.Memory** %MEMORY

  ; Code: .L_401095:	 RIP: 401095	 Bytes: 0
  br label %block_.L_401095
block_.L_401095:

  ; Code: movl 0x62bcec, %eax	 RIP: 401095	 Bytes: 7
  %loadMem_401095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401095 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401095)
  store %struct.Memory* %call_401095, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62c010, %eax	 RIP: 40109c	 Bytes: 7
  %loadMem_40109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109c = call %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109c)
  store %struct.Memory* %call_40109c, %struct.Memory** %MEMORY

  ; Code: jge .L_40111b	 RIP: 4010a3	 Bytes: 6
  %loadMem_4010a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a3 = call %struct.Memory* @routine_jge_.L_40111b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a3, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_4010a3, %struct.Memory** %MEMORY

  %loadBr_4010a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010a3 = icmp eq i8 %loadBr_4010a3, 1
  br i1 %cmpBr_4010a3, label %block_.L_40111b, label %block_4010a9

block_4010a9:
  ; Code: movq $0x604060, %rdi	 RIP: 4010a9	 Bytes: 10
  %loadMem_4010a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a9 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a9)
  store %struct.Memory* %call_4010a9, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 4010b3	 Bytes: 10
  %loadMem_4010b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b3 = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b3)
  store %struct.Memory* %call_4010b3, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 4010bd	 Bytes: 4
  %loadMem_4010bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bd = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bd)
  store %struct.Memory* %call_4010bd, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 4010c1	 Bytes: 7
  %loadMem_4010c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c1 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c1)
  store %struct.Memory* %call_4010c1, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 4010c8	 Bytes: 7
  %loadMem_4010c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c8 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c8)
  store %struct.Memory* %call_4010c8, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 4010cf	 Bytes: 5
  %loadMem1_4010cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4010cf = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4010cf, i64 1665, i64 5, i64 5)
  store %struct.Memory* %call1_4010cf, %struct.Memory** %MEMORY

  %loadMem2_4010cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4010cf = load i64, i64* %3
  %call2_4010cf = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_4010cf, %struct.Memory* %loadMem2_4010cf)
  store %struct.Memory* %call2_4010cf, %struct.Memory** %MEMORY

  ; Code: movq $0x604060, %rdi	 RIP: 4010d4	 Bytes: 10
  %loadMem_4010d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d4 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d4)
  store %struct.Memory* %call_4010d4, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 4010de	 Bytes: 10
  %loadMem_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010de = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010de)
  store %struct.Memory* %call_4010de, %struct.Memory** %MEMORY

  ; Code: movq $0x62bac0, %r8	 RIP: 4010e8	 Bytes: 10
  %loadMem_4010e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e8 = call %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e8)
  store %struct.Memory* %call_4010e8, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 4010f2	 Bytes: 7
  %loadMem_4010f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f2 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f2)
  store %struct.Memory* %call_4010f2, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 4010f9	 Bytes: 7
  %loadMem_4010f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f9 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f9)
  store %struct.Memory* %call_4010f9, %struct.Memory** %MEMORY

  ; Code: callq .dgefa	 RIP: 401100	 Bytes: 5
  %loadMem1_401100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401100 = call %struct.Memory* @routine_callq_.dgefa(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401100, i64 2080, i64 5, i64 5)
  store %struct.Memory* %call1_401100, %struct.Memory** %MEMORY

  %loadMem2_401100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401100 = load i64, i64* %3
  %call2_401100 = call %struct.Memory* @sub_401920.dgefa(%struct.State* %0, i64  %loadPC_401100, %struct.Memory* %loadMem2_401100)
  store %struct.Memory* %call2_401100, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 401105	 Bytes: 7
  %loadMem_401105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401105 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401105)
  store %struct.Memory* %call_401105, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40110c	 Bytes: 3
  %loadMem_40110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110c)
  store %struct.Memory* %call_40110c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 40110f	 Bytes: 7
  %loadMem_40110f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110f = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110f)
  store %struct.Memory* %call_40110f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401095	 RIP: 401116	 Bytes: 5
  %loadMem_401116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401116 = call %struct.Memory* @routine_jmpq_.L_401095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401116, i64 -129, i64 5)
  store %struct.Memory* %call_401116, %struct.Memory** %MEMORY

  br label %block_.L_401095

  ; Code: .L_40111b:	 RIP: 40111b	 Bytes: 0
block_.L_40111b:

  ; Code: callq .second	 RIP: 40111b	 Bytes: 5
  %loadMem1_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40111b = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40111b, i64 -2875, i64 5, i64 5)
  store %struct.Memory* %call1_40111b, %struct.Memory** %MEMORY

  %loadMem2_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40111b = load i64, i64* %3
  %call2_40111b = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_40111b, %struct.Memory* %loadMem2_40111b)
  store %struct.Memory* %call2_40111b, %struct.Memory** %MEMORY

  ; Code: subss -0x28(%rbp), %xmm0	 RIP: 401120	 Bytes: 5
  %loadMem_401120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401120 = call %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401120)
  store %struct.Memory* %call_401120, %struct.Memory** %MEMORY

  ; Code: subss -0x2c(%rbp), %xmm0	 RIP: 401125	 Bytes: 5
  %loadMem_401125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401125 = call %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401125)
  store %struct.Memory* %call_401125, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x62c010, %xmm1	 RIP: 40112a	 Bytes: 9
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112a = call %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112a)
  store %struct.Memory* %call_40112a, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 401133	 Bytes: 4
  %loadMem_401133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401133 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401133)
  store %struct.Memory* %call_401133, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401137	 Bytes: 8
  %loadMem_401137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401137 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401137)
  store %struct.Memory* %call_401137, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bad0(,%rax,4)	 RIP: 40113f	 Bytes: 9
  %loadMem_40113f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113f = call %struct.Memory* @routine_movss__xmm0__0x62bad0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113f)
  store %struct.Memory* %call_40113f, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 401148	 Bytes: 5
  %loadMem1_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401148 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401148, i64 -2920, i64 5, i64 5)
  store %struct.Memory* %call1_401148, %struct.Memory** %MEMORY

  %loadMem2_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401148 = load i64, i64* %3
  %call2_401148 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_401148, %struct.Memory* %loadMem2_401148)
  store %struct.Memory* %call2_401148, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 40114d	 Bytes: 5
  %loadMem_40114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114d = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114d)
  store %struct.Memory* %call_40114d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 401152	 Bytes: 11
  %loadMem_401152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401152 = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401152)
  store %struct.Memory* %call_401152, %struct.Memory** %MEMORY

  ; Code: .L_40115d:	 RIP: 40115d	 Bytes: 0
  br label %block_.L_40115d
block_.L_40115d:

  ; Code: movl 0x62bcec, %eax	 RIP: 40115d	 Bytes: 7
  %loadMem_40115d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115d = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115d)
  store %struct.Memory* %call_40115d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62c010, %eax	 RIP: 401164	 Bytes: 7
  %loadMem_401164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401164 = call %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401164)
  store %struct.Memory* %call_401164, %struct.Memory** %MEMORY

  ; Code: jge .L_4011bb	 RIP: 40116b	 Bytes: 6
  %loadMem_40116b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116b = call %struct.Memory* @routine_jge_.L_4011bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116b, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_40116b, %struct.Memory** %MEMORY

  %loadBr_40116b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40116b = icmp eq i8 %loadBr_40116b, 1
  br i1 %cmpBr_40116b, label %block_.L_4011bb, label %block_401171

block_401171:
  ; Code: movq $0x604060, %rdi	 RIP: 401171	 Bytes: 10
  %loadMem_401171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401171 = call %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401171)
  store %struct.Memory* %call_401171, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 40117b	 Bytes: 10
  %loadMem_40117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117b = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117b)
  store %struct.Memory* %call_40117b, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %r8	 RIP: 401185	 Bytes: 10
  %loadMem_401185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401185 = call %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401185)
  store %struct.Memory* %call_401185, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 40118f	 Bytes: 3
  %loadMem_40118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118f = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118f)
  store %struct.Memory* %call_40118f, %struct.Memory** %MEMORY

  ; Code: movl 0x604050, %esi	 RIP: 401192	 Bytes: 7
  %loadMem_401192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401192 = call %struct.Memory* @routine_movl_0x604050___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401192)
  store %struct.Memory* %call_401192, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 401199	 Bytes: 7
  %loadMem_401199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401199 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401199)
  store %struct.Memory* %call_401199, %struct.Memory** %MEMORY

  ; Code: callq .dgesl	 RIP: 4011a0	 Bytes: 5
  %loadMem1_4011a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011a0 = call %struct.Memory* @routine_callq_.dgesl(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011a0, i64 2704, i64 5, i64 5)
  store %struct.Memory* %call1_4011a0, %struct.Memory** %MEMORY

  %loadMem2_4011a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011a0 = load i64, i64* %3
  %call2_4011a0 = call %struct.Memory* @sub_401c30.dgesl(%struct.State* %0, i64  %loadPC_4011a0, %struct.Memory* %loadMem2_4011a0)
  store %struct.Memory* %call2_4011a0, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 4011a5	 Bytes: 7
  %loadMem_4011a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a5 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a5)
  store %struct.Memory* %call_4011a5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4011ac	 Bytes: 3
  %loadMem_4011ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ac)
  store %struct.Memory* %call_4011ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 4011af	 Bytes: 7
  %loadMem_4011af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011af = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011af)
  store %struct.Memory* %call_4011af, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40115d	 RIP: 4011b6	 Bytes: 5
  %loadMem_4011b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b6 = call %struct.Memory* @routine_jmpq_.L_40115d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b6, i64 -89, i64 5)
  store %struct.Memory* %call_4011b6, %struct.Memory** %MEMORY

  br label %block_.L_40115d

  ; Code: .L_4011bb:	 RIP: 4011bb	 Bytes: 0
block_.L_4011bb:

  ; Code: callq .second	 RIP: 4011bb	 Bytes: 5
  %loadMem1_4011bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011bb = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011bb, i64 -3035, i64 5, i64 5)
  store %struct.Memory* %call1_4011bb, %struct.Memory** %MEMORY

  %loadMem2_4011bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011bb = load i64, i64* %3
  %call2_4011bb = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_4011bb, %struct.Memory* %loadMem2_4011bb)
  store %struct.Memory* %call2_4011bb, %struct.Memory** %MEMORY

  ; Code: movsd 0x1c80(%rip), %xmm1	 RIP: 4011c0	 Bytes: 8
  %loadMem_4011c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c0 = call %struct.Memory* @routine_movsd_0x1c80__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c0)
  store %struct.Memory* %call_4011c0, %struct.Memory** %MEMORY

  ; Code: movsd 0x1c88(%rip), %xmm2	 RIP: 4011c8	 Bytes: 8
  %loadMem_4011c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c8 = call %struct.Memory* @routine_movsd_0x1c88__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c8)
  store %struct.Memory* %call_4011c8, %struct.Memory** %MEMORY

  ; Code: subss -0x28(%rbp), %xmm0	 RIP: 4011d0	 Bytes: 5
  %loadMem_4011d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d0 = call %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d0)
  store %struct.Memory* %call_4011d0, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x62c010, %xmm3	 RIP: 4011d5	 Bytes: 9
  %loadMem_4011d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d5 = call %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d5)
  store %struct.Memory* %call_4011d5, %struct.Memory** %MEMORY

  ; Code: divss %xmm3, %xmm0	 RIP: 4011de	 Bytes: 4
  %loadMem_4011de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011de = call %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011de)
  store %struct.Memory* %call_4011de, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 4011e2	 Bytes: 8
  %loadMem_4011e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e2 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e2)
  store %struct.Memory* %call_4011e2, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb0c(,%rax,4)	 RIP: 4011ea	 Bytes: 9
  %loadMem_4011ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ea = call %struct.Memory* @routine_movss__xmm0__0x62bb0c___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ea)
  store %struct.Memory* %call_4011ea, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 4011f3	 Bytes: 8
  %loadMem_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f3 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f3)
  store %struct.Memory* %call_4011f3, %struct.Memory** %MEMORY

  ; Code: movss 0x62bad0(,%rax,4), %xmm0	 RIP: 4011fb	 Bytes: 9
  %loadMem_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fb = call %struct.Memory* @routine_movss_0x62bad0___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fb)
  store %struct.Memory* %call_4011fb, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401204	 Bytes: 8
  %loadMem_401204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401204 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401204)
  store %struct.Memory* %call_401204, %struct.Memory** %MEMORY

  ; Code: addss 0x62bb0c(,%rax,4), %xmm0	 RIP: 40120c	 Bytes: 9
  %loadMem_40120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120c = call %struct.Memory* @routine_addss_0x62bb0c___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120c)
  store %struct.Memory* %call_40120c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x10(%rbp)	 RIP: 401215	 Bytes: 5
  %loadMem_401215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401215 = call %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401215)
  store %struct.Memory* %call_401215, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm0	 RIP: 40121a	 Bytes: 5
  %loadMem_40121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121a = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121a)
  store %struct.Memory* %call_40121a, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 40121f	 Bytes: 8
  %loadMem_40121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121f = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121f)
  store %struct.Memory* %call_40121f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb48(,%rax,4)	 RIP: 401227	 Bytes: 9
  %loadMem_401227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401227 = call %struct.Memory* @routine_movss__xmm0__0x62bb48___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401227)
  store %struct.Memory* %call_401227, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0xc(%rbp), %xmm0	 RIP: 401230	 Bytes: 5
  %loadMem_401230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401230 = call %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401230)
  store %struct.Memory* %call_401230, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm3	 RIP: 401235	 Bytes: 5
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401235 = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401235)
  store %struct.Memory* %call_401235, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 40123a	 Bytes: 4
  %loadMem_40123a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123a = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123a)
  store %struct.Memory* %call_40123a, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm0	 RIP: 40123e	 Bytes: 4
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123e = call %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123e)
  store %struct.Memory* %call_40123e, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 401242	 Bytes: 4
  %loadMem_401242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401242 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401242)
  store %struct.Memory* %call_401242, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401246	 Bytes: 8
  %loadMem_401246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401246 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401246)
  store %struct.Memory* %call_401246, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb84(,%rax,4)	 RIP: 40124e	 Bytes: 9
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124e = call %struct.Memory* @routine_movss__xmm0__0x62bb84___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124e)
  store %struct.Memory* %call_40124e, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401257	 Bytes: 8
  %loadMem_401257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401257 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401257)
  store %struct.Memory* %call_401257, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bb84(,%rax,4), %xmm0	 RIP: 40125f	 Bytes: 9
  %loadMem_40125f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125f = call %struct.Memory* @routine_cvtss2sd_0x62bb84___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125f)
  store %struct.Memory* %call_40125f, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm1	 RIP: 401268	 Bytes: 4
  %loadMem_401268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401268 = call %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401268)
  store %struct.Memory* %call_401268, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm0	 RIP: 40126c	 Bytes: 4
  %loadMem_40126c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126c = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126c)
  store %struct.Memory* %call_40126c, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401270	 Bytes: 8
  %loadMem_401270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401270 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401270)
  store %struct.Memory* %call_401270, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbc0(,%rax,4)	 RIP: 401278	 Bytes: 9
  %loadMem_401278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401278 = call %struct.Memory* @routine_movss__xmm0__0x62bbc0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401278)
  store %struct.Memory* %call_401278, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm0	 RIP: 401281	 Bytes: 5
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401281 = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401281)
  store %struct.Memory* %call_401281, %struct.Memory** %MEMORY

  ; Code: divss -0x8(%rbp), %xmm0	 RIP: 401286	 Bytes: 5
  %loadMem_401286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401286 = call %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401286)
  store %struct.Memory* %call_401286, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 40128b	 Bytes: 8
  %loadMem_40128b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128b = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128b)
  store %struct.Memory* %call_40128b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbfc(,%rax,4)	 RIP: 401293	 Bytes: 9
  %loadMem_401293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401293 = call %struct.Memory* @routine_movss__xmm0__0x62bbfc___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401293)
  store %struct.Memory* %call_401293, %struct.Memory** %MEMORY

  ; Code: movss 0x62bb9c, %xmm0	 RIP: 40129c	 Bytes: 9
  %loadMem_40129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129c = call %struct.Memory* @routine_movss_0x62bb9c___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129c)
  store %struct.Memory* %call_40129c, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 4012a5	 Bytes: 8
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a5 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a5)
  store %struct.Memory* %call_4012a5, %struct.Memory** %MEMORY

  ; Code: addss 0x62bb84(,%rax,4), %xmm0	 RIP: 4012ad	 Bytes: 9
  %loadMem_4012ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ad = call %struct.Memory* @routine_addss_0x62bb84___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ad)
  store %struct.Memory* %call_4012ad, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb9c	 RIP: 4012b6	 Bytes: 9
  %loadMem_4012b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b6 = call %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b6)
  store %struct.Memory* %call_4012b6, %struct.Memory** %MEMORY

  ; Code: movl 0x62c014, %edi	 RIP: 4012bf	 Bytes: 7
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bf = call %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bf)
  store %struct.Memory* %call_4012bf, %struct.Memory** %MEMORY

  ; Code: callq .print_time	 RIP: 4012c6	 Bytes: 5
  %loadMem1_4012c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012c6 = call %struct.Memory* @routine_callq_.print_time(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012c6, i64 5530, i64 5, i64 5)
  store %struct.Memory* %call1_4012c6, %struct.Memory** %MEMORY

  %loadMem2_4012c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012c6 = load i64, i64* %3
  %call2_4012c6 = call %struct.Memory* @sub_402860.print_time(%struct.State* %0, i64  %loadPC_4012c6, %struct.Memory* %loadMem2_4012c6)
  store %struct.Memory* %call2_4012c6, %struct.Memory** %MEMORY

  ; Code: movl 0x62c014, %eax	 RIP: 4012cb	 Bytes: 7
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4012d2	 Bytes: 3
  %loadMem_4012d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d2)
  store %struct.Memory* %call_4012d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62c014	 RIP: 4012d5	 Bytes: 7
  %loadMem_4012d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d5 = call %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d5)
  store %struct.Memory* %call_4012d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401072	 RIP: 4012dc	 Bytes: 5
  %loadMem_4012dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012dc = call %struct.Memory* @routine_jmpq_.L_401072(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012dc, i64 -618, i64 5)
  store %struct.Memory* %call_4012dc, %struct.Memory** %MEMORY

  br label %block_.L_401072

  ; Code: .L_4012e1:	 RIP: 4012e1	 Bytes: 0
block_.L_4012e1:

  ; Code: movq $0x403130, %rsi	 RIP: 4012e1	 Bytes: 10
  %loadMem_4012e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e1 = call %struct.Memory* @routine_movq__0x403130___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e1)
  store %struct.Memory* %call_4012e1, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4012eb	 Bytes: 3
  %loadMem_4012eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012eb = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012eb)
  store %struct.Memory* %call_4012eb, %struct.Memory** %MEMORY

  ; Code: movsd 0x1b6a(%rip), %xmm1	 RIP: 4012ee	 Bytes: 8
  %loadMem_4012ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ee = call %struct.Memory* @routine_movsd_0x1b6a__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ee)
  store %struct.Memory* %call_4012ee, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bb9c, %xmm2	 RIP: 4012f6	 Bytes: 9
  %loadMem_4012f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f6 = call %struct.Memory* @routine_cvtss2sd_0x62bb9c___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f6)
  store %struct.Memory* %call_4012f6, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm2	 RIP: 4012ff	 Bytes: 4
  %loadMem_4012ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ff = call %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ff)
  store %struct.Memory* %call_4012ff, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm2, %xmm1	 RIP: 401303	 Bytes: 4
  %loadMem_401303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401303 = call %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401303)
  store %struct.Memory* %call_401303, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x62bb9c	 RIP: 401307	 Bytes: 9
  %loadMem_401307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401307 = call %struct.Memory* @routine_movss__xmm1__0x62bb9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401307)
  store %struct.Memory* %call_401307, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 401310	 Bytes: 8
  %loadMem_401310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401310 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401310)
  store %struct.Memory* %call_401310, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 401318	 Bytes: 2
  %loadMem_401318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401318 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401318)
  store %struct.Memory* %call_401318, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40131a	 Bytes: 5
  %loadMem1_40131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40131a = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40131a, i64 -3642, i64 5, i64 5)
  store %struct.Memory* %call1_40131a, %struct.Memory** %MEMORY

  %loadMem2_40131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40131a = load i64, i64* %3
  %call2_40131a = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_40131a, %struct.Memory* %loadMem2_40131a)
  store %struct.Memory* %call2_40131a, %struct.Memory** %MEMORY

  ; Code: movq $0x403159, %rsi	 RIP: 40131f	 Bytes: 10
  %loadMem_40131f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131f = call %struct.Memory* @routine_movq__0x403159___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131f)
  store %struct.Memory* %call_40131f, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 401329	 Bytes: 8
  %loadMem_401329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401329 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401329)
  store %struct.Memory* %call_401329, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3cc(%rbp)	 RIP: 401331	 Bytes: 6
  %loadMem_401331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401331 = call %struct.Memory* @routine_movl__eax__MINUS0x3cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401331)
  store %struct.Memory* %call_401331, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401337	 Bytes: 2
  %loadMem_401337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401337 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401337)
  store %struct.Memory* %call_401337, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 401339	 Bytes: 5
  %loadMem1_401339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401339 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401339, i64 -3673, i64 5, i64 5)
  store %struct.Memory* %call1_401339, %struct.Memory** %MEMORY

  %loadMem2_401339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401339 = load i64, i64* %3
  %call2_401339 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_401339, %struct.Memory* %loadMem2_401339)
  store %struct.Memory* %call2_401339, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d0(%rbp)	 RIP: 40133e	 Bytes: 6
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133e = call %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133e)
  store %struct.Memory* %call_40133e, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 401344	 Bytes: 5
  %loadMem1_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401344 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401344, i64 -3428, i64 5, i64 5)
  store %struct.Memory* %call1_401344, %struct.Memory** %MEMORY

  %loadMem2_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401344 = load i64, i64* %3
  %call2_401344 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_401344, %struct.Memory* %loadMem2_401344)
  store %struct.Memory* %call2_401344, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x50(%rbp)	 RIP: 401349	 Bytes: 5
  %loadMem_401349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401349 = call %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401349)
  store %struct.Memory* %call_401349, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 40134e	 Bytes: 11
  %loadMem_40134e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134e = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134e)
  store %struct.Memory* %call_40134e, %struct.Memory** %MEMORY

  ; Code: .L_401359:	 RIP: 401359	 Bytes: 0
  br label %block_.L_401359
block_.L_401359:

  ; Code: movl 0x62bcec, %eax	 RIP: 401359	 Bytes: 7
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401359 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401359)
  store %struct.Memory* %call_401359, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %eax	 RIP: 401360	 Bytes: 3
  %loadMem_401360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401360 = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401360)
  store %struct.Memory* %call_401360, %struct.Memory** %MEMORY

  ; Code: jge .L_4013aa	 RIP: 401363	 Bytes: 6
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401363 = call %struct.Memory* @routine_jge_.L_4013aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401363, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_401363, %struct.Memory** %MEMORY

  %loadBr_401363 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401363 = icmp eq i8 %loadBr_401363, 1
  br i1 %cmpBr_401363, label %block_.L_4013aa, label %block_401369

block_401369:
  ; Code: movq $0x62c020, %rdi	 RIP: 401369	 Bytes: 10
  %loadMem_401369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401369 = call %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401369)
  store %struct.Memory* %call_401369, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 401373	 Bytes: 10
  %loadMem_401373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401373 = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401373)
  store %struct.Memory* %call_401373, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 40137d	 Bytes: 4
  %loadMem_40137d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137d = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137d)
  store %struct.Memory* %call_40137d, %struct.Memory** %MEMORY

  ; Code: movl 0x604054, %esi	 RIP: 401381	 Bytes: 7
  %loadMem_401381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401381 = call %struct.Memory* @routine_movl_0x604054___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401381)
  store %struct.Memory* %call_401381, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 401388	 Bytes: 7
  %loadMem_401388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401388 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401388)
  store %struct.Memory* %call_401388, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 40138f	 Bytes: 5
  %loadMem1_40138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40138f = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40138f, i64 961, i64 5, i64 5)
  store %struct.Memory* %call1_40138f, %struct.Memory** %MEMORY

  %loadMem2_40138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40138f = load i64, i64* %3
  %call2_40138f = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_40138f, %struct.Memory* %loadMem2_40138f)
  store %struct.Memory* %call2_40138f, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 401394	 Bytes: 7
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401394 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401394)
  store %struct.Memory* %call_401394, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40139b	 Bytes: 3
  %loadMem_40139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139b)
  store %struct.Memory* %call_40139b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 40139e	 Bytes: 7
  %loadMem_40139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139e = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139e)
  store %struct.Memory* %call_40139e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401359	 RIP: 4013a5	 Bytes: 5
  %loadMem_4013a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a5 = call %struct.Memory* @routine_jmpq_.L_401359(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a5, i64 -76, i64 5)
  store %struct.Memory* %call_4013a5, %struct.Memory** %MEMORY

  br label %block_.L_401359

  ; Code: .L_4013aa:	 RIP: 4013aa	 Bytes: 0
block_.L_4013aa:

  ; Code: callq .second	 RIP: 4013aa	 Bytes: 5
  %loadMem1_4013aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013aa = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013aa, i64 -3530, i64 5, i64 5)
  store %struct.Memory* %call1_4013aa, %struct.Memory** %MEMORY

  %loadMem2_4013aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013aa = load i64, i64* %3
  %call2_4013aa = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_4013aa, %struct.Memory* %loadMem2_4013aa)
  store %struct.Memory* %call2_4013aa, %struct.Memory** %MEMORY

  ; Code: movq $0x403097, %rsi	 RIP: 4013af	 Bytes: 10
  %loadMem_4013af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013af = call %struct.Memory* @routine_movq__0x403097___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013af)
  store %struct.Memory* %call_4013af, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 4013b9	 Bytes: 3
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b9 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b9)
  store %struct.Memory* %call_4013b9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x54(%rbp)	 RIP: 4013bc	 Bytes: 5
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bc = call %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bc)
  store %struct.Memory* %call_4013bc, %struct.Memory** %MEMORY

  ; Code: movss -0x54(%rbp), %xmm0	 RIP: 4013c1	 Bytes: 5
  %loadMem_4013c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c1 = call %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c1)
  store %struct.Memory* %call_4013c1, %struct.Memory** %MEMORY

  ; Code: subss -0x50(%rbp), %xmm0	 RIP: 4013c6	 Bytes: 5
  %loadMem_4013c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c6 = call %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c6)
  store %struct.Memory* %call_4013c6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x4c(%rbp)	 RIP: 4013cb	 Bytes: 5
  %loadMem_4013cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cb = call %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cb)
  store %struct.Memory* %call_4013cb, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x4c(%rbp), %xmm0	 RIP: 4013d0	 Bytes: 5
  %loadMem_4013d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d0 = call %struct.Memory* @routine_cvtss2sd_MINUS0x4c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d0)
  store %struct.Memory* %call_4013d0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x44(%rbp), %xmm2	 RIP: 4013d5	 Bytes: 5
  %loadMem_4013d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d5 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d5)
  store %struct.Memory* %call_4013d5, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm0	 RIP: 4013da	 Bytes: 4
  %loadMem_4013da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013da = call %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013da)
  store %struct.Memory* %call_4013da, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 4013de	 Bytes: 4
  %loadMem_4013de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013de = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013de)
  store %struct.Memory* %call_4013de, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x4c(%rbp)	 RIP: 4013e2	 Bytes: 5
  %loadMem_4013e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e2)
  store %struct.Memory* %call_4013e2, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 4013e7	 Bytes: 8
  %loadMem_4013e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e7 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e7)
  store %struct.Memory* %call_4013e7, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4013ef	 Bytes: 3
  %loadMem_4013ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ef = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ef)
  store %struct.Memory* %call_4013ef, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4013f2	 Bytes: 2
  %loadMem_4013f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f2 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f2)
  store %struct.Memory* %call_4013f2, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4013f4	 Bytes: 5
  %loadMem1_4013f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013f4 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013f4, i64 -3860, i64 5, i64 5)
  store %struct.Memory* %call1_4013f4, %struct.Memory** %MEMORY

  %loadMem2_4013f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013f4 = load i64, i64* %3
  %call2_4013f4 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_4013f4, %struct.Memory* %loadMem2_4013f4)
  store %struct.Memory* %call2_4013f4, %struct.Memory** %MEMORY

  ; Code: movq $0x403101, %rsi	 RIP: 4013f9	 Bytes: 10
  %loadMem_4013f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f9 = call %struct.Memory* @routine_movq__0x403101___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f9)
  store %struct.Memory* %call_4013f9, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 401403	 Bytes: 8
  %loadMem_401403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401403 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401403)
  store %struct.Memory* %call_401403, %struct.Memory** %MEMORY

  ; Code: movl 0x604054, %edx	 RIP: 40140b	 Bytes: 7
  %loadMem_40140b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140b = call %struct.Memory* @routine_movl_0x604054___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140b)
  store %struct.Memory* %call_40140b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d4(%rbp)	 RIP: 401412	 Bytes: 6
  %loadMem_401412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401412 = call %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401412)
  store %struct.Memory* %call_401412, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401418	 Bytes: 2
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401418 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401418)
  store %struct.Memory* %call_401418, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40141a	 Bytes: 5
  %loadMem1_40141a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40141a = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40141a, i64 -3898, i64 5, i64 5)
  store %struct.Memory* %call1_40141a, %struct.Memory** %MEMORY

  %loadMem2_40141a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40141a = load i64, i64* %3
  %call2_40141a = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_40141a, %struct.Memory* %loadMem2_40141a)
  store %struct.Memory* %call2_40141a, %struct.Memory** %MEMORY

  ; Code: movq $0x40301a, %rsi	 RIP: 40141f	 Bytes: 10
  %loadMem_40141f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141f = call %struct.Memory* @routine_movq__0x40301a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141f)
  store %struct.Memory* %call_40141f, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 401429	 Bytes: 8
  %loadMem_401429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401429 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401429)
  store %struct.Memory* %call_401429, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d8(%rbp)	 RIP: 401431	 Bytes: 6
  %loadMem_401431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401431 = call %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401431)
  store %struct.Memory* %call_401431, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401437	 Bytes: 2
  %loadMem_401437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401437 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401437)
  store %struct.Memory* %call_401437, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 401439	 Bytes: 5
  %loadMem1_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401439 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401439, i64 -3929, i64 5, i64 5)
  store %struct.Memory* %call1_401439, %struct.Memory** %MEMORY

  %loadMem2_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401439 = load i64, i64* %3
  %call2_401439 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_401439, %struct.Memory* %loadMem2_401439)
  store %struct.Memory* %call2_401439, %struct.Memory** %MEMORY

  ; Code: movq $0x403052, %rsi	 RIP: 40143e	 Bytes: 10
  %loadMem_40143e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143e = call %struct.Memory* @routine_movq__0x403052___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143e)
  store %struct.Memory* %call_40143e, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 401448	 Bytes: 8
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401448 = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401448)
  store %struct.Memory* %call_401448, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3dc(%rbp)	 RIP: 401450	 Bytes: 6
  %loadMem_401450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401450 = call %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401450)
  store %struct.Memory* %call_401450, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401456	 Bytes: 2
  %loadMem_401456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401456 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401456)
  store %struct.Memory* %call_401456, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 401458	 Bytes: 5
  %loadMem1_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401458 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401458, i64 -3960, i64 5, i64 5)
  store %struct.Memory* %call1_401458, %struct.Memory** %MEMORY

  %loadMem2_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401458 = load i64, i64* %3
  %call2_401458 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_401458, %struct.Memory* %loadMem2_401458)
  store %struct.Memory* %call2_401458, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 40145d	 Bytes: 3
  %loadMem_40145d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145d = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145d)
  store %struct.Memory* %call_40145d, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x62c010, %xmm1	 RIP: 401460	 Bytes: 9
  %loadMem_401460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401460 = call %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401460)
  store %struct.Memory* %call_401460, %struct.Memory** %MEMORY

  ; Code: mulss -0x4c(%rbp), %xmm1	 RIP: 401469	 Bytes: 5
  %loadMem_401469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401469 = call %struct.Memory* @routine_mulss_MINUS0x4c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401469)
  store %struct.Memory* %call_401469, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x2c(%rbp)	 RIP: 40146e	 Bytes: 5
  %loadMem_40146e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146e = call %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146e)
  store %struct.Memory* %call_40146e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbb4	 RIP: 401473	 Bytes: 9
  %loadMem_401473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401473 = call %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401473)
  store %struct.Memory* %call_401473, %struct.Memory** %MEMORY

  ; Code: movl $0x7, 0x62c014	 RIP: 40147c	 Bytes: 11
  %loadMem_40147c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147c = call %struct.Memory* @routine_movl__0x7__0x62c014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147c)
  store %struct.Memory* %call_40147c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e0(%rbp)	 RIP: 401487	 Bytes: 6
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401487 = call %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401487)
  store %struct.Memory* %call_401487, %struct.Memory** %MEMORY

  ; Code: .L_40148d:	 RIP: 40148d	 Bytes: 0
  br label %block_.L_40148d
block_.L_40148d:

  ; Code: cmpl $0xc, 0x62c014	 RIP: 40148d	 Bytes: 8
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_cmpl__0xc__0x62c014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: jge .L_4016fc	 RIP: 401495	 Bytes: 6
  %loadMem_401495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401495 = call %struct.Memory* @routine_jge_.L_4016fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401495, i8* %BRANCH_TAKEN, i64 615, i64 6, i64 6)
  store %struct.Memory* %call_401495, %struct.Memory** %MEMORY

  %loadBr_401495 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401495 = icmp eq i8 %loadBr_401495, 1
  br i1 %cmpBr_401495, label %block_.L_4016fc, label %block_40149b

block_40149b:
  ; Code: callq .second	 RIP: 40149b	 Bytes: 5
  %loadMem1_40149b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40149b = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40149b, i64 -3771, i64 5, i64 5)
  store %struct.Memory* %call1_40149b, %struct.Memory** %MEMORY

  %loadMem2_40149b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40149b = load i64, i64* %3
  %call2_40149b = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_40149b, %struct.Memory* %loadMem2_40149b)
  store %struct.Memory* %call2_40149b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 4014a0	 Bytes: 5
  %loadMem_4014a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a0 = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a0)
  store %struct.Memory* %call_4014a0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 4014a5	 Bytes: 11
  %loadMem_4014a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a5 = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a5)
  store %struct.Memory* %call_4014a5, %struct.Memory** %MEMORY

  ; Code: .L_4014b0:	 RIP: 4014b0	 Bytes: 0
  br label %block_.L_4014b0
block_.L_4014b0:

  ; Code: movl 0x62bcec, %eax	 RIP: 4014b0	 Bytes: 7
  %loadMem_4014b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b0 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b0)
  store %struct.Memory* %call_4014b0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62c010, %eax	 RIP: 4014b7	 Bytes: 7
  %loadMem_4014b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b7 = call %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b7)
  store %struct.Memory* %call_4014b7, %struct.Memory** %MEMORY

  ; Code: jge .L_401536	 RIP: 4014be	 Bytes: 6
  %loadMem_4014be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014be = call %struct.Memory* @routine_jge_.L_401536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014be, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_4014be, %struct.Memory** %MEMORY

  %loadBr_4014be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014be = icmp eq i8 %loadBr_4014be, 1
  br i1 %cmpBr_4014be, label %block_.L_401536, label %block_4014c4

block_4014c4:
  ; Code: movq $0x62c020, %rdi	 RIP: 4014c4	 Bytes: 10
  %loadMem_4014c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c4 = call %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c4)
  store %struct.Memory* %call_4014c4, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %rcx	 RIP: 4014ce	 Bytes: 10
  %loadMem_4014ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ce = call %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ce)
  store %struct.Memory* %call_4014ce, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 4014d8	 Bytes: 4
  %loadMem_4014d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d8 = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d8)
  store %struct.Memory* %call_4014d8, %struct.Memory** %MEMORY

  ; Code: movl 0x604054, %esi	 RIP: 4014dc	 Bytes: 7
  %loadMem_4014dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014dc = call %struct.Memory* @routine_movl_0x604054___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014dc)
  store %struct.Memory* %call_4014dc, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 4014e3	 Bytes: 7
  %loadMem_4014e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e3 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e3)
  store %struct.Memory* %call_4014e3, %struct.Memory** %MEMORY

  ; Code: callq .matgen	 RIP: 4014ea	 Bytes: 5
  %loadMem1_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4014ea = call %struct.Memory* @routine_callq_.matgen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4014ea, i64 614, i64 5, i64 5)
  store %struct.Memory* %call1_4014ea, %struct.Memory** %MEMORY

  %loadMem2_4014ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014ea = load i64, i64* %3
  %call2_4014ea = call %struct.Memory* @sub_401750.matgen(%struct.State* %0, i64  %loadPC_4014ea, %struct.Memory* %loadMem2_4014ea)
  store %struct.Memory* %call2_4014ea, %struct.Memory** %MEMORY

  ; Code: movq $0x62c020, %rdi	 RIP: 4014ef	 Bytes: 10
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ef = call %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ef)
  store %struct.Memory* %call_4014ef, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 4014f9	 Bytes: 10
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f9 = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f9)
  store %struct.Memory* %call_4014f9, %struct.Memory** %MEMORY

  ; Code: movq $0x62bac0, %r8	 RIP: 401503	 Bytes: 10
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401503 = call %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401503)
  store %struct.Memory* %call_401503, %struct.Memory** %MEMORY

  ; Code: movl 0x604054, %esi	 RIP: 40150d	 Bytes: 7
  %loadMem_40150d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150d = call %struct.Memory* @routine_movl_0x604054___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150d)
  store %struct.Memory* %call_40150d, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 401514	 Bytes: 7
  %loadMem_401514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401514 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401514)
  store %struct.Memory* %call_401514, %struct.Memory** %MEMORY

  ; Code: callq .dgefa	 RIP: 40151b	 Bytes: 5
  %loadMem1_40151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40151b = call %struct.Memory* @routine_callq_.dgefa(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40151b, i64 1029, i64 5, i64 5)
  store %struct.Memory* %call1_40151b, %struct.Memory** %MEMORY

  %loadMem2_40151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40151b = load i64, i64* %3
  %call2_40151b = call %struct.Memory* @sub_401920.dgefa(%struct.State* %0, i64  %loadPC_40151b, %struct.Memory* %loadMem2_40151b)
  store %struct.Memory* %call2_40151b, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 401520	 Bytes: 7
  %loadMem_401520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401520 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401520)
  store %struct.Memory* %call_401520, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401527	 Bytes: 3
  %loadMem_401527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401527 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401527)
  store %struct.Memory* %call_401527, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 40152a	 Bytes: 7
  %loadMem_40152a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152a = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152a)
  store %struct.Memory* %call_40152a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4014b0	 RIP: 401531	 Bytes: 5
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_jmpq_.L_4014b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531, i64 -129, i64 5)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  br label %block_.L_4014b0

  ; Code: .L_401536:	 RIP: 401536	 Bytes: 0
block_.L_401536:

  ; Code: callq .second	 RIP: 401536	 Bytes: 5
  %loadMem1_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401536 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401536, i64 -3926, i64 5, i64 5)
  store %struct.Memory* %call1_401536, %struct.Memory** %MEMORY

  %loadMem2_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401536 = load i64, i64* %3
  %call2_401536 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_401536, %struct.Memory* %loadMem2_401536)
  store %struct.Memory* %call2_401536, %struct.Memory** %MEMORY

  ; Code: subss -0x28(%rbp), %xmm0	 RIP: 40153b	 Bytes: 5
  %loadMem_40153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153b = call %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153b)
  store %struct.Memory* %call_40153b, %struct.Memory** %MEMORY

  ; Code: subss -0x2c(%rbp), %xmm0	 RIP: 401540	 Bytes: 5
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401540 = call %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401540)
  store %struct.Memory* %call_401540, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x62c010, %xmm1	 RIP: 401545	 Bytes: 9
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401545 = call %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401545)
  store %struct.Memory* %call_401545, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 40154e	 Bytes: 4
  %loadMem_40154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154e = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154e)
  store %struct.Memory* %call_40154e, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401552	 Bytes: 8
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401552 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401552)
  store %struct.Memory* %call_401552, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bad0(,%rax,4)	 RIP: 40155a	 Bytes: 9
  %loadMem_40155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155a = call %struct.Memory* @routine_movss__xmm0__0x62bad0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155a)
  store %struct.Memory* %call_40155a, %struct.Memory** %MEMORY

  ; Code: callq .second	 RIP: 401563	 Bytes: 5
  %loadMem1_401563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401563 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401563, i64 -3971, i64 5, i64 5)
  store %struct.Memory* %call1_401563, %struct.Memory** %MEMORY

  %loadMem2_401563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401563 = load i64, i64* %3
  %call2_401563 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_401563, %struct.Memory* %loadMem2_401563)
  store %struct.Memory* %call2_401563, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x28(%rbp)	 RIP: 401568	 Bytes: 5
  %loadMem_401568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401568 = call %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401568)
  store %struct.Memory* %call_401568, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x62bcec	 RIP: 40156d	 Bytes: 11
  %loadMem_40156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156d = call %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156d)
  store %struct.Memory* %call_40156d, %struct.Memory** %MEMORY

  ; Code: .L_401578:	 RIP: 401578	 Bytes: 0
  br label %block_.L_401578
block_.L_401578:

  ; Code: movl 0x62bcec, %eax	 RIP: 401578	 Bytes: 7
  %loadMem_401578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401578 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401578)
  store %struct.Memory* %call_401578, %struct.Memory** %MEMORY

  ; Code: cmpl 0x62c010, %eax	 RIP: 40157f	 Bytes: 7
  %loadMem_40157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157f = call %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157f)
  store %struct.Memory* %call_40157f, %struct.Memory** %MEMORY

  ; Code: jge .L_4015d6	 RIP: 401586	 Bytes: 6
  %loadMem_401586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401586 = call %struct.Memory* @routine_jge_.L_4015d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401586, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_401586, %struct.Memory** %MEMORY

  %loadBr_401586 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401586 = icmp eq i8 %loadBr_401586, 1
  br i1 %cmpBr_401586, label %block_.L_4015d6, label %block_40158c

block_40158c:
  ; Code: movq $0x62c020, %rdi	 RIP: 40158c	 Bytes: 10
  %loadMem_40158c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158c = call %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158c)
  store %struct.Memory* %call_40158c, %struct.Memory** %MEMORY

  ; Code: movq $0x62b7a0, %rcx	 RIP: 401596	 Bytes: 10
  %loadMem_401596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401596 = call %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401596)
  store %struct.Memory* %call_401596, %struct.Memory** %MEMORY

  ; Code: movq $0x62b480, %r8	 RIP: 4015a0	 Bytes: 10
  %loadMem_4015a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a0 = call %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a0)
  store %struct.Memory* %call_4015a0, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 4015aa	 Bytes: 3
  %loadMem_4015aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015aa = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015aa)
  store %struct.Memory* %call_4015aa, %struct.Memory** %MEMORY

  ; Code: movl 0x604054, %esi	 RIP: 4015ad	 Bytes: 7
  %loadMem_4015ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ad = call %struct.Memory* @routine_movl_0x604054___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ad)
  store %struct.Memory* %call_4015ad, %struct.Memory** %MEMORY

  ; Code: movl 0x604058, %edx	 RIP: 4015b4	 Bytes: 7
  %loadMem_4015b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b4 = call %struct.Memory* @routine_movl_0x604058___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b4)
  store %struct.Memory* %call_4015b4, %struct.Memory** %MEMORY

  ; Code: callq .dgesl	 RIP: 4015bb	 Bytes: 5
  %loadMem1_4015bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015bb = call %struct.Memory* @routine_callq_.dgesl(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015bb, i64 1653, i64 5, i64 5)
  store %struct.Memory* %call1_4015bb, %struct.Memory** %MEMORY

  %loadMem2_4015bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015bb = load i64, i64* %3
  %call2_4015bb = call %struct.Memory* @sub_401c30.dgesl(%struct.State* %0, i64  %loadPC_4015bb, %struct.Memory* %loadMem2_4015bb)
  store %struct.Memory* %call2_4015bb, %struct.Memory** %MEMORY

  ; Code: movl 0x62bcec, %eax	 RIP: 4015c0	 Bytes: 7
  %loadMem_4015c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c0 = call %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c0)
  store %struct.Memory* %call_4015c0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015c7	 Bytes: 3
  %loadMem_4015c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c7)
  store %struct.Memory* %call_4015c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62bcec	 RIP: 4015ca	 Bytes: 7
  %loadMem_4015ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ca = call %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ca)
  store %struct.Memory* %call_4015ca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401578	 RIP: 4015d1	 Bytes: 5
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d1 = call %struct.Memory* @routine_jmpq_.L_401578(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d1, i64 -89, i64 5)
  store %struct.Memory* %call_4015d1, %struct.Memory** %MEMORY

  br label %block_.L_401578

  ; Code: .L_4015d6:	 RIP: 4015d6	 Bytes: 0
block_.L_4015d6:

  ; Code: callq .second	 RIP: 4015d6	 Bytes: 5
  %loadMem1_4015d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015d6 = call %struct.Memory* @routine_callq_.second(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015d6, i64 -4086, i64 5, i64 5)
  store %struct.Memory* %call1_4015d6, %struct.Memory** %MEMORY

  %loadMem2_4015d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015d6 = load i64, i64* %3
  %call2_4015d6 = call %struct.Memory* @sub_4005e0.second(%struct.State* %0, i64  %loadPC_4015d6, %struct.Memory* %loadMem2_4015d6)
  store %struct.Memory* %call2_4015d6, %struct.Memory** %MEMORY

  ; Code: movsd 0x1865(%rip), %xmm1	 RIP: 4015db	 Bytes: 8
  %loadMem_4015db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015db = call %struct.Memory* @routine_movsd_0x1865__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015db)
  store %struct.Memory* %call_4015db, %struct.Memory** %MEMORY

  ; Code: movsd 0x186d(%rip), %xmm2	 RIP: 4015e3	 Bytes: 8
  %loadMem_4015e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e3 = call %struct.Memory* @routine_movsd_0x186d__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e3)
  store %struct.Memory* %call_4015e3, %struct.Memory** %MEMORY

  ; Code: subss -0x28(%rbp), %xmm0	 RIP: 4015eb	 Bytes: 5
  %loadMem_4015eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015eb = call %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015eb)
  store %struct.Memory* %call_4015eb, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x62c010, %xmm3	 RIP: 4015f0	 Bytes: 9
  %loadMem_4015f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f0 = call %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f0)
  store %struct.Memory* %call_4015f0, %struct.Memory** %MEMORY

  ; Code: divss %xmm3, %xmm0	 RIP: 4015f9	 Bytes: 4
  %loadMem_4015f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f9 = call %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f9)
  store %struct.Memory* %call_4015f9, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 4015fd	 Bytes: 8
  %loadMem_4015fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fd = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fd)
  store %struct.Memory* %call_4015fd, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb0c(,%rax,4)	 RIP: 401605	 Bytes: 9
  %loadMem_401605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401605 = call %struct.Memory* @routine_movss__xmm0__0x62bb0c___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401605)
  store %struct.Memory* %call_401605, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 40160e	 Bytes: 8
  %loadMem_40160e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160e = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160e)
  store %struct.Memory* %call_40160e, %struct.Memory** %MEMORY

  ; Code: movss 0x62bad0(,%rax,4), %xmm0	 RIP: 401616	 Bytes: 9
  %loadMem_401616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401616 = call %struct.Memory* @routine_movss_0x62bad0___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401616)
  store %struct.Memory* %call_401616, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 40161f	 Bytes: 8
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: addss 0x62bb0c(,%rax,4), %xmm0	 RIP: 401627	 Bytes: 9
  %loadMem_401627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401627 = call %struct.Memory* @routine_addss_0x62bb0c___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401627)
  store %struct.Memory* %call_401627, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x10(%rbp)	 RIP: 401630	 Bytes: 5
  %loadMem_401630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401630 = call %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401630)
  store %struct.Memory* %call_401630, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm0	 RIP: 401635	 Bytes: 5
  %loadMem_401635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401635 = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401635)
  store %struct.Memory* %call_401635, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 40163a	 Bytes: 8
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163a = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163a)
  store %struct.Memory* %call_40163a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb48(,%rax,4)	 RIP: 401642	 Bytes: 9
  %loadMem_401642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401642 = call %struct.Memory* @routine_movss__xmm0__0x62bb48___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401642)
  store %struct.Memory* %call_401642, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0xc(%rbp), %xmm0	 RIP: 40164b	 Bytes: 5
  %loadMem_40164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164b = call %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164b)
  store %struct.Memory* %call_40164b, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x10(%rbp), %xmm3	 RIP: 401650	 Bytes: 5
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401655	 Bytes: 4
  %loadMem_401655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401655 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401655)
  store %struct.Memory* %call_401655, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm0	 RIP: 401659	 Bytes: 4
  %loadMem_401659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401659 = call %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401659)
  store %struct.Memory* %call_401659, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 40165d	 Bytes: 4
  %loadMem_40165d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165d = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165d)
  store %struct.Memory* %call_40165d, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401661	 Bytes: 8
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bb84(,%rax,4)	 RIP: 401669	 Bytes: 9
  %loadMem_401669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401669 = call %struct.Memory* @routine_movss__xmm0__0x62bb84___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401669)
  store %struct.Memory* %call_401669, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 401672	 Bytes: 8
  %loadMem_401672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401672 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401672)
  store %struct.Memory* %call_401672, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bb84(,%rax,4), %xmm0	 RIP: 40167a	 Bytes: 9
  %loadMem_40167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167a = call %struct.Memory* @routine_cvtss2sd_0x62bb84___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167a)
  store %struct.Memory* %call_40167a, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm1	 RIP: 401683	 Bytes: 4
  %loadMem_401683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401683 = call %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401683)
  store %struct.Memory* %call_401683, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm0	 RIP: 401687	 Bytes: 4
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401687 = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401687)
  store %struct.Memory* %call_401687, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 40168b	 Bytes: 8
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168b = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168b)
  store %struct.Memory* %call_40168b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbc0(,%rax,4)	 RIP: 401693	 Bytes: 9
  %loadMem_401693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401693 = call %struct.Memory* @routine_movss__xmm0__0x62bbc0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401693)
  store %struct.Memory* %call_401693, %struct.Memory** %MEMORY

  ; Code: movss -0x10(%rbp), %xmm0	 RIP: 40169c	 Bytes: 5
  %loadMem_40169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169c = call %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169c)
  store %struct.Memory* %call_40169c, %struct.Memory** %MEMORY

  ; Code: divss -0x8(%rbp), %xmm0	 RIP: 4016a1	 Bytes: 5
  %loadMem_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a1 = call %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a1)
  store %struct.Memory* %call_4016a1, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 4016a6	 Bytes: 8
  %loadMem_4016a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a6 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a6)
  store %struct.Memory* %call_4016a6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbfc(,%rax,4)	 RIP: 4016ae	 Bytes: 9
  %loadMem_4016ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ae = call %struct.Memory* @routine_movss__xmm0__0x62bbfc___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ae)
  store %struct.Memory* %call_4016ae, %struct.Memory** %MEMORY

  ; Code: movss 0x62bbb4, %xmm0	 RIP: 4016b7	 Bytes: 9
  %loadMem_4016b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b7 = call %struct.Memory* @routine_movss_0x62bbb4___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b7)
  store %struct.Memory* %call_4016b7, %struct.Memory** %MEMORY

  ; Code: movslq 0x62c014, %rax	 RIP: 4016c0	 Bytes: 8
  %loadMem_4016c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c0 = call %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c0)
  store %struct.Memory* %call_4016c0, %struct.Memory** %MEMORY

  ; Code: addss 0x62bb84(,%rax,4), %xmm0	 RIP: 4016c8	 Bytes: 9
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_addss_0x62bb84___rax_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x62bbb4	 RIP: 4016d1	 Bytes: 9
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: movl 0x62c014, %edi	 RIP: 4016da	 Bytes: 7
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: callq .print_time	 RIP: 4016e1	 Bytes: 5
  %loadMem1_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4016e1 = call %struct.Memory* @routine_callq_.print_time(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4016e1, i64 4479, i64 5, i64 5)
  store %struct.Memory* %call1_4016e1, %struct.Memory** %MEMORY

  %loadMem2_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4016e1 = load i64, i64* %3
  %call2_4016e1 = call %struct.Memory* @sub_402860.print_time(%struct.State* %0, i64  %loadPC_4016e1, %struct.Memory* %loadMem2_4016e1)
  store %struct.Memory* %call2_4016e1, %struct.Memory** %MEMORY

  ; Code: movl 0x62c014, %eax	 RIP: 4016e6	 Bytes: 7
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e6 = call %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e6)
  store %struct.Memory* %call_4016e6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4016ed	 Bytes: 3
  %loadMem_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ed = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ed)
  store %struct.Memory* %call_4016ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x62c014	 RIP: 4016f0	 Bytes: 7
  %loadMem_4016f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f0 = call %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f0)
  store %struct.Memory* %call_4016f0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40148d	 RIP: 4016f7	 Bytes: 5
  %loadMem_4016f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f7 = call %struct.Memory* @routine_jmpq_.L_40148d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f7, i64 -618, i64 5)
  store %struct.Memory* %call_4016f7, %struct.Memory** %MEMORY

  br label %block_.L_40148d

  ; Code: .L_4016fc:	 RIP: 4016fc	 Bytes: 0
block_.L_4016fc:

  ; Code: movq $0x403130, %rsi	 RIP: 4016fc	 Bytes: 10
  %loadMem_4016fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fc = call %struct.Memory* @routine_movq__0x403130___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fc)
  store %struct.Memory* %call_4016fc, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 401706	 Bytes: 3
  %loadMem_401706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401706 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401706)
  store %struct.Memory* %call_401706, %struct.Memory** %MEMORY

  ; Code: movsd 0x174f(%rip), %xmm1	 RIP: 401709	 Bytes: 8
  %loadMem_401709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401709 = call %struct.Memory* @routine_movsd_0x174f__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401709)
  store %struct.Memory* %call_401709, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x62bbb4, %xmm2	 RIP: 401711	 Bytes: 9
  %loadMem_401711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401711 = call %struct.Memory* @routine_cvtss2sd_0x62bbb4___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401711)
  store %struct.Memory* %call_401711, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm2	 RIP: 40171a	 Bytes: 4
  %loadMem_40171a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171a = call %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171a)
  store %struct.Memory* %call_40171a, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm2, %xmm1	 RIP: 40171e	 Bytes: 4
  %loadMem_40171e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171e = call %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171e)
  store %struct.Memory* %call_40171e, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x62bbb4	 RIP: 401722	 Bytes: 9
  %loadMem_401722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401722 = call %struct.Memory* @routine_movss__xmm1__0x62bbb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401722)
  store %struct.Memory* %call_401722, %struct.Memory** %MEMORY

  ; Code: movq 0x604040, %rdi	 RIP: 40172b	 Bytes: 8
  %loadMem_40172b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172b = call %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172b)
  store %struct.Memory* %call_40172b, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 401733	 Bytes: 2
  %loadMem_401733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401733 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401733)
  store %struct.Memory* %call_401733, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 401735	 Bytes: 5
  %loadMem1_401735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401735 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401735, i64 -4693, i64 5, i64 5)
  store %struct.Memory* %call1_401735, %struct.Memory** %MEMORY

  %loadMem2_401735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401735 = load i64, i64* %3
  %call2_401735 = call %struct.Memory* @sub_4004e0.fprintf_plt(%struct.State* %0, i64  %loadPC_401735, %struct.Memory* %loadMem2_401735)
  store %struct.Memory* %call2_401735, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 40173a	 Bytes: 2
  %loadMem_40173a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173a = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173a)
  store %struct.Memory* %call_40173a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e4(%rbp)	 RIP: 40173c	 Bytes: 6
  %loadMem_40173c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173c = call %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173c)
  store %struct.Memory* %call_40173c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 401742	 Bytes: 2
  %loadMem_401742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401742 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401742)
  store %struct.Memory* %call_401742, %struct.Memory** %MEMORY

  ; Code: addq $0x3f0, %rsp	 RIP: 401744	 Bytes: 7
  %loadMem_401744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401744 = call %struct.Memory* @routine_addq__0x3f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401744)
  store %struct.Memory* %call_401744, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40174b	 Bytes: 1
  %loadMem_40174b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174b)
  store %struct.Memory* %call_40174b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40174c	 Bytes: 1
  %loadMem_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174c)
  store %struct.Memory* %call_40174c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40174c
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

define %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1008)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x402edb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206299)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss_0x27eb__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10227
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x402eba___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4206266)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x402ea0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 4206240)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2d0___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 720)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 832
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 840
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 848
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 852
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 864
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.memset_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 832
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 864
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6307920, i64 201)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6307924, i64 200)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 852
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x64__0x604058(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6307928, i64 100)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq_0x604040___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 6307904)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 840
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x402ee3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206307)
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 868
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402eeb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206315)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 872
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402f21___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206369)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 876
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402f32___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206386)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 880
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x604060___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 6307936)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 6468736)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd_0x26a0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9896
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x26a0__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9896
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x604058___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 6307928)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %7 to i64
  %11 = mul  i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %2, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #22
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull_0x604058___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 9
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 6307928)
  ret %struct.Memory* %14
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = sitofp i32 %5 to double
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = extractelement <2 x i32> %6, i32 0
  %11 = bitcast i8* %2 to i32*
  store i32 %10, i32* %11, align 1
  %12 = extractelement <2 x i32> %6, i32 1
  %13 = getelementptr inbounds i8, i8* %2, i64 4
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 0
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = bitcast i8* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = fptrunc double %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x604050___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 6307920)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x604058___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 6307928)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 884
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.matgen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_callq_.second(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 6469536)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 6470336)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.dgefa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fsub float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470352, i8* %8)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x62b480___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 6468736)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_callq_.dgesl(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470412, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6470352)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6470412)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470892, i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6470892)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = trunc i64 %2 to i32
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %5, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %5
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6307928)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %2, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %16 = select i1 %12, i64 %4, i64 %3
  store i64 %16, i64* %15, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jge_.L_400927(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6470892)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6468736
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = mul i64 %11, 4
  %13 = add i64 %12, 6470896
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i8* %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %4, %3
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %8
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %8, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %7, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470892, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4008db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jge_.L_4009b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to i64*
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %2 to [2 x i32]*
  %9 = bitcast i64* %2 to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 -2147483648)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI3VnWI8vec128_tE3RVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = bitcast i8* %2 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %2, i64 8
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %2, i64 12
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI3VnWI8vec128_tE3RVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = mul i64 %11, 4
  %13 = add i64 %12, 6468736
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i8* %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_40095d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 6468736)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 6470896)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x604060___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 6307936)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x604058___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 6307928)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x604050___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 6307920)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.dmxpy(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 28
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_400b15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6468736
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = add i64 %3, 4
  %8 = inttoptr i64 %7 to float*
  %9 = load float, float* %8
  %10 = add i64 %3, 8
  %11 = inttoptr i64 %10 to float*
  %12 = load float, float* %11
  %13 = add i64 %3, 12
  %14 = inttoptr i64 %13 to float*
  %15 = load float, float* %14
  %16 = bitcast i8* %2 to float*
  store float %6, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %2, i64 4
  %18 = bitcast i8* %17 to float*
  store float %9, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %2, i64 8
  %20 = bitcast i8* %19 to float*
  store float %12, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %2, i64 12
  %22 = bitcast i8* %21 to float*
  store float %15, float* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps_0x2458__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9311
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PANDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = and i64 %12, %7
  %17 = and i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PANDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_400a58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 896
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_400a7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6468736
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movaps_0x2420__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9255
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PANDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 896
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6470896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movaps_0x23e6__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9197
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jbe_.L_400aca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 904
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_400aee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6470896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movaps_0x23ae__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9141
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 904
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jmpq_.L_400a07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x231f__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8999
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.epslon(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x402f44___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206404)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0x2308__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8976
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 36
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_0x604058___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6307928)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6470896)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fsub float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 52
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x604058___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6307928)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = trunc i64 %4 to i32
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %4, %3
  %20 = trunc i64 %19 to i32
  %21 = xor i32 %20, %8
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %8, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %8, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %7, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6470896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__0x402f6b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206443)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 908
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402f8e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206478)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 912
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__0x5___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 5)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__0x402faf___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206511)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 916
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402fe4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206564)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x604050___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 6307920)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 920
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x40301a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206618)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 924
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x403052___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206674)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 928
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470472, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 932
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jbe_.L_400cfe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x2190__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x2198__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470532, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cvtss2sd_0x62bb84___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6470532)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470592, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jmpq_.L_400d13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470532, i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fdiv float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470652, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.print_time(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x40305f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206687)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 936
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 68
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400dc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_400d78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq__0x40307d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206717)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 84
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i32*
  %6 = load i32, i32* %5
  %7 = trunc i64 %3 to i32
  %8 = sub i32 %6, %7
  %9 = icmp ult i32 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, %7
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %30, %31
  %33 = xor i32 %27, %30
  %34 = add   i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 940
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400e1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400e22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = select i1 %12, i64 %3, i64 %4
  store i64 %15, i64* %14, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jl_.L_400d5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x403097___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206743)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtss2sd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__0x4030be___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206782)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 944
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471696, i64 100)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 948
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}
















define %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6471696)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_400f3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
































define %struct.Memory* @routine_jmpq_.L_400eb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl_0x62c010___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 6471696)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 952
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400f90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_0x62c010___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6471696)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x62c010(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471696, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_400f95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jl_.L_400e96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471696, i64 1000)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471696, i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jne_.L_400fc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471696, i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__0x4030ed___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206829)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__0x403101___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4206849)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 956
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 960
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 964
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6471696)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 44
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6470556, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471700, i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 968
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6471700, i64 6)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jge_.L_4012e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jge_.L_40111b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}





































