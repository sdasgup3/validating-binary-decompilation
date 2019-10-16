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


; Data Access Globals


define %struct.Memory* @cftmdl(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .cftmdl:	 RIP: 403320	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 403320	 Bytes: 1
  %loadMem_403320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403320 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403320)
  store %struct.Memory* %call_403320, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 403321	 Bytes: 3
  %loadMem_403321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403321 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403321)
  store %struct.Memory* %call_403321, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 403324	 Bytes: 4
  %loadMem_403324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403324 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403324)
  store %struct.Memory* %call_403324, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 403328	 Bytes: 3
  %loadMem_403328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403328 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403328)
  store %struct.Memory* %call_403328, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 40332b	 Bytes: 3
  %loadMem_40332b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40332b = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40332b)
  store %struct.Memory* %call_40332b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x10(%rbp)	 RIP: 40332e	 Bytes: 4
  %loadMem_40332e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40332e = call %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40332e)
  store %struct.Memory* %call_40332e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x18(%rbp)	 RIP: 403332	 Bytes: 4
  %loadMem_403332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403332 = call %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403332)
  store %struct.Memory* %call_403332, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 403336	 Bytes: 3
  %loadMem_403336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403336 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403336)
  store %struct.Memory* %call_403336, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %esi	 RIP: 403339	 Bytes: 3
  %loadMem_403339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403339 = call %struct.Memory* @routine_shll__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403339)
  store %struct.Memory* %call_403339, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x38(%rbp)	 RIP: 40333c	 Bytes: 3
  %loadMem_40333c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40333c = call %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40333c)
  store %struct.Memory* %call_40333c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40333f	 Bytes: 7
  %loadMem_40333f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40333f = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40333f)
  store %struct.Memory* %call_40333f, %struct.Memory** %MEMORY

  ; Code: .L_403346:	 RIP: 403346	 Bytes: 0
  br label %block_.L_403346
block_.L_403346:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403346	 Bytes: 3
  %loadMem_403346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403346 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403346)
  store %struct.Memory* %call_403346, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 403349	 Bytes: 3
  %loadMem_403349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403349 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403349)
  store %struct.Memory* %call_403349, %struct.Memory** %MEMORY

  ; Code: jge .L_40359d	 RIP: 40334c	 Bytes: 6
  %loadMem_40334c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40334c = call %struct.Memory* @routine_jge_.L_40359d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40334c, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_40334c, %struct.Memory** %MEMORY

  %loadBr_40334c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40334c = icmp eq i8 %loadBr_40334c, 1
  br i1 %cmpBr_40334c, label %block_.L_40359d, label %block_403352

block_403352:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403352	 Bytes: 3
  %loadMem_403352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403352 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403352)
  store %struct.Memory* %call_403352, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403355	 Bytes: 3
  %loadMem_403355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403355 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403355)
  store %struct.Memory* %call_403355, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 403358	 Bytes: 3
  %loadMem_403358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403358 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403358)
  store %struct.Memory* %call_403358, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40335b	 Bytes: 3
  %loadMem_40335b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40335b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40335b)
  store %struct.Memory* %call_40335b, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40335e	 Bytes: 3
  %loadMem_40335e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40335e = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40335e)
  store %struct.Memory* %call_40335e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 403361	 Bytes: 3
  %loadMem_403361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403361 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403361)
  store %struct.Memory* %call_403361, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403364	 Bytes: 3
  %loadMem_403364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403364 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403364)
  store %struct.Memory* %call_403364, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403367	 Bytes: 3
  %loadMem_403367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403367 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403367)
  store %struct.Memory* %call_403367, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 40336a	 Bytes: 3
  %loadMem_40336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40336a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40336a)
  store %struct.Memory* %call_40336a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40336d	 Bytes: 4
  %loadMem_40336d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40336d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40336d)
  store %struct.Memory* %call_40336d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403371	 Bytes: 4
  %loadMem_403371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403371 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403371)
  store %struct.Memory* %call_403371, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403375	 Bytes: 5
  %loadMem_403375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403375 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403375)
  store %struct.Memory* %call_403375, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40337a	 Bytes: 4
  %loadMem_40337a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40337a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40337a)
  store %struct.Memory* %call_40337a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40337e	 Bytes: 4
  %loadMem_40337e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40337e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40337e)
  store %struct.Memory* %call_40337e, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403382	 Bytes: 5
  %loadMem_403382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403382 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403382)
  store %struct.Memory* %call_403382, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403387	 Bytes: 5
  %loadMem_403387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403387 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403387)
  store %struct.Memory* %call_403387, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40338c	 Bytes: 4
  %loadMem_40338c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40338c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40338c)
  store %struct.Memory* %call_40338c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403390	 Bytes: 3
  %loadMem_403390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403390 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403390)
  store %struct.Memory* %call_403390, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403393	 Bytes: 3
  %loadMem_403393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403393 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403393)
  store %struct.Memory* %call_403393, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403396	 Bytes: 3
  %loadMem_403396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403396 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403396)
  store %struct.Memory* %call_403396, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403399	 Bytes: 5
  %loadMem_403399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403399 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403399)
  store %struct.Memory* %call_403399, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40339e	 Bytes: 4
  %loadMem_40339e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40339e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40339e)
  store %struct.Memory* %call_40339e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4033a2	 Bytes: 3
  %loadMem_4033a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a2)
  store %struct.Memory* %call_4033a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033a5	 Bytes: 3
  %loadMem_4033a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a5)
  store %struct.Memory* %call_4033a5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033a8	 Bytes: 3
  %loadMem_4033a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033a8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033a8)
  store %struct.Memory* %call_4033a8, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4033ab	 Bytes: 5
  %loadMem_4033ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ab = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ab)
  store %struct.Memory* %call_4033ab, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4033b0	 Bytes: 5
  %loadMem_4033b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b0)
  store %struct.Memory* %call_4033b0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033b5	 Bytes: 4
  %loadMem_4033b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b5)
  store %struct.Memory* %call_4033b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4033b9	 Bytes: 4
  %loadMem_4033b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033b9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033b9)
  store %struct.Memory* %call_4033b9, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033bd	 Bytes: 5
  %loadMem_4033bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033bd = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033bd)
  store %struct.Memory* %call_4033bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033c2	 Bytes: 4
  %loadMem_4033c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c2)
  store %struct.Memory* %call_4033c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4033c6	 Bytes: 4
  %loadMem_4033c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033c6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033c6)
  store %struct.Memory* %call_4033c6, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4033ca	 Bytes: 5
  %loadMem_4033ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ca = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ca)
  store %struct.Memory* %call_4033ca, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4033cf	 Bytes: 8
  %loadMem_4033cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033cf = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033cf)
  store %struct.Memory* %call_4033cf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033d7	 Bytes: 4
  %loadMem_4033d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033d7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033d7)
  store %struct.Memory* %call_4033d7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4033db	 Bytes: 3
  %loadMem_4033db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033db = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033db)
  store %struct.Memory* %call_4033db, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033de	 Bytes: 3
  %loadMem_4033de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033de = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033de)
  store %struct.Memory* %call_4033de, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033e1	 Bytes: 3
  %loadMem_4033e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e1 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e1)
  store %struct.Memory* %call_4033e1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4033e4	 Bytes: 5
  %loadMem_4033e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e4 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e4)
  store %struct.Memory* %call_4033e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4033e9	 Bytes: 4
  %loadMem_4033e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033e9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033e9)
  store %struct.Memory* %call_4033e9, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4033ed	 Bytes: 3
  %loadMem_4033ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033ed = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033ed)
  store %struct.Memory* %call_4033ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4033f0	 Bytes: 3
  %loadMem_4033f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f0)
  store %struct.Memory* %call_4033f0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4033f3	 Bytes: 3
  %loadMem_4033f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f3 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f3)
  store %struct.Memory* %call_4033f3, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4033f6	 Bytes: 5
  %loadMem_4033f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033f6 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033f6)
  store %struct.Memory* %call_4033f6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4033fb	 Bytes: 8
  %loadMem_4033fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4033fb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4033fb)
  store %struct.Memory* %call_4033fb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403403	 Bytes: 4
  %loadMem_403403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403403 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403403)
  store %struct.Memory* %call_403403, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403407	 Bytes: 4
  %loadMem_403407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403407 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403407)
  store %struct.Memory* %call_403407, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40340b	 Bytes: 5
  %loadMem_40340b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40340b = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40340b)
  store %struct.Memory* %call_40340b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403410	 Bytes: 4
  %loadMem_403410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403410 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403410)
  store %struct.Memory* %call_403410, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403414	 Bytes: 4
  %loadMem_403414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403414 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403414)
  store %struct.Memory* %call_403414, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403418	 Bytes: 5
  %loadMem_403418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403418 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403418)
  store %struct.Memory* %call_403418, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 40341d	 Bytes: 8
  %loadMem_40341d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40341d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40341d)
  store %struct.Memory* %call_40341d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403425	 Bytes: 4
  %loadMem_403425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403425 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403425)
  store %struct.Memory* %call_403425, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403429	 Bytes: 3
  %loadMem_403429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403429 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403429)
  store %struct.Memory* %call_403429, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40342c	 Bytes: 3
  %loadMem_40342c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40342c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40342c)
  store %struct.Memory* %call_40342c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40342f	 Bytes: 3
  %loadMem_40342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40342f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40342f)
  store %struct.Memory* %call_40342f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403432	 Bytes: 5
  %loadMem_403432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403432 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403432)
  store %struct.Memory* %call_403432, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403437	 Bytes: 4
  %loadMem_403437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403437 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403437)
  store %struct.Memory* %call_403437, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 40343b	 Bytes: 3
  %loadMem_40343b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343b)
  store %struct.Memory* %call_40343b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40343e	 Bytes: 3
  %loadMem_40343e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40343e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40343e)
  store %struct.Memory* %call_40343e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403441	 Bytes: 3
  %loadMem_403441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403441 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403441)
  store %struct.Memory* %call_403441, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403444	 Bytes: 5
  %loadMem_403444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403444 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403444)
  store %struct.Memory* %call_403444, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403449	 Bytes: 8
  %loadMem_403449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403449 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403449)
  store %struct.Memory* %call_403449, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403451	 Bytes: 4
  %loadMem_403451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403451 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403451)
  store %struct.Memory* %call_403451, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403455	 Bytes: 4
  %loadMem_403455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403455 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403455)
  store %struct.Memory* %call_403455, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403459	 Bytes: 5
  %loadMem_403459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403459 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403459)
  store %struct.Memory* %call_403459, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40345e	 Bytes: 4
  %loadMem_40345e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40345e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40345e)
  store %struct.Memory* %call_40345e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403462	 Bytes: 4
  %loadMem_403462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403462 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403462)
  store %struct.Memory* %call_403462, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403466	 Bytes: 5
  %loadMem_403466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403466 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403466)
  store %struct.Memory* %call_403466, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 40346b	 Bytes: 8
  %loadMem_40346b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40346b = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40346b)
  store %struct.Memory* %call_40346b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403473	 Bytes: 4
  %loadMem_403473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403473 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403473)
  store %struct.Memory* %call_403473, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403477	 Bytes: 3
  %loadMem_403477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403477 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403477)
  store %struct.Memory* %call_403477, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40347a	 Bytes: 3
  %loadMem_40347a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40347a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40347a)
  store %struct.Memory* %call_40347a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40347d	 Bytes: 3
  %loadMem_40347d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40347d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40347d)
  store %struct.Memory* %call_40347d, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403480	 Bytes: 5
  %loadMem_403480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403480 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403480)
  store %struct.Memory* %call_403480, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403485	 Bytes: 4
  %loadMem_403485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403485 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403485)
  store %struct.Memory* %call_403485, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403489	 Bytes: 3
  %loadMem_403489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403489 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403489)
  store %struct.Memory* %call_403489, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40348c	 Bytes: 3
  %loadMem_40348c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348c)
  store %struct.Memory* %call_40348c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40348f	 Bytes: 3
  %loadMem_40348f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40348f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40348f)
  store %struct.Memory* %call_40348f, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403492	 Bytes: 5
  %loadMem_403492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403492 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403492)
  store %struct.Memory* %call_403492, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403497	 Bytes: 8
  %loadMem_403497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403497 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403497)
  store %struct.Memory* %call_403497, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 40349f	 Bytes: 5
  %loadMem_40349f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40349f = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40349f)
  store %struct.Memory* %call_40349f, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 4034a4	 Bytes: 8
  %loadMem_4034a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034a4 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034a4)
  store %struct.Memory* %call_4034a4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034ac	 Bytes: 4
  %loadMem_4034ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ac)
  store %struct.Memory* %call_4034ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4034b0	 Bytes: 4
  %loadMem_4034b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b0)
  store %struct.Memory* %call_4034b0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034b4	 Bytes: 5
  %loadMem_4034b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b4 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b4)
  store %struct.Memory* %call_4034b4, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 4034b9	 Bytes: 5
  %loadMem_4034b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034b9 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034b9)
  store %struct.Memory* %call_4034b9, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 4034be	 Bytes: 8
  %loadMem_4034be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034be = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034be)
  store %struct.Memory* %call_4034be, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034c6	 Bytes: 4
  %loadMem_4034c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034c6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034c6)
  store %struct.Memory* %call_4034c6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4034ca	 Bytes: 3
  %loadMem_4034ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ca = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ca)
  store %struct.Memory* %call_4034ca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4034cd	 Bytes: 3
  %loadMem_4034cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034cd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034cd)
  store %struct.Memory* %call_4034cd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4034d0	 Bytes: 3
  %loadMem_4034d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d0)
  store %struct.Memory* %call_4034d0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034d3	 Bytes: 5
  %loadMem_4034d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d3 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d3)
  store %struct.Memory* %call_4034d3, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4034d8	 Bytes: 5
  %loadMem_4034d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034d8 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034d8)
  store %struct.Memory* %call_4034d8, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 4034dd	 Bytes: 8
  %loadMem_4034dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034dd = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034dd)
  store %struct.Memory* %call_4034dd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034e5	 Bytes: 4
  %loadMem_4034e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e5)
  store %struct.Memory* %call_4034e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4034e9	 Bytes: 4
  %loadMem_4034e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034e9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034e9)
  store %struct.Memory* %call_4034e9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4034ed	 Bytes: 5
  %loadMem_4034ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ed = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ed)
  store %struct.Memory* %call_4034ed, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 4034f2	 Bytes: 5
  %loadMem_4034f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f2 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f2)
  store %struct.Memory* %call_4034f2, %struct.Memory** %MEMORY

  ; Code: subsd -0xa0(%rbp), %xmm0	 RIP: 4034f7	 Bytes: 8
  %loadMem_4034f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034f7 = call %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034f7)
  store %struct.Memory* %call_4034f7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4034ff	 Bytes: 4
  %loadMem_4034ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4034ff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4034ff)
  store %struct.Memory* %call_4034ff, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403503	 Bytes: 3
  %loadMem_403503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403503 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403503)
  store %struct.Memory* %call_403503, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403506	 Bytes: 3
  %loadMem_403506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403506 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403506)
  store %struct.Memory* %call_403506, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403509	 Bytes: 3
  %loadMem_403509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403509 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403509)
  store %struct.Memory* %call_403509, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40350c	 Bytes: 5
  %loadMem_40350c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40350c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40350c)
  store %struct.Memory* %call_40350c, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403511	 Bytes: 8
  %loadMem_403511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403511 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403511)
  store %struct.Memory* %call_403511, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403519	 Bytes: 8
  %loadMem_403519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403519 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403519)
  store %struct.Memory* %call_403519, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403521	 Bytes: 4
  %loadMem_403521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403521 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403521)
  store %struct.Memory* %call_403521, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403525	 Bytes: 4
  %loadMem_403525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403525 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403525)
  store %struct.Memory* %call_403525, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403529	 Bytes: 5
  %loadMem_403529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403529 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403529)
  store %struct.Memory* %call_403529, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 40352e	 Bytes: 8
  %loadMem_40352e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40352e = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40352e)
  store %struct.Memory* %call_40352e, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403536	 Bytes: 8
  %loadMem_403536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403536 = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403536)
  store %struct.Memory* %call_403536, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40353e	 Bytes: 4
  %loadMem_40353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40353e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40353e)
  store %struct.Memory* %call_40353e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403542	 Bytes: 3
  %loadMem_403542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403542 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403542)
  store %struct.Memory* %call_403542, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403545	 Bytes: 3
  %loadMem_403545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403545 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403545)
  store %struct.Memory* %call_403545, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403548	 Bytes: 3
  %loadMem_403548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403548 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403548)
  store %struct.Memory* %call_403548, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40354b	 Bytes: 5
  %loadMem_40354b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40354b = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40354b)
  store %struct.Memory* %call_40354b, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403550	 Bytes: 8
  %loadMem_403550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403550 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403550)
  store %struct.Memory* %call_403550, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403558	 Bytes: 8
  %loadMem_403558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403558 = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403558)
  store %struct.Memory* %call_403558, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403560	 Bytes: 4
  %loadMem_403560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403560 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403560)
  store %struct.Memory* %call_403560, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403564	 Bytes: 4
  %loadMem_403564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403564 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403564)
  store %struct.Memory* %call_403564, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403568	 Bytes: 5
  %loadMem_403568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403568 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403568)
  store %struct.Memory* %call_403568, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 40356d	 Bytes: 8
  %loadMem_40356d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40356d = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40356d)
  store %struct.Memory* %call_40356d, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403575	 Bytes: 8
  %loadMem_403575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403575 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403575)
  store %struct.Memory* %call_403575, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40357d	 Bytes: 4
  %loadMem_40357d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40357d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40357d)
  store %struct.Memory* %call_40357d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403581	 Bytes: 3
  %loadMem_403581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403581 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403581)
  store %struct.Memory* %call_403581, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403584	 Bytes: 3
  %loadMem_403584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403584 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403584)
  store %struct.Memory* %call_403584, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403587	 Bytes: 3
  %loadMem_403587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403587 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403587)
  store %struct.Memory* %call_403587, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40358a	 Bytes: 5
  %loadMem_40358a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358a)
  store %struct.Memory* %call_40358a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40358f	 Bytes: 3
  %loadMem_40358f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40358f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40358f)
  store %struct.Memory* %call_40358f, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403592	 Bytes: 3
  %loadMem_403592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403592 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403592)
  store %struct.Memory* %call_403592, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403595	 Bytes: 3
  %loadMem_403595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403595 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403595)
  store %struct.Memory* %call_403595, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403346	 RIP: 403598	 Bytes: 5
  %loadMem_403598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403598 = call %struct.Memory* @routine_jmpq_.L_403346(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403598, i64 -594, i64 5)
  store %struct.Memory* %call_403598, %struct.Memory** %MEMORY

  br label %block_.L_403346

  ; Code: .L_40359d:	 RIP: 40359d	 Bytes: 0
