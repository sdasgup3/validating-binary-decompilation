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


define %struct.Memory* @bitrv2(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .bitrv2:	 RIP: 4011e0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4011e0	 Bytes: 1
  %loadMem_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e0)
  store %struct.Memory* %call_4011e0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4011e1	 Bytes: 3
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e1)
  store %struct.Memory* %call_4011e1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 4011e4	 Bytes: 3
  %loadMem_4011e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e4 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e4)
  store %struct.Memory* %call_4011e4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 4011e7	 Bytes: 4
  %loadMem_4011e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e7 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e7)
  store %struct.Memory* %call_4011e7, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 4011eb	 Bytes: 4
  %loadMem_4011eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011eb = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011eb)
  store %struct.Memory* %call_4011eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4011ef	 Bytes: 4
  %loadMem_4011ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ef)
  store %struct.Memory* %call_4011ef, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx)	 RIP: 4011f3	 Bytes: 6
  %loadMem_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f3 = call %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f3)
  store %struct.Memory* %call_4011f3, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4011f9	 Bytes: 3
  %loadMem_4011f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f9)
  store %struct.Memory* %call_4011f9, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 4011fc	 Bytes: 3
  %loadMem_4011fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fc = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fc)
  store %struct.Memory* %call_4011fc, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 4011ff	 Bytes: 7
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ff = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ff)
  store %struct.Memory* %call_4011ff, %struct.Memory** %MEMORY

  ; Code: .L_401206:	 RIP: 401206	 Bytes: 0
  br label %block_.L_401206
block_.L_401206:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401206	 Bytes: 3
  %loadMem_401206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401206 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401206)
  store %struct.Memory* %call_401206, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401209	 Bytes: 3
  %loadMem_401209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401209 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401209)
  store %struct.Memory* %call_401209, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 40120c	 Bytes: 3
  %loadMem_40120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120c = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120c)
  store %struct.Memory* %call_40120c, %struct.Memory** %MEMORY

  ; Code: jge .L_40126b	 RIP: 40120f	 Bytes: 6
  %loadMem_40120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120f = call %struct.Memory* @routine_jge_.L_40126b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120f, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_40120f, %struct.Memory** %MEMORY

  %loadBr_40120f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40120f = icmp eq i8 %loadBr_40120f, 1
  br i1 %cmpBr_40120f, label %block_.L_40126b, label %block_401215

block_401215:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401215	 Bytes: 3
  %loadMem_401215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401215 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401215)
  store %struct.Memory* %call_401215, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 401218	 Bytes: 3
  %loadMem_401218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401218 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401218)
  store %struct.Memory* %call_401218, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40121b	 Bytes: 3
  %loadMem_40121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121b = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121b)
  store %struct.Memory* %call_40121b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40121e	 Bytes: 7
  %loadMem_40121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121e)
  store %struct.Memory* %call_40121e, %struct.Memory** %MEMORY

  ; Code: .L_401225:	 RIP: 401225	 Bytes: 0
  br label %block_.L_401225
block_.L_401225:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401225	 Bytes: 3
  %loadMem_401225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401225 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401225)
  store %struct.Memory* %call_401225, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401228	 Bytes: 3
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401228 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401228)
  store %struct.Memory* %call_401228, %struct.Memory** %MEMORY

  ; Code: jge .L_40125d	 RIP: 40122b	 Bytes: 6
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122b = call %struct.Memory* @routine_jge_.L_40125d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122b, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_40122b, %struct.Memory** %MEMORY

  %loadBr_40122b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40122b = icmp eq i8 %loadBr_40122b, 1
  br i1 %cmpBr_40122b, label %block_.L_40125d, label %block_401231

block_401231:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 401231	 Bytes: 4
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401231 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401231)
  store %struct.Memory* %call_401231, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 401235	 Bytes: 4
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401235 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401235)
  store %struct.Memory* %call_401235, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 401239	 Bytes: 3
  %loadMem_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401239 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401239)
  store %struct.Memory* %call_401239, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 40123c	 Bytes: 3
  %loadMem_40123c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123c = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123c)
  store %struct.Memory* %call_40123c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40123f	 Bytes: 4
  %loadMem_40123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123f)
  store %struct.Memory* %call_40123f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 401243	 Bytes: 3
  %loadMem_401243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401243 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401243)
  store %struct.Memory* %call_401243, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 401246	 Bytes: 3
  %loadMem_401246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401246 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401246)
  store %struct.Memory* %call_401246, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 401249	 Bytes: 3
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401249 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401249)
  store %struct.Memory* %call_401249, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 40124c	 Bytes: 3
  %loadMem_40124c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124c)
  store %struct.Memory* %call_40124c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40124f	 Bytes: 3
  %loadMem_40124f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124f)
  store %struct.Memory* %call_40124f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401252	 Bytes: 3
  %loadMem_401252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401252 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401252)
  store %struct.Memory* %call_401252, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401255	 Bytes: 3
  %loadMem_401255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401255 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401255)
  store %struct.Memory* %call_401255, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401225	 RIP: 401258	 Bytes: 5
  %loadMem_401258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401258 = call %struct.Memory* @routine_jmpq_.L_401225(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401258, i64 -51, i64 5)
  store %struct.Memory* %call_401258, %struct.Memory** %MEMORY

  br label %block_.L_401225

  ; Code: .L_40125d:	 RIP: 40125d	 Bytes: 0
block_.L_40125d:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40125d	 Bytes: 3
  %loadMem_40125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125d)
  store %struct.Memory* %call_40125d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401260	 Bytes: 3
  %loadMem_401260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401260 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401260)
  store %struct.Memory* %call_401260, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 401263	 Bytes: 3
  %loadMem_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401263 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401263)
  store %struct.Memory* %call_401263, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401206	 RIP: 401266	 Bytes: 5
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401266 = call %struct.Memory* @routine_jmpq_.L_401206(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401266, i64 -96, i64 5)
  store %struct.Memory* %call_401266, %struct.Memory** %MEMORY

  br label %block_.L_401206

  ; Code: .L_40126b:	 RIP: 40126b	 Bytes: 0
block_.L_40126b:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40126b	 Bytes: 3
  %loadMem_40126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126b)
  store %struct.Memory* %call_40126b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 40126e	 Bytes: 3
  %loadMem_40126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126e = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126e)
  store %struct.Memory* %call_40126e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 401271	 Bytes: 3
  %loadMem_401271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401271 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401271)
  store %struct.Memory* %call_401271, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401274	 Bytes: 3
  %loadMem_401274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401274 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401274)
  store %struct.Memory* %call_401274, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401277	 Bytes: 3
  %loadMem_401277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401277 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401277)
  store %struct.Memory* %call_401277, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 40127a	 Bytes: 3
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127a = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127a)
  store %struct.Memory* %call_40127a, %struct.Memory** %MEMORY

  ; Code: jne .L_401684	 RIP: 40127d	 Bytes: 6
  %loadMem_40127d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127d = call %struct.Memory* @routine_jne_.L_401684(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127d, i8* %BRANCH_TAKEN, i64 1031, i64 6, i64 6)
  store %struct.Memory* %call_40127d, %struct.Memory** %MEMORY

  %loadBr_40127d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40127d = icmp eq i8 %loadBr_40127d, 1
  br i1 %cmpBr_40127d, label %block_.L_401684, label %block_401283

