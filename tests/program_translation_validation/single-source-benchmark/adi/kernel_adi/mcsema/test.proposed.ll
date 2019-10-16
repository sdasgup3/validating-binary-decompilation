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


; Data Access Globals


define %struct.Memory* @kernel_adi(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_adi:	 RIP: 400bb0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400bb0	 Bytes: 1
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb0)
  store %struct.Memory* %call_400bb0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400bb1	 Bytes: 3
  %loadMem_400bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb1)
  store %struct.Memory* %call_400bb1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 400bb4	 Bytes: 3
  %loadMem_400bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb4 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb4)
  store %struct.Memory* %call_400bb4, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 400bb7	 Bytes: 3
  %loadMem_400bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb7 = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb7)
  store %struct.Memory* %call_400bb7, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x10(%rbp)	 RIP: 400bba	 Bytes: 4
  %loadMem_400bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bba = call %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bba)
  store %struct.Memory* %call_400bba, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x18(%rbp)	 RIP: 400bbe	 Bytes: 4
  %loadMem_400bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbe = call %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbe)
  store %struct.Memory* %call_400bbe, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x20(%rbp)	 RIP: 400bc2	 Bytes: 4
  %loadMem_400bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc2 = call %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc2)
  store %struct.Memory* %call_400bc2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 400bc6	 Bytes: 7
  %loadMem_400bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc6 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc6)
  store %struct.Memory* %call_400bc6, %struct.Memory** %MEMORY

  ; Code: .L_400bcd:	 RIP: 400bcd	 Bytes: 0
  br label %block_.L_400bcd
block_.L_400bcd:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 400bcd	 Bytes: 3
  %loadMem_400bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bcd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bcd)
  store %struct.Memory* %call_400bcd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 400bd0	 Bytes: 3
  %loadMem_400bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd0 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd0)
  store %struct.Memory* %call_400bd0, %struct.Memory** %MEMORY

  ; Code: jge .L_40115b	 RIP: 400bd3	 Bytes: 6
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd3 = call %struct.Memory* @routine_jge_.L_40115b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd3, i8* %BRANCH_TAKEN, i64 1416, i64 6, i64 6)
  store %struct.Memory* %call_400bd3, %struct.Memory** %MEMORY

  %loadBr_400bd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bd3 = icmp eq i8 %loadBr_400bd3, 1
  br i1 %cmpBr_400bd3, label %block_.L_40115b, label %block_400bd9

block_400bd9:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 400bd9	 Bytes: 7
  %loadMem_400bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd9 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd9)
  store %struct.Memory* %call_400bd9, %struct.Memory** %MEMORY

  ; Code: .L_400be0:	 RIP: 400be0	 Bytes: 0
  br label %block_.L_400be0
block_.L_400be0:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400be0	 Bytes: 3
  %loadMem_400be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be0 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be0)
  store %struct.Memory* %call_400be0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400be3	 Bytes: 3
  %loadMem_400be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be3 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be3)
  store %struct.Memory* %call_400be3, %struct.Memory** %MEMORY

  ; Code: jge .L_400d27	 RIP: 400be6	 Bytes: 6
  %loadMem_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be6 = call %struct.Memory* @routine_jge_.L_400d27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be6, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_400be6, %struct.Memory** %MEMORY

  %loadBr_400be6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400be6 = icmp eq i8 %loadBr_400be6, 1
  br i1 %cmpBr_400be6, label %block_.L_400d27, label %block_400bec

block_400bec:
  ; Code: movl $0x1, -0x2c(%rbp)	 RIP: 400bec	 Bytes: 7
  %loadMem_400bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bec = call %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bec)
  store %struct.Memory* %call_400bec, %struct.Memory** %MEMORY

  ; Code: .L_400bf3:	 RIP: 400bf3	 Bytes: 0
  br label %block_.L_400bf3
block_.L_400bf3:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400bf3	 Bytes: 3
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf3)
  store %struct.Memory* %call_400bf3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400bf6	 Bytes: 3
  %loadMem_400bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf6 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf6)
  store %struct.Memory* %call_400bf6, %struct.Memory** %MEMORY

  ; Code: jge .L_400d14	 RIP: 400bf9	 Bytes: 6
  %loadMem_400bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf9 = call %struct.Memory* @routine_jge_.L_400d14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf9, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_400bf9, %struct.Memory** %MEMORY

  %loadBr_400bf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bf9 = icmp eq i8 %loadBr_400bf9, 1
  br i1 %cmpBr_400bf9, label %block_.L_400d14, label %block_400bff

