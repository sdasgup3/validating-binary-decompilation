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


define %struct.Memory* @kernel_fdtd_apml_StrictFP(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_fdtd_apml_StrictFP:	 RIP: 402260	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 402260	 Bytes: 1
  %loadMem_402260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402260 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402260)
  store %struct.Memory* %call_402260, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 402261	 Bytes: 3
  %loadMem_402261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402261 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402261)
  store %struct.Memory* %call_402261, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 402264	 Bytes: 2
  %loadMem_402264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402264 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402264)
  store %struct.Memory* %call_402264, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 402266	 Bytes: 2
  %loadMem_402266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402266 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402266)
  store %struct.Memory* %call_402266, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 402268	 Bytes: 2
  %loadMem_402268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402268 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402268)
  store %struct.Memory* %call_402268, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 40226a	 Bytes: 2
  %loadMem_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226a = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226a)
  store %struct.Memory* %call_40226a, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 40226c	 Bytes: 1
  %loadMem_40226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226c = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226c)
  store %struct.Memory* %call_40226c, %struct.Memory** %MEMORY

  ; Code: subq $0x38, %rsp	 RIP: 40226d	 Bytes: 4
  %loadMem_40226d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226d = call %struct.Memory* @routine_subq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226d)
  store %struct.Memory* %call_40226d, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 402271	 Bytes: 4
  %loadMem_402271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402271 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402271)
  store %struct.Memory* %call_402271, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %r10	 RIP: 402275	 Bytes: 4
  %loadMem_402275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402275 = call %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402275)
  store %struct.Memory* %call_402275, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %r11	 RIP: 402279	 Bytes: 4
  %loadMem_402279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402279 = call %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402279)
  store %struct.Memory* %call_402279, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rbx	 RIP: 40227d	 Bytes: 4
  %loadMem_40227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227d = call %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227d)
  store %struct.Memory* %call_40227d, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %r14	 RIP: 402281	 Bytes: 4
  %loadMem_402281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402281 = call %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402281)
  store %struct.Memory* %call_402281, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %r15	 RIP: 402285	 Bytes: 4
  %loadMem_402285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402285 = call %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402285)
  store %struct.Memory* %call_402285, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %r12	 RIP: 402289	 Bytes: 4
  %loadMem_402289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402289 = call %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402289)
  store %struct.Memory* %call_402289, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r13	 RIP: 40228d	 Bytes: 4
  %loadMem_40228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228d = call %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228d)
  store %struct.Memory* %call_40228d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd0(%rbp)	 RIP: 402291	 Bytes: 7
  %loadMem_402291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402291 = call %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402291)
  store %struct.Memory* %call_402291, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 402298	 Bytes: 4
  %loadMem_402298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402298 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402298)
  store %struct.Memory* %call_402298, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 40229c	 Bytes: 7
  %loadMem_40229c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229c = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229c)
  store %struct.Memory* %call_40229c, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4022a3	 Bytes: 4
  %loadMem_4022a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a3 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a3)
  store %struct.Memory* %call_4022a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 4022a7	 Bytes: 7
  %loadMem_4022a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a7 = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a7)
  store %struct.Memory* %call_4022a7, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4022ae	 Bytes: 4
  %loadMem_4022ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ae = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ae)
  store %struct.Memory* %call_4022ae, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 4022b2	 Bytes: 3
  %loadMem_4022b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b2 = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b2)
  store %struct.Memory* %call_4022b2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x30(%rbp)	 RIP: 4022b5	 Bytes: 3
  %loadMem_4022b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b5 = call %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b5)
  store %struct.Memory* %call_4022b5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 4022b8	 Bytes: 3
  %loadMem_4022b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b8 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b8)
  store %struct.Memory* %call_4022b8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4022bb	 Bytes: 5
  %loadMem_4022bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bb)
  store %struct.Memory* %call_4022bb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 4022c0	 Bytes: 5
  %loadMem_4022c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c0 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c0)
  store %struct.Memory* %call_4022c0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 4022c5	 Bytes: 4
  %loadMem_4022c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c5 = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c5)
  store %struct.Memory* %call_4022c5, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x58(%rbp)	 RIP: 4022c9	 Bytes: 4
  %loadMem_4022c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c9 = call %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c9)
  store %struct.Memory* %call_4022c9, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x60(%rbp)	 RIP: 4022cd	 Bytes: 4
  %loadMem_4022cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cd = call %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cd)
  store %struct.Memory* %call_4022cd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 4022d1	 Bytes: 4
  %loadMem_4022d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d1 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d1)
  store %struct.Memory* %call_4022d1, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rax	 RIP: 4022d5	 Bytes: 7
  %loadMem_4022d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d5 = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d5)
  store %struct.Memory* %call_4022d5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 4022dc	 Bytes: 4
  %loadMem_4022dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022dc = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022dc)
  store %struct.Memory* %call_4022dc, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %rcx	 RIP: 4022e0	 Bytes: 7
  %loadMem_4022e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e0 = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e0)
  store %struct.Memory* %call_4022e0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x78(%rbp)	 RIP: 4022e7	 Bytes: 4
  %loadMem_4022e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e7 = call %struct.Memory* @routine_movq__rcx__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e7)
  store %struct.Memory* %call_4022e7, %struct.Memory** %MEMORY

  ; Code: movq %r13, -0x80(%rbp)	 RIP: 4022eb	 Bytes: 4
  %loadMem_4022eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022eb = call %struct.Memory* @routine_movq__r13__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022eb)
  store %struct.Memory* %call_4022eb, %struct.Memory** %MEMORY

  ; Code: movq %r12, -0x88(%rbp)	 RIP: 4022ef	 Bytes: 7
  %loadMem_4022ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ef = call %struct.Memory* @routine_movq__r12__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ef)
  store %struct.Memory* %call_4022ef, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0x90(%rbp)	 RIP: 4022f6	 Bytes: 7
  %loadMem_4022f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f6 = call %struct.Memory* @routine_movq__r15__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f6)
  store %struct.Memory* %call_4022f6, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x98(%rbp)	 RIP: 4022fd	 Bytes: 7
  %loadMem_4022fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fd = call %struct.Memory* @routine_movq__r14__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fd)
  store %struct.Memory* %call_4022fd, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0xa0(%rbp)	 RIP: 402304	 Bytes: 7
  %loadMem_402304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402304 = call %struct.Memory* @routine_movq__rbx__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402304)
  store %struct.Memory* %call_402304, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0xa8(%rbp)	 RIP: 40230b	 Bytes: 7
  %loadMem_40230b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230b = call %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230b)
  store %struct.Memory* %call_40230b, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0xb0(%rbp)	 RIP: 402312	 Bytes: 7
  %loadMem_402312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402312 = call %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402312)
  store %struct.Memory* %call_402312, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %r8	 RIP: 402319	 Bytes: 7
  %loadMem_402319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402319 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402319)
  store %struct.Memory* %call_402319, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0xb8(%rbp)	 RIP: 402320	 Bytes: 7
  %loadMem_402320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402320 = call %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402320)
  store %struct.Memory* %call_402320, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xbc(%rbp)	 RIP: 402327	 Bytes: 10
  %loadMem_402327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402327 = call %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402327)
  store %struct.Memory* %call_402327, %struct.Memory** %MEMORY

  ; Code: .L_402331:	 RIP: 402331	 Bytes: 0
  br label %block_.L_402331
block_.L_402331:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 402331	 Bytes: 6
  %loadMem_402331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402331 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402331)
  store %struct.Memory* %call_402331, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 402337	 Bytes: 3
  %loadMem_402337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402337 = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402337)
  store %struct.Memory* %call_402337, %struct.Memory** %MEMORY

  ; Code: jge .L_402ffb	 RIP: 40233a	 Bytes: 6
  %loadMem_40233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233a = call %struct.Memory* @routine_jge_.L_402ffb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233a, i8* %BRANCH_TAKEN, i64 3265, i64 6, i64 6)
  store %struct.Memory* %call_40233a, %struct.Memory** %MEMORY

  %loadBr_40233a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40233a = icmp eq i8 %loadBr_40233a, 1
  br i1 %cmpBr_40233a, label %block_.L_402ffb, label %block_402340

block_402340:
  ; Code: movl $0x0, -0xc0(%rbp)	 RIP: 402340	 Bytes: 10
  %loadMem_402340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402340 = call %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402340)
  store %struct.Memory* %call_402340, %struct.Memory** %MEMORY

  ; Code: .L_40234a:	 RIP: 40234a	 Bytes: 0
  br label %block_.L_40234a
block_.L_40234a:

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 40234a	 Bytes: 6
  %loadMem_40234a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234a = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234a)
  store %struct.Memory* %call_40234a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 402350	 Bytes: 3
  %loadMem_402350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402350 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402350)
  store %struct.Memory* %call_402350, %struct.Memory** %MEMORY

  ; Code: jge .L_402fe2	 RIP: 402353	 Bytes: 6
  %loadMem_402353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402353 = call %struct.Memory* @routine_jge_.L_402fe2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402353, i8* %BRANCH_TAKEN, i64 3215, i64 6, i64 6)
  store %struct.Memory* %call_402353, %struct.Memory** %MEMORY

  %loadBr_402353 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402353 = icmp eq i8 %loadBr_402353, 1
  br i1 %cmpBr_402353, label %block_.L_402fe2, label %block_402359

block_402359:
  ; Code: movl $0x0, -0xc4(%rbp)	 RIP: 402359	 Bytes: 10
  %loadMem_402359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402359 = call %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402359)
  store %struct.Memory* %call_402359, %struct.Memory** %MEMORY

  ; Code: .L_402363:	 RIP: 402363	 Bytes: 0
  br label %block_.L_402363
block_.L_402363:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 402363	 Bytes: 6
  %loadMem_402363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402363 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402363)
  store %struct.Memory* %call_402363, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 402369	 Bytes: 3
  %loadMem_402369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402369 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402369)
  store %struct.Memory* %call_402369, %struct.Memory** %MEMORY

  ; Code: jge .L_4026c3	 RIP: 40236c	 Bytes: 6
  %loadMem_40236c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236c = call %struct.Memory* @routine_jge_.L_4026c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236c, i8* %BRANCH_TAKEN, i64 855, i64 6, i64 6)
  store %struct.Memory* %call_40236c, %struct.Memory** %MEMORY

  %loadBr_40236c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40236c = icmp eq i8 %loadBr_40236c, 1
  br i1 %cmpBr_40236c, label %block_.L_4026c3, label %block_402372

