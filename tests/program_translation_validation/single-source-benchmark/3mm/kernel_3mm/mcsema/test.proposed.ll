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


define %struct.Memory* @kernel_3mm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .kernel_3mm:	 RIP: 400dd0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400dd0	 Bytes: 1
  %loadMem_400dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd0)
  store %struct.Memory* %call_400dd0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400dd1	 Bytes: 3
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd1)
  store %struct.Memory* %call_400dd1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 400dd4	 Bytes: 2
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd4)
  store %struct.Memory* %call_400dd4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 400dd6	 Bytes: 2
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd6)
  store %struct.Memory* %call_400dd6, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 400dd8	 Bytes: 1
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd8 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd8)
  store %struct.Memory* %call_400dd8, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rbp), %rax	 RIP: 400dd9	 Bytes: 4
  %loadMem_400dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd9 = call %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd9)
  store %struct.Memory* %call_400dd9, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %r10	 RIP: 400ddd	 Bytes: 4
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddd = call %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddd)
  store %struct.Memory* %call_400ddd, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r11	 RIP: 400de1	 Bytes: 4
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de1 = call %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de1)
  store %struct.Memory* %call_400de1, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %rbx	 RIP: 400de5	 Bytes: 4
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de5 = call %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de5)
  store %struct.Memory* %call_400de5, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %r14	 RIP: 400de9	 Bytes: 4
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de9 = call %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de9)
  store %struct.Memory* %call_400de9, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r15	 RIP: 400ded	 Bytes: 4
  %loadMem_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ded = call %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ded)
  store %struct.Memory* %call_400ded, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x1c(%rbp)	 RIP: 400df1	 Bytes: 3
  %loadMem_400df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df1 = call %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df1)
  store %struct.Memory* %call_400df1, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 400df4	 Bytes: 3
  %loadMem_400df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df4 = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df4)
  store %struct.Memory* %call_400df4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 400df7	 Bytes: 3
  %loadMem_400df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df7 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df7)
  store %struct.Memory* %call_400df7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 400dfa	 Bytes: 3
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfa = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfa)
  store %struct.Memory* %call_400dfa, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2c(%rbp)	 RIP: 400dfd	 Bytes: 4
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfd = call %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfd)
  store %struct.Memory* %call_400dfd, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x38(%rbp)	 RIP: 400e01	 Bytes: 4
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e01 = call %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e01)
  store %struct.Memory* %call_400e01, %struct.Memory** %MEMORY

  ; Code: movq %r15, -0x40(%rbp)	 RIP: 400e05	 Bytes: 4
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e05 = call %struct.Memory* @routine_movq__r15__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e05)
  store %struct.Memory* %call_400e05, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x48(%rbp)	 RIP: 400e09	 Bytes: 4
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e09 = call %struct.Memory* @routine_movq__r14__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e09)
  store %struct.Memory* %call_400e09, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0x50(%rbp)	 RIP: 400e0d	 Bytes: 4
  %loadMem_400e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0d = call %struct.Memory* @routine_movq__rbx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0d)
  store %struct.Memory* %call_400e0d, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0x58(%rbp)	 RIP: 400e11	 Bytes: 4
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e11 = call %struct.Memory* @routine_movq__r11__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e11)
  store %struct.Memory* %call_400e11, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x60(%rbp)	 RIP: 400e15	 Bytes: 4
  %loadMem_400e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e15 = call %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e15)
  store %struct.Memory* %call_400e15, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 400e19	 Bytes: 4
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e19 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e19)
  store %struct.Memory* %call_400e19, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 400e1d	 Bytes: 7
  %loadMem_400e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1d = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1d)
  store %struct.Memory* %call_400e1d, %struct.Memory** %MEMORY

  ; Code: .L_400e24:	 RIP: 400e24	 Bytes: 0
  br label %block_.L_400e24