block_401283:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 401283	 Bytes: 7
  %loadMem_401283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401283 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401283)
  store %struct.Memory* %call_401283, %struct.Memory** %MEMORY

  ; Code: .L_40128a:	 RIP: 40128a	 Bytes: 0
  br label %block_.L_40128a
block_.L_40128a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40128a	 Bytes: 3
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128a)
  store %struct.Memory* %call_40128a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 40128d	 Bytes: 3
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128d = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128d)
  store %struct.Memory* %call_40128d, %struct.Memory** %MEMORY

  ; Code: jge .L_40167f	 RIP: 401290	 Bytes: 6
  %loadMem_401290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401290 = call %struct.Memory* @routine_jge_.L_40167f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401290, i8* %BRANCH_TAKEN, i64 1007, i64 6, i64 6)
  store %struct.Memory* %call_401290, %struct.Memory** %MEMORY

  %loadBr_401290 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401290 = icmp eq i8 %loadBr_401290, 1
  br i1 %cmpBr_401290, label %block_.L_40167f, label %block_401296

block_401296:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401296	 Bytes: 7
  %loadMem_401296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401296 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401296)
  store %struct.Memory* %call_401296, %struct.Memory** %MEMORY

  ; Code: .L_40129d:	 RIP: 40129d	 Bytes: 0
  br label %block_.L_40129d
block_.L_40129d:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40129d	 Bytes: 3
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129d)
  store %struct.Memory* %call_40129d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 4012a0	 Bytes: 3
  %loadMem_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a0 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a0)
  store %struct.Memory* %call_4012a0, %struct.Memory** %MEMORY

  ; Code: jge .L_4015ad	 RIP: 4012a3	 Bytes: 6
  %loadMem_4012a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a3 = call %struct.Memory* @routine_jge_.L_4015ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a3, i8* %BRANCH_TAKEN, i64 778, i64 6, i64 6)
  store %struct.Memory* %call_4012a3, %struct.Memory** %MEMORY

  %loadBr_4012a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012a3 = icmp eq i8 %loadBr_4012a3, 1
  br i1 %cmpBr_4012a3, label %block_.L_4015ad, label %block_4012a9

