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


define %struct.Memory* @kernel_fdtd_apml(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_fdtd_apml:	 RIP: 4014b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4014b0	 Bytes: 1
  %loadMem_4014b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b0)
  store %struct.Memory* %call_4014b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4014b1	 Bytes: 3
  %loadMem_4014b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b1)
  store %struct.Memory* %call_4014b1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4014b4	 Bytes: 2
  %loadMem_4014b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b4)
  store %struct.Memory* %call_4014b4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4014b6	 Bytes: 2
  %loadMem_4014b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b6)
  store %struct.Memory* %call_4014b6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 4014b8	 Bytes: 2
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b8)
  store %struct.Memory* %call_4014b8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 4014ba	 Bytes: 2
  %loadMem_4014ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ba = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ba)
  store %struct.Memory* %call_4014ba, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4014bc	 Bytes: 1
  %loadMem_4014bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bc = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bc)
  store %struct.Memory* %call_4014bc, %struct.Memory** %MEMORY

  ; Code: subq $0x38, %rsp	 RIP: 4014bd	 Bytes: 4
  %loadMem_4014bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bd = call %struct.Memory* @routine_subq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bd)
  store %struct.Memory* %call_4014bd, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rbp), %rax	 RIP: 4014c1	 Bytes: 4
  %loadMem_4014c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c1 = call %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c1)
  store %struct.Memory* %call_4014c1, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rbp), %r10	 RIP: 4014c5	 Bytes: 4
  %loadMem_4014c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c5 = call %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c5)
  store %struct.Memory* %call_4014c5, %struct.Memory** %MEMORY

  ; Code: movq 0x50(%rbp), %r11	 RIP: 4014c9	 Bytes: 4
  %loadMem_4014c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c9 = call %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c9)
  store %struct.Memory* %call_4014c9, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rbp), %rbx	 RIP: 4014cd	 Bytes: 4
  %loadMem_4014cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cd = call %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cd)
  store %struct.Memory* %call_4014cd, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rbp), %r14	 RIP: 4014d1	 Bytes: 4
  %loadMem_4014d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d1 = call %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d1)
  store %struct.Memory* %call_4014d1, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %r15	 RIP: 4014d5	 Bytes: 4
  %loadMem_4014d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d5 = call %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d5)
  store %struct.Memory* %call_4014d5, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %r12	 RIP: 4014d9	 Bytes: 4
  %loadMem_4014d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d9 = call %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d9)
  store %struct.Memory* %call_4014d9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r13	 RIP: 4014dd	 Bytes: 4
  %loadMem_4014dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014dd = call %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014dd)
  store %struct.Memory* %call_4014dd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd0(%rbp)	 RIP: 4014e1	 Bytes: 7
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e1 = call %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e1)
  store %struct.Memory* %call_4014e1, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rax	 RIP: 4014e8	 Bytes: 4
  %loadMem_4014e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e8 = call %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e8)
  store %struct.Memory* %call_4014e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 4014ec	 Bytes: 7
  %loadMem_4014ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ec = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ec)
  store %struct.Memory* %call_4014ec, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 4014f3	 Bytes: 4
  %loadMem_4014f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f3 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f3)
  store %struct.Memory* %call_4014f3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 4014f7	 Bytes: 7
  %loadMem_4014f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f7 = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f7)
  store %struct.Memory* %call_4014f7, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %rax	 RIP: 4014fe	 Bytes: 4
  %loadMem_4014fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fe = call %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fe)
  store %struct.Memory* %call_4014fe, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 401502	 Bytes: 3
  %loadMem_401502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401502 = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401502)
  store %struct.Memory* %call_401502, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x30(%rbp)	 RIP: 401505	 Bytes: 3
  %loadMem_401505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401505 = call %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401505)
  store %struct.Memory* %call_401505, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 401508	 Bytes: 3
  %loadMem_401508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401508 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401508)
  store %struct.Memory* %call_401508, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40150b	 Bytes: 5
  %loadMem_40150b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150b)
  store %struct.Memory* %call_40150b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 401510	 Bytes: 5
  %loadMem_401510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401510 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401510)
  store %struct.Memory* %call_401510, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 401515	 Bytes: 4
  %loadMem_401515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401515 = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401515)
  store %struct.Memory* %call_401515, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x58(%rbp)	 RIP: 401519	 Bytes: 4
  %loadMem_401519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401519 = call %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401519)
  store %struct.Memory* %call_401519, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x60(%rbp)	 RIP: 40151d	 Bytes: 4
  %loadMem_40151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151d = call %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151d)
  store %struct.Memory* %call_40151d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 401521	 Bytes: 4
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401521 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401521)
  store %struct.Memory* %call_401521, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rax	 RIP: 401525	 Bytes: 7
  %loadMem_401525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401525 = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401525)
  store %struct.Memory* %call_401525, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 40152c	 Bytes: 4
  %loadMem_40152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152c = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152c)
  store %struct.Memory* %call_40152c, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %rcx	 RIP: 401530	 Bytes: 7
  %loadMem_401530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401530 = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401530)
  store %struct.Memory* %call_401530, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x78(%rbp)	 RIP: 401537	 Bytes: 4
  %loadMem_401537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401537 = call %struct.Memory* @routine_movq__rcx__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401537)
  store %struct.Memory* %call_401537, %struct.Memory** %MEMORY

  ; Code: movq %r13, -0x80(%rbp)	 RIP: 40153b	 Bytes: 4
  %loadMem_40153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153b = call %struct.Memory* @routine_movq__r13__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153b)
  store %struct.Memory* %call_40153b, %struct.Memory** %MEMORY

  ; Code: movq %r12, -0x88(%rbp)	 RIP: 40153f	 Bytes: 7
  %loadMem_40153f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153f = call %struct.Memory* @routine_movq__r12__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153f)
  store %struct.Memory* %call_40153f, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0x90(%rbp)	 RIP: 401546	 Bytes: 7
  %loadMem_401546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401546 = call %struct.Memory* @routine_movq__r15__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401546)
  store %struct.Memory* %call_401546, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x98(%rbp)	 RIP: 40154d	 Bytes: 7
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154d = call %struct.Memory* @routine_movq__r14__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154d)
  store %struct.Memory* %call_40154d, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0xa0(%rbp)	 RIP: 401554	 Bytes: 7
  %loadMem_401554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401554 = call %struct.Memory* @routine_movq__rbx__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401554)
  store %struct.Memory* %call_401554, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0xa8(%rbp)	 RIP: 40155b	 Bytes: 7
  %loadMem_40155b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155b = call %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155b)
  store %struct.Memory* %call_40155b, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0xb0(%rbp)	 RIP: 401562	 Bytes: 7
  %loadMem_401562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401562 = call %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401562)
  store %struct.Memory* %call_401562, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %r8	 RIP: 401569	 Bytes: 7
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401569 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401569)
  store %struct.Memory* %call_401569, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0xb8(%rbp)	 RIP: 401570	 Bytes: 7
  %loadMem_401570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401570 = call %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401570)
  store %struct.Memory* %call_401570, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xbc(%rbp)	 RIP: 401577	 Bytes: 10
  %loadMem_401577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401577 = call %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401577)
  store %struct.Memory* %call_401577, %struct.Memory** %MEMORY

  ; Code: .L_401581:	 RIP: 401581	 Bytes: 0
  br label %block_.L_401581
block_.L_401581:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 401581	 Bytes: 6
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401581 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401581)
  store %struct.Memory* %call_401581, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401587	 Bytes: 3
  %loadMem_401587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401587 = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401587)
  store %struct.Memory* %call_401587, %struct.Memory** %MEMORY

  ; Code: jge .L_40224b	 RIP: 40158a	 Bytes: 6
  %loadMem_40158a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158a = call %struct.Memory* @routine_jge_.L_40224b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158a, i8* %BRANCH_TAKEN, i64 3265, i64 6, i64 6)
  store %struct.Memory* %call_40158a, %struct.Memory** %MEMORY

  %loadBr_40158a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40158a = icmp eq i8 %loadBr_40158a, 1
  br i1 %cmpBr_40158a, label %block_.L_40224b, label %block_401590

block_401590:
  ; Code: movl $0x0, -0xc0(%rbp)	 RIP: 401590	 Bytes: 10
  %loadMem_401590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401590 = call %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401590)
  store %struct.Memory* %call_401590, %struct.Memory** %MEMORY

  ; Code: .L_40159a:	 RIP: 40159a	 Bytes: 0
  br label %block_.L_40159a
block_.L_40159a:

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 40159a	 Bytes: 6
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159a = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159a)
  store %struct.Memory* %call_40159a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 4015a0	 Bytes: 3
  %loadMem_4015a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a0 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a0)
  store %struct.Memory* %call_4015a0, %struct.Memory** %MEMORY

  ; Code: jge .L_402232	 RIP: 4015a3	 Bytes: 6
  %loadMem_4015a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a3 = call %struct.Memory* @routine_jge_.L_402232(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a3, i8* %BRANCH_TAKEN, i64 3215, i64 6, i64 6)
  store %struct.Memory* %call_4015a3, %struct.Memory** %MEMORY

  %loadBr_4015a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015a3 = icmp eq i8 %loadBr_4015a3, 1
  br i1 %cmpBr_4015a3, label %block_.L_402232, label %block_4015a9

block_4015a9:
  ; Code: movl $0x0, -0xc4(%rbp)	 RIP: 4015a9	 Bytes: 10
  %loadMem_4015a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a9 = call %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a9)
  store %struct.Memory* %call_4015a9, %struct.Memory** %MEMORY

  ; Code: .L_4015b3:	 RIP: 4015b3	 Bytes: 0
  br label %block_.L_4015b3
block_.L_4015b3:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 4015b3	 Bytes: 6
  %loadMem_4015b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b3 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b3)
  store %struct.Memory* %call_4015b3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 4015b9	 Bytes: 3
  %loadMem_4015b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b9 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b9)
  store %struct.Memory* %call_4015b9, %struct.Memory** %MEMORY

  ; Code: jge .L_401913	 RIP: 4015bc	 Bytes: 6
  %loadMem_4015bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bc = call %struct.Memory* @routine_jge_.L_401913(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bc, i8* %BRANCH_TAKEN, i64 855, i64 6, i64 6)
  store %struct.Memory* %call_4015bc, %struct.Memory** %MEMORY

  %loadBr_4015bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015bc = icmp eq i8 %loadBr_4015bc, 1
  br i1 %cmpBr_4015bc, label %block_.L_401913, label %block_4015c2