block_.L_40359d:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40359d	 Bytes: 4
  %loadMem_40359d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40359d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40359d)
  store %struct.Memory* %call_40359d, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rax), %xmm0	 RIP: 4035a1	 Bytes: 5
  %loadMem_4035a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a1 = call %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a1)
  store %struct.Memory* %call_4035a1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4035a6	 Bytes: 5
  %loadMem_4035a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035a6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035a6)
  store %struct.Memory* %call_4035a6, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 4035ab	 Bytes: 3
  %loadMem_4035ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ab = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ab)
  store %struct.Memory* %call_4035ab, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 4035ae	 Bytes: 3
  %loadMem_4035ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ae = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ae)
  store %struct.Memory* %call_4035ae, %struct.Memory** %MEMORY

  ; Code: .L_4035b1:	 RIP: 4035b1	 Bytes: 0
  br label %block_.L_4035b1
block_.L_4035b1:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035b1	 Bytes: 3
  %loadMem_4035b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b1)
  store %struct.Memory* %call_4035b1, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4035b4	 Bytes: 3
  %loadMem_4035b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b4)
  store %struct.Memory* %call_4035b4, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 4035b7	 Bytes: 3
  %loadMem_4035b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035b7 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035b7)
  store %struct.Memory* %call_4035b7, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4035ba	 Bytes: 2
  %loadMem_4035ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ba = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ba)
  store %struct.Memory* %call_4035ba, %struct.Memory** %MEMORY

  ; Code: jge .L_40386d	 RIP: 4035bc	 Bytes: 6
  %loadMem_4035bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035bc = call %struct.Memory* @routine_jge_.L_40386d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035bc, i8* %BRANCH_TAKEN, i64 689, i64 6, i64 6)
  store %struct.Memory* %call_4035bc, %struct.Memory** %MEMORY

  %loadBr_4035bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035bc = icmp eq i8 %loadBr_4035bc, 1
  br i1 %cmpBr_4035bc, label %block_.L_40386d, label %block_4035c2