block_4012a9:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4012a9	 Bytes: 3
  %loadMem_4012a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a9)
  store %struct.Memory* %call_4012a9, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4012ac	 Bytes: 3
  %loadMem_4012ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ac = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ac)
  store %struct.Memory* %call_4012ac, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4012af	 Bytes: 4
  %loadMem_4012af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012af = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012af)
  store %struct.Memory* %call_4012af, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4012b3	 Bytes: 4
  %loadMem_4012b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b3)
  store %struct.Memory* %call_4012b3, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4012b7	 Bytes: 3
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b7 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b7)
  store %struct.Memory* %call_4012b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4012ba	 Bytes: 3
  %loadMem_4012ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ba = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ba)
  store %struct.Memory* %call_4012ba, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4012bd	 Bytes: 3
  %loadMem_4012bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bd)
  store %struct.Memory* %call_4012bd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4012c0	 Bytes: 3
  %loadMem_4012c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c0)
  store %struct.Memory* %call_4012c0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4012c3	 Bytes: 4
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c3)
  store %struct.Memory* %call_4012c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4012c7	 Bytes: 4
  %loadMem_4012c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c7 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c7)
  store %struct.Memory* %call_4012c7, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4012cb	 Bytes: 3
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4012ce	 Bytes: 3
  %loadMem_4012ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ce = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ce)
  store %struct.Memory* %call_4012ce, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012d1	 Bytes: 4
  %loadMem_4012d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d1)
  store %struct.Memory* %call_4012d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4012d5	 Bytes: 4
  %loadMem_4012d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d5)
  store %struct.Memory* %call_4012d5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4012d9	 Bytes: 5
  %loadMem_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d9)
  store %struct.Memory* %call_4012d9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4012de	 Bytes: 5
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012de = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012de)
  store %struct.Memory* %call_4012de, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012e3	 Bytes: 4
  %loadMem_4012e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e3)
  store %struct.Memory* %call_4012e3, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4012e7	 Bytes: 3
  %loadMem_4012e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e7 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e7)
  store %struct.Memory* %call_4012e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4012ea	 Bytes: 3
  %loadMem_4012ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ea)
  store %struct.Memory* %call_4012ea, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4012ed	 Bytes: 3
  %loadMem_4012ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ed = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ed)
  store %struct.Memory* %call_4012ed, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4012f0	 Bytes: 5
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f0 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f0)
  store %struct.Memory* %call_4012f0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4012f5	 Bytes: 5
  %loadMem_4012f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f5)
  store %struct.Memory* %call_4012f5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012fa	 Bytes: 4
  %loadMem_4012fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fa = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fa)
  store %struct.Memory* %call_4012fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4012fe	 Bytes: 4
  %loadMem_4012fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fe = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fe)
  store %struct.Memory* %call_4012fe, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401302	 Bytes: 5
  %loadMem_401302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401302 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401302)
  store %struct.Memory* %call_401302, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401307	 Bytes: 5
  %loadMem_401307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401307 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401307)
  store %struct.Memory* %call_401307, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40130c	 Bytes: 4
  %loadMem_40130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130c)
  store %struct.Memory* %call_40130c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401310	 Bytes: 3
  %loadMem_401310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401310 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401310)
  store %struct.Memory* %call_401310, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401313	 Bytes: 3
  %loadMem_401313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401313 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401313)
  store %struct.Memory* %call_401313, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401316	 Bytes: 3
  %loadMem_401316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401316 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401316)
  store %struct.Memory* %call_401316, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401319	 Bytes: 5
  %loadMem_401319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401319 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401319)
  store %struct.Memory* %call_401319, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40131e	 Bytes: 5
  %loadMem_40131e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131e)
  store %struct.Memory* %call_40131e, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401323	 Bytes: 5
  %loadMem_401323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401323 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401323)
  store %struct.Memory* %call_401323, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401328	 Bytes: 4
  %loadMem_401328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401328 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401328)
  store %struct.Memory* %call_401328, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40132c	 Bytes: 4
  %loadMem_40132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132c)
  store %struct.Memory* %call_40132c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401330	 Bytes: 5
  %loadMem_401330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401330 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401330)
  store %struct.Memory* %call_401330, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401335	 Bytes: 5
  %loadMem_401335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401335 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401335)
  store %struct.Memory* %call_401335, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40133a	 Bytes: 4
  %loadMem_40133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133a)
  store %struct.Memory* %call_40133a, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40133e	 Bytes: 3
  %loadMem_40133e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133e = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133e)
  store %struct.Memory* %call_40133e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401341	 Bytes: 3
  %loadMem_401341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401341 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401341)
  store %struct.Memory* %call_401341, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401344	 Bytes: 3
  %loadMem_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401344 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401344)
  store %struct.Memory* %call_401344, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401347	 Bytes: 5
  %loadMem_401347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401347 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401347)
  store %struct.Memory* %call_401347, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 40134c	 Bytes: 5
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134c = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134c)
  store %struct.Memory* %call_40134c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401351	 Bytes: 4
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401351 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401351)
  store %struct.Memory* %call_401351, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401355	 Bytes: 4
  %loadMem_401355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401355 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401355)
  store %struct.Memory* %call_401355, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401359	 Bytes: 5
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401359 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401359)
  store %struct.Memory* %call_401359, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40135e	 Bytes: 5
  %loadMem_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135e = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135e)
  store %struct.Memory* %call_40135e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401363	 Bytes: 4
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401363 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401363)
  store %struct.Memory* %call_401363, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401367	 Bytes: 3
  %loadMem_401367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401367 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401367)
  store %struct.Memory* %call_401367, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40136a	 Bytes: 3
  %loadMem_40136a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136a)
  store %struct.Memory* %call_40136a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40136d	 Bytes: 3
  %loadMem_40136d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136d)
  store %struct.Memory* %call_40136d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401370	 Bytes: 5
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401370 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401370)
  store %struct.Memory* %call_401370, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401375	 Bytes: 3
  %loadMem_401375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401375 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401375)
  store %struct.Memory* %call_401375, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 401378	 Bytes: 3
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401378 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401378)
  store %struct.Memory* %call_401378, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 40137b	 Bytes: 3
  %loadMem_40137b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137b)
  store %struct.Memory* %call_40137b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40137e	 Bytes: 3
  %loadMem_40137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137e)
  store %struct.Memory* %call_40137e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401381	 Bytes: 3
  %loadMem_401381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401381 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401381)
  store %struct.Memory* %call_401381, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 401384	 Bytes: 3
  %loadMem_401384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401384 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401384)
  store %struct.Memory* %call_401384, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 401387	 Bytes: 3
  %loadMem_401387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401387 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401387)
  store %struct.Memory* %call_401387, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40138a	 Bytes: 4
  %loadMem_40138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138a)
  store %struct.Memory* %call_40138a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40138e	 Bytes: 4
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138e)
  store %struct.Memory* %call_40138e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401392	 Bytes: 5
  %loadMem_401392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401392 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401392)
  store %struct.Memory* %call_401392, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401397	 Bytes: 5
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401397 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401397)
  store %struct.Memory* %call_401397, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40139c	 Bytes: 4
  %loadMem_40139c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139c)
  store %struct.Memory* %call_40139c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4013a0	 Bytes: 3
  %loadMem_4013a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a0 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a0)
  store %struct.Memory* %call_4013a0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4013a3	 Bytes: 3
  %loadMem_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a3)
  store %struct.Memory* %call_4013a3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4013a6	 Bytes: 3
  %loadMem_4013a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a6 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a6)
  store %struct.Memory* %call_4013a6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013a9	 Bytes: 5
  %loadMem_4013a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a9)
  store %struct.Memory* %call_4013a9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4013ae	 Bytes: 5
  %loadMem_4013ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ae = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ae)
  store %struct.Memory* %call_4013ae, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013b3	 Bytes: 4
  %loadMem_4013b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b3)
  store %struct.Memory* %call_4013b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4013b7	 Bytes: 4
  %loadMem_4013b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b7)
  store %struct.Memory* %call_4013b7, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013bb	 Bytes: 5
  %loadMem_4013bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bb = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bb)
  store %struct.Memory* %call_4013bb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4013c0	 Bytes: 5
  %loadMem_4013c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c0)
  store %struct.Memory* %call_4013c0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013c5	 Bytes: 4
  %loadMem_4013c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c5)
  store %struct.Memory* %call_4013c5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4013c9	 Bytes: 3
  %loadMem_4013c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c9)
  store %struct.Memory* %call_4013c9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4013cc	 Bytes: 3
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cc)
  store %struct.Memory* %call_4013cc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4013cf	 Bytes: 3
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cf = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cf)
  store %struct.Memory* %call_4013cf, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4013d2	 Bytes: 5
  %loadMem_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d2 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d2)
  store %struct.Memory* %call_4013d2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4013d7	 Bytes: 5
  %loadMem_4013d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d7)
  store %struct.Memory* %call_4013d7, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4013dc	 Bytes: 5
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dc = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dc)
  store %struct.Memory* %call_4013dc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013e1	 Bytes: 4
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e1)
  store %struct.Memory* %call_4013e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4013e5	 Bytes: 4
  %loadMem_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e5)
  store %struct.Memory* %call_4013e5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4013e9	 Bytes: 5
  %loadMem_4013e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e9 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e9)
  store %struct.Memory* %call_4013e9, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4013ee	 Bytes: 5
  %loadMem_4013ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ee = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ee)
  store %struct.Memory* %call_4013ee, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4013f3	 Bytes: 4
  %loadMem_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f3)
  store %struct.Memory* %call_4013f3, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4013f7	 Bytes: 3
  %loadMem_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f7 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f7)
  store %struct.Memory* %call_4013f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4013fa	 Bytes: 3
  %loadMem_4013fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fa)
  store %struct.Memory* %call_4013fa, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4013fd	 Bytes: 3
  %loadMem_4013fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fd)
  store %struct.Memory* %call_4013fd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401400	 Bytes: 5
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401400 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401400)
  store %struct.Memory* %call_401400, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401405	 Bytes: 5
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401405 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401405)
  store %struct.Memory* %call_401405, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40140a	 Bytes: 4
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140a)
  store %struct.Memory* %call_40140a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40140e	 Bytes: 4
  %loadMem_40140e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140e)
  store %struct.Memory* %call_40140e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401412	 Bytes: 5
  %loadMem_401412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401412 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401412)
  store %struct.Memory* %call_401412, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401417	 Bytes: 5
  %loadMem_401417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401417 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401417)
  store %struct.Memory* %call_401417, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40141c	 Bytes: 4
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141c)
  store %struct.Memory* %call_40141c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401420	 Bytes: 3
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401420 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401420)
  store %struct.Memory* %call_401420, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401423	 Bytes: 3
  %loadMem_401423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401423 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401423)
  store %struct.Memory* %call_401423, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401426	 Bytes: 3
  %loadMem_401426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401426 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401426)
  store %struct.Memory* %call_401426, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401429	 Bytes: 5
  %loadMem_401429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401429 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401429)
  store %struct.Memory* %call_401429, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40142e	 Bytes: 3
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142e)
  store %struct.Memory* %call_40142e, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 401431	 Bytes: 3
  %loadMem_401431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401431 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401431)
  store %struct.Memory* %call_401431, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 401434	 Bytes: 3
  %loadMem_401434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401434 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401434)
  store %struct.Memory* %call_401434, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401437	 Bytes: 3
  %loadMem_401437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401437 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401437)
  store %struct.Memory* %call_401437, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 40143a	 Bytes: 3
  %loadMem_40143a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143a)
  store %struct.Memory* %call_40143a, %struct.Memory** %MEMORY

  ; Code: subl %eax, %esi	 RIP: 40143d	 Bytes: 2
  %loadMem_40143d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143d = call %struct.Memory* @routine_subl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143d)
  store %struct.Memory* %call_40143d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 40143f	 Bytes: 3
  %loadMem_40143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143f = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143f)
  store %struct.Memory* %call_40143f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401442	 Bytes: 4
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401442 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401442)
  store %struct.Memory* %call_401442, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401446	 Bytes: 4
  %loadMem_401446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401446 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401446)
  store %struct.Memory* %call_401446, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40144a	 Bytes: 5
  %loadMem_40144a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144a)
  store %struct.Memory* %call_40144a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40144f	 Bytes: 5
  %loadMem_40144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144f)
  store %struct.Memory* %call_40144f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401454	 Bytes: 4
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401454 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401454)
  store %struct.Memory* %call_401454, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401458	 Bytes: 3
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401458 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401458)
  store %struct.Memory* %call_401458, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40145b	 Bytes: 3
  %loadMem_40145b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145b)
  store %struct.Memory* %call_40145b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40145e	 Bytes: 3
  %loadMem_40145e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145e)
  store %struct.Memory* %call_40145e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401461	 Bytes: 5
  %loadMem_401461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401461 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401461)
  store %struct.Memory* %call_401461, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401466	 Bytes: 5
  %loadMem_401466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401466 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401466)
  store %struct.Memory* %call_401466, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40146b	 Bytes: 4
  %loadMem_40146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146b)
  store %struct.Memory* %call_40146b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40146f	 Bytes: 4
  %loadMem_40146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146f)
  store %struct.Memory* %call_40146f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401473	 Bytes: 5
  %loadMem_401473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401473 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401473)
  store %struct.Memory* %call_401473, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401478	 Bytes: 5
  %loadMem_401478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401478 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401478)
  store %struct.Memory* %call_401478, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40147d	 Bytes: 4
  %loadMem_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147d)
  store %struct.Memory* %call_40147d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401481	 Bytes: 3
  %loadMem_401481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401481 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401481)
  store %struct.Memory* %call_401481, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401484	 Bytes: 3
  %loadMem_401484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401484 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401484)
  store %struct.Memory* %call_401484, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401487	 Bytes: 3
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401487 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401487)
  store %struct.Memory* %call_401487, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40148a	 Bytes: 5
  %loadMem_40148a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148a)
  store %struct.Memory* %call_40148a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40148f	 Bytes: 5
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148f)
  store %struct.Memory* %call_40148f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401494	 Bytes: 5
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401494 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401494)
  store %struct.Memory* %call_401494, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401499	 Bytes: 4
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401499 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401499)
  store %struct.Memory* %call_401499, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40149d	 Bytes: 4
  %loadMem_40149d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149d)
  store %struct.Memory* %call_40149d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014a1	 Bytes: 5
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a1 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a1)
  store %struct.Memory* %call_4014a1, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4014a6	 Bytes: 5
  %loadMem_4014a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a6 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a6)
  store %struct.Memory* %call_4014a6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014ab	 Bytes: 4
  %loadMem_4014ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ab = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ab)
  store %struct.Memory* %call_4014ab, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4014af	 Bytes: 3
  %loadMem_4014af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014af = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014af)
  store %struct.Memory* %call_4014af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4014b2	 Bytes: 3
  %loadMem_4014b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b2)
  store %struct.Memory* %call_4014b2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4014b5	 Bytes: 3
  %loadMem_4014b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b5 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b5)
  store %struct.Memory* %call_4014b5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014b8	 Bytes: 5
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b8 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b8)
  store %struct.Memory* %call_4014b8, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 4014bd	 Bytes: 5
  %loadMem_4014bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bd = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bd)
  store %struct.Memory* %call_4014bd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014c2	 Bytes: 4
  %loadMem_4014c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c2)
  store %struct.Memory* %call_4014c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4014c6	 Bytes: 4
  %loadMem_4014c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c6)
  store %struct.Memory* %call_4014c6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014ca	 Bytes: 5
  %loadMem_4014ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ca = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ca)
  store %struct.Memory* %call_4014ca, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4014cf	 Bytes: 5
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cf = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cf)
  store %struct.Memory* %call_4014cf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014d4	 Bytes: 4
  %loadMem_4014d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d4)
  store %struct.Memory* %call_4014d4, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4014d8	 Bytes: 3
  %loadMem_4014d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d8)
  store %struct.Memory* %call_4014d8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4014db	 Bytes: 3
  %loadMem_4014db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014db = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014db)
  store %struct.Memory* %call_4014db, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4014de	 Bytes: 3
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014de = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014de)
  store %struct.Memory* %call_4014de, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4014e1	 Bytes: 5
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e1 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e1)
  store %struct.Memory* %call_4014e1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4014e6	 Bytes: 3
  %loadMem_4014e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e6)
  store %struct.Memory* %call_4014e6, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 4014e9	 Bytes: 3
  %loadMem_4014e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e9 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e9)
  store %struct.Memory* %call_4014e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4014ec	 Bytes: 3
  %loadMem_4014ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ec = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ec)
  store %struct.Memory* %call_4014ec, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4014ef	 Bytes: 3
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ef = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ef)
  store %struct.Memory* %call_4014ef, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4014f2	 Bytes: 3
  %loadMem_4014f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f2 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f2)
  store %struct.Memory* %call_4014f2, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 4014f5	 Bytes: 3
  %loadMem_4014f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f5 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f5)
  store %struct.Memory* %call_4014f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4014f8	 Bytes: 3
  %loadMem_4014f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f8 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f8)
  store %struct.Memory* %call_4014f8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4014fb	 Bytes: 4
  %loadMem_4014fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fb)
  store %struct.Memory* %call_4014fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4014ff	 Bytes: 4
  %loadMem_4014ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ff = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ff)
  store %struct.Memory* %call_4014ff, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401503	 Bytes: 5
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401503 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401503)
  store %struct.Memory* %call_401503, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401508	 Bytes: 5
  %loadMem_401508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401508 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401508)
  store %struct.Memory* %call_401508, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40150d	 Bytes: 4
  %loadMem_40150d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150d)
  store %struct.Memory* %call_40150d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401511	 Bytes: 3
  %loadMem_401511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401511 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401511)
  store %struct.Memory* %call_401511, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401514	 Bytes: 3
  %loadMem_401514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401514 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401514)
  store %struct.Memory* %call_401514, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401517	 Bytes: 3
  %loadMem_401517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401517 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401517)
  store %struct.Memory* %call_401517, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40151a	 Bytes: 5
  %loadMem_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151a)
  store %struct.Memory* %call_40151a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 40151f	 Bytes: 5
  %loadMem_40151f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151f)
  store %struct.Memory* %call_40151f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401524	 Bytes: 4
  %loadMem_401524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401524 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401524)
  store %struct.Memory* %call_401524, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401528	 Bytes: 4
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401528 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401528)
  store %struct.Memory* %call_401528, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40152c	 Bytes: 5
  %loadMem_40152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152c = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152c)
  store %struct.Memory* %call_40152c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401531	 Bytes: 5
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401536	 Bytes: 4
  %loadMem_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401536 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401536)
  store %struct.Memory* %call_401536, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40153a	 Bytes: 3
  %loadMem_40153a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153a)
  store %struct.Memory* %call_40153a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40153d	 Bytes: 3
  %loadMem_40153d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153d)
  store %struct.Memory* %call_40153d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401540	 Bytes: 3
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401540 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401540)
  store %struct.Memory* %call_401540, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401543	 Bytes: 5
  %loadMem_401543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401543 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401543)
  store %struct.Memory* %call_401543, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401548	 Bytes: 5
  %loadMem_401548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401548 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401548)
  store %struct.Memory* %call_401548, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 40154d	 Bytes: 5
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154d = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154d)
  store %struct.Memory* %call_40154d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401552	 Bytes: 4
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401552 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401552)
  store %struct.Memory* %call_401552, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401556	 Bytes: 4
  %loadMem_401556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401556 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401556)
  store %struct.Memory* %call_401556, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40155a	 Bytes: 5
  %loadMem_40155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155a)
  store %struct.Memory* %call_40155a, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 40155f	 Bytes: 5
  %loadMem_40155f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155f = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155f)
  store %struct.Memory* %call_40155f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401564	 Bytes: 4
  %loadMem_401564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401564 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401564)
  store %struct.Memory* %call_401564, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 401568	 Bytes: 3
  %loadMem_401568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401568 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401568)
  store %struct.Memory* %call_401568, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40156b	 Bytes: 3
  %loadMem_40156b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156b)
  store %struct.Memory* %call_40156b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40156e	 Bytes: 3
  %loadMem_40156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156e)
  store %struct.Memory* %call_40156e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401571	 Bytes: 5
  %loadMem_401571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401571 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401571)
  store %struct.Memory* %call_401571, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401576	 Bytes: 5
  %loadMem_401576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401576 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401576)
  store %struct.Memory* %call_401576, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40157b	 Bytes: 4
  %loadMem_40157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157b)
  store %struct.Memory* %call_40157b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40157f	 Bytes: 4
  %loadMem_40157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157f)
  store %struct.Memory* %call_40157f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401583	 Bytes: 5
  %loadMem_401583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401583 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401583)
  store %struct.Memory* %call_401583, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401588	 Bytes: 5
  %loadMem_401588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401588 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401588)
  store %struct.Memory* %call_401588, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40158d	 Bytes: 4
  %loadMem_40158d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158d)
  store %struct.Memory* %call_40158d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401591	 Bytes: 3
  %loadMem_401591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401591 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401591)
  store %struct.Memory* %call_401591, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401594	 Bytes: 3
  %loadMem_401594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401594 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401594)
  store %struct.Memory* %call_401594, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401597	 Bytes: 3
  %loadMem_401597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401597 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401597)
  store %struct.Memory* %call_401597, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40159a	 Bytes: 5
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159a)
  store %struct.Memory* %call_40159a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40159f	 Bytes: 3
  %loadMem_40159f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159f)
  store %struct.Memory* %call_40159f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015a2	 Bytes: 3
  %loadMem_4015a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a2)
  store %struct.Memory* %call_4015a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4015a5	 Bytes: 3
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a5 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a5)
  store %struct.Memory* %call_4015a5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40129d	 RIP: 4015a8	 Bytes: 5
  %loadMem_4015a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a8 = call %struct.Memory* @routine_jmpq_.L_40129d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a8, i64 -779, i64 5)
  store %struct.Memory* %call_4015a8, %struct.Memory** %MEMORY

  br label %block_.L_40129d

  ; Code: .L_4015ad:	 RIP: 4015ad	 Bytes: 0