block_400bff:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400bff	 Bytes: 4
  %loadMem_400bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bff)
  store %struct.Memory* %call_400bff, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400c03	 Bytes: 4
  %loadMem_400c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c03 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c03)
  store %struct.Memory* %call_400c03, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400c07	 Bytes: 4
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c07 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c07)
  store %struct.Memory* %call_400c07, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400c0b	 Bytes: 3
  %loadMem_400c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c0b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c0b)
  store %struct.Memory* %call_400c0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400c0e	 Bytes: 4
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c0e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c0e)
  store %struct.Memory* %call_400c0e, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400c12	 Bytes: 5
  %loadMem_400c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c12 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c12)
  store %struct.Memory* %call_400c12, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400c17	 Bytes: 4
  %loadMem_400c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c17 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c17)
  store %struct.Memory* %call_400c17, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400c1b	 Bytes: 4
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1b)
  store %struct.Memory* %call_400c1b, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400c1f	 Bytes: 4
  %loadMem_400c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1f = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1f)
  store %struct.Memory* %call_400c1f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400c23	 Bytes: 3
  %loadMem_400c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c23 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c23)
  store %struct.Memory* %call_400c23, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 400c26	 Bytes: 3
  %loadMem_400c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c26 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c26)
  store %struct.Memory* %call_400c26, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400c29	 Bytes: 3
  %loadMem_400c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c29 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c29)
  store %struct.Memory* %call_400c29, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400c2c	 Bytes: 3
  %loadMem_400c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c2c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c2c)
  store %struct.Memory* %call_400c2c, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 400c2f	 Bytes: 5
  %loadMem_400c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c2f = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c2f)
  store %struct.Memory* %call_400c2f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400c34	 Bytes: 4
  %loadMem_400c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c34 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c34)
  store %struct.Memory* %call_400c34, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400c38	 Bytes: 4
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c38 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c38)
  store %struct.Memory* %call_400c38, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400c3c	 Bytes: 4
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3c = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3c)
  store %struct.Memory* %call_400c3c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400c40	 Bytes: 3
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c40 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c40)
  store %struct.Memory* %call_400c40, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400c43	 Bytes: 4
  %loadMem_400c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c43 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c43)
  store %struct.Memory* %call_400c43, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 400c47	 Bytes: 5
  %loadMem_400c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c47 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c47)
  store %struct.Memory* %call_400c47, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400c4c	 Bytes: 4
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4c)
  store %struct.Memory* %call_400c4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400c50	 Bytes: 4
  %loadMem_400c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c50 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c50)
  store %struct.Memory* %call_400c50, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400c54	 Bytes: 4
  %loadMem_400c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c54 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c54)
  store %struct.Memory* %call_400c54, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400c58	 Bytes: 3
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c58 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c58)
  store %struct.Memory* %call_400c58, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 400c5b	 Bytes: 3
  %loadMem_400c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c5b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c5b)
  store %struct.Memory* %call_400c5b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400c5e	 Bytes: 3
  %loadMem_400c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c5e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c5e)
  store %struct.Memory* %call_400c5e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400c61	 Bytes: 3
  %loadMem_400c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c61 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c61)
  store %struct.Memory* %call_400c61, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 400c64	 Bytes: 5
  %loadMem_400c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c64 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c64)
  store %struct.Memory* %call_400c64, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 400c69	 Bytes: 4
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c69 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c69)
  store %struct.Memory* %call_400c69, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400c6d	 Bytes: 4
  %loadMem_400c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c6d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c6d)
  store %struct.Memory* %call_400c6d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400c71	 Bytes: 4
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c71 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c71)
  store %struct.Memory* %call_400c71, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400c75	 Bytes: 4
  %loadMem_400c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c75 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c75)
  store %struct.Memory* %call_400c75, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400c79	 Bytes: 3
  %loadMem_400c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c79 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c79)
  store %struct.Memory* %call_400c79, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400c7c	 Bytes: 4
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7c)
  store %struct.Memory* %call_400c7c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400c80	 Bytes: 5
  %loadMem_400c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c80 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c80)
  store %struct.Memory* %call_400c80, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400c85	 Bytes: 4
  %loadMem_400c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c85 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c85)
  store %struct.Memory* %call_400c85, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400c89	 Bytes: 4
  %loadMem_400c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c89 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c89)
  store %struct.Memory* %call_400c89, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400c8d	 Bytes: 4
  %loadMem_400c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8d = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8d)
  store %struct.Memory* %call_400c8d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400c91	 Bytes: 3
  %loadMem_400c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c91 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c91)
  store %struct.Memory* %call_400c91, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400c94	 Bytes: 4
  %loadMem_400c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c94 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c94)
  store %struct.Memory* %call_400c94, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400c98	 Bytes: 5
  %loadMem_400c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c98 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c98)
  store %struct.Memory* %call_400c98, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400c9d	 Bytes: 4
  %loadMem_400c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c9d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c9d)
  store %struct.Memory* %call_400c9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400ca1	 Bytes: 4
  %loadMem_400ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca1)
  store %struct.Memory* %call_400ca1, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400ca5	 Bytes: 4
  %loadMem_400ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca5 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca5)
  store %struct.Memory* %call_400ca5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400ca9	 Bytes: 3
  %loadMem_400ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca9)
  store %struct.Memory* %call_400ca9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400cac	 Bytes: 4
  %loadMem_400cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cac = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cac)
  store %struct.Memory* %call_400cac, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 400cb0	 Bytes: 5
  %loadMem_400cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb0 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb0)
  store %struct.Memory* %call_400cb0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400cb5	 Bytes: 4
  %loadMem_400cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb5)
  store %struct.Memory* %call_400cb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400cb9	 Bytes: 4
  %loadMem_400cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb9)
  store %struct.Memory* %call_400cb9, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400cbd	 Bytes: 4
  %loadMem_400cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbd = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbd)
  store %struct.Memory* %call_400cbd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400cc1	 Bytes: 3
  %loadMem_400cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc1)
  store %struct.Memory* %call_400cc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400cc4	 Bytes: 4
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc4)
  store %struct.Memory* %call_400cc4, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 400cc8	 Bytes: 5
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc8 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc8)
  store %struct.Memory* %call_400cc8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400ccd	 Bytes: 4
  %loadMem_400ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ccd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ccd)
  store %struct.Memory* %call_400ccd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400cd1	 Bytes: 4
  %loadMem_400cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd1)
  store %struct.Memory* %call_400cd1, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400cd5	 Bytes: 4
  %loadMem_400cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd5 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd5)
  store %struct.Memory* %call_400cd5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400cd9	 Bytes: 3
  %loadMem_400cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd9)
  store %struct.Memory* %call_400cd9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 400cdc	 Bytes: 3
  %loadMem_400cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdc)
  store %struct.Memory* %call_400cdc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400cdf	 Bytes: 3
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdf = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdf)
  store %struct.Memory* %call_400cdf, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ce2	 Bytes: 3
  %loadMem_400ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce2)
  store %struct.Memory* %call_400ce2, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 400ce5	 Bytes: 5
  %loadMem_400ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce5 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce5)
  store %struct.Memory* %call_400ce5, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 400cea	 Bytes: 4
  %loadMem_400cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cea = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cea)
  store %struct.Memory* %call_400cea, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400cee	 Bytes: 4
  %loadMem_400cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cee = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cee)
  store %struct.Memory* %call_400cee, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400cf2	 Bytes: 4
  %loadMem_400cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf2)
  store %struct.Memory* %call_400cf2, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400cf6	 Bytes: 4
  %loadMem_400cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf6 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf6)
  store %struct.Memory* %call_400cf6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400cfa	 Bytes: 3
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfa)
  store %struct.Memory* %call_400cfa, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400cfd	 Bytes: 4
  %loadMem_400cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfd)
  store %struct.Memory* %call_400cfd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400d01	 Bytes: 5
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d01 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d01)
  store %struct.Memory* %call_400d01, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400d06	 Bytes: 3
  %loadMem_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d06 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d06)
  store %struct.Memory* %call_400d06, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d09	 Bytes: 3
  %loadMem_400d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d09 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d09)
  store %struct.Memory* %call_400d09, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 400d0c	 Bytes: 3
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0c = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0c)
  store %struct.Memory* %call_400d0c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400bf3	 RIP: 400d0f	 Bytes: 5
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0f = call %struct.Memory* @routine_jmpq_.L_400bf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0f, i64 -284, i64 5)
  store %struct.Memory* %call_400d0f, %struct.Memory** %MEMORY

  br label %block_.L_400bf3

  ; Code: .L_400d14:	 RIP: 400d14	 Bytes: 0
block_.L_400d14:

  ; Code: jmpq .L_400d19	 RIP: 400d14	 Bytes: 5
  %loadMem_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d14 = call %struct.Memory* @routine_jmpq_.L_400d19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d14, i64 5, i64 5)
  store %struct.Memory* %call_400d14, %struct.Memory** %MEMORY

  br label %block_.L_400d19

  ; Code: .L_400d19:	 RIP: 400d19	 Bytes: 0
block_.L_400d19:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400d19	 Bytes: 3
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d19 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d19)
  store %struct.Memory* %call_400d19, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d1c	 Bytes: 3
  %loadMem_400d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1c)
  store %struct.Memory* %call_400d1c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 400d1f	 Bytes: 3
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1f = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1f)
  store %struct.Memory* %call_400d1f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400be0	 RIP: 400d22	 Bytes: 5
  %loadMem_400d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d22 = call %struct.Memory* @routine_jmpq_.L_400be0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d22, i64 -322, i64 5)
  store %struct.Memory* %call_400d22, %struct.Memory** %MEMORY

  br label %block_.L_400be0

  ; Code: .L_400d27:	 RIP: 400d27	 Bytes: 0