block_402372:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 402372	 Bytes: 4
  %loadMem_402372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402372 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402372)
  store %struct.Memory* %call_402372, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402376	 Bytes: 7
  %loadMem_402376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402376 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402376)
  store %struct.Memory* %call_402376, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40237d	 Bytes: 7
  %loadMem_40237d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237d)
  store %struct.Memory* %call_40237d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402384	 Bytes: 3
  %loadMem_402384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402384 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402384)
  store %struct.Memory* %call_402384, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402387	 Bytes: 7
  %loadMem_402387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402387 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402387)
  store %struct.Memory* %call_402387, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40238e	 Bytes: 7
  %loadMem_40238e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238e)
  store %struct.Memory* %call_40238e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402395	 Bytes: 3
  %loadMem_402395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402395 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402395)
  store %struct.Memory* %call_402395, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402398	 Bytes: 7
  %loadMem_402398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402398 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402398)
  store %struct.Memory* %call_402398, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40239f	 Bytes: 5
  %loadMem_40239f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239f = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239f)
  store %struct.Memory* %call_40239f, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 4023a4	 Bytes: 4
  %loadMem_4023a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a4 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a4)
  store %struct.Memory* %call_4023a4, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4023a8	 Bytes: 7
  %loadMem_4023a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a8)
  store %struct.Memory* %call_4023a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4023af	 Bytes: 7
  %loadMem_4023af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023af = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023af)
  store %struct.Memory* %call_4023af, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023b6	 Bytes: 3
  %loadMem_4023b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b6)
  store %struct.Memory* %call_4023b6, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 4023b9	 Bytes: 6
  %loadMem_4023b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b9 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b9)
  store %struct.Memory* %call_4023b9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4023bf	 Bytes: 3
  %loadMem_4023bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023bf = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023bf)
  store %struct.Memory* %call_4023bf, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023c2	 Bytes: 3
  %loadMem_4023c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c2)
  store %struct.Memory* %call_4023c2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4023c5	 Bytes: 7
  %loadMem_4023c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c5 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c5)
  store %struct.Memory* %call_4023c5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023cc	 Bytes: 3
  %loadMem_4023cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cc)
  store %struct.Memory* %call_4023cc, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4023cf	 Bytes: 7
  %loadMem_4023cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cf = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cf)
  store %struct.Memory* %call_4023cf, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4023d6	 Bytes: 5
  %loadMem_4023d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d6 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d6)
  store %struct.Memory* %call_4023d6, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4023db	 Bytes: 4
  %loadMem_4023db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023db = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023db)
  store %struct.Memory* %call_4023db, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4023df	 Bytes: 7
  %loadMem_4023df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023df = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023df)
  store %struct.Memory* %call_4023df, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4023e6	 Bytes: 7
  %loadMem_4023e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e6)
  store %struct.Memory* %call_4023e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023ed	 Bytes: 3
  %loadMem_4023ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ed = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ed)
  store %struct.Memory* %call_4023ed, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4023f0	 Bytes: 7
  %loadMem_4023f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f0 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f0)
  store %struct.Memory* %call_4023f0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4023f7	 Bytes: 7
  %loadMem_4023f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f7)
  store %struct.Memory* %call_4023f7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4023fe	 Bytes: 3
  %loadMem_4023fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fe)
  store %struct.Memory* %call_4023fe, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %edx	 RIP: 402401	 Bytes: 6
  %loadMem_402401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402401 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402401)
  store %struct.Memory* %call_402401, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 402407	 Bytes: 3
  %loadMem_402407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402407 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402407)
  store %struct.Memory* %call_402407, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40240a	 Bytes: 3
  %loadMem_40240a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240a)
  store %struct.Memory* %call_40240a, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40240d	 Bytes: 5
  %loadMem_40240d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240d = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240d)
  store %struct.Memory* %call_40240d, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 402412	 Bytes: 4
  %loadMem_402412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402412 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402412)
  store %struct.Memory* %call_402412, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402416	 Bytes: 7
  %loadMem_402416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402416 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402416)
  store %struct.Memory* %call_402416, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40241d	 Bytes: 7
  %loadMem_40241d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241d)
  store %struct.Memory* %call_40241d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402424	 Bytes: 3
  %loadMem_402424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402424 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402424)
  store %struct.Memory* %call_402424, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402427	 Bytes: 7
  %loadMem_402427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402427 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402427)
  store %struct.Memory* %call_402427, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40242e	 Bytes: 7
  %loadMem_40242e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242e)
  store %struct.Memory* %call_40242e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402435	 Bytes: 3
  %loadMem_402435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402435 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402435)
  store %struct.Memory* %call_402435, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402438	 Bytes: 7
  %loadMem_402438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402438 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402438)
  store %struct.Memory* %call_402438, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40243f	 Bytes: 5
  %loadMem_40243f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243f = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243f)
  store %struct.Memory* %call_40243f, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402444	 Bytes: 4
  %loadMem_402444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402444 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402444)
  store %struct.Memory* %call_402444, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402448	 Bytes: 7
  %loadMem_402448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402448 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402448)
  store %struct.Memory* %call_402448, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40244f	 Bytes: 7
  %loadMem_40244f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244f)
  store %struct.Memory* %call_40244f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402456	 Bytes: 3
  %loadMem_402456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402456 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402456)
  store %struct.Memory* %call_402456, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402459	 Bytes: 7
  %loadMem_402459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402459 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402459)
  store %struct.Memory* %call_402459, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402460	 Bytes: 5
  %loadMem_402460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402460 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402460)
  store %struct.Memory* %call_402460, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 402465	 Bytes: 7
  %loadMem_402465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402465 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402465)
  store %struct.Memory* %call_402465, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40246c	 Bytes: 7
  %loadMem_40246c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246c = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246c)
  store %struct.Memory* %call_40246c, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402473	 Bytes: 5
  %loadMem_402473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402473 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402473)
  store %struct.Memory* %call_402473, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402478	 Bytes: 7
  %loadMem_402478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402478 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402478)
  store %struct.Memory* %call_402478, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40247f	 Bytes: 7
  %loadMem_40247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247f)
  store %struct.Memory* %call_40247f, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402486	 Bytes: 5
  %loadMem_402486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402486 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402486)
  store %struct.Memory* %call_402486, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40248b	 Bytes: 4
  %loadMem_40248b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248b = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248b)
  store %struct.Memory* %call_40248b, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40248f	 Bytes: 7
  %loadMem_40248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248f = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248f)
  store %struct.Memory* %call_40248f, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402496	 Bytes: 7
  %loadMem_402496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402496 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402496)
  store %struct.Memory* %call_402496, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40249d	 Bytes: 3
  %loadMem_40249d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249d)
  store %struct.Memory* %call_40249d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4024a0	 Bytes: 7
  %loadMem_4024a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a0 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a0)
  store %struct.Memory* %call_4024a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4024a7	 Bytes: 7
  %loadMem_4024a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a7)
  store %struct.Memory* %call_4024a7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024ae	 Bytes: 3
  %loadMem_4024ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ae = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ae)
  store %struct.Memory* %call_4024ae, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4024b1	 Bytes: 7
  %loadMem_4024b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b1 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b1)
  store %struct.Memory* %call_4024b1, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4024b8	 Bytes: 5
  %loadMem_4024b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b8 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b8)
  store %struct.Memory* %call_4024b8, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 4024bd	 Bytes: 5
  %loadMem_4024bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bd = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bd)
  store %struct.Memory* %call_4024bd, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 4024c2	 Bytes: 7
  %loadMem_4024c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c2 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c2)
  store %struct.Memory* %call_4024c2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4024c9	 Bytes: 7
  %loadMem_4024c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c9 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c9)
  store %struct.Memory* %call_4024c9, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4024d0	 Bytes: 5
  %loadMem_4024d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d0 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d0)
  store %struct.Memory* %call_4024d0, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4024d5	 Bytes: 4
  %loadMem_4024d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d5 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d5)
  store %struct.Memory* %call_4024d5, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4024d9	 Bytes: 7
  %loadMem_4024d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d9 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d9)
  store %struct.Memory* %call_4024d9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4024e0	 Bytes: 7
  %loadMem_4024e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e0)
  store %struct.Memory* %call_4024e0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4024e7	 Bytes: 3
  %loadMem_4024e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e7)
  store %struct.Memory* %call_4024e7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4024ea	 Bytes: 7
  %loadMem_4024ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ea = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ea)
  store %struct.Memory* %call_4024ea, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4024f1	 Bytes: 5
  %loadMem_4024f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f1)
  store %struct.Memory* %call_4024f1, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4024f6	 Bytes: 4
  %loadMem_4024f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f6 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f6)
  store %struct.Memory* %call_4024f6, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4024fa	 Bytes: 4
  %loadMem_4024fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024fa = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024fa)
  store %struct.Memory* %call_4024fa, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4024fe	 Bytes: 7
  %loadMem_4024fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024fe = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024fe)
  store %struct.Memory* %call_4024fe, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402505	 Bytes: 7
  %loadMem_402505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402505 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402505)
  store %struct.Memory* %call_402505, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40250c	 Bytes: 3
  %loadMem_40250c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250c)
  store %struct.Memory* %call_40250c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40250f	 Bytes: 7
  %loadMem_40250f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250f)
  store %struct.Memory* %call_40250f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402516	 Bytes: 5
  %loadMem_402516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402516 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402516)
  store %struct.Memory* %call_402516, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 40251b	 Bytes: 7
  %loadMem_40251b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251b = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251b)
  store %struct.Memory* %call_40251b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402522	 Bytes: 7
  %loadMem_402522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402522 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402522)
  store %struct.Memory* %call_402522, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402529	 Bytes: 5
  %loadMem_402529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402529 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402529)
  store %struct.Memory* %call_402529, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40252e	 Bytes: 7
  %loadMem_40252e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40252e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40252e)
  store %struct.Memory* %call_40252e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402535	 Bytes: 7
  %loadMem_402535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402535 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402535)
  store %struct.Memory* %call_402535, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 40253c	 Bytes: 5
  %loadMem_40253c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253c)
  store %struct.Memory* %call_40253c, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402541	 Bytes: 7
  %loadMem_402541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402541 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402541)
  store %struct.Memory* %call_402541, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402548	 Bytes: 7
  %loadMem_402548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402548 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402548)
  store %struct.Memory* %call_402548, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40254f	 Bytes: 7
  %loadMem_40254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254f = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254f)
  store %struct.Memory* %call_40254f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402556	 Bytes: 3
  %loadMem_402556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402556 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402556)
  store %struct.Memory* %call_402556, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402559	 Bytes: 7
  %loadMem_402559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402559 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402559)
  store %struct.Memory* %call_402559, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402560	 Bytes: 7
  %loadMem_402560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402560 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402560)
  store %struct.Memory* %call_402560, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402567	 Bytes: 3
  %loadMem_402567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402567 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402567)
  store %struct.Memory* %call_402567, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 40256a	 Bytes: 7
  %loadMem_40256a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256a = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256a)
  store %struct.Memory* %call_40256a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402571	 Bytes: 5
  %loadMem_402571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402571 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402571)
  store %struct.Memory* %call_402571, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402576	 Bytes: 5
  %loadMem_402576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402576 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402576)
  store %struct.Memory* %call_402576, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 40257b	 Bytes: 7
  %loadMem_40257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257b = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257b)
  store %struct.Memory* %call_40257b, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402582	 Bytes: 7
  %loadMem_402582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402582 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402582)
  store %struct.Memory* %call_402582, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402589	 Bytes: 5
  %loadMem_402589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402589 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402589)
  store %struct.Memory* %call_402589, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40258e	 Bytes: 7
  %loadMem_40258e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258e)
  store %struct.Memory* %call_40258e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402595	 Bytes: 7
  %loadMem_402595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402595 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402595)
  store %struct.Memory* %call_402595, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40259c	 Bytes: 5
  %loadMem_40259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259c)
  store %struct.Memory* %call_40259c, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4025a1	 Bytes: 4
  %loadMem_4025a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a1 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a1)
  store %struct.Memory* %call_4025a1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4025a5	 Bytes: 7
  %loadMem_4025a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a5)
  store %struct.Memory* %call_4025a5, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4025ac	 Bytes: 7
  %loadMem_4025ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ac = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ac)
  store %struct.Memory* %call_4025ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4025b3	 Bytes: 3
  %loadMem_4025b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b3)
  store %struct.Memory* %call_4025b3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4025b6	 Bytes: 7
  %loadMem_4025b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b6 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b6)
  store %struct.Memory* %call_4025b6, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4025bd	 Bytes: 5
  %loadMem_4025bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025bd = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025bd)
  store %struct.Memory* %call_4025bd, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4025c2	 Bytes: 4
  %loadMem_4025c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c2 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c2)
  store %struct.Memory* %call_4025c2, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4025c6	 Bytes: 5
  %loadMem_4025c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c6 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c6)
  store %struct.Memory* %call_4025c6, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 4025cb	 Bytes: 7
  %loadMem_4025cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025cb = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025cb)
  store %struct.Memory* %call_4025cb, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4025d2	 Bytes: 7
  %loadMem_4025d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d2 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d2)
  store %struct.Memory* %call_4025d2, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4025d9	 Bytes: 5
  %loadMem_4025d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d9 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d9)
  store %struct.Memory* %call_4025d9, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4025de	 Bytes: 7
  %loadMem_4025de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025de = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025de)
  store %struct.Memory* %call_4025de, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4025e5	 Bytes: 7
  %loadMem_4025e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e5 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e5)
  store %struct.Memory* %call_4025e5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4025ec	 Bytes: 5
  %loadMem_4025ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ec = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ec)
  store %struct.Memory* %call_4025ec, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4025f1	 Bytes: 4
  %loadMem_4025f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f1 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f1)
  store %struct.Memory* %call_4025f1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4025f5	 Bytes: 7
  %loadMem_4025f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f5)
  store %struct.Memory* %call_4025f5, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4025fc	 Bytes: 7
  %loadMem_4025fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025fc = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025fc)
  store %struct.Memory* %call_4025fc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402603	 Bytes: 3
  %loadMem_402603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402603 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402603)
  store %struct.Memory* %call_402603, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402606	 Bytes: 7
  %loadMem_402606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402606 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402606)
  store %struct.Memory* %call_402606, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40260d	 Bytes: 7
  %loadMem_40260d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260d)
  store %struct.Memory* %call_40260d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402614	 Bytes: 3
  %loadMem_402614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402614 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402614)
  store %struct.Memory* %call_402614, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402617	 Bytes: 7
  %loadMem_402617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402617 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402617)
  store %struct.Memory* %call_402617, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40261e	 Bytes: 5
  %loadMem_40261e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40261e = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40261e)
  store %struct.Memory* %call_40261e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402623	 Bytes: 4
  %loadMem_402623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402623 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402623)
  store %struct.Memory* %call_402623, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402627	 Bytes: 7
  %loadMem_402627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402627 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402627)
  store %struct.Memory* %call_402627, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40262e	 Bytes: 7
  %loadMem_40262e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262e = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262e)
  store %struct.Memory* %call_40262e, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402635	 Bytes: 7
  %loadMem_402635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402635 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402635)
  store %struct.Memory* %call_402635, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40263c	 Bytes: 3
  %loadMem_40263c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263c)
  store %struct.Memory* %call_40263c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40263f	 Bytes: 7
  %loadMem_40263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263f)
  store %struct.Memory* %call_40263f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402646	 Bytes: 7
  %loadMem_402646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402646 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402646)
  store %struct.Memory* %call_402646, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40264d	 Bytes: 3
  %loadMem_40264d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264d)
  store %struct.Memory* %call_40264d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402650	 Bytes: 7
  %loadMem_402650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402650 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402650)
  store %struct.Memory* %call_402650, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402657	 Bytes: 5
  %loadMem_402657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402657 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402657)
  store %struct.Memory* %call_402657, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40265c	 Bytes: 4
  %loadMem_40265c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265c = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265c)
  store %struct.Memory* %call_40265c, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402660	 Bytes: 7
  %loadMem_402660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402660 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402660)
  store %struct.Memory* %call_402660, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402667	 Bytes: 7
  %loadMem_402667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402667 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402667)
  store %struct.Memory* %call_402667, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40266e	 Bytes: 3
  %loadMem_40266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40266e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40266e)
  store %struct.Memory* %call_40266e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402671	 Bytes: 7
  %loadMem_402671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402671 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402671)
  store %struct.Memory* %call_402671, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402678	 Bytes: 5
  %loadMem_402678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402678 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402678)
  store %struct.Memory* %call_402678, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 40267d	 Bytes: 4
  %loadMem_40267d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267d = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267d)
  store %struct.Memory* %call_40267d, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402681	 Bytes: 7
  %loadMem_402681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402681 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402681)
  store %struct.Memory* %call_402681, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402688	 Bytes: 7
  %loadMem_402688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402688 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402688)
  store %struct.Memory* %call_402688, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40268f	 Bytes: 3
  %loadMem_40268f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40268f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40268f)
  store %struct.Memory* %call_40268f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402692	 Bytes: 7
  %loadMem_402692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402692 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402692)
  store %struct.Memory* %call_402692, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402699	 Bytes: 7
  %loadMem_402699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402699 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402699)
  store %struct.Memory* %call_402699, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4026a0	 Bytes: 3
  %loadMem_4026a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a0)
  store %struct.Memory* %call_4026a0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4026a3	 Bytes: 7
  %loadMem_4026a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a3 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a3)
  store %struct.Memory* %call_4026a3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4026aa	 Bytes: 5
  %loadMem_4026aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026aa = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026aa)
  store %struct.Memory* %call_4026aa, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 4026af	 Bytes: 6
  %loadMem_4026af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026af = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026af)
  store %struct.Memory* %call_4026af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4026b5	 Bytes: 3
  %loadMem_4026b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b5)
  store %struct.Memory* %call_4026b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 4026b8	 Bytes: 6
  %loadMem_4026b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b8 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b8)
  store %struct.Memory* %call_4026b8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402363	 RIP: 4026be	 Bytes: 5
  %loadMem_4026be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026be = call %struct.Memory* @routine_jmpq_.L_402363(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026be, i64 -859, i64 5)
  store %struct.Memory* %call_4026be, %struct.Memory** %MEMORY

  br label %block_.L_402363

  ; Code: .L_4026c3:	 RIP: 4026c3	 Bytes: 0