block_.L_4015ad:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4015ad	 Bytes: 3
  %loadMem_4015ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ad = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ad)
  store %struct.Memory* %call_4015ad, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4015b0	 Bytes: 3
  %loadMem_4015b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b0)
  store %struct.Memory* %call_4015b0, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 4015b3	 Bytes: 3
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b3 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b3)
  store %struct.Memory* %call_4015b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4015b6	 Bytes: 4
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b6)
  store %struct.Memory* %call_4015b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4015ba	 Bytes: 4
  %loadMem_4015ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ba = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ba)
  store %struct.Memory* %call_4015ba, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4015be	 Bytes: 3
  %loadMem_4015be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015be = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015be)
  store %struct.Memory* %call_4015be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4015c1	 Bytes: 3
  %loadMem_4015c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c1 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c1)
  store %struct.Memory* %call_4015c1, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4015c4	 Bytes: 3
  %loadMem_4015c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c4)
  store %struct.Memory* %call_4015c4, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %eax	 RIP: 4015c7	 Bytes: 3
  %loadMem_4015c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c7 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c7)
  store %struct.Memory* %call_4015c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4015ca	 Bytes: 3
  %loadMem_4015ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ca = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ca)
  store %struct.Memory* %call_4015ca, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4015cd	 Bytes: 4
  %loadMem_4015cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cd)
  store %struct.Memory* %call_4015cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4015d1	 Bytes: 4
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d1)
  store %struct.Memory* %call_4015d1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4015d5	 Bytes: 5
  %loadMem_4015d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d5 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d5)
  store %struct.Memory* %call_4015d5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4015da	 Bytes: 5
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015da = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015da)
  store %struct.Memory* %call_4015da, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4015df	 Bytes: 4
  %loadMem_4015df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015df = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015df)
  store %struct.Memory* %call_4015df, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4015e3	 Bytes: 3
  %loadMem_4015e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e3)
  store %struct.Memory* %call_4015e3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4015e6	 Bytes: 3
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4015e9	 Bytes: 3
  %loadMem_4015e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e9 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e9)
  store %struct.Memory* %call_4015e9, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4015ec	 Bytes: 5
  %loadMem_4015ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ec = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ec)
  store %struct.Memory* %call_4015ec, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4015f1	 Bytes: 5
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f1)
  store %struct.Memory* %call_4015f1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4015f6	 Bytes: 4
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f6)
  store %struct.Memory* %call_4015f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4015fa	 Bytes: 4
  %loadMem_4015fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fa = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fa)
  store %struct.Memory* %call_4015fa, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4015fe	 Bytes: 5
  %loadMem_4015fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fe = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fe)
  store %struct.Memory* %call_4015fe, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401603	 Bytes: 5
  %loadMem_401603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401603 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401603)
  store %struct.Memory* %call_401603, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401608	 Bytes: 4
  %loadMem_401608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401608 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401608)
  store %struct.Memory* %call_401608, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40160c	 Bytes: 3
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160c)
  store %struct.Memory* %call_40160c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40160f	 Bytes: 3
  %loadMem_40160f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160f)
  store %struct.Memory* %call_40160f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401612	 Bytes: 3
  %loadMem_401612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401612 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401612)
  store %struct.Memory* %call_401612, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401615	 Bytes: 5
  %loadMem_401615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401615 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401615)
  store %struct.Memory* %call_401615, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40161a	 Bytes: 5
  %loadMem_40161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161a)
  store %struct.Memory* %call_40161a, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 40161f	 Bytes: 5
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401624	 Bytes: 4
  %loadMem_401624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401624 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401624)
  store %struct.Memory* %call_401624, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401628	 Bytes: 4
  %loadMem_401628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401628 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401628)
  store %struct.Memory* %call_401628, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40162c	 Bytes: 5
  %loadMem_40162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162c)
  store %struct.Memory* %call_40162c, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401631	 Bytes: 5
  %loadMem_401631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401631 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401631)
  store %struct.Memory* %call_401631, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401636	 Bytes: 4
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401636 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401636)
  store %struct.Memory* %call_401636, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40163a	 Bytes: 3
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163a)
  store %struct.Memory* %call_40163a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40163d	 Bytes: 3
  %loadMem_40163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163d)
  store %struct.Memory* %call_40163d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401640	 Bytes: 3
  %loadMem_401640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401640 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401640)
  store %struct.Memory* %call_401640, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401643	 Bytes: 5
  %loadMem_401643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401643 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401643)
  store %struct.Memory* %call_401643, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401648	 Bytes: 5
  %loadMem_401648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401648 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401648)
  store %struct.Memory* %call_401648, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40164d	 Bytes: 4
  %loadMem_40164d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164d)
  store %struct.Memory* %call_40164d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401651	 Bytes: 4
  %loadMem_401651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401651 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401651)
  store %struct.Memory* %call_401651, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401655	 Bytes: 5
  %loadMem_401655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401655 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401655)
  store %struct.Memory* %call_401655, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40165a	 Bytes: 5
  %loadMem_40165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165a)
  store %struct.Memory* %call_40165a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40165f	 Bytes: 4
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165f)
  store %struct.Memory* %call_40165f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401663	 Bytes: 3
  %loadMem_401663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401663 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401663)
  store %struct.Memory* %call_401663, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401666	 Bytes: 3
  %loadMem_401666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401666 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401666)
  store %struct.Memory* %call_401666, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401669	 Bytes: 3
  %loadMem_401669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401669 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401669)
  store %struct.Memory* %call_401669, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40166c	 Bytes: 5
  %loadMem_40166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166c)
  store %struct.Memory* %call_40166c, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 401671	 Bytes: 3
  %loadMem_401671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401671 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401671)
  store %struct.Memory* %call_401671, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401674	 Bytes: 3
  %loadMem_401674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401674 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401674)
  store %struct.Memory* %call_401674, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 401677	 Bytes: 3
  %loadMem_401677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401677 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401677)
  store %struct.Memory* %call_401677, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40128a	 RIP: 40167a	 Bytes: 5
  %loadMem_40167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167a = call %struct.Memory* @routine_jmpq_.L_40128a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167a, i64 -1008, i64 5)
  store %struct.Memory* %call_40167a, %struct.Memory** %MEMORY

  br label %block_.L_40128a

  ; Code: .L_40167f:	 RIP: 40167f	 Bytes: 0
