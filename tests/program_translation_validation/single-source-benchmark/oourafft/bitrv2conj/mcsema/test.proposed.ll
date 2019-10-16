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


; Data Access Globals


define %struct.Memory* @bitrv2conj(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .bitrv2conj:	 RIP: 401c00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 401c00	 Bytes: 1
  %loadMem_401c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c00)
  store %struct.Memory* %call_401c00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 401c01	 Bytes: 3
  %loadMem_401c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c01)
  store %struct.Memory* %call_401c01, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 401c04	 Bytes: 3
  %loadMem_401c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c04 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c04)
  store %struct.Memory* %call_401c04, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 401c07	 Bytes: 4
  %loadMem_401c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c07 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c07)
  store %struct.Memory* %call_401c07, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 401c0b	 Bytes: 4
  %loadMem_401c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0b = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0b)
  store %struct.Memory* %call_401c0b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 401c0f	 Bytes: 4
  %loadMem_401c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0f)
  store %struct.Memory* %call_401c0f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx)	 RIP: 401c13	 Bytes: 6
  %loadMem_401c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c13 = call %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c13)
  store %struct.Memory* %call_401c13, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 401c19	 Bytes: 3
  %loadMem_401c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c19 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c19)
  store %struct.Memory* %call_401c19, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 401c1c	 Bytes: 3
  %loadMem_401c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1c = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1c)
  store %struct.Memory* %call_401c1c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 401c1f	 Bytes: 7
  %loadMem_401c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1f = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1f)
  store %struct.Memory* %call_401c1f, %struct.Memory** %MEMORY

  ; Code: .L_401c26:	 RIP: 401c26	 Bytes: 0
  br label %block_.L_401c26
block_.L_401c26:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c26	 Bytes: 3
  %loadMem_401c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c26 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c26)
  store %struct.Memory* %call_401c26, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401c29	 Bytes: 3
  %loadMem_401c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c29 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c29)
  store %struct.Memory* %call_401c29, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401c2c	 Bytes: 3
  %loadMem_401c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2c = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2c)
  store %struct.Memory* %call_401c2c, %struct.Memory** %MEMORY

  ; Code: jge .L_401c8b	 RIP: 401c2f	 Bytes: 6
  %loadMem_401c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2f = call %struct.Memory* @routine_jge_.L_401c8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2f, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_401c2f, %struct.Memory** %MEMORY

  %loadBr_401c2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c2f = icmp eq i8 %loadBr_401c2f, 1
  br i1 %cmpBr_401c2f, label %block_.L_401c8b, label %block_401c35

block_401c35:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401c35	 Bytes: 3
  %loadMem_401c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c35 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c35)
  store %struct.Memory* %call_401c35, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 401c38	 Bytes: 3
  %loadMem_401c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c38 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c38)
  store %struct.Memory* %call_401c38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 401c3b	 Bytes: 3
  %loadMem_401c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3b = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3b)
  store %struct.Memory* %call_401c3b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401c3e	 Bytes: 7
  %loadMem_401c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3e)
  store %struct.Memory* %call_401c3e, %struct.Memory** %MEMORY

  ; Code: .L_401c45:	 RIP: 401c45	 Bytes: 0
  br label %block_.L_401c45
block_.L_401c45:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401c45	 Bytes: 3
  %loadMem_401c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c45 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c45)
  store %struct.Memory* %call_401c45, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401c48	 Bytes: 3
  %loadMem_401c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c48 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c48)
  store %struct.Memory* %call_401c48, %struct.Memory** %MEMORY

  ; Code: jge .L_401c7d	 RIP: 401c4b	 Bytes: 6
  %loadMem_401c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4b = call %struct.Memory* @routine_jge_.L_401c7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4b, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_401c4b, %struct.Memory** %MEMORY

  %loadBr_401c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c4b = icmp eq i8 %loadBr_401c4b, 1
  br i1 %cmpBr_401c4b, label %block_.L_401c7d, label %block_401c51

block_401c51:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 401c51	 Bytes: 4
  %loadMem_401c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c51 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c51)
  store %struct.Memory* %call_401c51, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 401c55	 Bytes: 4
  %loadMem_401c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c55 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c55)
  store %struct.Memory* %call_401c55, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 401c59	 Bytes: 3
  %loadMem_401c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c59 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c59)
  store %struct.Memory* %call_401c59, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 401c5c	 Bytes: 3
  %loadMem_401c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5c = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5c)
  store %struct.Memory* %call_401c5c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 401c5f	 Bytes: 4
  %loadMem_401c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5f)
  store %struct.Memory* %call_401c5f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 401c63	 Bytes: 3
  %loadMem_401c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c63 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c63)
  store %struct.Memory* %call_401c63, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 401c66	 Bytes: 3
  %loadMem_401c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c66 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c66)
  store %struct.Memory* %call_401c66, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 401c69	 Bytes: 3
  %loadMem_401c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c69 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c69)
  store %struct.Memory* %call_401c69, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 401c6c	 Bytes: 3
  %loadMem_401c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6c)
  store %struct.Memory* %call_401c6c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401c6f	 Bytes: 3
  %loadMem_401c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6f)
  store %struct.Memory* %call_401c6f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401c72	 Bytes: 3
  %loadMem_401c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c72 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c72)
  store %struct.Memory* %call_401c72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401c75	 Bytes: 3
  %loadMem_401c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c75 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c75)
  store %struct.Memory* %call_401c75, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401c45	 RIP: 401c78	 Bytes: 5
  %loadMem_401c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c78 = call %struct.Memory* @routine_jmpq_.L_401c45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c78, i64 -51, i64 5)
  store %struct.Memory* %call_401c78, %struct.Memory** %MEMORY

  br label %block_.L_401c45

  ; Code: .L_401c7d:	 RIP: 401c7d	 Bytes: 0
block_.L_401c7d:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c7d	 Bytes: 3
  %loadMem_401c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7d)
  store %struct.Memory* %call_401c7d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401c80	 Bytes: 3
  %loadMem_401c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c80 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c80)
  store %struct.Memory* %call_401c80, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 401c83	 Bytes: 3
  %loadMem_401c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c83 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c83)
  store %struct.Memory* %call_401c83, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401c26	 RIP: 401c86	 Bytes: 5
  %loadMem_401c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c86 = call %struct.Memory* @routine_jmpq_.L_401c26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c86, i64 -96, i64 5)
  store %struct.Memory* %call_401c86, %struct.Memory** %MEMORY

  br label %block_.L_401c26

  ; Code: .L_401c8b:	 RIP: 401c8b	 Bytes: 0
block_.L_401c8b:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c8b	 Bytes: 3
  %loadMem_401c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8b)
  store %struct.Memory* %call_401c8b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401c8e	 Bytes: 3
  %loadMem_401c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8e = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8e)
  store %struct.Memory* %call_401c8e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 401c91	 Bytes: 3
  %loadMem_401c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c91 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c91)
  store %struct.Memory* %call_401c91, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c94	 Bytes: 3
  %loadMem_401c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c94 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c94)
  store %struct.Memory* %call_401c94, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401c97	 Bytes: 3
  %loadMem_401c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c97 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c97)
  store %struct.Memory* %call_401c97, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401c9a	 Bytes: 3
  %loadMem_401c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9a = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9a)
  store %struct.Memory* %call_401c9a, %struct.Memory** %MEMORY

  ; Code: jne .L_4021ab	 RIP: 401c9d	 Bytes: 6
  %loadMem_401c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9d = call %struct.Memory* @routine_jne_.L_4021ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9d, i8* %BRANCH_TAKEN, i64 1294, i64 6, i64 6)
  store %struct.Memory* %call_401c9d, %struct.Memory** %MEMORY

  %loadBr_401c9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c9d = icmp eq i8 %loadBr_401c9d, 1
  br i1 %cmpBr_401c9d, label %block_.L_4021ab, label %block_401ca3

block_401ca3:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 401ca3	 Bytes: 7
  %loadMem_401ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca3 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca3)
  store %struct.Memory* %call_401ca3, %struct.Memory** %MEMORY

  ; Code: .L_401caa:	 RIP: 401caa	 Bytes: 0
  br label %block_.L_401caa
block_.L_401caa:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 401caa	 Bytes: 3
  %loadMem_401caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401caa = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401caa)
  store %struct.Memory* %call_401caa, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401cad	 Bytes: 3
  %loadMem_401cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cad = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cad)
  store %struct.Memory* %call_401cad, %struct.Memory** %MEMORY

  ; Code: jge .L_4021a6	 RIP: 401cb0	 Bytes: 6
  %loadMem_401cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb0 = call %struct.Memory* @routine_jge_.L_4021a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb0, i8* %BRANCH_TAKEN, i64 1270, i64 6, i64 6)
  store %struct.Memory* %call_401cb0, %struct.Memory** %MEMORY

  %loadBr_401cb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401cb0 = icmp eq i8 %loadBr_401cb0, 1
  br i1 %cmpBr_401cb0, label %block_.L_4021a6, label %block_401cb6

block_401cb6:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401cb6	 Bytes: 7
  %loadMem_401cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb6 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb6)
  store %struct.Memory* %call_401cb6, %struct.Memory** %MEMORY

  ; Code: .L_401cbd:	 RIP: 401cbd	 Bytes: 0
  br label %block_.L_401cbd