block_4015c2:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 4015c2	 Bytes: 4
  %loadMem_4015c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c2 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c2)
  store %struct.Memory* %call_4015c2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4015c6	 Bytes: 7
  %loadMem_4015c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c6)
  store %struct.Memory* %call_4015c6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4015cd	 Bytes: 7
  %loadMem_4015cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cd = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cd)
  store %struct.Memory* %call_4015cd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015d4	 Bytes: 3
  %loadMem_4015d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d4)
  store %struct.Memory* %call_4015d4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4015d7	 Bytes: 7
  %loadMem_4015d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d7 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d7)
  store %struct.Memory* %call_4015d7, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4015de	 Bytes: 7
  %loadMem_4015de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015de = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015de)
  store %struct.Memory* %call_4015de, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4015e5	 Bytes: 3
  %loadMem_4015e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e5)
  store %struct.Memory* %call_4015e5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4015e8	 Bytes: 7
  %loadMem_4015e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e8 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e8)
  store %struct.Memory* %call_4015e8, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4015ef	 Bytes: 5
  %loadMem_4015ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ef = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ef)
  store %struct.Memory* %call_4015ef, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 4015f4	 Bytes: 4
  %loadMem_4015f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f4 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f4)
  store %struct.Memory* %call_4015f4, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4015f8	 Bytes: 7
  %loadMem_4015f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f8)
  store %struct.Memory* %call_4015f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4015ff	 Bytes: 7
  %loadMem_4015ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ff = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ff)
  store %struct.Memory* %call_4015ff, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401606	 Bytes: 3
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401606 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401606)
  store %struct.Memory* %call_401606, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 401609	 Bytes: 6
  %loadMem_401609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401609 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401609)
  store %struct.Memory* %call_401609, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40160f	 Bytes: 3
  %loadMem_40160f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160f)
  store %struct.Memory* %call_40160f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401612	 Bytes: 3
  %loadMem_401612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401612 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401612)
  store %struct.Memory* %call_401612, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401615	 Bytes: 7
  %loadMem_401615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401615 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401615)
  store %struct.Memory* %call_401615, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40161c	 Bytes: 3
  %loadMem_40161c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161c)
  store %struct.Memory* %call_40161c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 40161f	 Bytes: 7
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401626	 Bytes: 5
  %loadMem_401626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401626 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401626)
  store %struct.Memory* %call_401626, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 40162b	 Bytes: 4
  %loadMem_40162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162b = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162b)
  store %struct.Memory* %call_40162b, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40162f	 Bytes: 7
  %loadMem_40162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162f = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162f)
  store %struct.Memory* %call_40162f, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401636	 Bytes: 7
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401636 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401636)
  store %struct.Memory* %call_401636, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40163d	 Bytes: 3
  %loadMem_40163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163d)
  store %struct.Memory* %call_40163d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401640	 Bytes: 7
  %loadMem_401640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401640 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401640)
  store %struct.Memory* %call_401640, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401647	 Bytes: 7
  %loadMem_401647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401647 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401647)
  store %struct.Memory* %call_401647, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40164e	 Bytes: 3
  %loadMem_40164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164e)
  store %struct.Memory* %call_40164e, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %edx	 RIP: 401651	 Bytes: 6
  %loadMem_401651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401651 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401651)
  store %struct.Memory* %call_401651, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 401657	 Bytes: 3
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401657 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401657)
  store %struct.Memory* %call_401657, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40165a	 Bytes: 3
  %loadMem_40165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165a)
  store %struct.Memory* %call_40165a, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40165d	 Bytes: 5
  %loadMem_40165d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165d = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165d)
  store %struct.Memory* %call_40165d, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401662	 Bytes: 4
  %loadMem_401662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401662 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401662)
  store %struct.Memory* %call_401662, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401666	 Bytes: 7
  %loadMem_401666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401666 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401666)
  store %struct.Memory* %call_401666, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40166d	 Bytes: 7
  %loadMem_40166d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166d)
  store %struct.Memory* %call_40166d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401674	 Bytes: 3
  %loadMem_401674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401674 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401674)
  store %struct.Memory* %call_401674, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401677	 Bytes: 7
  %loadMem_401677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401677 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401677)
  store %struct.Memory* %call_401677, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40167e	 Bytes: 7
  %loadMem_40167e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167e = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167e)
  store %struct.Memory* %call_40167e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401685	 Bytes: 3
  %loadMem_401685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401685 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401685)
  store %struct.Memory* %call_401685, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401688	 Bytes: 7
  %loadMem_401688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401688 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401688)
  store %struct.Memory* %call_401688, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 40168f	 Bytes: 5
  %loadMem_40168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168f = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168f)
  store %struct.Memory* %call_40168f, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401694	 Bytes: 4
  %loadMem_401694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401694 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401694)
  store %struct.Memory* %call_401694, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401698	 Bytes: 7
  %loadMem_401698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401698 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401698)
  store %struct.Memory* %call_401698, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40169f	 Bytes: 7
  %loadMem_40169f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169f)
  store %struct.Memory* %call_40169f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016a6	 Bytes: 3
  %loadMem_4016a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a6)
  store %struct.Memory* %call_4016a6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016a9	 Bytes: 7
  %loadMem_4016a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a9 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a9)
  store %struct.Memory* %call_4016a9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4016b0	 Bytes: 5
  %loadMem_4016b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b0 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b0)
  store %struct.Memory* %call_4016b0, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 4016b5	 Bytes: 7
  %loadMem_4016b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b5 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b5)
  store %struct.Memory* %call_4016b5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016bc	 Bytes: 7
  %loadMem_4016bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bc = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bc)
  store %struct.Memory* %call_4016bc, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4016c3	 Bytes: 5
  %loadMem_4016c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c3 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c3)
  store %struct.Memory* %call_4016c3, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 4016c8	 Bytes: 7
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016cf	 Bytes: 7
  %loadMem_4016cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cf = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cf)
  store %struct.Memory* %call_4016cf, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4016d6	 Bytes: 5
  %loadMem_4016d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d6 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d6)
  store %struct.Memory* %call_4016d6, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4016db	 Bytes: 4
  %loadMem_4016db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016db = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016db)
  store %struct.Memory* %call_4016db, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4016df	 Bytes: 7
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016df = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016df)
  store %struct.Memory* %call_4016df, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4016e6	 Bytes: 7
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e6 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e6)
  store %struct.Memory* %call_4016e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016ed	 Bytes: 3
  %loadMem_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ed = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ed)
  store %struct.Memory* %call_4016ed, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4016f0	 Bytes: 7
  %loadMem_4016f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f0 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f0)
  store %struct.Memory* %call_4016f0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4016f7	 Bytes: 7
  %loadMem_4016f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f7)
  store %struct.Memory* %call_4016f7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4016fe	 Bytes: 3
  %loadMem_4016fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fe)
  store %struct.Memory* %call_4016fe, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401701	 Bytes: 7
  %loadMem_401701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401701 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401701)
  store %struct.Memory* %call_401701, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401708	 Bytes: 5
  %loadMem_401708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401708 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401708)
  store %struct.Memory* %call_401708, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 40170d	 Bytes: 5
  %loadMem_40170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170d = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170d)
  store %struct.Memory* %call_40170d, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401712	 Bytes: 7
  %loadMem_401712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401712 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401712)
  store %struct.Memory* %call_401712, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401719	 Bytes: 7
  %loadMem_401719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401719 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401719)
  store %struct.Memory* %call_401719, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401720	 Bytes: 5
  %loadMem_401720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401720 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401720)
  store %struct.Memory* %call_401720, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401725	 Bytes: 4
  %loadMem_401725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401725 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401725)
  store %struct.Memory* %call_401725, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401729	 Bytes: 7
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401730	 Bytes: 7
  %loadMem_401730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401730 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401730)
  store %struct.Memory* %call_401730, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401737	 Bytes: 3
  %loadMem_401737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401737 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401737)
  store %struct.Memory* %call_401737, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40173a	 Bytes: 7
  %loadMem_40173a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173a)
  store %struct.Memory* %call_40173a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401741	 Bytes: 5
  %loadMem_401741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401741 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401741)
  store %struct.Memory* %call_401741, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401746	 Bytes: 4
  %loadMem_401746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401746 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401746)
  store %struct.Memory* %call_401746, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40174a	 Bytes: 4
  %loadMem_40174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174a)
  store %struct.Memory* %call_40174a, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40174e	 Bytes: 7
  %loadMem_40174e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174e = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174e)
  store %struct.Memory* %call_40174e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401755	 Bytes: 7
  %loadMem_401755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401755 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401755)
  store %struct.Memory* %call_401755, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40175c	 Bytes: 3
  %loadMem_40175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175c)
  store %struct.Memory* %call_40175c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40175f	 Bytes: 7
  %loadMem_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175f)
  store %struct.Memory* %call_40175f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401766	 Bytes: 5
  %loadMem_401766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401766 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401766)
  store %struct.Memory* %call_401766, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 40176b	 Bytes: 7
  %loadMem_40176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176b = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176b)
  store %struct.Memory* %call_40176b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401772	 Bytes: 7
  %loadMem_401772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401772 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401772)
  store %struct.Memory* %call_401772, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401779	 Bytes: 5
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401779 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401779)
  store %struct.Memory* %call_401779, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40177e	 Bytes: 7
  %loadMem_40177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177e)
  store %struct.Memory* %call_40177e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401785	 Bytes: 7
  %loadMem_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401785 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401785)
  store %struct.Memory* %call_401785, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 40178c	 Bytes: 5
  %loadMem_40178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178c)
  store %struct.Memory* %call_40178c, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401791	 Bytes: 7
  %loadMem_401791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401791 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401791)
  store %struct.Memory* %call_401791, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401798	 Bytes: 7
  %loadMem_401798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401798 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401798)
  store %struct.Memory* %call_401798, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40179f	 Bytes: 7
  %loadMem_40179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179f = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179f)
  store %struct.Memory* %call_40179f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017a6	 Bytes: 3
  %loadMem_4017a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a6)
  store %struct.Memory* %call_4017a6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4017a9	 Bytes: 7
  %loadMem_4017a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a9 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a9)
  store %struct.Memory* %call_4017a9, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4017b0	 Bytes: 7
  %loadMem_4017b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b0)
  store %struct.Memory* %call_4017b0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4017b7	 Bytes: 3
  %loadMem_4017b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b7)
  store %struct.Memory* %call_4017b7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4017ba	 Bytes: 7
  %loadMem_4017ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ba = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ba)
  store %struct.Memory* %call_4017ba, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4017c1	 Bytes: 5
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c1 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c1)
  store %struct.Memory* %call_4017c1, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4017c6	 Bytes: 5
  %loadMem_4017c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c6 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c6)
  store %struct.Memory* %call_4017c6, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 4017cb	 Bytes: 7
  %loadMem_4017cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cb = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cb)
  store %struct.Memory* %call_4017cb, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4017d2	 Bytes: 7
  %loadMem_4017d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d2 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d2)
  store %struct.Memory* %call_4017d2, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 4017d9	 Bytes: 5
  %loadMem_4017d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d9 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d9)
  store %struct.Memory* %call_4017d9, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4017de	 Bytes: 7
  %loadMem_4017de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017de = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017de)
  store %struct.Memory* %call_4017de, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4017e5	 Bytes: 7
  %loadMem_4017e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e5 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e5)
  store %struct.Memory* %call_4017e5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4017ec	 Bytes: 5
  %loadMem_4017ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ec = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ec)
  store %struct.Memory* %call_4017ec, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4017f1	 Bytes: 4
  %loadMem_4017f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f1 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f1)
  store %struct.Memory* %call_4017f1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4017f5	 Bytes: 7
  %loadMem_4017f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f5)
  store %struct.Memory* %call_4017f5, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4017fc	 Bytes: 7
  %loadMem_4017fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fc = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fc)
  store %struct.Memory* %call_4017fc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401803	 Bytes: 3
  %loadMem_401803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401803 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401803)
  store %struct.Memory* %call_401803, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401806	 Bytes: 7
  %loadMem_401806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401806 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401806)
  store %struct.Memory* %call_401806, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40180d	 Bytes: 5
  %loadMem_40180d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180d)
  store %struct.Memory* %call_40180d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401812	 Bytes: 4
  %loadMem_401812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401812 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401812)
  store %struct.Memory* %call_401812, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401816	 Bytes: 5
  %loadMem_401816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401816 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401816)
  store %struct.Memory* %call_401816, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 40181b	 Bytes: 7
  %loadMem_40181b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181b = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181b)
  store %struct.Memory* %call_40181b, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401822	 Bytes: 7
  %loadMem_401822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401822 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401822)
  store %struct.Memory* %call_401822, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401829	 Bytes: 5
  %loadMem_401829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401829 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401829)
  store %struct.Memory* %call_401829, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 40182e	 Bytes: 7
  %loadMem_40182e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182e = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182e)
  store %struct.Memory* %call_40182e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401835	 Bytes: 7
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401835 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401835)
  store %struct.Memory* %call_401835, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40183c	 Bytes: 5
  %loadMem_40183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183c)
  store %struct.Memory* %call_40183c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401841	 Bytes: 4
  %loadMem_401841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401841 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401841)
  store %struct.Memory* %call_401841, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401845	 Bytes: 7
  %loadMem_401845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401845 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401845)
  store %struct.Memory* %call_401845, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40184c	 Bytes: 7
  %loadMem_40184c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184c)
  store %struct.Memory* %call_40184c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401853	 Bytes: 3
  %loadMem_401853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401853 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401853)
  store %struct.Memory* %call_401853, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401856	 Bytes: 7
  %loadMem_401856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401856 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401856)
  store %struct.Memory* %call_401856, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40185d	 Bytes: 7
  %loadMem_40185d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185d)
  store %struct.Memory* %call_40185d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401864	 Bytes: 3
  %loadMem_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401864 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401864)
  store %struct.Memory* %call_401864, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401867	 Bytes: 7
  %loadMem_401867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401867 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401867)
  store %struct.Memory* %call_401867, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40186e	 Bytes: 5
  %loadMem_40186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186e = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186e)
  store %struct.Memory* %call_40186e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401873	 Bytes: 4
  %loadMem_401873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401873 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401873)
  store %struct.Memory* %call_401873, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401877	 Bytes: 7
  %loadMem_401877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401877 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401877)
  store %struct.Memory* %call_401877, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40187e	 Bytes: 7
  %loadMem_40187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187e = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187e)
  store %struct.Memory* %call_40187e, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401885	 Bytes: 7
  %loadMem_401885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401885 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401885)
  store %struct.Memory* %call_401885, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40188c	 Bytes: 3
  %loadMem_40188c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188c)
  store %struct.Memory* %call_40188c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40188f	 Bytes: 7
  %loadMem_40188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188f = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188f)
  store %struct.Memory* %call_40188f, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401896	 Bytes: 7
  %loadMem_401896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401896 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401896)
  store %struct.Memory* %call_401896, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40189d	 Bytes: 3
  %loadMem_40189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189d)
  store %struct.Memory* %call_40189d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4018a0	 Bytes: 7
  %loadMem_4018a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a0 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a0)
  store %struct.Memory* %call_4018a0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4018a7	 Bytes: 5
  %loadMem_4018a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a7 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a7)
  store %struct.Memory* %call_4018a7, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4018ac	 Bytes: 4
  %loadMem_4018ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ac = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ac)
  store %struct.Memory* %call_4018ac, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4018b0	 Bytes: 7
  %loadMem_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b0 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b0)
  store %struct.Memory* %call_4018b0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018b7	 Bytes: 7
  %loadMem_4018b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b7)
  store %struct.Memory* %call_4018b7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018be	 Bytes: 3
  %loadMem_4018be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018be = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018be)
  store %struct.Memory* %call_4018be, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4018c1	 Bytes: 7
  %loadMem_4018c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c1 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c1)
  store %struct.Memory* %call_4018c1, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4018c8	 Bytes: 5
  %loadMem_4018c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c8 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c8)
  store %struct.Memory* %call_4018c8, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4018cd	 Bytes: 4
  %loadMem_4018cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cd = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cd)
  store %struct.Memory* %call_4018cd, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4018d1	 Bytes: 7
  %loadMem_4018d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d1 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d1)
  store %struct.Memory* %call_4018d1, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4018d8	 Bytes: 7
  %loadMem_4018d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d8 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d8)
  store %struct.Memory* %call_4018d8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018df	 Bytes: 3
  %loadMem_4018df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018df = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018df)
  store %struct.Memory* %call_4018df, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4018e2	 Bytes: 7
  %loadMem_4018e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e2)
  store %struct.Memory* %call_4018e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4018e9	 Bytes: 7
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e9)
  store %struct.Memory* %call_4018e9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4018f0	 Bytes: 3
  %loadMem_4018f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f0)
  store %struct.Memory* %call_4018f0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 4018f3	 Bytes: 7
  %loadMem_4018f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f3 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f3)
  store %struct.Memory* %call_4018f3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4018fa	 Bytes: 5
  %loadMem_4018fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fa = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fa)
  store %struct.Memory* %call_4018fa, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 4018ff	 Bytes: 6
  %loadMem_4018ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ff = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ff)
  store %struct.Memory* %call_4018ff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401905	 Bytes: 3
  %loadMem_401905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401905 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401905)
  store %struct.Memory* %call_401905, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 401908	 Bytes: 6
  %loadMem_401908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401908 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401908)
  store %struct.Memory* %call_401908, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4015b3	 RIP: 40190e	 Bytes: 5
  %loadMem_40190e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190e = call %struct.Memory* @routine_jmpq_.L_4015b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190e, i64 -859, i64 5)
  store %struct.Memory* %call_40190e, %struct.Memory** %MEMORY

  br label %block_.L_4015b3

  ; Code: .L_401913:	 RIP: 401913	 Bytes: 0