block_.L_40167f:

  ; Code: jmpq .L_401852	 RIP: 40167f	 Bytes: 5
  %loadMem_40167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167f = call %struct.Memory* @routine_jmpq_.L_401852(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167f, i64 467, i64 5)
  store %struct.Memory* %call_40167f, %struct.Memory** %MEMORY

  br label %block_.L_401852

  ; Code: .L_401684:	 RIP: 401684	 Bytes: 0
block_.L_401684:

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 401684	 Bytes: 7
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401684 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401684)
  store %struct.Memory* %call_401684, %struct.Memory** %MEMORY

  ; Code: .L_40168b:	 RIP: 40168b	 Bytes: 0
  br label %block_.L_40168b
block_.L_40168b:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40168b	 Bytes: 3
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168b)
  store %struct.Memory* %call_40168b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 40168e	 Bytes: 3
  %loadMem_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168e = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168e)
  store %struct.Memory* %call_40168e, %struct.Memory** %MEMORY

  ; Code: jge .L_40184d	 RIP: 401691	 Bytes: 6
  %loadMem_401691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401691 = call %struct.Memory* @routine_jge_.L_40184d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401691, i8* %BRANCH_TAKEN, i64 444, i64 6, i64 6)
  store %struct.Memory* %call_401691, %struct.Memory** %MEMORY

  %loadBr_401691 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401691 = icmp eq i8 %loadBr_401691, 1
  br i1 %cmpBr_401691, label %block_.L_40184d, label %block_401697