block_.L_400e24:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 400e24	 Bytes: 3
  %loadMem_400e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e24 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e24)
  store %struct.Memory* %call_400e24, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 400e27	 Bytes: 3
  %loadMem_400e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e27 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e27)
  store %struct.Memory* %call_400e27, %struct.Memory** %MEMORY

  ; Code: jge .L_400ef2	 RIP: 400e2a	 Bytes: 6
  %loadMem_400e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2a = call %struct.Memory* @routine_jge_.L_400ef2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2a, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_400e2a, %struct.Memory** %MEMORY

  %loadBr_400e2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e2a = icmp eq i8 %loadBr_400e2a, 1
  br i1 %cmpBr_400e2a, label %block_.L_400ef2, label %block_400e30

block_400e30:
  ; Code: movl $0x0, -0x70(%rbp)	 RIP: 400e30	 Bytes: 7
  %loadMem_400e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e30 = call %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e30)
  store %struct.Memory* %call_400e30, %struct.Memory** %MEMORY

  ; Code: .L_400e37:	 RIP: 400e37	 Bytes: 0
  br label %block_.L_400e37
block_.L_400e37:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 400e37	 Bytes: 3
  %loadMem_400e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e37 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e37)
  store %struct.Memory* %call_400e37, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 400e3a	 Bytes: 3
  %loadMem_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3a = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3a)
  store %struct.Memory* %call_400e3a, %struct.Memory** %MEMORY

  ; Code: jge .L_400edf	 RIP: 400e3d	 Bytes: 6
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3d = call %struct.Memory* @routine_jge_.L_400edf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3d, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_400e3d, %struct.Memory** %MEMORY

  %loadBr_400e3d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e3d = icmp eq i8 %loadBr_400e3d, 1
  br i1 %cmpBr_400e3d, label %block_.L_400edf, label %block_400e43

block_400e43:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400e43	 Bytes: 3
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e43 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e43)
  store %struct.Memory* %call_400e43, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 400e46	 Bytes: 4
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e46 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e46)
  store %struct.Memory* %call_400e46, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400e4a	 Bytes: 4
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4a = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4a)
  store %struct.Memory* %call_400e4a, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400e4e	 Bytes: 4
  %loadMem_400e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4e = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4e)
  store %struct.Memory* %call_400e4e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e52	 Bytes: 3
  %loadMem_400e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e52 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e52)
  store %struct.Memory* %call_400e52, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400e55	 Bytes: 4
  %loadMem_400e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e55 = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e55)
  store %struct.Memory* %call_400e55, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400e59	 Bytes: 5
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e59 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e59)
  store %struct.Memory* %call_400e59, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x74(%rbp)	 RIP: 400e5e	 Bytes: 7
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5e = call %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5e)
  store %struct.Memory* %call_400e5e, %struct.Memory** %MEMORY

  ; Code: .L_400e65:	 RIP: 400e65	 Bytes: 0
  br label %block_.L_400e65
block_.L_400e65:

  ; Code: movl -0x74(%rbp), %eax	 RIP: 400e65	 Bytes: 3
  %loadMem_400e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e65 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e65)
  store %struct.Memory* %call_400e65, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 400e68	 Bytes: 3
  %loadMem_400e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e68 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e68)
  store %struct.Memory* %call_400e68, %struct.Memory** %MEMORY

  ; Code: jge .L_400ecc	 RIP: 400e6b	 Bytes: 6
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6b = call %struct.Memory* @routine_jge_.L_400ecc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6b, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_400e6b, %struct.Memory** %MEMORY

  %loadBr_400e6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e6b = icmp eq i8 %loadBr_400e6b, 1
  br i1 %cmpBr_400e6b, label %block_.L_400ecc, label %block_400e71