block_.L_401cbd:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401cbd	 Bytes: 3
  %loadMem_401cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbd)
  store %struct.Memory* %call_401cbd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 401cc0	 Bytes: 3
  %loadMem_401cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc0 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc0)
  store %struct.Memory* %call_401cc0, %struct.Memory** %MEMORY

  ; Code: jge .L_40203f	 RIP: 401cc3	 Bytes: 6
  %loadMem_401cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc3 = call %struct.Memory* @routine_jge_.L_40203f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc3, i8* %BRANCH_TAKEN, i64 892, i64 6, i64 6)
  store %struct.Memory* %call_401cc3, %struct.Memory** %MEMORY

  %loadBr_401cc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401cc3 = icmp eq i8 %loadBr_401cc3, 1
  br i1 %cmpBr_401cc3, label %block_.L_40203f, label %block_401cc9

block_401cc9:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 401cc9	 Bytes: 10
  %loadMem_401cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc9 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc9)
  store %struct.Memory* %call_401cc9, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 401cd3	 Bytes: 3
  %loadMem_401cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd3)
  store %struct.Memory* %call_401cd3, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401cd6	 Bytes: 3
  %loadMem_401cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd6 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd6)
  store %struct.Memory* %call_401cd6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 401cd9	 Bytes: 4
  %loadMem_401cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd9)
  store %struct.Memory* %call_401cd9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 401cdd	 Bytes: 4
  %loadMem_401cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdd = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdd)
  store %struct.Memory* %call_401cdd, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 401ce1	 Bytes: 3
  %loadMem_401ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce1 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce1)
  store %struct.Memory* %call_401ce1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401ce4	 Bytes: 3
  %loadMem_401ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce4 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce4)
  store %struct.Memory* %call_401ce4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 401ce7	 Bytes: 3
  %loadMem_401ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce7)
  store %struct.Memory* %call_401ce7, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401cea	 Bytes: 3
  %loadMem_401cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cea = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cea)
  store %struct.Memory* %call_401cea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 401ced	 Bytes: 4
  %loadMem_401ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ced = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ced)
  store %struct.Memory* %call_401ced, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 401cf1	 Bytes: 4
  %loadMem_401cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf1)
  store %struct.Memory* %call_401cf1, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 401cf5	 Bytes: 3
  %loadMem_401cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf5 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf5)
  store %struct.Memory* %call_401cf5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 401cf8	 Bytes: 3
  %loadMem_401cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf8)
  store %struct.Memory* %call_401cf8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401cfb	 Bytes: 4
  %loadMem_401cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfb)
  store %struct.Memory* %call_401cfb, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401cff	 Bytes: 4
  %loadMem_401cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cff = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cff)
  store %struct.Memory* %call_401cff, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d03	 Bytes: 5
  %loadMem_401d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d03 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d03)
  store %struct.Memory* %call_401d03, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401d08	 Bytes: 5
  %loadMem_401d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d08 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d08)
  store %struct.Memory* %call_401d08, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d0d	 Bytes: 4
  %loadMem_401d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0d)
  store %struct.Memory* %call_401d0d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401d11	 Bytes: 3
  %loadMem_401d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d11 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d11)
  store %struct.Memory* %call_401d11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401d14	 Bytes: 3
  %loadMem_401d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d14 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d14)
  store %struct.Memory* %call_401d14, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401d17	 Bytes: 3
  %loadMem_401d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d17 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d17)
  store %struct.Memory* %call_401d17, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d1a	 Bytes: 5
  %loadMem_401d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1a = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1a)
  store %struct.Memory* %call_401d1a, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401d1f	 Bytes: 5
  %loadMem_401d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1f = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1f)
  store %struct.Memory* %call_401d1f, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401d24	 Bytes: 3
  %loadMem_401d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d24 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d24)
  store %struct.Memory* %call_401d24, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401d27	 Bytes: 5
  %loadMem_401d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d27 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d27)
  store %struct.Memory* %call_401d27, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401d2c	 Bytes: 5
  %loadMem_401d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2c)
  store %struct.Memory* %call_401d2c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d31	 Bytes: 4
  %loadMem_401d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d31 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d31)
  store %struct.Memory* %call_401d31, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401d35	 Bytes: 4
  %loadMem_401d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d35 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d35)
  store %struct.Memory* %call_401d35, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d39	 Bytes: 5
  %loadMem_401d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d39 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d39)
  store %struct.Memory* %call_401d39, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401d3e	 Bytes: 5
  %loadMem_401d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3e)
  store %struct.Memory* %call_401d3e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d43	 Bytes: 4
  %loadMem_401d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d43 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d43)
  store %struct.Memory* %call_401d43, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401d47	 Bytes: 3
  %loadMem_401d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d47 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d47)
  store %struct.Memory* %call_401d47, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401d4a	 Bytes: 3
  %loadMem_401d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4a)
  store %struct.Memory* %call_401d4a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401d4d	 Bytes: 3
  %loadMem_401d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4d)
  store %struct.Memory* %call_401d4d, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d50	 Bytes: 5
  %loadMem_401d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d50 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d50)
  store %struct.Memory* %call_401d50, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401d55	 Bytes: 5
  %loadMem_401d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d55 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d55)
  store %struct.Memory* %call_401d55, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401d5a	 Bytes: 3
  %loadMem_401d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5a = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5a)
  store %struct.Memory* %call_401d5a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401d5d	 Bytes: 5
  %loadMem_401d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5d = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5d)
  store %struct.Memory* %call_401d5d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401d62	 Bytes: 5
  %loadMem_401d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d62 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d62)
  store %struct.Memory* %call_401d62, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401d67	 Bytes: 5
  %loadMem_401d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d67 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d67)
  store %struct.Memory* %call_401d67, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d6c	 Bytes: 4
  %loadMem_401d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6c)
  store %struct.Memory* %call_401d6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401d70	 Bytes: 4
  %loadMem_401d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d70 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d70)
  store %struct.Memory* %call_401d70, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401d74	 Bytes: 5
  %loadMem_401d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d74 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d74)
  store %struct.Memory* %call_401d74, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401d79	 Bytes: 5
  %loadMem_401d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d79 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d79)
  store %struct.Memory* %call_401d79, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d7e	 Bytes: 4
  %loadMem_401d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7e)
  store %struct.Memory* %call_401d7e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401d82	 Bytes: 3
  %loadMem_401d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d82 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d82)
  store %struct.Memory* %call_401d82, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401d85	 Bytes: 3
  %loadMem_401d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d85 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d85)
  store %struct.Memory* %call_401d85, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401d88	 Bytes: 3
  %loadMem_401d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d88 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d88)
  store %struct.Memory* %call_401d88, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401d8b	 Bytes: 5
  %loadMem_401d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8b = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8b)
  store %struct.Memory* %call_401d8b, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401d90	 Bytes: 5
  %loadMem_401d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d90 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d90)
  store %struct.Memory* %call_401d90, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d95	 Bytes: 4
  %loadMem_401d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d95 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d95)
  store %struct.Memory* %call_401d95, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401d99	 Bytes: 4
  %loadMem_401d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d99 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d99)
  store %struct.Memory* %call_401d99, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401d9d	 Bytes: 5
  %loadMem_401d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9d = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9d)
  store %struct.Memory* %call_401d9d, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401da2	 Bytes: 5
  %loadMem_401da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da2 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da2)
  store %struct.Memory* %call_401da2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401da7	 Bytes: 4
  %loadMem_401da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da7)
  store %struct.Memory* %call_401da7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401dab	 Bytes: 3
  %loadMem_401dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dab = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dab)
  store %struct.Memory* %call_401dab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401dae	 Bytes: 3
  %loadMem_401dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dae = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dae)
  store %struct.Memory* %call_401dae, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401db1	 Bytes: 3
  %loadMem_401db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db1 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db1)
  store %struct.Memory* %call_401db1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401db4	 Bytes: 5
  %loadMem_401db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db4 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db4)
  store %struct.Memory* %call_401db4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401db9	 Bytes: 3
  %loadMem_401db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db9)
  store %struct.Memory* %call_401db9, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 401dbc	 Bytes: 3
  %loadMem_401dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbc = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbc)
  store %struct.Memory* %call_401dbc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401dbf	 Bytes: 3
  %loadMem_401dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbf = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbf)
  store %struct.Memory* %call_401dbf, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401dc2	 Bytes: 3
  %loadMem_401dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc2 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc2)
  store %struct.Memory* %call_401dc2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401dc5	 Bytes: 3
  %loadMem_401dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc5 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc5)
  store %struct.Memory* %call_401dc5, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 401dc8	 Bytes: 3
  %loadMem_401dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc8 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc8)
  store %struct.Memory* %call_401dc8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 401dcb	 Bytes: 3
  %loadMem_401dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dcb = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dcb)
  store %struct.Memory* %call_401dcb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401dce	 Bytes: 4
  %loadMem_401dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dce = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dce)
  store %struct.Memory* %call_401dce, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401dd2	 Bytes: 4
  %loadMem_401dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd2)
  store %struct.Memory* %call_401dd2, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401dd6	 Bytes: 5
  %loadMem_401dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd6 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd6)
  store %struct.Memory* %call_401dd6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401ddb	 Bytes: 5
  %loadMem_401ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ddb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ddb)
  store %struct.Memory* %call_401ddb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401de0	 Bytes: 4
  %loadMem_401de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de0)
  store %struct.Memory* %call_401de0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401de4	 Bytes: 3
  %loadMem_401de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de4)
  store %struct.Memory* %call_401de4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401de7	 Bytes: 3
  %loadMem_401de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de7)
  store %struct.Memory* %call_401de7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401dea	 Bytes: 3
  %loadMem_401dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dea = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dea)
  store %struct.Memory* %call_401dea, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401ded	 Bytes: 5
  %loadMem_401ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ded = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ded)
  store %struct.Memory* %call_401ded, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401df2	 Bytes: 5
  %loadMem_401df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df2 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df2)
  store %struct.Memory* %call_401df2, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401df7	 Bytes: 3
  %loadMem_401df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df7 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df7)
  store %struct.Memory* %call_401df7, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401dfa	 Bytes: 5
  %loadMem_401dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfa = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfa)
  store %struct.Memory* %call_401dfa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401dff	 Bytes: 5
  %loadMem_401dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dff = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dff)
  store %struct.Memory* %call_401dff, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e04	 Bytes: 4
  %loadMem_401e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e04 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e04)
  store %struct.Memory* %call_401e04, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401e08	 Bytes: 4
  %loadMem_401e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e08 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e08)
  store %struct.Memory* %call_401e08, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401e0c	 Bytes: 5
  %loadMem_401e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0c)
  store %struct.Memory* %call_401e0c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401e11	 Bytes: 5
  %loadMem_401e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e11 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e11)
  store %struct.Memory* %call_401e11, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e16	 Bytes: 4
  %loadMem_401e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e16 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e16)
  store %struct.Memory* %call_401e16, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401e1a	 Bytes: 3
  %loadMem_401e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1a)
  store %struct.Memory* %call_401e1a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401e1d	 Bytes: 3
  %loadMem_401e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1d)
  store %struct.Memory* %call_401e1d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401e20	 Bytes: 3
  %loadMem_401e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e20 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e20)
  store %struct.Memory* %call_401e20, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401e23	 Bytes: 5
  %loadMem_401e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e23 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e23)
  store %struct.Memory* %call_401e23, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401e28	 Bytes: 5
  %loadMem_401e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e28 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e28)
  store %struct.Memory* %call_401e28, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401e2d	 Bytes: 3
  %loadMem_401e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2d = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2d)
  store %struct.Memory* %call_401e2d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401e30	 Bytes: 5
  %loadMem_401e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e30 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e30)
  store %struct.Memory* %call_401e30, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401e35	 Bytes: 5
  %loadMem_401e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e35 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e35)
  store %struct.Memory* %call_401e35, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401e3a	 Bytes: 5
  %loadMem_401e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3a = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3a)
  store %struct.Memory* %call_401e3a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e3f	 Bytes: 4
  %loadMem_401e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3f)
  store %struct.Memory* %call_401e3f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401e43	 Bytes: 4
  %loadMem_401e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e43 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e43)
  store %struct.Memory* %call_401e43, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e47	 Bytes: 5
  %loadMem_401e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e47 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e47)
  store %struct.Memory* %call_401e47, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401e4c	 Bytes: 5
  %loadMem_401e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4c = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4c)
  store %struct.Memory* %call_401e4c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e51	 Bytes: 4
  %loadMem_401e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e51 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e51)
  store %struct.Memory* %call_401e51, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401e55	 Bytes: 3
  %loadMem_401e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e55 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e55)
  store %struct.Memory* %call_401e55, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401e58	 Bytes: 3
  %loadMem_401e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e58 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e58)
  store %struct.Memory* %call_401e58, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401e5b	 Bytes: 3
  %loadMem_401e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5b)
  store %struct.Memory* %call_401e5b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e5e	 Bytes: 5
  %loadMem_401e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5e = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5e)
  store %struct.Memory* %call_401e5e, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401e63	 Bytes: 5
  %loadMem_401e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e63 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e63)
  store %struct.Memory* %call_401e63, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e68	 Bytes: 4
  %loadMem_401e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e68 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e68)
  store %struct.Memory* %call_401e68, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401e6c	 Bytes: 4
  %loadMem_401e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6c)
  store %struct.Memory* %call_401e6c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e70	 Bytes: 5
  %loadMem_401e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e70 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e70)
  store %struct.Memory* %call_401e70, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401e75	 Bytes: 5
  %loadMem_401e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e75 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e75)
  store %struct.Memory* %call_401e75, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e7a	 Bytes: 4
  %loadMem_401e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7a)
  store %struct.Memory* %call_401e7a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401e7e	 Bytes: 3
  %loadMem_401e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7e)
  store %struct.Memory* %call_401e7e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401e81	 Bytes: 3
  %loadMem_401e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e81 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e81)
  store %struct.Memory* %call_401e81, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401e84	 Bytes: 3
  %loadMem_401e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e84 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e84)
  store %struct.Memory* %call_401e84, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e87	 Bytes: 5
  %loadMem_401e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e87 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e87)
  store %struct.Memory* %call_401e87, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401e8c	 Bytes: 3
  %loadMem_401e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8c)
  store %struct.Memory* %call_401e8c, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 401e8f	 Bytes: 3
  %loadMem_401e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8f = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8f)
  store %struct.Memory* %call_401e8f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401e92	 Bytes: 3
  %loadMem_401e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e92 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e92)
  store %struct.Memory* %call_401e92, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401e95	 Bytes: 3
  %loadMem_401e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e95 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e95)
  store %struct.Memory* %call_401e95, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edi	 RIP: 401e98	 Bytes: 3
  %loadMem_401e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e98 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e98)
  store %struct.Memory* %call_401e98, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %edi	 RIP: 401e9b	 Bytes: 2
  %loadMem_401e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9b = call %struct.Memory* @routine_subl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9b)
  store %struct.Memory* %call_401e9b, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x28(%rbp)	 RIP: 401e9d	 Bytes: 3
  %loadMem_401e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9d = call %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9d)
  store %struct.Memory* %call_401e9d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401ea0	 Bytes: 4
  %loadMem_401ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea0)
  store %struct.Memory* %call_401ea0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401ea4	 Bytes: 4
  %loadMem_401ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea4)
  store %struct.Memory* %call_401ea4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401ea8	 Bytes: 5
  %loadMem_401ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea8 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea8)
  store %struct.Memory* %call_401ea8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401ead	 Bytes: 5
  %loadMem_401ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ead = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ead)
  store %struct.Memory* %call_401ead, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401eb2	 Bytes: 4
  %loadMem_401eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb2)
  store %struct.Memory* %call_401eb2, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401eb6	 Bytes: 3
  %loadMem_401eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb6)
  store %struct.Memory* %call_401eb6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401eb9	 Bytes: 3
  %loadMem_401eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb9)
  store %struct.Memory* %call_401eb9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401ebc	 Bytes: 3
  %loadMem_401ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebc = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebc)
  store %struct.Memory* %call_401ebc, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401ebf	 Bytes: 5
  %loadMem_401ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebf = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebf)
  store %struct.Memory* %call_401ebf, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401ec4	 Bytes: 5
  %loadMem_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec4 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec4)
  store %struct.Memory* %call_401ec4, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401ec9	 Bytes: 3
  %loadMem_401ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec9 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec9)
  store %struct.Memory* %call_401ec9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401ecc	 Bytes: 5
  %loadMem_401ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ecc = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ecc)
  store %struct.Memory* %call_401ecc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401ed1	 Bytes: 5
  %loadMem_401ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed1)
  store %struct.Memory* %call_401ed1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401ed6	 Bytes: 4
  %loadMem_401ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed6)
  store %struct.Memory* %call_401ed6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401eda	 Bytes: 4
  %loadMem_401eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eda = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eda)
  store %struct.Memory* %call_401eda, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401ede	 Bytes: 5
  %loadMem_401ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ede = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ede)
  store %struct.Memory* %call_401ede, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401ee3	 Bytes: 5
  %loadMem_401ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee3)
  store %struct.Memory* %call_401ee3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401ee8	 Bytes: 4
  %loadMem_401ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee8)
  store %struct.Memory* %call_401ee8, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401eec	 Bytes: 3
  %loadMem_401eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eec = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eec)
  store %struct.Memory* %call_401eec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401eef	 Bytes: 3
  %loadMem_401eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eef = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eef)
  store %struct.Memory* %call_401eef, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401ef2	 Bytes: 3
  %loadMem_401ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef2 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef2)
  store %struct.Memory* %call_401ef2, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401ef5	 Bytes: 5
  %loadMem_401ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef5 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef5)
  store %struct.Memory* %call_401ef5, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401efa	 Bytes: 5
  %loadMem_401efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efa = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efa)
  store %struct.Memory* %call_401efa, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401eff	 Bytes: 3
  %loadMem_401eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eff = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eff)
  store %struct.Memory* %call_401eff, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401f02	 Bytes: 5
  %loadMem_401f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f02 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f02)
  store %struct.Memory* %call_401f02, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401f07	 Bytes: 5
  %loadMem_401f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f07 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f07)
  store %struct.Memory* %call_401f07, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401f0c	 Bytes: 5
  %loadMem_401f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f0c = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f0c)
  store %struct.Memory* %call_401f0c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f11	 Bytes: 4
  %loadMem_401f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f11 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f11)
  store %struct.Memory* %call_401f11, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401f15	 Bytes: 4
  %loadMem_401f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f15 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f15)
  store %struct.Memory* %call_401f15, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f19	 Bytes: 5
  %loadMem_401f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f19 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f19)
  store %struct.Memory* %call_401f19, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401f1e	 Bytes: 5
  %loadMem_401f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1e = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1e)
  store %struct.Memory* %call_401f1e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f23	 Bytes: 4
  %loadMem_401f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f23 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f23)
  store %struct.Memory* %call_401f23, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401f27	 Bytes: 3
  %loadMem_401f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f27 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f27)
  store %struct.Memory* %call_401f27, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401f2a	 Bytes: 3
  %loadMem_401f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2a)
  store %struct.Memory* %call_401f2a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f2d	 Bytes: 3
  %loadMem_401f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2d)
  store %struct.Memory* %call_401f2d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f30	 Bytes: 5
  %loadMem_401f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f30 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f30)
  store %struct.Memory* %call_401f30, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401f35	 Bytes: 5
  %loadMem_401f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f35 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f35)
  store %struct.Memory* %call_401f35, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f3a	 Bytes: 4
  %loadMem_401f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3a)
  store %struct.Memory* %call_401f3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401f3e	 Bytes: 4
  %loadMem_401f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3e)
  store %struct.Memory* %call_401f3e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f42	 Bytes: 5
  %loadMem_401f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f42 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f42)
  store %struct.Memory* %call_401f42, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401f47	 Bytes: 5
  %loadMem_401f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f47 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f47)
  store %struct.Memory* %call_401f47, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f4c	 Bytes: 4
  %loadMem_401f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4c)
  store %struct.Memory* %call_401f4c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401f50	 Bytes: 3
  %loadMem_401f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f50 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f50)
  store %struct.Memory* %call_401f50, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401f53	 Bytes: 3
  %loadMem_401f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f53 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f53)
  store %struct.Memory* %call_401f53, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f56	 Bytes: 3
  %loadMem_401f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f56 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f56)
  store %struct.Memory* %call_401f56, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f59	 Bytes: 5
  %loadMem_401f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f59 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f59)
  store %struct.Memory* %call_401f59, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401f5e	 Bytes: 3
  %loadMem_401f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f5e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f5e)
  store %struct.Memory* %call_401f5e, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 401f61	 Bytes: 3
  %loadMem_401f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f61 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f61)
  store %struct.Memory* %call_401f61, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401f64	 Bytes: 3
  %loadMem_401f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f64 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f64)
  store %struct.Memory* %call_401f64, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401f67	 Bytes: 3
  %loadMem_401f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f67 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f67)
  store %struct.Memory* %call_401f67, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401f6a	 Bytes: 3
  %loadMem_401f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6a = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6a)
  store %struct.Memory* %call_401f6a, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 401f6d	 Bytes: 3
  %loadMem_401f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6d = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6d)
  store %struct.Memory* %call_401f6d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 401f70	 Bytes: 3
  %loadMem_401f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f70 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f70)
  store %struct.Memory* %call_401f70, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f73	 Bytes: 4
  %loadMem_401f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f73 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f73)
  store %struct.Memory* %call_401f73, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401f77	 Bytes: 4
  %loadMem_401f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f77 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f77)
  store %struct.Memory* %call_401f77, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401f7b	 Bytes: 5
  %loadMem_401f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7b)
  store %struct.Memory* %call_401f7b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401f80	 Bytes: 5
  %loadMem_401f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f80 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f80)
  store %struct.Memory* %call_401f80, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f85	 Bytes: 4
  %loadMem_401f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f85 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f85)
  store %struct.Memory* %call_401f85, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401f89	 Bytes: 3
  %loadMem_401f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f89 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f89)
  store %struct.Memory* %call_401f89, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401f8c	 Bytes: 3
  %loadMem_401f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8c)
  store %struct.Memory* %call_401f8c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f8f	 Bytes: 3
  %loadMem_401f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8f)
  store %struct.Memory* %call_401f8f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401f92	 Bytes: 5
  %loadMem_401f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f92 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f92)
  store %struct.Memory* %call_401f92, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401f97	 Bytes: 5
  %loadMem_401f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f97 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f97)
  store %struct.Memory* %call_401f97, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401f9c	 Bytes: 3
  %loadMem_401f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9c = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9c)
  store %struct.Memory* %call_401f9c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401f9f	 Bytes: 5
  %loadMem_401f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9f = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9f)
  store %struct.Memory* %call_401f9f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401fa4	 Bytes: 5
  %loadMem_401fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa4)
  store %struct.Memory* %call_401fa4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401fa9	 Bytes: 4
  %loadMem_401fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa9)
  store %struct.Memory* %call_401fa9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401fad	 Bytes: 4
  %loadMem_401fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fad = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fad)
  store %struct.Memory* %call_401fad, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401fb1	 Bytes: 5
  %loadMem_401fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb1 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb1)
  store %struct.Memory* %call_401fb1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401fb6	 Bytes: 5
  %loadMem_401fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb6)
  store %struct.Memory* %call_401fb6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401fbb	 Bytes: 4
  %loadMem_401fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbb)
  store %struct.Memory* %call_401fbb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401fbf	 Bytes: 3
  %loadMem_401fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbf)
  store %struct.Memory* %call_401fbf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401fc2	 Bytes: 3
  %loadMem_401fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc2)
  store %struct.Memory* %call_401fc2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401fc5	 Bytes: 3
  %loadMem_401fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc5 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc5)
  store %struct.Memory* %call_401fc5, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401fc8	 Bytes: 5
  %loadMem_401fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc8 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc8)
  store %struct.Memory* %call_401fc8, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401fcd	 Bytes: 5
  %loadMem_401fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcd = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcd)
  store %struct.Memory* %call_401fcd, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401fd2	 Bytes: 3
  %loadMem_401fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd2 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd2)
  store %struct.Memory* %call_401fd2, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401fd5	 Bytes: 5
  %loadMem_401fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd5 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd5)
  store %struct.Memory* %call_401fd5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401fda	 Bytes: 5
  %loadMem_401fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fda = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fda)
  store %struct.Memory* %call_401fda, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401fdf	 Bytes: 5
  %loadMem_401fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdf = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdf)
  store %struct.Memory* %call_401fdf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 401fe4	 Bytes: 4
  %loadMem_401fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe4)
  store %struct.Memory* %call_401fe4, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401fe8	 Bytes: 4
  %loadMem_401fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe8)
  store %struct.Memory* %call_401fe8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 401fec	 Bytes: 5
  %loadMem_401fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fec = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fec)
  store %struct.Memory* %call_401fec, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401ff1	 Bytes: 5
  %loadMem_401ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff1 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff1)
  store %struct.Memory* %call_401ff1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 401ff6	 Bytes: 4
  %loadMem_401ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff6)
  store %struct.Memory* %call_401ff6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401ffa	 Bytes: 3
  %loadMem_401ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffa = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffa)
  store %struct.Memory* %call_401ffa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401ffd	 Bytes: 3
  %loadMem_401ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffd)
  store %struct.Memory* %call_401ffd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402000	 Bytes: 3
  %loadMem_402000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402000 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402000)
  store %struct.Memory* %call_402000, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 402003	 Bytes: 5
  %loadMem_402003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402003 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402003)
  store %struct.Memory* %call_402003, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 402008	 Bytes: 5
  %loadMem_402008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402008 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402008)
  store %struct.Memory* %call_402008, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40200d	 Bytes: 4
  %loadMem_40200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200d)
  store %struct.Memory* %call_40200d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 402011	 Bytes: 4
  %loadMem_402011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402011 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402011)
  store %struct.Memory* %call_402011, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 402015	 Bytes: 5
  %loadMem_402015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402015 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402015)
  store %struct.Memory* %call_402015, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40201a	 Bytes: 5
  %loadMem_40201a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201a)
  store %struct.Memory* %call_40201a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40201f	 Bytes: 4
  %loadMem_40201f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201f)
  store %struct.Memory* %call_40201f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402023	 Bytes: 3
  %loadMem_402023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402023 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402023)
  store %struct.Memory* %call_402023, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402026	 Bytes: 3
  %loadMem_402026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402026 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402026)
  store %struct.Memory* %call_402026, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402029	 Bytes: 3
  %loadMem_402029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402029 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402029)
  store %struct.Memory* %call_402029, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 40202c	 Bytes: 5
  %loadMem_40202c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202c = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202c)
  store %struct.Memory* %call_40202c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 402031	 Bytes: 3
  %loadMem_402031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402031 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402031)
  store %struct.Memory* %call_402031, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402034	 Bytes: 3
  %loadMem_402034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402034 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402034)
  store %struct.Memory* %call_402034, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 402037	 Bytes: 3
  %loadMem_402037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402037 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402037)
  store %struct.Memory* %call_402037, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401cbd	 RIP: 40203a	 Bytes: 5
  %loadMem_40203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203a = call %struct.Memory* @routine_jmpq_.L_401cbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203a, i64 -893, i64 5)
  store %struct.Memory* %call_40203a, %struct.Memory** %MEMORY

  br label %block_.L_401cbd

  ; Code: .L_40203f:	 RIP: 40203f	 Bytes: 0
