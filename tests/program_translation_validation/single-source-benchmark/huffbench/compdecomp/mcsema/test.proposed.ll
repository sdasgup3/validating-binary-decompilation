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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

; Function Declaraions
declare i32 @llvm.ctpop.i32(i32) #2
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @sub_400630.malloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_400600.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4013a0.heap_adjust(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_400620.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_400650.exit_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4005f0.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Data Access Globals


define %struct.Memory* @compdecomp(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .compdecomp:	 RIP: 4008a0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4008a0	 Bytes: 1
  %loadMem_4008a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a0)
  store %struct.Memory* %call_4008a0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4008a1	 Bytes: 3
  %loadMem_4008a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a1)
  store %struct.Memory* %call_4008a1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4008a4	 Bytes: 2
  %loadMem_4008a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a4)
  store %struct.Memory* %call_4008a4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4008a6	 Bytes: 2
  %loadMem_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a6)
  store %struct.Memory* %call_4008a6, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4008a8	 Bytes: 1
  %loadMem_4008a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a8 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a8)
  store %struct.Memory* %call_4008a8, %struct.Memory** %MEMORY

  ; Code: subq $0x3318, %rsp	 RIP: 4008a9	 Bytes: 7
  %loadMem_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a9 = call %struct.Memory* @routine_subq__0x3318___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a9)
  store %struct.Memory* %call_4008a9, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 4008b0	 Bytes: 4
  %loadMem_4008b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b0 = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b0)
  store %struct.Memory* %call_4008b0, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 4008b4	 Bytes: 4
  %loadMem_4008b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b4 = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b4)
  store %struct.Memory* %call_4008b4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 4008b8	 Bytes: 4
  %loadMem_4008b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b8)
  store %struct.Memory* %call_4008b8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x70(%rbp)	 RIP: 4008bc	 Bytes: 4
  %loadMem_4008bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008bc = call %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008bc)
  store %struct.Memory* %call_4008bc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 4008c0	 Bytes: 4
  %loadMem_4008c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c0)
  store %struct.Memory* %call_4008c0, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rsi	 RIP: 4008c4	 Bytes: 4
  %loadMem_4008c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c4 = call %struct.Memory* @routine_addq__0x1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c4)
  store %struct.Memory* %call_4008c4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 4008c8	 Bytes: 3
  %loadMem_4008c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c8 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c8)
  store %struct.Memory* %call_4008c8, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 4008cb	 Bytes: 5
  %loadMem1_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4008cb = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4008cb, i64 -667, i64 5, i64 5)
  store %struct.Memory* %call1_4008cb, %struct.Memory** %MEMORY

  %loadMem2_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008cb = load i64, i64* %3
  %call2_4008cb = call %struct.Memory* @sub_400630.malloc_plt(%struct.State* %0, i64  %loadPC_4008cb, %struct.Memory* %loadMem2_4008cb)
  store %struct.Memory* %call2_4008cb, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4008d0	 Bytes: 2
  %loadMem_4008d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d0 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d0)
  store %struct.Memory* %call_4008d0, %struct.Memory** %MEMORY

  ; Code: movl $0x100, %edx	 RIP: 4008d2	 Bytes: 5
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d2 = call %struct.Memory* @routine_movl__0x100___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d2)
  store %struct.Memory* %call_4008d2, %struct.Memory** %MEMORY

  ; Code: leaq -0x2980(%rbp), %rdi	 RIP: 4008d7	 Bytes: 7
  %loadMem_4008d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d7 = call %struct.Memory* @routine_leaq_MINUS0x2980__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d7)
  store %struct.Memory* %call_4008d7, %struct.Memory** %MEMORY

  ; Code: movl $0x800, %r8d	 RIP: 4008de	 Bytes: 6
  %loadMem_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008de = call %struct.Memory* @routine_movl__0x800___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008de)
  store %struct.Memory* %call_4008de, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 4008e4	 Bytes: 3
  %loadMem_4008e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e4 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e4)
  store %struct.Memory* %call_4008e4, %struct.Memory** %MEMORY

  ; Code: leaq -0x2880(%rbp), %r9	 RIP: 4008e7	 Bytes: 7
  %loadMem_4008e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e7 = call %struct.Memory* @routine_leaq_MINUS0x2880__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e7)
  store %struct.Memory* %call_4008e7, %struct.Memory** %MEMORY

  ; Code: leaq -0x2080(%rbp), %r10	 RIP: 4008ee	 Bytes: 7
  %loadMem_4008ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ee = call %struct.Memory* @routine_leaq_MINUS0x2080__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ee)
  store %struct.Memory* %call_4008ee, %struct.Memory** %MEMORY

  ; Code: leaq -0x1880(%rbp), %r11	 RIP: 4008f5	 Bytes: 7
  %loadMem_4008f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f5 = call %struct.Memory* @routine_leaq_MINUS0x1880__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f5)
  store %struct.Memory* %call_4008f5, %struct.Memory** %MEMORY

  ; Code: movl $0x1000, %r8d	 RIP: 4008fc	 Bytes: 6
  %loadMem_4008fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008fc = call %struct.Memory* @routine_movl__0x1000___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008fc)
  store %struct.Memory* %call_4008fc, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ebx	 RIP: 400902	 Bytes: 3
  %loadMem_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400902 = call %struct.Memory* @routine_movl__r8d___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400902)
  store %struct.Memory* %call_400902, %struct.Memory** %MEMORY

  ; Code: leaq -0x1080(%rbp), %r14	 RIP: 400905	 Bytes: 7
  %loadMem_400905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400905 = call %struct.Memory* @routine_leaq_MINUS0x1080__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400905)
  store %struct.Memory* %call_400905, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 40090c	 Bytes: 4
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40090c = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40090c)
  store %struct.Memory* %call_40090c, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 400910	 Bytes: 4
  %loadMem_400910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400910 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400910)
  store %struct.Memory* %call_400910, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %r15	 RIP: 400914	 Bytes: 4
  %loadMem_400914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400914 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400914)
  store %struct.Memory* %call_400914, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %r15	 RIP: 400918	 Bytes: 4
  %loadMem_400918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400918 = call %struct.Memory* @routine_addq__0x1___r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400918)
  store %struct.Memory* %call_400918, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %r15	 RIP: 40091c	 Bytes: 4
  %loadMem_40091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40091c = call %struct.Memory* @routine_shlq__0x0___r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40091c)
  store %struct.Memory* %call_40091c, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x32d0(%rbp)	 RIP: 400920	 Bytes: 7
  %loadMem_400920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400920 = call %struct.Memory* @routine_movq__rdi__MINUS0x32d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400920)
  store %struct.Memory* %call_400920, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 400927	 Bytes: 3
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400927 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400927)
  store %struct.Memory* %call_400927, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x32d8(%rbp)	 RIP: 40092a	 Bytes: 7
  %loadMem_40092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40092a = call %struct.Memory* @routine_movq__rsi__MINUS0x32d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40092a)
  store %struct.Memory* %call_40092a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 400931	 Bytes: 2
  %loadMem_400931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400931 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400931)
  store %struct.Memory* %call_400931, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x32e0(%rbp)	 RIP: 400933	 Bytes: 7
  %loadMem_400933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400933 = call %struct.Memory* @routine_movq__rdx__MINUS0x32e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400933)
  store %struct.Memory* %call_400933, %struct.Memory** %MEMORY

  ; Code: movq %r15, %rdx	 RIP: 40093a	 Bytes: 3
  %loadMem_40093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093a = call %struct.Memory* @routine_movq__r15___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093a)
  store %struct.Memory* %call_40093a, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x32e8(%rbp)	 RIP: 40093d	 Bytes: 7
  %loadMem_40093d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093d = call %struct.Memory* @routine_movq__r14__MINUS0x32e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093d)
  store %struct.Memory* %call_40093d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x32ec(%rbp)	 RIP: 400944	 Bytes: 6
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400944 = call %struct.Memory* @routine_movl__ecx__MINUS0x32ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400944)
  store %struct.Memory* %call_400944, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x32f8(%rbp)	 RIP: 40094a	 Bytes: 7
  %loadMem_40094a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40094a = call %struct.Memory* @routine_movq__r10__MINUS0x32f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40094a)
  store %struct.Memory* %call_40094a, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0x3300(%rbp)	 RIP: 400951	 Bytes: 7
  %loadMem_400951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400951 = call %struct.Memory* @routine_movq__r11__MINUS0x3300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400951)
  store %struct.Memory* %call_400951, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0x3308(%rbp)	 RIP: 400958	 Bytes: 7
  %loadMem_400958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400958 = call %struct.Memory* @routine_movq__rbx__MINUS0x3308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400958)
  store %struct.Memory* %call_400958, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x3310(%rbp)	 RIP: 40095f	 Bytes: 7
  %loadMem_40095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095f = call %struct.Memory* @routine_movq__r9__MINUS0x3310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095f)
  store %struct.Memory* %call_40095f, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 400966	 Bytes: 5
  %loadMem1_400966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400966 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400966, i64 -870, i64 5, i64 5)
  store %struct.Memory* %call1_400966, %struct.Memory** %MEMORY

  %loadMem2_400966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400966 = load i64, i64* %3
  %call2_400966 = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_400966, %struct.Memory* %loadMem2_400966)
  store %struct.Memory* %call2_400966, %struct.Memory** %MEMORY

  ; Code: movq -0x32e8(%rbp), %rax	 RIP: 40096b	 Bytes: 7
  %loadMem_40096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096b = call %struct.Memory* @routine_movq_MINUS0x32e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096b)
  store %struct.Memory* %call_40096b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 400972	 Bytes: 3
  %loadMem_400972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400972 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400972)
  store %struct.Memory* %call_400972, %struct.Memory** %MEMORY

  ; Code: movl -0x32ec(%rbp), %esi	 RIP: 400975	 Bytes: 6
  %loadMem_400975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400975 = call %struct.Memory* @routine_movl_MINUS0x32ec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400975)
  store %struct.Memory* %call_400975, %struct.Memory** %MEMORY

  ; Code: movq -0x3308(%rbp), %rdx	 RIP: 40097b	 Bytes: 7
  %loadMem_40097b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097b = call %struct.Memory* @routine_movq_MINUS0x3308__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097b)
  store %struct.Memory* %call_40097b, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 400982	 Bytes: 5
  %loadMem1_400982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400982 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400982, i64 -898, i64 5, i64 5)
  store %struct.Memory* %call1_400982, %struct.Memory** %MEMORY

  %loadMem2_400982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400982 = load i64, i64* %3
  %call2_400982 = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_400982, %struct.Memory* %loadMem2_400982)
  store %struct.Memory* %call2_400982, %struct.Memory** %MEMORY

  ; Code: movq -0x3300(%rbp), %rax	 RIP: 400987	 Bytes: 7
  %loadMem_400987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400987 = call %struct.Memory* @routine_movq_MINUS0x3300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400987)
  store %struct.Memory* %call_400987, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40098e	 Bytes: 3
  %loadMem_40098e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098e)
  store %struct.Memory* %call_40098e, %struct.Memory** %MEMORY

  ; Code: movl -0x32ec(%rbp), %esi	 RIP: 400991	 Bytes: 6
  %loadMem_400991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400991 = call %struct.Memory* @routine_movl_MINUS0x32ec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400991)
  store %struct.Memory* %call_400991, %struct.Memory** %MEMORY

  ; Code: movq -0x32d8(%rbp), %rdx	 RIP: 400997	 Bytes: 7
  %loadMem_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400997 = call %struct.Memory* @routine_movq_MINUS0x32d8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400997)
  store %struct.Memory* %call_400997, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 40099e	 Bytes: 5
  %loadMem1_40099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40099e = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40099e, i64 -926, i64 5, i64 5)
  store %struct.Memory* %call1_40099e, %struct.Memory** %MEMORY

  %loadMem2_40099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40099e = load i64, i64* %3
  %call2_40099e = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_40099e, %struct.Memory* %loadMem2_40099e)
  store %struct.Memory* %call2_40099e, %struct.Memory** %MEMORY

  ; Code: movq -0x32f8(%rbp), %rax	 RIP: 4009a3	 Bytes: 7
  %loadMem_4009a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a3 = call %struct.Memory* @routine_movq_MINUS0x32f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a3)
  store %struct.Memory* %call_4009a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4009aa	 Bytes: 3
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009aa = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009aa)
  store %struct.Memory* %call_4009aa, %struct.Memory** %MEMORY

  ; Code: movl -0x32ec(%rbp), %esi	 RIP: 4009ad	 Bytes: 6
  %loadMem_4009ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ad = call %struct.Memory* @routine_movl_MINUS0x32ec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ad)
  store %struct.Memory* %call_4009ad, %struct.Memory** %MEMORY

  ; Code: movq -0x32d8(%rbp), %rdx	 RIP: 4009b3	 Bytes: 7
  %loadMem_4009b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b3 = call %struct.Memory* @routine_movq_MINUS0x32d8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b3)
  store %struct.Memory* %call_4009b3, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4009ba	 Bytes: 5
  %loadMem1_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009ba = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009ba, i64 -954, i64 5, i64 5)
  store %struct.Memory* %call1_4009ba, %struct.Memory** %MEMORY

  %loadMem2_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009ba = load i64, i64* %3
  %call2_4009ba = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_4009ba, %struct.Memory* %loadMem2_4009ba)
  store %struct.Memory* %call2_4009ba, %struct.Memory** %MEMORY

  ; Code: movq -0x3310(%rbp), %rax	 RIP: 4009bf	 Bytes: 7
  %loadMem_4009bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009bf = call %struct.Memory* @routine_movq_MINUS0x3310__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009bf)
  store %struct.Memory* %call_4009bf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4009c6	 Bytes: 3
  %loadMem_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c6 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c6)
  store %struct.Memory* %call_4009c6, %struct.Memory** %MEMORY

  ; Code: movl -0x32ec(%rbp), %esi	 RIP: 4009c9	 Bytes: 6
  %loadMem_4009c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c9 = call %struct.Memory* @routine_movl_MINUS0x32ec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c9)
  store %struct.Memory* %call_4009c9, %struct.Memory** %MEMORY

  ; Code: movq -0x32d8(%rbp), %rdx	 RIP: 4009cf	 Bytes: 7
  %loadMem_4009cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cf = call %struct.Memory* @routine_movq_MINUS0x32d8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cf)
  store %struct.Memory* %call_4009cf, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4009d6	 Bytes: 5
  %loadMem1_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009d6 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009d6, i64 -982, i64 5, i64 5)
  store %struct.Memory* %call1_4009d6, %struct.Memory** %MEMORY

  %loadMem2_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009d6 = load i64, i64* %3
  %call2_4009d6 = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_4009d6, %struct.Memory* %loadMem2_4009d6)
  store %struct.Memory* %call2_4009d6, %struct.Memory** %MEMORY

  ; Code: movq -0x32d0(%rbp), %rdi	 RIP: 4009db	 Bytes: 7
  %loadMem_4009db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009db = call %struct.Memory* @routine_movq_MINUS0x32d0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009db)
  store %struct.Memory* %call_4009db, %struct.Memory** %MEMORY

  ; Code: movl -0x32ec(%rbp), %esi	 RIP: 4009e2	 Bytes: 6
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e2 = call %struct.Memory* @routine_movl_MINUS0x32ec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e2)
  store %struct.Memory* %call_4009e2, %struct.Memory** %MEMORY

  ; Code: movq -0x32e0(%rbp), %rdx	 RIP: 4009e8	 Bytes: 7
  %loadMem_4009e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e8 = call %struct.Memory* @routine_movq_MINUS0x32e0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e8)
  store %struct.Memory* %call_4009e8, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4009ef	 Bytes: 5
  %loadMem1_4009ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009ef = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009ef, i64 -1007, i64 5, i64 5)
  store %struct.Memory* %call1_4009ef, %struct.Memory** %MEMORY

  %loadMem2_4009ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009ef = load i64, i64* %3
  %call2_4009ef = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_4009ef, %struct.Memory* %loadMem2_4009ef)
  store %struct.Memory* %call2_4009ef, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x30(%rbp)	 RIP: 4009f4	 Bytes: 8
  %loadMem_4009f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f4 = call %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f4)
  store %struct.Memory* %call_4009f4, %struct.Memory** %MEMORY

  ; Code: .L_4009fc:	 RIP: 4009fc	 Bytes: 0
  br label %block_.L_4009fc