block_400e71:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 400e71	 Bytes: 4
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e71 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e71)
  store %struct.Memory* %call_400e71, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400e75	 Bytes: 4
  %loadMem_400e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e75 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e75)
  store %struct.Memory* %call_400e75, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400e79	 Bytes: 4
  %loadMem_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e79 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e79)
  store %struct.Memory* %call_400e79, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e7d	 Bytes: 3
  %loadMem_400e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7d)
  store %struct.Memory* %call_400e7d, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 400e80	 Bytes: 4
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e80 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e80)
  store %struct.Memory* %call_400e80, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400e84	 Bytes: 5
  %loadMem_400e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e84 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e84)
  store %struct.Memory* %call_400e84, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400e89	 Bytes: 4
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e89 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e89)
  store %struct.Memory* %call_400e89, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 400e8d	 Bytes: 4
  %loadMem_400e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8d = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8d)
  store %struct.Memory* %call_400e8d, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400e91	 Bytes: 4
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e91 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e91)
  store %struct.Memory* %call_400e91, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e95	 Bytes: 3
  %loadMem_400e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e95 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e95)
  store %struct.Memory* %call_400e95, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400e98	 Bytes: 4
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e98 = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e98)
  store %struct.Memory* %call_400e98, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 400e9c	 Bytes: 5
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9c = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9c)
  store %struct.Memory* %call_400e9c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 400ea1	 Bytes: 4
  %loadMem_400ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea1 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea1)
  store %struct.Memory* %call_400ea1, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400ea5	 Bytes: 4
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea5 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea5)
  store %struct.Memory* %call_400ea5, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400ea9	 Bytes: 4
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea9 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea9)
  store %struct.Memory* %call_400ea9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400ead	 Bytes: 3
  %loadMem_400ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ead = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ead)
  store %struct.Memory* %call_400ead, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400eb0	 Bytes: 4
  %loadMem_400eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb0 = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb0)
  store %struct.Memory* %call_400eb0, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 400eb4	 Bytes: 5
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb4 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb4)
  store %struct.Memory* %call_400eb4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400eb9	 Bytes: 5
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb9 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb9)
  store %struct.Memory* %call_400eb9, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 400ebe	 Bytes: 3
  %loadMem_400ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebe = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebe)
  store %struct.Memory* %call_400ebe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ec1	 Bytes: 3
  %loadMem_400ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec1)
  store %struct.Memory* %call_400ec1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 400ec4	 Bytes: 3
  %loadMem_400ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec4 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec4)
  store %struct.Memory* %call_400ec4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e65	 RIP: 400ec7	 Bytes: 5
  %loadMem_400ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec7 = call %struct.Memory* @routine_jmpq_.L_400e65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec7, i64 -98, i64 5)
  store %struct.Memory* %call_400ec7, %struct.Memory** %MEMORY

  br label %block_.L_400e65

  ; Code: .L_400ecc:	 RIP: 400ecc	 Bytes: 0
block_.L_400ecc:

  ; Code: jmpq .L_400ed1	 RIP: 400ecc	 Bytes: 5
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecc = call %struct.Memory* @routine_jmpq_.L_400ed1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecc, i64 5, i64 5)
  store %struct.Memory* %call_400ecc, %struct.Memory** %MEMORY

  br label %block_.L_400ed1

  ; Code: .L_400ed1:	 RIP: 400ed1	 Bytes: 0
block_.L_400ed1:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 400ed1	 Bytes: 3
  %loadMem_400ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed1 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed1)
  store %struct.Memory* %call_400ed1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ed4	 Bytes: 3
  %loadMem_400ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed4)
  store %struct.Memory* %call_400ed4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 400ed7	 Bytes: 3
  %loadMem_400ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed7 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed7)
  store %struct.Memory* %call_400ed7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e37	 RIP: 400eda	 Bytes: 5
  %loadMem_400eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eda = call %struct.Memory* @routine_jmpq_.L_400e37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eda, i64 -163, i64 5)
  store %struct.Memory* %call_400eda, %struct.Memory** %MEMORY

  br label %block_.L_400e37

  ; Code: .L_400edf:	 RIP: 400edf	 Bytes: 0
block_.L_400edf:

  ; Code: jmpq .L_400ee4	 RIP: 400edf	 Bytes: 5
  %loadMem_400edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400edf = call %struct.Memory* @routine_jmpq_.L_400ee4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400edf, i64 5, i64 5)
  store %struct.Memory* %call_400edf, %struct.Memory** %MEMORY

  br label %block_.L_400ee4

  ; Code: .L_400ee4:	 RIP: 400ee4	 Bytes: 0