block_.L_4026c3:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 4026c3	 Bytes: 4
  %loadMem_4026c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c3 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c3)
  store %struct.Memory* %call_4026c3, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4026c7	 Bytes: 7
  %loadMem_4026c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c7 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c7)
  store %struct.Memory* %call_4026c7, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4026ce	 Bytes: 7
  %loadMem_4026ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ce = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ce)
  store %struct.Memory* %call_4026ce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4026d5	 Bytes: 3
  %loadMem_4026d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d5)
  store %struct.Memory* %call_4026d5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4026d8	 Bytes: 7
  %loadMem_4026d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d8 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d8)
  store %struct.Memory* %call_4026d8, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4026df	 Bytes: 7
  %loadMem_4026df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026df = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026df)
  store %struct.Memory* %call_4026df, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4026e6	 Bytes: 3
  %loadMem_4026e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e6)
  store %struct.Memory* %call_4026e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4026e9	 Bytes: 4
  %loadMem_4026e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e9)
  store %struct.Memory* %call_4026e9, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4026ed	 Bytes: 5
  %loadMem_4026ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ed = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ed)
  store %struct.Memory* %call_4026ed, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 4026f2	 Bytes: 4
  %loadMem_4026f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f2 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f2)
  store %struct.Memory* %call_4026f2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4026f6	 Bytes: 7
  %loadMem_4026f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f6)
  store %struct.Memory* %call_4026f6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4026fd	 Bytes: 7
  %loadMem_4026fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026fd = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026fd)
  store %struct.Memory* %call_4026fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402704	 Bytes: 3
  %loadMem_402704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402704 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402704)
  store %struct.Memory* %call_402704, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 402707	 Bytes: 6
  %loadMem_402707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402707 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402707)
  store %struct.Memory* %call_402707, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40270d	 Bytes: 3
  %loadMem_40270d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270d)
  store %struct.Memory* %call_40270d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402710	 Bytes: 3
  %loadMem_402710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402710 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402710)
  store %struct.Memory* %call_402710, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402713	 Bytes: 7
  %loadMem_402713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402713 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402713)
  store %struct.Memory* %call_402713, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40271a	 Bytes: 3
  %loadMem_40271a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40271a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40271a)
  store %struct.Memory* %call_40271a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40271d	 Bytes: 4
  %loadMem_40271d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40271d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40271d)
  store %struct.Memory* %call_40271d, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402721	 Bytes: 5
  %loadMem_402721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402721 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402721)
  store %struct.Memory* %call_402721, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 402726	 Bytes: 4
  %loadMem_402726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402726 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402726)
  store %struct.Memory* %call_402726, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40272a	 Bytes: 7
  %loadMem_40272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40272a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40272a)
  store %struct.Memory* %call_40272a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402731	 Bytes: 7
  %loadMem_402731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402731 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402731)
  store %struct.Memory* %call_402731, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402738	 Bytes: 3
  %loadMem_402738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402738 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402738)
  store %struct.Memory* %call_402738, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40273b	 Bytes: 7
  %loadMem_40273b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40273b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40273b)
  store %struct.Memory* %call_40273b, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 402742	 Bytes: 5
  %loadMem_402742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402742 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402742)
  store %struct.Memory* %call_402742, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 402747	 Bytes: 4
  %loadMem_402747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402747 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402747)
  store %struct.Memory* %call_402747, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40274b	 Bytes: 7
  %loadMem_40274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40274b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40274b)
  store %struct.Memory* %call_40274b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402752	 Bytes: 7
  %loadMem_402752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402752 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402752)
  store %struct.Memory* %call_402752, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402759	 Bytes: 3
  %loadMem_402759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402759 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402759)
  store %struct.Memory* %call_402759, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40275c	 Bytes: 7
  %loadMem_40275c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40275c = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40275c)
  store %struct.Memory* %call_40275c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402763	 Bytes: 7
  %loadMem_402763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402763 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402763)
  store %struct.Memory* %call_402763, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40276a	 Bytes: 3
  %loadMem_40276a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276a)
  store %struct.Memory* %call_40276a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40276d	 Bytes: 4
  %loadMem_40276d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276d)
  store %struct.Memory* %call_40276d, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402771	 Bytes: 5
  %loadMem_402771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402771 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402771)
  store %struct.Memory* %call_402771, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402776	 Bytes: 4
  %loadMem_402776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402776 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402776)
  store %struct.Memory* %call_402776, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40277a	 Bytes: 7
  %loadMem_40277a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40277a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40277a)
  store %struct.Memory* %call_40277a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402781	 Bytes: 7
  %loadMem_402781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402781 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402781)
  store %struct.Memory* %call_402781, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402788	 Bytes: 3
  %loadMem_402788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402788 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402788)
  store %struct.Memory* %call_402788, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40278b	 Bytes: 7
  %loadMem_40278b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278b)
  store %struct.Memory* %call_40278b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402792	 Bytes: 5
  %loadMem_402792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402792 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402792)
  store %struct.Memory* %call_402792, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 402797	 Bytes: 7
  %loadMem_402797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402797 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402797)
  store %struct.Memory* %call_402797, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40279e	 Bytes: 7
  %loadMem_40279e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279e = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279e)
  store %struct.Memory* %call_40279e, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4027a5	 Bytes: 5
  %loadMem_4027a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a5)
  store %struct.Memory* %call_4027a5, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 4027aa	 Bytes: 7
  %loadMem_4027aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027aa = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027aa)
  store %struct.Memory* %call_4027aa, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4027b1	 Bytes: 7
  %loadMem_4027b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b1 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b1)
  store %struct.Memory* %call_4027b1, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4027b8	 Bytes: 5
  %loadMem_4027b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b8 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b8)
  store %struct.Memory* %call_4027b8, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4027bd	 Bytes: 4
  %loadMem_4027bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027bd = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027bd)
  store %struct.Memory* %call_4027bd, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4027c1	 Bytes: 7
  %loadMem_4027c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c1 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c1)
  store %struct.Memory* %call_4027c1, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4027c8	 Bytes: 7
  %loadMem_4027c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c8 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c8)
  store %struct.Memory* %call_4027c8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4027cf	 Bytes: 3
  %loadMem_4027cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027cf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027cf)
  store %struct.Memory* %call_4027cf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4027d2	 Bytes: 7
  %loadMem_4027d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d2)
  store %struct.Memory* %call_4027d2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4027d9	 Bytes: 7
  %loadMem_4027d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d9)
  store %struct.Memory* %call_4027d9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4027e0	 Bytes: 3
  %loadMem_4027e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e0)
  store %struct.Memory* %call_4027e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4027e3	 Bytes: 4
  %loadMem_4027e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e3 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e3)
  store %struct.Memory* %call_4027e3, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4027e7	 Bytes: 5
  %loadMem_4027e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027e7 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027e7)
  store %struct.Memory* %call_4027e7, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 4027ec	 Bytes: 5
  %loadMem_4027ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ec = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ec)
  store %struct.Memory* %call_4027ec, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 4027f1	 Bytes: 7
  %loadMem_4027f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f1 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f1)
  store %struct.Memory* %call_4027f1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4027f8	 Bytes: 7
  %loadMem_4027f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f8 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f8)
  store %struct.Memory* %call_4027f8, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4027ff	 Bytes: 5
  %loadMem_4027ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ff = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ff)
  store %struct.Memory* %call_4027ff, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402804	 Bytes: 4
  %loadMem_402804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402804 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402804)
  store %struct.Memory* %call_402804, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402808	 Bytes: 7
  %loadMem_402808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402808 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402808)
  store %struct.Memory* %call_402808, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40280f	 Bytes: 7
  %loadMem_40280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40280f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40280f)
  store %struct.Memory* %call_40280f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402816	 Bytes: 3
  %loadMem_402816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402816 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402816)
  store %struct.Memory* %call_402816, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402819	 Bytes: 7
  %loadMem_402819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402819 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402819)
  store %struct.Memory* %call_402819, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402820	 Bytes: 5
  %loadMem_402820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402820 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402820)
  store %struct.Memory* %call_402820, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402825	 Bytes: 4
  %loadMem_402825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402825 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402825)
  store %struct.Memory* %call_402825, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402829	 Bytes: 4
  %loadMem_402829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402829 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402829)
  store %struct.Memory* %call_402829, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40282d	 Bytes: 7
  %loadMem_40282d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40282d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40282d)
  store %struct.Memory* %call_40282d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402834	 Bytes: 7
  %loadMem_402834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402834 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402834)
  store %struct.Memory* %call_402834, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40283b	 Bytes: 3
  %loadMem_40283b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40283b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40283b)
  store %struct.Memory* %call_40283b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40283e	 Bytes: 7
  %loadMem_40283e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40283e = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40283e)
  store %struct.Memory* %call_40283e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402845	 Bytes: 5
  %loadMem_402845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402845 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402845)
  store %struct.Memory* %call_402845, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 40284a	 Bytes: 7
  %loadMem_40284a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40284a = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40284a)
  store %struct.Memory* %call_40284a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402851	 Bytes: 4
  %loadMem_402851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402851 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402851)
  store %struct.Memory* %call_402851, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402855	 Bytes: 5
  %loadMem_402855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402855 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402855)
  store %struct.Memory* %call_402855, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40285a	 Bytes: 7
  %loadMem_40285a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40285a = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40285a)
  store %struct.Memory* %call_40285a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402861	 Bytes: 4
  %loadMem_402861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402861 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402861)
  store %struct.Memory* %call_402861, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402865	 Bytes: 5
  %loadMem_402865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402865 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402865)
  store %struct.Memory* %call_402865, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 40286a	 Bytes: 7
  %loadMem_40286a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40286a = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40286a)
  store %struct.Memory* %call_40286a, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402871	 Bytes: 7
  %loadMem_402871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402871 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402871)
  store %struct.Memory* %call_402871, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402878	 Bytes: 7
  %loadMem_402878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402878 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402878)
  store %struct.Memory* %call_402878, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40287f	 Bytes: 3
  %loadMem_40287f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40287f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40287f)
  store %struct.Memory* %call_40287f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402882	 Bytes: 7
  %loadMem_402882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402882 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402882)
  store %struct.Memory* %call_402882, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402889	 Bytes: 7
  %loadMem_402889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402889 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402889)
  store %struct.Memory* %call_402889, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402890	 Bytes: 3
  %loadMem_402890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402890 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402890)
  store %struct.Memory* %call_402890, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402893	 Bytes: 4
  %loadMem_402893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402893 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402893)
  store %struct.Memory* %call_402893, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402897	 Bytes: 5
  %loadMem_402897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402897 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402897)
  store %struct.Memory* %call_402897, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 40289c	 Bytes: 5
  %loadMem_40289c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40289c = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40289c)
  store %struct.Memory* %call_40289c, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 4028a1	 Bytes: 7
  %loadMem_4028a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a1 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a1)
  store %struct.Memory* %call_4028a1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4028a8	 Bytes: 7
  %loadMem_4028a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a8)
  store %struct.Memory* %call_4028a8, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4028af	 Bytes: 5
  %loadMem_4028af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028af = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028af)
  store %struct.Memory* %call_4028af, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4028b4	 Bytes: 7
  %loadMem_4028b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028b4 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028b4)
  store %struct.Memory* %call_4028b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4028bb	 Bytes: 4
  %loadMem_4028bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028bb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028bb)
  store %struct.Memory* %call_4028bb, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4028bf	 Bytes: 5
  %loadMem_4028bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028bf = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028bf)
  store %struct.Memory* %call_4028bf, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4028c4	 Bytes: 4
  %loadMem_4028c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c4 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c4)
  store %struct.Memory* %call_4028c4, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4028c8	 Bytes: 7
  %loadMem_4028c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c8)
  store %struct.Memory* %call_4028c8, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4028cf	 Bytes: 7
  %loadMem_4028cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028cf = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028cf)
  store %struct.Memory* %call_4028cf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4028d6	 Bytes: 3
  %loadMem_4028d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d6)
  store %struct.Memory* %call_4028d6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4028d9	 Bytes: 7
  %loadMem_4028d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d9 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d9)
  store %struct.Memory* %call_4028d9, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4028e0	 Bytes: 5
  %loadMem_4028e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e0 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e0)
  store %struct.Memory* %call_4028e0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4028e5	 Bytes: 4
  %loadMem_4028e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e5 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e5)
  store %struct.Memory* %call_4028e5, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4028e9	 Bytes: 5
  %loadMem_4028e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e9 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e9)
  store %struct.Memory* %call_4028e9, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 4028ee	 Bytes: 7
  %loadMem_4028ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ee = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ee)
  store %struct.Memory* %call_4028ee, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4028f5	 Bytes: 7
  %loadMem_4028f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028f5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028f5)
  store %struct.Memory* %call_4028f5, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4028fc	 Bytes: 5
  %loadMem_4028fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028fc = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028fc)
  store %struct.Memory* %call_4028fc, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402901	 Bytes: 7
  %loadMem_402901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402901 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402901)
  store %struct.Memory* %call_402901, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402908	 Bytes: 4
  %loadMem_402908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402908 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402908)
  store %struct.Memory* %call_402908, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40290c	 Bytes: 5
  %loadMem_40290c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40290c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40290c)
  store %struct.Memory* %call_40290c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402911	 Bytes: 4
  %loadMem_402911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402911 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402911)
  store %struct.Memory* %call_402911, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402915	 Bytes: 7
  %loadMem_402915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402915 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402915)
  store %struct.Memory* %call_402915, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40291c	 Bytes: 7
  %loadMem_40291c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40291c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40291c)
  store %struct.Memory* %call_40291c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402923	 Bytes: 3
  %loadMem_402923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402923 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402923)
  store %struct.Memory* %call_402923, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402926	 Bytes: 7
  %loadMem_402926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402926 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402926)
  store %struct.Memory* %call_402926, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40292d	 Bytes: 7
  %loadMem_40292d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40292d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40292d)
  store %struct.Memory* %call_40292d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402934	 Bytes: 3
  %loadMem_402934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402934 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402934)
  store %struct.Memory* %call_402934, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402937	 Bytes: 4
  %loadMem_402937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402937 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402937)
  store %struct.Memory* %call_402937, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40293b	 Bytes: 5
  %loadMem_40293b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40293b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40293b)
  store %struct.Memory* %call_40293b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402940	 Bytes: 4
  %loadMem_402940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402940 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402940)
  store %struct.Memory* %call_402940, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402944	 Bytes: 7
  %loadMem_402944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402944 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402944)
  store %struct.Memory* %call_402944, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40294b	 Bytes: 7
  %loadMem_40294b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40294b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40294b)
  store %struct.Memory* %call_40294b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402952	 Bytes: 7
  %loadMem_402952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402952 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402952)
  store %struct.Memory* %call_402952, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402959	 Bytes: 3
  %loadMem_402959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402959 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402959)
  store %struct.Memory* %call_402959, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40295c	 Bytes: 7
  %loadMem_40295c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40295c = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40295c)
  store %struct.Memory* %call_40295c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402963	 Bytes: 7
  %loadMem_402963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402963 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402963)
  store %struct.Memory* %call_402963, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40296a	 Bytes: 3
  %loadMem_40296a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40296a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40296a)
  store %struct.Memory* %call_40296a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40296d	 Bytes: 4
  %loadMem_40296d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40296d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40296d)
  store %struct.Memory* %call_40296d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402971	 Bytes: 5
  %loadMem_402971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402971 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402971)
  store %struct.Memory* %call_402971, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402976	 Bytes: 4
  %loadMem_402976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402976 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402976)
  store %struct.Memory* %call_402976, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40297a	 Bytes: 7
  %loadMem_40297a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40297a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40297a)
  store %struct.Memory* %call_40297a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402981	 Bytes: 7
  %loadMem_402981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402981 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402981)
  store %struct.Memory* %call_402981, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402988	 Bytes: 3
  %loadMem_402988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402988 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402988)
  store %struct.Memory* %call_402988, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40298b	 Bytes: 7
  %loadMem_40298b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40298b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40298b)
  store %struct.Memory* %call_40298b, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402992	 Bytes: 5
  %loadMem_402992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402992 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402992)
  store %struct.Memory* %call_402992, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402997	 Bytes: 4
  %loadMem_402997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402997 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402997)
  store %struct.Memory* %call_402997, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40299b	 Bytes: 7
  %loadMem_40299b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40299b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40299b)
  store %struct.Memory* %call_40299b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4029a2	 Bytes: 7
  %loadMem_4029a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029a2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029a2)
  store %struct.Memory* %call_4029a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029a9	 Bytes: 3
  %loadMem_4029a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029a9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029a9)
  store %struct.Memory* %call_4029a9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4029ac	 Bytes: 7
  %loadMem_4029ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ac = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ac)
  store %struct.Memory* %call_4029ac, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4029b3	 Bytes: 7
  %loadMem_4029b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b3)
  store %struct.Memory* %call_4029b3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029ba	 Bytes: 3
  %loadMem_4029ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ba)
  store %struct.Memory* %call_4029ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4029bd	 Bytes: 4
  %loadMem_4029bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029bd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029bd)
  store %struct.Memory* %call_4029bd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4029c1	 Bytes: 5
  %loadMem_4029c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c1 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c1)
  store %struct.Memory* %call_4029c1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc4(%rbp)	 RIP: 4029c6	 Bytes: 10
  %loadMem_4029c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c6 = call %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c6)
  store %struct.Memory* %call_4029c6, %struct.Memory** %MEMORY

  ; Code: .L_4029d0:	 RIP: 4029d0	 Bytes: 0
  br label %block_.L_4029d0