block_.L_400d27:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 400d27	 Bytes: 7
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d27 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d27)
  store %struct.Memory* %call_400d27, %struct.Memory** %MEMORY

  ; Code: .L_400d2e:	 RIP: 400d2e	 Bytes: 0
  br label %block_.L_400d2e
block_.L_400d2e:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400d2e	 Bytes: 3
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2e)
  store %struct.Memory* %call_400d2e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400d31	 Bytes: 3
  %loadMem_400d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d31 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d31)
  store %struct.Memory* %call_400d31, %struct.Memory** %MEMORY

  ; Code: jge .L_400d9f	 RIP: 400d34	 Bytes: 6
  %loadMem_400d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d34 = call %struct.Memory* @routine_jge_.L_400d9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d34, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_400d34, %struct.Memory** %MEMORY

  %loadBr_400d34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d34 = icmp eq i8 %loadBr_400d34, 1
  br i1 %cmpBr_400d34, label %block_.L_400d9f, label %block_400d3a

block_400d3a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400d3a	 Bytes: 4
  %loadMem_400d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3a)
  store %struct.Memory* %call_400d3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400d3e	 Bytes: 4
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3e)
  store %struct.Memory* %call_400d3e, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400d42	 Bytes: 4
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d42 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d42)
  store %struct.Memory* %call_400d42, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400d46	 Bytes: 3
  %loadMem_400d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d46 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d46)
  store %struct.Memory* %call_400d46, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400d49	 Bytes: 3
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d49 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d49)
  store %struct.Memory* %call_400d49, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400d4c	 Bytes: 3
  %loadMem_400d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4c)
  store %struct.Memory* %call_400d4c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400d4f	 Bytes: 3
  %loadMem_400d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4f)
  store %struct.Memory* %call_400d4f, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400d52	 Bytes: 5
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d52 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d52)
  store %struct.Memory* %call_400d52, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400d57	 Bytes: 4
  %loadMem_400d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d57 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d57)
  store %struct.Memory* %call_400d57, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400d5b	 Bytes: 4
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5b)
  store %struct.Memory* %call_400d5b, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400d5f	 Bytes: 4
  %loadMem_400d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5f = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5f)
  store %struct.Memory* %call_400d5f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400d63	 Bytes: 3
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d63 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d63)
  store %struct.Memory* %call_400d63, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400d66	 Bytes: 3
  %loadMem_400d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d66 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d66)
  store %struct.Memory* %call_400d66, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400d69	 Bytes: 3
  %loadMem_400d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d69 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d69)
  store %struct.Memory* %call_400d69, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400d6c	 Bytes: 3
  %loadMem_400d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6c)
  store %struct.Memory* %call_400d6c, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 400d6f	 Bytes: 5
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6f = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6f)
  store %struct.Memory* %call_400d6f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400d74	 Bytes: 4
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d74 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d74)
  store %struct.Memory* %call_400d74, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400d78	 Bytes: 4
  %loadMem_400d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d78 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d78)
  store %struct.Memory* %call_400d78, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400d7c	 Bytes: 4
  %loadMem_400d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7c = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7c)
  store %struct.Memory* %call_400d7c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400d80	 Bytes: 3
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d80 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d80)
  store %struct.Memory* %call_400d80, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400d83	 Bytes: 3
  %loadMem_400d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d83 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d83)
  store %struct.Memory* %call_400d83, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400d86	 Bytes: 3
  %loadMem_400d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d86 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d86)
  store %struct.Memory* %call_400d86, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400d89	 Bytes: 3
  %loadMem_400d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d89 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d89)
  store %struct.Memory* %call_400d89, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400d8c	 Bytes: 5
  %loadMem_400d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8c = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8c)
  store %struct.Memory* %call_400d8c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400d91	 Bytes: 3
  %loadMem_400d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d91 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d91)
  store %struct.Memory* %call_400d91, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d94	 Bytes: 3
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d94 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d94)
  store %struct.Memory* %call_400d94, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 400d97	 Bytes: 3
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d97 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d97)
  store %struct.Memory* %call_400d97, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d2e	 RIP: 400d9a	 Bytes: 5
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9a = call %struct.Memory* @routine_jmpq_.L_400d2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9a, i64 -108, i64 5)
  store %struct.Memory* %call_400d9a, %struct.Memory** %MEMORY

  br label %block_.L_400d2e

  ; Code: .L_400d9f:	 RIP: 400d9f	 Bytes: 0
block_.L_400d9f:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 400d9f	 Bytes: 7
  %loadMem_400d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9f = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9f)
  store %struct.Memory* %call_400d9f, %struct.Memory** %MEMORY

  ; Code: .L_400da6:	 RIP: 400da6	 Bytes: 0
  br label %block_.L_400da6
block_.L_400da6:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400da6	 Bytes: 3
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da6 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da6)
  store %struct.Memory* %call_400da6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400da9	 Bytes: 3
  %loadMem_400da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da9 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da9)
  store %struct.Memory* %call_400da9, %struct.Memory** %MEMORY

  ; Code: jge .L_400e92	 RIP: 400dac	 Bytes: 6
  %loadMem_400dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dac = call %struct.Memory* @routine_jge_.L_400e92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dac, i8* %BRANCH_TAKEN, i64 230, i64 6, i64 6)
  store %struct.Memory* %call_400dac, %struct.Memory** %MEMORY

  %loadBr_400dac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dac = icmp eq i8 %loadBr_400dac, 1
  br i1 %cmpBr_400dac, label %block_.L_400e92, label %block_400db2

block_400db2:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 400db2	 Bytes: 7
  %loadMem_400db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db2 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db2)
  store %struct.Memory* %call_400db2, %struct.Memory** %MEMORY

  ; Code: .L_400db9:	 RIP: 400db9	 Bytes: 0
  br label %block_.L_400db9
block_.L_400db9:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400db9	 Bytes: 3
  %loadMem_400db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db9)
  store %struct.Memory* %call_400db9, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400dbc	 Bytes: 3
  %loadMem_400dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbc)
  store %struct.Memory* %call_400dbc, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 400dbf	 Bytes: 3
  %loadMem_400dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbf = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbf)
  store %struct.Memory* %call_400dbf, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 400dc2	 Bytes: 2
  %loadMem_400dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc2 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc2)
  store %struct.Memory* %call_400dc2, %struct.Memory** %MEMORY

  ; Code: jge .L_400e7f	 RIP: 400dc4	 Bytes: 6
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc4 = call %struct.Memory* @routine_jge_.L_400e7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc4, i8* %BRANCH_TAKEN, i64 187, i64 6, i64 6)
  store %struct.Memory* %call_400dc4, %struct.Memory** %MEMORY

  %loadBr_400dc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dc4 = icmp eq i8 %loadBr_400dc4, 1
  br i1 %cmpBr_400dc4, label %block_.L_400e7f, label %block_400dca