block_.L_400ee4:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 400ee4	 Bytes: 3
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee4 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee4)
  store %struct.Memory* %call_400ee4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ee7	 Bytes: 3
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee7)
  store %struct.Memory* %call_400ee7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 400eea	 Bytes: 3
  %loadMem_400eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eea = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eea)
  store %struct.Memory* %call_400eea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e24	 RIP: 400eed	 Bytes: 5
  %loadMem_400eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eed = call %struct.Memory* @routine_jmpq_.L_400e24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eed, i64 -201, i64 5)
  store %struct.Memory* %call_400eed, %struct.Memory** %MEMORY

  br label %block_.L_400e24

  ; Code: .L_400ef2:	 RIP: 400ef2	 Bytes: 0
block_.L_400ef2:

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 400ef2	 Bytes: 7
  %loadMem_400ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef2 = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef2)
  store %struct.Memory* %call_400ef2, %struct.Memory** %MEMORY

  ; Code: .L_400ef9:	 RIP: 400ef9	 Bytes: 0
  br label %block_.L_400ef9
block_.L_400ef9:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 400ef9	 Bytes: 3
  %loadMem_400ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef9 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef9)
  store %struct.Memory* %call_400ef9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 400efc	 Bytes: 3
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efc = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efc)
  store %struct.Memory* %call_400efc, %struct.Memory** %MEMORY

  ; Code: jge .L_400fc7	 RIP: 400eff	 Bytes: 6
  %loadMem_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eff = call %struct.Memory* @routine_jge_.L_400fc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eff, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_400eff, %struct.Memory** %MEMORY

  %loadBr_400eff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eff = icmp eq i8 %loadBr_400eff, 1
  br i1 %cmpBr_400eff, label %block_.L_400fc7, label %block_400f05

block_400f05:
  ; Code: movl $0x0, -0x70(%rbp)	 RIP: 400f05	 Bytes: 7
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f05 = call %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f05)
  store %struct.Memory* %call_400f05, %struct.Memory** %MEMORY

  ; Code: .L_400f0c:	 RIP: 400f0c	 Bytes: 0
  br label %block_.L_400f0c
block_.L_400f0c:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 400f0c	 Bytes: 3
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0c = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0c)
  store %struct.Memory* %call_400f0c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 400f0f	 Bytes: 3
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0f = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0f)
  store %struct.Memory* %call_400f0f, %struct.Memory** %MEMORY

  ; Code: jge .L_400fb4	 RIP: 400f12	 Bytes: 6
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f12 = call %struct.Memory* @routine_jge_.L_400fb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f12, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_400f12, %struct.Memory** %MEMORY

  %loadBr_400f12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f12 = icmp eq i8 %loadBr_400f12, 1
  br i1 %cmpBr_400f12, label %block_.L_400fb4, label %block_400f18

block_400f18:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400f18	 Bytes: 3
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f18 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f18)
  store %struct.Memory* %call_400f18, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 400f1b	 Bytes: 4
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1b = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1b)
  store %struct.Memory* %call_400f1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400f1f	 Bytes: 4
  %loadMem_400f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1f = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1f)
  store %struct.Memory* %call_400f1f, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f23	 Bytes: 4
  %loadMem_400f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f23 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f23)
  store %struct.Memory* %call_400f23, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f27	 Bytes: 3
  %loadMem_400f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f27 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f27)
  store %struct.Memory* %call_400f27, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400f2a	 Bytes: 4
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2a = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2a)
  store %struct.Memory* %call_400f2a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400f2e	 Bytes: 5
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2e = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2e)
  store %struct.Memory* %call_400f2e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x74(%rbp)	 RIP: 400f33	 Bytes: 7
  %loadMem_400f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f33 = call %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f33)
  store %struct.Memory* %call_400f33, %struct.Memory** %MEMORY

  ; Code: .L_400f3a:	 RIP: 400f3a	 Bytes: 0
  br label %block_.L_400f3a