block_.L_4009fc:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4009fc	 Bytes: 4
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009fc = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009fc)
  store %struct.Memory* %call_4009fc, %struct.Memory** %MEMORY

  ; Code: cmpq -0x28(%rbp), %rax	 RIP: 400a00	 Bytes: 4
  %loadMem_400a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a00 = call %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a00)
  store %struct.Memory* %call_400a00, %struct.Memory** %MEMORY

  ; Code: jae .L_400a44	 RIP: 400a04	 Bytes: 6
  %loadMem_400a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a04 = call %struct.Memory* @routine_jae_.L_400a44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a04, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_400a04, %struct.Memory** %MEMORY

  %loadBr_400a04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a04 = icmp eq i8 %loadBr_400a04, 1
  br i1 %cmpBr_400a04, label %block_.L_400a44, label %block_400a0a

block_400a0a:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 400a0a	 Bytes: 4
  %loadMem_400a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0a = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0a)
  store %struct.Memory* %call_400a0a, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 400a0e	 Bytes: 3
  %loadMem_400a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0e = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0e)
  store %struct.Memory* %call_400a0e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 400a11	 Bytes: 2
  %loadMem_400a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a11 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a11)
  store %struct.Memory* %call_400a11, %struct.Memory** %MEMORY

  ; Code: movq -0x1080(%rbp,%rax,8), %rdx	 RIP: 400a13	 Bytes: 8
  %loadMem_400a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a13 = call %struct.Memory* @routine_movq_MINUS0x1080__rbp__rax_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a13)
  store %struct.Memory* %call_400a13, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rdx	 RIP: 400a1b	 Bytes: 4
  %loadMem_400a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1b = call %struct.Memory* @routine_addq__0x1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1b)
  store %struct.Memory* %call_400a1b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x1080(%rbp,%rax,8)	 RIP: 400a1f	 Bytes: 8
  %loadMem_400a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1f = call %struct.Memory* @routine_movq__rdx__MINUS0x1080__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1f)
  store %struct.Memory* %call_400a1f, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 400a27	 Bytes: 4
  %loadMem_400a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a27 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a27)
  store %struct.Memory* %call_400a27, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400a2b	 Bytes: 4
  %loadMem_400a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2b = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2b)
  store %struct.Memory* %call_400a2b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 400a2f	 Bytes: 4
  %loadMem_400a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2f = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2f)
  store %struct.Memory* %call_400a2f, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400a33	 Bytes: 4
  %loadMem_400a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a33 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a33)
  store %struct.Memory* %call_400a33, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400a37	 Bytes: 4
  %loadMem_400a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a37 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a37)
  store %struct.Memory* %call_400a37, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 400a3b	 Bytes: 4
  %loadMem_400a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3b = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3b)
  store %struct.Memory* %call_400a3b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4009fc	 RIP: 400a3f	 Bytes: 5
  %loadMem_400a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3f = call %struct.Memory* @routine_jmpq_.L_4009fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3f, i64 -67, i64 5)
  store %struct.Memory* %call_400a3f, %struct.Memory** %MEMORY

  br label %block_.L_4009fc

  ; Code: .L_400a44:	 RIP: 400a44	 Bytes: 0
block_.L_400a44:

  ; Code: movq $0x0, -0x40(%rbp)	 RIP: 400a44	 Bytes: 8
  %loadMem_400a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a44 = call %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a44)
  store %struct.Memory* %call_400a44, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x30(%rbp)	 RIP: 400a4c	 Bytes: 8
  %loadMem_400a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4c = call %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4c)
  store %struct.Memory* %call_400a4c, %struct.Memory** %MEMORY

  ; Code: .L_400a54:	 RIP: 400a54	 Bytes: 0
  br label %block_.L_400a54
block_.L_400a54:

  ; Code: cmpq $0x100, -0x30(%rbp)	 RIP: 400a54	 Bytes: 8
  %loadMem_400a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a54 = call %struct.Memory* @routine_cmpq__0x100__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a54)
  store %struct.Memory* %call_400a54, %struct.Memory** %MEMORY

  ; Code: jae .L_400aa7	 RIP: 400a5c	 Bytes: 6
  %loadMem_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5c = call %struct.Memory* @routine_jae_.L_400aa7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5c, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_400a5c, %struct.Memory** %MEMORY

  %loadBr_400a5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a5c = icmp eq i8 %loadBr_400a5c, 1
  br i1 %cmpBr_400a5c, label %block_.L_400aa7, label %block_400a62

block_400a62:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 400a62	 Bytes: 4
  %loadMem_400a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a62 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a62)
  store %struct.Memory* %call_400a62, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x1080(%rbp,%rax,8)	 RIP: 400a66	 Bytes: 9
  %loadMem_400a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a66 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x1080__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a66)
  store %struct.Memory* %call_400a66, %struct.Memory** %MEMORY

  ; Code: je .L_400a91	 RIP: 400a6f	 Bytes: 6
  %loadMem_400a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6f = call %struct.Memory* @routine_je_.L_400a91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6f, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_400a6f, %struct.Memory** %MEMORY

  %loadBr_400a6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a6f = icmp eq i8 %loadBr_400a6f, 1
  br i1 %cmpBr_400a6f, label %block_.L_400a91, label %block_400a75

block_400a75:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 400a75	 Bytes: 4
  %loadMem_400a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a75 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a75)
  store %struct.Memory* %call_400a75, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 400a79	 Bytes: 4
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a79 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a79)
  store %struct.Memory* %call_400a79, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1880(%rbp,%rcx,8)	 RIP: 400a7d	 Bytes: 8
  %loadMem_400a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7d = call %struct.Memory* @routine_movq__rax__MINUS0x1880__rbp__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7d)
  store %struct.Memory* %call_400a7d, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400a85	 Bytes: 4
  %loadMem_400a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a85 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a85)
  store %struct.Memory* %call_400a85, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400a89	 Bytes: 4
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a89 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a89)
  store %struct.Memory* %call_400a89, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 400a8d	 Bytes: 4
  %loadMem_400a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8d = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8d)
  store %struct.Memory* %call_400a8d, %struct.Memory** %MEMORY

  ; Code: .L_400a91:	 RIP: 400a91	 Bytes: 0
  br label %block_.L_400a91
block_.L_400a91:

  ; Code: jmpq .L_400a96	 RIP: 400a91	 Bytes: 5
  %loadMem_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a91 = call %struct.Memory* @routine_jmpq_.L_400a96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a91, i64 5, i64 5)
  store %struct.Memory* %call_400a91, %struct.Memory** %MEMORY

  br label %block_.L_400a96

  ; Code: .L_400a96:	 RIP: 400a96	 Bytes: 0
block_.L_400a96:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400a96	 Bytes: 4
  %loadMem_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a96 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a96)
  store %struct.Memory* %call_400a96, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400a9a	 Bytes: 4
  %loadMem_400a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9a = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9a)
  store %struct.Memory* %call_400a9a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 400a9e	 Bytes: 4
  %loadMem_400a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9e = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9e)
  store %struct.Memory* %call_400a9e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a54	 RIP: 400aa2	 Bytes: 5
  %loadMem_400aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa2 = call %struct.Memory* @routine_jmpq_.L_400a54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa2, i64 -78, i64 5)
  store %struct.Memory* %call_400aa2, %struct.Memory** %MEMORY

  br label %block_.L_400a54

  ; Code: .L_400aa7:	 RIP: 400aa7	 Bytes: 0
block_.L_400aa7:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400aa7	 Bytes: 4
  %loadMem_400aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa7)
  store %struct.Memory* %call_400aa7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 400aab	 Bytes: 4
  %loadMem_400aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aab = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aab)
  store %struct.Memory* %call_400aab, %struct.Memory** %MEMORY

  ; Code: .L_400aaf:	 RIP: 400aaf	 Bytes: 0
  br label %block_.L_400aaf
block_.L_400aaf:

  ; Code: cmpq $0x0, -0x30(%rbp)	 RIP: 400aaf	 Bytes: 5
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaf = call %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaf)
  store %struct.Memory* %call_400aaf, %struct.Memory** %MEMORY

  ; Code: jbe .L_400af8	 RIP: 400ab4	 Bytes: 6
  %loadMem_400ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab4 = call %struct.Memory* @routine_jbe_.L_400af8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab4, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_400ab4, %struct.Memory** %MEMORY

  %loadBr_400ab4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ab4 = icmp eq i8 %loadBr_400ab4, 1
  br i1 %cmpBr_400ab4, label %block_.L_400af8, label %block_400aba

block_400aba:
  ; Code: leaq -0x1880(%rbp), %rsi	 RIP: 400aba	 Bytes: 7
  %loadMem_400aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aba = call %struct.Memory* @routine_leaq_MINUS0x1880__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aba)
  store %struct.Memory* %call_400aba, %struct.Memory** %MEMORY

  ; Code: leaq -0x1080(%rbp), %rdi	 RIP: 400ac1	 Bytes: 7
  %loadMem_400ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac1 = call %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac1)
  store %struct.Memory* %call_400ac1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400ac8	 Bytes: 4
  %loadMem_400ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac8 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac8)
  store %struct.Memory* %call_400ac8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 400acc	 Bytes: 2
  %loadMem_400acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400acc = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400acc)
  store %struct.Memory* %call_400acc, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400ace	 Bytes: 4
  %loadMem_400ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ace = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ace)
  store %struct.Memory* %call_400ace, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 400ad2	 Bytes: 2
  %loadMem_400ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad2 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad2)
  store %struct.Memory* %call_400ad2, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3314(%rbp)	 RIP: 400ad4	 Bytes: 6
  %loadMem_400ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad4 = call %struct.Memory* @routine_movl__edx__MINUS0x3314__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad4)
  store %struct.Memory* %call_400ad4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 400ada	 Bytes: 2
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ada = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ada)
  store %struct.Memory* %call_400ada, %struct.Memory** %MEMORY

  ; Code: movl -0x3314(%rbp), %ecx	 RIP: 400adc	 Bytes: 6
  %loadMem_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400adc = call %struct.Memory* @routine_movl_MINUS0x3314__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400adc)
  store %struct.Memory* %call_400adc, %struct.Memory** %MEMORY

  ; Code: callq .heap_adjust	 RIP: 400ae2	 Bytes: 5
  %loadMem1_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ae2 = call %struct.Memory* @routine_callq_.heap_adjust(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ae2, i64 2238, i64 5, i64 5)
  store %struct.Memory* %call1_400ae2, %struct.Memory** %MEMORY

  %loadMem2_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ae2 = load i64, i64* %3
  %call2_400ae2 = call %struct.Memory* @sub_4013a0.heap_adjust(%struct.State* %0, i64  %loadPC_400ae2, %struct.Memory* %loadMem2_400ae2)
  store %struct.Memory* %call2_400ae2, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400ae7	 Bytes: 4
  %loadMem_400ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae7 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae7)
  store %struct.Memory* %call_400ae7, %struct.Memory** %MEMORY

  ; Code: addq $0xffffffff, %rax	 RIP: 400aeb	 Bytes: 4
  %loadMem_400aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aeb = call %struct.Memory* @routine_addq__0xffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aeb)
  store %struct.Memory* %call_400aeb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 400aef	 Bytes: 4
  %loadMem_400aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aef = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aef)
  store %struct.Memory* %call_400aef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400aaf	 RIP: 400af3	 Bytes: 5
  %loadMem_400af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af3 = call %struct.Memory* @routine_jmpq_.L_400aaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af3, i64 -68, i64 5)
  store %struct.Memory* %call_400af3, %struct.Memory** %MEMORY

  br label %block_.L_400aaf

  ; Code: .L_400af8:	 RIP: 400af8	 Bytes: 0
block_.L_400af8:

  ; Code: jmpq .L_400afd	 RIP: 400af8	 Bytes: 5
  %loadMem_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af8 = call %struct.Memory* @routine_jmpq_.L_400afd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af8, i64 5, i64 5)
  store %struct.Memory* %call_400af8, %struct.Memory** %MEMORY

  br label %block_.L_400afd

  ; Code: .L_400afd:	 RIP: 400afd	 Bytes: 0
block_.L_400afd:

  ; Code: cmpq $0x1, -0x40(%rbp)	 RIP: 400afd	 Bytes: 5
  %loadMem_400afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afd = call %struct.Memory* @routine_cmpq__0x1__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afd)
  store %struct.Memory* %call_400afd, %struct.Memory** %MEMORY

  ; Code: jbe .L_400bf0	 RIP: 400b02	 Bytes: 6
  %loadMem_400b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b02 = call %struct.Memory* @routine_jbe_.L_400bf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b02, i8* %BRANCH_TAKEN, i64 238, i64 6, i64 6)
  store %struct.Memory* %call_400b02, %struct.Memory** %MEMORY

  %loadBr_400b02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b02 = icmp eq i8 %loadBr_400b02, 1
  br i1 %cmpBr_400b02, label %block_.L_400bf0, label %block_400b08