block_400dca:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400dca	 Bytes: 4
  %loadMem_400dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dca = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dca)
  store %struct.Memory* %call_400dca, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400dce	 Bytes: 4
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dce = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dce)
  store %struct.Memory* %call_400dce, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400dd2	 Bytes: 4
  %loadMem_400dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd2 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd2)
  store %struct.Memory* %call_400dd2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400dd6	 Bytes: 3
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd6)
  store %struct.Memory* %call_400dd6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400dd9	 Bytes: 3
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd9)
  store %struct.Memory* %call_400dd9, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 400ddc	 Bytes: 3
  %loadMem_400ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddc = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddc)
  store %struct.Memory* %call_400ddc, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edx	 RIP: 400ddf	 Bytes: 3
  %loadMem_400ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddf = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddf)
  store %struct.Memory* %call_400ddf, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400de2	 Bytes: 3
  %loadMem_400de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de2)
  store %struct.Memory* %call_400de2, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400de5	 Bytes: 5
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de5)
  store %struct.Memory* %call_400de5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400dea	 Bytes: 4
  %loadMem_400dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dea = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dea)
  store %struct.Memory* %call_400dea, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400dee	 Bytes: 4
  %loadMem_400dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dee = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dee)
  store %struct.Memory* %call_400dee, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400df2	 Bytes: 4
  %loadMem_400df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df2 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df2)
  store %struct.Memory* %call_400df2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400df6	 Bytes: 3
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df6)
  store %struct.Memory* %call_400df6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400df9	 Bytes: 3
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df9)
  store %struct.Memory* %call_400df9, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 400dfc	 Bytes: 3
  %loadMem_400dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfc = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfc)
  store %struct.Memory* %call_400dfc, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edx	 RIP: 400dff	 Bytes: 3
  %loadMem_400dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dff = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dff)
  store %struct.Memory* %call_400dff, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400e02	 Bytes: 3
  %loadMem_400e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e02 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e02)
  store %struct.Memory* %call_400e02, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e05	 Bytes: 3
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e05 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e05)
  store %struct.Memory* %call_400e05, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 400e08	 Bytes: 5
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e08 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e08)
  store %struct.Memory* %call_400e08, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400e0d	 Bytes: 4
  %loadMem_400e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0d)
  store %struct.Memory* %call_400e0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400e11	 Bytes: 4
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e11 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e11)
  store %struct.Memory* %call_400e11, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400e15	 Bytes: 4
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e15 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e15)
  store %struct.Memory* %call_400e15, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e19	 Bytes: 3
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e19 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e19)
  store %struct.Memory* %call_400e19, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400e1c	 Bytes: 3
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1c)
  store %struct.Memory* %call_400e1c, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edx	 RIP: 400e1f	 Bytes: 3
  %loadMem_400e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1f = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1f)
  store %struct.Memory* %call_400e1f, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 400e22	 Bytes: 3
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e22 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e22)
  store %struct.Memory* %call_400e22, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e25	 Bytes: 3
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e25 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e25)
  store %struct.Memory* %call_400e25, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 400e28	 Bytes: 5
  %loadMem_400e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e28 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e28)
  store %struct.Memory* %call_400e28, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 400e2d	 Bytes: 4
  %loadMem_400e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2d = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2d)
  store %struct.Memory* %call_400e2d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400e31	 Bytes: 4
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e31 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e31)
  store %struct.Memory* %call_400e31, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400e35	 Bytes: 4
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e35 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e35)
  store %struct.Memory* %call_400e35, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400e39	 Bytes: 4
  %loadMem_400e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e39 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e39)
  store %struct.Memory* %call_400e39, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e3d	 Bytes: 3
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3d)
  store %struct.Memory* %call_400e3d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400e40	 Bytes: 3
  %loadMem_400e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e40 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e40)
  store %struct.Memory* %call_400e40, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 400e43	 Bytes: 3
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e43 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e43)
  store %struct.Memory* %call_400e43, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edx	 RIP: 400e46	 Bytes: 3
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e46 = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e46)
  store %struct.Memory* %call_400e46, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e49	 Bytes: 3
  %loadMem_400e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e49 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e49)
  store %struct.Memory* %call_400e49, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 400e4c	 Bytes: 5
  %loadMem_400e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4c)
  store %struct.Memory* %call_400e4c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400e51	 Bytes: 4
  %loadMem_400e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e51 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e51)
  store %struct.Memory* %call_400e51, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400e55	 Bytes: 4
  %loadMem_400e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e55 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e55)
  store %struct.Memory* %call_400e55, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400e59	 Bytes: 4
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e59 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e59)
  store %struct.Memory* %call_400e59, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e5d	 Bytes: 3
  %loadMem_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5d)
  store %struct.Memory* %call_400e5d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 400e60	 Bytes: 3
  %loadMem_400e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e60 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e60)
  store %struct.Memory* %call_400e60, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edx	 RIP: 400e63	 Bytes: 3
  %loadMem_400e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e63 = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e63)
  store %struct.Memory* %call_400e63, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 400e66	 Bytes: 3
  %loadMem_400e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e66 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e66)
  store %struct.Memory* %call_400e66, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e69	 Bytes: 3
  %loadMem_400e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e69 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e69)
  store %struct.Memory* %call_400e69, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400e6c	 Bytes: 5
  %loadMem_400e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6c = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6c)
  store %struct.Memory* %call_400e6c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400e71	 Bytes: 3
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e71 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e71)
  store %struct.Memory* %call_400e71, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e74	 Bytes: 3
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e74 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e74)
  store %struct.Memory* %call_400e74, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 400e77	 Bytes: 3
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e77 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e77)
  store %struct.Memory* %call_400e77, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400db9	 RIP: 400e7a	 Bytes: 5
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7a = call %struct.Memory* @routine_jmpq_.L_400db9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7a, i64 -193, i64 5)
  store %struct.Memory* %call_400e7a, %struct.Memory** %MEMORY

  br label %block_.L_400db9

  ; Code: .L_400e7f:	 RIP: 400e7f	 Bytes: 0
block_.L_400e7f:

  ; Code: jmpq .L_400e84	 RIP: 400e7f	 Bytes: 5
  %loadMem_400e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7f = call %struct.Memory* @routine_jmpq_.L_400e84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7f, i64 5, i64 5)
  store %struct.Memory* %call_400e7f, %struct.Memory** %MEMORY

  br label %block_.L_400e84

  ; Code: .L_400e84:	 RIP: 400e84	 Bytes: 0
block_.L_400e84:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400e84	 Bytes: 3
  %loadMem_400e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e84 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e84)
  store %struct.Memory* %call_400e84, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e87	 Bytes: 3
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e87 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e87)
  store %struct.Memory* %call_400e87, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 400e8a	 Bytes: 3
  %loadMem_400e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8a)
  store %struct.Memory* %call_400e8a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400da6	 RIP: 400e8d	 Bytes: 5
  %loadMem_400e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8d = call %struct.Memory* @routine_jmpq_.L_400da6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8d, i64 -231, i64 5)
  store %struct.Memory* %call_400e8d, %struct.Memory** %MEMORY

  br label %block_.L_400da6

  ; Code: .L_400e92:	 RIP: 400e92	 Bytes: 0