block_.L_40203f:

  ; Code: movq $0x8000000000000000, %rax	 RIP: 40203f	 Bytes: 10
  %loadMem_40203f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203f = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203f)
  store %struct.Memory* %call_40203f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402049	 Bytes: 3
  %loadMem_402049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402049 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402049)
  store %struct.Memory* %call_402049, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 40204c	 Bytes: 3
  %loadMem_40204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204c = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204c)
  store %struct.Memory* %call_40204c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40204f	 Bytes: 4
  %loadMem_40204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204f)
  store %struct.Memory* %call_40204f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 402053	 Bytes: 4
  %loadMem_402053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402053 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402053)
  store %struct.Memory* %call_402053, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402057	 Bytes: 3
  %loadMem_402057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402057 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402057)
  store %struct.Memory* %call_402057, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40205a	 Bytes: 3
  %loadMem_40205a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205a = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205a)
  store %struct.Memory* %call_40205a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40205d	 Bytes: 4
  %loadMem_40205d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205d)
  store %struct.Memory* %call_40205d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402061	 Bytes: 3
  %loadMem_402061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402061 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402061)
  store %struct.Memory* %call_402061, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402064	 Bytes: 3
  %loadMem_402064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402064 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402064)
  store %struct.Memory* %call_402064, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402067	 Bytes: 3
  %loadMem_402067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402067 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402067)
  store %struct.Memory* %call_402067, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40206a	 Bytes: 5
  %loadMem_40206a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206a = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206a)
  store %struct.Memory* %call_40206a, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 40206f	 Bytes: 5
  %loadMem_40206f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206f = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206f)
  store %struct.Memory* %call_40206f, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402074	 Bytes: 3
  %loadMem_402074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402074 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402074)
  store %struct.Memory* %call_402074, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402077	 Bytes: 5
  %loadMem_402077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402077 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402077)
  store %struct.Memory* %call_402077, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40207c	 Bytes: 4
  %loadMem_40207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207c)
  store %struct.Memory* %call_40207c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402080	 Bytes: 3
  %loadMem_402080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402080 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402080)
  store %struct.Memory* %call_402080, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402083	 Bytes: 3
  %loadMem_402083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402083 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402083)
  store %struct.Memory* %call_402083, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402086	 Bytes: 3
  %loadMem_402086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402086 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402086)
  store %struct.Memory* %call_402086, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402089	 Bytes: 5
  %loadMem_402089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402089 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402089)
  store %struct.Memory* %call_402089, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40208e	 Bytes: 3
  %loadMem_40208e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208e)
  store %struct.Memory* %call_40208e, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 402091	 Bytes: 3
  %loadMem_402091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402091 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402091)
  store %struct.Memory* %call_402091, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 402094	 Bytes: 3
  %loadMem_402094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402094 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402094)
  store %struct.Memory* %call_402094, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402097	 Bytes: 3
  %loadMem_402097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402097 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402097)
  store %struct.Memory* %call_402097, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 40209a	 Bytes: 3
  %loadMem_40209a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209a = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209a)
  store %struct.Memory* %call_40209a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40209d	 Bytes: 3
  %loadMem_40209d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209d = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209d)
  store %struct.Memory* %call_40209d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020a0	 Bytes: 4
  %loadMem_4020a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a0)
  store %struct.Memory* %call_4020a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4020a4	 Bytes: 4
  %loadMem_4020a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a4)
  store %struct.Memory* %call_4020a4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020a8	 Bytes: 5
  %loadMem_4020a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a8 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a8)
  store %struct.Memory* %call_4020a8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4020ad	 Bytes: 5
  %loadMem_4020ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ad = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ad)
  store %struct.Memory* %call_4020ad, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020b2	 Bytes: 4
  %loadMem_4020b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b2)
  store %struct.Memory* %call_4020b2, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4020b6	 Bytes: 3
  %loadMem_4020b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b6)
  store %struct.Memory* %call_4020b6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4020b9	 Bytes: 3
  %loadMem_4020b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b9)
  store %struct.Memory* %call_4020b9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4020bc	 Bytes: 3
  %loadMem_4020bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020bc = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020bc)
  store %struct.Memory* %call_4020bc, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020bf	 Bytes: 5
  %loadMem_4020bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020bf = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020bf)
  store %struct.Memory* %call_4020bf, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4020c4	 Bytes: 5
  %loadMem_4020c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c4 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c4)
  store %struct.Memory* %call_4020c4, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4020c9	 Bytes: 3
  %loadMem_4020c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c9 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c9)
  store %struct.Memory* %call_4020c9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 4020cc	 Bytes: 5
  %loadMem_4020cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cc = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cc)
  store %struct.Memory* %call_4020cc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4020d1	 Bytes: 5
  %loadMem_4020d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d1)
  store %struct.Memory* %call_4020d1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020d6	 Bytes: 4
  %loadMem_4020d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d6)
  store %struct.Memory* %call_4020d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4020da	 Bytes: 4
  %loadMem_4020da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020da = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020da)
  store %struct.Memory* %call_4020da, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020de	 Bytes: 5
  %loadMem_4020de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020de = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020de)
  store %struct.Memory* %call_4020de, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4020e3	 Bytes: 5
  %loadMem_4020e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e3)
  store %struct.Memory* %call_4020e3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020e8	 Bytes: 4
  %loadMem_4020e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e8)
  store %struct.Memory* %call_4020e8, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4020ec	 Bytes: 3
  %loadMem_4020ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ec = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ec)
  store %struct.Memory* %call_4020ec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4020ef	 Bytes: 3
  %loadMem_4020ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ef = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ef)
  store %struct.Memory* %call_4020ef, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4020f2	 Bytes: 3
  %loadMem_4020f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f2 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f2)
  store %struct.Memory* %call_4020f2, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020f5	 Bytes: 5
  %loadMem_4020f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f5 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f5)
  store %struct.Memory* %call_4020f5, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4020fa	 Bytes: 5
  %loadMem_4020fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fa = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fa)
  store %struct.Memory* %call_4020fa, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4020ff	 Bytes: 3
  %loadMem_4020ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ff = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ff)
  store %struct.Memory* %call_4020ff, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402102	 Bytes: 5
  %loadMem_402102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402102 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402102)
  store %struct.Memory* %call_402102, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 402107	 Bytes: 5
  %loadMem_402107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402107 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402107)
  store %struct.Memory* %call_402107, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 40210c	 Bytes: 5
  %loadMem_40210c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210c = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210c)
  store %struct.Memory* %call_40210c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402111	 Bytes: 4
  %loadMem_402111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402111 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402111)
  store %struct.Memory* %call_402111, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402115	 Bytes: 4
  %loadMem_402115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402115 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402115)
  store %struct.Memory* %call_402115, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402119	 Bytes: 5
  %loadMem_402119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402119 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402119)
  store %struct.Memory* %call_402119, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 40211e	 Bytes: 5
  %loadMem_40211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211e = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211e)
  store %struct.Memory* %call_40211e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402123	 Bytes: 4
  %loadMem_402123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402123 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402123)
  store %struct.Memory* %call_402123, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402127	 Bytes: 3
  %loadMem_402127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402127 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402127)
  store %struct.Memory* %call_402127, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40212a	 Bytes: 3
  %loadMem_40212a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212a)
  store %struct.Memory* %call_40212a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40212d	 Bytes: 3
  %loadMem_40212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212d)
  store %struct.Memory* %call_40212d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402130	 Bytes: 5
  %loadMem_402130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402130 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402130)
  store %struct.Memory* %call_402130, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 402135	 Bytes: 5
  %loadMem_402135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402135 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402135)
  store %struct.Memory* %call_402135, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40213a	 Bytes: 4
  %loadMem_40213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213a)
  store %struct.Memory* %call_40213a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 40213e	 Bytes: 4
  %loadMem_40213e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213e)
  store %struct.Memory* %call_40213e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402142	 Bytes: 5
  %loadMem_402142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402142 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402142)
  store %struct.Memory* %call_402142, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 402147	 Bytes: 5
  %loadMem_402147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402147 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402147)
  store %struct.Memory* %call_402147, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40214c	 Bytes: 4
  %loadMem_40214c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214c)
  store %struct.Memory* %call_40214c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402150	 Bytes: 3
  %loadMem_402150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402150 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402150)
  store %struct.Memory* %call_402150, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402153	 Bytes: 3
  %loadMem_402153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402153 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402153)
  store %struct.Memory* %call_402153, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402156	 Bytes: 3
  %loadMem_402156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402156 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402156)
  store %struct.Memory* %call_402156, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402159	 Bytes: 5
  %loadMem_402159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402159 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402159)
  store %struct.Memory* %call_402159, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 40215e	 Bytes: 3
  %loadMem_40215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215e)
  store %struct.Memory* %call_40215e, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 402161	 Bytes: 3
  %loadMem_402161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402161 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402161)
  store %struct.Memory* %call_402161, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 402164	 Bytes: 3
  %loadMem_402164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402164 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402164)
  store %struct.Memory* %call_402164, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402167	 Bytes: 4
  %loadMem_402167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402167 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402167)
  store %struct.Memory* %call_402167, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40216b	 Bytes: 3
  %loadMem_40216b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216b)
  store %struct.Memory* %call_40216b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40216e	 Bytes: 3
  %loadMem_40216e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216e)
  store %struct.Memory* %call_40216e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402171	 Bytes: 3
  %loadMem_402171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402171 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402171)
  store %struct.Memory* %call_402171, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402174	 Bytes: 5
  %loadMem_402174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402174 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402174)
  store %struct.Memory* %call_402174, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402179	 Bytes: 5
  %loadMem_402179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402179 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402179)
  store %struct.Memory* %call_402179, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40217e	 Bytes: 3
  %loadMem_40217e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217e = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217e)
  store %struct.Memory* %call_40217e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402181	 Bytes: 5
  %loadMem_402181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402181 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402181)
  store %struct.Memory* %call_402181, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 402186	 Bytes: 4
  %loadMem_402186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402186 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402186)
  store %struct.Memory* %call_402186, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40218a	 Bytes: 3
  %loadMem_40218a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218a)
  store %struct.Memory* %call_40218a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40218d	 Bytes: 3
  %loadMem_40218d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218d)
  store %struct.Memory* %call_40218d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402190	 Bytes: 3
  %loadMem_402190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402190 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402190)
  store %struct.Memory* %call_402190, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 402193	 Bytes: 5
  %loadMem_402193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402193 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402193)
  store %struct.Memory* %call_402193, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 402198	 Bytes: 3
  %loadMem_402198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402198 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402198)
  store %struct.Memory* %call_402198, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40219b	 Bytes: 3
  %loadMem_40219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219b)
  store %struct.Memory* %call_40219b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 40219e	 Bytes: 3
  %loadMem_40219e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219e = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219e)
  store %struct.Memory* %call_40219e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401caa	 RIP: 4021a1	 Bytes: 5
  %loadMem_4021a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a1 = call %struct.Memory* @routine_jmpq_.L_401caa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a1, i64 -1271, i64 5)
  store %struct.Memory* %call_4021a1, %struct.Memory** %MEMORY

  br label %block_.L_401caa

  ; Code: .L_4021a6:	 RIP: 4021a6	 Bytes: 0