block_401697:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401697	 Bytes: 7
  %loadMem_401697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401697 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401697)
  store %struct.Memory* %call_401697, %struct.Memory** %MEMORY

  ; Code: .L_40169e:	 RIP: 40169e	 Bytes: 0
  br label %block_.L_40169e
block_.L_40169e:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40169e	 Bytes: 3
  %loadMem_40169e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169e)
  store %struct.Memory* %call_40169e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 4016a1	 Bytes: 3
  %loadMem_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a1 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a1)
  store %struct.Memory* %call_4016a1, %struct.Memory** %MEMORY

  ; Code: jge .L_40183a	 RIP: 4016a4	 Bytes: 6
  %loadMem_4016a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a4 = call %struct.Memory* @routine_jge_.L_40183a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a4, i8* %BRANCH_TAKEN, i64 406, i64 6, i64 6)
  store %struct.Memory* %call_4016a4, %struct.Memory** %MEMORY

  %loadBr_4016a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4016a4 = icmp eq i8 %loadBr_4016a4, 1
  br i1 %cmpBr_4016a4, label %block_.L_40183a, label %block_4016aa

block_4016aa:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4016aa	 Bytes: 3
  %loadMem_4016aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016aa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016aa)
  store %struct.Memory* %call_4016aa, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4016ad	 Bytes: 3
  %loadMem_4016ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ad = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ad)
  store %struct.Memory* %call_4016ad, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016b0	 Bytes: 4
  %loadMem_4016b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b0)
  store %struct.Memory* %call_4016b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4016b4	 Bytes: 4
  %loadMem_4016b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b4)
  store %struct.Memory* %call_4016b4, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4016b8	 Bytes: 3
  %loadMem_4016b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b8 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b8)
  store %struct.Memory* %call_4016b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4016bb	 Bytes: 3
  %loadMem_4016bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bb = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bb)
  store %struct.Memory* %call_4016bb, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4016be	 Bytes: 3
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016be = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016be)
  store %struct.Memory* %call_4016be, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4016c1	 Bytes: 3
  %loadMem_4016c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c1 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c1)
  store %struct.Memory* %call_4016c1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016c4	 Bytes: 4
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c4)
  store %struct.Memory* %call_4016c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4016c8	 Bytes: 4
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 4016cc	 Bytes: 3
  %loadMem_4016cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cc = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cc)
  store %struct.Memory* %call_4016cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4016cf	 Bytes: 3
  %loadMem_4016cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cf = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cf)
  store %struct.Memory* %call_4016cf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4016d2	 Bytes: 4
  %loadMem_4016d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d2)
  store %struct.Memory* %call_4016d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4016d6	 Bytes: 4
  %loadMem_4016d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d6)
  store %struct.Memory* %call_4016d6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4016da	 Bytes: 5
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4016df	 Bytes: 5
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016df = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016df)
  store %struct.Memory* %call_4016df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4016e4	 Bytes: 4
  %loadMem_4016e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e4)
  store %struct.Memory* %call_4016e4, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4016e8	 Bytes: 3
  %loadMem_4016e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e8 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e8)
  store %struct.Memory* %call_4016e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4016eb	 Bytes: 3
  %loadMem_4016eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016eb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016eb)
  store %struct.Memory* %call_4016eb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4016ee	 Bytes: 3
  %loadMem_4016ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ee = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ee)
  store %struct.Memory* %call_4016ee, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4016f1	 Bytes: 5
  %loadMem_4016f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f1 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f1)
  store %struct.Memory* %call_4016f1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4016f6	 Bytes: 5
  %loadMem_4016f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f6)
  store %struct.Memory* %call_4016f6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4016fb	 Bytes: 4
  %loadMem_4016fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fb)
  store %struct.Memory* %call_4016fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4016ff	 Bytes: 4
  %loadMem_4016ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ff = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ff)
  store %struct.Memory* %call_4016ff, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401703	 Bytes: 5
  %loadMem_401703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401703 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401703)
  store %struct.Memory* %call_401703, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401708	 Bytes: 5
  %loadMem_401708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401708 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401708)
  store %struct.Memory* %call_401708, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40170d	 Bytes: 4
  %loadMem_40170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170d)
  store %struct.Memory* %call_40170d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401711	 Bytes: 3
  %loadMem_401711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401711 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401711)
  store %struct.Memory* %call_401711, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401714	 Bytes: 3
  %loadMem_401714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401714 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401714)
  store %struct.Memory* %call_401714, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401717	 Bytes: 3
  %loadMem_401717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401717 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401717)
  store %struct.Memory* %call_401717, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40171a	 Bytes: 5
  %loadMem_40171a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171a = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171a)
  store %struct.Memory* %call_40171a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 40171f	 Bytes: 5
  %loadMem_40171f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171f)
  store %struct.Memory* %call_40171f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401724	 Bytes: 5
  %loadMem_401724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401724 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401724)
  store %struct.Memory* %call_401724, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401729	 Bytes: 4
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40172d	 Bytes: 4
  %loadMem_40172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172d)
  store %struct.Memory* %call_40172d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401731	 Bytes: 5
  %loadMem_401731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401731 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401731)
  store %struct.Memory* %call_401731, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401736	 Bytes: 5
  %loadMem_401736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401736 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401736)
  store %struct.Memory* %call_401736, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40173b	 Bytes: 4
  %loadMem_40173b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173b)
  store %struct.Memory* %call_40173b, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40173f	 Bytes: 3
  %loadMem_40173f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173f)
  store %struct.Memory* %call_40173f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401742	 Bytes: 3
  %loadMem_401742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401742 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401742)
  store %struct.Memory* %call_401742, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401745	 Bytes: 3
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401748	 Bytes: 5
  %loadMem_401748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401748 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401748)
  store %struct.Memory* %call_401748, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 40174d	 Bytes: 5
  %loadMem_40174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174d = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174d)
  store %struct.Memory* %call_40174d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401752	 Bytes: 4
  %loadMem_401752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401752 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401752)
  store %struct.Memory* %call_401752, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 401756	 Bytes: 4
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401756 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401756)
  store %struct.Memory* %call_401756, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40175a	 Bytes: 5
  %loadMem_40175a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175a)
  store %struct.Memory* %call_40175a, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40175f	 Bytes: 5
  %loadMem_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175f = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175f)
  store %struct.Memory* %call_40175f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401764	 Bytes: 4
  %loadMem_401764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401764 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401764)
  store %struct.Memory* %call_401764, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 401768	 Bytes: 3
  %loadMem_401768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401768 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401768)
  store %struct.Memory* %call_401768, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40176b	 Bytes: 3
  %loadMem_40176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176b)
  store %struct.Memory* %call_40176b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40176e	 Bytes: 3
  %loadMem_40176e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176e)
  store %struct.Memory* %call_40176e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401771	 Bytes: 5
  %loadMem_401771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401771 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401771)
  store %struct.Memory* %call_401771, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 401776	 Bytes: 3
  %loadMem_401776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401776 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401776)
  store %struct.Memory* %call_401776, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 401779	 Bytes: 3
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401779 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401779)
  store %struct.Memory* %call_401779, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 40177c	 Bytes: 3
  %loadMem_40177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177c)
  store %struct.Memory* %call_40177c, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40177f	 Bytes: 3
  %loadMem_40177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177f)
  store %struct.Memory* %call_40177f, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 401782	 Bytes: 3
  %loadMem_401782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401782 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401782)
  store %struct.Memory* %call_401782, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 401785	 Bytes: 3
  %loadMem_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401785 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401785)
  store %struct.Memory* %call_401785, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401788	 Bytes: 4
  %loadMem_401788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401788 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401788)
  store %struct.Memory* %call_401788, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40178c	 Bytes: 4
  %loadMem_40178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178c)
  store %struct.Memory* %call_40178c, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 401790	 Bytes: 5
  %loadMem_401790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401790 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401790)
  store %struct.Memory* %call_401790, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401795	 Bytes: 5
  %loadMem_401795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401795 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401795)
  store %struct.Memory* %call_401795, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40179a	 Bytes: 4
  %loadMem_40179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179a)
  store %struct.Memory* %call_40179a, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40179e	 Bytes: 3
  %loadMem_40179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179e = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179e)
  store %struct.Memory* %call_40179e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017a1	 Bytes: 3
  %loadMem_4017a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a1)
  store %struct.Memory* %call_4017a1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4017a4	 Bytes: 3
  %loadMem_4017a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a4 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a4)
  store %struct.Memory* %call_4017a4, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017a7	 Bytes: 5
  %loadMem_4017a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a7 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a7)
  store %struct.Memory* %call_4017a7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4017ac	 Bytes: 5
  %loadMem_4017ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ac = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ac)
  store %struct.Memory* %call_4017ac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017b1	 Bytes: 4
  %loadMem_4017b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b1)
  store %struct.Memory* %call_4017b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4017b5	 Bytes: 4
  %loadMem_4017b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b5)
  store %struct.Memory* %call_4017b5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017b9	 Bytes: 5
  %loadMem_4017b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b9)
  store %struct.Memory* %call_4017b9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4017be	 Bytes: 5
  %loadMem_4017be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017be = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017be)
  store %struct.Memory* %call_4017be, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017c3	 Bytes: 4
  %loadMem_4017c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c3)
  store %struct.Memory* %call_4017c3, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4017c7	 Bytes: 3
  %loadMem_4017c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c7 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c7)
  store %struct.Memory* %call_4017c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017ca	 Bytes: 3
  %loadMem_4017ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ca)
  store %struct.Memory* %call_4017ca, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4017cd	 Bytes: 3
  %loadMem_4017cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cd)
  store %struct.Memory* %call_4017cd, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4017d0	 Bytes: 5
  %loadMem_4017d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d0 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d0)
  store %struct.Memory* %call_4017d0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4017d5	 Bytes: 5
  %loadMem_4017d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d5)
  store %struct.Memory* %call_4017d5, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4017da	 Bytes: 5
  %loadMem_4017da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017da = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017da)
  store %struct.Memory* %call_4017da, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017df	 Bytes: 4
  %loadMem_4017df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017df = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017df)
  store %struct.Memory* %call_4017df, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4017e3	 Bytes: 4
  %loadMem_4017e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e3 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e3)
  store %struct.Memory* %call_4017e3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4017e7	 Bytes: 5
  %loadMem_4017e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e7 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e7)
  store %struct.Memory* %call_4017e7, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4017ec	 Bytes: 5
  %loadMem_4017ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ec = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ec)
  store %struct.Memory* %call_4017ec, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4017f1	 Bytes: 4
  %loadMem_4017f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f1)
  store %struct.Memory* %call_4017f1, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4017f5	 Bytes: 3
  %loadMem_4017f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f5 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f5)
  store %struct.Memory* %call_4017f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017f8	 Bytes: 3
  %loadMem_4017f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f8)
  store %struct.Memory* %call_4017f8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4017fb	 Bytes: 3
  %loadMem_4017fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fb = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fb)
  store %struct.Memory* %call_4017fb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4017fe	 Bytes: 5
  %loadMem_4017fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fe = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fe)
  store %struct.Memory* %call_4017fe, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401803	 Bytes: 5
  %loadMem_401803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401803 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401803)
  store %struct.Memory* %call_401803, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401808	 Bytes: 4
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401808 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401808)
  store %struct.Memory* %call_401808, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40180c	 Bytes: 4
  %loadMem_40180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180c)
  store %struct.Memory* %call_40180c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401810	 Bytes: 5
  %loadMem_401810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401810 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401810)
  store %struct.Memory* %call_401810, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401815	 Bytes: 5
  %loadMem_401815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401815 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401815)
  store %struct.Memory* %call_401815, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40181a	 Bytes: 4
  %loadMem_40181a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181a)
  store %struct.Memory* %call_40181a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40181e	 Bytes: 3
  %loadMem_40181e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181e)
  store %struct.Memory* %call_40181e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401821	 Bytes: 3
  %loadMem_401821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401821 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401821)
  store %struct.Memory* %call_401821, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 401824	 Bytes: 3
  %loadMem_401824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401824 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401824)
  store %struct.Memory* %call_401824, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 401827	 Bytes: 5
  %loadMem_401827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401827 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401827)
  store %struct.Memory* %call_401827, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40182c	 Bytes: 3
  %loadMem_40182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182c)
  store %struct.Memory* %call_40182c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40182f	 Bytes: 3
  %loadMem_40182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182f)
  store %struct.Memory* %call_40182f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401832	 Bytes: 3
  %loadMem_401832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401832 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401832)
  store %struct.Memory* %call_401832, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40169e	 RIP: 401835	 Bytes: 5
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401835 = call %struct.Memory* @routine_jmpq_.L_40169e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401835, i64 -407, i64 5)
  store %struct.Memory* %call_401835, %struct.Memory** %MEMORY

  br label %block_.L_40169e

  ; Code: .L_40183a:	 RIP: 40183a	 Bytes: 0