block_.L_400e92:

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 400e92	 Bytes: 7
  %loadMem_400e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e92 = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e92)
  store %struct.Memory* %call_400e92, %struct.Memory** %MEMORY

  ; Code: .L_400e99:	 RIP: 400e99	 Bytes: 0
  br label %block_.L_400e99
block_.L_400e99:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400e99	 Bytes: 3
  %loadMem_400e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e99 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e99)
  store %struct.Memory* %call_400e99, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400e9c	 Bytes: 3
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9c = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9c)
  store %struct.Memory* %call_400e9c, %struct.Memory** %MEMORY

  ; Code: jge .L_400fe0	 RIP: 400e9f	 Bytes: 6
  %loadMem_400e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9f = call %struct.Memory* @routine_jge_.L_400fe0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9f, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_400e9f, %struct.Memory** %MEMORY

  %loadBr_400e9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e9f = icmp eq i8 %loadBr_400e9f, 1
  br i1 %cmpBr_400e9f, label %block_.L_400fe0, label %block_400ea5

block_400ea5:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 400ea5	 Bytes: 7
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea5 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea5)
  store %struct.Memory* %call_400ea5, %struct.Memory** %MEMORY

  ; Code: .L_400eac:	 RIP: 400eac	 Bytes: 0
  br label %block_.L_400eac
block_.L_400eac:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400eac	 Bytes: 3
  %loadMem_400eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eac = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eac)
  store %struct.Memory* %call_400eac, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400eaf	 Bytes: 3
  %loadMem_400eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eaf = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eaf)
  store %struct.Memory* %call_400eaf, %struct.Memory** %MEMORY

  ; Code: jge .L_400fcd	 RIP: 400eb2	 Bytes: 6
  %loadMem_400eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb2 = call %struct.Memory* @routine_jge_.L_400fcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb2, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_400eb2, %struct.Memory** %MEMORY

  %loadBr_400eb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eb2 = icmp eq i8 %loadBr_400eb2, 1
  br i1 %cmpBr_400eb2, label %block_.L_400fcd, label %block_400eb8

block_400eb8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400eb8	 Bytes: 4
  %loadMem_400eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb8)
  store %struct.Memory* %call_400eb8, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400ebc	 Bytes: 4
  %loadMem_400ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebc = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebc)
  store %struct.Memory* %call_400ebc, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400ec0	 Bytes: 4
  %loadMem_400ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec0 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec0)
  store %struct.Memory* %call_400ec0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400ec4	 Bytes: 3
  %loadMem_400ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec4)
  store %struct.Memory* %call_400ec4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400ec7	 Bytes: 4
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec7)
  store %struct.Memory* %call_400ec7, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400ecb	 Bytes: 5
  %loadMem_400ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecb = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecb)
  store %struct.Memory* %call_400ecb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400ed0	 Bytes: 4
  %loadMem_400ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed0)
  store %struct.Memory* %call_400ed0, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 400ed4	 Bytes: 3
  %loadMem_400ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed4 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed4)
  store %struct.Memory* %call_400ed4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400ed7	 Bytes: 3
  %loadMem_400ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed7 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed7)
  store %struct.Memory* %call_400ed7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400eda	 Bytes: 3
  %loadMem_400eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eda = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eda)
  store %struct.Memory* %call_400eda, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400edd	 Bytes: 4
  %loadMem_400edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400edd = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400edd)
  store %struct.Memory* %call_400edd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400ee1	 Bytes: 3
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee1)
  store %struct.Memory* %call_400ee1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400ee4	 Bytes: 4
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee4)
  store %struct.Memory* %call_400ee4, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 400ee8	 Bytes: 5
  %loadMem_400ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee8 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee8)
  store %struct.Memory* %call_400ee8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400eed	 Bytes: 4
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eed = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eed)
  store %struct.Memory* %call_400eed, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400ef1	 Bytes: 4
  %loadMem_400ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef1)
  store %struct.Memory* %call_400ef1, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400ef5	 Bytes: 4
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef5 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef5)
  store %struct.Memory* %call_400ef5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400ef9	 Bytes: 3
  %loadMem_400ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef9)
  store %struct.Memory* %call_400ef9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400efc	 Bytes: 4
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efc = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efc)
  store %struct.Memory* %call_400efc, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 400f00	 Bytes: 5
  %loadMem_400f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f00 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f00)
  store %struct.Memory* %call_400f00, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400f05	 Bytes: 4
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f05 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f05)
  store %struct.Memory* %call_400f05, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 400f09	 Bytes: 3
  %loadMem_400f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f09 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f09)
  store %struct.Memory* %call_400f09, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400f0c	 Bytes: 3
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0c)
  store %struct.Memory* %call_400f0c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f0f	 Bytes: 3
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0f)
  store %struct.Memory* %call_400f0f, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f12	 Bytes: 4
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f12 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f12)
  store %struct.Memory* %call_400f12, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f16	 Bytes: 3
  %loadMem_400f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f16 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f16)
  store %struct.Memory* %call_400f16, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400f19	 Bytes: 4
  %loadMem_400f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f19 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f19)
  store %struct.Memory* %call_400f19, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 400f1d	 Bytes: 5
  %loadMem_400f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1d = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1d)
  store %struct.Memory* %call_400f1d, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 400f22	 Bytes: 4
  %loadMem_400f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f22 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f22)
  store %struct.Memory* %call_400f22, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400f26	 Bytes: 4
  %loadMem_400f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f26 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f26)
  store %struct.Memory* %call_400f26, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400f2a	 Bytes: 4
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2a)
  store %struct.Memory* %call_400f2a, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f2e	 Bytes: 4
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2e = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2e)
  store %struct.Memory* %call_400f2e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f32	 Bytes: 3
  %loadMem_400f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f32 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f32)
  store %struct.Memory* %call_400f32, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400f35	 Bytes: 4
  %loadMem_400f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f35 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f35)
  store %struct.Memory* %call_400f35, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400f39	 Bytes: 5
  %loadMem_400f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f39 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f39)
  store %struct.Memory* %call_400f39, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400f3e	 Bytes: 4
  %loadMem_400f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3e)
  store %struct.Memory* %call_400f3e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400f42	 Bytes: 4
  %loadMem_400f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f42 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f42)
  store %struct.Memory* %call_400f42, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f46	 Bytes: 4
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f46 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f46)
  store %struct.Memory* %call_400f46, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f4a	 Bytes: 3
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4a)
  store %struct.Memory* %call_400f4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400f4d	 Bytes: 4
  %loadMem_400f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4d)
  store %struct.Memory* %call_400f4d, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400f51	 Bytes: 5
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f51 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f51)
  store %struct.Memory* %call_400f51, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400f56	 Bytes: 4
  %loadMem_400f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f56 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f56)
  store %struct.Memory* %call_400f56, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400f5a	 Bytes: 4
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5a)
  store %struct.Memory* %call_400f5a, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f5e	 Bytes: 4
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5e = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5e)
  store %struct.Memory* %call_400f5e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f62	 Bytes: 3
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f62 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f62)
  store %struct.Memory* %call_400f62, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400f65	 Bytes: 4
  %loadMem_400f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f65 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f65)
  store %struct.Memory* %call_400f65, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 400f69	 Bytes: 5
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f69 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f69)
  store %struct.Memory* %call_400f69, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400f6e	 Bytes: 4
  %loadMem_400f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6e)
  store %struct.Memory* %call_400f6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400f72	 Bytes: 4
  %loadMem_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f72 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f72)
  store %struct.Memory* %call_400f72, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f76	 Bytes: 4
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f76 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f76)
  store %struct.Memory* %call_400f76, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f7a	 Bytes: 3
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7a)
  store %struct.Memory* %call_400f7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400f7d	 Bytes: 4
  %loadMem_400f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7d)
  store %struct.Memory* %call_400f7d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 400f81	 Bytes: 5
  %loadMem_400f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f81 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f81)
  store %struct.Memory* %call_400f81, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400f86	 Bytes: 4
  %loadMem_400f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f86 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f86)
  store %struct.Memory* %call_400f86, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 400f8a	 Bytes: 3
  %loadMem_400f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8a)
  store %struct.Memory* %call_400f8a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 400f8d	 Bytes: 3
  %loadMem_400f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8d = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8d)
  store %struct.Memory* %call_400f8d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f90	 Bytes: 3
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f90 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f90)
  store %struct.Memory* %call_400f90, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f93	 Bytes: 4
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f93 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f93)
  store %struct.Memory* %call_400f93, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f97	 Bytes: 3
  %loadMem_400f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f97 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f97)
  store %struct.Memory* %call_400f97, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400f9a	 Bytes: 4
  %loadMem_400f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9a)
  store %struct.Memory* %call_400f9a, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 400f9e	 Bytes: 5
  %loadMem_400f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9e = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9e)
  store %struct.Memory* %call_400f9e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 400fa3	 Bytes: 4
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa3 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa3)
  store %struct.Memory* %call_400fa3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 400fa7	 Bytes: 4
  %loadMem_400fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa7)
  store %struct.Memory* %call_400fa7, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 400fab	 Bytes: 4
  %loadMem_400fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fab = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fab)
  store %struct.Memory* %call_400fab, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400faf	 Bytes: 4
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faf = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faf)
  store %struct.Memory* %call_400faf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400fb3	 Bytes: 3
  %loadMem_400fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb3)
  store %struct.Memory* %call_400fb3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 400fb6	 Bytes: 4
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb6)
  store %struct.Memory* %call_400fb6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400fba	 Bytes: 5
  %loadMem_400fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fba = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fba)
  store %struct.Memory* %call_400fba, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400fbf	 Bytes: 3
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbf)
  store %struct.Memory* %call_400fbf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fc2	 Bytes: 3
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc2)
  store %struct.Memory* %call_400fc2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 400fc5	 Bytes: 3
  %loadMem_400fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc5 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc5)
  store %struct.Memory* %call_400fc5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400eac	 RIP: 400fc8	 Bytes: 5
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc8 = call %struct.Memory* @routine_jmpq_.L_400eac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc8, i64 -284, i64 5)
  store %struct.Memory* %call_400fc8, %struct.Memory** %MEMORY

  br label %block_.L_400eac

  ; Code: .L_400fcd:	 RIP: 400fcd	 Bytes: 0