block_.L_400f3a:

  ; Code: movl -0x74(%rbp), %eax	 RIP: 400f3a	 Bytes: 3
  %loadMem_400f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3a = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3a)
  store %struct.Memory* %call_400f3a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 400f3d	 Bytes: 3
  %loadMem_400f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3d = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3d)
  store %struct.Memory* %call_400f3d, %struct.Memory** %MEMORY

  ; Code: jge .L_400fa1	 RIP: 400f40	 Bytes: 6
  %loadMem_400f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f40 = call %struct.Memory* @routine_jge_.L_400fa1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f40, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_400f40, %struct.Memory** %MEMORY

  %loadBr_400f40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f40 = icmp eq i8 %loadBr_400f40, 1
  br i1 %cmpBr_400f40, label %block_.L_400fa1, label %block_400f46

block_400f46:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 400f46	 Bytes: 4
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f46 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f46)
  store %struct.Memory* %call_400f46, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400f4a	 Bytes: 4
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4a = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4a)
  store %struct.Memory* %call_400f4a, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f4e	 Bytes: 4
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4e = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4e)
  store %struct.Memory* %call_400f4e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f52	 Bytes: 3
  %loadMem_400f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f52 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f52)
  store %struct.Memory* %call_400f52, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 400f55	 Bytes: 4
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f55 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f55)
  store %struct.Memory* %call_400f55, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 400f59	 Bytes: 5
  %loadMem_400f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f59 = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f59)
  store %struct.Memory* %call_400f59, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 400f5e	 Bytes: 4
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5e)
  store %struct.Memory* %call_400f5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 400f62	 Bytes: 4
  %loadMem_400f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f62 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f62)
  store %struct.Memory* %call_400f62, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f66	 Bytes: 4
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f66 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f66)
  store %struct.Memory* %call_400f66, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f6a	 Bytes: 3
  %loadMem_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6a)
  store %struct.Memory* %call_400f6a, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400f6d	 Bytes: 4
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6d = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6d)
  store %struct.Memory* %call_400f6d, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 400f71	 Bytes: 5
  %loadMem_400f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f71 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f71)
  store %struct.Memory* %call_400f71, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 400f76	 Bytes: 4
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f76 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f76)
  store %struct.Memory* %call_400f76, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400f7a	 Bytes: 4
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7a = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7a)
  store %struct.Memory* %call_400f7a, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400f7e	 Bytes: 4
  %loadMem_400f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7e = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7e)
  store %struct.Memory* %call_400f7e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400f82	 Bytes: 3
  %loadMem_400f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f82 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f82)
  store %struct.Memory* %call_400f82, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400f85	 Bytes: 4
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f85 = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f85)
  store %struct.Memory* %call_400f85, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 400f89	 Bytes: 5
  %loadMem_400f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f89 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f89)
  store %struct.Memory* %call_400f89, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 400f8e	 Bytes: 5
  %loadMem_400f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8e = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8e)
  store %struct.Memory* %call_400f8e, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 400f93	 Bytes: 3
  %loadMem_400f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f93 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f93)
  store %struct.Memory* %call_400f93, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f96	 Bytes: 3
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f96 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f96)
  store %struct.Memory* %call_400f96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 400f99	 Bytes: 3
  %loadMem_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f99 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f99)
  store %struct.Memory* %call_400f99, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400f3a	 RIP: 400f9c	 Bytes: 5
  %loadMem_400f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9c = call %struct.Memory* @routine_jmpq_.L_400f3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9c, i64 -98, i64 5)
  store %struct.Memory* %call_400f9c, %struct.Memory** %MEMORY

  br label %block_.L_400f3a

  ; Code: .L_400fa1:	 RIP: 400fa1	 Bytes: 0
block_.L_400fa1:

  ; Code: jmpq .L_400fa6	 RIP: 400fa1	 Bytes: 5
  %loadMem_400fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa1 = call %struct.Memory* @routine_jmpq_.L_400fa6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa1, i64 5, i64 5)
  store %struct.Memory* %call_400fa1, %struct.Memory** %MEMORY

  br label %block_.L_400fa6

  ; Code: .L_400fa6:	 RIP: 400fa6	 Bytes: 0