block_.L_401913:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401913	 Bytes: 4
  %loadMem_401913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401913 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401913)
  store %struct.Memory* %call_401913, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401917	 Bytes: 7
  %loadMem_401917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401917 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401917)
  store %struct.Memory* %call_401917, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40191e	 Bytes: 7
  %loadMem_40191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191e = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191e)
  store %struct.Memory* %call_40191e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401925	 Bytes: 3
  %loadMem_401925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401925 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401925)
  store %struct.Memory* %call_401925, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401928	 Bytes: 7
  %loadMem_401928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401928 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401928)
  store %struct.Memory* %call_401928, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40192f	 Bytes: 7
  %loadMem_40192f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192f)
  store %struct.Memory* %call_40192f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401936	 Bytes: 3
  %loadMem_401936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401936 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401936)
  store %struct.Memory* %call_401936, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401939	 Bytes: 4
  %loadMem_401939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401939 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401939)
  store %struct.Memory* %call_401939, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40193d	 Bytes: 5
  %loadMem_40193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193d = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193d)
  store %struct.Memory* %call_40193d, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401942	 Bytes: 4
  %loadMem_401942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401942 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401942)
  store %struct.Memory* %call_401942, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401946	 Bytes: 7
  %loadMem_401946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401946 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401946)
  store %struct.Memory* %call_401946, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40194d	 Bytes: 7
  %loadMem_40194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194d)
  store %struct.Memory* %call_40194d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401954	 Bytes: 3
  %loadMem_401954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401954 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401954)
  store %struct.Memory* %call_401954, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 401957	 Bytes: 6
  %loadMem_401957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401957 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401957)
  store %struct.Memory* %call_401957, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40195d	 Bytes: 3
  %loadMem_40195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195d)
  store %struct.Memory* %call_40195d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401960	 Bytes: 3
  %loadMem_401960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401960 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401960)
  store %struct.Memory* %call_401960, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401963	 Bytes: 7
  %loadMem_401963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401963 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401963)
  store %struct.Memory* %call_401963, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40196a	 Bytes: 3
  %loadMem_40196a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196a)
  store %struct.Memory* %call_40196a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40196d	 Bytes: 4
  %loadMem_40196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196d)
  store %struct.Memory* %call_40196d, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401971	 Bytes: 5
  %loadMem_401971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401971 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401971)
  store %struct.Memory* %call_401971, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 401976	 Bytes: 4
  %loadMem_401976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401976 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401976)
  store %struct.Memory* %call_401976, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40197a	 Bytes: 7
  %loadMem_40197a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197a)
  store %struct.Memory* %call_40197a, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401981	 Bytes: 7
  %loadMem_401981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401981 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401981)
  store %struct.Memory* %call_401981, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401988	 Bytes: 3
  %loadMem_401988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401988 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401988)
  store %struct.Memory* %call_401988, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40198b	 Bytes: 7
  %loadMem_40198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198b)
  store %struct.Memory* %call_40198b, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401992	 Bytes: 5
  %loadMem_401992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401992 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401992)
  store %struct.Memory* %call_401992, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401997	 Bytes: 4
  %loadMem_401997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401997 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401997)
  store %struct.Memory* %call_401997, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40199b	 Bytes: 7
  %loadMem_40199b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199b)
  store %struct.Memory* %call_40199b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4019a2	 Bytes: 7
  %loadMem_4019a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a2)
  store %struct.Memory* %call_4019a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019a9	 Bytes: 3
  %loadMem_4019a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a9)
  store %struct.Memory* %call_4019a9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4019ac	 Bytes: 7
  %loadMem_4019ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ac = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ac)
  store %struct.Memory* %call_4019ac, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4019b3	 Bytes: 7
  %loadMem_4019b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b3)
  store %struct.Memory* %call_4019b3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019ba	 Bytes: 3
  %loadMem_4019ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ba)
  store %struct.Memory* %call_4019ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4019bd	 Bytes: 4
  %loadMem_4019bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019bd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019bd)
  store %struct.Memory* %call_4019bd, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 4019c1	 Bytes: 5
  %loadMem_4019c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c1 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c1)
  store %struct.Memory* %call_4019c1, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 4019c6	 Bytes: 4
  %loadMem_4019c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c6 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c6)
  store %struct.Memory* %call_4019c6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4019ca	 Bytes: 7
  %loadMem_4019ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ca = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ca)
  store %struct.Memory* %call_4019ca, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4019d1	 Bytes: 7
  %loadMem_4019d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d1)
  store %struct.Memory* %call_4019d1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4019d8	 Bytes: 3
  %loadMem_4019d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d8)
  store %struct.Memory* %call_4019d8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4019db	 Bytes: 7
  %loadMem_4019db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019db = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019db)
  store %struct.Memory* %call_4019db, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4019e2	 Bytes: 5
  %loadMem_4019e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e2 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e2)
  store %struct.Memory* %call_4019e2, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 4019e7	 Bytes: 7
  %loadMem_4019e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e7 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e7)
  store %struct.Memory* %call_4019e7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4019ee	 Bytes: 7
  %loadMem_4019ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ee = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ee)
  store %struct.Memory* %call_4019ee, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4019f5	 Bytes: 5
  %loadMem_4019f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f5)
  store %struct.Memory* %call_4019f5, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 4019fa	 Bytes: 7
  %loadMem_4019fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019fa = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019fa)
  store %struct.Memory* %call_4019fa, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a01	 Bytes: 7
  %loadMem_401a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a01 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a01)
  store %struct.Memory* %call_401a01, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401a08	 Bytes: 5
  %loadMem_401a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a08 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a08)
  store %struct.Memory* %call_401a08, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401a0d	 Bytes: 4
  %loadMem_401a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a0d = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a0d)
  store %struct.Memory* %call_401a0d, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401a11	 Bytes: 7
  %loadMem_401a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a11 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a11)
  store %struct.Memory* %call_401a11, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401a18	 Bytes: 7
  %loadMem_401a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a18 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a18)
  store %struct.Memory* %call_401a18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a1f	 Bytes: 3
  %loadMem_401a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a1f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a1f)
  store %struct.Memory* %call_401a1f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a22	 Bytes: 7
  %loadMem_401a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a22 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a22)
  store %struct.Memory* %call_401a22, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a29	 Bytes: 7
  %loadMem_401a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a29 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a29)
  store %struct.Memory* %call_401a29, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a30	 Bytes: 3
  %loadMem_401a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a30 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a30)
  store %struct.Memory* %call_401a30, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401a33	 Bytes: 4
  %loadMem_401a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a33 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a33)
  store %struct.Memory* %call_401a33, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401a37	 Bytes: 5
  %loadMem_401a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a37 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a37)
  store %struct.Memory* %call_401a37, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401a3c	 Bytes: 5
  %loadMem_401a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a3c = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a3c)
  store %struct.Memory* %call_401a3c, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401a41	 Bytes: 7
  %loadMem_401a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a41 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a41)
  store %struct.Memory* %call_401a41, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a48	 Bytes: 7
  %loadMem_401a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a48 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a48)
  store %struct.Memory* %call_401a48, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401a4f	 Bytes: 5
  %loadMem_401a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a4f = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a4f)
  store %struct.Memory* %call_401a4f, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401a54	 Bytes: 4
  %loadMem_401a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a54 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a54)
  store %struct.Memory* %call_401a54, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401a58	 Bytes: 7
  %loadMem_401a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a58 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a58)
  store %struct.Memory* %call_401a58, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a5f	 Bytes: 7
  %loadMem_401a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a5f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a5f)
  store %struct.Memory* %call_401a5f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a66	 Bytes: 3
  %loadMem_401a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a66 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a66)
  store %struct.Memory* %call_401a66, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a69	 Bytes: 7
  %loadMem_401a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a69 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a69)
  store %struct.Memory* %call_401a69, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401a70	 Bytes: 5
  %loadMem_401a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a70 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a70)
  store %struct.Memory* %call_401a70, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401a75	 Bytes: 4
  %loadMem_401a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a75 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a75)
  store %struct.Memory* %call_401a75, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401a79	 Bytes: 4
  %loadMem_401a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a79 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a79)
  store %struct.Memory* %call_401a79, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401a7d	 Bytes: 7
  %loadMem_401a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a7d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a7d)
  store %struct.Memory* %call_401a7d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401a84	 Bytes: 7
  %loadMem_401a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a84 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a84)
  store %struct.Memory* %call_401a84, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401a8b	 Bytes: 3
  %loadMem_401a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8b)
  store %struct.Memory* %call_401a8b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401a8e	 Bytes: 7
  %loadMem_401a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8e = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8e)
  store %struct.Memory* %call_401a8e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401a95	 Bytes: 5
  %loadMem_401a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a95 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a95)
  store %struct.Memory* %call_401a95, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 401a9a	 Bytes: 7
  %loadMem_401a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9a = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9a)
  store %struct.Memory* %call_401a9a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401aa1	 Bytes: 4
  %loadMem_401aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa1)
  store %struct.Memory* %call_401aa1, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401aa5	 Bytes: 5
  %loadMem_401aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa5 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa5)
  store %struct.Memory* %call_401aa5, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401aaa	 Bytes: 7
  %loadMem_401aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aaa = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aaa)
  store %struct.Memory* %call_401aaa, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401ab1	 Bytes: 4
  %loadMem_401ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab1)
  store %struct.Memory* %call_401ab1, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401ab5	 Bytes: 5
  %loadMem_401ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab5 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab5)
  store %struct.Memory* %call_401ab5, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401aba	 Bytes: 7
  %loadMem_401aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aba = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aba)
  store %struct.Memory* %call_401aba, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ac1	 Bytes: 7
  %loadMem_401ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac1 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac1)
  store %struct.Memory* %call_401ac1, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401ac8	 Bytes: 7
  %loadMem_401ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac8 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac8)
  store %struct.Memory* %call_401ac8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401acf	 Bytes: 3
  %loadMem_401acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401acf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401acf)
  store %struct.Memory* %call_401acf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401ad2	 Bytes: 7
  %loadMem_401ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad2)
  store %struct.Memory* %call_401ad2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ad9	 Bytes: 7
  %loadMem_401ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad9)
  store %struct.Memory* %call_401ad9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ae0	 Bytes: 3
  %loadMem_401ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae0)
  store %struct.Memory* %call_401ae0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401ae3	 Bytes: 4
  %loadMem_401ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae3 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae3)
  store %struct.Memory* %call_401ae3, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401ae7	 Bytes: 5
  %loadMem_401ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae7 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae7)
  store %struct.Memory* %call_401ae7, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401aec	 Bytes: 5
  %loadMem_401aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aec = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aec)
  store %struct.Memory* %call_401aec, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 401af1	 Bytes: 7
  %loadMem_401af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af1 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af1)
  store %struct.Memory* %call_401af1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401af8	 Bytes: 7
  %loadMem_401af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af8 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af8)
  store %struct.Memory* %call_401af8, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401aff	 Bytes: 5
  %loadMem_401aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aff = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aff)
  store %struct.Memory* %call_401aff, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401b04	 Bytes: 7
  %loadMem_401b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b04 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b04)
  store %struct.Memory* %call_401b04, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401b0b	 Bytes: 4
  %loadMem_401b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b0b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b0b)
  store %struct.Memory* %call_401b0b, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401b0f	 Bytes: 5
  %loadMem_401b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b0f = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b0f)
  store %struct.Memory* %call_401b0f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401b14	 Bytes: 4
  %loadMem_401b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b14 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b14)
  store %struct.Memory* %call_401b14, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b18	 Bytes: 7
  %loadMem_401b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b18 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b18)
  store %struct.Memory* %call_401b18, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b1f	 Bytes: 7
  %loadMem_401b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b1f = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b1f)
  store %struct.Memory* %call_401b1f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b26	 Bytes: 3
  %loadMem_401b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b26 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b26)
  store %struct.Memory* %call_401b26, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401b29	 Bytes: 7
  %loadMem_401b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b29 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b29)
  store %struct.Memory* %call_401b29, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b30	 Bytes: 5
  %loadMem_401b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b30 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b30)
  store %struct.Memory* %call_401b30, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401b35	 Bytes: 4
  %loadMem_401b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b35 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b35)
  store %struct.Memory* %call_401b35, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401b39	 Bytes: 5
  %loadMem_401b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b39 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b39)
  store %struct.Memory* %call_401b39, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 401b3e	 Bytes: 7
  %loadMem_401b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b3e = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b3e)
  store %struct.Memory* %call_401b3e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b45	 Bytes: 7
  %loadMem_401b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b45 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b45)
  store %struct.Memory* %call_401b45, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b4c	 Bytes: 5
  %loadMem_401b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4c)
  store %struct.Memory* %call_401b4c, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401b51	 Bytes: 7
  %loadMem_401b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b51 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b51)
  store %struct.Memory* %call_401b51, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401b58	 Bytes: 4
  %loadMem_401b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b58 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b58)
  store %struct.Memory* %call_401b58, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401b5c	 Bytes: 5
  %loadMem_401b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5c = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5c)
  store %struct.Memory* %call_401b5c, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401b61	 Bytes: 4
  %loadMem_401b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b61 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b61)
  store %struct.Memory* %call_401b61, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b65	 Bytes: 7
  %loadMem_401b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b65 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b65)
  store %struct.Memory* %call_401b65, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401b6c	 Bytes: 7
  %loadMem_401b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b6c = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b6c)
  store %struct.Memory* %call_401b6c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b73	 Bytes: 3
  %loadMem_401b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b73 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b73)
  store %struct.Memory* %call_401b73, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401b76	 Bytes: 7
  %loadMem_401b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b76 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b76)
  store %struct.Memory* %call_401b76, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401b7d	 Bytes: 7
  %loadMem_401b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b7d = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b7d)
  store %struct.Memory* %call_401b7d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401b84	 Bytes: 3
  %loadMem_401b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b84 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b84)
  store %struct.Memory* %call_401b84, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401b87	 Bytes: 4
  %loadMem_401b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b87 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b87)
  store %struct.Memory* %call_401b87, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401b8b	 Bytes: 5
  %loadMem_401b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b8b = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b8b)
  store %struct.Memory* %call_401b8b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401b90	 Bytes: 4
  %loadMem_401b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b90 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b90)
  store %struct.Memory* %call_401b90, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401b94	 Bytes: 7
  %loadMem_401b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b94 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b94)
  store %struct.Memory* %call_401b94, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401b9b	 Bytes: 7
  %loadMem_401b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b9b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b9b)
  store %struct.Memory* %call_401b9b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401ba2	 Bytes: 7
  %loadMem_401ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba2)
  store %struct.Memory* %call_401ba2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ba9	 Bytes: 3
  %loadMem_401ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba9)
  store %struct.Memory* %call_401ba9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401bac	 Bytes: 7
  %loadMem_401bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bac = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bac)
  store %struct.Memory* %call_401bac, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401bb3	 Bytes: 7
  %loadMem_401bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb3)
  store %struct.Memory* %call_401bb3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bba	 Bytes: 3
  %loadMem_401bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bba)
  store %struct.Memory* %call_401bba, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401bbd	 Bytes: 4
  %loadMem_401bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bbd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bbd)
  store %struct.Memory* %call_401bbd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401bc1	 Bytes: 5
  %loadMem_401bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc1 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc1)
  store %struct.Memory* %call_401bc1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401bc6	 Bytes: 4
  %loadMem_401bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc6 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc6)
  store %struct.Memory* %call_401bc6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401bca	 Bytes: 7
  %loadMem_401bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bca = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bca)
  store %struct.Memory* %call_401bca, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401bd1	 Bytes: 7
  %loadMem_401bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd1)
  store %struct.Memory* %call_401bd1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bd8	 Bytes: 3
  %loadMem_401bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd8)
  store %struct.Memory* %call_401bd8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401bdb	 Bytes: 7
  %loadMem_401bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bdb = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bdb)
  store %struct.Memory* %call_401bdb, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401be2	 Bytes: 5
  %loadMem_401be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be2 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be2)
  store %struct.Memory* %call_401be2, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401be7	 Bytes: 4
  %loadMem_401be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be7 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be7)
  store %struct.Memory* %call_401be7, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401beb	 Bytes: 7
  %loadMem_401beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401beb = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401beb)
  store %struct.Memory* %call_401beb, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401bf2	 Bytes: 7
  %loadMem_401bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf2 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf2)
  store %struct.Memory* %call_401bf2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401bf9	 Bytes: 3
  %loadMem_401bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf9)
  store %struct.Memory* %call_401bf9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401bfc	 Bytes: 7
  %loadMem_401bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bfc = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bfc)
  store %struct.Memory* %call_401bfc, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c03	 Bytes: 7
  %loadMem_401c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c03 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c03)
  store %struct.Memory* %call_401c03, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c0a	 Bytes: 3
  %loadMem_401c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0a)
  store %struct.Memory* %call_401c0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401c0d	 Bytes: 4
  %loadMem_401c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0d)
  store %struct.Memory* %call_401c0d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401c11	 Bytes: 5
  %loadMem_401c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c11 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c11)
  store %struct.Memory* %call_401c11, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc4(%rbp)	 RIP: 401c16	 Bytes: 10
  %loadMem_401c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c16 = call %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c16)
  store %struct.Memory* %call_401c16, %struct.Memory** %MEMORY

  ; Code: .L_401c20:	 RIP: 401c20	 Bytes: 0
  br label %block_.L_401c20