block_.L_400fcd:

  ; Code: jmpq .L_400fd2	 RIP: 400fcd	 Bytes: 5
  %loadMem_400fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcd = call %struct.Memory* @routine_jmpq_.L_400fd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcd, i64 5, i64 5)
  store %struct.Memory* %call_400fcd, %struct.Memory** %MEMORY

  br label %block_.L_400fd2

  ; Code: .L_400fd2:	 RIP: 400fd2	 Bytes: 0
block_.L_400fd2:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 400fd2	 Bytes: 3
  %loadMem_400fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd2 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd2)
  store %struct.Memory* %call_400fd2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fd5	 Bytes: 3
  %loadMem_400fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd5)
  store %struct.Memory* %call_400fd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 400fd8	 Bytes: 3
  %loadMem_400fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd8 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd8)
  store %struct.Memory* %call_400fd8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e99	 RIP: 400fdb	 Bytes: 5
  %loadMem_400fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdb = call %struct.Memory* @routine_jmpq_.L_400e99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdb, i64 -322, i64 5)
  store %struct.Memory* %call_400fdb, %struct.Memory** %MEMORY

  br label %block_.L_400e99

  ; Code: .L_400fe0:	 RIP: 400fe0	 Bytes: 0
block_.L_400fe0:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 400fe0	 Bytes: 7
  %loadMem_400fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe0 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe0)
  store %struct.Memory* %call_400fe0, %struct.Memory** %MEMORY

  ; Code: .L_400fe7:	 RIP: 400fe7	 Bytes: 0
  br label %block_.L_400fe7
block_.L_400fe7:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 400fe7	 Bytes: 3
  %loadMem_400fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe7)
  store %struct.Memory* %call_400fe7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 400fea	 Bytes: 3
  %loadMem_400fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fea = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fea)
  store %struct.Memory* %call_400fea, %struct.Memory** %MEMORY

  ; Code: jge .L_401058	 RIP: 400fed	 Bytes: 6
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fed = call %struct.Memory* @routine_jge_.L_401058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fed, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_400fed, %struct.Memory** %MEMORY

  %loadBr_400fed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fed = icmp eq i8 %loadBr_400fed, 1
  br i1 %cmpBr_400fed, label %block_.L_401058, label %block_400ff3