block_.L_400fa6:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 400fa6	 Bytes: 3
  %loadMem_400fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa6 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa6)
  store %struct.Memory* %call_400fa6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fa9	 Bytes: 3
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa9)
  store %struct.Memory* %call_400fa9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 400fac	 Bytes: 3
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fac = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fac)
  store %struct.Memory* %call_400fac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400f0c	 RIP: 400faf	 Bytes: 5
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faf = call %struct.Memory* @routine_jmpq_.L_400f0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faf, i64 -163, i64 5)
  store %struct.Memory* %call_400faf, %struct.Memory** %MEMORY

  br label %block_.L_400f0c

  ; Code: .L_400fb4:	 RIP: 400fb4	 Bytes: 0
block_.L_400fb4:

  ; Code: jmpq .L_400fb9	 RIP: 400fb4	 Bytes: 5
  %loadMem_400fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb4 = call %struct.Memory* @routine_jmpq_.L_400fb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb4, i64 5, i64 5)
  store %struct.Memory* %call_400fb4, %struct.Memory** %MEMORY

  br label %block_.L_400fb9

  ; Code: .L_400fb9:	 RIP: 400fb9	 Bytes: 0
block_.L_400fb9:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 400fb9	 Bytes: 3
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb9 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb9)
  store %struct.Memory* %call_400fb9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fbc	 Bytes: 3
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbc)
  store %struct.Memory* %call_400fbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 400fbf	 Bytes: 3
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbf = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbf)
  store %struct.Memory* %call_400fbf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ef9	 RIP: 400fc2	 Bytes: 5
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc2 = call %struct.Memory* @routine_jmpq_.L_400ef9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc2, i64 -201, i64 5)
  store %struct.Memory* %call_400fc2, %struct.Memory** %MEMORY

  br label %block_.L_400ef9

  ; Code: .L_400fc7:	 RIP: 400fc7	 Bytes: 0
block_.L_400fc7:

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 400fc7	 Bytes: 7
  %loadMem_400fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc7 = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc7)
  store %struct.Memory* %call_400fc7, %struct.Memory** %MEMORY

  ; Code: .L_400fce:	 RIP: 400fce	 Bytes: 0
  br label %block_.L_400fce
block_.L_400fce:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 400fce	 Bytes: 3
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fce = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fce)
  store %struct.Memory* %call_400fce, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 400fd1	 Bytes: 3
  %loadMem_400fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd1 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd1)
  store %struct.Memory* %call_400fd1, %struct.Memory** %MEMORY

  ; Code: jge .L_40109c	 RIP: 400fd4	 Bytes: 6
  %loadMem_400fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd4 = call %struct.Memory* @routine_jge_.L_40109c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd4, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_400fd4, %struct.Memory** %MEMORY

  %loadBr_400fd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fd4 = icmp eq i8 %loadBr_400fd4, 1
  br i1 %cmpBr_400fd4, label %block_.L_40109c, label %block_400fda

block_400fda:
  ; Code: movl $0x0, -0x70(%rbp)	 RIP: 400fda	 Bytes: 7
  %loadMem_400fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fda = call %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fda)
  store %struct.Memory* %call_400fda, %struct.Memory** %MEMORY

  ; Code: .L_400fe1:	 RIP: 400fe1	 Bytes: 0
  br label %block_.L_400fe1
block_.L_400fe1:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 400fe1	 Bytes: 3
  %loadMem_400fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe1 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe1)
  store %struct.Memory* %call_400fe1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 400fe4	 Bytes: 3
  %loadMem_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe4 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe4)
  store %struct.Memory* %call_400fe4, %struct.Memory** %MEMORY

  ; Code: jge .L_401089	 RIP: 400fe7	 Bytes: 6
  %loadMem_400fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe7 = call %struct.Memory* @routine_jge_.L_401089(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe7, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_400fe7, %struct.Memory** %MEMORY

  %loadBr_400fe7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fe7 = icmp eq i8 %loadBr_400fe7, 1
  br i1 %cmpBr_400fe7, label %block_.L_401089, label %block_400fed

block_400fed:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400fed	 Bytes: 3
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fed = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fed)
  store %struct.Memory* %call_400fed, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 400ff0	 Bytes: 4
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff0 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff0)
  store %struct.Memory* %call_400ff0, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 400ff4	 Bytes: 4
  %loadMem_400ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff4 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff4)
  store %struct.Memory* %call_400ff4, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 400ff8	 Bytes: 4
  %loadMem_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff8 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff8)
  store %struct.Memory* %call_400ff8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400ffc	 Bytes: 3
  %loadMem_400ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffc)
  store %struct.Memory* %call_400ffc, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 400fff	 Bytes: 4
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fff = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fff)
  store %struct.Memory* %call_400fff, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401003	 Bytes: 5
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401003 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401003)
  store %struct.Memory* %call_401003, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x74(%rbp)	 RIP: 401008	 Bytes: 7
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401008 = call %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401008)
  store %struct.Memory* %call_401008, %struct.Memory** %MEMORY

  ; Code: .L_40100f:	 RIP: 40100f	 Bytes: 0
  br label %block_.L_40100f