block_400b08:
  ; Code: movl $0x1, %ecx	 RIP: 400b08	 Bytes: 5
  %loadMem_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b08 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b08)
  store %struct.Memory* %call_400b08, %struct.Memory** %MEMORY

  ; Code: leaq -0x1880(%rbp), %rsi	 RIP: 400b0d	 Bytes: 7
  %loadMem_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0d = call %struct.Memory* @routine_leaq_MINUS0x1880__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0d)
  store %struct.Memory* %call_400b0d, %struct.Memory** %MEMORY

  ; Code: leaq -0x1080(%rbp), %rdi	 RIP: 400b14	 Bytes: 7
  %loadMem_400b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b14 = call %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b14)
  store %struct.Memory* %call_400b14, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400b1b	 Bytes: 4
  %loadMem_400b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1b)
  store %struct.Memory* %call_400b1b, %struct.Memory** %MEMORY

  ; Code: addq $0xffffffff, %rax	 RIP: 400b1f	 Bytes: 4
  %loadMem_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1f = call %struct.Memory* @routine_addq__0xffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1f)
  store %struct.Memory* %call_400b1f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 400b23	 Bytes: 4
  %loadMem_400b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b23 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b23)
  store %struct.Memory* %call_400b23, %struct.Memory** %MEMORY

  ; Code: movq -0x1880(%rbp), %rax	 RIP: 400b27	 Bytes: 7
  %loadMem_400b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b27 = call %struct.Memory* @routine_movq_MINUS0x1880__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b27)
  store %struct.Memory* %call_400b27, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x2988(%rbp)	 RIP: 400b2e	 Bytes: 7
  %loadMem_400b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2e = call %struct.Memory* @routine_movq__rax__MINUS0x2988__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2e)
  store %struct.Memory* %call_400b2e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400b35	 Bytes: 4
  %loadMem_400b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b35 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b35)
  store %struct.Memory* %call_400b35, %struct.Memory** %MEMORY

  ; Code: movq -0x1880(%rbp,%rax,8), %rax	 RIP: 400b39	 Bytes: 8
  %loadMem_400b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b39 = call %struct.Memory* @routine_movq_MINUS0x1880__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b39)
  store %struct.Memory* %call_400b39, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1880(%rbp)	 RIP: 400b41	 Bytes: 7
  %loadMem_400b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b41 = call %struct.Memory* @routine_movq__rax__MINUS0x1880__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b41)
  store %struct.Memory* %call_400b41, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400b48	 Bytes: 4
  %loadMem_400b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b48 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b48)
  store %struct.Memory* %call_400b48, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 400b4c	 Bytes: 2
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4c)
  store %struct.Memory* %call_400b4c, %struct.Memory** %MEMORY

  ; Code: callq .heap_adjust	 RIP: 400b4e	 Bytes: 5
  %loadMem1_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b4e = call %struct.Memory* @routine_callq_.heap_adjust(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b4e, i64 2130, i64 5, i64 5)
  store %struct.Memory* %call1_400b4e, %struct.Memory** %MEMORY

  %loadMem2_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b4e = load i64, i64* %3
  %call2_400b4e = call %struct.Memory* @sub_4013a0.heap_adjust(%struct.State* %0, i64  %loadPC_400b4e, %struct.Memory* %loadMem2_400b4e)
  store %struct.Memory* %call2_400b4e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 400b53	 Bytes: 5
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b53 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b53)
  store %struct.Memory* %call_400b53, %struct.Memory** %MEMORY

  ; Code: leaq -0x1880(%rbp), %rsi	 RIP: 400b58	 Bytes: 7
  %loadMem_400b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b58 = call %struct.Memory* @routine_leaq_MINUS0x1880__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b58)
  store %struct.Memory* %call_400b58, %struct.Memory** %MEMORY

  ; Code: leaq -0x1080(%rbp), %rdi	 RIP: 400b5f	 Bytes: 7
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5f = call %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5f)
  store %struct.Memory* %call_400b5f, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffff00, %rax	 RIP: 400b66	 Bytes: 7
  %loadMem_400b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b66 = call %struct.Memory* @routine_movq__0xffffffffffffff00___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b66)
  store %struct.Memory* %call_400b66, %struct.Memory** %MEMORY

  ; Code: movq -0x1880(%rbp), %r8	 RIP: 400b6d	 Bytes: 7
  %loadMem_400b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b6d = call %struct.Memory* @routine_movq_MINUS0x1880__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b6d)
  store %struct.Memory* %call_400b6d, %struct.Memory** %MEMORY

  ; Code: movq -0x1080(%rbp,%r8,8), %r8	 RIP: 400b74	 Bytes: 8
  %loadMem_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b74 = call %struct.Memory* @routine_movq_MINUS0x1080__rbp__r8_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b74)
  store %struct.Memory* %call_400b74, %struct.Memory** %MEMORY

  ; Code: movq -0x2988(%rbp), %r9	 RIP: 400b7c	 Bytes: 7
  %loadMem_400b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7c = call %struct.Memory* @routine_movq_MINUS0x2988__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7c)
  store %struct.Memory* %call_400b7c, %struct.Memory** %MEMORY

  ; Code: addq -0x1080(%rbp,%r9,8), %r8	 RIP: 400b83	 Bytes: 8
  %loadMem_400b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b83 = call %struct.Memory* @routine_addq_MINUS0x1080__rbp__r9_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b83)
  store %struct.Memory* %call_400b83, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %r9	 RIP: 400b8b	 Bytes: 4
  %loadMem_400b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b8b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b8b)
  store %struct.Memory* %call_400b8b, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %r9	 RIP: 400b8f	 Bytes: 7
  %loadMem_400b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b8f = call %struct.Memory* @routine_addq__0x100___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b8f)
  store %struct.Memory* %call_400b8f, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x1080(%rbp,%r9,8)	 RIP: 400b96	 Bytes: 8
  %loadMem_400b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b96 = call %struct.Memory* @routine_movq__r8__MINUS0x1080__rbp__r9_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b96)
  store %struct.Memory* %call_400b96, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %r8	 RIP: 400b9e	 Bytes: 4
  %loadMem_400b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9e)
  store %struct.Memory* %call_400b9e, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %r8	 RIP: 400ba2	 Bytes: 7
  %loadMem_400ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba2 = call %struct.Memory* @routine_addq__0x100___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba2)
  store %struct.Memory* %call_400ba2, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %edx	 RIP: 400ba9	 Bytes: 3
  %loadMem_400ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba9 = call %struct.Memory* @routine_movl__r8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba9)
  store %struct.Memory* %call_400ba9, %struct.Memory** %MEMORY

  ; Code: movq -0x2988(%rbp), %r8	 RIP: 400bac	 Bytes: 7
  %loadMem_400bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bac = call %struct.Memory* @routine_movq_MINUS0x2988__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bac)
  store %struct.Memory* %call_400bac, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2080(%rbp,%r8,4)	 RIP: 400bb3	 Bytes: 8
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb3 = call %struct.Memory* @routine_movl__edx__MINUS0x2080__rbp__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb3)
  store %struct.Memory* %call_400bb3, %struct.Memory** %MEMORY

  ; Code: subq -0x40(%rbp), %rax	 RIP: 400bbb	 Bytes: 4
  %loadMem_400bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbb = call %struct.Memory* @routine_subq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbb)
  store %struct.Memory* %call_400bbb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 400bbf	 Bytes: 2
  %loadMem_400bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbf = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbf)
  store %struct.Memory* %call_400bbf, %struct.Memory** %MEMORY

  ; Code: movq -0x1880(%rbp), %rax	 RIP: 400bc1	 Bytes: 7
  %loadMem_400bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc1 = call %struct.Memory* @routine_movq_MINUS0x1880__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc1)
  store %struct.Memory* %call_400bc1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2080(%rbp,%rax,4)	 RIP: 400bc8	 Bytes: 7
  %loadMem_400bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc8 = call %struct.Memory* @routine_movl__edx__MINUS0x2080__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc8)
  store %struct.Memory* %call_400bc8, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400bcf	 Bytes: 4
  %loadMem_400bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bcf = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bcf)
  store %struct.Memory* %call_400bcf, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rax	 RIP: 400bd3	 Bytes: 6
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd3 = call %struct.Memory* @routine_addq__0x100___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd3)
  store %struct.Memory* %call_400bd3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x1880(%rbp)	 RIP: 400bd9	 Bytes: 7
  %loadMem_400bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd9 = call %struct.Memory* @routine_movq__rax__MINUS0x1880__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd9)
  store %struct.Memory* %call_400bd9, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400be0	 Bytes: 4
  %loadMem_400be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be0 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be0)
  store %struct.Memory* %call_400be0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 400be4	 Bytes: 2
  %loadMem_400be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be4)
  store %struct.Memory* %call_400be4, %struct.Memory** %MEMORY

  ; Code: callq .heap_adjust	 RIP: 400be6	 Bytes: 5
  %loadMem1_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400be6 = call %struct.Memory* @routine_callq_.heap_adjust(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400be6, i64 1978, i64 5, i64 5)
  store %struct.Memory* %call1_400be6, %struct.Memory** %MEMORY

  %loadMem2_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400be6 = load i64, i64* %3
  %call2_400be6 = call %struct.Memory* @sub_4013a0.heap_adjust(%struct.State* %0, i64  %loadPC_400be6, %struct.Memory* %loadMem2_400be6)
  store %struct.Memory* %call2_400be6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400afd	 RIP: 400beb	 Bytes: 5
  %loadMem_400beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400beb = call %struct.Memory* @routine_jmpq_.L_400afd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400beb, i64 -238, i64 5)
  store %struct.Memory* %call_400beb, %struct.Memory** %MEMORY

  br label %block_.L_400afd

  ; Code: .L_400bf0:	 RIP: 400bf0	 Bytes: 0
block_.L_400bf0:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 400bf0	 Bytes: 4
  %loadMem_400bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf0 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf0)
  store %struct.Memory* %call_400bf0, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rax	 RIP: 400bf4	 Bytes: 6
  %loadMem_400bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf4 = call %struct.Memory* @routine_addq__0x100___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf4)
  store %struct.Memory* %call_400bf4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2080(%rbp,%rax,4)	 RIP: 400bfa	 Bytes: 11
  %loadMem_400bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bfa = call %struct.Memory* @routine_movl__0x0__MINUS0x2080__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bfa)
  store %struct.Memory* %call_400bfa, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x29a0(%rbp)	 RIP: 400c05	 Bytes: 11
  %loadMem_400c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c05 = call %struct.Memory* @routine_movq__0x0__MINUS0x29a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c05)
  store %struct.Memory* %call_400c05, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x29a8(%rbp)	 RIP: 400c10	 Bytes: 11
  %loadMem_400c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c10 = call %struct.Memory* @routine_movq__0x0__MINUS0x29a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c10)
  store %struct.Memory* %call_400c10, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x2990(%rbp)	 RIP: 400c1b	 Bytes: 11
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1b = call %struct.Memory* @routine_movq__0x0__MINUS0x2990__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1b)
  store %struct.Memory* %call_400c1b, %struct.Memory** %MEMORY

  ; Code: .L_400c26:	 RIP: 400c26	 Bytes: 0
  br label %block_.L_400c26
block_.L_400c26:

  ; Code: cmpq $0x100, -0x2990(%rbp)	 RIP: 400c26	 Bytes: 11
  %loadMem_400c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c26 = call %struct.Memory* @routine_cmpq__0x100__MINUS0x2990__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c26)
  store %struct.Memory* %call_400c26, %struct.Memory** %MEMORY

  ; Code: jae .L_400d97	 RIP: 400c31	 Bytes: 6
  %loadMem_400c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c31 = call %struct.Memory* @routine_jae_.L_400d97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c31, i8* %BRANCH_TAKEN, i64 358, i64 6, i64 6)
  store %struct.Memory* %call_400c31, %struct.Memory** %MEMORY

  %loadBr_400c31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c31 = icmp eq i8 %loadBr_400c31, 1
  br i1 %cmpBr_400c31, label %block_.L_400d97, label %block_400c37

block_400c37:
  ; Code: movq -0x2990(%rbp), %rax	 RIP: 400c37	 Bytes: 7
  %loadMem_400c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c37 = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c37)
  store %struct.Memory* %call_400c37, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x1080(%rbp,%rax,8)	 RIP: 400c3e	 Bytes: 9
  %loadMem_400c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3e = call %struct.Memory* @routine_cmpq__0x0__MINUS0x1080__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3e)
  store %struct.Memory* %call_400c3e, %struct.Memory** %MEMORY

  ; Code: jne .L_400c74	 RIP: 400c47	 Bytes: 6
  %loadMem_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c47 = call %struct.Memory* @routine_jne_.L_400c74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c47, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_400c47, %struct.Memory** %MEMORY

  %loadBr_400c47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c47 = icmp eq i8 %loadBr_400c47, 1
  br i1 %cmpBr_400c47, label %block_.L_400c74, label %block_400c4d

block_400c4d:
  ; Code: movq -0x2990(%rbp), %rax	 RIP: 400c4d	 Bytes: 7
  %loadMem_400c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4d = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4d)
  store %struct.Memory* %call_400c4d, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x2880(%rbp,%rax,8)	 RIP: 400c54	 Bytes: 12
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c54 = call %struct.Memory* @routine_movq__0x0__MINUS0x2880__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c54)
  store %struct.Memory* %call_400c54, %struct.Memory** %MEMORY

  ; Code: movq -0x2990(%rbp), %rax	 RIP: 400c60	 Bytes: 7
  %loadMem_400c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c60 = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c60)
  store %struct.Memory* %call_400c60, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0x2980(%rbp,%rax,1)	 RIP: 400c67	 Bytes: 8
  %loadMem_400c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c67 = call %struct.Memory* @routine_movb__0x0__MINUS0x2980__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c67)
  store %struct.Memory* %call_400c67, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d7b	 RIP: 400c6f	 Bytes: 5
  %loadMem_400c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c6f = call %struct.Memory* @routine_jmpq_.L_400d7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c6f, i64 268, i64 5)
  store %struct.Memory* %call_400c6f, %struct.Memory** %MEMORY

  br label %block_.L_400d7b

  ; Code: .L_400c74:	 RIP: 400c74	 Bytes: 0
block_.L_400c74:

  ; Code: movq $0x0, -0x30(%rbp)	 RIP: 400c74	 Bytes: 8
  %loadMem_400c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c74 = call %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c74)
  store %struct.Memory* %call_400c74, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x38(%rbp)	 RIP: 400c7c	 Bytes: 8
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7c = call %struct.Memory* @routine_movq__0x1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7c)
  store %struct.Memory* %call_400c7c, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x2998(%rbp)	 RIP: 400c84	 Bytes: 11
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c84 = call %struct.Memory* @routine_movq__0x0__MINUS0x2998__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c84)
  store %struct.Memory* %call_400c84, %struct.Memory** %MEMORY

  ; Code: movq -0x2990(%rbp), %rax	 RIP: 400c8f	 Bytes: 7
  %loadMem_400c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8f = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8f)
  store %struct.Memory* %call_400c8f, %struct.Memory** %MEMORY

  ; Code: movl -0x2080(%rbp,%rax,4), %ecx	 RIP: 400c96	 Bytes: 7
  %loadMem_400c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c96 = call %struct.Memory* @routine_movl_MINUS0x2080__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c96)
  store %struct.Memory* %call_400c96, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x29ac(%rbp)	 RIP: 400c9d	 Bytes: 6
  %loadMem_400c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c9d = call %struct.Memory* @routine_movl__ecx__MINUS0x29ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c9d)
  store %struct.Memory* %call_400c9d, %struct.Memory** %MEMORY

  ; Code: .L_400ca3:	 RIP: 400ca3	 Bytes: 0
  br label %block_.L_400ca3
block_.L_400ca3:

  ; Code: cmpl $0x0, -0x29ac(%rbp)	 RIP: 400ca3	 Bytes: 7
  %loadMem_400ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x29ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca3)
  store %struct.Memory* %call_400ca3, %struct.Memory** %MEMORY

  ; Code: je .L_400d0e	 RIP: 400caa	 Bytes: 6
  %loadMem_400caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400caa = call %struct.Memory* @routine_je_.L_400d0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400caa, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_400caa, %struct.Memory** %MEMORY

  %loadBr_400caa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400caa = icmp eq i8 %loadBr_400caa, 1
  br i1 %cmpBr_400caa, label %block_.L_400d0e, label %block_400cb0

block_400cb0:
  ; Code: cmpl $0x0, -0x29ac(%rbp)	 RIP: 400cb0	 Bytes: 7
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x29ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb0)
  store %struct.Memory* %call_400cb0, %struct.Memory** %MEMORY

  ; Code: jge .L_400cdd	 RIP: 400cb7	 Bytes: 6
  %loadMem_400cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb7 = call %struct.Memory* @routine_jge_.L_400cdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb7, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_400cb7, %struct.Memory** %MEMORY

  %loadBr_400cb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cb7 = icmp eq i8 %loadBr_400cb7, 1
  br i1 %cmpBr_400cb7, label %block_.L_400cdd, label %block_400cbd

block_400cbd:
  ; Code: xorl %eax, %eax	 RIP: 400cbd	 Bytes: 2
  %loadMem_400cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbd = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbd)
  store %struct.Memory* %call_400cbd, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 400cbf	 Bytes: 4
  %loadMem_400cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbf = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbf)
  store %struct.Memory* %call_400cbf, %struct.Memory** %MEMORY

  ; Code: addq -0x2998(%rbp), %rcx	 RIP: 400cc3	 Bytes: 7
  %loadMem_400cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc3 = call %struct.Memory* @routine_addq_MINUS0x2998__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc3)
  store %struct.Memory* %call_400cc3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x2998(%rbp)	 RIP: 400cca	 Bytes: 7
  %loadMem_400cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cca = call %struct.Memory* @routine_movq__rcx__MINUS0x2998__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cca)
  store %struct.Memory* %call_400cca, %struct.Memory** %MEMORY

  ; Code: subl -0x29ac(%rbp), %eax	 RIP: 400cd1	 Bytes: 6
  %loadMem_400cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd1 = call %struct.Memory* @routine_subl_MINUS0x29ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd1)
  store %struct.Memory* %call_400cd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x29ac(%rbp)	 RIP: 400cd7	 Bytes: 6
  %loadMem_400cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd7 = call %struct.Memory* @routine_movl__eax__MINUS0x29ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd7)
  store %struct.Memory* %call_400cd7, %struct.Memory** %MEMORY

  ; Code: .L_400cdd:	 RIP: 400cdd	 Bytes: 0
  br label %block_.L_400cdd
block_.L_400cdd:

  ; Code: movslq -0x29ac(%rbp), %rax	 RIP: 400cdd	 Bytes: 7
  %loadMem_400cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdd = call %struct.Memory* @routine_movslq_MINUS0x29ac__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdd)
  store %struct.Memory* %call_400cdd, %struct.Memory** %MEMORY

  ; Code: movl -0x2080(%rbp,%rax,4), %ecx	 RIP: 400ce4	 Bytes: 7
  %loadMem_400ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce4 = call %struct.Memory* @routine_movl_MINUS0x2080__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce4)
  store %struct.Memory* %call_400ce4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x29ac(%rbp)	 RIP: 400ceb	 Bytes: 6
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ceb = call %struct.Memory* @routine_movl__ecx__MINUS0x29ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ceb)
  store %struct.Memory* %call_400ceb, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 400cf1	 Bytes: 4
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf1 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf1)
  store %struct.Memory* %call_400cf1, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 400cf5	 Bytes: 4
  %loadMem_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf5 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf5)
  store %struct.Memory* %call_400cf5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 400cf9	 Bytes: 4
  %loadMem_400cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf9 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf9)
  store %struct.Memory* %call_400cf9, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400cfd	 Bytes: 4
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfd = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfd)
  store %struct.Memory* %call_400cfd, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400d01	 Bytes: 4
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d01 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d01)
  store %struct.Memory* %call_400d01, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 400d05	 Bytes: 4
  %loadMem_400d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d05 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d05)
  store %struct.Memory* %call_400d05, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ca3	 RIP: 400d09	 Bytes: 5
  %loadMem_400d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d09 = call %struct.Memory* @routine_jmpq_.L_400ca3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d09, i64 -102, i64 5)
  store %struct.Memory* %call_400d09, %struct.Memory** %MEMORY

  br label %block_.L_400ca3

  ; Code: .L_400d0e:	 RIP: 400d0e	 Bytes: 0