block_.L_401c20:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 401c20	 Bytes: 6
  %loadMem_401c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c20 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c20)
  store %struct.Memory* %call_401c20, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401c26	 Bytes: 3
  %loadMem_401c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c26 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c26)
  store %struct.Memory* %call_401c26, %struct.Memory** %MEMORY

  ; Code: jge .L_401f52	 RIP: 401c29	 Bytes: 6
  %loadMem_401c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c29 = call %struct.Memory* @routine_jge_.L_401f52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c29, i8* %BRANCH_TAKEN, i64 809, i64 6, i64 6)
  store %struct.Memory* %call_401c29, %struct.Memory** %MEMORY

  %loadBr_401c29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c29 = icmp eq i8 %loadBr_401c29, 1
  br i1 %cmpBr_401c29, label %block_.L_401f52, label %block_401c2f

block_401c2f:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 401c2f	 Bytes: 4
  %loadMem_401c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2f = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2f)
  store %struct.Memory* %call_401c2f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401c33	 Bytes: 7
  %loadMem_401c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c33 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c33)
  store %struct.Memory* %call_401c33, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c3a	 Bytes: 7
  %loadMem_401c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3a)
  store %struct.Memory* %call_401c3a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c41	 Bytes: 3
  %loadMem_401c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c41 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c41)
  store %struct.Memory* %call_401c41, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401c44	 Bytes: 4
  %loadMem_401c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c44 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c44)
  store %struct.Memory* %call_401c44, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c48	 Bytes: 7
  %loadMem_401c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c48 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c48)
  store %struct.Memory* %call_401c48, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c4f	 Bytes: 3
  %loadMem_401c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4f)
  store %struct.Memory* %call_401c4f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401c52	 Bytes: 7
  %loadMem_401c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c52 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c52)
  store %struct.Memory* %call_401c52, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401c59	 Bytes: 5
  %loadMem_401c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c59 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c59)
  store %struct.Memory* %call_401c59, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401c5e	 Bytes: 4
  %loadMem_401c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5e)
  store %struct.Memory* %call_401c5e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401c62	 Bytes: 7
  %loadMem_401c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c62 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c62)
  store %struct.Memory* %call_401c62, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c69	 Bytes: 7
  %loadMem_401c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c69 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c69)
  store %struct.Memory* %call_401c69, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c70	 Bytes: 3
  %loadMem_401c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c70 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c70)
  store %struct.Memory* %call_401c70, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401c73	 Bytes: 7
  %loadMem_401c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c73 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c73)
  store %struct.Memory* %call_401c73, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401c7a	 Bytes: 5
  %loadMem_401c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7a = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7a)
  store %struct.Memory* %call_401c7a, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401c7f	 Bytes: 4
  %loadMem_401c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7f = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7f)
  store %struct.Memory* %call_401c7f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401c83	 Bytes: 7
  %loadMem_401c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c83 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c83)
  store %struct.Memory* %call_401c83, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401c8a	 Bytes: 7
  %loadMem_401c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8a)
  store %struct.Memory* %call_401c8a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c91	 Bytes: 3
  %loadMem_401c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c91 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c91)
  store %struct.Memory* %call_401c91, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401c94	 Bytes: 4
  %loadMem_401c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c94 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c94)
  store %struct.Memory* %call_401c94, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401c98	 Bytes: 7
  %loadMem_401c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c98 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c98)
  store %struct.Memory* %call_401c98, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401c9f	 Bytes: 3
  %loadMem_401c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9f)
  store %struct.Memory* %call_401c9f, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %edx	 RIP: 401ca2	 Bytes: 6
  %loadMem_401ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca2 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca2)
  store %struct.Memory* %call_401ca2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 401ca8	 Bytes: 3
  %loadMem_401ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca8 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca8)
  store %struct.Memory* %call_401ca8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401cab	 Bytes: 3
  %loadMem_401cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cab = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cab)
  store %struct.Memory* %call_401cab, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401cae	 Bytes: 5
  %loadMem_401cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cae = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cae)
  store %struct.Memory* %call_401cae, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401cb3	 Bytes: 4
  %loadMem_401cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb3 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb3)
  store %struct.Memory* %call_401cb3, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401cb7	 Bytes: 7
  %loadMem_401cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb7 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb7)
  store %struct.Memory* %call_401cb7, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401cbe	 Bytes: 7
  %loadMem_401cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbe = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbe)
  store %struct.Memory* %call_401cbe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401cc5	 Bytes: 3
  %loadMem_401cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc5)
  store %struct.Memory* %call_401cc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401cc8	 Bytes: 4
  %loadMem_401cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc8)
  store %struct.Memory* %call_401cc8, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ccc	 Bytes: 7
  %loadMem_401ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ccc = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ccc)
  store %struct.Memory* %call_401ccc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401cd3	 Bytes: 3
  %loadMem_401cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd3)
  store %struct.Memory* %call_401cd3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401cd6	 Bytes: 7
  %loadMem_401cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd6 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd6)
  store %struct.Memory* %call_401cd6, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401cdd	 Bytes: 5
  %loadMem_401cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdd = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdd)
  store %struct.Memory* %call_401cdd, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401ce2	 Bytes: 4
  %loadMem_401ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce2 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce2)
  store %struct.Memory* %call_401ce2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ce6	 Bytes: 7
  %loadMem_401ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce6)
  store %struct.Memory* %call_401ce6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ced	 Bytes: 7
  %loadMem_401ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ced = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ced)
  store %struct.Memory* %call_401ced, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401cf4	 Bytes: 3
  %loadMem_401cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf4)
  store %struct.Memory* %call_401cf4, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401cf7	 Bytes: 7
  %loadMem_401cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf7 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf7)
  store %struct.Memory* %call_401cf7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401cfe	 Bytes: 5
  %loadMem_401cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfe = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfe)
  store %struct.Memory* %call_401cfe, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 401d03	 Bytes: 7
  %loadMem_401d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d03 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d03)
  store %struct.Memory* %call_401d03, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401d0a	 Bytes: 4
  %loadMem_401d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0a)
  store %struct.Memory* %call_401d0a, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401d0e	 Bytes: 5
  %loadMem_401d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0e = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0e)
  store %struct.Memory* %call_401d0e, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401d13	 Bytes: 7
  %loadMem_401d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d13 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d13)
  store %struct.Memory* %call_401d13, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d1a	 Bytes: 7
  %loadMem_401d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1a)
  store %struct.Memory* %call_401d1a, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401d21	 Bytes: 5
  %loadMem_401d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d21 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d21)
  store %struct.Memory* %call_401d21, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401d26	 Bytes: 4
  %loadMem_401d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d26 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d26)
  store %struct.Memory* %call_401d26, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401d2a	 Bytes: 7
  %loadMem_401d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2a)
  store %struct.Memory* %call_401d2a, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401d31	 Bytes: 7
  %loadMem_401d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d31 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d31)
  store %struct.Memory* %call_401d31, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d38	 Bytes: 3
  %loadMem_401d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d38 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d38)
  store %struct.Memory* %call_401d38, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d3b	 Bytes: 7
  %loadMem_401d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3b = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3b)
  store %struct.Memory* %call_401d3b, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d42	 Bytes: 7
  %loadMem_401d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d42 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d42)
  store %struct.Memory* %call_401d42, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d49	 Bytes: 3
  %loadMem_401d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d49 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d49)
  store %struct.Memory* %call_401d49, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401d4c	 Bytes: 7
  %loadMem_401d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4c = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4c)
  store %struct.Memory* %call_401d4c, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401d53	 Bytes: 5
  %loadMem_401d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d53 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d53)
  store %struct.Memory* %call_401d53, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 401d58	 Bytes: 5
  %loadMem_401d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d58 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d58)
  store %struct.Memory* %call_401d58, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 401d5d	 Bytes: 7
  %loadMem_401d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5d = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5d)
  store %struct.Memory* %call_401d5d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d64	 Bytes: 7
  %loadMem_401d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d64 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d64)
  store %struct.Memory* %call_401d64, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401d6b	 Bytes: 5
  %loadMem_401d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6b = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6b)
  store %struct.Memory* %call_401d6b, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401d70	 Bytes: 4
  %loadMem_401d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d70 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d70)
  store %struct.Memory* %call_401d70, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401d74	 Bytes: 7
  %loadMem_401d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d74 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d74)
  store %struct.Memory* %call_401d74, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401d7b	 Bytes: 7
  %loadMem_401d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7b)
  store %struct.Memory* %call_401d7b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401d82	 Bytes: 3
  %loadMem_401d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d82 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d82)
  store %struct.Memory* %call_401d82, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401d85	 Bytes: 7
  %loadMem_401d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d85 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d85)
  store %struct.Memory* %call_401d85, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401d8c	 Bytes: 5
  %loadMem_401d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8c)
  store %struct.Memory* %call_401d8c, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401d91	 Bytes: 4
  %loadMem_401d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d91 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d91)
  store %struct.Memory* %call_401d91, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401d95	 Bytes: 4
  %loadMem_401d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d95 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d95)
  store %struct.Memory* %call_401d95, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401d99	 Bytes: 7
  %loadMem_401d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d99 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d99)
  store %struct.Memory* %call_401d99, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401da0	 Bytes: 7
  %loadMem_401da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da0 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da0)
  store %struct.Memory* %call_401da0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401da7	 Bytes: 3
  %loadMem_401da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da7)
  store %struct.Memory* %call_401da7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401daa	 Bytes: 7
  %loadMem_401daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401daa = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401daa)
  store %struct.Memory* %call_401daa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401db1	 Bytes: 5
  %loadMem_401db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db1 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db1)
  store %struct.Memory* %call_401db1, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 401db6	 Bytes: 7
  %loadMem_401db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db6 = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db6)
  store %struct.Memory* %call_401db6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401dbd	 Bytes: 7
  %loadMem_401dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbd = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbd)
  store %struct.Memory* %call_401dbd, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401dc4	 Bytes: 5
  %loadMem_401dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc4 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc4)
  store %struct.Memory* %call_401dc4, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401dc9	 Bytes: 7
  %loadMem_401dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc9 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc9)
  store %struct.Memory* %call_401dc9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401dd0	 Bytes: 7
  %loadMem_401dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd0 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd0)
  store %struct.Memory* %call_401dd0, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 401dd7	 Bytes: 5
  %loadMem_401dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd7 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd7)
  store %struct.Memory* %call_401dd7, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401ddc	 Bytes: 7
  %loadMem_401ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ddc = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ddc)
  store %struct.Memory* %call_401ddc, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401de3	 Bytes: 7
  %loadMem_401de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de3 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de3)
  store %struct.Memory* %call_401de3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401dea	 Bytes: 7
  %loadMem_401dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dea = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dea)
  store %struct.Memory* %call_401dea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401df1	 Bytes: 3
  %loadMem_401df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df1)
  store %struct.Memory* %call_401df1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401df4	 Bytes: 4
  %loadMem_401df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df4)
  store %struct.Memory* %call_401df4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401df8	 Bytes: 7
  %loadMem_401df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df8)
  store %struct.Memory* %call_401df8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401dff	 Bytes: 3
  %loadMem_401dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dff)
  store %struct.Memory* %call_401dff, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401e02	 Bytes: 7
  %loadMem_401e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e02 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e02)
  store %struct.Memory* %call_401e02, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401e09	 Bytes: 5
  %loadMem_401e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e09 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e09)
  store %struct.Memory* %call_401e09, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401e0e	 Bytes: 5
  %loadMem_401e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0e)
  store %struct.Memory* %call_401e0e, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 401e13	 Bytes: 7
  %loadMem_401e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e13 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e13)
  store %struct.Memory* %call_401e13, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e1a	 Bytes: 7
  %loadMem_401e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1a)
  store %struct.Memory* %call_401e1a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e21	 Bytes: 5
  %loadMem_401e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e21 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e21)
  store %struct.Memory* %call_401e21, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401e26	 Bytes: 7
  %loadMem_401e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e26 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e26)
  store %struct.Memory* %call_401e26, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401e2d	 Bytes: 7
  %loadMem_401e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2d = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2d)
  store %struct.Memory* %call_401e2d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401e34	 Bytes: 5
  %loadMem_401e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e34 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e34)
  store %struct.Memory* %call_401e34, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401e39	 Bytes: 4
  %loadMem_401e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e39 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e39)
  store %struct.Memory* %call_401e39, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e3d	 Bytes: 7
  %loadMem_401e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3d)
  store %struct.Memory* %call_401e3d, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401e44	 Bytes: 7
  %loadMem_401e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e44 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e44)
  store %struct.Memory* %call_401e44, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e4b	 Bytes: 3
  %loadMem_401e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4b)
  store %struct.Memory* %call_401e4b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401e4e	 Bytes: 7
  %loadMem_401e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4e = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4e)
  store %struct.Memory* %call_401e4e, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e55	 Bytes: 5
  %loadMem_401e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e55 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e55)
  store %struct.Memory* %call_401e55, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401e5a	 Bytes: 4
  %loadMem_401e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5a = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5a)
  store %struct.Memory* %call_401e5a, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 401e5e	 Bytes: 5
  %loadMem_401e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5e = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5e)
  store %struct.Memory* %call_401e5e, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 401e63	 Bytes: 7
  %loadMem_401e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e63 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e63)
  store %struct.Memory* %call_401e63, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e6a	 Bytes: 7
  %loadMem_401e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6a = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6a)
  store %struct.Memory* %call_401e6a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401e71	 Bytes: 5
  %loadMem_401e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e71 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e71)
  store %struct.Memory* %call_401e71, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 401e76	 Bytes: 7
  %loadMem_401e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e76 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e76)
  store %struct.Memory* %call_401e76, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401e7d	 Bytes: 7
  %loadMem_401e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7d = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7d)
  store %struct.Memory* %call_401e7d, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 401e84	 Bytes: 5
  %loadMem_401e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e84 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e84)
  store %struct.Memory* %call_401e84, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401e89	 Bytes: 4
  %loadMem_401e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e89 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e89)
  store %struct.Memory* %call_401e89, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401e8d	 Bytes: 7
  %loadMem_401e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8d = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8d)
  store %struct.Memory* %call_401e8d, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401e94	 Bytes: 7
  %loadMem_401e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e94 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e94)
  store %struct.Memory* %call_401e94, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401e9b	 Bytes: 3
  %loadMem_401e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9b)
  store %struct.Memory* %call_401e9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401e9e	 Bytes: 4
  %loadMem_401e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9e)
  store %struct.Memory* %call_401e9e, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ea2	 Bytes: 7
  %loadMem_401ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea2 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea2)
  store %struct.Memory* %call_401ea2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ea9	 Bytes: 3
  %loadMem_401ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea9)
  store %struct.Memory* %call_401ea9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401eac	 Bytes: 7
  %loadMem_401eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eac = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eac)
  store %struct.Memory* %call_401eac, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 401eb3	 Bytes: 5
  %loadMem_401eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb3 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb3)
  store %struct.Memory* %call_401eb3, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401eb8	 Bytes: 4
  %loadMem_401eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb8 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb8)
  store %struct.Memory* %call_401eb8, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 401ebc	 Bytes: 7
  %loadMem_401ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebc = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebc)
  store %struct.Memory* %call_401ebc, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ec3	 Bytes: 7
  %loadMem_401ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec3 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec3)
  store %struct.Memory* %call_401ec3, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401eca	 Bytes: 7
  %loadMem_401eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eca = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eca)
  store %struct.Memory* %call_401eca, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ed1	 Bytes: 3
  %loadMem_401ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed1)
  store %struct.Memory* %call_401ed1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401ed4	 Bytes: 4
  %loadMem_401ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed4)
  store %struct.Memory* %call_401ed4, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ed8	 Bytes: 7
  %loadMem_401ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed8 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed8)
  store %struct.Memory* %call_401ed8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401edf	 Bytes: 3
  %loadMem_401edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401edf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401edf)
  store %struct.Memory* %call_401edf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401ee2	 Bytes: 7
  %loadMem_401ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee2 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee2)
  store %struct.Memory* %call_401ee2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401ee9	 Bytes: 5
  %loadMem_401ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee9)
  store %struct.Memory* %call_401ee9, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 401eee	 Bytes: 4
  %loadMem_401eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eee = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eee)
  store %struct.Memory* %call_401eee, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401ef2	 Bytes: 7
  %loadMem_401ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef2 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef2)
  store %struct.Memory* %call_401ef2, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ef9	 Bytes: 7
  %loadMem_401ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef9 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef9)
  store %struct.Memory* %call_401ef9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f00	 Bytes: 3
  %loadMem_401f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f00 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f00)
  store %struct.Memory* %call_401f00, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401f03	 Bytes: 7
  %loadMem_401f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f03 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f03)
  store %struct.Memory* %call_401f03, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401f0a	 Bytes: 5
  %loadMem_401f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f0a = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f0a)
  store %struct.Memory* %call_401f0a, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 401f0f	 Bytes: 4
  %loadMem_401f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f0f = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f0f)
  store %struct.Memory* %call_401f0f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f13	 Bytes: 7
  %loadMem_401f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f13 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f13)
  store %struct.Memory* %call_401f13, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401f1a	 Bytes: 7
  %loadMem_401f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1a = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1a)
  store %struct.Memory* %call_401f1a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f21	 Bytes: 3
  %loadMem_401f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f21 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f21)
  store %struct.Memory* %call_401f21, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401f24	 Bytes: 4
  %loadMem_401f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f24 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f24)
  store %struct.Memory* %call_401f24, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f28	 Bytes: 7
  %loadMem_401f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f28 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f28)
  store %struct.Memory* %call_401f28, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f2f	 Bytes: 3
  %loadMem_401f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2f)
  store %struct.Memory* %call_401f2f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc4(%rbp), %rcx	 RIP: 401f32	 Bytes: 7
  %loadMem_401f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f32 = call %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f32)
  store %struct.Memory* %call_401f32, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401f39	 Bytes: 5
  %loadMem_401f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f39 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f39)
  store %struct.Memory* %call_401f39, %struct.Memory** %MEMORY

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 401f3e	 Bytes: 6
  %loadMem_401f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3e = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3e)
  store %struct.Memory* %call_401f3e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401f44	 Bytes: 3
  %loadMem_401f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f44 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f44)
  store %struct.Memory* %call_401f44, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 401f47	 Bytes: 6
  %loadMem_401f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f47 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f47)
  store %struct.Memory* %call_401f47, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401c20	 RIP: 401f4d	 Bytes: 5
  %loadMem_401f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4d = call %struct.Memory* @routine_jmpq_.L_401c20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4d, i64 -813, i64 5)
  store %struct.Memory* %call_401f4d, %struct.Memory** %MEMORY

  br label %block_.L_401c20

  ; Code: .L_401f52:	 RIP: 401f52	 Bytes: 0