block_4035c2:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4035c2	 Bytes: 3
  %loadMem_4035c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c2)
  store %struct.Memory* %call_4035c2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035c5	 Bytes: 3
  %loadMem_4035c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c5)
  store %struct.Memory* %call_4035c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4035c8	 Bytes: 3
  %loadMem_4035c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c8)
  store %struct.Memory* %call_4035c8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4035cb	 Bytes: 3
  %loadMem_4035cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035cb = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035cb)
  store %struct.Memory* %call_4035cb, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035ce	 Bytes: 3
  %loadMem_4035ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ce = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ce)
  store %struct.Memory* %call_4035ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4035d1	 Bytes: 3
  %loadMem_4035d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d1 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d1)
  store %struct.Memory* %call_4035d1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4035d4	 Bytes: 3
  %loadMem_4035d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d4)
  store %struct.Memory* %call_4035d4, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 4035d7	 Bytes: 3
  %loadMem_4035d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d7 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d7)
  store %struct.Memory* %call_4035d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4035da	 Bytes: 3
  %loadMem_4035da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035da = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035da)
  store %struct.Memory* %call_4035da, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035dd	 Bytes: 4
  %loadMem_4035dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035dd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035dd)
  store %struct.Memory* %call_4035dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4035e1	 Bytes: 4
  %loadMem_4035e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e1)
  store %struct.Memory* %call_4035e1, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4035e5	 Bytes: 5
  %loadMem_4035e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e5 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e5)
  store %struct.Memory* %call_4035e5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035ea	 Bytes: 4
  %loadMem_4035ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ea = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ea)
  store %struct.Memory* %call_4035ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4035ee	 Bytes: 4
  %loadMem_4035ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ee = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ee)
  store %struct.Memory* %call_4035ee, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4035f2	 Bytes: 5
  %loadMem_4035f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f2 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f2)
  store %struct.Memory* %call_4035f2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4035f7	 Bytes: 5
  %loadMem_4035f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f7)
  store %struct.Memory* %call_4035f7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4035fc	 Bytes: 4
  %loadMem_4035fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035fc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035fc)
  store %struct.Memory* %call_4035fc, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403600	 Bytes: 3
  %loadMem_403600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403600 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403600)
  store %struct.Memory* %call_403600, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403603	 Bytes: 3
  %loadMem_403603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403603 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403603)
  store %struct.Memory* %call_403603, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403606	 Bytes: 3
  %loadMem_403606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403606 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403606)
  store %struct.Memory* %call_403606, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403609	 Bytes: 5
  %loadMem_403609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403609 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403609)
  store %struct.Memory* %call_403609, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40360e	 Bytes: 4
  %loadMem_40360e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40360e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40360e)
  store %struct.Memory* %call_40360e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403612	 Bytes: 3
  %loadMem_403612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403612 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403612)
  store %struct.Memory* %call_403612, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403615	 Bytes: 3
  %loadMem_403615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403615 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403615)
  store %struct.Memory* %call_403615, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403618	 Bytes: 3
  %loadMem_403618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403618 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403618)
  store %struct.Memory* %call_403618, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 40361b	 Bytes: 5
  %loadMem_40361b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361b = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361b)
  store %struct.Memory* %call_40361b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403620	 Bytes: 5
  %loadMem_403620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403620 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403620)
  store %struct.Memory* %call_403620, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403625	 Bytes: 4
  %loadMem_403625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403625 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403625)
  store %struct.Memory* %call_403625, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403629	 Bytes: 4
  %loadMem_403629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403629 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403629)
  store %struct.Memory* %call_403629, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40362d	 Bytes: 5
  %loadMem_40362d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362d = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362d)
  store %struct.Memory* %call_40362d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403632	 Bytes: 4
  %loadMem_403632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403632 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403632)
  store %struct.Memory* %call_403632, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403636	 Bytes: 4
  %loadMem_403636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403636 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403636)
  store %struct.Memory* %call_403636, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 40363a	 Bytes: 5
  %loadMem_40363a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40363a = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40363a)
  store %struct.Memory* %call_40363a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 40363f	 Bytes: 8
  %loadMem_40363f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40363f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40363f)
  store %struct.Memory* %call_40363f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403647	 Bytes: 4
  %loadMem_403647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403647 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403647)
  store %struct.Memory* %call_403647, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40364b	 Bytes: 3
  %loadMem_40364b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364b)
  store %struct.Memory* %call_40364b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40364e	 Bytes: 3
  %loadMem_40364e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364e)
  store %struct.Memory* %call_40364e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403651	 Bytes: 3
  %loadMem_403651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403651 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403651)
  store %struct.Memory* %call_403651, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403654	 Bytes: 5
  %loadMem_403654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403654 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403654)
  store %struct.Memory* %call_403654, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403659	 Bytes: 4
  %loadMem_403659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403659 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403659)
  store %struct.Memory* %call_403659, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40365d	 Bytes: 3
  %loadMem_40365d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40365d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40365d)
  store %struct.Memory* %call_40365d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403660	 Bytes: 3
  %loadMem_403660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403660 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403660)
  store %struct.Memory* %call_403660, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403663	 Bytes: 3
  %loadMem_403663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403663 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403663)
  store %struct.Memory* %call_403663, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403666	 Bytes: 5
  %loadMem_403666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403666 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403666)
  store %struct.Memory* %call_403666, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 40366b	 Bytes: 8
  %loadMem_40366b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40366b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40366b)
  store %struct.Memory* %call_40366b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403673	 Bytes: 4
  %loadMem_403673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403673 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403673)
  store %struct.Memory* %call_403673, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403677	 Bytes: 4
  %loadMem_403677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403677 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403677)
  store %struct.Memory* %call_403677, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 40367b	 Bytes: 5
  %loadMem_40367b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40367b = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40367b)
  store %struct.Memory* %call_40367b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403680	 Bytes: 4
  %loadMem_403680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403680 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403680)
  store %struct.Memory* %call_403680, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403684	 Bytes: 4
  %loadMem_403684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403684 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403684)
  store %struct.Memory* %call_403684, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403688	 Bytes: 5
  %loadMem_403688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403688 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403688)
  store %struct.Memory* %call_403688, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 40368d	 Bytes: 8
  %loadMem_40368d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368d)
  store %struct.Memory* %call_40368d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403695	 Bytes: 4
  %loadMem_403695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403695 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403695)
  store %struct.Memory* %call_403695, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403699	 Bytes: 3
  %loadMem_403699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403699 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403699)
  store %struct.Memory* %call_403699, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40369c	 Bytes: 3
  %loadMem_40369c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40369c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40369c)
  store %struct.Memory* %call_40369c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 40369f	 Bytes: 3
  %loadMem_40369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40369f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40369f)
  store %struct.Memory* %call_40369f, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036a2	 Bytes: 5
  %loadMem_4036a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a2 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a2)
  store %struct.Memory* %call_4036a2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036a7	 Bytes: 4
  %loadMem_4036a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a7)
  store %struct.Memory* %call_4036a7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4036ab	 Bytes: 3
  %loadMem_4036ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ab = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ab)
  store %struct.Memory* %call_4036ab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036ae	 Bytes: 3
  %loadMem_4036ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ae = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ae)
  store %struct.Memory* %call_4036ae, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036b1	 Bytes: 3
  %loadMem_4036b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b1 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b1)
  store %struct.Memory* %call_4036b1, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 4036b4	 Bytes: 5
  %loadMem_4036b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b4 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b4)
  store %struct.Memory* %call_4036b4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 4036b9	 Bytes: 8
  %loadMem_4036b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b9)
  store %struct.Memory* %call_4036b9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036c1	 Bytes: 4
  %loadMem_4036c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c1)
  store %struct.Memory* %call_4036c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4036c5	 Bytes: 4
  %loadMem_4036c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c5)
  store %struct.Memory* %call_4036c5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036c9	 Bytes: 5
  %loadMem_4036c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c9 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c9)
  store %struct.Memory* %call_4036c9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036ce	 Bytes: 4
  %loadMem_4036ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ce)
  store %struct.Memory* %call_4036ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4036d2	 Bytes: 4
  %loadMem_4036d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d2)
  store %struct.Memory* %call_4036d2, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4036d6	 Bytes: 5
  %loadMem_4036d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d6 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d6)
  store %struct.Memory* %call_4036d6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 4036db	 Bytes: 8
  %loadMem_4036db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036db = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036db)
  store %struct.Memory* %call_4036db, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036e3	 Bytes: 4
  %loadMem_4036e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e3)
  store %struct.Memory* %call_4036e3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4036e7	 Bytes: 3
  %loadMem_4036e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e7)
  store %struct.Memory* %call_4036e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036ea	 Bytes: 3
  %loadMem_4036ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ea)
  store %struct.Memory* %call_4036ea, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036ed	 Bytes: 3
  %loadMem_4036ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ed = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ed)
  store %struct.Memory* %call_4036ed, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4036f0	 Bytes: 5
  %loadMem_4036f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f0 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f0)
  store %struct.Memory* %call_4036f0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036f5	 Bytes: 4
  %loadMem_4036f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f5)
  store %struct.Memory* %call_4036f5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4036f9	 Bytes: 3
  %loadMem_4036f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f9)
  store %struct.Memory* %call_4036f9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4036fc	 Bytes: 3
  %loadMem_4036fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036fc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036fc)
  store %struct.Memory* %call_4036fc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4036ff	 Bytes: 3
  %loadMem_4036ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ff = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ff)
  store %struct.Memory* %call_4036ff, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403702	 Bytes: 5
  %loadMem_403702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403702 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403702)
  store %struct.Memory* %call_403702, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403707	 Bytes: 8
  %loadMem_403707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403707 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403707)
  store %struct.Memory* %call_403707, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 40370f	 Bytes: 5
  %loadMem_40370f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40370f = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40370f)
  store %struct.Memory* %call_40370f, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403714	 Bytes: 8
  %loadMem_403714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403714 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403714)
  store %struct.Memory* %call_403714, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40371c	 Bytes: 4
  %loadMem_40371c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40371c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40371c)
  store %struct.Memory* %call_40371c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403720	 Bytes: 4
  %loadMem_403720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403720 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403720)
  store %struct.Memory* %call_403720, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403724	 Bytes: 5
  %loadMem_403724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403724 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403724)
  store %struct.Memory* %call_403724, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403729	 Bytes: 5
  %loadMem_403729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403729 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403729)
  store %struct.Memory* %call_403729, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 40372e	 Bytes: 8
  %loadMem_40372e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40372e = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40372e)
  store %struct.Memory* %call_40372e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403736	 Bytes: 4
  %loadMem_403736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403736 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403736)
  store %struct.Memory* %call_403736, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40373a	 Bytes: 3
  %loadMem_40373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40373a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40373a)
  store %struct.Memory* %call_40373a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40373d	 Bytes: 3
  %loadMem_40373d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40373d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40373d)
  store %struct.Memory* %call_40373d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403740	 Bytes: 3
  %loadMem_403740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403740 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403740)
  store %struct.Memory* %call_403740, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403743	 Bytes: 5
  %loadMem_403743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403743 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403743)
  store %struct.Memory* %call_403743, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403748	 Bytes: 8
  %loadMem_403748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403748 = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403748)
  store %struct.Memory* %call_403748, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm0	 RIP: 403750	 Bytes: 5
  %loadMem_403750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403750 = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403750)
  store %struct.Memory* %call_403750, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403755	 Bytes: 4
  %loadMem_403755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403755 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403755)
  store %struct.Memory* %call_403755, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403759	 Bytes: 4
  %loadMem_403759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403759 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403759)
  store %struct.Memory* %call_403759, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40375d	 Bytes: 5
  %loadMem_40375d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40375d = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40375d)
  store %struct.Memory* %call_40375d, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403762	 Bytes: 5
  %loadMem_403762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403762 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403762)
  store %struct.Memory* %call_403762, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 403767	 Bytes: 8
  %loadMem_403767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403767 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403767)
  store %struct.Memory* %call_403767, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40376f	 Bytes: 4
  %loadMem_40376f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40376f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40376f)
  store %struct.Memory* %call_40376f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403773	 Bytes: 3
  %loadMem_403773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403773 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403773)
  store %struct.Memory* %call_403773, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403776	 Bytes: 3
  %loadMem_403776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403776 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403776)
  store %struct.Memory* %call_403776, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403779	 Bytes: 3
  %loadMem_403779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403779 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403779)
  store %struct.Memory* %call_403779, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40377c	 Bytes: 5
  %loadMem_40377c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40377c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40377c)
  store %struct.Memory* %call_40377c, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403781	 Bytes: 8
  %loadMem_403781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403781 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403781)
  store %struct.Memory* %call_403781, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403789	 Bytes: 8
  %loadMem_403789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403789 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403789)
  store %struct.Memory* %call_403789, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403791	 Bytes: 5
  %loadMem_403791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403791 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403791)
  store %struct.Memory* %call_403791, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403796	 Bytes: 8
  %loadMem_403796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403796 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403796)
  store %struct.Memory* %call_403796, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 40379e	 Bytes: 8
  %loadMem_40379e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40379e = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40379e)
  store %struct.Memory* %call_40379e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4037a6	 Bytes: 5
  %loadMem_4037a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037a6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037a6)
  store %struct.Memory* %call_4037a6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4037ab	 Bytes: 5
  %loadMem_4037ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ab = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ab)
  store %struct.Memory* %call_4037ab, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 4037b0	 Bytes: 5
  %loadMem_4037b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b0 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b0)
  store %struct.Memory* %call_4037b0, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm1	 RIP: 4037b5	 Bytes: 5
  %loadMem_4037b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b5 = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b5)
  store %struct.Memory* %call_4037b5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4037ba	 Bytes: 4
  %loadMem_4037ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ba = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ba)
  store %struct.Memory* %call_4037ba, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4037be	 Bytes: 4
  %loadMem_4037be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037be = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037be)
  store %struct.Memory* %call_4037be, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4037c2	 Bytes: 4
  %loadMem_4037c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c2)
  store %struct.Memory* %call_4037c2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4037c6	 Bytes: 5
  %loadMem_4037c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c6 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c6)
  store %struct.Memory* %call_4037c6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4037cb	 Bytes: 5
  %loadMem_4037cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037cb = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037cb)
  store %struct.Memory* %call_4037cb, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 4037d0	 Bytes: 5
  %loadMem_4037d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d0 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d0)
  store %struct.Memory* %call_4037d0, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm1	 RIP: 4037d5	 Bytes: 5
  %loadMem_4037d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d5 = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d5)
  store %struct.Memory* %call_4037d5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 4037da	 Bytes: 4
  %loadMem_4037da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037da = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037da)
  store %struct.Memory* %call_4037da, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4037de	 Bytes: 4
  %loadMem_4037de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037de = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037de)
  store %struct.Memory* %call_4037de, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4037e2	 Bytes: 3
  %loadMem_4037e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e2)
  store %struct.Memory* %call_4037e2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4037e5	 Bytes: 3
  %loadMem_4037e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e5)
  store %struct.Memory* %call_4037e5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4037e8	 Bytes: 3
  %loadMem_4037e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e8)
  store %struct.Memory* %call_4037e8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 4037eb	 Bytes: 5
  %loadMem_4037eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037eb = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037eb)
  store %struct.Memory* %call_4037eb, %struct.Memory** %MEMORY

  ; Code: movsd -0xb0(%rbp), %xmm0	 RIP: 4037f0	 Bytes: 8
  %loadMem_4037f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f0 = call %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f0)
  store %struct.Memory* %call_4037f0, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm0	 RIP: 4037f8	 Bytes: 8
  %loadMem_4037f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f8 = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f8)
  store %struct.Memory* %call_4037f8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403800	 Bytes: 5
  %loadMem_403800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403800 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403800)
  store %struct.Memory* %call_403800, %struct.Memory** %MEMORY

  ; Code: movsd -0xa8(%rbp), %xmm0	 RIP: 403805	 Bytes: 8
  %loadMem_403805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403805 = call %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403805)
  store %struct.Memory* %call_403805, %struct.Memory** %MEMORY

  ; Code: subsd -0x90(%rbp), %xmm0	 RIP: 40380d	 Bytes: 8
  %loadMem_40380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40380d = call %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40380d)
  store %struct.Memory* %call_40380d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403815	 Bytes: 5
  %loadMem_403815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403815 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403815)
  store %struct.Memory* %call_403815, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40381a	 Bytes: 5
  %loadMem_40381a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40381a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40381a)
  store %struct.Memory* %call_40381a, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 40381f	 Bytes: 5
  %loadMem_40381f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40381f = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40381f)
  store %struct.Memory* %call_40381f, %struct.Memory** %MEMORY

  ; Code: subsd -0x78(%rbp), %xmm1	 RIP: 403824	 Bytes: 5
  %loadMem_403824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403824 = call %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403824)
  store %struct.Memory* %call_403824, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 403829	 Bytes: 4
  %loadMem_403829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403829 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403829)
  store %struct.Memory* %call_403829, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40382d	 Bytes: 4
  %loadMem_40382d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40382d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40382d)
  store %struct.Memory* %call_40382d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403831	 Bytes: 4
  %loadMem_403831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403831 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403831)
  store %struct.Memory* %call_403831, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403835	 Bytes: 5
  %loadMem_403835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403835 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403835)
  store %struct.Memory* %call_403835, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40383a	 Bytes: 5
  %loadMem_40383a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40383a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40383a)
  store %struct.Memory* %call_40383a, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 40383f	 Bytes: 5
  %loadMem_40383f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40383f = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40383f)
  store %struct.Memory* %call_40383f, %struct.Memory** %MEMORY

  ; Code: addsd -0x78(%rbp), %xmm1	 RIP: 403844	 Bytes: 5
  %loadMem_403844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403844 = call %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403844)
  store %struct.Memory* %call_403844, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 403849	 Bytes: 4
  %loadMem_403849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403849 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403849)
  store %struct.Memory* %call_403849, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40384d	 Bytes: 4
  %loadMem_40384d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40384d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40384d)
  store %struct.Memory* %call_40384d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403851	 Bytes: 3
  %loadMem_403851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403851 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403851)
  store %struct.Memory* %call_403851, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403854	 Bytes: 3
  %loadMem_403854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403854 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403854)
  store %struct.Memory* %call_403854, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403857	 Bytes: 3
  %loadMem_403857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403857 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403857)
  store %struct.Memory* %call_403857, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 40385a	 Bytes: 5
  %loadMem_40385a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40385a = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40385a)
  store %struct.Memory* %call_40385a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40385f	 Bytes: 3
  %loadMem_40385f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40385f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40385f)
  store %struct.Memory* %call_40385f, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403862	 Bytes: 3
  %loadMem_403862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403862 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403862)
  store %struct.Memory* %call_403862, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403865	 Bytes: 3
  %loadMem_403865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403865 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403865)
  store %struct.Memory* %call_403865, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4035b1	 RIP: 403868	 Bytes: 5
  %loadMem_403868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403868 = call %struct.Memory* @routine_jmpq_.L_4035b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403868, i64 -695, i64 5)
  store %struct.Memory* %call_403868, %struct.Memory** %MEMORY

  br label %block_.L_4035b1

  ; Code: .L_40386d:	 RIP: 40386d	 Bytes: 0