block_.L_4029d0:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 4029d0	 Bytes: 6
  %loadMem_4029d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d0 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d0)
  store %struct.Memory* %call_4029d0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 4029d6	 Bytes: 3
  %loadMem_4029d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d6 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d6)
  store %struct.Memory* %call_4029d6, %struct.Memory** %MEMORY

  ; Code: jge .L_402d02	 RIP: 4029d9	 Bytes: 6
  %loadMem_4029d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d9 = call %struct.Memory* @routine_jge_.L_402d02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d9, i8* %BRANCH_TAKEN, i64 809, i64 6, i64 6)
  store %struct.Memory* %call_4029d9, %struct.Memory** %MEMORY

  %loadBr_4029d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4029d9 = icmp eq i8 %loadBr_4029d9, 1
  br i1 %cmpBr_4029d9, label %block_.L_402d02, label %block_4029df

block_4029df:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 4029df	 Bytes: 4
  %loadMem_4029df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029df = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029df)
  store %struct.Memory* %call_4029df, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4029e3	 Bytes: 7
  %loadMem_4029e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029e3 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029e3)
  store %struct.Memory* %call_4029e3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4029ea	 Bytes: 7
  %loadMem_4029ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ea = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ea)
  store %struct.Memory* %call_4029ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029f1	 Bytes: 3
  %loadMem_4029f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f1)
  store %struct.Memory* %call_4029f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4029f4	 Bytes: 4
  %loadMem_4029f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f4)
  store %struct.Memory* %call_4029f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4029f8	 Bytes: 7
  %loadMem_4029f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f8)
  store %struct.Memory* %call_4029f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4029ff	 Bytes: 3
  %loadMem_4029ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ff)
  store %struct.Memory* %call_4029ff, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402a02	 Bytes: 7
  %loadMem_402a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a02 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a02)
  store %struct.Memory* %call_402a02, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402a09	 Bytes: 5
  %loadMem_402a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a09 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a09)
  store %struct.Memory* %call_402a09, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 402a0e	 Bytes: 4
  %loadMem_402a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a0e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a0e)
  store %struct.Memory* %call_402a0e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402a12	 Bytes: 7
  %loadMem_402a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a12 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a12)
  store %struct.Memory* %call_402a12, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402a19	 Bytes: 7
  %loadMem_402a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a19 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a19)
  store %struct.Memory* %call_402a19, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402a20	 Bytes: 3
  %loadMem_402a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a20 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a20)
  store %struct.Memory* %call_402a20, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402a23	 Bytes: 7
  %loadMem_402a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a23 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a23)
  store %struct.Memory* %call_402a23, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402a2a	 Bytes: 5
  %loadMem_402a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a2a = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a2a)
  store %struct.Memory* %call_402a2a, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 402a2f	 Bytes: 4
  %loadMem_402a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a2f = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a2f)
  store %struct.Memory* %call_402a2f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402a33	 Bytes: 7
  %loadMem_402a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a33 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a33)
  store %struct.Memory* %call_402a33, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402a3a	 Bytes: 7
  %loadMem_402a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a3a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a3a)
  store %struct.Memory* %call_402a3a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402a41	 Bytes: 3
  %loadMem_402a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a41 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a41)
  store %struct.Memory* %call_402a41, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402a44	 Bytes: 4
  %loadMem_402a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a44 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a44)
  store %struct.Memory* %call_402a44, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402a48	 Bytes: 7
  %loadMem_402a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a48 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a48)
  store %struct.Memory* %call_402a48, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402a4f	 Bytes: 3
  %loadMem_402a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a4f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a4f)
  store %struct.Memory* %call_402a4f, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %edx	 RIP: 402a52	 Bytes: 6
  %loadMem_402a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a52 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a52)
  store %struct.Memory* %call_402a52, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 402a58	 Bytes: 3
  %loadMem_402a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a58 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a58)
  store %struct.Memory* %call_402a58, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402a5b	 Bytes: 3
  %loadMem_402a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a5b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a5b)
  store %struct.Memory* %call_402a5b, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 402a5e	 Bytes: 5
  %loadMem_402a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a5e = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a5e)
  store %struct.Memory* %call_402a5e, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 402a63	 Bytes: 4
  %loadMem_402a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a63 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a63)
  store %struct.Memory* %call_402a63, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402a67	 Bytes: 7
  %loadMem_402a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a67 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a67)
  store %struct.Memory* %call_402a67, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402a6e	 Bytes: 7
  %loadMem_402a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a6e = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a6e)
  store %struct.Memory* %call_402a6e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402a75	 Bytes: 3
  %loadMem_402a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a75 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a75)
  store %struct.Memory* %call_402a75, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402a78	 Bytes: 4
  %loadMem_402a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a78 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a78)
  store %struct.Memory* %call_402a78, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402a7c	 Bytes: 7
  %loadMem_402a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a7c = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a7c)
  store %struct.Memory* %call_402a7c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402a83	 Bytes: 3
  %loadMem_402a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a83 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a83)
  store %struct.Memory* %call_402a83, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402a86	 Bytes: 7
  %loadMem_402a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a86 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a86)
  store %struct.Memory* %call_402a86, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402a8d	 Bytes: 5
  %loadMem_402a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a8d = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a8d)
  store %struct.Memory* %call_402a8d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402a92	 Bytes: 4
  %loadMem_402a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a92 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a92)
  store %struct.Memory* %call_402a92, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402a96	 Bytes: 7
  %loadMem_402a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a96 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a96)
  store %struct.Memory* %call_402a96, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402a9d	 Bytes: 7
  %loadMem_402a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a9d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a9d)
  store %struct.Memory* %call_402a9d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402aa4	 Bytes: 3
  %loadMem_402aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aa4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aa4)
  store %struct.Memory* %call_402aa4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402aa7	 Bytes: 7
  %loadMem_402aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aa7 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aa7)
  store %struct.Memory* %call_402aa7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402aae	 Bytes: 5
  %loadMem_402aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aae = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aae)
  store %struct.Memory* %call_402aae, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 402ab3	 Bytes: 7
  %loadMem_402ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ab3 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ab3)
  store %struct.Memory* %call_402ab3, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402aba	 Bytes: 4
  %loadMem_402aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aba = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aba)
  store %struct.Memory* %call_402aba, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402abe	 Bytes: 5
  %loadMem_402abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402abe = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402abe)
  store %struct.Memory* %call_402abe, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402ac3	 Bytes: 7
  %loadMem_402ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ac3 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ac3)
  store %struct.Memory* %call_402ac3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402aca	 Bytes: 7
  %loadMem_402aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aca = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aca)
  store %struct.Memory* %call_402aca, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402ad1	 Bytes: 5
  %loadMem_402ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ad1 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ad1)
  store %struct.Memory* %call_402ad1, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402ad6	 Bytes: 4
  %loadMem_402ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ad6 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ad6)
  store %struct.Memory* %call_402ad6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402ada	 Bytes: 7
  %loadMem_402ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ada = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ada)
  store %struct.Memory* %call_402ada, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402ae1	 Bytes: 7
  %loadMem_402ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ae1 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ae1)
  store %struct.Memory* %call_402ae1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402ae8	 Bytes: 3
  %loadMem_402ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ae8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ae8)
  store %struct.Memory* %call_402ae8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402aeb	 Bytes: 7
  %loadMem_402aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aeb = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aeb)
  store %struct.Memory* %call_402aeb, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402af2	 Bytes: 7
  %loadMem_402af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402af2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402af2)
  store %struct.Memory* %call_402af2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402af9	 Bytes: 3
  %loadMem_402af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402af9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402af9)
  store %struct.Memory* %call_402af9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402afc	 Bytes: 7
  %loadMem_402afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402afc = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402afc)
  store %struct.Memory* %call_402afc, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402b03	 Bytes: 5
  %loadMem_402b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b03 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b03)
  store %struct.Memory* %call_402b03, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402b08	 Bytes: 5
  %loadMem_402b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b08 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b08)
  store %struct.Memory* %call_402b08, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402b0d	 Bytes: 7
  %loadMem_402b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b0d = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b0d)
  store %struct.Memory* %call_402b0d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402b14	 Bytes: 7
  %loadMem_402b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b14 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b14)
  store %struct.Memory* %call_402b14, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402b1b	 Bytes: 5
  %loadMem_402b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b1b = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b1b)
  store %struct.Memory* %call_402b1b, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402b20	 Bytes: 4
  %loadMem_402b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b20 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b20)
  store %struct.Memory* %call_402b20, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402b24	 Bytes: 7
  %loadMem_402b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b24 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b24)
  store %struct.Memory* %call_402b24, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402b2b	 Bytes: 7
  %loadMem_402b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b2b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b2b)
  store %struct.Memory* %call_402b2b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402b32	 Bytes: 3
  %loadMem_402b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b32 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b32)
  store %struct.Memory* %call_402b32, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402b35	 Bytes: 7
  %loadMem_402b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b35 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b35)
  store %struct.Memory* %call_402b35, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402b3c	 Bytes: 5
  %loadMem_402b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b3c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b3c)
  store %struct.Memory* %call_402b3c, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402b41	 Bytes: 4
  %loadMem_402b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b41 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b41)
  store %struct.Memory* %call_402b41, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402b45	 Bytes: 4
  %loadMem_402b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b45 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b45)
  store %struct.Memory* %call_402b45, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402b49	 Bytes: 7
  %loadMem_402b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b49 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b49)
  store %struct.Memory* %call_402b49, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402b50	 Bytes: 7
  %loadMem_402b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b50 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b50)
  store %struct.Memory* %call_402b50, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402b57	 Bytes: 3
  %loadMem_402b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b57 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b57)
  store %struct.Memory* %call_402b57, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402b5a	 Bytes: 7
  %loadMem_402b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b5a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b5a)
  store %struct.Memory* %call_402b5a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402b61	 Bytes: 5
  %loadMem_402b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b61 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b61)
  store %struct.Memory* %call_402b61, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 402b66	 Bytes: 7
  %loadMem_402b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b66 = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b66)
  store %struct.Memory* %call_402b66, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402b6d	 Bytes: 7
  %loadMem_402b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b6d = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b6d)
  store %struct.Memory* %call_402b6d, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402b74	 Bytes: 5
  %loadMem_402b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b74 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b74)
  store %struct.Memory* %call_402b74, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402b79	 Bytes: 7
  %loadMem_402b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b79 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b79)
  store %struct.Memory* %call_402b79, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402b80	 Bytes: 7
  %loadMem_402b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b80 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b80)
  store %struct.Memory* %call_402b80, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402b87	 Bytes: 5
  %loadMem_402b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b87 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b87)
  store %struct.Memory* %call_402b87, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402b8c	 Bytes: 7
  %loadMem_402b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b8c = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b8c)
  store %struct.Memory* %call_402b8c, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402b93	 Bytes: 7
  %loadMem_402b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b93 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b93)
  store %struct.Memory* %call_402b93, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402b9a	 Bytes: 7
  %loadMem_402b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b9a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b9a)
  store %struct.Memory* %call_402b9a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402ba1	 Bytes: 3
  %loadMem_402ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ba1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ba1)
  store %struct.Memory* %call_402ba1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402ba4	 Bytes: 4
  %loadMem_402ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ba4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ba4)
  store %struct.Memory* %call_402ba4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402ba8	 Bytes: 7
  %loadMem_402ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ba8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ba8)
  store %struct.Memory* %call_402ba8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402baf	 Bytes: 3
  %loadMem_402baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402baf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402baf)
  store %struct.Memory* %call_402baf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402bb2	 Bytes: 7
  %loadMem_402bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bb2 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bb2)
  store %struct.Memory* %call_402bb2, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402bb9	 Bytes: 5
  %loadMem_402bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bb9 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bb9)
  store %struct.Memory* %call_402bb9, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402bbe	 Bytes: 5
  %loadMem_402bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bbe = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bbe)
  store %struct.Memory* %call_402bbe, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 402bc3	 Bytes: 7
  %loadMem_402bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bc3 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bc3)
  store %struct.Memory* %call_402bc3, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402bca	 Bytes: 7
  %loadMem_402bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bca = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bca)
  store %struct.Memory* %call_402bca, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402bd1	 Bytes: 5
  %loadMem_402bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bd1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bd1)
  store %struct.Memory* %call_402bd1, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402bd6	 Bytes: 7
  %loadMem_402bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bd6 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bd6)
  store %struct.Memory* %call_402bd6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402bdd	 Bytes: 7
  %loadMem_402bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bdd = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bdd)
  store %struct.Memory* %call_402bdd, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402be4	 Bytes: 5
  %loadMem_402be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402be4 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402be4)
  store %struct.Memory* %call_402be4, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402be9	 Bytes: 4
  %loadMem_402be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402be9 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402be9)
  store %struct.Memory* %call_402be9, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402bed	 Bytes: 7
  %loadMem_402bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bed = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bed)
  store %struct.Memory* %call_402bed, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402bf4	 Bytes: 7
  %loadMem_402bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bf4 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bf4)
  store %struct.Memory* %call_402bf4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402bfb	 Bytes: 3
  %loadMem_402bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bfb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bfb)
  store %struct.Memory* %call_402bfb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402bfe	 Bytes: 7
  %loadMem_402bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bfe = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bfe)
  store %struct.Memory* %call_402bfe, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402c05	 Bytes: 5
  %loadMem_402c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c05 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c05)
  store %struct.Memory* %call_402c05, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 402c0a	 Bytes: 4
  %loadMem_402c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c0a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c0a)
  store %struct.Memory* %call_402c0a, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402c0e	 Bytes: 5
  %loadMem_402c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c0e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c0e)
  store %struct.Memory* %call_402c0e, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 402c13	 Bytes: 7
  %loadMem_402c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c13 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c13)
  store %struct.Memory* %call_402c13, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402c1a	 Bytes: 7
  %loadMem_402c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c1a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c1a)
  store %struct.Memory* %call_402c1a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402c21	 Bytes: 5
  %loadMem_402c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c21 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c21)
  store %struct.Memory* %call_402c21, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402c26	 Bytes: 7
  %loadMem_402c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c26 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c26)
  store %struct.Memory* %call_402c26, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402c2d	 Bytes: 7
  %loadMem_402c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c2d = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c2d)
  store %struct.Memory* %call_402c2d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402c34	 Bytes: 5
  %loadMem_402c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c34 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c34)
  store %struct.Memory* %call_402c34, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402c39	 Bytes: 4
  %loadMem_402c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c39 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c39)
  store %struct.Memory* %call_402c39, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402c3d	 Bytes: 7
  %loadMem_402c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c3d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c3d)
  store %struct.Memory* %call_402c3d, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402c44	 Bytes: 7
  %loadMem_402c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c44 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c44)
  store %struct.Memory* %call_402c44, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402c4b	 Bytes: 3
  %loadMem_402c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c4b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c4b)
  store %struct.Memory* %call_402c4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402c4e	 Bytes: 4
  %loadMem_402c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c4e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c4e)
  store %struct.Memory* %call_402c4e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402c52	 Bytes: 7
  %loadMem_402c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c52 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c52)
  store %struct.Memory* %call_402c52, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402c59	 Bytes: 3
  %loadMem_402c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c59 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c59)
  store %struct.Memory* %call_402c59, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402c5c	 Bytes: 7
  %loadMem_402c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c5c = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c5c)
  store %struct.Memory* %call_402c5c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402c63	 Bytes: 5
  %loadMem_402c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c63 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c63)
  store %struct.Memory* %call_402c63, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402c68	 Bytes: 4
  %loadMem_402c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c68 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c68)
  store %struct.Memory* %call_402c68, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402c6c	 Bytes: 7
  %loadMem_402c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c6c = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c6c)
  store %struct.Memory* %call_402c6c, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402c73	 Bytes: 7
  %loadMem_402c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c73 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c73)
  store %struct.Memory* %call_402c73, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402c7a	 Bytes: 7
  %loadMem_402c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c7a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c7a)
  store %struct.Memory* %call_402c7a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402c81	 Bytes: 3
  %loadMem_402c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c81 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c81)
  store %struct.Memory* %call_402c81, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402c84	 Bytes: 4
  %loadMem_402c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c84 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c84)
  store %struct.Memory* %call_402c84, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402c88	 Bytes: 7
  %loadMem_402c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c88 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c88)
  store %struct.Memory* %call_402c88, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402c8f	 Bytes: 3
  %loadMem_402c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c8f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c8f)
  store %struct.Memory* %call_402c8f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402c92	 Bytes: 7
  %loadMem_402c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c92 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c92)
  store %struct.Memory* %call_402c92, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402c99	 Bytes: 5
  %loadMem_402c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c99 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c99)
  store %struct.Memory* %call_402c99, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402c9e	 Bytes: 4
  %loadMem_402c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c9e = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c9e)
  store %struct.Memory* %call_402c9e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402ca2	 Bytes: 7
  %loadMem_402ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ca2 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ca2)
  store %struct.Memory* %call_402ca2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402ca9	 Bytes: 7
  %loadMem_402ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ca9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ca9)
  store %struct.Memory* %call_402ca9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402cb0	 Bytes: 3
  %loadMem_402cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cb0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cb0)
  store %struct.Memory* %call_402cb0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402cb3	 Bytes: 7
  %loadMem_402cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cb3 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cb3)
  store %struct.Memory* %call_402cb3, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402cba	 Bytes: 5
  %loadMem_402cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cba = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cba)
  store %struct.Memory* %call_402cba, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402cbf	 Bytes: 4
  %loadMem_402cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cbf = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cbf)
  store %struct.Memory* %call_402cbf, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402cc3	 Bytes: 7
  %loadMem_402cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cc3 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cc3)
  store %struct.Memory* %call_402cc3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402cca	 Bytes: 7
  %loadMem_402cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cca = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cca)
  store %struct.Memory* %call_402cca, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402cd1	 Bytes: 3
  %loadMem_402cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cd1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cd1)
  store %struct.Memory* %call_402cd1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402cd4	 Bytes: 4
  %loadMem_402cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cd4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cd4)
  store %struct.Memory* %call_402cd4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402cd8	 Bytes: 7
  %loadMem_402cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cd8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cd8)
  store %struct.Memory* %call_402cd8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402cdf	 Bytes: 3
  %loadMem_402cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cdf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cdf)
  store %struct.Memory* %call_402cdf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 402ce2	 Bytes: 7
  %loadMem_402ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ce2 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ce2)
  store %struct.Memory* %call_402ce2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402ce9	 Bytes: 5
  %loadMem_402ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ce9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ce9)
  store %struct.Memory* %call_402ce9, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 402cee	 Bytes: 6
  %loadMem_402cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cee = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cee)
  store %struct.Memory* %call_402cee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402cf4	 Bytes: 3
  %loadMem_402cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cf4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cf4)
  store %struct.Memory* %call_402cf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 402cf7	 Bytes: 6
  %loadMem_402cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cf7 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cf7)
  store %struct.Memory* %call_402cf7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4029d0	 RIP: 402cfd	 Bytes: 5
  %loadMem_402cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cfd = call %struct.Memory* @routine_jmpq_.L_4029d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cfd, i64 -813, i64 5)
  store %struct.Memory* %call_402cfd, %struct.Memory** %MEMORY

  br label %block_.L_4029d0

  ; Code: .L_402d02:	 RIP: 402d02	 Bytes: 0