block_.L_4021a6:

  ; Code: jmpq .L_402492	 RIP: 4021a6	 Bytes: 5
  %loadMem_4021a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a6 = call %struct.Memory* @routine_jmpq_.L_402492(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a6, i64 748, i64 5)
  store %struct.Memory* %call_4021a6, %struct.Memory** %MEMORY

  br label %block_.L_402492

  ; Code: .L_4021ab:	 RIP: 4021ab	 Bytes: 0
block_.L_4021ab:

  ; Code: movq $0x8000000000000000, %rax	 RIP: 4021ab	 Bytes: 10
  %loadMem_4021ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ab = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ab)
  store %struct.Memory* %call_4021ab, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4021b5	 Bytes: 4
  %loadMem_4021b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b5)
  store %struct.Memory* %call_4021b5, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rcx), %xmm0	 RIP: 4021b9	 Bytes: 5
  %loadMem_4021b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b9 = call %struct.Memory* @routine_movsd_0x8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b9)
  store %struct.Memory* %call_4021b9, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rcx	 RIP: 4021be	 Bytes: 5
  %loadMem_4021be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021be = call %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021be)
  store %struct.Memory* %call_4021be, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rcx	 RIP: 4021c3	 Bytes: 3
  %loadMem_4021c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c3 = call %struct.Memory* @routine_xorq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c3)
  store %struct.Memory* %call_4021c3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %xmm0	 RIP: 4021c6	 Bytes: 5
  %loadMem_4021c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c6 = call %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c6)
  store %struct.Memory* %call_4021c6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4021cb	 Bytes: 4
  %loadMem_4021cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cb)
  store %struct.Memory* %call_4021cb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x8(%rcx)	 RIP: 4021cf	 Bytes: 5
  %loadMem_4021cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cf = call %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cf)
  store %struct.Memory* %call_4021cf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4021d4	 Bytes: 4
  %loadMem_4021d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d4)
  store %struct.Memory* %call_4021d4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4021d8	 Bytes: 3
  %loadMem_4021d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d8)
  store %struct.Memory* %call_4021d8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4021db	 Bytes: 3
  %loadMem_4021db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021db = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021db)
  store %struct.Memory* %call_4021db, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4021de	 Bytes: 3
  %loadMem_4021de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021de = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021de)
  store %struct.Memory* %call_4021de, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rsi,8), %xmm0	 RIP: 4021e1	 Bytes: 5
  %loadMem_4021e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e1 = call %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e1)
  store %struct.Memory* %call_4021e1, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rcx	 RIP: 4021e6	 Bytes: 5
  %loadMem_4021e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e6 = call %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e6)
  store %struct.Memory* %call_4021e6, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rcx	 RIP: 4021eb	 Bytes: 3
  %loadMem_4021eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021eb = call %struct.Memory* @routine_xorq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021eb)
  store %struct.Memory* %call_4021eb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %xmm0	 RIP: 4021ee	 Bytes: 5
  %loadMem_4021ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ee = call %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ee)
  store %struct.Memory* %call_4021ee, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4021f3	 Bytes: 4
  %loadMem_4021f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f3)
  store %struct.Memory* %call_4021f3, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4021f7	 Bytes: 3
  %loadMem_4021f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f7)
  store %struct.Memory* %call_4021f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4021fa	 Bytes: 3
  %loadMem_4021fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fa = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fa)
  store %struct.Memory* %call_4021fa, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021fd	 Bytes: 3
  %loadMem_4021fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fd = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fd)
  store %struct.Memory* %call_4021fd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402200	 Bytes: 5
  %loadMem_402200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402200 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402200)
  store %struct.Memory* %call_402200, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 402205	 Bytes: 7
  %loadMem_402205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402205 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402205)
  store %struct.Memory* %call_402205, %struct.Memory** %MEMORY

  ; Code: .L_40220c:	 RIP: 40220c	 Bytes: 0
  br label %block_.L_40220c