block_.L_40386d:

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 40386d	 Bytes: 7
  %loadMem_40386d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40386d = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40386d)
  store %struct.Memory* %call_40386d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 403874	 Bytes: 3
  %loadMem_403874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403874 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403874)
  store %struct.Memory* %call_403874, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 403877	 Bytes: 3
  %loadMem_403877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403877 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403877)
  store %struct.Memory* %call_403877, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 40387a	 Bytes: 3
  %loadMem_40387a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387a = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387a)
  store %struct.Memory* %call_40387a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 40387d	 Bytes: 3
  %loadMem_40387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387d)
  store %struct.Memory* %call_40387d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 403880	 Bytes: 3
  %loadMem_403880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403880 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403880)
  store %struct.Memory* %call_403880, %struct.Memory** %MEMORY

  ; Code: .L_403883:	 RIP: 403883	 Bytes: 0
  br label %block_.L_403883
block_.L_403883:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 403883	 Bytes: 3
  %loadMem_403883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403883 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403883)
  store %struct.Memory* %call_403883, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 403886	 Bytes: 3
  %loadMem_403886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403886 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403886)
  store %struct.Memory* %call_403886, %struct.Memory** %MEMORY

  ; Code: jge .L_403ffe	 RIP: 403889	 Bytes: 6
  %loadMem_403889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403889 = call %struct.Memory* @routine_jge_.L_403ffe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403889, i8* %BRANCH_TAKEN, i64 1909, i64 6, i64 6)
  store %struct.Memory* %call_403889, %struct.Memory** %MEMORY

  %loadBr_403889 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403889 = icmp eq i8 %loadBr_403889, 1
  br i1 %cmpBr_403889, label %block_.L_403ffe, label %block_40388f

block_40388f:
  ; Code: movsd 0x849(%rip), %xmm0	 RIP: 40388f	 Bytes: 8
  %loadMem_40388f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40388f = call %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40388f)
  store %struct.Memory* %call_40388f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 403897	 Bytes: 3
  %loadMem_403897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403897 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403897)
  store %struct.Memory* %call_403897, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 40389a	 Bytes: 3
  %loadMem_40389a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40389a = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40389a)
  store %struct.Memory* %call_40389a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 40389d	 Bytes: 3
  %loadMem_40389d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40389d = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40389d)
  store %struct.Memory* %call_40389d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4038a0	 Bytes: 3
  %loadMem_4038a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a0)
  store %struct.Memory* %call_4038a0, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4038a3	 Bytes: 3
  %loadMem_4038a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a3 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a3)
  store %struct.Memory* %call_4038a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4038a6	 Bytes: 3
  %loadMem_4038a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a6 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a6)
  store %struct.Memory* %call_4038a6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038a9	 Bytes: 4
  %loadMem_4038a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a9)
  store %struct.Memory* %call_4038a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 4038ad	 Bytes: 4
  %loadMem_4038ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ad = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ad)
  store %struct.Memory* %call_4038ad, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038b1	 Bytes: 5
  %loadMem_4038b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b1 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b1)
  store %struct.Memory* %call_4038b1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x58(%rbp)	 RIP: 4038b6	 Bytes: 5
  %loadMem_4038b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b6 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b6)
  store %struct.Memory* %call_4038b6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038bb	 Bytes: 4
  %loadMem_4038bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038bb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038bb)
  store %struct.Memory* %call_4038bb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4038bf	 Bytes: 3
  %loadMem_4038bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038bf = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038bf)
  store %struct.Memory* %call_4038bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4038c2	 Bytes: 3
  %loadMem_4038c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c2)
  store %struct.Memory* %call_4038c2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4038c5	 Bytes: 3
  %loadMem_4038c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c5 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c5)
  store %struct.Memory* %call_4038c5, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038c8	 Bytes: 5
  %loadMem_4038c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c8 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c8)
  store %struct.Memory* %call_4038c8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 4038cd	 Bytes: 5
  %loadMem_4038cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038cd = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038cd)
  store %struct.Memory* %call_4038cd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038d2	 Bytes: 4
  %loadMem_4038d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d2)
  store %struct.Memory* %call_4038d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 4038d6	 Bytes: 4
  %loadMem_4038d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d6 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d6)
  store %struct.Memory* %call_4038d6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038da	 Bytes: 5
  %loadMem_4038da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038da = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038da)
  store %struct.Memory* %call_4038da, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 4038df	 Bytes: 5
  %loadMem_4038df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038df = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038df)
  store %struct.Memory* %call_4038df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4038e4	 Bytes: 4
  %loadMem_4038e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e4)
  store %struct.Memory* %call_4038e4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4038e8	 Bytes: 3
  %loadMem_4038e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e8)
  store %struct.Memory* %call_4038e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4038eb	 Bytes: 3
  %loadMem_4038eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038eb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038eb)
  store %struct.Memory* %call_4038eb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4038ee	 Bytes: 3
  %loadMem_4038ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ee = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ee)
  store %struct.Memory* %call_4038ee, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm1	 RIP: 4038f1	 Bytes: 5
  %loadMem_4038f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f1 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f1)
  store %struct.Memory* %call_4038f1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 4038f6	 Bytes: 5
  %loadMem_4038f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f6 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f6)
  store %struct.Memory* %call_4038f6, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 4038fb	 Bytes: 5
  %loadMem_4038fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038fb = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038fb)
  store %struct.Memory* %call_4038fb, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 403900	 Bytes: 3
  %loadMem_403900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403900 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403900)
  store %struct.Memory* %call_403900, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm2	 RIP: 403903	 Bytes: 5
  %loadMem_403903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403903 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403903)
  store %struct.Memory* %call_403903, %struct.Memory** %MEMORY

  ; Code: mulsd -0x50(%rbp), %xmm2	 RIP: 403908	 Bytes: 5
  %loadMem_403908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403908 = call %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403908)
  store %struct.Memory* %call_403908, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 40390d	 Bytes: 4
  %loadMem_40390d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40390d = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40390d)
  store %struct.Memory* %call_40390d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 403911	 Bytes: 5
  %loadMem_403911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403911 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403911)
  store %struct.Memory* %call_403911, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm0	 RIP: 403916	 Bytes: 5
  %loadMem_403916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403916 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403916)
  store %struct.Memory* %call_403916, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm0	 RIP: 40391b	 Bytes: 5
  %loadMem_40391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40391b = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40391b)
  store %struct.Memory* %call_40391b, %struct.Memory** %MEMORY

  ; Code: subsd -0x50(%rbp), %xmm0	 RIP: 403920	 Bytes: 5
  %loadMem_403920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403920 = call %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403920)
  store %struct.Memory* %call_403920, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403925	 Bytes: 5
  %loadMem_403925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403925 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403925)
  store %struct.Memory* %call_403925, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40392a	 Bytes: 3
  %loadMem_40392a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40392a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40392a)
  store %struct.Memory* %call_40392a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 40392d	 Bytes: 3
  %loadMem_40392d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40392d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40392d)
  store %struct.Memory* %call_40392d, %struct.Memory** %MEMORY

  ; Code: .L_403930:	 RIP: 403930	 Bytes: 0
  br label %block_.L_403930
block_.L_403930:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403930	 Bytes: 3
  %loadMem_403930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403930 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403930)
  store %struct.Memory* %call_403930, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403933	 Bytes: 3
  %loadMem_403933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403933 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403933)
  store %struct.Memory* %call_403933, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %ecx	 RIP: 403936	 Bytes: 3
  %loadMem_403936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403936 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403936)
  store %struct.Memory* %call_403936, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 403939	 Bytes: 2
  %loadMem_403939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403939 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403939)
  store %struct.Memory* %call_403939, %struct.Memory** %MEMORY

  ; Code: jge .L_403c42	 RIP: 40393b	 Bytes: 6
  %loadMem_40393b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40393b = call %struct.Memory* @routine_jge_.L_403c42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40393b, i8* %BRANCH_TAKEN, i64 775, i64 6, i64 6)
  store %struct.Memory* %call_40393b, %struct.Memory** %MEMORY

  %loadBr_40393b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40393b = icmp eq i8 %loadBr_40393b, 1
  br i1 %cmpBr_40393b, label %block_.L_403c42, label %block_403941