block_400ff3:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400ff3	 Bytes: 4
  %loadMem_400ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff3)
  store %struct.Memory* %call_400ff3, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400ff7	 Bytes: 3
  %loadMem_400ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff7)
  store %struct.Memory* %call_400ff7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 400ffa	 Bytes: 3
  %loadMem_400ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffa = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffa)
  store %struct.Memory* %call_400ffa, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 400ffd	 Bytes: 3
  %loadMem_400ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffd = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffd)
  store %struct.Memory* %call_400ffd, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 401000	 Bytes: 4
  %loadMem_401000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401000 = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401000)
  store %struct.Memory* %call_401000, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 401004	 Bytes: 3
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401004 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401004)
  store %struct.Memory* %call_401004, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 401007	 Bytes: 4
  %loadMem_401007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401007 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401007)
  store %struct.Memory* %call_401007, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm0	 RIP: 40100b	 Bytes: 5
  %loadMem_40100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100b = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100b)
  store %struct.Memory* %call_40100b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 401010	 Bytes: 4
  %loadMem_401010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401010 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401010)
  store %struct.Memory* %call_401010, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401014	 Bytes: 3
  %loadMem_401014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401014 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401014)
  store %struct.Memory* %call_401014, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 401017	 Bytes: 3
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401017 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401017)
  store %struct.Memory* %call_401017, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40101a	 Bytes: 3
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101a)
  store %struct.Memory* %call_40101a, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 40101d	 Bytes: 4
  %loadMem_40101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101d = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101d)
  store %struct.Memory* %call_40101d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 401021	 Bytes: 3
  %loadMem_401021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401021 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401021)
  store %struct.Memory* %call_401021, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 401024	 Bytes: 4
  %loadMem_401024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401024 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401024)
  store %struct.Memory* %call_401024, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rdx,8), %xmm0	 RIP: 401028	 Bytes: 5
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401028 = call %struct.Memory* @routine_divsd___rax__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401028)
  store %struct.Memory* %call_401028, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40102d	 Bytes: 4
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102d)
  store %struct.Memory* %call_40102d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401031	 Bytes: 3
  %loadMem_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401031 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401031)
  store %struct.Memory* %call_401031, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 401034	 Bytes: 3
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401034 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401034)
  store %struct.Memory* %call_401034, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 401037	 Bytes: 3
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401037 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401037)
  store %struct.Memory* %call_401037, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 40103a	 Bytes: 4
  %loadMem_40103a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103a = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103a)
  store %struct.Memory* %call_40103a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40103e	 Bytes: 3
  %loadMem_40103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103e)
  store %struct.Memory* %call_40103e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 401041	 Bytes: 4
  %loadMem_401041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401041 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401041)
  store %struct.Memory* %call_401041, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 401045	 Bytes: 5
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401045 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401045)
  store %struct.Memory* %call_401045, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40104a	 Bytes: 3
  %loadMem_40104a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104a)
  store %struct.Memory* %call_40104a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40104d	 Bytes: 3
  %loadMem_40104d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104d)
  store %struct.Memory* %call_40104d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 401050	 Bytes: 3
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401050 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401050)
  store %struct.Memory* %call_401050, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400fe7	 RIP: 401053	 Bytes: 5
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401053 = call %struct.Memory* @routine_jmpq_.L_400fe7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401053, i64 -108, i64 5)
  store %struct.Memory* %call_401053, %struct.Memory** %MEMORY

  br label %block_.L_400fe7

  ; Code: .L_401058:	 RIP: 401058	 Bytes: 0
block_.L_401058:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 401058	 Bytes: 7
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401058 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401058)
  store %struct.Memory* %call_401058, %struct.Memory** %MEMORY

  ; Code: .L_40105f:	 RIP: 40105f	 Bytes: 0
  br label %block_.L_40105f
block_.L_40105f:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40105f	 Bytes: 3
  %loadMem_40105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105f)
  store %struct.Memory* %call_40105f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401062	 Bytes: 3
  %loadMem_401062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401062 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401062)
  store %struct.Memory* %call_401062, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 401065	 Bytes: 3
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401065 = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401065)
  store %struct.Memory* %call_401065, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 401068	 Bytes: 2
  %loadMem_401068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401068 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401068)
  store %struct.Memory* %call_401068, %struct.Memory** %MEMORY

  ; Code: jge .L_401148	 RIP: 40106a	 Bytes: 6
  %loadMem_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106a = call %struct.Memory* @routine_jge_.L_401148(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106a, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_40106a, %struct.Memory** %MEMORY

  %loadBr_40106a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40106a = icmp eq i8 %loadBr_40106a, 1
  br i1 %cmpBr_40106a, label %block_.L_401148, label %block_401070

block_401070:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 401070	 Bytes: 7
  %loadMem_401070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401070 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401070)
  store %struct.Memory* %call_401070, %struct.Memory** %MEMORY

  ; Code: .L_401077:	 RIP: 401077	 Bytes: 0
  br label %block_.L_401077