block_.L_40220c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40220c	 Bytes: 3
  %loadMem_40220c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220c)
  store %struct.Memory* %call_40220c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 40220f	 Bytes: 3
  %loadMem_40220f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220f = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220f)
  store %struct.Memory* %call_40220f, %struct.Memory** %MEMORY

  ; Code: jge .L_40248d	 RIP: 402212	 Bytes: 6
  %loadMem_402212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402212 = call %struct.Memory* @routine_jge_.L_40248d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402212, i8* %BRANCH_TAKEN, i64 635, i64 6, i64 6)
  store %struct.Memory* %call_402212, %struct.Memory** %MEMORY

  %loadBr_402212 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402212 = icmp eq i8 %loadBr_402212, 1
  br i1 %cmpBr_402212, label %block_.L_40248d, label %block_402218

block_402218:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 402218	 Bytes: 7
  %loadMem_402218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402218 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402218)
  store %struct.Memory* %call_402218, %struct.Memory** %MEMORY

  ; Code: .L_40221f:	 RIP: 40221f	 Bytes: 0
  br label %block_.L_40221f
block_.L_40221f:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40221f	 Bytes: 3
  %loadMem_40221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221f)
  store %struct.Memory* %call_40221f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 402222	 Bytes: 3
  %loadMem_402222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402222 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402222)
  store %struct.Memory* %call_402222, %struct.Memory** %MEMORY

  ; Code: jge .L_4023f9	 RIP: 402225	 Bytes: 6
  %loadMem_402225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402225 = call %struct.Memory* @routine_jge_.L_4023f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402225, i8* %BRANCH_TAKEN, i64 468, i64 6, i64 6)
  store %struct.Memory* %call_402225, %struct.Memory** %MEMORY

  %loadBr_402225 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402225 = icmp eq i8 %loadBr_402225, 1
  br i1 %cmpBr_402225, label %block_.L_4023f9, label %block_40222b