block_403941:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403941	 Bytes: 3
  %loadMem_403941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403941 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403941)
  store %struct.Memory* %call_403941, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403944	 Bytes: 3
  %loadMem_403944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403944 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403944)
  store %struct.Memory* %call_403944, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 403947	 Bytes: 3
  %loadMem_403947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403947 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403947)
  store %struct.Memory* %call_403947, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 40394a	 Bytes: 3
  %loadMem_40394a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394a)
  store %struct.Memory* %call_40394a, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40394d	 Bytes: 3
  %loadMem_40394d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394d = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394d)
  store %struct.Memory* %call_40394d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 403950	 Bytes: 3
  %loadMem_403950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403950 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403950)
  store %struct.Memory* %call_403950, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403953	 Bytes: 3
  %loadMem_403953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403953 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403953)
  store %struct.Memory* %call_403953, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 403956	 Bytes: 3
  %loadMem_403956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403956 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403956)
  store %struct.Memory* %call_403956, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 403959	 Bytes: 3
  %loadMem_403959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403959 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403959)
  store %struct.Memory* %call_403959, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40395c	 Bytes: 4
  %loadMem_40395c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40395c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40395c)
  store %struct.Memory* %call_40395c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403960	 Bytes: 4
  %loadMem_403960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403960 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403960)
  store %struct.Memory* %call_403960, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403964	 Bytes: 5
  %loadMem_403964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403964 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403964)
  store %struct.Memory* %call_403964, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403969	 Bytes: 4
  %loadMem_403969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403969 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403969)
  store %struct.Memory* %call_403969, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40396d	 Bytes: 4
  %loadMem_40396d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40396d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40396d)
  store %struct.Memory* %call_40396d, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403971	 Bytes: 5
  %loadMem_403971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403971 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403971)
  store %struct.Memory* %call_403971, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403976	 Bytes: 5
  %loadMem_403976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403976 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403976)
  store %struct.Memory* %call_403976, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40397b	 Bytes: 4
  %loadMem_40397b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397b)
  store %struct.Memory* %call_40397b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40397f	 Bytes: 3
  %loadMem_40397f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397f)
  store %struct.Memory* %call_40397f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403982	 Bytes: 3
  %loadMem_403982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403982 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403982)
  store %struct.Memory* %call_403982, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403985	 Bytes: 3
  %loadMem_403985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403985 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403985)
  store %struct.Memory* %call_403985, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403988	 Bytes: 5
  %loadMem_403988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403988 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403988)
  store %struct.Memory* %call_403988, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40398d	 Bytes: 4
  %loadMem_40398d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40398d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40398d)
  store %struct.Memory* %call_40398d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403991	 Bytes: 3
  %loadMem_403991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403991 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403991)
  store %struct.Memory* %call_403991, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403994	 Bytes: 3
  %loadMem_403994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403994 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403994)
  store %struct.Memory* %call_403994, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403997	 Bytes: 3
  %loadMem_403997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403997 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403997)
  store %struct.Memory* %call_403997, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 40399a	 Bytes: 5
  %loadMem_40399a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40399a = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40399a)
  store %struct.Memory* %call_40399a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 40399f	 Bytes: 5
  %loadMem_40399f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40399f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40399f)
  store %struct.Memory* %call_40399f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039a4	 Bytes: 4
  %loadMem_4039a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a4)
  store %struct.Memory* %call_4039a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4039a8	 Bytes: 4
  %loadMem_4039a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a8)
  store %struct.Memory* %call_4039a8, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039ac	 Bytes: 5
  %loadMem_4039ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ac = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ac)
  store %struct.Memory* %call_4039ac, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039b1	 Bytes: 4
  %loadMem_4039b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b1)
  store %struct.Memory* %call_4039b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4039b5	 Bytes: 4
  %loadMem_4039b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b5)
  store %struct.Memory* %call_4039b5, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4039b9	 Bytes: 5
  %loadMem_4039b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b9 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b9)
  store %struct.Memory* %call_4039b9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4039be	 Bytes: 8
  %loadMem_4039be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039be = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039be)
  store %struct.Memory* %call_4039be, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039c6	 Bytes: 4
  %loadMem_4039c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c6)
  store %struct.Memory* %call_4039c6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4039ca	 Bytes: 3
  %loadMem_4039ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ca = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ca)
  store %struct.Memory* %call_4039ca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039cd	 Bytes: 3
  %loadMem_4039cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039cd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039cd)
  store %struct.Memory* %call_4039cd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039d0	 Bytes: 3
  %loadMem_4039d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d0)
  store %struct.Memory* %call_4039d0, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039d3	 Bytes: 5
  %loadMem_4039d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d3 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d3)
  store %struct.Memory* %call_4039d3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039d8	 Bytes: 4
  %loadMem_4039d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d8)
  store %struct.Memory* %call_4039d8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4039dc	 Bytes: 3
  %loadMem_4039dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039dc = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039dc)
  store %struct.Memory* %call_4039dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4039df	 Bytes: 3
  %loadMem_4039df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039df = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039df)
  store %struct.Memory* %call_4039df, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4039e2	 Bytes: 3
  %loadMem_4039e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e2 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e2)
  store %struct.Memory* %call_4039e2, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 4039e5	 Bytes: 5
  %loadMem_4039e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e5 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e5)
  store %struct.Memory* %call_4039e5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 4039ea	 Bytes: 8
  %loadMem_4039ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ea = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ea)
  store %struct.Memory* %call_4039ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039f2	 Bytes: 4
  %loadMem_4039f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f2)
  store %struct.Memory* %call_4039f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4039f6	 Bytes: 4
  %loadMem_4039f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f6)
  store %struct.Memory* %call_4039f6, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 4039fa	 Bytes: 5
  %loadMem_4039fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039fa = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039fa)
  store %struct.Memory* %call_4039fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4039ff	 Bytes: 4
  %loadMem_4039ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ff)
  store %struct.Memory* %call_4039ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403a03	 Bytes: 4
  %loadMem_403a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a03 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a03)
  store %struct.Memory* %call_403a03, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403a07	 Bytes: 5
  %loadMem_403a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a07 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a07)
  store %struct.Memory* %call_403a07, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 403a0c	 Bytes: 8
  %loadMem_403a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a0c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a0c)
  store %struct.Memory* %call_403a0c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a14	 Bytes: 4
  %loadMem_403a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a14 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a14)
  store %struct.Memory* %call_403a14, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403a18	 Bytes: 3
  %loadMem_403a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a18 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a18)
  store %struct.Memory* %call_403a18, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a1b	 Bytes: 3
  %loadMem_403a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a1b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a1b)
  store %struct.Memory* %call_403a1b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a1e	 Bytes: 3
  %loadMem_403a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a1e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a1e)
  store %struct.Memory* %call_403a1e, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a21	 Bytes: 5
  %loadMem_403a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a21 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a21)
  store %struct.Memory* %call_403a21, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a26	 Bytes: 4
  %loadMem_403a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a26 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a26)
  store %struct.Memory* %call_403a26, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403a2a	 Bytes: 3
  %loadMem_403a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2a)
  store %struct.Memory* %call_403a2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a2d	 Bytes: 3
  %loadMem_403a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2d)
  store %struct.Memory* %call_403a2d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a30	 Bytes: 3
  %loadMem_403a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a30 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a30)
  store %struct.Memory* %call_403a30, %struct.Memory** %MEMORY

  ; Code: addsd (%rcx,%rdx,8), %xmm0	 RIP: 403a33	 Bytes: 5
  %loadMem_403a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a33 = call %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a33)
  store %struct.Memory* %call_403a33, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403a38	 Bytes: 8
  %loadMem_403a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a38 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a38)
  store %struct.Memory* %call_403a38, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a40	 Bytes: 4
  %loadMem_403a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a40 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a40)
  store %struct.Memory* %call_403a40, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403a44	 Bytes: 4
  %loadMem_403a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a44 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a44)
  store %struct.Memory* %call_403a44, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a48	 Bytes: 5
  %loadMem_403a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a48 = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a48)
  store %struct.Memory* %call_403a48, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a4d	 Bytes: 4
  %loadMem_403a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a4d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a4d)
  store %struct.Memory* %call_403a4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403a51	 Bytes: 4
  %loadMem_403a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a51 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a51)
  store %struct.Memory* %call_403a51, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403a55	 Bytes: 5
  %loadMem_403a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a55 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a55)
  store %struct.Memory* %call_403a55, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 403a5a	 Bytes: 8
  %loadMem_403a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a5a = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a5a)
  store %struct.Memory* %call_403a5a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a62	 Bytes: 4
  %loadMem_403a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a62 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a62)
  store %struct.Memory* %call_403a62, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403a66	 Bytes: 3
  %loadMem_403a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a66 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a66)
  store %struct.Memory* %call_403a66, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a69	 Bytes: 3
  %loadMem_403a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a69 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a69)
  store %struct.Memory* %call_403a69, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a6c	 Bytes: 3
  %loadMem_403a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a6c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a6c)
  store %struct.Memory* %call_403a6c, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rdx,8), %xmm0	 RIP: 403a6f	 Bytes: 5
  %loadMem_403a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a6f = call %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a6f)
  store %struct.Memory* %call_403a6f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a74	 Bytes: 4
  %loadMem_403a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a74 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a74)
  store %struct.Memory* %call_403a74, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403a78	 Bytes: 3
  %loadMem_403a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a78 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a78)
  store %struct.Memory* %call_403a78, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403a7b	 Bytes: 3
  %loadMem_403a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7b)
  store %struct.Memory* %call_403a7b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403a7e	 Bytes: 3
  %loadMem_403a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7e)
  store %struct.Memory* %call_403a7e, %struct.Memory** %MEMORY

  ; Code: subsd (%rcx,%rdx,8), %xmm0	 RIP: 403a81	 Bytes: 5
  %loadMem_403a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a81 = call %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a81)
  store %struct.Memory* %call_403a81, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403a86	 Bytes: 8
  %loadMem_403a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a86 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a86)
  store %struct.Memory* %call_403a86, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403a8e	 Bytes: 5
  %loadMem_403a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a8e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a8e)
  store %struct.Memory* %call_403a8e, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403a93	 Bytes: 8
  %loadMem_403a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a93 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a93)
  store %struct.Memory* %call_403a93, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a9b	 Bytes: 4
  %loadMem_403a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a9b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a9b)
  store %struct.Memory* %call_403a9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 403a9f	 Bytes: 4
  %loadMem_403a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a9f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a9f)
  store %struct.Memory* %call_403a9f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403aa3	 Bytes: 5
  %loadMem_403aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa3 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa3)
  store %struct.Memory* %call_403aa3, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403aa8	 Bytes: 5
  %loadMem_403aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa8 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa8)
  store %struct.Memory* %call_403aa8, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 403aad	 Bytes: 8
  %loadMem_403aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aad = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aad)
  store %struct.Memory* %call_403aad, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403ab5	 Bytes: 4
  %loadMem_403ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab5)
  store %struct.Memory* %call_403ab5, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403ab9	 Bytes: 3
  %loadMem_403ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab9)
  store %struct.Memory* %call_403ab9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403abc	 Bytes: 3
  %loadMem_403abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403abc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403abc)
  store %struct.Memory* %call_403abc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403abf	 Bytes: 3
  %loadMem_403abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403abf = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403abf)
  store %struct.Memory* %call_403abf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403ac2	 Bytes: 5
  %loadMem_403ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac2 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac2)
  store %struct.Memory* %call_403ac2, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 403ac7	 Bytes: 8
  %loadMem_403ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac7 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac7)
  store %struct.Memory* %call_403ac7, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403acf	 Bytes: 5
  %loadMem_403acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403acf = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403acf)
  store %struct.Memory* %call_403acf, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403ad4	 Bytes: 4
  %loadMem_403ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad4 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad4)
  store %struct.Memory* %call_403ad4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 403ad8	 Bytes: 5
  %loadMem_403ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad8 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad8)
  store %struct.Memory* %call_403ad8, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403add	 Bytes: 8
  %loadMem_403add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403add = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403add)
  store %struct.Memory* %call_403add, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 403ae5	 Bytes: 5
  %loadMem_403ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae5 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae5)
  store %struct.Memory* %call_403ae5, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403aea	 Bytes: 4
  %loadMem_403aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aea = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aea)
  store %struct.Memory* %call_403aea, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 403aee	 Bytes: 5
  %loadMem_403aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aee = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aee)
  store %struct.Memory* %call_403aee, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 403af3	 Bytes: 5
  %loadMem_403af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af3 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af3)
  store %struct.Memory* %call_403af3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403af8	 Bytes: 5
  %loadMem_403af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af8 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af8)
  store %struct.Memory* %call_403af8, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 403afd	 Bytes: 5
  %loadMem_403afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403afd = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403afd)
  store %struct.Memory* %call_403afd, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403b02	 Bytes: 5
  %loadMem_403b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b02 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b02)
  store %struct.Memory* %call_403b02, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403b07	 Bytes: 4
  %loadMem_403b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b07 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b07)
  store %struct.Memory* %call_403b07, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b0b	 Bytes: 4
  %loadMem_403b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b0b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b0b)
  store %struct.Memory* %call_403b0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 403b0f	 Bytes: 4
  %loadMem_403b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b0f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b0f)
  store %struct.Memory* %call_403b0f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b13	 Bytes: 5
  %loadMem_403b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b13 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b13)
  store %struct.Memory* %call_403b13, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 403b18	 Bytes: 5
  %loadMem_403b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b18 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b18)
  store %struct.Memory* %call_403b18, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403b1d	 Bytes: 5
  %loadMem_403b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b1d = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b1d)
  store %struct.Memory* %call_403b1d, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 403b22	 Bytes: 5
  %loadMem_403b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b22 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b22)
  store %struct.Memory* %call_403b22, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403b27	 Bytes: 5
  %loadMem_403b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b27 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b27)
  store %struct.Memory* %call_403b27, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403b2c	 Bytes: 4
  %loadMem_403b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b2c = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b2c)
  store %struct.Memory* %call_403b2c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b30	 Bytes: 4
  %loadMem_403b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b30 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b30)
  store %struct.Memory* %call_403b30, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 403b34	 Bytes: 3
  %loadMem_403b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b34 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b34)
  store %struct.Memory* %call_403b34, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403b37	 Bytes: 3
  %loadMem_403b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b37 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b37)
  store %struct.Memory* %call_403b37, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403b3a	 Bytes: 3
  %loadMem_403b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b3a = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b3a)
  store %struct.Memory* %call_403b3a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b3d	 Bytes: 5
  %loadMem_403b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b3d = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b3d)
  store %struct.Memory* %call_403b3d, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403b42	 Bytes: 8
  %loadMem_403b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b42 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b42)
  store %struct.Memory* %call_403b42, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403b4a	 Bytes: 8
  %loadMem_403b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b4a = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b4a)
  store %struct.Memory* %call_403b4a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403b52	 Bytes: 5
  %loadMem_403b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b52 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b52)
  store %struct.Memory* %call_403b52, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403b57	 Bytes: 8
  %loadMem_403b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b57 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b57)
  store %struct.Memory* %call_403b57, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403b5f	 Bytes: 8
  %loadMem_403b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b5f = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b5f)
  store %struct.Memory* %call_403b5f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403b67	 Bytes: 5
  %loadMem_403b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b67 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b67)
  store %struct.Memory* %call_403b67, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403b6c	 Bytes: 5
  %loadMem_403b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b6c = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b6c)
  store %struct.Memory* %call_403b6c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403b71	 Bytes: 5
  %loadMem_403b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b71 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b71)
  store %struct.Memory* %call_403b71, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403b76	 Bytes: 5
  %loadMem_403b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b76 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b76)
  store %struct.Memory* %call_403b76, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403b7b	 Bytes: 5
  %loadMem_403b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b7b = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b7b)
  store %struct.Memory* %call_403b7b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403b80	 Bytes: 4
  %loadMem_403b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b80 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b80)
  store %struct.Memory* %call_403b80, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403b84	 Bytes: 4
  %loadMem_403b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b84 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b84)
  store %struct.Memory* %call_403b84, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403b88	 Bytes: 4
  %loadMem_403b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b88 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b88)
  store %struct.Memory* %call_403b88, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403b8c	 Bytes: 5
  %loadMem_403b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b8c = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b8c)
  store %struct.Memory* %call_403b8c, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403b91	 Bytes: 5
  %loadMem_403b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b91 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b91)
  store %struct.Memory* %call_403b91, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403b96	 Bytes: 5
  %loadMem_403b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b96 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b96)
  store %struct.Memory* %call_403b96, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403b9b	 Bytes: 5
  %loadMem_403b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b9b = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b9b)
  store %struct.Memory* %call_403b9b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403ba0	 Bytes: 5
  %loadMem_403ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba0 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba0)
  store %struct.Memory* %call_403ba0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403ba5	 Bytes: 4
  %loadMem_403ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba5 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba5)
  store %struct.Memory* %call_403ba5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403ba9	 Bytes: 4
  %loadMem_403ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba9)
  store %struct.Memory* %call_403ba9, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 403bad	 Bytes: 3
  %loadMem_403bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bad = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bad)
  store %struct.Memory* %call_403bad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403bb0	 Bytes: 3
  %loadMem_403bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb0)
  store %struct.Memory* %call_403bb0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403bb3	 Bytes: 3
  %loadMem_403bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb3 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb3)
  store %struct.Memory* %call_403bb3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403bb6	 Bytes: 5
  %loadMem_403bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb6 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb6)
  store %struct.Memory* %call_403bb6, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403bbb	 Bytes: 8
  %loadMem_403bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bbb = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bbb)
  store %struct.Memory* %call_403bbb, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403bc3	 Bytes: 8
  %loadMem_403bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc3 = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc3)
  store %struct.Memory* %call_403bc3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403bcb	 Bytes: 5
  %loadMem_403bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bcb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bcb)
  store %struct.Memory* %call_403bcb, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403bd0	 Bytes: 8
  %loadMem_403bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bd0 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bd0)
  store %struct.Memory* %call_403bd0, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403bd8	 Bytes: 8
  %loadMem_403bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bd8 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bd8)
  store %struct.Memory* %call_403bd8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403be0	 Bytes: 5
  %loadMem_403be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be0)
  store %struct.Memory* %call_403be0, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403be5	 Bytes: 5
  %loadMem_403be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be5 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be5)
  store %struct.Memory* %call_403be5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403bea	 Bytes: 5
  %loadMem_403bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bea = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bea)
  store %struct.Memory* %call_403bea, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403bef	 Bytes: 5
  %loadMem_403bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bef = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bef)
  store %struct.Memory* %call_403bef, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403bf4	 Bytes: 5
  %loadMem_403bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf4 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf4)
  store %struct.Memory* %call_403bf4, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403bf9	 Bytes: 4
  %loadMem_403bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf9 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf9)
  store %struct.Memory* %call_403bf9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403bfd	 Bytes: 4
  %loadMem_403bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bfd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bfd)
  store %struct.Memory* %call_403bfd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403c01	 Bytes: 4
  %loadMem_403c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c01 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c01)
  store %struct.Memory* %call_403c01, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403c05	 Bytes: 5
  %loadMem_403c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c05 = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c05)
  store %struct.Memory* %call_403c05, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403c0a	 Bytes: 5
  %loadMem_403c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c0a = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c0a)
  store %struct.Memory* %call_403c0a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403c0f	 Bytes: 5
  %loadMem_403c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c0f = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c0f)
  store %struct.Memory* %call_403c0f, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403c14	 Bytes: 5
  %loadMem_403c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c14 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c14)
  store %struct.Memory* %call_403c14, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403c19	 Bytes: 5
  %loadMem_403c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c19 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c19)
  store %struct.Memory* %call_403c19, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403c1e	 Bytes: 4
  %loadMem_403c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1e)
  store %struct.Memory* %call_403c1e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403c22	 Bytes: 4
  %loadMem_403c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c22 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c22)
  store %struct.Memory* %call_403c22, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 403c26	 Bytes: 3
  %loadMem_403c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c26 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c26)
  store %struct.Memory* %call_403c26, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 403c29	 Bytes: 3
  %loadMem_403c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c29 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c29)
  store %struct.Memory* %call_403c29, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 403c2c	 Bytes: 3
  %loadMem_403c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c2c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c2c)
  store %struct.Memory* %call_403c2c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rcx,%rdx,8)	 RIP: 403c2f	 Bytes: 5
  %loadMem_403c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c2f = call %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c2f)
  store %struct.Memory* %call_403c2f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403c34	 Bytes: 3
  %loadMem_403c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c34 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c34)
  store %struct.Memory* %call_403c34, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403c37	 Bytes: 3
  %loadMem_403c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c37 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c37)
  store %struct.Memory* %call_403c37, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403c3a	 Bytes: 3
  %loadMem_403c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c3a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c3a)
  store %struct.Memory* %call_403c3a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403930	 RIP: 403c3d	 Bytes: 5
  %loadMem_403c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c3d = call %struct.Memory* @routine_jmpq_.L_403930(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c3d, i64 -781, i64 5)
  store %struct.Memory* %call_403c3d, %struct.Memory** %MEMORY

  br label %block_.L_403930

  ; Code: .L_403c42:	 RIP: 403c42	 Bytes: 0