block_.L_400d0e:

  ; Code: movq -0x2998(%rbp), %rax	 RIP: 400d0e	 Bytes: 7
  %loadMem_400d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0e = call %struct.Memory* @routine_movq_MINUS0x2998__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0e)
  store %struct.Memory* %call_400d0e, %struct.Memory** %MEMORY

  ; Code: movq -0x2990(%rbp), %rcx	 RIP: 400d15	 Bytes: 7
  %loadMem_400d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d15 = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d15)
  store %struct.Memory* %call_400d15, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x2880(%rbp,%rcx,8)	 RIP: 400d1c	 Bytes: 8
  %loadMem_400d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1c = call %struct.Memory* @routine_movq__rax__MINUS0x2880__rbp__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1c)
  store %struct.Memory* %call_400d1c, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400d24	 Bytes: 4
  %loadMem_400d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d24 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d24)
  store %struct.Memory* %call_400d24, %struct.Memory** %MEMORY

  ; Code: movb %al, %dl	 RIP: 400d28	 Bytes: 2
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d28 = call %struct.Memory* @routine_movb__al___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d28)
  store %struct.Memory* %call_400d28, %struct.Memory** %MEMORY

  ; Code: movq -0x2990(%rbp), %rax	 RIP: 400d2a	 Bytes: 7
  %loadMem_400d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2a = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2a)
  store %struct.Memory* %call_400d2a, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x2980(%rbp,%rax,1)	 RIP: 400d31	 Bytes: 7
  %loadMem_400d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d31 = call %struct.Memory* @routine_movb__dl__MINUS0x2980__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d31)
  store %struct.Memory* %call_400d31, %struct.Memory** %MEMORY

  ; Code: movq -0x2998(%rbp), %rax	 RIP: 400d38	 Bytes: 7
  %loadMem_400d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d38 = call %struct.Memory* @routine_movq_MINUS0x2998__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d38)
  store %struct.Memory* %call_400d38, %struct.Memory** %MEMORY

  ; Code: cmpq -0x29a0(%rbp), %rax	 RIP: 400d3f	 Bytes: 7
  %loadMem_400d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3f = call %struct.Memory* @routine_cmpq_MINUS0x29a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3f)
  store %struct.Memory* %call_400d3f, %struct.Memory** %MEMORY

  ; Code: jbe .L_400d5a	 RIP: 400d46	 Bytes: 6
  %loadMem_400d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d46 = call %struct.Memory* @routine_jbe_.L_400d5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d46, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_400d46, %struct.Memory** %MEMORY

  %loadBr_400d46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d46 = icmp eq i8 %loadBr_400d46, 1
  br i1 %cmpBr_400d46, label %block_.L_400d5a, label %block_400d4c

block_400d4c:
  ; Code: movq -0x2998(%rbp), %rax	 RIP: 400d4c	 Bytes: 7
  %loadMem_400d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4c = call %struct.Memory* @routine_movq_MINUS0x2998__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4c)
  store %struct.Memory* %call_400d4c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x29a0(%rbp)	 RIP: 400d53	 Bytes: 7
  %loadMem_400d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d53 = call %struct.Memory* @routine_movq__rax__MINUS0x29a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d53)
  store %struct.Memory* %call_400d53, %struct.Memory** %MEMORY

  ; Code: .L_400d5a:	 RIP: 400d5a	 Bytes: 0
  br label %block_.L_400d5a
block_.L_400d5a:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400d5a	 Bytes: 4
  %loadMem_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5a = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5a)
  store %struct.Memory* %call_400d5a, %struct.Memory** %MEMORY

  ; Code: cmpq -0x29a8(%rbp), %rax	 RIP: 400d5e	 Bytes: 7
  %loadMem_400d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5e = call %struct.Memory* @routine_cmpq_MINUS0x29a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5e)
  store %struct.Memory* %call_400d5e, %struct.Memory** %MEMORY

  ; Code: jbe .L_400d76	 RIP: 400d65	 Bytes: 6
  %loadMem_400d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d65 = call %struct.Memory* @routine_jbe_.L_400d76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d65, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_400d65, %struct.Memory** %MEMORY

  %loadBr_400d65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d65 = icmp eq i8 %loadBr_400d65, 1
  br i1 %cmpBr_400d65, label %block_.L_400d76, label %block_400d6b

block_400d6b:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 400d6b	 Bytes: 4
  %loadMem_400d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6b)
  store %struct.Memory* %call_400d6b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x29a8(%rbp)	 RIP: 400d6f	 Bytes: 7
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6f = call %struct.Memory* @routine_movq__rax__MINUS0x29a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6f)
  store %struct.Memory* %call_400d6f, %struct.Memory** %MEMORY

  ; Code: .L_400d76:	 RIP: 400d76	 Bytes: 0
  br label %block_.L_400d76
block_.L_400d76:

  ; Code: jmpq .L_400d7b	 RIP: 400d76	 Bytes: 5
  %loadMem_400d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d76 = call %struct.Memory* @routine_jmpq_.L_400d7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d76, i64 5, i64 5)
  store %struct.Memory* %call_400d76, %struct.Memory** %MEMORY

  br label %block_.L_400d7b

  ; Code: .L_400d7b:	 RIP: 400d7b	 Bytes: 0
block_.L_400d7b:

  ; Code: jmpq .L_400d80	 RIP: 400d7b	 Bytes: 5
  %loadMem_400d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7b = call %struct.Memory* @routine_jmpq_.L_400d80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7b, i64 5, i64 5)
  store %struct.Memory* %call_400d7b, %struct.Memory** %MEMORY

  br label %block_.L_400d80

  ; Code: .L_400d80:	 RIP: 400d80	 Bytes: 0
block_.L_400d80:

  ; Code: movq -0x2990(%rbp), %rax	 RIP: 400d80	 Bytes: 7
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d80 = call %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d80)
  store %struct.Memory* %call_400d80, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400d87	 Bytes: 4
  %loadMem_400d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d87 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d87)
  store %struct.Memory* %call_400d87, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x2990(%rbp)	 RIP: 400d8b	 Bytes: 7
  %loadMem_400d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8b = call %struct.Memory* @routine_movq__rax__MINUS0x2990__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8b)
  store %struct.Memory* %call_400d8b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400c26	 RIP: 400d92	 Bytes: 5
  %loadMem_400d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d92 = call %struct.Memory* @routine_jmpq_.L_400c26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d92, i64 -364, i64 5)
  store %struct.Memory* %call_400d92, %struct.Memory** %MEMORY

  br label %block_.L_400c26

  ; Code: .L_400d97:	 RIP: 400d97	 Bytes: 0
block_.L_400d97:

  ; Code: cmpq $0x40, -0x29a8(%rbp)	 RIP: 400d97	 Bytes: 8
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d97 = call %struct.Memory* @routine_cmpq__0x40__MINUS0x29a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d97)
  store %struct.Memory* %call_400d97, %struct.Memory** %MEMORY

  ; Code: jbe .L_400dce	 RIP: 400d9f	 Bytes: 6
  %loadMem_400d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9f = call %struct.Memory* @routine_jbe_.L_400dce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9f, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_400d9f, %struct.Memory** %MEMORY

  %loadBr_400d9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d9f = icmp eq i8 %loadBr_400d9f, 1
  br i1 %cmpBr_400d9f, label %block_.L_400dce, label %block_400da5

block_400da5:
  ; Code: movq $0x401675, %rsi	 RIP: 400da5	 Bytes: 10
  %loadMem_400da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da5 = call %struct.Memory* @routine_movq__0x401675___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da5)
  store %struct.Memory* %call_400da5, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdi	 RIP: 400daf	 Bytes: 8
  %loadMem_400daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400daf = call %struct.Memory* @routine_movq_0x6020a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400daf)
  store %struct.Memory* %call_400daf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400db7	 Bytes: 2
  %loadMem_400db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db7)
  store %struct.Memory* %call_400db7, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400db9	 Bytes: 5
  %loadMem1_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400db9 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400db9, i64 -1945, i64 5, i64 5)
  store %struct.Memory* %call1_400db9, %struct.Memory** %MEMORY

  %loadMem2_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400db9 = load i64, i64* %3
  %call2_400db9 = call %struct.Memory* @sub_400620.fprintf_plt(%struct.State* %0, i64  %loadPC_400db9, %struct.Memory* %loadMem2_400db9)
  store %struct.Memory* %call2_400db9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 400dbe	 Bytes: 5
  %loadMem_400dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbe = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbe)
  store %struct.Memory* %call_400dbe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3318(%rbp)	 RIP: 400dc3	 Bytes: 6
  %loadMem_400dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc3 = call %struct.Memory* @routine_movl__eax__MINUS0x3318__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc3)
  store %struct.Memory* %call_400dc3, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400dc9	 Bytes: 5
  %loadMem1_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400dc9 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400dc9, i64 -1913, i64 5, i64 5)
  store %struct.Memory* %call1_400dc9, %struct.Memory** %MEMORY

  %loadMem2_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400dc9 = load i64, i64* %3
  %call2_400dc9 = call %struct.Memory* @sub_400650.exit_plt(%struct.State* %0, i64  %loadPC_400dc9, %struct.Memory* %loadMem2_400dc9)
  store %struct.Memory* %call2_400dc9, %struct.Memory** %MEMORY

  ; Code: .L_400dce:	 RIP: 400dce	 Bytes: 0
  br label %block_.L_400dce
block_.L_400dce:

  ; Code: movq $0x0, -0x29b8(%rbp)	 RIP: 400dce	 Bytes: 11
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dce = call %struct.Memory* @routine_movq__0x0__MINUS0x29b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dce)
  store %struct.Memory* %call_400dce, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0x29b9(%rbp)	 RIP: 400dd9	 Bytes: 7
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd9 = call %struct.Memory* @routine_movb__0x0__MINUS0x29b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd9)
  store %struct.Memory* %call_400dd9, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x29c0(%rbp)	 RIP: 400de0	 Bytes: 10
  %loadMem_400de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de0 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x29c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de0)
  store %struct.Memory* %call_400de0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400dea	 Bytes: 4
  %loadMem_400dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dea = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dea)
  store %struct.Memory* %call_400dea, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 400dee	 Bytes: 4
  %loadMem_400dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dee = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dee)
  store %struct.Memory* %call_400dee, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x29a0(%rbp)	 RIP: 400df2	 Bytes: 8
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df2 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x29a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df2)
  store %struct.Memory* %call_400df2, %struct.Memory** %MEMORY

  ; Code: jne .L_400e29	 RIP: 400dfa	 Bytes: 6
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfa = call %struct.Memory* @routine_jne_.L_400e29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfa, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_400dfa, %struct.Memory** %MEMORY

  %loadBr_400dfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dfa = icmp eq i8 %loadBr_400dfa, 1
  br i1 %cmpBr_400dfa, label %block_.L_400e29, label %block_400e00

block_400e00:
  ; Code: movq $0x40168f, %rsi	 RIP: 400e00	 Bytes: 10
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e00 = call %struct.Memory* @routine_movq__0x40168f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e00)
  store %struct.Memory* %call_400e00, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdi	 RIP: 400e0a	 Bytes: 8
  %loadMem_400e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0a = call %struct.Memory* @routine_movq_0x6020a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0a)
  store %struct.Memory* %call_400e0a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400e12	 Bytes: 2
  %loadMem_400e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e12 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e12)
  store %struct.Memory* %call_400e12, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400e14	 Bytes: 5
  %loadMem1_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e14 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e14, i64 -2036, i64 5, i64 5)
  store %struct.Memory* %call1_400e14, %struct.Memory** %MEMORY

  %loadMem2_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e14 = load i64, i64* %3
  %call2_400e14 = call %struct.Memory* @sub_400620.fprintf_plt(%struct.State* %0, i64  %loadPC_400e14, %struct.Memory* %loadMem2_400e14)
  store %struct.Memory* %call2_400e14, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 400e19	 Bytes: 5
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e19 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e19)
  store %struct.Memory* %call_400e19, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x331c(%rbp)	 RIP: 400e1e	 Bytes: 6
  %loadMem_400e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1e = call %struct.Memory* @routine_movl__eax__MINUS0x331c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1e)
  store %struct.Memory* %call_400e1e, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400e24	 Bytes: 5
  %loadMem1_400e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e24 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e24, i64 -2004, i64 5, i64 5)
  store %struct.Memory* %call1_400e24, %struct.Memory** %MEMORY

  %loadMem2_400e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e24 = load i64, i64* %3
  %call2_400e24 = call %struct.Memory* @sub_400650.exit_plt(%struct.State* %0, i64  %loadPC_400e24, %struct.Memory* %loadMem2_400e24)
  store %struct.Memory* %call2_400e24, %struct.Memory** %MEMORY

  ; Code: .L_400e29:	 RIP: 400e29	 Bytes: 0
  br label %block_.L_400e29
block_.L_400e29:

  ; Code: movq $0x0, -0x38(%rbp)	 RIP: 400e29	 Bytes: 8
  %loadMem_400e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e29 = call %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e29)
  store %struct.Memory* %call_400e29, %struct.Memory** %MEMORY

  ; Code: .L_400e31:	 RIP: 400e31	 Bytes: 0
  br label %block_.L_400e31
block_.L_400e31:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 400e31	 Bytes: 4
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e31 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e31)
  store %struct.Memory* %call_400e31, %struct.Memory** %MEMORY

  ; Code: cmpq -0x28(%rbp), %rax	 RIP: 400e35	 Bytes: 4
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e35 = call %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e35)
  store %struct.Memory* %call_400e35, %struct.Memory** %MEMORY

  ; Code: jae .L_400f9a	 RIP: 400e39	 Bytes: 6
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e39 = call %struct.Memory* @routine_jae_.L_400f9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e39, i8* %BRANCH_TAKEN, i64 353, i64 6, i64 6)
  store %struct.Memory* %call_400e39, %struct.Memory** %MEMORY

  %loadBr_400e39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e39 = icmp eq i8 %loadBr_400e39, 1
  br i1 %cmpBr_400e39, label %block_.L_400f9a, label %block_400e3f

block_400e3f:
  ; Code: movl $0x1, %eax	 RIP: 400e3f	 Bytes: 5
  %loadMem_400e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3f = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3f)
  store %struct.Memory* %call_400e3f, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 400e44	 Bytes: 4
  %loadMem_400e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e44 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e44)
  store %struct.Memory* %call_400e44, %struct.Memory** %MEMORY

  ; Code: movzbl (%rcx), %edx	 RIP: 400e48	 Bytes: 3
  %loadMem_400e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e48 = call %struct.Memory* @routine_movzbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e48)
  store %struct.Memory* %call_400e48, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 400e4b	 Bytes: 2
  %loadMem_400e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4b = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4b)
  store %struct.Memory* %call_400e4b, %struct.Memory** %MEMORY

  ; Code: movzbl -0x2980(%rbp,%rcx,1), %edx	 RIP: 400e4d	 Bytes: 8
  %loadMem_400e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4d = call %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4d)
  store %struct.Memory* %call_400e4d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400e55	 Bytes: 3
  %loadMem_400e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e55 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e55)
  store %struct.Memory* %call_400e55, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 400e58	 Bytes: 2
  %loadMem_400e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e58 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e58)
  store %struct.Memory* %call_400e58, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 400e5a	 Bytes: 2
  %loadMem_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5a = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5a)
  store %struct.Memory* %call_400e5a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400e5c	 Bytes: 3
  %loadMem_400e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5c = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5c)
  store %struct.Memory* %call_400e5c, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 400e5f	 Bytes: 4
  %loadMem_400e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5f = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5f)
  store %struct.Memory* %call_400e5f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x30(%rbp)	 RIP: 400e63	 Bytes: 8
  %loadMem_400e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e63 = call %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e63)
  store %struct.Memory* %call_400e63, %struct.Memory** %MEMORY

  ; Code: .L_400e6b:	 RIP: 400e6b	 Bytes: 0
  br label %block_.L_400e6b
block_.L_400e6b:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400e6b	 Bytes: 4
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6b = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6b)
  store %struct.Memory* %call_400e6b, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 400e6f	 Bytes: 4
  %loadMem_400e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6f = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6f)
  store %struct.Memory* %call_400e6f, %struct.Memory** %MEMORY

  ; Code: movzbl (%rcx), %edx	 RIP: 400e73	 Bytes: 3
  %loadMem_400e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e73 = call %struct.Memory* @routine_movzbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e73)
  store %struct.Memory* %call_400e73, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 400e76	 Bytes: 2
  %loadMem_400e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e76 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e76)
  store %struct.Memory* %call_400e76, %struct.Memory** %MEMORY

  ; Code: movzbl -0x2980(%rbp,%rcx,1), %edx	 RIP: 400e78	 Bytes: 8
  %loadMem_400e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e78 = call %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e78)
  store %struct.Memory* %call_400e78, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 400e80	 Bytes: 2
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e80 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e80)
  store %struct.Memory* %call_400e80, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 400e82	 Bytes: 3
  %loadMem_400e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e82 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e82)
  store %struct.Memory* %call_400e82, %struct.Memory** %MEMORY

  ; Code: jae .L_400f7d	 RIP: 400e85	 Bytes: 6
  %loadMem_400e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e85 = call %struct.Memory* @routine_jae_.L_400f7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e85, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_400e85, %struct.Memory** %MEMORY

  %loadBr_400e85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e85 = icmp eq i8 %loadBr_400e85, 1
  br i1 %cmpBr_400e85, label %block_.L_400f7d, label %block_400e8b