block_40222b:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 40222b	 Bytes: 10
  %loadMem_40222b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222b = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222b)
  store %struct.Memory* %call_40222b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402235	 Bytes: 3
  %loadMem_402235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402235 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402235)
  store %struct.Memory* %call_402235, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 402238	 Bytes: 3
  %loadMem_402238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402238 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402238)
  store %struct.Memory* %call_402238, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40223b	 Bytes: 4
  %loadMem_40223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223b)
  store %struct.Memory* %call_40223b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 40223f	 Bytes: 4
  %loadMem_40223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223f)
  store %struct.Memory* %call_40223f, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402243	 Bytes: 3
  %loadMem_402243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402243 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402243)
  store %struct.Memory* %call_402243, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 402246	 Bytes: 3
  %loadMem_402246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402246 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402246)
  store %struct.Memory* %call_402246, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402249	 Bytes: 3
  %loadMem_402249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402249 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402249)
  store %struct.Memory* %call_402249, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 40224c	 Bytes: 3
  %loadMem_40224c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224c = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224c)
  store %struct.Memory* %call_40224c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40224f	 Bytes: 4
  %loadMem_40224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224f)
  store %struct.Memory* %call_40224f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 402253	 Bytes: 4
  %loadMem_402253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402253 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402253)
  store %struct.Memory* %call_402253, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402257	 Bytes: 3
  %loadMem_402257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402257 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402257)
  store %struct.Memory* %call_402257, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40225a	 Bytes: 3
  %loadMem_40225a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225a = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225a)
  store %struct.Memory* %call_40225a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40225d	 Bytes: 4
  %loadMem_40225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225d)
  store %struct.Memory* %call_40225d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402261	 Bytes: 4
  %loadMem_402261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402261 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402261)
  store %struct.Memory* %call_402261, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402265	 Bytes: 5
  %loadMem_402265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402265 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402265)
  store %struct.Memory* %call_402265, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40226a	 Bytes: 5
  %loadMem_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226a)
  store %struct.Memory* %call_40226a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40226f	 Bytes: 4
  %loadMem_40226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226f)
  store %struct.Memory* %call_40226f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402273	 Bytes: 3
  %loadMem_402273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402273 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402273)
  store %struct.Memory* %call_402273, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402276	 Bytes: 3
  %loadMem_402276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402276 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402276)
  store %struct.Memory* %call_402276, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402279	 Bytes: 3
  %loadMem_402279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402279 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402279)
  store %struct.Memory* %call_402279, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40227c	 Bytes: 5
  %loadMem_40227c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227c)
  store %struct.Memory* %call_40227c, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402281	 Bytes: 5
  %loadMem_402281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402281 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402281)
  store %struct.Memory* %call_402281, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402286	 Bytes: 3
  %loadMem_402286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402286 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402286)
  store %struct.Memory* %call_402286, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402289	 Bytes: 5
  %loadMem_402289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402289 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402289)
  store %struct.Memory* %call_402289, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 40228e	 Bytes: 5
  %loadMem_40228e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228e)
  store %struct.Memory* %call_40228e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402293	 Bytes: 4
  %loadMem_402293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402293 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402293)
  store %struct.Memory* %call_402293, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 402297	 Bytes: 4
  %loadMem_402297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402297 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402297)
  store %struct.Memory* %call_402297, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40229b	 Bytes: 5
  %loadMem_40229b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229b)
  store %struct.Memory* %call_40229b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4022a0	 Bytes: 5
  %loadMem_4022a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a0)
  store %struct.Memory* %call_4022a0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022a5	 Bytes: 4
  %loadMem_4022a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a5)
  store %struct.Memory* %call_4022a5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4022a9	 Bytes: 3
  %loadMem_4022a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a9)
  store %struct.Memory* %call_4022a9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4022ac	 Bytes: 3
  %loadMem_4022ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ac = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ac)
  store %struct.Memory* %call_4022ac, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4022af	 Bytes: 3
  %loadMem_4022af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022af = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022af)
  store %struct.Memory* %call_4022af, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4022b2	 Bytes: 5
  %loadMem_4022b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b2 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b2)
  store %struct.Memory* %call_4022b2, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4022b7	 Bytes: 5
  %loadMem_4022b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b7 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b7)
  store %struct.Memory* %call_4022b7, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4022bc	 Bytes: 3
  %loadMem_4022bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bc = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bc)
  store %struct.Memory* %call_4022bc, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 4022bf	 Bytes: 5
  %loadMem_4022bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bf = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bf)
  store %struct.Memory* %call_4022bf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4022c4	 Bytes: 5
  %loadMem_4022c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c4)
  store %struct.Memory* %call_4022c4, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4022c9	 Bytes: 5
  %loadMem_4022c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c9 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c9)
  store %struct.Memory* %call_4022c9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022ce	 Bytes: 4
  %loadMem_4022ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ce = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ce)
  store %struct.Memory* %call_4022ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4022d2	 Bytes: 4
  %loadMem_4022d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d2)
  store %struct.Memory* %call_4022d2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 4022d6	 Bytes: 5
  %loadMem_4022d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d6 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d6)
  store %struct.Memory* %call_4022d6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4022db	 Bytes: 5
  %loadMem_4022db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022db = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022db)
  store %struct.Memory* %call_4022db, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022e0	 Bytes: 4
  %loadMem_4022e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e0)
  store %struct.Memory* %call_4022e0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4022e4	 Bytes: 3
  %loadMem_4022e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e4)
  store %struct.Memory* %call_4022e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4022e7	 Bytes: 3
  %loadMem_4022e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e7)
  store %struct.Memory* %call_4022e7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4022ea	 Bytes: 3
  %loadMem_4022ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ea = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ea)
  store %struct.Memory* %call_4022ea, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 4022ed	 Bytes: 5
  %loadMem_4022ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ed = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ed)
  store %struct.Memory* %call_4022ed, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 4022f2	 Bytes: 5
  %loadMem_4022f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f2 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f2)
  store %struct.Memory* %call_4022f2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022f7	 Bytes: 4
  %loadMem_4022f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f7)
  store %struct.Memory* %call_4022f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4022fb	 Bytes: 4
  %loadMem_4022fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fb = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fb)
  store %struct.Memory* %call_4022fb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 4022ff	 Bytes: 5
  %loadMem_4022ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ff = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ff)
  store %struct.Memory* %call_4022ff, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 402304	 Bytes: 5
  %loadMem_402304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402304 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402304)
  store %struct.Memory* %call_402304, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402309	 Bytes: 4
  %loadMem_402309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402309 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402309)
  store %struct.Memory* %call_402309, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40230d	 Bytes: 3
  %loadMem_40230d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230d = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230d)
  store %struct.Memory* %call_40230d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402310	 Bytes: 3
  %loadMem_402310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402310 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402310)
  store %struct.Memory* %call_402310, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402313	 Bytes: 3
  %loadMem_402313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402313 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402313)
  store %struct.Memory* %call_402313, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402316	 Bytes: 5
  %loadMem_402316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402316 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402316)
  store %struct.Memory* %call_402316, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 40231b	 Bytes: 3
  %loadMem_40231b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231b)
  store %struct.Memory* %call_40231b, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 40231e	 Bytes: 3
  %loadMem_40231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231e = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231e)
  store %struct.Memory* %call_40231e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 402321	 Bytes: 3
  %loadMem_402321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402321 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402321)
  store %struct.Memory* %call_402321, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 402324	 Bytes: 3
  %loadMem_402324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402324 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402324)
  store %struct.Memory* %call_402324, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 402327	 Bytes: 3
  %loadMem_402327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402327 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402327)
  store %struct.Memory* %call_402327, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40232a	 Bytes: 3
  %loadMem_40232a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232a = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232a)
  store %struct.Memory* %call_40232a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40232d	 Bytes: 4
  %loadMem_40232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232d)
  store %struct.Memory* %call_40232d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402331	 Bytes: 4
  %loadMem_402331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402331 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402331)
  store %struct.Memory* %call_402331, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402335	 Bytes: 5
  %loadMem_402335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402335 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402335)
  store %struct.Memory* %call_402335, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40233a	 Bytes: 5
  %loadMem_40233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233a)
  store %struct.Memory* %call_40233a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40233f	 Bytes: 4
  %loadMem_40233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233f)
  store %struct.Memory* %call_40233f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402343	 Bytes: 3
  %loadMem_402343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402343 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402343)
  store %struct.Memory* %call_402343, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402346	 Bytes: 3
  %loadMem_402346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402346 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402346)
  store %struct.Memory* %call_402346, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402349	 Bytes: 3
  %loadMem_402349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402349 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402349)
  store %struct.Memory* %call_402349, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40234c	 Bytes: 5
  %loadMem_40234c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234c)
  store %struct.Memory* %call_40234c, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402351	 Bytes: 5
  %loadMem_402351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402351 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402351)
  store %struct.Memory* %call_402351, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402356	 Bytes: 3
  %loadMem_402356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402356 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402356)
  store %struct.Memory* %call_402356, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402359	 Bytes: 5
  %loadMem_402359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402359 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402359)
  store %struct.Memory* %call_402359, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 40235e	 Bytes: 5
  %loadMem_40235e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235e)
  store %struct.Memory* %call_40235e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402363	 Bytes: 4
  %loadMem_402363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402363 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402363)
  store %struct.Memory* %call_402363, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 402367	 Bytes: 4
  %loadMem_402367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402367 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402367)
  store %struct.Memory* %call_402367, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40236b	 Bytes: 5
  %loadMem_40236b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236b)
  store %struct.Memory* %call_40236b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 402370	 Bytes: 5
  %loadMem_402370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402370 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402370)
  store %struct.Memory* %call_402370, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402375	 Bytes: 4
  %loadMem_402375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402375 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402375)
  store %struct.Memory* %call_402375, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402379	 Bytes: 3
  %loadMem_402379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402379 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402379)
  store %struct.Memory* %call_402379, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40237c	 Bytes: 3
  %loadMem_40237c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237c)
  store %struct.Memory* %call_40237c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40237f	 Bytes: 3
  %loadMem_40237f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237f)
  store %struct.Memory* %call_40237f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402382	 Bytes: 5
  %loadMem_402382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402382 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402382)
  store %struct.Memory* %call_402382, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402387	 Bytes: 5
  %loadMem_402387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402387 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402387)
  store %struct.Memory* %call_402387, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40238c	 Bytes: 3
  %loadMem_40238c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238c = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238c)
  store %struct.Memory* %call_40238c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 40238f	 Bytes: 5
  %loadMem_40238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238f = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238f)
  store %struct.Memory* %call_40238f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 402394	 Bytes: 5
  %loadMem_402394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402394 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402394)
  store %struct.Memory* %call_402394, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 402399	 Bytes: 5
  %loadMem_402399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402399 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402399)
  store %struct.Memory* %call_402399, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40239e	 Bytes: 4
  %loadMem_40239e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239e)
  store %struct.Memory* %call_40239e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4023a2	 Bytes: 4
  %loadMem_4023a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a2)
  store %struct.Memory* %call_4023a2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023a6	 Bytes: 5
  %loadMem_4023a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a6)
  store %struct.Memory* %call_4023a6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4023ab	 Bytes: 5
  %loadMem_4023ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ab = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ab)
  store %struct.Memory* %call_4023ab, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023b0	 Bytes: 4
  %loadMem_4023b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b0)
  store %struct.Memory* %call_4023b0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4023b4	 Bytes: 3
  %loadMem_4023b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b4)
  store %struct.Memory* %call_4023b4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4023b7	 Bytes: 3
  %loadMem_4023b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b7)
  store %struct.Memory* %call_4023b7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4023ba	 Bytes: 3
  %loadMem_4023ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ba = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ba)
  store %struct.Memory* %call_4023ba, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023bd	 Bytes: 5
  %loadMem_4023bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023bd = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023bd)
  store %struct.Memory* %call_4023bd, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 4023c2	 Bytes: 5
  %loadMem_4023c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c2 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c2)
  store %struct.Memory* %call_4023c2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023c7	 Bytes: 4
  %loadMem_4023c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c7)
  store %struct.Memory* %call_4023c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4023cb	 Bytes: 4
  %loadMem_4023cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cb = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cb)
  store %struct.Memory* %call_4023cb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023cf	 Bytes: 5
  %loadMem_4023cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cf = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cf)
  store %struct.Memory* %call_4023cf, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4023d4	 Bytes: 5
  %loadMem_4023d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d4 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d4)
  store %struct.Memory* %call_4023d4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023d9	 Bytes: 4
  %loadMem_4023d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d9)
  store %struct.Memory* %call_4023d9, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4023dd	 Bytes: 3
  %loadMem_4023dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023dd = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023dd)
  store %struct.Memory* %call_4023dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4023e0	 Bytes: 3
  %loadMem_4023e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e0)
  store %struct.Memory* %call_4023e0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4023e3	 Bytes: 3
  %loadMem_4023e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e3)
  store %struct.Memory* %call_4023e3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023e6	 Bytes: 5
  %loadMem_4023e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e6)
  store %struct.Memory* %call_4023e6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4023eb	 Bytes: 3
  %loadMem_4023eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023eb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023eb)
  store %struct.Memory* %call_4023eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4023ee	 Bytes: 3
  %loadMem_4023ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ee = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ee)
  store %struct.Memory* %call_4023ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4023f1	 Bytes: 3
  %loadMem_4023f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f1 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f1)
  store %struct.Memory* %call_4023f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40221f	 RIP: 4023f4	 Bytes: 5
  %loadMem_4023f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f4 = call %struct.Memory* @routine_jmpq_.L_40221f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f4, i64 -469, i64 5)
  store %struct.Memory* %call_4023f4, %struct.Memory** %MEMORY

  br label %block_.L_40221f

  ; Code: .L_4023f9:	 RIP: 4023f9	 Bytes: 0