block_.L_403c42:

  ; Code: movsd 0x496(%rip), %xmm0	 RIP: 403c42	 Bytes: 8
  %loadMem_403c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c42 = call %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c42)
  store %struct.Memory* %call_403c42, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 403c4a	 Bytes: 4
  %loadMem_403c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4a)
  store %struct.Memory* %call_403c4a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 403c4e	 Bytes: 3
  %loadMem_403c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4e)
  store %struct.Memory* %call_403c4e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 403c51	 Bytes: 3
  %loadMem_403c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c51 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c51)
  store %struct.Memory* %call_403c51, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403c54	 Bytes: 3
  %loadMem_403c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c54 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c54)
  store %struct.Memory* %call_403c54, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 403c57	 Bytes: 5
  %loadMem_403c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c57 = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c57)
  store %struct.Memory* %call_403c57, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 403c5c	 Bytes: 5
  %loadMem_403c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c5c = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c5c)
  store %struct.Memory* %call_403c5c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 403c61	 Bytes: 4
  %loadMem_403c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c61 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c61)
  store %struct.Memory* %call_403c61, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 403c65	 Bytes: 3
  %loadMem_403c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c65 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c65)
  store %struct.Memory* %call_403c65, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 403c68	 Bytes: 3
  %loadMem_403c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c68 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c68)
  store %struct.Memory* %call_403c68, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403c6b	 Bytes: 3
  %loadMem_403c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6b)
  store %struct.Memory* %call_403c6b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rdx,8), %xmm1	 RIP: 403c6e	 Bytes: 5
  %loadMem_403c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6e = call %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6e)
  store %struct.Memory* %call_403c6e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 403c73	 Bytes: 5
  %loadMem_403c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c73 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c73)
  store %struct.Memory* %call_403c73, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 403c78	 Bytes: 5
  %loadMem_403c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c78 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c78)
  store %struct.Memory* %call_403c78, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 403c7d	 Bytes: 3
  %loadMem_403c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c7d = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c7d)
  store %struct.Memory* %call_403c7d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x58(%rbp), %xmm2	 RIP: 403c80	 Bytes: 5
  %loadMem_403c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c80 = call %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c80)
  store %struct.Memory* %call_403c80, %struct.Memory** %MEMORY

  ; Code: mulsd -0x50(%rbp), %xmm2	 RIP: 403c85	 Bytes: 5
  %loadMem_403c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c85 = call %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c85)
  store %struct.Memory* %call_403c85, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 403c8a	 Bytes: 4
  %loadMem_403c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c8a = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c8a)
  store %struct.Memory* %call_403c8a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 403c8e	 Bytes: 5
  %loadMem_403c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c8e = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c8e)
  store %struct.Memory* %call_403c8e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x58(%rbp), %xmm0	 RIP: 403c93	 Bytes: 5
  %loadMem_403c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c93 = call %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c93)
  store %struct.Memory* %call_403c93, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm0	 RIP: 403c98	 Bytes: 5
  %loadMem_403c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c98 = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c98)
  store %struct.Memory* %call_403c98, %struct.Memory** %MEMORY

  ; Code: subsd -0x50(%rbp), %xmm0	 RIP: 403c9d	 Bytes: 5
  %loadMem_403c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c9d = call %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c9d)
  store %struct.Memory* %call_403c9d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403ca2	 Bytes: 5
  %loadMem_403ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca2)
  store %struct.Memory* %call_403ca2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 403ca7	 Bytes: 3
  %loadMem_403ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca7)
  store %struct.Memory* %call_403ca7, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 403caa	 Bytes: 3
  %loadMem_403caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403caa = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403caa)
  store %struct.Memory* %call_403caa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 403cad	 Bytes: 3
  %loadMem_403cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cad = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cad)
  store %struct.Memory* %call_403cad, %struct.Memory** %MEMORY

  ; Code: .L_403cb0:	 RIP: 403cb0	 Bytes: 0
  br label %block_.L_403cb0
block_.L_403cb0:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403cb0	 Bytes: 3
  %loadMem_403cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb0)
  store %struct.Memory* %call_403cb0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 403cb3	 Bytes: 3
  %loadMem_403cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb3)
  store %struct.Memory* %call_403cb3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 403cb6	 Bytes: 3
  %loadMem_403cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb6)
  store %struct.Memory* %call_403cb6, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edx	 RIP: 403cb9	 Bytes: 3
  %loadMem_403cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb9 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb9)
  store %struct.Memory* %call_403cb9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 403cbc	 Bytes: 2
  %loadMem_403cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cbc = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cbc)
  store %struct.Memory* %call_403cbc, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 403cbe	 Bytes: 2
  %loadMem_403cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cbe = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cbe)
  store %struct.Memory* %call_403cbe, %struct.Memory** %MEMORY

  ; Code: jge .L_403feb	 RIP: 403cc0	 Bytes: 6
  %loadMem_403cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc0 = call %struct.Memory* @routine_jge_.L_403feb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc0, i8* %BRANCH_TAKEN, i64 811, i64 6, i64 6)
  store %struct.Memory* %call_403cc0, %struct.Memory** %MEMORY

  %loadBr_403cc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403cc0 = icmp eq i8 %loadBr_403cc0, 1
  br i1 %cmpBr_403cc0, label %block_.L_403feb, label %block_403cc6