block_.L_40100f:

  ; Code: movl -0x74(%rbp), %eax	 RIP: 40100f	 Bytes: 3
  %loadMem_40100f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100f = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100f)
  store %struct.Memory* %call_40100f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 401012	 Bytes: 3
  %loadMem_401012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401012 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401012)
  store %struct.Memory* %call_401012, %struct.Memory** %MEMORY

  ; Code: jge .L_401076	 RIP: 401015	 Bytes: 6
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401015 = call %struct.Memory* @routine_jge_.L_401076(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401015, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_401015, %struct.Memory** %MEMORY

  %loadBr_401015 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401015 = icmp eq i8 %loadBr_401015, 1
  br i1 %cmpBr_401015, label %block_.L_401076, label %block_40101b

block_40101b:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 40101b	 Bytes: 4
  %loadMem_40101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101b)
  store %struct.Memory* %call_40101b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40101f	 Bytes: 4
  %loadMem_40101f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101f = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101f)
  store %struct.Memory* %call_40101f, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 401023	 Bytes: 4
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401023 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401023)
  store %struct.Memory* %call_401023, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401027	 Bytes: 3
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401027 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401027)
  store %struct.Memory* %call_401027, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 40102a	 Bytes: 4
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102a = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102a)
  store %struct.Memory* %call_40102a, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 40102e	 Bytes: 5
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102e = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102e)
  store %struct.Memory* %call_40102e, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 401033	 Bytes: 4
  %loadMem_401033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401033 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401033)
  store %struct.Memory* %call_401033, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 401037	 Bytes: 4
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401037 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401037)
  store %struct.Memory* %call_401037, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 40103b	 Bytes: 4
  %loadMem_40103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103b = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103b)
  store %struct.Memory* %call_40103b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40103f	 Bytes: 3
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103f)
  store %struct.Memory* %call_40103f, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 401042	 Bytes: 4
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401042 = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401042)
  store %struct.Memory* %call_401042, %struct.Memory** %MEMORY

  ; Code: mulsd (%rax,%rcx,8), %xmm0	 RIP: 401046	 Bytes: 5
  %loadMem_401046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401046 = call %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401046)
  store %struct.Memory* %call_401046, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rax	 RIP: 40104b	 Bytes: 4
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104b)
  store %struct.Memory* %call_40104b, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 40104f	 Bytes: 4
  %loadMem_40104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104f = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104f)
  store %struct.Memory* %call_40104f, %struct.Memory** %MEMORY

  ; Code: shlq $0xd, %rcx	 RIP: 401053	 Bytes: 4
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401053 = call %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401053)
  store %struct.Memory* %call_401053, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401057	 Bytes: 3
  %loadMem_401057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401057 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401057)
  store %struct.Memory* %call_401057, %struct.Memory** %MEMORY

  ; Code: movslq -0x70(%rbp), %rcx	 RIP: 40105a	 Bytes: 4
  %loadMem_40105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105a = call %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105a)
  store %struct.Memory* %call_40105a, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 40105e	 Bytes: 5
  %loadMem_40105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105e = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105e)
  store %struct.Memory* %call_40105e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 401063	 Bytes: 5
  %loadMem_401063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401063 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401063)
  store %struct.Memory* %call_401063, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 401068	 Bytes: 3
  %loadMem_401068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401068 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401068)
  store %struct.Memory* %call_401068, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40106b	 Bytes: 3
  %loadMem_40106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106b)
  store %struct.Memory* %call_40106b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 40106e	 Bytes: 3
  %loadMem_40106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106e = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106e)
  store %struct.Memory* %call_40106e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40100f	 RIP: 401071	 Bytes: 5
  %loadMem_401071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401071 = call %struct.Memory* @routine_jmpq_.L_40100f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401071, i64 -98, i64 5)
  store %struct.Memory* %call_401071, %struct.Memory** %MEMORY

  br label %block_.L_40100f

  ; Code: .L_401076:	 RIP: 401076	 Bytes: 0