block_400e8b:
  ; Code: cmpl $0x7, -0x29c0(%rbp)	 RIP: 400e8b	 Bytes: 7
  %loadMem_400e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8b = call %struct.Memory* @routine_cmpl__0x7__MINUS0x29c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8b)
  store %struct.Memory* %call_400e8b, %struct.Memory** %MEMORY

  ; Code: jne .L_400f0e	 RIP: 400e92	 Bytes: 6
  %loadMem_400e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e92 = call %struct.Memory* @routine_jne_.L_400f0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e92, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_400e92, %struct.Memory** %MEMORY

  %loadBr_400e92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e92 = icmp eq i8 %loadBr_400e92, 1
  br i1 %cmpBr_400e92, label %block_.L_400f0e, label %block_400e98

block_400e98:
  ; Code: movb -0x29b9(%rbp), %al	 RIP: 400e98	 Bytes: 6
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e98 = call %struct.Memory* @routine_movb_MINUS0x29b9__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e98)
  store %struct.Memory* %call_400e98, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 400e9e	 Bytes: 4
  %loadMem_400e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9e = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9e)
  store %struct.Memory* %call_400e9e, %struct.Memory** %MEMORY

  ; Code: movq -0x29b8(%rbp), %rdx	 RIP: 400ea2	 Bytes: 7
  %loadMem_400ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea2 = call %struct.Memory* @routine_movq_MINUS0x29b8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea2)
  store %struct.Memory* %call_400ea2, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rcx,%rdx,1)	 RIP: 400ea9	 Bytes: 3
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea9 = call %struct.Memory* @routine_movb__al____rcx__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea9)
  store %struct.Memory* %call_400ea9, %struct.Memory** %MEMORY

  ; Code: movq -0x29b8(%rbp), %rcx	 RIP: 400eac	 Bytes: 7
  %loadMem_400eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eac = call %struct.Memory* @routine_movq_MINUS0x29b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eac)
  store %struct.Memory* %call_400eac, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 400eb3	 Bytes: 4
  %loadMem_400eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb3 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb3)
  store %struct.Memory* %call_400eb3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x29b8(%rbp)	 RIP: 400eb7	 Bytes: 7
  %loadMem_400eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb7 = call %struct.Memory* @routine_movq__rcx__MINUS0x29b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb7)
  store %struct.Memory* %call_400eb7, %struct.Memory** %MEMORY

  ; Code: movq -0x29b8(%rbp), %rcx	 RIP: 400ebe	 Bytes: 7
  %loadMem_400ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebe = call %struct.Memory* @routine_movq_MINUS0x29b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebe)
  store %struct.Memory* %call_400ebe, %struct.Memory** %MEMORY

  ; Code: cmpq -0x28(%rbp), %rcx	 RIP: 400ec5	 Bytes: 4
  %loadMem_400ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec5 = call %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec5)
  store %struct.Memory* %call_400ec5, %struct.Memory** %MEMORY

  ; Code: jne .L_400ef8	 RIP: 400ec9	 Bytes: 6
  %loadMem_400ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec9 = call %struct.Memory* @routine_jne_.L_400ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec9, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_400ec9, %struct.Memory** %MEMORY

  %loadBr_400ec9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ec9 = icmp eq i8 %loadBr_400ec9, 1
  br i1 %cmpBr_400ec9, label %block_.L_400ef8, label %block_400ecf

block_400ecf:
  ; Code: movq $0x4016b0, %rsi	 RIP: 400ecf	 Bytes: 10
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecf = call %struct.Memory* @routine_movq__0x4016b0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecf)
  store %struct.Memory* %call_400ecf, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdi	 RIP: 400ed9	 Bytes: 8
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed9 = call %struct.Memory* @routine_movq_0x6020a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed9)
  store %struct.Memory* %call_400ed9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400ee1	 Bytes: 2
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee1)
  store %struct.Memory* %call_400ee1, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400ee3	 Bytes: 5
  %loadMem1_400ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ee3 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ee3, i64 -2243, i64 5, i64 5)
  store %struct.Memory* %call1_400ee3, %struct.Memory** %MEMORY

  %loadMem2_400ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ee3 = load i64, i64* %3
  %call2_400ee3 = call %struct.Memory* @sub_400620.fprintf_plt(%struct.State* %0, i64  %loadPC_400ee3, %struct.Memory* %loadMem2_400ee3)
  store %struct.Memory* %call2_400ee3, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 400ee8	 Bytes: 5
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee8 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee8)
  store %struct.Memory* %call_400ee8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3320(%rbp)	 RIP: 400eed	 Bytes: 6
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eed = call %struct.Memory* @routine_movl__eax__MINUS0x3320__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eed)
  store %struct.Memory* %call_400eed, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400ef3	 Bytes: 5
  %loadMem1_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ef3 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ef3, i64 -2211, i64 5, i64 5)
  store %struct.Memory* %call1_400ef3, %struct.Memory** %MEMORY

  %loadMem2_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ef3 = load i64, i64* %3
  %call2_400ef3 = call %struct.Memory* @sub_400650.exit_plt(%struct.State* %0, i64  %loadPC_400ef3, %struct.Memory* %loadMem2_400ef3)
  store %struct.Memory* %call2_400ef3, %struct.Memory** %MEMORY

  ; Code: .L_400ef8:	 RIP: 400ef8	 Bytes: 0
  br label %block_.L_400ef8
block_.L_400ef8:

  ; Code: movl $0x0, -0x29c0(%rbp)	 RIP: 400ef8	 Bytes: 10
  %loadMem_400ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef8 = call %struct.Memory* @routine_movl__0x0__MINUS0x29c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef8)
  store %struct.Memory* %call_400ef8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, -0x29b9(%rbp)	 RIP: 400f02	 Bytes: 7
  %loadMem_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f02 = call %struct.Memory* @routine_movb__0x0__MINUS0x29b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f02)
  store %struct.Memory* %call_400f02, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400f2f	 RIP: 400f09	 Bytes: 5
  %loadMem_400f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f09 = call %struct.Memory* @routine_jmpq_.L_400f2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f09, i64 38, i64 5)
  store %struct.Memory* %call_400f09, %struct.Memory** %MEMORY

  br label %block_.L_400f2f

  ; Code: .L_400f0e:	 RIP: 400f0e	 Bytes: 0
block_.L_400f0e:

  ; Code: movl -0x29c0(%rbp), %eax	 RIP: 400f0e	 Bytes: 6
  %loadMem_400f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0e = call %struct.Memory* @routine_movl_MINUS0x29c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0e)
  store %struct.Memory* %call_400f0e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f14	 Bytes: 3
  %loadMem_400f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f14 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f14)
  store %struct.Memory* %call_400f14, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x29c0(%rbp)	 RIP: 400f17	 Bytes: 6
  %loadMem_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f17 = call %struct.Memory* @routine_movl__eax__MINUS0x29c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f17)
  store %struct.Memory* %call_400f17, %struct.Memory** %MEMORY

  ; Code: movsbl -0x29b9(%rbp), %eax	 RIP: 400f1d	 Bytes: 7
  %loadMem_400f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1d = call %struct.Memory* @routine_movsbl_MINUS0x29b9__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1d)
  store %struct.Memory* %call_400f1d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 400f24	 Bytes: 3
  %loadMem_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f24 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f24)
  store %struct.Memory* %call_400f24, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 400f27	 Bytes: 2
  %loadMem_400f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f27 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f27)
  store %struct.Memory* %call_400f27, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x29b9(%rbp)	 RIP: 400f29	 Bytes: 6
  %loadMem_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f29 = call %struct.Memory* @routine_movb__cl__MINUS0x29b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f29)
  store %struct.Memory* %call_400f29, %struct.Memory** %MEMORY

  ; Code: .L_400f2f:	 RIP: 400f2f	 Bytes: 0
  br label %block_.L_400f2f
block_.L_400f2f:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 400f2f	 Bytes: 4
  %loadMem_400f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2f = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2f)
  store %struct.Memory* %call_400f2f, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 400f33	 Bytes: 3
  %loadMem_400f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f33 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f33)
  store %struct.Memory* %call_400f33, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 400f36	 Bytes: 2
  %loadMem_400f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f36 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f36)
  store %struct.Memory* %call_400f36, %struct.Memory** %MEMORY

  ; Code: movq -0x2880(%rbp,%rax,8), %rax	 RIP: 400f38	 Bytes: 8
  %loadMem_400f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f38 = call %struct.Memory* @routine_movq_MINUS0x2880__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f38)
  store %struct.Memory* %call_400f38, %struct.Memory** %MEMORY

  ; Code: andq -0x48(%rbp), %rax	 RIP: 400f40	 Bytes: 4
  %loadMem_400f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f40 = call %struct.Memory* @routine_andq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f40)
  store %struct.Memory* %call_400f40, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 400f44	 Bytes: 4
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f44 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f44)
  store %struct.Memory* %call_400f44, %struct.Memory** %MEMORY

  ; Code: je .L_400f60	 RIP: 400f48	 Bytes: 6
  %loadMem_400f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f48 = call %struct.Memory* @routine_je_.L_400f60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f48, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_400f48, %struct.Memory** %MEMORY

  %loadBr_400f48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f48 = icmp eq i8 %loadBr_400f48, 1
  br i1 %cmpBr_400f48, label %block_.L_400f60, label %block_400f4e

block_400f4e:
  ; Code: movsbl -0x29b9(%rbp), %eax	 RIP: 400f4e	 Bytes: 7
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4e = call %struct.Memory* @routine_movsbl_MINUS0x29b9__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4e)
  store %struct.Memory* %call_400f4e, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %eax	 RIP: 400f55	 Bytes: 3
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f55 = call %struct.Memory* @routine_orl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f55)
  store %struct.Memory* %call_400f55, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 400f58	 Bytes: 2
  %loadMem_400f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f58 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f58)
  store %struct.Memory* %call_400f58, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x29b9(%rbp)	 RIP: 400f5a	 Bytes: 6
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5a = call %struct.Memory* @routine_movb__cl__MINUS0x29b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5a)
  store %struct.Memory* %call_400f5a, %struct.Memory** %MEMORY

  ; Code: .L_400f60:	 RIP: 400f60	 Bytes: 0
  br label %block_.L_400f60
block_.L_400f60:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400f60	 Bytes: 4
  %loadMem_400f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f60 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f60)
  store %struct.Memory* %call_400f60, %struct.Memory** %MEMORY

  ; Code: shrq $0x1, %rax	 RIP: 400f64	 Bytes: 4
  %loadMem_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f64 = call %struct.Memory* @routine_shrq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f64)
  store %struct.Memory* %call_400f64, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 400f68	 Bytes: 4
  %loadMem_400f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f68 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f68)
  store %struct.Memory* %call_400f68, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 400f6c	 Bytes: 4
  %loadMem_400f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6c = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6c)
  store %struct.Memory* %call_400f6c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400f70	 Bytes: 4
  %loadMem_400f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f70 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f70)
  store %struct.Memory* %call_400f70, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 400f74	 Bytes: 4
  %loadMem_400f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f74 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f74)
  store %struct.Memory* %call_400f74, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e6b	 RIP: 400f78	 Bytes: 5
  %loadMem_400f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f78 = call %struct.Memory* @routine_jmpq_.L_400e6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f78, i64 -269, i64 5)
  store %struct.Memory* %call_400f78, %struct.Memory** %MEMORY

  br label %block_.L_400e6b

  ; Code: .L_400f7d:	 RIP: 400f7d	 Bytes: 0
block_.L_400f7d:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 400f7d	 Bytes: 4
  %loadMem_400f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7d = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7d)
  store %struct.Memory* %call_400f7d, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400f81	 Bytes: 4
  %loadMem_400f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f81 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f81)
  store %struct.Memory* %call_400f81, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 400f85	 Bytes: 4
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f85 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f85)
  store %struct.Memory* %call_400f85, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 400f89	 Bytes: 4
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f89 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f89)
  store %struct.Memory* %call_400f89, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400f8d	 Bytes: 4
  %loadMem_400f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8d = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8d)
  store %struct.Memory* %call_400f8d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 400f91	 Bytes: 4
  %loadMem_400f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f91 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f91)
  store %struct.Memory* %call_400f91, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e31	 RIP: 400f95	 Bytes: 5
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f95 = call %struct.Memory* @routine_jmpq_.L_400e31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f95, i64 -356, i64 5)
  store %struct.Memory* %call_400f95, %struct.Memory** %MEMORY

  br label %block_.L_400e31

  ; Code: .L_400f9a:	 RIP: 400f9a	 Bytes: 0
block_.L_400f9a:

  ; Code: leaq -0x32c0(%rbp), %rax	 RIP: 400f9a	 Bytes: 7
  %loadMem_400f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9a = call %struct.Memory* @routine_leaq_MINUS0x32c0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9a)
  store %struct.Memory* %call_400f9a, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 400fa1	 Bytes: 2
  %loadMem_400fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa1 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa1)
  store %struct.Memory* %call_400fa1, %struct.Memory** %MEMORY

  ; Code: movl $0x800, %ecx	 RIP: 400fa3	 Bytes: 5
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa3 = call %struct.Memory* @routine_movl__0x800___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa3)
  store %struct.Memory* %call_400fa3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 400fa8	 Bytes: 2
  %loadMem_400fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa8 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa8)
  store %struct.Memory* %call_400fa8, %struct.Memory** %MEMORY

  ; Code: leaq -0x31c0(%rbp), %rdi	 RIP: 400faa	 Bytes: 7
  %loadMem_400faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faa = call %struct.Memory* @routine_leaq_MINUS0x31c0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faa)
  store %struct.Memory* %call_400faa, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %ecx	 RIP: 400fb1	 Bytes: 5
  %loadMem_400fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb1 = call %struct.Memory* @routine_movl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb1)
  store %struct.Memory* %call_400fb1, %struct.Memory** %MEMORY

  ; Code: subl -0x29c0(%rbp), %ecx	 RIP: 400fb6	 Bytes: 6
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb6 = call %struct.Memory* @routine_subl_MINUS0x29c0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb6)
  store %struct.Memory* %call_400fb6, %struct.Memory** %MEMORY

  ; Code: movsbl -0x29b9(%rbp), %r8d	 RIP: 400fbc	 Bytes: 8
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbc = call %struct.Memory* @routine_movsbl_MINUS0x29b9__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbc)
  store %struct.Memory* %call_400fbc, %struct.Memory** %MEMORY

  ; Code: shll %cl, %r8d	 RIP: 400fc4	 Bytes: 3
  %loadMem_400fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc4 = call %struct.Memory* @routine_shll__cl___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc4)
  store %struct.Memory* %call_400fc4, %struct.Memory** %MEMORY

  ; Code: movb %r8b, %cl	 RIP: 400fc7	 Bytes: 3
  %loadMem_400fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc7 = call %struct.Memory* @routine_movb__r8b___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc7)
  store %struct.Memory* %call_400fc7, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x29b9(%rbp)	 RIP: 400fca	 Bytes: 6
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fca = call %struct.Memory* @routine_movb__cl__MINUS0x29b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fca)
  store %struct.Memory* %call_400fca, %struct.Memory** %MEMORY

  ; Code: movb -0x29b9(%rbp), %cl	 RIP: 400fd0	 Bytes: 6
  %loadMem_400fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd0 = call %struct.Memory* @routine_movb_MINUS0x29b9__rbp____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd0)
  store %struct.Memory* %call_400fd0, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %r9	 RIP: 400fd6	 Bytes: 4
  %loadMem_400fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd6 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd6)
  store %struct.Memory* %call_400fd6, %struct.Memory** %MEMORY

  ; Code: movq -0x29b8(%rbp), %r10	 RIP: 400fda	 Bytes: 7
  %loadMem_400fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fda = call %struct.Memory* @routine_movq_MINUS0x29b8__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fda)
  store %struct.Memory* %call_400fda, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%r9,%r10,1)	 RIP: 400fe1	 Bytes: 4
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe1 = call %struct.Memory* @routine_movb__cl____r9__r10_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe1)
  store %struct.Memory* %call_400fe1, %struct.Memory** %MEMORY

  ; Code: movq -0x29b8(%rbp), %r9	 RIP: 400fe5	 Bytes: 7
  %loadMem_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe5 = call %struct.Memory* @routine_movq_MINUS0x29b8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe5)
  store %struct.Memory* %call_400fe5, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %r9	 RIP: 400fec	 Bytes: 4
  %loadMem_400fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fec = call %struct.Memory* @routine_addq__0x1___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fec)
  store %struct.Memory* %call_400fec, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x29b8(%rbp)	 RIP: 400ff0	 Bytes: 7
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff0 = call %struct.Memory* @routine_movq__r9__MINUS0x29b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff0)
  store %struct.Memory* %call_400ff0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x3328(%rbp)	 RIP: 400ff7	 Bytes: 7
  %loadMem_400ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff7 = call %struct.Memory* @routine_movq__rax__MINUS0x3328__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff7)
  store %struct.Memory* %call_400ff7, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 400ffe	 Bytes: 5
  %loadMem1_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ffe = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ffe, i64 -2558, i64 5, i64 5)
  store %struct.Memory* %call1_400ffe, %struct.Memory** %MEMORY

  %loadMem2_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ffe = load i64, i64* %3
  %call2_400ffe = call %struct.Memory* @sub_400600.memset_plt(%struct.State* %0, i64  %loadPC_400ffe, %struct.Memory* %loadMem2_400ffe)
  store %struct.Memory* %call2_400ffe, %struct.Memory** %MEMORY

  ; Code: movq -0x3328(%rbp), %rax	 RIP: 401003	 Bytes: 7
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401003 = call %struct.Memory* @routine_movq_MINUS0x3328__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401003)
  store %struct.Memory* %call_401003, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x32c8(%rbp)	 RIP: 40100a	 Bytes: 7
  %loadMem_40100a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100a = call %struct.Memory* @routine_movq__rax__MINUS0x32c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100a)
  store %struct.Memory* %call_40100a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x38(%rbp)	 RIP: 401011	 Bytes: 8
  %loadMem_401011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401011 = call %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401011)
  store %struct.Memory* %call_401011, %struct.Memory** %MEMORY

  ; Code: .L_401019:	 RIP: 401019	 Bytes: 0
  br label %block_.L_401019