block_403cc6:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 403cc6	 Bytes: 10
  %loadMem_403cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc6 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc6)
  store %struct.Memory* %call_403cc6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403cd0	 Bytes: 3
  %loadMem_403cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd0)
  store %struct.Memory* %call_403cd0, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cd3	 Bytes: 3
  %loadMem_403cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd3 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd3)
  store %struct.Memory* %call_403cd3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 403cd6	 Bytes: 3
  %loadMem_403cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd6 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd6)
  store %struct.Memory* %call_403cd6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403cd9	 Bytes: 3
  %loadMem_403cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd9 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd9)
  store %struct.Memory* %call_403cd9, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403cdc	 Bytes: 3
  %loadMem_403cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cdc = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cdc)
  store %struct.Memory* %call_403cdc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 403cdf	 Bytes: 3
  %loadMem_403cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cdf = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cdf)
  store %struct.Memory* %call_403cdf, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403ce2	 Bytes: 3
  %loadMem_403ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce2)
  store %struct.Memory* %call_403ce2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 403ce5	 Bytes: 3
  %loadMem_403ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce5)
  store %struct.Memory* %call_403ce5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 403ce8	 Bytes: 3
  %loadMem_403ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce8)
  store %struct.Memory* %call_403ce8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403ceb	 Bytes: 4
  %loadMem_403ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ceb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ceb)
  store %struct.Memory* %call_403ceb, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403cef	 Bytes: 4
  %loadMem_403cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cef = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cef)
  store %struct.Memory* %call_403cef, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403cf3	 Bytes: 5
  %loadMem_403cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf3 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf3)
  store %struct.Memory* %call_403cf3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403cf8	 Bytes: 4
  %loadMem_403cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf8)
  store %struct.Memory* %call_403cf8, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 403cfc	 Bytes: 4
  %loadMem_403cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cfc = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cfc)
  store %struct.Memory* %call_403cfc, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d00	 Bytes: 5
  %loadMem_403d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d00 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d00)
  store %struct.Memory* %call_403d00, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403d05	 Bytes: 5
  %loadMem_403d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d05 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d05)
  store %struct.Memory* %call_403d05, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d0a	 Bytes: 4
  %loadMem_403d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d0a)
  store %struct.Memory* %call_403d0a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403d0e	 Bytes: 3
  %loadMem_403d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d0e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d0e)
  store %struct.Memory* %call_403d0e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d11	 Bytes: 3
  %loadMem_403d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d11 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d11)
  store %struct.Memory* %call_403d11, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d14	 Bytes: 3
  %loadMem_403d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d14 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d14)
  store %struct.Memory* %call_403d14, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d17	 Bytes: 5
  %loadMem_403d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d17 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d17)
  store %struct.Memory* %call_403d17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d1c	 Bytes: 4
  %loadMem_403d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d1c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d1c)
  store %struct.Memory* %call_403d1c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403d20	 Bytes: 3
  %loadMem_403d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d20 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d20)
  store %struct.Memory* %call_403d20, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d23	 Bytes: 3
  %loadMem_403d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d23 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d23)
  store %struct.Memory* %call_403d23, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d26	 Bytes: 3
  %loadMem_403d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d26 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d26)
  store %struct.Memory* %call_403d26, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d29	 Bytes: 5
  %loadMem_403d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d29 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d29)
  store %struct.Memory* %call_403d29, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403d2e	 Bytes: 5
  %loadMem_403d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d2e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d2e)
  store %struct.Memory* %call_403d2e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d33	 Bytes: 4
  %loadMem_403d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d33 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d33)
  store %struct.Memory* %call_403d33, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403d37	 Bytes: 4
  %loadMem_403d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d37 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d37)
  store %struct.Memory* %call_403d37, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d3b	 Bytes: 5
  %loadMem_403d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d3b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d3b)
  store %struct.Memory* %call_403d3b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d40	 Bytes: 4
  %loadMem_403d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d40 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d40)
  store %struct.Memory* %call_403d40, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 403d44	 Bytes: 4
  %loadMem_403d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d44 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d44)
  store %struct.Memory* %call_403d44, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403d48	 Bytes: 5
  %loadMem_403d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d48 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d48)
  store %struct.Memory* %call_403d48, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 403d4d	 Bytes: 8
  %loadMem_403d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d4d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d4d)
  store %struct.Memory* %call_403d4d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d55	 Bytes: 4
  %loadMem_403d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d55 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d55)
  store %struct.Memory* %call_403d55, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403d59	 Bytes: 3
  %loadMem_403d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d59 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d59)
  store %struct.Memory* %call_403d59, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d5c	 Bytes: 3
  %loadMem_403d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d5c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d5c)
  store %struct.Memory* %call_403d5c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d5f	 Bytes: 3
  %loadMem_403d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d5f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d5f)
  store %struct.Memory* %call_403d5f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d62	 Bytes: 5
  %loadMem_403d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d62 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d62)
  store %struct.Memory* %call_403d62, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d67	 Bytes: 4
  %loadMem_403d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d67 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d67)
  store %struct.Memory* %call_403d67, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403d6b	 Bytes: 3
  %loadMem_403d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d6b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d6b)
  store %struct.Memory* %call_403d6b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403d6e	 Bytes: 3
  %loadMem_403d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d6e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d6e)
  store %struct.Memory* %call_403d6e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403d71	 Bytes: 3
  %loadMem_403d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d71 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d71)
  store %struct.Memory* %call_403d71, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403d74	 Bytes: 5
  %loadMem_403d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d74 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d74)
  store %struct.Memory* %call_403d74, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 403d79	 Bytes: 8
  %loadMem_403d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d79 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d79)
  store %struct.Memory* %call_403d79, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d81	 Bytes: 4
  %loadMem_403d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d81 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d81)
  store %struct.Memory* %call_403d81, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403d85	 Bytes: 4
  %loadMem_403d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d85 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d85)
  store %struct.Memory* %call_403d85, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403d89	 Bytes: 5
  %loadMem_403d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d89 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d89)
  store %struct.Memory* %call_403d89, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403d8e	 Bytes: 4
  %loadMem_403d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d8e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d8e)
  store %struct.Memory* %call_403d8e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 403d92	 Bytes: 4
  %loadMem_403d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d92 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d92)
  store %struct.Memory* %call_403d92, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403d96	 Bytes: 5
  %loadMem_403d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d96 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d96)
  store %struct.Memory* %call_403d96, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 403d9b	 Bytes: 8
  %loadMem_403d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d9b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d9b)
  store %struct.Memory* %call_403d9b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403da3	 Bytes: 4
  %loadMem_403da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da3)
  store %struct.Memory* %call_403da3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403da7	 Bytes: 3
  %loadMem_403da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da7)
  store %struct.Memory* %call_403da7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403daa	 Bytes: 3
  %loadMem_403daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403daa = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403daa)
  store %struct.Memory* %call_403daa, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403dad	 Bytes: 3
  %loadMem_403dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dad = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dad)
  store %struct.Memory* %call_403dad, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403db0	 Bytes: 5
  %loadMem_403db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db0 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db0)
  store %struct.Memory* %call_403db0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403db5	 Bytes: 4
  %loadMem_403db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db5)
  store %struct.Memory* %call_403db5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403db9	 Bytes: 3
  %loadMem_403db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db9)
  store %struct.Memory* %call_403db9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403dbc	 Bytes: 3
  %loadMem_403dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dbc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dbc)
  store %struct.Memory* %call_403dbc, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403dbf	 Bytes: 3
  %loadMem_403dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dbf = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dbf)
  store %struct.Memory* %call_403dbf, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403dc2	 Bytes: 5
  %loadMem_403dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc2 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc2)
  store %struct.Memory* %call_403dc2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 403dc7	 Bytes: 8
  %loadMem_403dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc7)
  store %struct.Memory* %call_403dc7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403dcf	 Bytes: 4
  %loadMem_403dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dcf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dcf)
  store %struct.Memory* %call_403dcf, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403dd3	 Bytes: 4
  %loadMem_403dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd3)
  store %struct.Memory* %call_403dd3, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403dd7	 Bytes: 5
  %loadMem_403dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd7 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd7)
  store %struct.Memory* %call_403dd7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403ddc	 Bytes: 4
  %loadMem_403ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ddc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ddc)
  store %struct.Memory* %call_403ddc, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 403de0	 Bytes: 4
  %loadMem_403de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de0 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de0)
  store %struct.Memory* %call_403de0, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403de4	 Bytes: 5
  %loadMem_403de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de4 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de4)
  store %struct.Memory* %call_403de4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 403de9	 Bytes: 8
  %loadMem_403de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de9)
  store %struct.Memory* %call_403de9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403df1	 Bytes: 4
  %loadMem_403df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df1)
  store %struct.Memory* %call_403df1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403df5	 Bytes: 3
  %loadMem_403df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df5)
  store %struct.Memory* %call_403df5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403df8	 Bytes: 3
  %loadMem_403df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df8 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df8)
  store %struct.Memory* %call_403df8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403dfb	 Bytes: 3
  %loadMem_403dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dfb = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dfb)
  store %struct.Memory* %call_403dfb, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403dfe	 Bytes: 5
  %loadMem_403dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dfe = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dfe)
  store %struct.Memory* %call_403dfe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e03	 Bytes: 4
  %loadMem_403e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e03 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e03)
  store %struct.Memory* %call_403e03, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403e07	 Bytes: 3
  %loadMem_403e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e07 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e07)
  store %struct.Memory* %call_403e07, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403e0a	 Bytes: 3
  %loadMem_403e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0a)
  store %struct.Memory* %call_403e0a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403e0d	 Bytes: 3
  %loadMem_403e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0d)
  store %struct.Memory* %call_403e0d, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403e10	 Bytes: 5
  %loadMem_403e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e10 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e10)
  store %struct.Memory* %call_403e10, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb0(%rbp)	 RIP: 403e15	 Bytes: 8
  %loadMem_403e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e15 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e15)
  store %struct.Memory* %call_403e15, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403e1d	 Bytes: 5
  %loadMem_403e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e1d = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e1d)
  store %struct.Memory* %call_403e1d, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 403e22	 Bytes: 8
  %loadMem_403e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e22 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e22)
  store %struct.Memory* %call_403e22, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e2a	 Bytes: 4
  %loadMem_403e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e2a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e2a)
  store %struct.Memory* %call_403e2a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 403e2e	 Bytes: 4
  %loadMem_403e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e2e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e2e)
  store %struct.Memory* %call_403e2e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e32	 Bytes: 5
  %loadMem_403e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e32 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e32)
  store %struct.Memory* %call_403e32, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403e37	 Bytes: 5
  %loadMem_403e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e37 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e37)
  store %struct.Memory* %call_403e37, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp), %xmm0	 RIP: 403e3c	 Bytes: 8
  %loadMem_403e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e3c = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e3c)
  store %struct.Memory* %call_403e3c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403e44	 Bytes: 4
  %loadMem_403e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e44 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e44)
  store %struct.Memory* %call_403e44, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403e48	 Bytes: 3
  %loadMem_403e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e48 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e48)
  store %struct.Memory* %call_403e48, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403e4b	 Bytes: 3
  %loadMem_403e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e4b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e4b)
  store %struct.Memory* %call_403e4b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403e4e	 Bytes: 3
  %loadMem_403e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e4e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e4e)
  store %struct.Memory* %call_403e4e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403e51	 Bytes: 5
  %loadMem_403e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e51 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e51)
  store %struct.Memory* %call_403e51, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 403e56	 Bytes: 8
  %loadMem_403e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e56 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e56)
  store %struct.Memory* %call_403e56, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 403e5e	 Bytes: 5
  %loadMem_403e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e5e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e5e)
  store %struct.Memory* %call_403e5e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403e63	 Bytes: 4
  %loadMem_403e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e63 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e63)
  store %struct.Memory* %call_403e63, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 403e67	 Bytes: 5
  %loadMem_403e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e67 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e67)
  store %struct.Memory* %call_403e67, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm0	 RIP: 403e6c	 Bytes: 8
  %loadMem_403e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e6c = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e6c)
  store %struct.Memory* %call_403e6c, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 403e74	 Bytes: 5
  %loadMem_403e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e74 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e74)
  store %struct.Memory* %call_403e74, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403e79	 Bytes: 4
  %loadMem_403e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e79 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e79)
  store %struct.Memory* %call_403e79, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 403e7d	 Bytes: 5
  %loadMem_403e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e7d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e7d)
  store %struct.Memory* %call_403e7d, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 403e82	 Bytes: 5
  %loadMem_403e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e82 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e82)
  store %struct.Memory* %call_403e82, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 403e87	 Bytes: 5
  %loadMem_403e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e87 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e87)
  store %struct.Memory* %call_403e87, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 403e8c	 Bytes: 3
  %loadMem_403e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e8c = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e8c)
  store %struct.Memory* %call_403e8c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 403e8f	 Bytes: 5
  %loadMem_403e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e8f = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e8f)
  store %struct.Memory* %call_403e8f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403e94	 Bytes: 5
  %loadMem_403e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e94 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e94)
  store %struct.Memory* %call_403e94, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 403e99	 Bytes: 5
  %loadMem_403e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e99 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e99)
  store %struct.Memory* %call_403e99, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403e9e	 Bytes: 5
  %loadMem_403e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e9e = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e9e)
  store %struct.Memory* %call_403e9e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403ea3	 Bytes: 4
  %loadMem_403ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea3 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea3)
  store %struct.Memory* %call_403ea3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403ea7	 Bytes: 4
  %loadMem_403ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea7)
  store %struct.Memory* %call_403ea7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 403eab	 Bytes: 4
  %loadMem_403eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eab = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eab)
  store %struct.Memory* %call_403eab, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403eaf	 Bytes: 5
  %loadMem_403eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eaf = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eaf)
  store %struct.Memory* %call_403eaf, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 403eb4	 Bytes: 5
  %loadMem_403eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb4 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb4)
  store %struct.Memory* %call_403eb4, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 403eb9	 Bytes: 5
  %loadMem_403eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb9 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb9)
  store %struct.Memory* %call_403eb9, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 403ebe	 Bytes: 3
  %loadMem_403ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ebe = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ebe)
  store %struct.Memory* %call_403ebe, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 403ec1	 Bytes: 5
  %loadMem_403ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec1 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec1)
  store %struct.Memory* %call_403ec1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403ec6	 Bytes: 5
  %loadMem_403ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec6 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec6)
  store %struct.Memory* %call_403ec6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 403ecb	 Bytes: 5
  %loadMem_403ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ecb = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ecb)
  store %struct.Memory* %call_403ecb, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403ed0	 Bytes: 5
  %loadMem_403ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed0 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed0)
  store %struct.Memory* %call_403ed0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403ed5	 Bytes: 4
  %loadMem_403ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed5 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed5)
  store %struct.Memory* %call_403ed5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403ed9	 Bytes: 4
  %loadMem_403ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed9)
  store %struct.Memory* %call_403ed9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 403edd	 Bytes: 3
  %loadMem_403edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403edd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403edd)
  store %struct.Memory* %call_403edd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403ee0	 Bytes: 3
  %loadMem_403ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee0)
  store %struct.Memory* %call_403ee0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403ee3	 Bytes: 3
  %loadMem_403ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee3)
  store %struct.Memory* %call_403ee3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403ee6	 Bytes: 5
  %loadMem_403ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee6)
  store %struct.Memory* %call_403ee6, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403eeb	 Bytes: 8
  %loadMem_403eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eeb = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eeb)
  store %struct.Memory* %call_403eeb, %struct.Memory** %MEMORY

  ; Code: subsd -0xb0(%rbp), %xmm0	 RIP: 403ef3	 Bytes: 8
  %loadMem_403ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef3 = call %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef3)
  store %struct.Memory* %call_403ef3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403efb	 Bytes: 5
  %loadMem_403efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403efb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403efb)
  store %struct.Memory* %call_403efb, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403f00	 Bytes: 8
  %loadMem_403f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f00 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f00)
  store %struct.Memory* %call_403f00, %struct.Memory** %MEMORY

  ; Code: addsd -0xa8(%rbp), %xmm0	 RIP: 403f08	 Bytes: 8
  %loadMem_403f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f08 = call %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f08)
  store %struct.Memory* %call_403f08, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403f10	 Bytes: 5
  %loadMem_403f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f10 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f10)
  store %struct.Memory* %call_403f10, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403f15	 Bytes: 5
  %loadMem_403f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f15 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f15)
  store %struct.Memory* %call_403f15, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403f1a	 Bytes: 5
  %loadMem_403f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f1a = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f1a)
  store %struct.Memory* %call_403f1a, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403f1f	 Bytes: 5
  %loadMem_403f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f1f = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f1f)
  store %struct.Memory* %call_403f1f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403f24	 Bytes: 5
  %loadMem_403f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f24 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f24)
  store %struct.Memory* %call_403f24, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403f29	 Bytes: 4
  %loadMem_403f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f29 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f29)
  store %struct.Memory* %call_403f29, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f2d	 Bytes: 4
  %loadMem_403f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f2d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f2d)
  store %struct.Memory* %call_403f2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 403f31	 Bytes: 4
  %loadMem_403f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f31 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f31)
  store %struct.Memory* %call_403f31, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f35	 Bytes: 5
  %loadMem_403f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f35 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f35)
  store %struct.Memory* %call_403f35, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 403f3a	 Bytes: 5
  %loadMem_403f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f3a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f3a)
  store %struct.Memory* %call_403f3a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403f3f	 Bytes: 5
  %loadMem_403f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f3f = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f3f)
  store %struct.Memory* %call_403f3f, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 403f44	 Bytes: 5
  %loadMem_403f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f44 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f44)
  store %struct.Memory* %call_403f44, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403f49	 Bytes: 5
  %loadMem_403f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f49 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f49)
  store %struct.Memory* %call_403f49, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403f4e	 Bytes: 4
  %loadMem_403f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f4e = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f4e)
  store %struct.Memory* %call_403f4e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f52	 Bytes: 4
  %loadMem_403f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f52 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f52)
  store %struct.Memory* %call_403f52, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 403f56	 Bytes: 3
  %loadMem_403f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f56 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f56)
  store %struct.Memory* %call_403f56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403f59	 Bytes: 3
  %loadMem_403f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f59 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f59)
  store %struct.Memory* %call_403f59, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403f5c	 Bytes: 3
  %loadMem_403f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f5c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f5c)
  store %struct.Memory* %call_403f5c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403f5f	 Bytes: 5
  %loadMem_403f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f5f = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f5f)
  store %struct.Memory* %call_403f5f, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 403f64	 Bytes: 8
  %loadMem_403f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f64 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f64)
  store %struct.Memory* %call_403f64, %struct.Memory** %MEMORY

  ; Code: addsd -0xb0(%rbp), %xmm0	 RIP: 403f6c	 Bytes: 8
  %loadMem_403f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f6c = call %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f6c)
  store %struct.Memory* %call_403f6c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 403f74	 Bytes: 5
  %loadMem_403f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f74 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f74)
  store %struct.Memory* %call_403f74, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 403f79	 Bytes: 8
  %loadMem_403f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f79 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f79)
  store %struct.Memory* %call_403f79, %struct.Memory** %MEMORY

  ; Code: subsd -0xa8(%rbp), %xmm0	 RIP: 403f81	 Bytes: 8
  %loadMem_403f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f81 = call %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f81)
  store %struct.Memory* %call_403f81, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 403f89	 Bytes: 5
  %loadMem_403f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f89 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f89)
  store %struct.Memory* %call_403f89, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403f8e	 Bytes: 5
  %loadMem_403f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f8e = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f8e)
  store %struct.Memory* %call_403f8e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm0	 RIP: 403f93	 Bytes: 5
  %loadMem_403f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f93 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f93)
  store %struct.Memory* %call_403f93, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403f98	 Bytes: 5
  %loadMem_403f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f98 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f98)
  store %struct.Memory* %call_403f98, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm1	 RIP: 403f9d	 Bytes: 5
  %loadMem_403f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f9d = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f9d)
  store %struct.Memory* %call_403f9d, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403fa2	 Bytes: 4
  %loadMem_403fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa2 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa2)
  store %struct.Memory* %call_403fa2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403fa6	 Bytes: 4
  %loadMem_403fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa6)
  store %struct.Memory* %call_403fa6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 403faa	 Bytes: 4
  %loadMem_403faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403faa = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403faa)
  store %struct.Memory* %call_403faa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403fae	 Bytes: 5
  %loadMem_403fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fae = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fae)
  store %struct.Memory* %call_403fae, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 403fb3	 Bytes: 5
  %loadMem_403fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb3 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb3)
  store %struct.Memory* %call_403fb3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x80(%rbp), %xmm0	 RIP: 403fb8	 Bytes: 5
  %loadMem_403fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb8 = call %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb8)
  store %struct.Memory* %call_403fb8, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 403fbd	 Bytes: 5
  %loadMem_403fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fbd = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fbd)
  store %struct.Memory* %call_403fbd, %struct.Memory** %MEMORY

  ; Code: mulsd -0x78(%rbp), %xmm1	 RIP: 403fc2	 Bytes: 5
  %loadMem_403fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc2 = call %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc2)
  store %struct.Memory* %call_403fc2, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403fc7	 Bytes: 4
  %loadMem_403fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc7 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc7)
  store %struct.Memory* %call_403fc7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403fcb	 Bytes: 4
  %loadMem_403fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fcb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fcb)
  store %struct.Memory* %call_403fcb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 403fcf	 Bytes: 3
  %loadMem_403fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fcf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fcf)
  store %struct.Memory* %call_403fcf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 403fd2	 Bytes: 3
  %loadMem_403fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd2)
  store %struct.Memory* %call_403fd2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403fd5	 Bytes: 3
  %loadMem_403fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd5)
  store %struct.Memory* %call_403fd5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403fd8	 Bytes: 5
  %loadMem_403fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd8 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd8)
  store %struct.Memory* %call_403fd8, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403fdd	 Bytes: 3
  %loadMem_403fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fdd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fdd)
  store %struct.Memory* %call_403fdd, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 403fe0	 Bytes: 3
  %loadMem_403fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe0 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe0)
  store %struct.Memory* %call_403fe0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403fe3	 Bytes: 3
  %loadMem_403fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe3 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe3)
  store %struct.Memory* %call_403fe3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403cb0	 RIP: 403fe6	 Bytes: 5
  %loadMem_403fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe6 = call %struct.Memory* @routine_jmpq_.L_403cb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe6, i64 -822, i64 5)
  store %struct.Memory* %call_403fe6, %struct.Memory** %MEMORY

  br label %block_.L_403cb0

  ; Code: .L_403feb:	 RIP: 403feb	 Bytes: 0