block_.L_401076:

  ; Code: jmpq .L_40107b	 RIP: 401076	 Bytes: 5
  %loadMem_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401076 = call %struct.Memory* @routine_jmpq_.L_40107b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401076, i64 5, i64 5)
  store %struct.Memory* %call_401076, %struct.Memory** %MEMORY

  br label %block_.L_40107b

  ; Code: .L_40107b:	 RIP: 40107b	 Bytes: 0
block_.L_40107b:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 40107b	 Bytes: 3
  %loadMem_40107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107b = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107b)
  store %struct.Memory* %call_40107b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40107e	 Bytes: 3
  %loadMem_40107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107e)
  store %struct.Memory* %call_40107e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 401081	 Bytes: 3
  %loadMem_401081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401081 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401081)
  store %struct.Memory* %call_401081, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400fe1	 RIP: 401084	 Bytes: 5
  %loadMem_401084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401084 = call %struct.Memory* @routine_jmpq_.L_400fe1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401084, i64 -163, i64 5)
  store %struct.Memory* %call_401084, %struct.Memory** %MEMORY

  br label %block_.L_400fe1

  ; Code: .L_401089:	 RIP: 401089	 Bytes: 0
block_.L_401089:

  ; Code: jmpq .L_40108e	 RIP: 401089	 Bytes: 5
  %loadMem_401089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401089 = call %struct.Memory* @routine_jmpq_.L_40108e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401089, i64 5, i64 5)
  store %struct.Memory* %call_401089, %struct.Memory** %MEMORY

  br label %block_.L_40108e

  ; Code: .L_40108e:	 RIP: 40108e	 Bytes: 0
block_.L_40108e:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 40108e	 Bytes: 3
  %loadMem_40108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108e = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108e)
  store %struct.Memory* %call_40108e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401091	 Bytes: 3
  %loadMem_401091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401091 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401091)
  store %struct.Memory* %call_401091, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 401094	 Bytes: 3
  %loadMem_401094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401094 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401094)
  store %struct.Memory* %call_401094, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400fce	 RIP: 401097	 Bytes: 5
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401097 = call %struct.Memory* @routine_jmpq_.L_400fce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401097, i64 -201, i64 5)
  store %struct.Memory* %call_401097, %struct.Memory** %MEMORY

  br label %block_.L_400fce

  ; Code: .L_40109c:	 RIP: 40109c	 Bytes: 0
block_.L_40109c:

  ; Code: popq %rbx	 RIP: 40109c	 Bytes: 1
  %loadMem_40109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109c = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109c)
  store %struct.Memory* %call_40109c, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 40109d	 Bytes: 2
  %loadMem_40109d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109d = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109d)
  store %struct.Memory* %call_40109d, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 40109f	 Bytes: 2
  %loadMem_40109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109f = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109f)
  store %struct.Memory* %call_40109f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4010a1	 Bytes: 1
  %loadMem_4010a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a1 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a1)
  store %struct.Memory* %call_4010a1, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4010a2	 Bytes: 1
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a2 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a2)
  store %struct.Memory* %call_4010a2, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4010a2
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r15__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %R10
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 108
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

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_400ef2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 32
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400edf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
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


define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jge_.L_400ecc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
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


define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
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

define %struct.Memory* @routine_jmpq_.L_400e65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400ed1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400e37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400ee4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400e24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_400fc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_400fb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_400fa1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jmpq_.L_400f3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400fa6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400f0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400fb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400ef9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_40109c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_401089(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jge_.L_401076(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














































define %struct.Memory* @routine_jmpq_.L_40100f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40107b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400fe1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40108e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_400fce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