block_.L_401019:

  ; Code: cmpq $0x100, -0x38(%rbp)	 RIP: 401019	 Bytes: 8
  %loadMem_401019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401019 = call %struct.Memory* @routine_cmpq__0x100__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401019)
  store %struct.Memory* %call_401019, %struct.Memory** %MEMORY

  ; Code: jae .L_401132	 RIP: 401021	 Bytes: 6
  %loadMem_401021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401021 = call %struct.Memory* @routine_jae_.L_401132(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401021, i8* %BRANCH_TAKEN, i64 273, i64 6, i64 6)
  store %struct.Memory* %call_401021, %struct.Memory** %MEMORY

  %loadBr_401021 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401021 = icmp eq i8 %loadBr_401021, 1
  br i1 %cmpBr_401021, label %block_.L_401132, label %block_401027

block_401027:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 401027	 Bytes: 4
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401027 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401027)
  store %struct.Memory* %call_401027, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 40102b	 Bytes: 2
  %loadMem_40102b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102b = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102b)
  store %struct.Memory* %call_40102b, %struct.Memory** %MEMORY

  ; Code: movq -0x32c8(%rbp), %rax	 RIP: 40102d	 Bytes: 7
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102d = call %struct.Memory* @routine_movq_MINUS0x32c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102d)
  store %struct.Memory* %call_40102d, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax)	 RIP: 401034	 Bytes: 2
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401034 = call %struct.Memory* @routine_movb__cl____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401034)
  store %struct.Memory* %call_401034, %struct.Memory** %MEMORY

  ; Code: movq -0x32c8(%rbp), %rax	 RIP: 401036	 Bytes: 7
  %loadMem_401036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401036 = call %struct.Memory* @routine_movq_MINUS0x32c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401036)
  store %struct.Memory* %call_401036, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40103d	 Bytes: 4
  %loadMem_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103d = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103d)
  store %struct.Memory* %call_40103d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x32c8(%rbp)	 RIP: 401041	 Bytes: 7
  %loadMem_401041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401041 = call %struct.Memory* @routine_movq__rax__MINUS0x32c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401041)
  store %struct.Memory* %call_401041, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401048	 Bytes: 4
  %loadMem_401048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401048 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401048)
  store %struct.Memory* %call_401048, %struct.Memory** %MEMORY

  ; Code: movq -0x2880(%rbp,%rax,8), %rax	 RIP: 40104c	 Bytes: 8
  %loadMem_40104c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104c = call %struct.Memory* @routine_movq_MINUS0x2880__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104c)
  store %struct.Memory* %call_40104c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 401054	 Bytes: 4
  %loadMem_401054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401054 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401054)
  store %struct.Memory* %call_401054, %struct.Memory** %MEMORY

  ; Code: movzbl -0x2980(%rbp,%rdx,1), %esi	 RIP: 401058	 Bytes: 8
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401058 = call %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401058)
  store %struct.Memory* %call_401058, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401060	 Bytes: 2
  %loadMem_401060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401060 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401060)
  store %struct.Memory* %call_401060, %struct.Memory** %MEMORY

  ; Code: orq %rdx, %rax	 RIP: 401062	 Bytes: 3
  %loadMem_401062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401062 = call %struct.Memory* @routine_orq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401062)
  store %struct.Memory* %call_401062, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 401065	 Bytes: 4
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401065 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401065)
  store %struct.Memory* %call_401065, %struct.Memory** %MEMORY

  ; Code: je .L_40111c	 RIP: 401069	 Bytes: 6
  %loadMem_401069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401069 = call %struct.Memory* @routine_je_.L_40111c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401069, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_401069, %struct.Memory** %MEMORY

  %loadBr_401069 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401069 = icmp eq i8 %loadBr_401069, 1
  br i1 %cmpBr_401069, label %block_.L_40111c, label %block_40106f

block_40106f:
  ; Code: movl $0x1, %eax	 RIP: 40106f	 Bytes: 5
  %loadMem_40106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106f = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106f)
  store %struct.Memory* %call_40106f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x50(%rbp)	 RIP: 401074	 Bytes: 8
  %loadMem_401074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401074 = call %struct.Memory* @routine_movq__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401074)
  store %struct.Memory* %call_401074, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40107c	 Bytes: 4
  %loadMem_40107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107c)
  store %struct.Memory* %call_40107c, %struct.Memory** %MEMORY

  ; Code: movzbl -0x2980(%rbp,%rcx,1), %edx	 RIP: 401080	 Bytes: 8
  %loadMem_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401080 = call %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401080)
  store %struct.Memory* %call_401080, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 401088	 Bytes: 3
  %loadMem_401088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401088 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401088)
  store %struct.Memory* %call_401088, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 40108b	 Bytes: 2
  %loadMem_40108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108b = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108b)
  store %struct.Memory* %call_40108b, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 40108d	 Bytes: 2
  %loadMem_40108d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108d = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108d)
  store %struct.Memory* %call_40108d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 40108f	 Bytes: 3
  %loadMem_40108f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108f = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108f)
  store %struct.Memory* %call_40108f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 401092	 Bytes: 4
  %loadMem_401092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401092 = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401092)
  store %struct.Memory* %call_401092, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x30(%rbp)	 RIP: 401096	 Bytes: 8
  %loadMem_401096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401096 = call %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401096)
  store %struct.Memory* %call_401096, %struct.Memory** %MEMORY

  ; Code: .L_40109e:	 RIP: 40109e	 Bytes: 0
  br label %block_.L_40109e
block_.L_40109e:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40109e	 Bytes: 4
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109e)
  store %struct.Memory* %call_40109e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4010a2	 Bytes: 4
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a2)
  store %struct.Memory* %call_4010a2, %struct.Memory** %MEMORY

  ; Code: movzbl -0x2980(%rbp,%rcx,1), %edx	 RIP: 4010a6	 Bytes: 8
  %loadMem_4010a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a6 = call %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a6)
  store %struct.Memory* %call_4010a6, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4010ae	 Bytes: 2
  %loadMem_4010ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ae = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ae)
  store %struct.Memory* %call_4010ae, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 4010b0	 Bytes: 3
  %loadMem_4010b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b0 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b0)
  store %struct.Memory* %call_4010b0, %struct.Memory** %MEMORY

  ; Code: jae .L_40110c	 RIP: 4010b3	 Bytes: 6
  %loadMem_4010b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b3 = call %struct.Memory* @routine_jae_.L_40110c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b3, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4010b3, %struct.Memory** %MEMORY

  %loadBr_4010b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010b3 = icmp eq i8 %loadBr_4010b3, 1
  br i1 %cmpBr_4010b3, label %block_.L_40110c, label %block_4010b9

block_4010b9:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 4010b9	 Bytes: 4
  %loadMem_4010b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b9 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b9)
  store %struct.Memory* %call_4010b9, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 4010bd	 Bytes: 4
  %loadMem_4010bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bd = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bd)
  store %struct.Memory* %call_4010bd, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4010c1	 Bytes: 4
  %loadMem_4010c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c1 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c1)
  store %struct.Memory* %call_4010c1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 4010c5	 Bytes: 4
  %loadMem_4010c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c5 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c5)
  store %struct.Memory* %call_4010c5, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4010c9	 Bytes: 4
  %loadMem_4010c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c9)
  store %struct.Memory* %call_4010c9, %struct.Memory** %MEMORY

  ; Code: movq -0x2880(%rbp,%rax,8), %rax	 RIP: 4010cd	 Bytes: 8
  %loadMem_4010cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cd = call %struct.Memory* @routine_movq_MINUS0x2880__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cd)
  store %struct.Memory* %call_4010cd, %struct.Memory** %MEMORY

  ; Code: andq -0x48(%rbp), %rax	 RIP: 4010d5	 Bytes: 4
  %loadMem_4010d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d5 = call %struct.Memory* @routine_andq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d5)
  store %struct.Memory* %call_4010d5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4010d9	 Bytes: 4
  %loadMem_4010d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d9)
  store %struct.Memory* %call_4010d9, %struct.Memory** %MEMORY

  ; Code: je .L_4010ef	 RIP: 4010dd	 Bytes: 6
  %loadMem_4010dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010dd = call %struct.Memory* @routine_je_.L_4010ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010dd, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4010dd, %struct.Memory** %MEMORY

  %loadBr_4010dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010dd = icmp eq i8 %loadBr_4010dd, 1
  br i1 %cmpBr_4010dd, label %block_.L_4010ef, label %block_4010e3

block_4010e3:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 4010e3	 Bytes: 4
  %loadMem_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e3 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e3)
  store %struct.Memory* %call_4010e3, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4010e7	 Bytes: 4
  %loadMem_4010e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e7 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e7)
  store %struct.Memory* %call_4010e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 4010eb	 Bytes: 4
  %loadMem_4010eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010eb = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010eb)
  store %struct.Memory* %call_4010eb, %struct.Memory** %MEMORY

  ; Code: .L_4010ef:	 RIP: 4010ef	 Bytes: 0
  br label %block_.L_4010ef
block_.L_4010ef:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4010ef	 Bytes: 4
  %loadMem_4010ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ef = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ef)
  store %struct.Memory* %call_4010ef, %struct.Memory** %MEMORY

  ; Code: shrq $0x1, %rax	 RIP: 4010f3	 Bytes: 4
  %loadMem_4010f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f3 = call %struct.Memory* @routine_shrq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f3)
  store %struct.Memory* %call_4010f3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4010f7	 Bytes: 4
  %loadMem_4010f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f7 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f7)
  store %struct.Memory* %call_4010f7, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4010fb	 Bytes: 4
  %loadMem_4010fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fb = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fb)
  store %struct.Memory* %call_4010fb, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4010ff	 Bytes: 4
  %loadMem_4010ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ff = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ff)
  store %struct.Memory* %call_4010ff, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 401103	 Bytes: 4
  %loadMem_401103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401103 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401103)
  store %struct.Memory* %call_401103, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40109e	 RIP: 401107	 Bytes: 5
  %loadMem_401107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401107 = call %struct.Memory* @routine_jmpq_.L_40109e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401107, i64 -105, i64 5)
  store %struct.Memory* %call_401107, %struct.Memory** %MEMORY

  br label %block_.L_40109e

  ; Code: .L_40110c:	 RIP: 40110c	 Bytes: 0
block_.L_40110c:

  ; Code: movq -0x50(%rbp), %rax	 RIP: 40110c	 Bytes: 4
  %loadMem_40110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110c)
  store %struct.Memory* %call_40110c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401110	 Bytes: 4
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401110 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401110)
  store %struct.Memory* %call_401110, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x31c0(%rbp,%rcx,8)	 RIP: 401114	 Bytes: 8
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401114 = call %struct.Memory* @routine_movq__rax__MINUS0x31c0__rbp__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401114)
  store %struct.Memory* %call_401114, %struct.Memory** %MEMORY

  ; Code: .L_40111c:	 RIP: 40111c	 Bytes: 0
  br label %block_.L_40111c
block_.L_40111c:

  ; Code: jmpq .L_401121	 RIP: 40111c	 Bytes: 5
  %loadMem_40111c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111c = call %struct.Memory* @routine_jmpq_.L_401121(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111c, i64 5, i64 5)
  store %struct.Memory* %call_40111c, %struct.Memory** %MEMORY

  br label %block_.L_401121

  ; Code: .L_401121:	 RIP: 401121	 Bytes: 0
block_.L_401121:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401121	 Bytes: 4
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401121 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401121)
  store %struct.Memory* %call_401121, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 401125	 Bytes: 4
  %loadMem_401125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401125 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401125)
  store %struct.Memory* %call_401125, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 401129	 Bytes: 4
  %loadMem_401129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401129 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401129)
  store %struct.Memory* %call_401129, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401019	 RIP: 40112d	 Bytes: 5
  %loadMem_40112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112d = call %struct.Memory* @routine_jmpq_.L_401019(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112d, i64 -276, i64 5)
  store %struct.Memory* %call_40112d, %struct.Memory** %MEMORY

  br label %block_.L_401019

  ; Code: .L_401132:	 RIP: 401132	 Bytes: 0
block_.L_401132:

  ; Code: movq $0x1, -0x30(%rbp)	 RIP: 401132	 Bytes: 8
  %loadMem_401132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401132 = call %struct.Memory* @routine_movq__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401132)
  store %struct.Memory* %call_401132, %struct.Memory** %MEMORY

  ; Code: .L_40113a:	 RIP: 40113a	 Bytes: 0
  br label %block_.L_40113a
block_.L_40113a:

  ; Code: cmpq $0x100, -0x30(%rbp)	 RIP: 40113a	 Bytes: 8
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113a = call %struct.Memory* @routine_cmpq__0x100__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113a)
  store %struct.Memory* %call_40113a, %struct.Memory** %MEMORY

  ; Code: jae .L_401229	 RIP: 401142	 Bytes: 6
  %loadMem_401142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401142 = call %struct.Memory* @routine_jae_.L_401229(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401142, i8* %BRANCH_TAKEN, i64 231, i64 6, i64 6)
  store %struct.Memory* %call_401142, %struct.Memory** %MEMORY

  %loadBr_401142 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401142 = icmp eq i8 %loadBr_401142, 1
  br i1 %cmpBr_401142, label %block_.L_401229, label %block_401148

block_401148:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 401148	 Bytes: 4
  %loadMem_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401148 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401148)
  store %struct.Memory* %call_401148, %struct.Memory** %MEMORY

  ; Code: movq -0x31c0(%rbp,%rax,8), %rax	 RIP: 40114c	 Bytes: 8
  %loadMem_40114c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114c = call %struct.Memory* @routine_movq_MINUS0x31c0__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114c)
  store %struct.Memory* %call_40114c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 401154	 Bytes: 4
  %loadMem_401154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401154 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401154)
  store %struct.Memory* %call_401154, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 401158	 Bytes: 4
  %loadMem_401158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401158 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401158)
  store %struct.Memory* %call_401158, %struct.Memory** %MEMORY

  ; Code: movb -0x32c0(%rbp,%rax,1), %cl	 RIP: 40115c	 Bytes: 7
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115c = call %struct.Memory* @routine_movb_MINUS0x32c0__rbp__rax_1____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115c)
  store %struct.Memory* %call_40115c, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x59(%rbp)	 RIP: 401163	 Bytes: 3
  %loadMem_401163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401163 = call %struct.Memory* @routine_movb__cl__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401163)
  store %struct.Memory* %call_401163, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 401166	 Bytes: 4
  %loadMem_401166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401166 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401166)
  store %struct.Memory* %call_401166, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 40116a	 Bytes: 4
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116a = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116a)
  store %struct.Memory* %call_40116a, %struct.Memory** %MEMORY

  ; Code: .L_40116e:	 RIP: 40116e	 Bytes: 0
  br label %block_.L_40116e