block_.L_4023f9:

  ; Code: movq $0x8000000000000000, %rax	 RIP: 4023f9	 Bytes: 10
  %loadMem_4023f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f9 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f9)
  store %struct.Memory* %call_4023f9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402403	 Bytes: 3
  %loadMem_402403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402403 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402403)
  store %struct.Memory* %call_402403, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 402406	 Bytes: 3
  %loadMem_402406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402406 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402406)
  store %struct.Memory* %call_402406, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402409	 Bytes: 4
  %loadMem_402409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402409 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402409)
  store %struct.Memory* %call_402409, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 40240d	 Bytes: 4
  %loadMem_40240d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240d)
  store %struct.Memory* %call_40240d, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402411	 Bytes: 3
  %loadMem_402411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402411 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402411)
  store %struct.Memory* %call_402411, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 402414	 Bytes: 3
  %loadMem_402414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402414 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402414)
  store %struct.Memory* %call_402414, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402417	 Bytes: 4
  %loadMem_402417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402417 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402417)
  store %struct.Memory* %call_402417, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40241b	 Bytes: 3
  %loadMem_40241b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241b)
  store %struct.Memory* %call_40241b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40241e	 Bytes: 3
  %loadMem_40241e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241e)
  store %struct.Memory* %call_40241e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402421	 Bytes: 3
  %loadMem_402421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402421 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402421)
  store %struct.Memory* %call_402421, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402424	 Bytes: 5
  %loadMem_402424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402424 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402424)
  store %struct.Memory* %call_402424, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402429	 Bytes: 5
  %loadMem_402429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402429 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402429)
  store %struct.Memory* %call_402429, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40242e	 Bytes: 3
  %loadMem_40242e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242e = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242e)
  store %struct.Memory* %call_40242e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402431	 Bytes: 5
  %loadMem_402431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402431 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402431)
  store %struct.Memory* %call_402431, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402436	 Bytes: 4
  %loadMem_402436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402436 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402436)
  store %struct.Memory* %call_402436, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40243a	 Bytes: 3
  %loadMem_40243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243a)
  store %struct.Memory* %call_40243a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40243d	 Bytes: 3
  %loadMem_40243d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243d)
  store %struct.Memory* %call_40243d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402440	 Bytes: 3
  %loadMem_402440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402440 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402440)
  store %struct.Memory* %call_402440, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402443	 Bytes: 5
  %loadMem_402443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402443 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402443)
  store %struct.Memory* %call_402443, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402448	 Bytes: 4
  %loadMem_402448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402448 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402448)
  store %struct.Memory* %call_402448, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40244c	 Bytes: 3
  %loadMem_40244c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244c)
  store %struct.Memory* %call_40244c, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 40244f	 Bytes: 3
  %loadMem_40244f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244f = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244f)
  store %struct.Memory* %call_40244f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402452	 Bytes: 3
  %loadMem_402452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402452 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402452)
  store %struct.Memory* %call_402452, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402455	 Bytes: 3
  %loadMem_402455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402455 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402455)
  store %struct.Memory* %call_402455, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402458	 Bytes: 5
  %loadMem_402458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402458 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402458)
  store %struct.Memory* %call_402458, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 40245d	 Bytes: 5
  %loadMem_40245d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245d = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245d)
  store %struct.Memory* %call_40245d, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402462	 Bytes: 3
  %loadMem_402462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402462 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402462)
  store %struct.Memory* %call_402462, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402465	 Bytes: 5
  %loadMem_402465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402465 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402465)
  store %struct.Memory* %call_402465, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40246a	 Bytes: 4
  %loadMem_40246a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246a)
  store %struct.Memory* %call_40246a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40246e	 Bytes: 3
  %loadMem_40246e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246e)
  store %struct.Memory* %call_40246e, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 402471	 Bytes: 3
  %loadMem_402471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402471 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402471)
  store %struct.Memory* %call_402471, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402474	 Bytes: 3
  %loadMem_402474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402474 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402474)
  store %struct.Memory* %call_402474, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402477	 Bytes: 3
  %loadMem_402477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402477 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402477)
  store %struct.Memory* %call_402477, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 40247a	 Bytes: 5
  %loadMem_40247a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247a = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247a)
  store %struct.Memory* %call_40247a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40247f	 Bytes: 3
  %loadMem_40247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247f)
  store %struct.Memory* %call_40247f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402482	 Bytes: 3
  %loadMem_402482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402482 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402482)
  store %struct.Memory* %call_402482, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 402485	 Bytes: 3
  %loadMem_402485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402485 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402485)
  store %struct.Memory* %call_402485, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40220c	 RIP: 402488	 Bytes: 5
  %loadMem_402488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402488 = call %struct.Memory* @routine_jmpq_.L_40220c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402488, i64 -636, i64 5)
  store %struct.Memory* %call_402488, %struct.Memory** %MEMORY

  br label %block_.L_40220c

  ; Code: .L_40248d:	 RIP: 40248d	 Bytes: 0