block_.L_401077:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401077	 Bytes: 3
  %loadMem_401077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401077 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401077)
  store %struct.Memory* %call_401077, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40107a	 Bytes: 3
  %loadMem_40107a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107a = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107a)
  store %struct.Memory* %call_40107a, %struct.Memory** %MEMORY

  ; Code: jge .L_401135	 RIP: 40107d	 Bytes: 6
  %loadMem_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107d = call %struct.Memory* @routine_jge_.L_401135(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107d, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_40107d, %struct.Memory** %MEMORY

  %loadBr_40107d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40107d = icmp eq i8 %loadBr_40107d, 1
  br i1 %cmpBr_40107d, label %block_.L_401135, label %block_401083

block_401083:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 401083	 Bytes: 4
  %loadMem_401083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401083 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401083)
  store %struct.Memory* %call_401083, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401087	 Bytes: 3
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401087 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401087)
  store %struct.Memory* %call_401087, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40108a	 Bytes: 3
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108a = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108a)
  store %struct.Memory* %call_40108a, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 40108d	 Bytes: 3
  %loadMem_40108d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108d = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108d)
  store %struct.Memory* %call_40108d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 401090	 Bytes: 3
  %loadMem_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401090 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401090)
  store %struct.Memory* %call_401090, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 401093	 Bytes: 4
  %loadMem_401093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401093 = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401093)
  store %struct.Memory* %call_401093, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 401097	 Bytes: 3
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401097 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401097)
  store %struct.Memory* %call_401097, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 40109a	 Bytes: 4
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109a)
  store %struct.Memory* %call_40109a, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm0	 RIP: 40109e	 Bytes: 5
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109e = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109e)
  store %struct.Memory* %call_40109e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4010a3	 Bytes: 4
  %loadMem_4010a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a3)
  store %struct.Memory* %call_4010a3, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4010a7	 Bytes: 3
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a7)
  store %struct.Memory* %call_4010a7, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 4010aa	 Bytes: 3
  %loadMem_4010aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010aa = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010aa)
  store %struct.Memory* %call_4010aa, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 4010ad	 Bytes: 3
  %loadMem_4010ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ad = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ad)
  store %struct.Memory* %call_4010ad, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4010b0	 Bytes: 3
  %loadMem_4010b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b0)
  store %struct.Memory* %call_4010b0, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 4010b3	 Bytes: 4
  %loadMem_4010b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b3 = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b3)
  store %struct.Memory* %call_4010b3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4010b7	 Bytes: 3
  %loadMem_4010b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b7)
  store %struct.Memory* %call_4010b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4010ba	 Bytes: 4
  %loadMem_4010ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ba = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ba)
  store %struct.Memory* %call_4010ba, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 4010be	 Bytes: 5
  %loadMem_4010be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010be = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010be)
  store %struct.Memory* %call_4010be, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4010c3	 Bytes: 4
  %loadMem_4010c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c3)
  store %struct.Memory* %call_4010c3, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4010c7	 Bytes: 3
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c7)
  store %struct.Memory* %call_4010c7, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %ecx	 RIP: 4010ca	 Bytes: 3
  %loadMem_4010ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ca = call %struct.Memory* @routine_subl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ca)
  store %struct.Memory* %call_4010ca, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 4010cd	 Bytes: 3
  %loadMem_4010cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cd = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cd)
  store %struct.Memory* %call_4010cd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4010d0	 Bytes: 3
  %loadMem_4010d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d0)
  store %struct.Memory* %call_4010d0, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 4010d3	 Bytes: 4
  %loadMem_4010d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d3 = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d3)
  store %struct.Memory* %call_4010d3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4010d7	 Bytes: 3
  %loadMem_4010d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d7)
  store %struct.Memory* %call_4010d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4010da	 Bytes: 4
  %loadMem_4010da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010da = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010da)
  store %struct.Memory* %call_4010da, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rdx,8), %xmm1	 RIP: 4010de	 Bytes: 5
  %loadMem_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010de = call %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010de)
  store %struct.Memory* %call_4010de, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4010e3	 Bytes: 4
  %loadMem_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e3 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e3)
  store %struct.Memory* %call_4010e3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4010e7	 Bytes: 4
  %loadMem_4010e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e7)
  store %struct.Memory* %call_4010e7, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4010eb	 Bytes: 3
  %loadMem_4010eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010eb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010eb)
  store %struct.Memory* %call_4010eb, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 4010ee	 Bytes: 3
  %loadMem_4010ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ee = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ee)
  store %struct.Memory* %call_4010ee, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 4010f1	 Bytes: 3
  %loadMem_4010f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f1 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f1)
  store %struct.Memory* %call_4010f1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4010f4	 Bytes: 3
  %loadMem_4010f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f4 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f4)
  store %struct.Memory* %call_4010f4, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 4010f7	 Bytes: 4
  %loadMem_4010f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f7 = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f7)
  store %struct.Memory* %call_4010f7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4010fb	 Bytes: 3
  %loadMem_4010fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fb)
  store %struct.Memory* %call_4010fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4010fe	 Bytes: 4
  %loadMem_4010fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fe = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fe)
  store %struct.Memory* %call_4010fe, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rdx,8), %xmm0	 RIP: 401102	 Bytes: 5
  %loadMem_401102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401102 = call %struct.Memory* @routine_divsd___rax__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401102)
  store %struct.Memory* %call_401102, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 401107	 Bytes: 4
  %loadMem_401107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401107 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401107)
  store %struct.Memory* %call_401107, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40110b	 Bytes: 3
  %loadMem_40110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110b)
  store %struct.Memory* %call_40110b, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %ecx	 RIP: 40110e	 Bytes: 3
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110e = call %struct.Memory* @routine_subl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110e)
  store %struct.Memory* %call_40110e, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 401111	 Bytes: 3
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401111 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401111)
  store %struct.Memory* %call_401111, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 401114	 Bytes: 3
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401114 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401114)
  store %struct.Memory* %call_401114, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rdx	 RIP: 401117	 Bytes: 4
  %loadMem_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401117 = call %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401117)
  store %struct.Memory* %call_401117, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40111b	 Bytes: 3
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111b)
  store %struct.Memory* %call_40111b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 40111e	 Bytes: 4
  %loadMem_40111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111e)
  store %struct.Memory* %call_40111e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 401122	 Bytes: 5
  %loadMem_401122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401122 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401122)
  store %struct.Memory* %call_401122, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401127	 Bytes: 3
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401127 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401127)
  store %struct.Memory* %call_401127, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40112a	 Bytes: 3
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112a)
  store %struct.Memory* %call_40112a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40112d	 Bytes: 3
  %loadMem_40112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112d = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112d)
  store %struct.Memory* %call_40112d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401077	 RIP: 401130	 Bytes: 5
  %loadMem_401130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401130 = call %struct.Memory* @routine_jmpq_.L_401077(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401130, i64 -185, i64 5)
  store %struct.Memory* %call_401130, %struct.Memory** %MEMORY

  br label %block_.L_401077

  ; Code: .L_401135:	 RIP: 401135	 Bytes: 0
block_.L_401135:

  ; Code: jmpq .L_40113a	 RIP: 401135	 Bytes: 5
  %loadMem_401135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401135 = call %struct.Memory* @routine_jmpq_.L_40113a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401135, i64 5, i64 5)
  store %struct.Memory* %call_401135, %struct.Memory** %MEMORY

  br label %block_.L_40113a

  ; Code: .L_40113a:	 RIP: 40113a	 Bytes: 0
block_.L_40113a:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40113a	 Bytes: 3
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113a)
  store %struct.Memory* %call_40113a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40113d	 Bytes: 3
  %loadMem_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113d)
  store %struct.Memory* %call_40113d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 401140	 Bytes: 3
  %loadMem_401140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401140 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401140)
  store %struct.Memory* %call_401140, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40105f	 RIP: 401143	 Bytes: 5
  %loadMem_401143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401143 = call %struct.Memory* @routine_jmpq_.L_40105f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401143, i64 -228, i64 5)
  store %struct.Memory* %call_401143, %struct.Memory** %MEMORY

  br label %block_.L_40105f

  ; Code: .L_401148:	 RIP: 401148	 Bytes: 0
block_.L_401148:

  ; Code: jmpq .L_40114d	 RIP: 401148	 Bytes: 5
  %loadMem_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401148 = call %struct.Memory* @routine_jmpq_.L_40114d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401148, i64 5, i64 5)
  store %struct.Memory* %call_401148, %struct.Memory** %MEMORY

  br label %block_.L_40114d

  ; Code: .L_40114d:	 RIP: 40114d	 Bytes: 0
block_.L_40114d:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40114d	 Bytes: 3
  %loadMem_40114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114d)
  store %struct.Memory* %call_40114d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401150	 Bytes: 3
  %loadMem_401150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401150 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401150)
  store %struct.Memory* %call_401150, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 401153	 Bytes: 3
  %loadMem_401153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401153 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401153)
  store %struct.Memory* %call_401153, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400bcd	 RIP: 401156	 Bytes: 5
  %loadMem_401156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401156 = call %struct.Memory* @routine_jmpq_.L_400bcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401156, i64 -1417, i64 5)
  store %struct.Memory* %call_401156, %struct.Memory** %MEMORY

  br label %block_.L_400bcd

  ; Code: .L_40115b:	 RIP: 40115b	 Bytes: 0
block_.L_40115b:

  ; Code: popq %rbp	 RIP: 40115b	 Bytes: 1
  %loadMem_40115b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115b)
  store %struct.Memory* %call_40115b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40115c	 Bytes: 1
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115c)
  store %struct.Memory* %call_40115c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40115c
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jge_.L_40115b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400d27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_400d14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 13)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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













define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_400bf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400d19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400be0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_400d9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}
























define %struct.Memory* @routine_jmpq_.L_400d2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_400e92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400e7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






































define %struct.Memory* @routine_subl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


















































define %struct.Memory* @routine_jmpq_.L_400db9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400e84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400da6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jge_.L_400fe0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_400fcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
































































































































define %struct.Memory* @routine_jmpq_.L_400eac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400fd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400e99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_401058(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_subl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0xd___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 13)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}
















define %struct.Memory* @routine_divsd___rax__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}
















define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_jmpq_.L_400fe7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jge_.L_401148(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_401135(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_subl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


















define %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}














































define %struct.Memory* @routine_jmpq_.L_401077(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40113a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40105f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40114d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400bcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