block_.L_402d02:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 402d02	 Bytes: 4
  %loadMem_402d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d02 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d02)
  store %struct.Memory* %call_402d02, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402d06	 Bytes: 7
  %loadMem_402d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d06 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d06)
  store %struct.Memory* %call_402d06, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402d0d	 Bytes: 7
  %loadMem_402d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d0d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d0d)
  store %struct.Memory* %call_402d0d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402d14	 Bytes: 3
  %loadMem_402d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d14 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d14)
  store %struct.Memory* %call_402d14, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402d17	 Bytes: 4
  %loadMem_402d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d17 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d17)
  store %struct.Memory* %call_402d17, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402d1b	 Bytes: 7
  %loadMem_402d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d1b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d1b)
  store %struct.Memory* %call_402d1b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402d22	 Bytes: 3
  %loadMem_402d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d22 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d22)
  store %struct.Memory* %call_402d22, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402d25	 Bytes: 4
  %loadMem_402d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d25 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d25)
  store %struct.Memory* %call_402d25, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402d29	 Bytes: 5
  %loadMem_402d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d29 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d29)
  store %struct.Memory* %call_402d29, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 402d2e	 Bytes: 4
  %loadMem_402d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d2e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d2e)
  store %struct.Memory* %call_402d2e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402d32	 Bytes: 7
  %loadMem_402d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d32 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d32)
  store %struct.Memory* %call_402d32, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402d39	 Bytes: 7
  %loadMem_402d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d39 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d39)
  store %struct.Memory* %call_402d39, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402d40	 Bytes: 3
  %loadMem_402d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d40 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d40)
  store %struct.Memory* %call_402d40, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402d43	 Bytes: 4
  %loadMem_402d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d43 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d43)
  store %struct.Memory* %call_402d43, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402d47	 Bytes: 5
  %loadMem_402d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d47 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d47)
  store %struct.Memory* %call_402d47, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 402d4c	 Bytes: 4
  %loadMem_402d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d4c = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d4c)
  store %struct.Memory* %call_402d4c, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402d50	 Bytes: 7
  %loadMem_402d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d50 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d50)
  store %struct.Memory* %call_402d50, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402d57	 Bytes: 7
  %loadMem_402d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d57 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d57)
  store %struct.Memory* %call_402d57, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402d5e	 Bytes: 3
  %loadMem_402d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d5e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d5e)
  store %struct.Memory* %call_402d5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402d61	 Bytes: 4
  %loadMem_402d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d61 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d61)
  store %struct.Memory* %call_402d61, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 402d65	 Bytes: 5
  %loadMem_402d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d65 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d65)
  store %struct.Memory* %call_402d65, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 402d6a	 Bytes: 4
  %loadMem_402d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d6a = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d6a)
  store %struct.Memory* %call_402d6a, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402d6e	 Bytes: 7
  %loadMem_402d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d6e = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d6e)
  store %struct.Memory* %call_402d6e, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402d75	 Bytes: 7
  %loadMem_402d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d75 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d75)
  store %struct.Memory* %call_402d75, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402d7c	 Bytes: 3
  %loadMem_402d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d7c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d7c)
  store %struct.Memory* %call_402d7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402d7f	 Bytes: 4
  %loadMem_402d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d7f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d7f)
  store %struct.Memory* %call_402d7f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402d83	 Bytes: 7
  %loadMem_402d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d83 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d83)
  store %struct.Memory* %call_402d83, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402d8a	 Bytes: 3
  %loadMem_402d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d8a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d8a)
  store %struct.Memory* %call_402d8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402d8d	 Bytes: 4
  %loadMem_402d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d8d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d8d)
  store %struct.Memory* %call_402d8d, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 402d91	 Bytes: 5
  %loadMem_402d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d91 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d91)
  store %struct.Memory* %call_402d91, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402d96	 Bytes: 4
  %loadMem_402d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d96 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d96)
  store %struct.Memory* %call_402d96, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402d9a	 Bytes: 7
  %loadMem_402d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d9a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d9a)
  store %struct.Memory* %call_402d9a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402da1	 Bytes: 7
  %loadMem_402da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402da1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402da1)
  store %struct.Memory* %call_402da1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402da8	 Bytes: 3
  %loadMem_402da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402da8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402da8)
  store %struct.Memory* %call_402da8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402dab	 Bytes: 7
  %loadMem_402dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dab = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dab)
  store %struct.Memory* %call_402dab, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402db2	 Bytes: 5
  %loadMem_402db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402db2 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402db2)
  store %struct.Memory* %call_402db2, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 402db7	 Bytes: 7
  %loadMem_402db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402db7 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402db7)
  store %struct.Memory* %call_402db7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402dbe	 Bytes: 4
  %loadMem_402dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dbe = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dbe)
  store %struct.Memory* %call_402dbe, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402dc2	 Bytes: 5
  %loadMem_402dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dc2 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dc2)
  store %struct.Memory* %call_402dc2, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402dc7	 Bytes: 7
  %loadMem_402dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dc7 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dc7)
  store %struct.Memory* %call_402dc7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402dce	 Bytes: 4
  %loadMem_402dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dce = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dce)
  store %struct.Memory* %call_402dce, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402dd2	 Bytes: 5
  %loadMem_402dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dd2 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dd2)
  store %struct.Memory* %call_402dd2, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402dd7	 Bytes: 4
  %loadMem_402dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dd7 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dd7)
  store %struct.Memory* %call_402dd7, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402ddb	 Bytes: 7
  %loadMem_402ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ddb = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ddb)
  store %struct.Memory* %call_402ddb, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402de2	 Bytes: 7
  %loadMem_402de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402de2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402de2)
  store %struct.Memory* %call_402de2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402de9	 Bytes: 3
  %loadMem_402de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402de9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402de9)
  store %struct.Memory* %call_402de9, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402dec	 Bytes: 4
  %loadMem_402dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dec = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dec)
  store %struct.Memory* %call_402dec, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402df0	 Bytes: 7
  %loadMem_402df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402df0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402df0)
  store %struct.Memory* %call_402df0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402df7	 Bytes: 3
  %loadMem_402df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402df7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402df7)
  store %struct.Memory* %call_402df7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402dfa	 Bytes: 4
  %loadMem_402dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dfa = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dfa)
  store %struct.Memory* %call_402dfa, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402dfe	 Bytes: 5
  %loadMem_402dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dfe = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dfe)
  store %struct.Memory* %call_402dfe, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402e03	 Bytes: 5
  %loadMem_402e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e03 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e03)
  store %struct.Memory* %call_402e03, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402e08	 Bytes: 7
  %loadMem_402e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e08 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e08)
  store %struct.Memory* %call_402e08, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402e0f	 Bytes: 4
  %loadMem_402e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e0f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e0f)
  store %struct.Memory* %call_402e0f, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402e13	 Bytes: 5
  %loadMem_402e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e13 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e13)
  store %struct.Memory* %call_402e13, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402e18	 Bytes: 4
  %loadMem_402e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e18 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e18)
  store %struct.Memory* %call_402e18, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402e1c	 Bytes: 7
  %loadMem_402e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e1c = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e1c)
  store %struct.Memory* %call_402e1c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402e23	 Bytes: 7
  %loadMem_402e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e23 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e23)
  store %struct.Memory* %call_402e23, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402e2a	 Bytes: 3
  %loadMem_402e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e2a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e2a)
  store %struct.Memory* %call_402e2a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402e2d	 Bytes: 7
  %loadMem_402e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e2d = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e2d)
  store %struct.Memory* %call_402e2d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402e34	 Bytes: 5
  %loadMem_402e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e34 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e34)
  store %struct.Memory* %call_402e34, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402e39	 Bytes: 4
  %loadMem_402e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e39 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e39)
  store %struct.Memory* %call_402e39, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402e3d	 Bytes: 4
  %loadMem_402e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e3d = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e3d)
  store %struct.Memory* %call_402e3d, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402e41	 Bytes: 7
  %loadMem_402e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e41 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e41)
  store %struct.Memory* %call_402e41, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402e48	 Bytes: 7
  %loadMem_402e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e48 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e48)
  store %struct.Memory* %call_402e48, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402e4f	 Bytes: 3
  %loadMem_402e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e4f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e4f)
  store %struct.Memory* %call_402e4f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402e52	 Bytes: 7
  %loadMem_402e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e52 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e52)
  store %struct.Memory* %call_402e52, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402e59	 Bytes: 5
  %loadMem_402e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e59 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e59)
  store %struct.Memory* %call_402e59, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 402e5e	 Bytes: 7
  %loadMem_402e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e5e = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e5e)
  store %struct.Memory* %call_402e5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402e65	 Bytes: 4
  %loadMem_402e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e65 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e65)
  store %struct.Memory* %call_402e65, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402e69	 Bytes: 5
  %loadMem_402e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e69 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e69)
  store %struct.Memory* %call_402e69, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402e6e	 Bytes: 7
  %loadMem_402e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e6e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e6e)
  store %struct.Memory* %call_402e6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402e75	 Bytes: 4
  %loadMem_402e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e75 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e75)
  store %struct.Memory* %call_402e75, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402e79	 Bytes: 5
  %loadMem_402e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e79 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e79)
  store %struct.Memory* %call_402e79, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402e7e	 Bytes: 7
  %loadMem_402e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e7e = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e7e)
  store %struct.Memory* %call_402e7e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402e85	 Bytes: 7
  %loadMem_402e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e85 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e85)
  store %struct.Memory* %call_402e85, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402e8c	 Bytes: 7
  %loadMem_402e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e8c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e8c)
  store %struct.Memory* %call_402e8c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402e93	 Bytes: 3
  %loadMem_402e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e93 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e93)
  store %struct.Memory* %call_402e93, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402e96	 Bytes: 4
  %loadMem_402e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e96 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e96)
  store %struct.Memory* %call_402e96, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402e9a	 Bytes: 7
  %loadMem_402e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e9a = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e9a)
  store %struct.Memory* %call_402e9a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402ea1	 Bytes: 3
  %loadMem_402ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ea1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ea1)
  store %struct.Memory* %call_402ea1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402ea4	 Bytes: 4
  %loadMem_402ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ea4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ea4)
  store %struct.Memory* %call_402ea4, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 402ea8	 Bytes: 5
  %loadMem_402ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ea8 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ea8)
  store %struct.Memory* %call_402ea8, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402ead	 Bytes: 5
  %loadMem_402ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ead = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ead)
  store %struct.Memory* %call_402ead, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 402eb2	 Bytes: 7
  %loadMem_402eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eb2 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eb2)
  store %struct.Memory* %call_402eb2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402eb9	 Bytes: 7
  %loadMem_402eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eb9 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eb9)
  store %struct.Memory* %call_402eb9, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402ec0	 Bytes: 5
  %loadMem_402ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ec0 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ec0)
  store %struct.Memory* %call_402ec0, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402ec5	 Bytes: 7
  %loadMem_402ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ec5 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ec5)
  store %struct.Memory* %call_402ec5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402ecc	 Bytes: 4
  %loadMem_402ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ecc = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ecc)
  store %struct.Memory* %call_402ecc, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402ed0	 Bytes: 5
  %loadMem_402ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ed0 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ed0)
  store %struct.Memory* %call_402ed0, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402ed5	 Bytes: 4
  %loadMem_402ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ed5 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ed5)
  store %struct.Memory* %call_402ed5, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402ed9	 Bytes: 7
  %loadMem_402ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ed9 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ed9)
  store %struct.Memory* %call_402ed9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402ee0	 Bytes: 7
  %loadMem_402ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ee0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ee0)
  store %struct.Memory* %call_402ee0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402ee7	 Bytes: 3
  %loadMem_402ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ee7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ee7)
  store %struct.Memory* %call_402ee7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402eea	 Bytes: 7
  %loadMem_402eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eea = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eea)
  store %struct.Memory* %call_402eea, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402ef1	 Bytes: 5
  %loadMem_402ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ef1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ef1)
  store %struct.Memory* %call_402ef1, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 402ef6	 Bytes: 4
  %loadMem_402ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ef6 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ef6)
  store %struct.Memory* %call_402ef6, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402efa	 Bytes: 5
  %loadMem_402efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402efa = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402efa)
  store %struct.Memory* %call_402efa, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 402eff	 Bytes: 7
  %loadMem_402eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eff = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eff)
  store %struct.Memory* %call_402eff, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402f06	 Bytes: 7
  %loadMem_402f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f06 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f06)
  store %struct.Memory* %call_402f06, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402f0d	 Bytes: 5
  %loadMem_402f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f0d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f0d)
  store %struct.Memory* %call_402f0d, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402f12	 Bytes: 7
  %loadMem_402f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f12 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f12)
  store %struct.Memory* %call_402f12, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402f19	 Bytes: 4
  %loadMem_402f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f19 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f19)
  store %struct.Memory* %call_402f19, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402f1d	 Bytes: 5
  %loadMem_402f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f1d = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f1d)
  store %struct.Memory* %call_402f1d, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402f22	 Bytes: 4
  %loadMem_402f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f22 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f22)
  store %struct.Memory* %call_402f22, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402f26	 Bytes: 7
  %loadMem_402f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f26 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f26)
  store %struct.Memory* %call_402f26, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402f2d	 Bytes: 7
  %loadMem_402f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f2d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f2d)
  store %struct.Memory* %call_402f2d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402f34	 Bytes: 3
  %loadMem_402f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f34 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f34)
  store %struct.Memory* %call_402f34, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402f37	 Bytes: 4
  %loadMem_402f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f37 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f37)
  store %struct.Memory* %call_402f37, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402f3b	 Bytes: 7
  %loadMem_402f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f3b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f3b)
  store %struct.Memory* %call_402f3b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402f42	 Bytes: 3
  %loadMem_402f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f42 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f42)
  store %struct.Memory* %call_402f42, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402f45	 Bytes: 4
  %loadMem_402f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f45 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f45)
  store %struct.Memory* %call_402f45, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402f49	 Bytes: 5
  %loadMem_402f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f49 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f49)
  store %struct.Memory* %call_402f49, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402f4e	 Bytes: 4
  %loadMem_402f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f4e = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f4e)
  store %struct.Memory* %call_402f4e, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 402f52	 Bytes: 7
  %loadMem_402f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f52 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f52)
  store %struct.Memory* %call_402f52, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402f59	 Bytes: 7
  %loadMem_402f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f59 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f59)
  store %struct.Memory* %call_402f59, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402f60	 Bytes: 7
  %loadMem_402f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f60 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f60)
  store %struct.Memory* %call_402f60, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402f67	 Bytes: 3
  %loadMem_402f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f67 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f67)
  store %struct.Memory* %call_402f67, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402f6a	 Bytes: 4
  %loadMem_402f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f6a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f6a)
  store %struct.Memory* %call_402f6a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402f6e	 Bytes: 7
  %loadMem_402f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f6e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f6e)
  store %struct.Memory* %call_402f6e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402f75	 Bytes: 3
  %loadMem_402f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f75 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f75)
  store %struct.Memory* %call_402f75, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402f78	 Bytes: 4
  %loadMem_402f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f78 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f78)
  store %struct.Memory* %call_402f78, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402f7c	 Bytes: 5
  %loadMem_402f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f7c = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f7c)
  store %struct.Memory* %call_402f7c, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402f81	 Bytes: 4
  %loadMem_402f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f81 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f81)
  store %struct.Memory* %call_402f81, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402f85	 Bytes: 7
  %loadMem_402f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f85 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f85)
  store %struct.Memory* %call_402f85, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402f8c	 Bytes: 7
  %loadMem_402f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f8c = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f8c)
  store %struct.Memory* %call_402f8c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402f93	 Bytes: 3
  %loadMem_402f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f93 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f93)
  store %struct.Memory* %call_402f93, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 402f96	 Bytes: 7
  %loadMem_402f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f96 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f96)
  store %struct.Memory* %call_402f96, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402f9d	 Bytes: 5
  %loadMem_402f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f9d = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f9d)
  store %struct.Memory* %call_402f9d, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402fa2	 Bytes: 4
  %loadMem_402fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fa2 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fa2)
  store %struct.Memory* %call_402fa2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402fa6	 Bytes: 7
  %loadMem_402fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fa6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fa6)
  store %struct.Memory* %call_402fa6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402fad	 Bytes: 7
  %loadMem_402fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fad = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fad)
  store %struct.Memory* %call_402fad, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402fb4	 Bytes: 3
  %loadMem_402fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fb4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fb4)
  store %struct.Memory* %call_402fb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402fb7	 Bytes: 4
  %loadMem_402fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fb7 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fb7)
  store %struct.Memory* %call_402fb7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402fbb	 Bytes: 7
  %loadMem_402fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fbb = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fbb)
  store %struct.Memory* %call_402fbb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402fc2	 Bytes: 3
  %loadMem_402fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fc2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fc2)
  store %struct.Memory* %call_402fc2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402fc5	 Bytes: 4
  %loadMem_402fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fc5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fc5)
  store %struct.Memory* %call_402fc5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402fc9	 Bytes: 5
  %loadMem_402fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fc9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fc9)
  store %struct.Memory* %call_402fc9, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 402fce	 Bytes: 6
  %loadMem_402fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fce = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fce)
  store %struct.Memory* %call_402fce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402fd4	 Bytes: 3
  %loadMem_402fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fd4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fd4)
  store %struct.Memory* %call_402fd4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 402fd7	 Bytes: 6
  %loadMem_402fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fd7 = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fd7)
  store %struct.Memory* %call_402fd7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40234a	 RIP: 402fdd	 Bytes: 5
  %loadMem_402fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fdd = call %struct.Memory* @routine_jmpq_.L_40234a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fdd, i64 -3219, i64 5)
  store %struct.Memory* %call_402fdd, %struct.Memory** %MEMORY

  br label %block_.L_40234a

  ; Code: .L_402fe2:	 RIP: 402fe2	 Bytes: 0