block_.L_40248d:

  ; Code: jmpq .L_402492	 RIP: 40248d	 Bytes: 5
  %loadMem_40248d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248d = call %struct.Memory* @routine_jmpq_.L_402492(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248d, i64 5, i64 5)
  store %struct.Memory* %call_40248d, %struct.Memory** %MEMORY

  br label %block_.L_402492

  ; Code: .L_402492:	 RIP: 402492	 Bytes: 0
block_.L_402492:

  ; Code: popq %rbp	 RIP: 402492	 Bytes: 1
  %loadMem_402492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402492 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402492)
  store %struct.Memory* %call_402492, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 402493	 Bytes: 1
  %loadMem_402493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402493 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402493)
  store %struct.Memory* %call_402493, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_402493
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_jge_.L_401c8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_401c7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401c45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401c26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4021ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jge_.L_4021a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_40203f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -9223372036854775808)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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




define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to i64*
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
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

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to i64*
  store i64 %3, i64* %5, align 1
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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




define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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






define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RSI
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












define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








































































































define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_subl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






















define %struct.Memory* @routine_jmpq_.L_401cbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












































define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_jmpq_.L_401caa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402492(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_xorq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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


define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
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






define %struct.Memory* @routine_jge_.L_40248d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_4023f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






































































































































































































































define %struct.Memory* @routine_jmpq_.L_40221f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














































































define %struct.Memory* @routine_jmpq_.L_40220c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