block_.L_403feb:

  ; Code: jmpq .L_403ff0	 RIP: 403feb	 Bytes: 5
  %loadMem_403feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403feb = call %struct.Memory* @routine_jmpq_.L_403ff0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403feb, i64 5, i64 5)
  store %struct.Memory* %call_403feb, %struct.Memory** %MEMORY

  br label %block_.L_403ff0

  ; Code: .L_403ff0:	 RIP: 403ff0	 Bytes: 0
block_.L_403ff0:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 403ff0	 Bytes: 3
  %loadMem_403ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff0 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff0)
  store %struct.Memory* %call_403ff0, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %eax	 RIP: 403ff3	 Bytes: 3
  %loadMem_403ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff3 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff3)
  store %struct.Memory* %call_403ff3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 403ff6	 Bytes: 3
  %loadMem_403ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff6 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff6)
  store %struct.Memory* %call_403ff6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403883	 RIP: 403ff9	 Bytes: 5
  %loadMem_403ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff9 = call %struct.Memory* @routine_jmpq_.L_403883(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff9, i64 -1910, i64 5)
  store %struct.Memory* %call_403ff9, %struct.Memory** %MEMORY

  br label %block_.L_403883

  ; Code: .L_403ffe:	 RIP: 403ffe	 Bytes: 0
block_.L_403ffe:

  ; Code: addq $0x30, %rsp	 RIP: 403ffe	 Bytes: 4
  %loadMem_403ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ffe = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ffe)
  store %struct.Memory* %call_403ffe, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 404002	 Bytes: 1
  %loadMem_404002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404002 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404002)
  store %struct.Memory* %call_404002, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 404003	 Bytes: 1
  %loadMem_404003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404003 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404003)
  store %struct.Memory* %call_404003, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_404003
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_shll__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jge_.L_40359d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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














define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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








define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 176
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
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

define %struct.Memory* @routine_jmpq_.L_403346(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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


define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jge_.L_40386d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




























































































































































































define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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












define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_jmpq_.L_4035b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jge_.L_403ffe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2129
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
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


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
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


define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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








define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_403c42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




























































































































































































define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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










define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




























define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












































define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






































define %struct.Memory* @routine_jmpq_.L_403930(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1182
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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








define %struct.Memory* @routine_addl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_403feb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
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


define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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


























define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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
































define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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




define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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








































































































define %struct.Memory* @routine_jmpq_.L_403cb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_403ff0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_403883(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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