block_.L_401f52:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 401f52	 Bytes: 4
  %loadMem_401f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f52 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f52)
  store %struct.Memory* %call_401f52, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f56	 Bytes: 7
  %loadMem_401f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f56 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f56)
  store %struct.Memory* %call_401f56, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401f5d	 Bytes: 7
  %loadMem_401f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f5d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f5d)
  store %struct.Memory* %call_401f5d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f64	 Bytes: 3
  %loadMem_401f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f64 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f64)
  store %struct.Memory* %call_401f64, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401f67	 Bytes: 4
  %loadMem_401f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f67 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f67)
  store %struct.Memory* %call_401f67, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f6b	 Bytes: 7
  %loadMem_401f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6b)
  store %struct.Memory* %call_401f6b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f72	 Bytes: 3
  %loadMem_401f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f72 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f72)
  store %struct.Memory* %call_401f72, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401f75	 Bytes: 4
  %loadMem_401f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f75 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f75)
  store %struct.Memory* %call_401f75, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 401f79	 Bytes: 5
  %loadMem_401f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f79 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f79)
  store %struct.Memory* %call_401f79, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401f7e	 Bytes: 4
  %loadMem_401f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7e)
  store %struct.Memory* %call_401f7e, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401f82	 Bytes: 7
  %loadMem_401f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f82 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f82)
  store %struct.Memory* %call_401f82, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401f89	 Bytes: 7
  %loadMem_401f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f89 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f89)
  store %struct.Memory* %call_401f89, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401f90	 Bytes: 3
  %loadMem_401f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f90 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f90)
  store %struct.Memory* %call_401f90, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401f93	 Bytes: 4
  %loadMem_401f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f93 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f93)
  store %struct.Memory* %call_401f93, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401f97	 Bytes: 5
  %loadMem_401f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f97 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f97)
  store %struct.Memory* %call_401f97, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 401f9c	 Bytes: 4
  %loadMem_401f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9c = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9c)
  store %struct.Memory* %call_401f9c, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401fa0	 Bytes: 7
  %loadMem_401fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa0 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa0)
  store %struct.Memory* %call_401fa0, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401fa7	 Bytes: 7
  %loadMem_401fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa7 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa7)
  store %struct.Memory* %call_401fa7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fae	 Bytes: 3
  %loadMem_401fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fae = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fae)
  store %struct.Memory* %call_401fae, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401fb1	 Bytes: 4
  %loadMem_401fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb1 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb1)
  store %struct.Memory* %call_401fb1, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 401fb5	 Bytes: 5
  %loadMem_401fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb5 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb5)
  store %struct.Memory* %call_401fb5, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 401fba	 Bytes: 4
  %loadMem_401fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fba = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fba)
  store %struct.Memory* %call_401fba, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401fbe	 Bytes: 7
  %loadMem_401fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbe = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbe)
  store %struct.Memory* %call_401fbe, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 401fc5	 Bytes: 7
  %loadMem_401fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc5 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc5)
  store %struct.Memory* %call_401fc5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fcc	 Bytes: 3
  %loadMem_401fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcc)
  store %struct.Memory* %call_401fcc, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 401fcf	 Bytes: 4
  %loadMem_401fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcf = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcf)
  store %struct.Memory* %call_401fcf, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401fd3	 Bytes: 7
  %loadMem_401fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd3 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd3)
  store %struct.Memory* %call_401fd3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401fda	 Bytes: 3
  %loadMem_401fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fda = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fda)
  store %struct.Memory* %call_401fda, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 401fdd	 Bytes: 4
  %loadMem_401fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdd = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdd)
  store %struct.Memory* %call_401fdd, %struct.Memory** %MEMORY

  ; Code: subsd (%rax,%rcx,8), %xmm0	 RIP: 401fe1	 Bytes: 5
  %loadMem_401fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe1 = call %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe1)
  store %struct.Memory* %call_401fe1, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 401fe6	 Bytes: 4
  %loadMem_401fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe6 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe6)
  store %struct.Memory* %call_401fe6, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 401fea	 Bytes: 7
  %loadMem_401fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fea = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fea)
  store %struct.Memory* %call_401fea, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 401ff1	 Bytes: 7
  %loadMem_401ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff1 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff1)
  store %struct.Memory* %call_401ff1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401ff8	 Bytes: 3
  %loadMem_401ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff8)
  store %struct.Memory* %call_401ff8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 401ffb	 Bytes: 7
  %loadMem_401ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffb = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffb)
  store %struct.Memory* %call_401ffb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402002	 Bytes: 5
  %loadMem_402002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402002 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402002)
  store %struct.Memory* %call_402002, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rax	 RIP: 402007	 Bytes: 7
  %loadMem_402007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402007 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402007)
  store %struct.Memory* %call_402007, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40200e	 Bytes: 4
  %loadMem_40200e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200e)
  store %struct.Memory* %call_40200e, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 402012	 Bytes: 5
  %loadMem_402012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402012 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402012)
  store %struct.Memory* %call_402012, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402017	 Bytes: 7
  %loadMem_402017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402017 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402017)
  store %struct.Memory* %call_402017, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40201e	 Bytes: 4
  %loadMem_40201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201e)
  store %struct.Memory* %call_40201e, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 402022	 Bytes: 5
  %loadMem_402022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402022 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402022)
  store %struct.Memory* %call_402022, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402027	 Bytes: 4
  %loadMem_402027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402027 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402027)
  store %struct.Memory* %call_402027, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40202b	 Bytes: 7
  %loadMem_40202b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202b = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202b)
  store %struct.Memory* %call_40202b, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 402032	 Bytes: 7
  %loadMem_402032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402032 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402032)
  store %struct.Memory* %call_402032, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402039	 Bytes: 3
  %loadMem_402039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402039 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402039)
  store %struct.Memory* %call_402039, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40203c	 Bytes: 4
  %loadMem_40203c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203c)
  store %struct.Memory* %call_40203c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402040	 Bytes: 7
  %loadMem_402040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402040 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402040)
  store %struct.Memory* %call_402040, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402047	 Bytes: 3
  %loadMem_402047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402047 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402047)
  store %struct.Memory* %call_402047, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40204a	 Bytes: 4
  %loadMem_40204a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204a)
  store %struct.Memory* %call_40204a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 40204e	 Bytes: 5
  %loadMem_40204e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204e = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204e)
  store %struct.Memory* %call_40204e, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm1	 RIP: 402053	 Bytes: 5
  %loadMem_402053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402053 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402053)
  store %struct.Memory* %call_402053, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 402058	 Bytes: 7
  %loadMem_402058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402058 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402058)
  store %struct.Memory* %call_402058, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 40205f	 Bytes: 4
  %loadMem_40205f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205f)
  store %struct.Memory* %call_40205f, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402063	 Bytes: 5
  %loadMem_402063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402063 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402063)
  store %struct.Memory* %call_402063, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 402068	 Bytes: 4
  %loadMem_402068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402068 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402068)
  store %struct.Memory* %call_402068, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 40206c	 Bytes: 7
  %loadMem_40206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206c = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206c)
  store %struct.Memory* %call_40206c, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402073	 Bytes: 7
  %loadMem_402073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402073 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402073)
  store %struct.Memory* %call_402073, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40207a	 Bytes: 3
  %loadMem_40207a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207a)
  store %struct.Memory* %call_40207a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40207d	 Bytes: 7
  %loadMem_40207d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207d = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207d)
  store %struct.Memory* %call_40207d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402084	 Bytes: 5
  %loadMem_402084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402084 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402084)
  store %struct.Memory* %call_402084, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 402089	 Bytes: 4
  %loadMem_402089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402089 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402089)
  store %struct.Memory* %call_402089, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40208d	 Bytes: 4
  %loadMem_40208d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208d = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208d)
  store %struct.Memory* %call_40208d, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402091	 Bytes: 7
  %loadMem_402091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402091 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402091)
  store %struct.Memory* %call_402091, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402098	 Bytes: 7
  %loadMem_402098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402098 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402098)
  store %struct.Memory* %call_402098, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40209f	 Bytes: 3
  %loadMem_40209f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209f)
  store %struct.Memory* %call_40209f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4020a2	 Bytes: 7
  %loadMem_4020a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a2 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a2)
  store %struct.Memory* %call_4020a2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4020a9	 Bytes: 5
  %loadMem_4020a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a9)
  store %struct.Memory* %call_4020a9, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 4020ae	 Bytes: 7
  %loadMem_4020ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ae = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ae)
  store %struct.Memory* %call_4020ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020b5	 Bytes: 4
  %loadMem_4020b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b5)
  store %struct.Memory* %call_4020b5, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4020b9	 Bytes: 5
  %loadMem_4020b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b9 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b9)
  store %struct.Memory* %call_4020b9, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4020be	 Bytes: 7
  %loadMem_4020be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020be = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020be)
  store %struct.Memory* %call_4020be, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020c5	 Bytes: 4
  %loadMem_4020c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c5)
  store %struct.Memory* %call_4020c5, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm0	 RIP: 4020c9	 Bytes: 5
  %loadMem_4020c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c9 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c9)
  store %struct.Memory* %call_4020c9, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 4020ce	 Bytes: 7
  %loadMem_4020ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ce = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ce)
  store %struct.Memory* %call_4020ce, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4020d5	 Bytes: 7
  %loadMem_4020d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d5)
  store %struct.Memory* %call_4020d5, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4020dc	 Bytes: 7
  %loadMem_4020dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020dc = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020dc)
  store %struct.Memory* %call_4020dc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020e3	 Bytes: 3
  %loadMem_4020e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e3)
  store %struct.Memory* %call_4020e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4020e6	 Bytes: 4
  %loadMem_4020e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e6 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e6)
  store %struct.Memory* %call_4020e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4020ea	 Bytes: 7
  %loadMem_4020ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ea = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ea)
  store %struct.Memory* %call_4020ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4020f1	 Bytes: 3
  %loadMem_4020f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f1)
  store %struct.Memory* %call_4020f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020f4	 Bytes: 4
  %loadMem_4020f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f4)
  store %struct.Memory* %call_4020f4, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 4020f8	 Bytes: 5
  %loadMem_4020f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f8 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f8)
  store %struct.Memory* %call_4020f8, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4020fd	 Bytes: 5
  %loadMem_4020fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fd = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fd)
  store %struct.Memory* %call_4020fd, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rax	 RIP: 402102	 Bytes: 7
  %loadMem_402102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402102 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402102)
  store %struct.Memory* %call_402102, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402109	 Bytes: 7
  %loadMem_402109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402109 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402109)
  store %struct.Memory* %call_402109, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402110	 Bytes: 5
  %loadMem_402110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402110 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402110)
  store %struct.Memory* %call_402110, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402115	 Bytes: 7
  %loadMem_402115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402115 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402115)
  store %struct.Memory* %call_402115, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40211c	 Bytes: 4
  %loadMem_40211c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211c)
  store %struct.Memory* %call_40211c, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 402120	 Bytes: 5
  %loadMem_402120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402120 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402120)
  store %struct.Memory* %call_402120, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 402125	 Bytes: 4
  %loadMem_402125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402125 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402125)
  store %struct.Memory* %call_402125, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402129	 Bytes: 7
  %loadMem_402129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402129 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402129)
  store %struct.Memory* %call_402129, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 402130	 Bytes: 7
  %loadMem_402130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402130 = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402130)
  store %struct.Memory* %call_402130, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402137	 Bytes: 3
  %loadMem_402137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402137 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402137)
  store %struct.Memory* %call_402137, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 40213a	 Bytes: 7
  %loadMem_40213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213a = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213a)
  store %struct.Memory* %call_40213a, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402141	 Bytes: 5
  %loadMem_402141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402141 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402141)
  store %struct.Memory* %call_402141, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 402146	 Bytes: 4
  %loadMem_402146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402146 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402146)
  store %struct.Memory* %call_402146, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 40214a	 Bytes: 5
  %loadMem_40214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214a = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214a)
  store %struct.Memory* %call_40214a, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 40214f	 Bytes: 7
  %loadMem_40214f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214f = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214f)
  store %struct.Memory* %call_40214f, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402156	 Bytes: 7
  %loadMem_402156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402156 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402156)
  store %struct.Memory* %call_402156, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 40215d	 Bytes: 5
  %loadMem_40215d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215d = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215d)
  store %struct.Memory* %call_40215d, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rax	 RIP: 402162	 Bytes: 7
  %loadMem_402162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402162 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402162)
  store %struct.Memory* %call_402162, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402169	 Bytes: 4
  %loadMem_402169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402169 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402169)
  store %struct.Memory* %call_402169, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 40216d	 Bytes: 5
  %loadMem_40216d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216d = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216d)
  store %struct.Memory* %call_40216d, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 402172	 Bytes: 4
  %loadMem_402172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402172 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402172)
  store %struct.Memory* %call_402172, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 402176	 Bytes: 7
  %loadMem_402176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402176 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402176)
  store %struct.Memory* %call_402176, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 40217d	 Bytes: 7
  %loadMem_40217d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217d = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217d)
  store %struct.Memory* %call_40217d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402184	 Bytes: 3
  %loadMem_402184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402184 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402184)
  store %struct.Memory* %call_402184, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402187	 Bytes: 4
  %loadMem_402187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402187 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402187)
  store %struct.Memory* %call_402187, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40218b	 Bytes: 7
  %loadMem_40218b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218b)
  store %struct.Memory* %call_40218b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402192	 Bytes: 3
  %loadMem_402192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402192 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402192)
  store %struct.Memory* %call_402192, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402195	 Bytes: 4
  %loadMem_402195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402195 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402195)
  store %struct.Memory* %call_402195, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm1	 RIP: 402199	 Bytes: 5
  %loadMem_402199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402199 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402199)
  store %struct.Memory* %call_402199, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 40219e	 Bytes: 4
  %loadMem_40219e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219e = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219e)
  store %struct.Memory* %call_40219e, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rax	 RIP: 4021a2	 Bytes: 7
  %loadMem_4021a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a2 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a2)
  store %struct.Memory* %call_4021a2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4021a9	 Bytes: 7
  %loadMem_4021a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a9 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a9)
  store %struct.Memory* %call_4021a9, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4021b0	 Bytes: 7
  %loadMem_4021b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b0 = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b0)
  store %struct.Memory* %call_4021b0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021b7	 Bytes: 3
  %loadMem_4021b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b7)
  store %struct.Memory* %call_4021b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4021ba	 Bytes: 4
  %loadMem_4021ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ba = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ba)
  store %struct.Memory* %call_4021ba, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4021be	 Bytes: 7
  %loadMem_4021be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021be = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021be)
  store %struct.Memory* %call_4021be, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021c5	 Bytes: 3
  %loadMem_4021c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c5)
  store %struct.Memory* %call_4021c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4021c8	 Bytes: 4
  %loadMem_4021c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c8 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c8)
  store %struct.Memory* %call_4021c8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4021cc	 Bytes: 5
  %loadMem_4021cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cc = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cc)
  store %struct.Memory* %call_4021cc, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4021d1	 Bytes: 4
  %loadMem_4021d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d1 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d1)
  store %struct.Memory* %call_4021d1, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4021d5	 Bytes: 7
  %loadMem_4021d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d5 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d5)
  store %struct.Memory* %call_4021d5, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 4021dc	 Bytes: 7
  %loadMem_4021dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021dc = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021dc)
  store %struct.Memory* %call_4021dc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4021e3	 Bytes: 3
  %loadMem_4021e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e3)
  store %struct.Memory* %call_4021e3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc0(%rbp), %rcx	 RIP: 4021e6	 Bytes: 7
  %loadMem_4021e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e6 = call %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e6)
  store %struct.Memory* %call_4021e6, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 4021ed	 Bytes: 5
  %loadMem_4021ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ed = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ed)
  store %struct.Memory* %call_4021ed, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4021f2	 Bytes: 4
  %loadMem_4021f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f2 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f2)
  store %struct.Memory* %call_4021f2, %struct.Memory** %MEMORY

  ; Code: movslq -0xbc(%rbp), %rcx	 RIP: 4021f6	 Bytes: 7
  %loadMem_4021f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f6 = call %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f6)
  store %struct.Memory* %call_4021f6, %struct.Memory** %MEMORY

  ; Code: imulq $0x8408, %rcx, %rcx	 RIP: 4021fd	 Bytes: 7
  %loadMem_4021fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fd = call %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fd)
  store %struct.Memory* %call_4021fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402204	 Bytes: 3
  %loadMem_402204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402204 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402204)
  store %struct.Memory* %call_402204, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 402207	 Bytes: 4
  %loadMem_402207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402207 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402207)
  store %struct.Memory* %call_402207, %struct.Memory** %MEMORY

  ; Code: imulq $0x208, %rcx, %rcx	 RIP: 40220b	 Bytes: 7
  %loadMem_40220b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220b = call %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220b)
  store %struct.Memory* %call_40220b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 402212	 Bytes: 3
  %loadMem_402212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402212 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402212)
  store %struct.Memory* %call_402212, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402215	 Bytes: 4
  %loadMem_402215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402215 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402215)
  store %struct.Memory* %call_402215, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402219	 Bytes: 5
  %loadMem_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402219 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402219)
  store %struct.Memory* %call_402219, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 40221e	 Bytes: 6
  %loadMem_40221e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221e = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221e)
  store %struct.Memory* %call_40221e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402224	 Bytes: 3
  %loadMem_402224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402224 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402224)
  store %struct.Memory* %call_402224, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 402227	 Bytes: 6
  %loadMem_402227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402227 = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402227)
  store %struct.Memory* %call_402227, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40159a	 RIP: 40222d	 Bytes: 5
  %loadMem_40222d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222d = call %struct.Memory* @routine_jmpq_.L_40159a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222d, i64 -3219, i64 5)
  store %struct.Memory* %call_40222d, %struct.Memory** %MEMORY

  br label %block_.L_40159a

  ; Code: .L_402232:	 RIP: 402232	 Bytes: 0