block_.L_40116e:

  ; Code: xorl %eax, %eax	 RIP: 40116e	 Bytes: 2
  %loadMem_40116e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116e)
  store %struct.Memory* %call_40116e, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 401170	 Bytes: 2
  %loadMem_401170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401170 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401170)
  store %struct.Memory* %call_401170, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 401172	 Bytes: 5
  %loadMem_401172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401172 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401172)
  store %struct.Memory* %call_401172, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x3329(%rbp)	 RIP: 401177	 Bytes: 6
  %loadMem_401177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401177 = call %struct.Memory* @routine_movb__cl__MINUS0x3329__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401177)
  store %struct.Memory* %call_401177, %struct.Memory** %MEMORY

  ; Code: je .L_4011a0	 RIP: 40117d	 Bytes: 6
  %loadMem_40117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117d = call %struct.Memory* @routine_je_.L_4011a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117d, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_40117d, %struct.Memory** %MEMORY

  %loadBr_40117d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40117d = icmp eq i8 %loadBr_40117d, 1
  br i1 %cmpBr_40117d, label %block_.L_4011a0, label %block_401183

block_401183:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 401183	 Bytes: 4
  %loadMem_401183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401183 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401183)
  store %struct.Memory* %call_401183, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rax	 RIP: 401187	 Bytes: 4
  %loadMem_401187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401187 = call %struct.Memory* @routine_subq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401187)
  store %struct.Memory* %call_401187, %struct.Memory** %MEMORY

  ; Code: movq -0x31c0(%rbp,%rax,8), %rax	 RIP: 40118b	 Bytes: 8
  %loadMem_40118b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118b = call %struct.Memory* @routine_movq_MINUS0x31c0__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118b)
  store %struct.Memory* %call_40118b, %struct.Memory** %MEMORY

  ; Code: cmpq -0x58(%rbp), %rax	 RIP: 401193	 Bytes: 4
  %loadMem_401193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401193 = call %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401193)
  store %struct.Memory* %call_401193, %struct.Memory** %MEMORY

  ; Code: seta %cl	 RIP: 401197	 Bytes: 3
  %loadMem_401197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401197 = call %struct.Memory* @routine_seta__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401197)
  store %struct.Memory* %call_401197, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x3329(%rbp)	 RIP: 40119a	 Bytes: 6
  %loadMem_40119a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119a = call %struct.Memory* @routine_movb__cl__MINUS0x3329__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119a)
  store %struct.Memory* %call_40119a, %struct.Memory** %MEMORY

  ; Code: .L_4011a0:	 RIP: 4011a0	 Bytes: 0
  br label %block_.L_4011a0
block_.L_4011a0:

  ; Code: movb -0x3329(%rbp), %al	 RIP: 4011a0	 Bytes: 6
  %loadMem_4011a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a0 = call %struct.Memory* @routine_movb_MINUS0x3329__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a0)
  store %struct.Memory* %call_4011a0, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4011a6	 Bytes: 2
  %loadMem_4011a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a6 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a6)
  store %struct.Memory* %call_4011a6, %struct.Memory** %MEMORY

  ; Code: jne .L_4011b3	 RIP: 4011a8	 Bytes: 6
  %loadMem_4011a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a8 = call %struct.Memory* @routine_jne_.L_4011b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4011a8, %struct.Memory** %MEMORY

  %loadBr_4011a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011a8 = icmp eq i8 %loadBr_4011a8, 1
  br i1 %cmpBr_4011a8, label %block_.L_4011b3, label %block_4011ae

block_4011ae:
  ; Code: jmpq .L_4011fa	 RIP: 4011ae	 Bytes: 5
  %loadMem_4011ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ae = call %struct.Memory* @routine_jmpq_.L_4011fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ae, i64 76, i64 5)
  store %struct.Memory* %call_4011ae, %struct.Memory** %MEMORY

  br label %block_.L_4011fa

  ; Code: .L_4011b3:	 RIP: 4011b3	 Bytes: 0
block_.L_4011b3:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4011b3	 Bytes: 4
  %loadMem_4011b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b3 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b3)
  store %struct.Memory* %call_4011b3, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rax	 RIP: 4011b7	 Bytes: 4
  %loadMem_4011b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b7 = call %struct.Memory* @routine_subq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b7)
  store %struct.Memory* %call_4011b7, %struct.Memory** %MEMORY

  ; Code: movq -0x31c0(%rbp,%rax,8), %rax	 RIP: 4011bb	 Bytes: 8
  %loadMem_4011bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011bb = call %struct.Memory* @routine_movq_MINUS0x31c0__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011bb)
  store %struct.Memory* %call_4011bb, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4011c3	 Bytes: 4
  %loadMem_4011c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c3 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c3)
  store %struct.Memory* %call_4011c3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x31c0(%rbp,%rcx,8)	 RIP: 4011c7	 Bytes: 8
  %loadMem_4011c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c7 = call %struct.Memory* @routine_movq__rax__MINUS0x31c0__rbp__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c7)
  store %struct.Memory* %call_4011c7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4011cf	 Bytes: 4
  %loadMem_4011cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011cf = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011cf)
  store %struct.Memory* %call_4011cf, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rax	 RIP: 4011d3	 Bytes: 4
  %loadMem_4011d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d3 = call %struct.Memory* @routine_subq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d3)
  store %struct.Memory* %call_4011d3, %struct.Memory** %MEMORY

  ; Code: movb -0x32c0(%rbp,%rax,1), %dl	 RIP: 4011d7	 Bytes: 7
  %loadMem_4011d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d7 = call %struct.Memory* @routine_movb_MINUS0x32c0__rbp__rax_1____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d7)
  store %struct.Memory* %call_4011d7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4011de	 Bytes: 4
  %loadMem_4011de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011de = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011de)
  store %struct.Memory* %call_4011de, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x32c0(%rbp,%rax,1)	 RIP: 4011e2	 Bytes: 7
  %loadMem_4011e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e2 = call %struct.Memory* @routine_movb__dl__MINUS0x32c0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e2)
  store %struct.Memory* %call_4011e2, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4011e9	 Bytes: 4
  %loadMem_4011e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e9)
  store %struct.Memory* %call_4011e9, %struct.Memory** %MEMORY

  ; Code: addq $0xffffffff, %rax	 RIP: 4011ed	 Bytes: 4
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ed = call %struct.Memory* @routine_addq__0xffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ed)
  store %struct.Memory* %call_4011ed, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 4011f1	 Bytes: 4
  %loadMem_4011f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f1 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f1)
  store %struct.Memory* %call_4011f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40116e	 RIP: 4011f5	 Bytes: 5
  %loadMem_4011f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f5 = call %struct.Memory* @routine_jmpq_.L_40116e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f5, i64 -135, i64 5)
  store %struct.Memory* %call_4011f5, %struct.Memory** %MEMORY

  br label %block_.L_40116e

  ; Code: .L_4011fa:	 RIP: 4011fa	 Bytes: 0
block_.L_4011fa:

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4011fa	 Bytes: 4
  %loadMem_4011fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fa = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fa)
  store %struct.Memory* %call_4011fa, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4011fe	 Bytes: 4
  %loadMem_4011fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fe = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fe)
  store %struct.Memory* %call_4011fe, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x31c0(%rbp,%rcx,8)	 RIP: 401202	 Bytes: 8
  %loadMem_401202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401202 = call %struct.Memory* @routine_movq__rax__MINUS0x31c0__rbp__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401202)
  store %struct.Memory* %call_401202, %struct.Memory** %MEMORY

  ; Code: movb -0x59(%rbp), %dl	 RIP: 40120a	 Bytes: 3
  %loadMem_40120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120a = call %struct.Memory* @routine_movb_MINUS0x59__rbp____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120a)
  store %struct.Memory* %call_40120a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40120d	 Bytes: 4
  %loadMem_40120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120d)
  store %struct.Memory* %call_40120d, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x32c0(%rbp,%rax,1)	 RIP: 401211	 Bytes: 7
  %loadMem_401211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401211 = call %struct.Memory* @routine_movb__dl__MINUS0x32c0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401211)
  store %struct.Memory* %call_401211, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 401218	 Bytes: 4
  %loadMem_401218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401218 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401218)
  store %struct.Memory* %call_401218, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40121c	 Bytes: 4
  %loadMem_40121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121c = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121c)
  store %struct.Memory* %call_40121c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 401220	 Bytes: 4
  %loadMem_401220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401220 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401220)
  store %struct.Memory* %call_401220, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40113a	 RIP: 401224	 Bytes: 5
  %loadMem_401224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401224 = call %struct.Memory* @routine_jmpq_.L_40113a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401224, i64 -234, i64 5)
  store %struct.Memory* %call_401224, %struct.Memory** %MEMORY

  br label %block_.L_40113a

  ; Code: .L_401229:	 RIP: 401229	 Bytes: 0
block_.L_401229:

  ; Code: movq $0x0, -0x38(%rbp)	 RIP: 401229	 Bytes: 8
  %loadMem_401229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401229 = call %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401229)
  store %struct.Memory* %call_401229, %struct.Memory** %MEMORY

  ; Code: .L_401231:	 RIP: 401231	 Bytes: 0
  br label %block_.L_401231
block_.L_401231:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401231	 Bytes: 4
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401231 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401231)
  store %struct.Memory* %call_401231, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x31c0(%rbp,%rax,8)	 RIP: 401235	 Bytes: 9
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401235 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x31c0__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401235)
  store %struct.Memory* %call_401235, %struct.Memory** %MEMORY

  ; Code: jne .L_40125a	 RIP: 40123e	 Bytes: 6
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123e = call %struct.Memory* @routine_jne_.L_40125a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123e, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40123e, %struct.Memory** %MEMORY

  %loadBr_40123e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40123e = icmp eq i8 %loadBr_40123e, 1
  br i1 %cmpBr_40123e, label %block_.L_40125a, label %block_401244

block_401244:
  ; Code: jmpq .L_401249	 RIP: 401244	 Bytes: 5
  %loadMem_401244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401244 = call %struct.Memory* @routine_jmpq_.L_401249(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401244, i64 5, i64 5)
  store %struct.Memory* %call_401244, %struct.Memory** %MEMORY

  br label %block_.L_401249

  ; Code: .L_401249:	 RIP: 401249	 Bytes: 0
block_.L_401249:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401249	 Bytes: 4
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401249 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401249)
  store %struct.Memory* %call_401249, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40124d	 Bytes: 4
  %loadMem_40124d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124d = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124d)
  store %struct.Memory* %call_40124d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 401251	 Bytes: 4
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401251 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401251)
  store %struct.Memory* %call_401251, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401231	 RIP: 401255	 Bytes: 5
  %loadMem_401255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401255 = call %struct.Memory* @routine_jmpq_.L_401231(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401255, i64 -36, i64 5)
  store %struct.Memory* %call_401255, %struct.Memory** %MEMORY

  br label %block_.L_401231

  ; Code: .L_40125a:	 RIP: 40125a	 Bytes: 0
block_.L_40125a:

  ; Code: movq $0x0, -0x50(%rbp)	 RIP: 40125a	 Bytes: 8
  %loadMem_40125a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125a = call %struct.Memory* @routine_movq__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125a)
  store %struct.Memory* %call_40125a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401262	 Bytes: 4
  %loadMem_401262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401262 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401262)
  store %struct.Memory* %call_401262, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 401266	 Bytes: 4
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401266 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401266)
  store %struct.Memory* %call_401266, %struct.Memory** %MEMORY

  ; Code: movq $0x80, -0x48(%rbp)	 RIP: 40126a	 Bytes: 8
  %loadMem_40126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126a = call %struct.Memory* @routine_movq__0x80__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126a)
  store %struct.Memory* %call_40126a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x40(%rbp)	 RIP: 401272	 Bytes: 8
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401272 = call %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401272)
  store %struct.Memory* %call_401272, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 40127a	 Bytes: 4
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127a = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127a)
  store %struct.Memory* %call_40127a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 40127e	 Bytes: 4
  %loadMem_40127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127e = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127e)
  store %struct.Memory* %call_40127e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 401282	 Bytes: 4
  %loadMem_401282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401282 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401282)
  store %struct.Memory* %call_401282, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 401286	 Bytes: 4
  %loadMem_401286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401286 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401286)
  store %struct.Memory* %call_401286, %struct.Memory** %MEMORY

  ; Code: .L_40128a:	 RIP: 40128a	 Bytes: 0
  br label %block_.L_40128a
block_.L_40128a:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40128a	 Bytes: 4
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128a)
  store %struct.Memory* %call_40128a, %struct.Memory** %MEMORY

  ; Code: cmpq -0x28(%rbp), %rax	 RIP: 40128e	 Bytes: 4
  %loadMem_40128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128e = call %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128e)
  store %struct.Memory* %call_40128e, %struct.Memory** %MEMORY

  ; Code: jae .L_40137b	 RIP: 401292	 Bytes: 6
  %loadMem_401292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401292 = call %struct.Memory* @routine_jae_.L_40137b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401292, i8* %BRANCH_TAKEN, i64 233, i64 6, i64 6)
  store %struct.Memory* %call_401292, %struct.Memory** %MEMORY

  %loadBr_401292 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401292 = icmp eq i8 %loadBr_401292, 1
  br i1 %cmpBr_401292, label %block_.L_40137b, label %block_401298

block_401298:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 401298	 Bytes: 4
  %loadMem_401298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401298 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401298)
  store %struct.Memory* %call_401298, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 40129c	 Bytes: 4
  %loadMem_40129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129c = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129c)
  store %struct.Memory* %call_40129c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4012a0	 Bytes: 4
  %loadMem_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a0 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a0)
  store %struct.Memory* %call_4012a0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 4012a4	 Bytes: 4
  %loadMem_4012a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a4 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a4)
  store %struct.Memory* %call_4012a4, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4012a8	 Bytes: 4
  %loadMem_4012a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a8 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a8)
  store %struct.Memory* %call_4012a8, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 4012ac	 Bytes: 3
  %loadMem_4012ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ac = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ac)
  store %struct.Memory* %call_4012ac, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4012af	 Bytes: 2
  %loadMem_4012af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012af = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012af)
  store %struct.Memory* %call_4012af, %struct.Memory** %MEMORY

  ; Code: andq -0x48(%rbp), %rax	 RIP: 4012b1	 Bytes: 4
  %loadMem_4012b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b1 = call %struct.Memory* @routine_andq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b1)
  store %struct.Memory* %call_4012b1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4012b5	 Bytes: 4
  %loadMem_4012b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b5)
  store %struct.Memory* %call_4012b5, %struct.Memory** %MEMORY

  ; Code: je .L_4012cb	 RIP: 4012b9	 Bytes: 6
  %loadMem_4012b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b9 = call %struct.Memory* @routine_je_.L_4012cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b9, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4012b9, %struct.Memory** %MEMORY

  %loadBr_4012b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012b9 = icmp eq i8 %loadBr_4012b9, 1
  br i1 %cmpBr_4012b9, label %block_.L_4012cb, label %block_4012bf

block_4012bf:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 4012bf	 Bytes: 4
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bf = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bf)
  store %struct.Memory* %call_4012bf, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4012c3	 Bytes: 4
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c3 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c3)
  store %struct.Memory* %call_4012c3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 4012c7	 Bytes: 4
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c7 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c7)
  store %struct.Memory* %call_4012c7, %struct.Memory** %MEMORY

  ; Code: .L_4012cb:	 RIP: 4012cb	 Bytes: 0
  br label %block_.L_4012cb
block_.L_4012cb:

  ; Code: jmpq .L_4012d0	 RIP: 4012cb	 Bytes: 5
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_jmpq_.L_4012d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb, i64 5, i64 5)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  br label %block_.L_4012d0

  ; Code: .L_4012d0:	 RIP: 4012d0	 Bytes: 0
block_.L_4012d0:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4012d0	 Bytes: 4
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d0 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d0)
  store %struct.Memory* %call_4012d0, %struct.Memory** %MEMORY

  ; Code: movq -0x31c0(%rbp,%rax,8), %rax	 RIP: 4012d4	 Bytes: 8
  %loadMem_4012d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d4 = call %struct.Memory* @routine_movq_MINUS0x31c0__rbp__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d4)
  store %struct.Memory* %call_4012d4, %struct.Memory** %MEMORY

  ; Code: cmpq -0x50(%rbp), %rax	 RIP: 4012dc	 Bytes: 4
  %loadMem_4012dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012dc = call %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012dc)
  store %struct.Memory* %call_4012dc, %struct.Memory** %MEMORY

  ; Code: jae .L_4012f7	 RIP: 4012e0	 Bytes: 6
  %loadMem_4012e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e0 = call %struct.Memory* @routine_jae_.L_4012f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e0, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4012e0, %struct.Memory** %MEMORY

  %loadBr_4012e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012e0 = icmp eq i8 %loadBr_4012e0, 1
  br i1 %cmpBr_4012e0, label %block_.L_4012f7, label %block_4012e6