block_.L_40183a:

  ; Code: jmpq .L_40183f	 RIP: 40183a	 Bytes: 5
  %loadMem_40183a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183a = call %struct.Memory* @routine_jmpq_.L_40183f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183a, i64 5, i64 5)
  store %struct.Memory* %call_40183a, %struct.Memory** %MEMORY

  br label %block_.L_40183f

  ; Code: .L_40183f:	 RIP: 40183f	 Bytes: 0
block_.L_40183f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40183f	 Bytes: 3
  %loadMem_40183f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183f)
  store %struct.Memory* %call_40183f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401842	 Bytes: 3
  %loadMem_401842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401842 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401842)
  store %struct.Memory* %call_401842, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 401845	 Bytes: 3
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401845 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401845)
  store %struct.Memory* %call_401845, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40168b	 RIP: 401848	 Bytes: 5
  %loadMem_401848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401848 = call %struct.Memory* @routine_jmpq_.L_40168b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401848, i64 -445, i64 5)
  store %struct.Memory* %call_401848, %struct.Memory** %MEMORY

  br label %block_.L_40168b

  ; Code: .L_40184d:	 RIP: 40184d	 Bytes: 0
block_.L_40184d:

  ; Code: jmpq .L_401852	 RIP: 40184d	 Bytes: 5
  %loadMem_40184d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184d = call %struct.Memory* @routine_jmpq_.L_401852(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184d, i64 5, i64 5)
  store %struct.Memory* %call_40184d, %struct.Memory** %MEMORY

  br label %block_.L_401852

  ; Code: .L_401852:	 RIP: 401852	 Bytes: 0