block_.L_402fe2:

  ; Code: jmpq .L_402fe7	 RIP: 402fe2	 Bytes: 5
  %loadMem_402fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fe2 = call %struct.Memory* @routine_jmpq_.L_402fe7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fe2, i64 5, i64 5)
  store %struct.Memory* %call_402fe2, %struct.Memory** %MEMORY

  br label %block_.L_402fe7

  ; Code: .L_402fe7:	 RIP: 402fe7	 Bytes: 0
block_.L_402fe7:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 402fe7	 Bytes: 6
  %loadMem_402fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fe7 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fe7)
  store %struct.Memory* %call_402fe7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402fed	 Bytes: 3
  %loadMem_402fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fed = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fed)
  store %struct.Memory* %call_402fed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 402ff0	 Bytes: 6
  %loadMem_402ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ff0 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ff0)
  store %struct.Memory* %call_402ff0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402331	 RIP: 402ff6	 Bytes: 5
  %loadMem_402ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ff6 = call %struct.Memory* @routine_jmpq_.L_402331(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ff6, i64 -3269, i64 5)
  store %struct.Memory* %call_402ff6, %struct.Memory** %MEMORY

  br label %block_.L_402331

  ; Code: .L_402ffb:	 RIP: 402ffb	 Bytes: 0
block_.L_402ffb:

  ; Code: addq $0x38, %rsp	 RIP: 402ffb	 Bytes: 4
  %loadMem_402ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ffb = call %struct.Memory* @routine_addq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ffb)
  store %struct.Memory* %call_402ffb, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 402fff	 Bytes: 1
  %loadMem_402fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fff = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fff)
  store %struct.Memory* %call_402fff, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 403000	 Bytes: 2
  %loadMem_403000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403000 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403000)
  store %struct.Memory* %call_403000, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 403002	 Bytes: 2
  %loadMem_403002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403002 = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403002)
  store %struct.Memory* %call_403002, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 403004	 Bytes: 2
  %loadMem_403004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403004 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403004)
  store %struct.Memory* %call_403004, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 403006	 Bytes: 2
  %loadMem_403006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403006 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403006)
  store %struct.Memory* %call_403006, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 403008	 Bytes: 1
  %loadMem_403008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403008 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403008)
  store %struct.Memory* %call_403008, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 403009	 Bytes: 1
  %loadMem_403009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403009 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403009)
  store %struct.Memory* %call_403009, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_403009
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


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
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

define %struct.Memory* @routine_subq__0x38___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 56)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R8
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


define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r13__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %R13
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r12__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_jge_.L_402ffb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_402fe2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_jge_.L_4026c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = sext i64 %4 to i128
  %9 = and i128 %8, -18446744073709551616
  %10 = zext i64 %3 to i128
  %11 = or i128 %7, %10
  %12 = zext i64 %4 to i128
  %13 = or i128 %9, %12
  %14 = mul  i128 %13, %11
  %15 = trunc i128 %14 to i64
  store i64 %15, i64* %2, align 8
  %16 = sext i64 %15 to i128
  %17 = icmp ne i128 %16, %14
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i128 %14 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #22
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i64 %15, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %18, i8* %32, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 33800)
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


define %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 520)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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










define %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}




















define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_402363(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




























































































































































































































































define %struct.Memory* @routine_jge_.L_402d02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


















































































































































































































































































define %struct.Memory* @routine_jmpq_.L_4029d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























































































































































































































































































define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_40234a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402fe7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_402331(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x38___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 56)
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


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
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