block_4012e6:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 4012e6	 Bytes: 4
  %loadMem_4012e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e6 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e6)
  store %struct.Memory* %call_4012e6, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4012ea	 Bytes: 4
  %loadMem_4012ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ea = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ea)
  store %struct.Memory* %call_4012ea, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 4012ee	 Bytes: 4
  %loadMem_4012ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ee = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ee)
  store %struct.Memory* %call_4012ee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4012d0	 RIP: 4012f2	 Bytes: 5
  %loadMem_4012f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f2 = call %struct.Memory* @routine_jmpq_.L_4012d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f2, i64 -34, i64 5)
  store %struct.Memory* %call_4012f2, %struct.Memory** %MEMORY

  br label %block_.L_4012d0

  ; Code: .L_4012f7:	 RIP: 4012f7	 Bytes: 0
block_.L_4012f7:

  ; Code: movq -0x50(%rbp), %rax	 RIP: 4012f7	 Bytes: 4
  %loadMem_4012f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f7 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f7)
  store %struct.Memory* %call_4012f7, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 4012fb	 Bytes: 4
  %loadMem_4012fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fb = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fb)
  store %struct.Memory* %call_4012fb, %struct.Memory** %MEMORY

  ; Code: cmpq -0x31c0(%rbp,%rcx,8), %rax	 RIP: 4012ff	 Bytes: 8
  %loadMem_4012ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ff = call %struct.Memory* @routine_cmpq_MINUS0x31c0__rbp__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ff)
  store %struct.Memory* %call_4012ff, %struct.Memory** %MEMORY

  ; Code: jne .L_401346	 RIP: 401307	 Bytes: 6
  %loadMem_401307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401307 = call %struct.Memory* @routine_jne_.L_401346(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401307, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_401307, %struct.Memory** %MEMORY

  %loadBr_401307 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401307 = icmp eq i8 %loadBr_401307, 1
  br i1 %cmpBr_401307, label %block_.L_401346, label %block_40130d

block_40130d:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 40130d	 Bytes: 4
  %loadMem_40130d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130d)
  store %struct.Memory* %call_40130d, %struct.Memory** %MEMORY

  ; Code: movb -0x32c0(%rbp,%rax,1), %cl	 RIP: 401311	 Bytes: 7
  %loadMem_401311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401311 = call %struct.Memory* @routine_movb_MINUS0x32c0__rbp__rax_1____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401311)
  store %struct.Memory* %call_401311, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401318	 Bytes: 4
  %loadMem_401318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401318 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401318)
  store %struct.Memory* %call_401318, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax)	 RIP: 40131c	 Bytes: 2
  %loadMem_40131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131c = call %struct.Memory* @routine_movb__cl____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131c)
  store %struct.Memory* %call_40131c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40131e	 Bytes: 4
  %loadMem_40131e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131e = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131e)
  store %struct.Memory* %call_40131e, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 401322	 Bytes: 4
  %loadMem_401322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401322 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401322)
  store %struct.Memory* %call_401322, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 401326	 Bytes: 4
  %loadMem_401326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401326 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401326)
  store %struct.Memory* %call_401326, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 40132a	 Bytes: 4
  %loadMem_40132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132a)
  store %struct.Memory* %call_40132a, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40132e	 Bytes: 4
  %loadMem_40132e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132e = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132e)
  store %struct.Memory* %call_40132e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 401332	 Bytes: 4
  %loadMem_401332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401332 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401332)
  store %struct.Memory* %call_401332, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x50(%rbp)	 RIP: 401336	 Bytes: 8
  %loadMem_401336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401336 = call %struct.Memory* @routine_movq__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401336)
  store %struct.Memory* %call_401336, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 40133e	 Bytes: 4
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133e)
  store %struct.Memory* %call_40133e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 401342	 Bytes: 4
  %loadMem_401342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401342 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401342)
  store %struct.Memory* %call_401342, %struct.Memory** %MEMORY

  ; Code: .L_401346:	 RIP: 401346	 Bytes: 0
  br label %block_.L_401346
block_.L_401346:

  ; Code: cmpq $0x1, -0x48(%rbp)	 RIP: 401346	 Bytes: 5
  %loadMem_401346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401346 = call %struct.Memory* @routine_cmpq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401346)
  store %struct.Memory* %call_401346, %struct.Memory** %MEMORY

  ; Code: jbe .L_401362	 RIP: 40134b	 Bytes: 6
  %loadMem_40134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134b = call %struct.Memory* @routine_jbe_.L_401362(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134b, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_40134b, %struct.Memory** %MEMORY

  %loadBr_40134b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40134b = icmp eq i8 %loadBr_40134b, 1
  br i1 %cmpBr_40134b, label %block_.L_401362, label %block_401351

block_401351:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 401351	 Bytes: 4
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401351 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401351)
  store %struct.Memory* %call_401351, %struct.Memory** %MEMORY

  ; Code: shrq $0x1, %rax	 RIP: 401355	 Bytes: 4
  %loadMem_401355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401355 = call %struct.Memory* @routine_shrq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401355)
  store %struct.Memory* %call_401355, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 401359	 Bytes: 4
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401359 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401359)
  store %struct.Memory* %call_401359, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401376	 RIP: 40135d	 Bytes: 5
  %loadMem_40135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135d = call %struct.Memory* @routine_jmpq_.L_401376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135d, i64 25, i64 5)
  store %struct.Memory* %call_40135d, %struct.Memory** %MEMORY

  br label %block_.L_401376

  ; Code: .L_401362:	 RIP: 401362	 Bytes: 0
block_.L_401362:

  ; Code: movq $0x80, -0x48(%rbp)	 RIP: 401362	 Bytes: 8
  %loadMem_401362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401362 = call %struct.Memory* @routine_movq__0x80__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401362)
  store %struct.Memory* %call_401362, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40136a	 Bytes: 4
  %loadMem_40136a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136a)
  store %struct.Memory* %call_40136a, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40136e	 Bytes: 4
  %loadMem_40136e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136e = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136e)
  store %struct.Memory* %call_40136e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 401372	 Bytes: 4
  %loadMem_401372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401372 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401372)
  store %struct.Memory* %call_401372, %struct.Memory** %MEMORY

  ; Code: .L_401376:	 RIP: 401376	 Bytes: 0
  br label %block_.L_401376
block_.L_401376:

  ; Code: jmpq .L_40128a	 RIP: 401376	 Bytes: 5
  %loadMem_401376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401376 = call %struct.Memory* @routine_jmpq_.L_40128a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401376, i64 -236, i64 5)
  store %struct.Memory* %call_401376, %struct.Memory** %MEMORY

  br label %block_.L_40128a

  ; Code: .L_40137b:	 RIP: 40137b	 Bytes: 0
block_.L_40137b:

  ; Code: movq -0x78(%rbp), %rdi	 RIP: 40137b	 Bytes: 4
  %loadMem_40137b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137b = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137b)
  store %struct.Memory* %call_40137b, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 40137f	 Bytes: 5
  %loadMem1_40137f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40137f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40137f, i64 -3471, i64 5, i64 5)
  store %struct.Memory* %call1_40137f, %struct.Memory** %MEMORY

  %loadMem2_40137f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40137f = load i64, i64* %3
  %call2_40137f = call %struct.Memory* @sub_4005f0.free_plt(%struct.State* %0, i64  %loadPC_40137f, %struct.Memory* %loadMem2_40137f)
  store %struct.Memory* %call2_40137f, %struct.Memory** %MEMORY

  ; Code: addq $0x3318, %rsp	 RIP: 401384	 Bytes: 7
  %loadMem_401384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401384 = call %struct.Memory* @routine_addq__0x3318___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401384)
  store %struct.Memory* %call_401384, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 40138b	 Bytes: 1
  %loadMem_40138b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138b = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138b)
  store %struct.Memory* %call_40138b, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 40138c	 Bytes: 2
  %loadMem_40138c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138c = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138c)
  store %struct.Memory* %call_40138c, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 40138e	 Bytes: 2
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138e = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138e)
  store %struct.Memory* %call_40138e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 401390	 Bytes: 1
  %loadMem_401390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401390 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401390)
  store %struct.Memory* %call_401390, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 401391	 Bytes: 1
  %loadMem_401391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401391 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401391)
  store %struct.Memory* %call_401391, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_401391
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

define %struct.Memory* @routine_subq__0x3318___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 13080)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_addq__0x1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
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

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x100___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 256)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x2980__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10624
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x800___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 2048)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r8d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2880__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2080__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x1880__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1000___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 4096)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d___ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x1080__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x1___r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %12 [
    i6 0, label %41
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 1
  %9 = icmp slt i64 %3, 0
  %10 = icmp slt i64 %8, 0
  %11 = xor i1 %9, %10
  br label %19

; <label>:12:                                     ; preds = %5
  %13 = and i64 %4, 63
  %14 = add  i64 %13, -1
  %15 = shl i64 %3, %14
  %16 = icmp slt i64 %15, 0
  %17 = icmp ne i8 0, 0
  %18 = shl i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %12, %7
  %20 = phi i1 [ %9, %7 ], [ %16, %12 ]
  %21 = phi i1 [ %11, %7 ], [ %17, %12 ]
  %22 = phi i64 [ %8, %7 ], [ %18, %12 ]
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %24 = zext i1 %20 to i8
  store i8 %24, i8* %23, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %26 = trunc i64 %22 to i32
  %27 = and i32 %26, 254
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #22
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %25, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %34 = icmp eq i64 %22, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %37 = lshr i64 %22, 63
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %40 = zext i1 %21 to i8
  store i8 %40, i8* %39, align 1
  br label %41

; <label>:41:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shlq__0x0___r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi__MINUS0x32d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13008
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rsi__MINUS0x32d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13016
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x32e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13024
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R15
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r14__MINUS0x32e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13032
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x32ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 13036
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r10__MINUS0x32f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13048
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__MINUS0x3300__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13056
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0x3308__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13064
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x3310__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13072
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x32e8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x32ec__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13036
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x3308__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x3300__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x32d8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x32f8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13048
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x3310__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13072
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x32d0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x32e0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %2, %6
  %8 = icmp ugt i64 %6, %2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %2
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %2, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_400a44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x1080__rbp__rax_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -4224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 8
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addq__0x1___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdx__MINUS0x1080__rbp__rax_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -4224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4009fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %6, %3
  %8 = icmp ult i64 %6, %3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %6, 63
  %31 = lshr i64 %3, 63
  %32 = xor i64 %30, %31
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x100__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 256)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_400aa7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpq__0x0__MINUS0x1080__rbp__rax_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -4224
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 9
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_je_.L_400a91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x1880__rbp__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -6272
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_400a96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400a54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jbe_.L_400af8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_leaq_MINUS0x1880__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x3314__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13076
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3314__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13076
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.heap_adjust(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_400aaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400afd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpq__0x1__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jbe_.L_400bf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq_MINUS0x1880__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x2988__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10632
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x1880__rbp__rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -6272
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq__rax__MINUS0x1880__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6272
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}













define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0xffffffffffffff00___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -256)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x1880__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 6272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x1080__rbp__r8_8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -4224
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq_MINUS0x2988__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = add i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = icmp ult i64 %8, %3
  %10 = icmp ult i64 %8, %7
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %8 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %7, %3
  %22 = xor i64 %21, %8
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %8, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %7, 63
  %35 = xor i64 %30, %33
  %36 = xor i64 %30, %34
  %37 = add   i64 %35, %36
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq_MINUS0x1080__rbp__r9_8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %R9
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -4224
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x100___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %9, i64 256)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__r8__MINUS0x1080__rbp__r9_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -4224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %R8
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x100___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 256)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x2988__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x2080__rbp__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -8320
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 8
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = sub i64 %3, %7
  store i64 %8, i64* %2, align 8
  %9 = icmp ugt i64 %7, %3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %8 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %7, %3
  %20 = xor i64 %19, %8
  %21 = lshr i64 %20, 4
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %8, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %3, 63
  %32 = lshr i64 %7, 63
  %33 = xor i64 %32, %31
  %34 = xor i64 %28, %31
  %35 = add   i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__edx__MINUS0x2080__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -8320
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_addq__0x100___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 256)
  ret %struct.Memory* %12
}















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2080__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -8320
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq__0x0__MINUS0x29a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10656
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x0__MINUS0x29a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10664
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x0__MINUS0x2990__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpq__0x100__MINUS0x2990__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 256)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_400d97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x2990__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jne_.L_400c74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__0x0__MINUS0x2880__rbp__rax_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -10368
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 12
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0__MINUS0x2980__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -10624
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400d7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq__0x1__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x0__MINUS0x2998__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10648
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x2080__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -8320
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x29ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 10668
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x29ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10668
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_400d0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_jge_.L_400cdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_xorl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq_MINUS0x2998__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10648
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x2998__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10648
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = sub i32 %6, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %6, %8
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #22
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %8, %6
  %21 = xor i32 %20, %9
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %9, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %8, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl_MINUS0x29ac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x29ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10668
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x29ac__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_400ca3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x2998__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x2990__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x2880__rbp__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -10368
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl__MINUS0x2980__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -10624
  %19 = add i64 %18, %17
  %20 = load i8, i8* %DL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_cmpq_MINUS0x29a0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10656
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jbe_.L_400d5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__rax__MINUS0x29a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10656
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq_MINUS0x29a8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jbe_.L_400d76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__rax__MINUS0x29a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10664
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_400d80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__rax__MINUS0x2990__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10640
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_400c26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpq__0x40__MINUS0x29a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10664
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 64)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jbe_.L_400dce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x401675___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4200053)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x6020a0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 6299808)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3318__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13080
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.exit_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x0__MINUS0x29b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10680
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__0x0__MINUS0x29b9__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10681
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x29c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10688
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpq__0x0__MINUS0x29a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10656
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_400e29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x40168f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4200079)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x331c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13084
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jae_.L_400f9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -10624
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_subl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_shll__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jae_.L_400f7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x7__MINUS0x29c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10688
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_400f0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x29b9__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10681
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x29b8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__al____rcx__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %AL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x29b8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x1___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__MINUS0x29b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10680
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_400ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x4016b0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4200112)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x3320__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13088
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x0__MINUS0x29c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 10688
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_400f2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x29c0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x29c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x29b9__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10681
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x29b9__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10681
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_movq_MINUS0x2880__rbp__rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -10368
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = and i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i64 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %8, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_400f60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %10 [
    i6 0, label %37
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = lshr i64 %3, 63
  %9 = trunc i64 %8 to i8
  br label %16

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 63
  %12 = add  i64 %11, -1
  %13 = lshr i64 %3, %12
  %14 = icmp ne i8 0, 0
  %15 = zext i1 %14 to i8
  br label %16

; <label>:16:                                     ; preds = %10, %7
  %17 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %18 = phi i64 [ %13, %10 ], [ %3, %7 ]
  %19 = phi i8 [ %15, %10 ], [ %9, %7 ]
  %20 = trunc i64 %18 to i8
  %21 = and i8 %20, 1
  %22 = lshr i64 %18, 1
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %21, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %25 = trunc i64 %22 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #22
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %24, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %17, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %33 = icmp eq i64 %22, 0
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %19, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %16, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shrq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_jmpq_.L_400e6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_400e31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x32c0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorl__esi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x800___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2048)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_leaq_MINUS0x31c0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12736
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x7___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 7)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x29c0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10688
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsbl_MINUS0x29b9__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 10681
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_shll__cl___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R8D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R8D to i64*
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i8, i8* %CL
  %17 = zext i8 %16 to i64
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 3
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %13, i64 %15, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_movb__r8b___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %R8B
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movb_MINUS0x29b9__rbp____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 10681
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x29b8__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl____r9__r10_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 19
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R9 = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 21
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %R10 = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %R9
  %17 = load i64, i64* %R10
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movq_MINUS0x29b8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x1___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__r9__MINUS0x29b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 10680
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x3328__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13096
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x3328__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13096
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x32c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13000
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq__0x100__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 256)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_401132(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_MINUS0x32c8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 13000
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_MINUS0x2980__rbp__rdx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = add i64 %15, -10624
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %6, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_orq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_40111c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




























define %struct.Memory* @routine_jae_.L_40110c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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










define %struct.Memory* @routine_je_.L_4010ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jmpq_.L_40109e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__rax__MINUS0x31c0__rbp__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -12736
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_401121(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_401019(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jae_.L_401229(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_MINUS0x31c0__rbp__rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -12736
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
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




define %struct.Memory* @routine_movb_MINUS0x32c0__rbp__rax_1____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -12992
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movb__cl__MINUS0x59__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 89
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0x3329__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 13097
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4011a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_subq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6SETNBEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_seta__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6SETNBEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movb_MINUS0x3329__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 13097
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %6, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_4011b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4011fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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



