block_.L_401852:

  ; Code: popq %rbp	 RIP: 401852	 Bytes: 1
  %loadMem_401852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401852 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401852)
  store %struct.Memory* %call_401852, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 401853	 Bytes: 1
  %loadMem_401853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401853 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401853)
  store %struct.Memory* %call_401853, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_401853
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_40126b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %10 [
    i5 0, label %43
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 32
  %9 = ashr i64 %8, 33
  br label %19

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 31
  %12 = add  i64 %11, -1
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = ashr i64 %14, %12
  %16 = icmp ne i8 0, 0
  %17 = zext i1 %16 to i8
  %18 = lshr i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %10, %7
  %20 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %21 = phi i64 [ %18, %10 ], [ %9, %7 ]
  %22 = phi i8 [ %17, %10 ], [ 0, %7 ]
  %23 = phi i64 [ %15, %10 ], [ %3, %7 ]
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = trunc i64 %21 to i32
  %27 = and i64 %21, 4294967295
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %25, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %30 = and i32 %26, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %29, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %37 = icmp eq i32 %26, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
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


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40125d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %9, %6
  %12 = icmp ult i32 %9, %8
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #22
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %8, %6
  %23 = xor i32 %22, %9
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %9, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %6, 31
  %35 = lshr i32 %8, 31
  %36 = xor i32 %31, %34
  %37 = xor i32 %31, %35
  %38 = add   i32 %36, %37
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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


define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_jmpq_.L_401225(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_401206(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jne_.L_401684(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jge_.L_40167f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4015ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
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


define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




























































































define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






















































































































































































define %struct.Memory* @routine_jmpq_.L_40129d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_40128a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401852(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jge_.L_40184d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_40183a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












































































































































































































define %struct.Memory* @routine_jmpq_.L_40169e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40183f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40168b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