block_.L_402232:

  ; Code: jmpq .L_402237	 RIP: 402232	 Bytes: 5
  %loadMem_402232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402232 = call %struct.Memory* @routine_jmpq_.L_402237(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402232, i64 5, i64 5)
  store %struct.Memory* %call_402232, %struct.Memory** %MEMORY

  br label %block_.L_402237

  ; Code: .L_402237:	 RIP: 402237	 Bytes: 0
block_.L_402237:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 402237	 Bytes: 6
  %loadMem_402237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402237 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402237)
  store %struct.Memory* %call_402237, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40223d	 Bytes: 3
  %loadMem_40223d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223d)
  store %struct.Memory* %call_40223d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 402240	 Bytes: 6
  %loadMem_402240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402240 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402240)
  store %struct.Memory* %call_402240, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401581	 RIP: 402246	 Bytes: 5
  %loadMem_402246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402246 = call %struct.Memory* @routine_jmpq_.L_401581(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402246, i64 -3269, i64 5)
  store %struct.Memory* %call_402246, %struct.Memory** %MEMORY

  br label %block_.L_401581

  ; Code: .L_40224b:	 RIP: 40224b	 Bytes: 0
block_.L_40224b:

  ; Code: addq $0x38, %rsp	 RIP: 40224b	 Bytes: 4
  %loadMem_40224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224b = call %struct.Memory* @routine_addq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224b)
  store %struct.Memory* %call_40224b, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 40224f	 Bytes: 1
  %loadMem_40224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224f = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224f)
  store %struct.Memory* %call_40224f, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 402250	 Bytes: 2
  %loadMem_402250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402250 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402250)
  store %struct.Memory* %call_402250, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 402252	 Bytes: 2
  %loadMem_402252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402252 = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402252)
  store %struct.Memory* %call_402252, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 402254	 Bytes: 2
  %loadMem_402254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402254 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402254)
  store %struct.Memory* %call_402254, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 402256	 Bytes: 2
  %loadMem_402256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402256 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402256)
  store %struct.Memory* %call_402256, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 402258	 Bytes: 1
  %loadMem_402258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402258 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402258)
  store %struct.Memory* %call_402258, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 402259	 Bytes: 1
  %loadMem_402259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402259 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402259)
  store %struct.Memory* %call_402259, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_402259
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

define %struct.Memory* @routine_jge_.L_40224b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_402232(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_401913(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4015b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























































































































































































































































define %struct.Memory* @routine_jge_.L_401f52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















































































































































































































































































define %struct.Memory* @routine_jmpq_.L_401c20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40159a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402237(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401581(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

