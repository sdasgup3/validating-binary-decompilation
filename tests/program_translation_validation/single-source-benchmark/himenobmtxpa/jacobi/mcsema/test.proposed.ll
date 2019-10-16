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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

; Function Declaraions
declare i32 @llvm.ctpop.i32(i32) #2
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)


; Data Access Globals


define %struct.Memory* @jacobi(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .jacobi:	 RIP: 400cf0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400cf0	 Bytes: 1
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf0)
  store %struct.Memory* %call_400cf0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400cf1	 Bytes: 3
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf1)
  store %struct.Memory* %call_400cf1, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rax	 RIP: 400cf4	 Bytes: 4
  %loadMem_400cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf4 = call %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf4)
  store %struct.Memory* %call_400cf4, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r10	 RIP: 400cf8	 Bytes: 4
  %loadMem_400cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf8 = call %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf8)
  store %struct.Memory* %call_400cf8, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 400cfc	 Bytes: 3
  %loadMem_400cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfc = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfc)
  store %struct.Memory* %call_400cfc, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 400cff	 Bytes: 4
  %loadMem_400cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cff = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cff)
  store %struct.Memory* %call_400cff, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 400d03	 Bytes: 4
  %loadMem_400d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d03 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d03)
  store %struct.Memory* %call_400d03, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 400d07	 Bytes: 4
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d07 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d07)
  store %struct.Memory* %call_400d07, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x28(%rbp)	 RIP: 400d0b	 Bytes: 4
  %loadMem_400d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0b = call %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0b)
  store %struct.Memory* %call_400d0b, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x30(%rbp)	 RIP: 400d0f	 Bytes: 4
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0f = call %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0f)
  store %struct.Memory* %call_400d0f, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x38(%rbp)	 RIP: 400d13	 Bytes: 4
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d13 = call %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d13)
  store %struct.Memory* %call_400d13, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 400d17	 Bytes: 4
  %loadMem_400d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d17 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d17)
  store %struct.Memory* %call_400d17, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400d1b	 Bytes: 4
  %loadMem_400d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1b)
  store %struct.Memory* %call_400d1b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 400d1f	 Bytes: 3
  %loadMem_400d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1f = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1f)
  store %struct.Memory* %call_400d1f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d22	 Bytes: 3
  %loadMem_400d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d22 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d22)
  store %struct.Memory* %call_400d22, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x54(%rbp)	 RIP: 400d25	 Bytes: 3
  %loadMem_400d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d25 = call %struct.Memory* @routine_movl__edi__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d25)
  store %struct.Memory* %call_400d25, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400d28	 Bytes: 4
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d28 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d28)
  store %struct.Memory* %call_400d28, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edi	 RIP: 400d2c	 Bytes: 3
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2c = call %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2c)
  store %struct.Memory* %call_400d2c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d2f	 Bytes: 3
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2f = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2f)
  store %struct.Memory* %call_400d2f, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x58(%rbp)	 RIP: 400d32	 Bytes: 3
  %loadMem_400d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d32 = call %struct.Memory* @routine_movl__edi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d32)
  store %struct.Memory* %call_400d32, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400d35	 Bytes: 4
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d35 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d35)
  store %struct.Memory* %call_400d35, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edi	 RIP: 400d39	 Bytes: 3
  %loadMem_400d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d39 = call %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d39)
  store %struct.Memory* %call_400d39, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 400d3c	 Bytes: 3
  %loadMem_400d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3c = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3c)
  store %struct.Memory* %call_400d3c, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x5c(%rbp)	 RIP: 400d3f	 Bytes: 3
  %loadMem_400d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3f = call %struct.Memory* @routine_movl__edi__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3f)
  store %struct.Memory* %call_400d3f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 400d42	 Bytes: 7
  %loadMem_400d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d42 = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d42)
  store %struct.Memory* %call_400d42, %struct.Memory** %MEMORY

  ; Code: .L_400d49:	 RIP: 400d49	 Bytes: 0
  br label %block_.L_400d49
block_.L_400d49:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 400d49	 Bytes: 3
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d49 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d49)
  store %struct.Memory* %call_400d49, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 400d4c	 Bytes: 3
  %loadMem_400d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4c)
  store %struct.Memory* %call_400d4c, %struct.Memory** %MEMORY

  ; Code: jge .L_401989	 RIP: 400d4f	 Bytes: 6
  %loadMem_400d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4f = call %struct.Memory* @routine_jge_.L_401989(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4f, i8* %BRANCH_TAKEN, i64 3130, i64 6, i64 6)
  store %struct.Memory* %call_400d4f, %struct.Memory** %MEMORY

  %loadBr_400d4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d4f = icmp eq i8 %loadBr_400d4f, 1
  br i1 %cmpBr_400d4f, label %block_.L_401989, label %block_400d55

block_400d55:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400d55	 Bytes: 3
  %loadMem_400d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d55 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d55)
  store %struct.Memory* %call_400d55, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x60(%rbp)	 RIP: 400d58	 Bytes: 5
  %loadMem_400d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d58 = call %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d58)
  store %struct.Memory* %call_400d58, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 400d5d	 Bytes: 7
  %loadMem_400d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5d = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5d)
  store %struct.Memory* %call_400d5d, %struct.Memory** %MEMORY

  ; Code: .L_400d64:	 RIP: 400d64	 Bytes: 0
  br label %block_.L_400d64
block_.L_400d64:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 400d64	 Bytes: 3
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d64 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d64)
  store %struct.Memory* %call_400d64, %struct.Memory** %MEMORY

  ; Code: cmpl -0x54(%rbp), %eax	 RIP: 400d67	 Bytes: 3
  %loadMem_400d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d67 = call %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d67)
  store %struct.Memory* %call_400d67, %struct.Memory** %MEMORY

  ; Code: jge .L_401871	 RIP: 400d6a	 Bytes: 6
  %loadMem_400d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6a = call %struct.Memory* @routine_jge_.L_401871(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6a, i8* %BRANCH_TAKEN, i64 2823, i64 6, i64 6)
  store %struct.Memory* %call_400d6a, %struct.Memory** %MEMORY

  %loadBr_400d6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d6a = icmp eq i8 %loadBr_400d6a, 1
  br i1 %cmpBr_400d6a, label %block_.L_401871, label %block_400d70

block_400d70:
  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 400d70	 Bytes: 7
  %loadMem_400d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d70 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d70)
  store %struct.Memory* %call_400d70, %struct.Memory** %MEMORY

  ; Code: .L_400d77:	 RIP: 400d77	 Bytes: 0
  br label %block_.L_400d77
block_.L_400d77:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 400d77	 Bytes: 3
  %loadMem_400d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d77 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d77)
  store %struct.Memory* %call_400d77, %struct.Memory** %MEMORY

  ; Code: cmpl -0x58(%rbp), %eax	 RIP: 400d7a	 Bytes: 3
  %loadMem_400d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7a = call %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7a)
  store %struct.Memory* %call_400d7a, %struct.Memory** %MEMORY

  ; Code: jge .L_40185e	 RIP: 400d7d	 Bytes: 6
  %loadMem_400d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7d = call %struct.Memory* @routine_jge_.L_40185e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7d, i8* %BRANCH_TAKEN, i64 2785, i64 6, i64 6)
  store %struct.Memory* %call_400d7d, %struct.Memory** %MEMORY

  %loadBr_400d7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d7d = icmp eq i8 %loadBr_400d7d, 1
  br i1 %cmpBr_400d7d, label %block_.L_40185e, label %block_400d83

block_400d83:
  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 400d83	 Bytes: 7
  %loadMem_400d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d83 = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d83)
  store %struct.Memory* %call_400d83, %struct.Memory** %MEMORY

  ; Code: .L_400d8a:	 RIP: 400d8a	 Bytes: 0
  br label %block_.L_400d8a
block_.L_400d8a:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 400d8a	 Bytes: 3
  %loadMem_400d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8a = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8a)
  store %struct.Memory* %call_400d8a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5c(%rbp), %eax	 RIP: 400d8d	 Bytes: 3
  %loadMem_400d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8d = call %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8d)
  store %struct.Memory* %call_400d8d, %struct.Memory** %MEMORY

  ; Code: jge .L_40184b	 RIP: 400d90	 Bytes: 6
  %loadMem_400d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d90 = call %struct.Memory* @routine_jge_.L_40184b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d90, i8* %BRANCH_TAKEN, i64 2747, i64 6, i64 6)
  store %struct.Memory* %call_400d90, %struct.Memory** %MEMORY

  %loadBr_400d90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d90 = icmp eq i8 %loadBr_400d90, 1
  br i1 %cmpBr_400d90, label %block_.L_40184b, label %block_400d96

block_400d96:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400d96	 Bytes: 4
  %loadMem_400d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d96 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d96)
  store %struct.Memory* %call_400d96, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400d9a	 Bytes: 3
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9a)
  store %struct.Memory* %call_400d9a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400d9d	 Bytes: 4
  %loadMem_400d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9d)
  store %struct.Memory* %call_400d9d, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400da1	 Bytes: 4
  %loadMem_400da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da1 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da1)
  store %struct.Memory* %call_400da1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400da5	 Bytes: 4
  %loadMem_400da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da5)
  store %struct.Memory* %call_400da5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400da9	 Bytes: 4
  %loadMem_400da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da9 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da9)
  store %struct.Memory* %call_400da9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dad	 Bytes: 4
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dad)
  store %struct.Memory* %call_400dad, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400db1	 Bytes: 4
  %loadMem_400db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db1 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db1)
  store %struct.Memory* %call_400db1, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400db5	 Bytes: 3
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db5)
  store %struct.Memory* %call_400db5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400db8	 Bytes: 4
  %loadMem_400db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db8)
  store %struct.Memory* %call_400db8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400dbc	 Bytes: 4
  %loadMem_400dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbc = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbc)
  store %struct.Memory* %call_400dbc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dc0	 Bytes: 4
  %loadMem_400dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc0)
  store %struct.Memory* %call_400dc0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400dc4	 Bytes: 4
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc4)
  store %struct.Memory* %call_400dc4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400dc8	 Bytes: 2
  %loadMem_400dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc8)
  store %struct.Memory* %call_400dc8, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400dca	 Bytes: 3
  %loadMem_400dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dca = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dca)
  store %struct.Memory* %call_400dca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400dcd	 Bytes: 4
  %loadMem_400dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcd)
  store %struct.Memory* %call_400dcd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400dd1	 Bytes: 4
  %loadMem_400dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd1)
  store %struct.Memory* %call_400dd1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400dd5	 Bytes: 2
  %loadMem_400dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd5)
  store %struct.Memory* %call_400dd5, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400dd7	 Bytes: 3
  %loadMem_400dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd7 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd7)
  store %struct.Memory* %call_400dd7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400dda	 Bytes: 3
  %loadMem_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dda = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dda)
  store %struct.Memory* %call_400dda, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 400ddd	 Bytes: 5
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddd = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddd)
  store %struct.Memory* %call_400ddd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400de2	 Bytes: 4
  %loadMem_400de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de2)
  store %struct.Memory* %call_400de2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400de6	 Bytes: 3
  %loadMem_400de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de6)
  store %struct.Memory* %call_400de6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400de9	 Bytes: 4
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de9)
  store %struct.Memory* %call_400de9, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400ded	 Bytes: 4
  %loadMem_400ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ded = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ded)
  store %struct.Memory* %call_400ded, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400df1	 Bytes: 4
  %loadMem_400df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df1)
  store %struct.Memory* %call_400df1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400df5	 Bytes: 4
  %loadMem_400df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df5 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df5)
  store %struct.Memory* %call_400df5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400df9	 Bytes: 4
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df9)
  store %struct.Memory* %call_400df9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400dfd	 Bytes: 4
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfd = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfd)
  store %struct.Memory* %call_400dfd, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400e01	 Bytes: 3
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e01 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e01)
  store %struct.Memory* %call_400e01, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400e04	 Bytes: 3
  %loadMem_400e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e04 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e04)
  store %struct.Memory* %call_400e04, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e07	 Bytes: 4
  %loadMem_400e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e07 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e07)
  store %struct.Memory* %call_400e07, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400e0b	 Bytes: 4
  %loadMem_400e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0b = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0b)
  store %struct.Memory* %call_400e0b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e0f	 Bytes: 4
  %loadMem_400e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0f)
  store %struct.Memory* %call_400e0f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e13	 Bytes: 4
  %loadMem_400e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e13 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e13)
  store %struct.Memory* %call_400e13, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e17	 Bytes: 2
  %loadMem_400e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e17 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e17)
  store %struct.Memory* %call_400e17, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400e19	 Bytes: 3
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e19 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e19)
  store %struct.Memory* %call_400e19, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e1c	 Bytes: 4
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1c)
  store %struct.Memory* %call_400e1c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e20	 Bytes: 4
  %loadMem_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e20 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e20)
  store %struct.Memory* %call_400e20, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e24	 Bytes: 2
  %loadMem_400e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e24 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e24)
  store %struct.Memory* %call_400e24, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400e26	 Bytes: 3
  %loadMem_400e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e26 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e26)
  store %struct.Memory* %call_400e26, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e29	 Bytes: 3
  %loadMem_400e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e29 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e29)
  store %struct.Memory* %call_400e29, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 400e2c	 Bytes: 5
  %loadMem_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2c)
  store %struct.Memory* %call_400e2c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400e31	 Bytes: 4
  %loadMem_400e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e31 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e31)
  store %struct.Memory* %call_400e31, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400e35	 Bytes: 3
  %loadMem_400e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e35 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e35)
  store %struct.Memory* %call_400e35, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e38	 Bytes: 4
  %loadMem_400e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e38 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e38)
  store %struct.Memory* %call_400e38, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 400e3c	 Bytes: 3
  %loadMem_400e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3c = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3c)
  store %struct.Memory* %call_400e3c, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 400e3f	 Bytes: 3
  %loadMem_400e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3f = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3f)
  store %struct.Memory* %call_400e3f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e42	 Bytes: 4
  %loadMem_400e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e42 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e42)
  store %struct.Memory* %call_400e42, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400e46	 Bytes: 4
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e46 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e46)
  store %struct.Memory* %call_400e46, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e4a	 Bytes: 4
  %loadMem_400e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4a)
  store %struct.Memory* %call_400e4a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400e4e	 Bytes: 4
  %loadMem_400e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4e)
  store %struct.Memory* %call_400e4e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400e52	 Bytes: 3
  %loadMem_400e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e52 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e52)
  store %struct.Memory* %call_400e52, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e55	 Bytes: 4
  %loadMem_400e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e55 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e55)
  store %struct.Memory* %call_400e55, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400e59	 Bytes: 4
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e59 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e59)
  store %struct.Memory* %call_400e59, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e5d	 Bytes: 4
  %loadMem_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5d)
  store %struct.Memory* %call_400e5d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e61	 Bytes: 4
  %loadMem_400e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e61 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e61)
  store %struct.Memory* %call_400e61, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e65	 Bytes: 2
  %loadMem_400e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e65 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e65)
  store %struct.Memory* %call_400e65, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400e67	 Bytes: 3
  %loadMem_400e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e67 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e67)
  store %struct.Memory* %call_400e67, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400e6a	 Bytes: 4
  %loadMem_400e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6a)
  store %struct.Memory* %call_400e6a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400e6e	 Bytes: 4
  %loadMem_400e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6e)
  store %struct.Memory* %call_400e6e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400e72	 Bytes: 2
  %loadMem_400e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e72 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e72)
  store %struct.Memory* %call_400e72, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400e74	 Bytes: 3
  %loadMem_400e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e74 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e74)
  store %struct.Memory* %call_400e74, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400e77	 Bytes: 3
  %loadMem_400e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e77 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e77)
  store %struct.Memory* %call_400e77, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400e7a	 Bytes: 5
  %loadMem_400e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7a)
  store %struct.Memory* %call_400e7a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400e7f	 Bytes: 4
  %loadMem_400e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7f)
  store %struct.Memory* %call_400e7f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400e83	 Bytes: 3
  %loadMem_400e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e83 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e83)
  store %struct.Memory* %call_400e83, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e86	 Bytes: 4
  %loadMem_400e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e86 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e86)
  store %struct.Memory* %call_400e86, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400e8a	 Bytes: 4
  %loadMem_400e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8a = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8a)
  store %struct.Memory* %call_400e8a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e8e	 Bytes: 4
  %loadMem_400e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8e)
  store %struct.Memory* %call_400e8e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400e92	 Bytes: 4
  %loadMem_400e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e92 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e92)
  store %struct.Memory* %call_400e92, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400e96	 Bytes: 4
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e96 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e96)
  store %struct.Memory* %call_400e96, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400e9a	 Bytes: 4
  %loadMem_400e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9a = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9a)
  store %struct.Memory* %call_400e9a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400e9e	 Bytes: 3
  %loadMem_400e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9e = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9e)
  store %struct.Memory* %call_400e9e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ea1	 Bytes: 4
  %loadMem_400ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea1)
  store %struct.Memory* %call_400ea1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400ea5	 Bytes: 4
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea5 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea5)
  store %struct.Memory* %call_400ea5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ea9	 Bytes: 4
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea9)
  store %struct.Memory* %call_400ea9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400ead	 Bytes: 4
  %loadMem_400ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ead = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ead)
  store %struct.Memory* %call_400ead, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400eb1	 Bytes: 2
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb1)
  store %struct.Memory* %call_400eb1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400eb3	 Bytes: 3
  %loadMem_400eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb3 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb3)
  store %struct.Memory* %call_400eb3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400eb6	 Bytes: 3
  %loadMem_400eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb6 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb6)
  store %struct.Memory* %call_400eb6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400eb9	 Bytes: 4
  %loadMem_400eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb9)
  store %struct.Memory* %call_400eb9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400ebd	 Bytes: 4
  %loadMem_400ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebd = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebd)
  store %struct.Memory* %call_400ebd, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ec1	 Bytes: 2
  %loadMem_400ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec1)
  store %struct.Memory* %call_400ec1, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400ec3	 Bytes: 3
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec3 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec3)
  store %struct.Memory* %call_400ec3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ec6	 Bytes: 3
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec6)
  store %struct.Memory* %call_400ec6, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 400ec9	 Bytes: 5
  %loadMem_400ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec9 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec9)
  store %struct.Memory* %call_400ec9, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 400ece	 Bytes: 4
  %loadMem_400ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ece = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ece)
  store %struct.Memory* %call_400ece, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400ed2	 Bytes: 4
  %loadMem_400ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed2)
  store %struct.Memory* %call_400ed2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400ed6	 Bytes: 3
  %loadMem_400ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed6)
  store %struct.Memory* %call_400ed6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ed9	 Bytes: 4
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed9)
  store %struct.Memory* %call_400ed9, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 400edd	 Bytes: 3
  %loadMem_400edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400edd = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400edd)
  store %struct.Memory* %call_400edd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 400ee0	 Bytes: 3
  %loadMem_400ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee0 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee0)
  store %struct.Memory* %call_400ee0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ee3	 Bytes: 4
  %loadMem_400ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee3)
  store %struct.Memory* %call_400ee3, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400ee7	 Bytes: 4
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee7 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee7)
  store %struct.Memory* %call_400ee7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400eeb	 Bytes: 4
  %loadMem_400eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eeb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eeb)
  store %struct.Memory* %call_400eeb, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400eef	 Bytes: 4
  %loadMem_400eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eef = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eef)
  store %struct.Memory* %call_400eef, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400ef3	 Bytes: 3
  %loadMem_400ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef3 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef3)
  store %struct.Memory* %call_400ef3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400ef6	 Bytes: 4
  %loadMem_400ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef6)
  store %struct.Memory* %call_400ef6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400efa	 Bytes: 4
  %loadMem_400efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efa = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efa)
  store %struct.Memory* %call_400efa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400efe	 Bytes: 4
  %loadMem_400efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efe)
  store %struct.Memory* %call_400efe, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f02	 Bytes: 4
  %loadMem_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f02 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f02)
  store %struct.Memory* %call_400f02, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f06	 Bytes: 2
  %loadMem_400f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f06 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f06)
  store %struct.Memory* %call_400f06, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400f08	 Bytes: 3
  %loadMem_400f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f08 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f08)
  store %struct.Memory* %call_400f08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 400f0b	 Bytes: 4
  %loadMem_400f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0b)
  store %struct.Memory* %call_400f0b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f0f	 Bytes: 4
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0f)
  store %struct.Memory* %call_400f0f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f13	 Bytes: 2
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f13 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f13)
  store %struct.Memory* %call_400f13, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400f15	 Bytes: 3
  %loadMem_400f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f15 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f15)
  store %struct.Memory* %call_400f15, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f18	 Bytes: 3
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f18 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f18)
  store %struct.Memory* %call_400f18, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400f1b	 Bytes: 5
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1b = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1b)
  store %struct.Memory* %call_400f1b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400f20	 Bytes: 4
  %loadMem_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f20 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f20)
  store %struct.Memory* %call_400f20, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400f24	 Bytes: 3
  %loadMem_400f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f24 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f24)
  store %struct.Memory* %call_400f24, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f27	 Bytes: 4
  %loadMem_400f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f27 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f27)
  store %struct.Memory* %call_400f27, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400f2b	 Bytes: 4
  %loadMem_400f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2b = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2b)
  store %struct.Memory* %call_400f2b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f2f	 Bytes: 4
  %loadMem_400f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2f)
  store %struct.Memory* %call_400f2f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400f33	 Bytes: 4
  %loadMem_400f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f33 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f33)
  store %struct.Memory* %call_400f33, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f37	 Bytes: 4
  %loadMem_400f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f37 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f37)
  store %struct.Memory* %call_400f37, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400f3b	 Bytes: 4
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3b = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3b)
  store %struct.Memory* %call_400f3b, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400f3f	 Bytes: 3
  %loadMem_400f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3f = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3f)
  store %struct.Memory* %call_400f3f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f42	 Bytes: 4
  %loadMem_400f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f42 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f42)
  store %struct.Memory* %call_400f42, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400f46	 Bytes: 4
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f46 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f46)
  store %struct.Memory* %call_400f46, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f4a	 Bytes: 4
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4a)
  store %struct.Memory* %call_400f4a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f4e	 Bytes: 4
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4e)
  store %struct.Memory* %call_400f4e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f52	 Bytes: 2
  %loadMem_400f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f52 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f52)
  store %struct.Memory* %call_400f52, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400f54	 Bytes: 3
  %loadMem_400f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f54 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f54)
  store %struct.Memory* %call_400f54, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400f57	 Bytes: 4
  %loadMem_400f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f57 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f57)
  store %struct.Memory* %call_400f57, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400f5b	 Bytes: 4
  %loadMem_400f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5b)
  store %struct.Memory* %call_400f5b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f5f	 Bytes: 2
  %loadMem_400f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5f)
  store %struct.Memory* %call_400f5f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 400f61	 Bytes: 3
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f61 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f61)
  store %struct.Memory* %call_400f61, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400f64	 Bytes: 3
  %loadMem_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f64 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f64)
  store %struct.Memory* %call_400f64, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400f67	 Bytes: 2
  %loadMem_400f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f67 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f67)
  store %struct.Memory* %call_400f67, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f69	 Bytes: 3
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f69 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f69)
  store %struct.Memory* %call_400f69, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 400f6c	 Bytes: 5
  %loadMem_400f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6c = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6c)
  store %struct.Memory* %call_400f6c, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 400f71	 Bytes: 4
  %loadMem_400f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f71 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f71)
  store %struct.Memory* %call_400f71, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 400f75	 Bytes: 4
  %loadMem_400f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f75 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f75)
  store %struct.Memory* %call_400f75, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400f79	 Bytes: 3
  %loadMem_400f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f79 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f79)
  store %struct.Memory* %call_400f79, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f7c	 Bytes: 4
  %loadMem_400f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7c)
  store %struct.Memory* %call_400f7c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400f80	 Bytes: 4
  %loadMem_400f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f80 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f80)
  store %struct.Memory* %call_400f80, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f84	 Bytes: 4
  %loadMem_400f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f84 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f84)
  store %struct.Memory* %call_400f84, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400f88	 Bytes: 4
  %loadMem_400f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f88 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f88)
  store %struct.Memory* %call_400f88, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f8c	 Bytes: 4
  %loadMem_400f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8c)
  store %struct.Memory* %call_400f8c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400f90	 Bytes: 4
  %loadMem_400f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f90 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f90)
  store %struct.Memory* %call_400f90, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400f94	 Bytes: 3
  %loadMem_400f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f94 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f94)
  store %struct.Memory* %call_400f94, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f97	 Bytes: 4
  %loadMem_400f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f97 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f97)
  store %struct.Memory* %call_400f97, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400f9b	 Bytes: 4
  %loadMem_400f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9b = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9b)
  store %struct.Memory* %call_400f9b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400f9f	 Bytes: 4
  %loadMem_400f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9f)
  store %struct.Memory* %call_400f9f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400fa3	 Bytes: 4
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa3 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa3)
  store %struct.Memory* %call_400fa3, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400fa7	 Bytes: 2
  %loadMem_400fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa7 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa7)
  store %struct.Memory* %call_400fa7, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400fa9	 Bytes: 3
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa9 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa9)
  store %struct.Memory* %call_400fa9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400fac	 Bytes: 4
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fac)
  store %struct.Memory* %call_400fac, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400fb0	 Bytes: 4
  %loadMem_400fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb0 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb0)
  store %struct.Memory* %call_400fb0, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400fb4	 Bytes: 2
  %loadMem_400fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb4 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb4)
  store %struct.Memory* %call_400fb4, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 400fb6	 Bytes: 3
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb6 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb6)
  store %struct.Memory* %call_400fb6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400fb9	 Bytes: 3
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb9)
  store %struct.Memory* %call_400fb9, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 400fbc	 Bytes: 5
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbc = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbc)
  store %struct.Memory* %call_400fbc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 400fc1	 Bytes: 4
  %loadMem_400fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc1)
  store %struct.Memory* %call_400fc1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400fc5	 Bytes: 3
  %loadMem_400fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc5)
  store %struct.Memory* %call_400fc5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fc8	 Bytes: 4
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc8)
  store %struct.Memory* %call_400fc8, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 400fcc	 Bytes: 4
  %loadMem_400fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcc = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcc)
  store %struct.Memory* %call_400fcc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fd0	 Bytes: 4
  %loadMem_400fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd0)
  store %struct.Memory* %call_400fd0, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 400fd4	 Bytes: 4
  %loadMem_400fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd4 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd4)
  store %struct.Memory* %call_400fd4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fd8	 Bytes: 4
  %loadMem_400fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd8)
  store %struct.Memory* %call_400fd8, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 400fdc	 Bytes: 4
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdc = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdc)
  store %struct.Memory* %call_400fdc, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 400fe0	 Bytes: 3
  %loadMem_400fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe0 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe0)
  store %struct.Memory* %call_400fe0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400fe3	 Bytes: 3
  %loadMem_400fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe3 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe3)
  store %struct.Memory* %call_400fe3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fe6	 Bytes: 4
  %loadMem_400fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe6)
  store %struct.Memory* %call_400fe6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 400fea	 Bytes: 4
  %loadMem_400fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fea = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fea)
  store %struct.Memory* %call_400fea, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400fee	 Bytes: 4
  %loadMem_400fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fee = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fee)
  store %struct.Memory* %call_400fee, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 400ff2	 Bytes: 4
  %loadMem_400ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff2 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff2)
  store %struct.Memory* %call_400ff2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 400ff6	 Bytes: 2
  %loadMem_400ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff6 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff6)
  store %struct.Memory* %call_400ff6, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 400ff8	 Bytes: 3
  %loadMem_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff8 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff8)
  store %struct.Memory* %call_400ff8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 400ffb	 Bytes: 3
  %loadMem_400ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffb = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffb)
  store %struct.Memory* %call_400ffb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 400ffe	 Bytes: 4
  %loadMem_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffe = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffe)
  store %struct.Memory* %call_400ffe, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401002	 Bytes: 4
  %loadMem_401002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401002 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401002)
  store %struct.Memory* %call_401002, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401006	 Bytes: 2
  %loadMem_401006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401006 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401006)
  store %struct.Memory* %call_401006, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401008	 Bytes: 3
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401008 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401008)
  store %struct.Memory* %call_401008, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40100b	 Bytes: 3
  %loadMem_40100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100b)
  store %struct.Memory* %call_40100b, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 40100e	 Bytes: 5
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100e = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100e)
  store %struct.Memory* %call_40100e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401013	 Bytes: 4
  %loadMem_401013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401013 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401013)
  store %struct.Memory* %call_401013, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401017	 Bytes: 3
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401017 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401017)
  store %struct.Memory* %call_401017, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40101a	 Bytes: 4
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101a)
  store %struct.Memory* %call_40101a, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40101e	 Bytes: 4
  %loadMem_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101e = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101e)
  store %struct.Memory* %call_40101e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401022	 Bytes: 4
  %loadMem_401022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401022 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401022)
  store %struct.Memory* %call_401022, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401026	 Bytes: 4
  %loadMem_401026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401026 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401026)
  store %struct.Memory* %call_401026, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40102a	 Bytes: 4
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102a)
  store %struct.Memory* %call_40102a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40102e	 Bytes: 4
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102e)
  store %struct.Memory* %call_40102e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401032	 Bytes: 3
  %loadMem_401032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401032 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401032)
  store %struct.Memory* %call_401032, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401035	 Bytes: 3
  %loadMem_401035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401035 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401035)
  store %struct.Memory* %call_401035, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401038	 Bytes: 4
  %loadMem_401038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401038 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401038)
  store %struct.Memory* %call_401038, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40103c	 Bytes: 4
  %loadMem_40103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103c)
  store %struct.Memory* %call_40103c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401040	 Bytes: 4
  %loadMem_401040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401040 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401040)
  store %struct.Memory* %call_401040, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401044	 Bytes: 4
  %loadMem_401044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401044 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401044)
  store %struct.Memory* %call_401044, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401048	 Bytes: 2
  %loadMem_401048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401048 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401048)
  store %struct.Memory* %call_401048, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40104a	 Bytes: 3
  %loadMem_40104a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104a = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104a)
  store %struct.Memory* %call_40104a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40104d	 Bytes: 3
  %loadMem_40104d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104d = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104d)
  store %struct.Memory* %call_40104d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401050	 Bytes: 4
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401050 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401050)
  store %struct.Memory* %call_401050, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401054	 Bytes: 4
  %loadMem_401054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401054 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401054)
  store %struct.Memory* %call_401054, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401058	 Bytes: 2
  %loadMem_401058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401058 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401058)
  store %struct.Memory* %call_401058, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40105a	 Bytes: 3
  %loadMem_40105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105a = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105a)
  store %struct.Memory* %call_40105a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40105d	 Bytes: 3
  %loadMem_40105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105d)
  store %struct.Memory* %call_40105d, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401060	 Bytes: 5
  %loadMem_401060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401060 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401060)
  store %struct.Memory* %call_401060, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401065	 Bytes: 4
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401065 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401065)
  store %struct.Memory* %call_401065, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401069	 Bytes: 3
  %loadMem_401069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401069 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401069)
  store %struct.Memory* %call_401069, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40106c	 Bytes: 4
  %loadMem_40106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106c)
  store %struct.Memory* %call_40106c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401070	 Bytes: 4
  %loadMem_401070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401070 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401070)
  store %struct.Memory* %call_401070, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401074	 Bytes: 4
  %loadMem_401074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401074 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401074)
  store %struct.Memory* %call_401074, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401078	 Bytes: 4
  %loadMem_401078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401078 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401078)
  store %struct.Memory* %call_401078, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40107c	 Bytes: 4
  %loadMem_40107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107c)
  store %struct.Memory* %call_40107c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401080	 Bytes: 4
  %loadMem_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401080 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401080)
  store %struct.Memory* %call_401080, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401084	 Bytes: 3
  %loadMem_401084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401084 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401084)
  store %struct.Memory* %call_401084, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401087	 Bytes: 3
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401087 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401087)
  store %struct.Memory* %call_401087, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40108a	 Bytes: 4
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108a)
  store %struct.Memory* %call_40108a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40108e	 Bytes: 4
  %loadMem_40108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108e = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108e)
  store %struct.Memory* %call_40108e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401092	 Bytes: 4
  %loadMem_401092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401092 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401092)
  store %struct.Memory* %call_401092, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401096	 Bytes: 4
  %loadMem_401096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401096 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401096)
  store %struct.Memory* %call_401096, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40109a	 Bytes: 2
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109a)
  store %struct.Memory* %call_40109a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40109c	 Bytes: 3
  %loadMem_40109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109c = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109c)
  store %struct.Memory* %call_40109c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40109f	 Bytes: 3
  %loadMem_40109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109f = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109f)
  store %struct.Memory* %call_40109f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010a2	 Bytes: 4
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a2)
  store %struct.Memory* %call_4010a2, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010a6	 Bytes: 4
  %loadMem_4010a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a6 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a6)
  store %struct.Memory* %call_4010a6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010aa	 Bytes: 2
  %loadMem_4010aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010aa = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010aa)
  store %struct.Memory* %call_4010aa, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4010ac	 Bytes: 3
  %loadMem_4010ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ac = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ac)
  store %struct.Memory* %call_4010ac, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4010af	 Bytes: 3
  %loadMem_4010af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010af = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010af)
  store %struct.Memory* %call_4010af, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4010b2	 Bytes: 5
  %loadMem_4010b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b2 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b2)
  store %struct.Memory* %call_4010b2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4010b7	 Bytes: 4
  %loadMem_4010b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b7)
  store %struct.Memory* %call_4010b7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4010bb	 Bytes: 3
  %loadMem_4010bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bb)
  store %struct.Memory* %call_4010bb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010be	 Bytes: 4
  %loadMem_4010be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010be = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010be)
  store %struct.Memory* %call_4010be, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4010c2	 Bytes: 4
  %loadMem_4010c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c2 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c2)
  store %struct.Memory* %call_4010c2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010c6	 Bytes: 4
  %loadMem_4010c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c6)
  store %struct.Memory* %call_4010c6, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4010ca	 Bytes: 4
  %loadMem_4010ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ca = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ca)
  store %struct.Memory* %call_4010ca, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010ce	 Bytes: 4
  %loadMem_4010ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ce = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ce)
  store %struct.Memory* %call_4010ce, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4010d2	 Bytes: 4
  %loadMem_4010d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d2 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d2)
  store %struct.Memory* %call_4010d2, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4010d6	 Bytes: 3
  %loadMem_4010d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d6 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d6)
  store %struct.Memory* %call_4010d6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4010d9	 Bytes: 3
  %loadMem_4010d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d9 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d9)
  store %struct.Memory* %call_4010d9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010dc	 Bytes: 4
  %loadMem_4010dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010dc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010dc)
  store %struct.Memory* %call_4010dc, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4010e0	 Bytes: 4
  %loadMem_4010e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e0 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e0)
  store %struct.Memory* %call_4010e0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010e4	 Bytes: 4
  %loadMem_4010e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e4)
  store %struct.Memory* %call_4010e4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010e8	 Bytes: 4
  %loadMem_4010e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e8)
  store %struct.Memory* %call_4010e8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010ec	 Bytes: 2
  %loadMem_4010ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ec = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ec)
  store %struct.Memory* %call_4010ec, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4010ee	 Bytes: 3
  %loadMem_4010ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ee = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ee)
  store %struct.Memory* %call_4010ee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4010f1	 Bytes: 3
  %loadMem_4010f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f1 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f1)
  store %struct.Memory* %call_4010f1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4010f4	 Bytes: 4
  %loadMem_4010f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f4)
  store %struct.Memory* %call_4010f4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4010f8	 Bytes: 4
  %loadMem_4010f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f8)
  store %struct.Memory* %call_4010f8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4010fc	 Bytes: 2
  %loadMem_4010fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fc)
  store %struct.Memory* %call_4010fc, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4010fe	 Bytes: 3
  %loadMem_4010fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fe = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fe)
  store %struct.Memory* %call_4010fe, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401101	 Bytes: 3
  %loadMem_401101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401101 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401101)
  store %struct.Memory* %call_401101, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 401104	 Bytes: 5
  %loadMem_401104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401104 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401104)
  store %struct.Memory* %call_401104, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 401109	 Bytes: 4
  %loadMem_401109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401109 = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401109)
  store %struct.Memory* %call_401109, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40110d	 Bytes: 4
  %loadMem_40110d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110d = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110d)
  store %struct.Memory* %call_40110d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 401111	 Bytes: 4
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401111 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401111)
  store %struct.Memory* %call_401111, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401115	 Bytes: 3
  %loadMem_401115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401115 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401115)
  store %struct.Memory* %call_401115, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401118	 Bytes: 4
  %loadMem_401118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401118 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401118)
  store %struct.Memory* %call_401118, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 40111c	 Bytes: 3
  %loadMem_40111c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111c = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111c)
  store %struct.Memory* %call_40111c, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 40111f	 Bytes: 3
  %loadMem_40111f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111f = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111f)
  store %struct.Memory* %call_40111f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401122	 Bytes: 4
  %loadMem_401122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401122 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401122)
  store %struct.Memory* %call_401122, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401126	 Bytes: 4
  %loadMem_401126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401126 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401126)
  store %struct.Memory* %call_401126, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40112a	 Bytes: 4
  %loadMem_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112a)
  store %struct.Memory* %call_40112a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40112e	 Bytes: 4
  %loadMem_40112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112e = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112e)
  store %struct.Memory* %call_40112e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401132	 Bytes: 3
  %loadMem_401132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401132 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401132)
  store %struct.Memory* %call_401132, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 401135	 Bytes: 4
  %loadMem_401135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401135 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401135)
  store %struct.Memory* %call_401135, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401139	 Bytes: 4
  %loadMem_401139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401139 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401139)
  store %struct.Memory* %call_401139, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40113d	 Bytes: 4
  %loadMem_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113d)
  store %struct.Memory* %call_40113d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401141	 Bytes: 4
  %loadMem_401141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401141 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401141)
  store %struct.Memory* %call_401141, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401145	 Bytes: 2
  %loadMem_401145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401145 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401145)
  store %struct.Memory* %call_401145, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401147	 Bytes: 3
  %loadMem_401147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401147 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401147)
  store %struct.Memory* %call_401147, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 40114a	 Bytes: 4
  %loadMem_40114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114a)
  store %struct.Memory* %call_40114a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40114e	 Bytes: 4
  %loadMem_40114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114e)
  store %struct.Memory* %call_40114e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401152	 Bytes: 2
  %loadMem_401152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401152 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401152)
  store %struct.Memory* %call_401152, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401154	 Bytes: 3
  %loadMem_401154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401154 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401154)
  store %struct.Memory* %call_401154, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401157	 Bytes: 3
  %loadMem_401157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401157 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401157)
  store %struct.Memory* %call_401157, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40115a	 Bytes: 5
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115a)
  store %struct.Memory* %call_40115a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40115f	 Bytes: 4
  %loadMem_40115f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115f)
  store %struct.Memory* %call_40115f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401163	 Bytes: 3
  %loadMem_401163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401163 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401163)
  store %struct.Memory* %call_401163, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401166	 Bytes: 4
  %loadMem_401166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401166 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401166)
  store %struct.Memory* %call_401166, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40116a	 Bytes: 4
  %loadMem_40116a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116a = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116a)
  store %struct.Memory* %call_40116a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40116e	 Bytes: 4
  %loadMem_40116e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116e)
  store %struct.Memory* %call_40116e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401172	 Bytes: 4
  %loadMem_401172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401172 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401172)
  store %struct.Memory* %call_401172, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401176	 Bytes: 4
  %loadMem_401176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401176 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401176)
  store %struct.Memory* %call_401176, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40117a	 Bytes: 4
  %loadMem_40117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117a = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117a)
  store %struct.Memory* %call_40117a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40117e	 Bytes: 3
  %loadMem_40117e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117e = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117e)
  store %struct.Memory* %call_40117e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401181	 Bytes: 4
  %loadMem_401181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401181 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401181)
  store %struct.Memory* %call_401181, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401185	 Bytes: 4
  %loadMem_401185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401185 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401185)
  store %struct.Memory* %call_401185, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401189	 Bytes: 4
  %loadMem_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401189 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401189)
  store %struct.Memory* %call_401189, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40118d	 Bytes: 4
  %loadMem_40118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118d)
  store %struct.Memory* %call_40118d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401191	 Bytes: 2
  %loadMem_401191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401191 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401191)
  store %struct.Memory* %call_401191, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401193	 Bytes: 3
  %loadMem_401193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401193 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401193)
  store %struct.Memory* %call_401193, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401196	 Bytes: 3
  %loadMem_401196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401196 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401196)
  store %struct.Memory* %call_401196, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401199	 Bytes: 4
  %loadMem_401199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401199 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401199)
  store %struct.Memory* %call_401199, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40119d	 Bytes: 4
  %loadMem_40119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119d)
  store %struct.Memory* %call_40119d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011a1	 Bytes: 2
  %loadMem_4011a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a1)
  store %struct.Memory* %call_4011a1, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4011a3	 Bytes: 3
  %loadMem_4011a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a3 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a3)
  store %struct.Memory* %call_4011a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4011a6	 Bytes: 3
  %loadMem_4011a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a6 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a6)
  store %struct.Memory* %call_4011a6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011a9	 Bytes: 2
  %loadMem_4011a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a9 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a9)
  store %struct.Memory* %call_4011a9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4011ab	 Bytes: 3
  %loadMem_4011ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ab = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ab)
  store %struct.Memory* %call_4011ab, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 4011ae	 Bytes: 5
  %loadMem_4011ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ae = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ae)
  store %struct.Memory* %call_4011ae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4011b3	 Bytes: 4
  %loadMem_4011b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b3)
  store %struct.Memory* %call_4011b3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4011b7	 Bytes: 3
  %loadMem_4011b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b7 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b7)
  store %struct.Memory* %call_4011b7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011ba	 Bytes: 4
  %loadMem_4011ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ba = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ba)
  store %struct.Memory* %call_4011ba, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4011be	 Bytes: 4
  %loadMem_4011be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011be = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011be)
  store %struct.Memory* %call_4011be, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011c2	 Bytes: 4
  %loadMem_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c2)
  store %struct.Memory* %call_4011c2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4011c6	 Bytes: 4
  %loadMem_4011c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c6 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c6)
  store %struct.Memory* %call_4011c6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011ca	 Bytes: 4
  %loadMem_4011ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ca = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ca)
  store %struct.Memory* %call_4011ca, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4011ce	 Bytes: 4
  %loadMem_4011ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ce = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ce)
  store %struct.Memory* %call_4011ce, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4011d2	 Bytes: 3
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d2 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d2)
  store %struct.Memory* %call_4011d2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011d5	 Bytes: 4
  %loadMem_4011d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d5)
  store %struct.Memory* %call_4011d5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4011d9	 Bytes: 4
  %loadMem_4011d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d9 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d9)
  store %struct.Memory* %call_4011d9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011dd	 Bytes: 4
  %loadMem_4011dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011dd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011dd)
  store %struct.Memory* %call_4011dd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4011e1	 Bytes: 4
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e1)
  store %struct.Memory* %call_4011e1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011e5	 Bytes: 2
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e5)
  store %struct.Memory* %call_4011e5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4011e7	 Bytes: 3
  %loadMem_4011e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e7)
  store %struct.Memory* %call_4011e7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4011ea	 Bytes: 3
  %loadMem_4011ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ea = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ea)
  store %struct.Memory* %call_4011ea, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4011ed	 Bytes: 4
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ed = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ed)
  store %struct.Memory* %call_4011ed, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4011f1	 Bytes: 4
  %loadMem_4011f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f1)
  store %struct.Memory* %call_4011f1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011f5	 Bytes: 2
  %loadMem_4011f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f5)
  store %struct.Memory* %call_4011f5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4011f7	 Bytes: 3
  %loadMem_4011f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f7 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f7)
  store %struct.Memory* %call_4011f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4011fa	 Bytes: 3
  %loadMem_4011fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fa = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fa)
  store %struct.Memory* %call_4011fa, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4011fd	 Bytes: 2
  %loadMem_4011fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fd = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fd)
  store %struct.Memory* %call_4011fd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4011ff	 Bytes: 3
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ff = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ff)
  store %struct.Memory* %call_4011ff, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401202	 Bytes: 5
  %loadMem_401202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401202 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401202)
  store %struct.Memory* %call_401202, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401207	 Bytes: 4
  %loadMem_401207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401207 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401207)
  store %struct.Memory* %call_401207, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40120b	 Bytes: 3
  %loadMem_40120b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120b)
  store %struct.Memory* %call_40120b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40120e	 Bytes: 4
  %loadMem_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120e)
  store %struct.Memory* %call_40120e, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401212	 Bytes: 4
  %loadMem_401212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401212 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401212)
  store %struct.Memory* %call_401212, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401216	 Bytes: 4
  %loadMem_401216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401216 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401216)
  store %struct.Memory* %call_401216, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40121a	 Bytes: 4
  %loadMem_40121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121a = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121a)
  store %struct.Memory* %call_40121a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40121e	 Bytes: 4
  %loadMem_40121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121e)
  store %struct.Memory* %call_40121e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401222	 Bytes: 4
  %loadMem_401222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401222 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401222)
  store %struct.Memory* %call_401222, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401226	 Bytes: 3
  %loadMem_401226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401226 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401226)
  store %struct.Memory* %call_401226, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401229	 Bytes: 4
  %loadMem_401229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401229 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401229)
  store %struct.Memory* %call_401229, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40122d	 Bytes: 4
  %loadMem_40122d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122d = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122d)
  store %struct.Memory* %call_40122d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401231	 Bytes: 4
  %loadMem_401231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401231 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401231)
  store %struct.Memory* %call_401231, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401235	 Bytes: 4
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401235 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401235)
  store %struct.Memory* %call_401235, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401239	 Bytes: 2
  %loadMem_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401239 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401239)
  store %struct.Memory* %call_401239, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40123b	 Bytes: 3
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123b)
  store %struct.Memory* %call_40123b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40123e	 Bytes: 3
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123e = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123e)
  store %struct.Memory* %call_40123e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401241	 Bytes: 4
  %loadMem_401241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401241 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401241)
  store %struct.Memory* %call_401241, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401245	 Bytes: 4
  %loadMem_401245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401245 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401245)
  store %struct.Memory* %call_401245, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401249	 Bytes: 2
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401249 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401249)
  store %struct.Memory* %call_401249, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40124b	 Bytes: 3
  %loadMem_40124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124b)
  store %struct.Memory* %call_40124b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40124e	 Bytes: 3
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124e = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124e)
  store %struct.Memory* %call_40124e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401251	 Bytes: 2
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401251 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401251)
  store %struct.Memory* %call_401251, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401253	 Bytes: 3
  %loadMem_401253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401253 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401253)
  store %struct.Memory* %call_401253, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 401256	 Bytes: 5
  %loadMem_401256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401256 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401256)
  store %struct.Memory* %call_401256, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40125b	 Bytes: 4
  %loadMem_40125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125b)
  store %struct.Memory* %call_40125b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40125f	 Bytes: 3
  %loadMem_40125f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125f)
  store %struct.Memory* %call_40125f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401262	 Bytes: 4
  %loadMem_401262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401262 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401262)
  store %struct.Memory* %call_401262, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401266	 Bytes: 4
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401266 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401266)
  store %struct.Memory* %call_401266, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40126a	 Bytes: 4
  %loadMem_40126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126a)
  store %struct.Memory* %call_40126a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40126e	 Bytes: 4
  %loadMem_40126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126e = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126e)
  store %struct.Memory* %call_40126e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401272	 Bytes: 4
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401272 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401272)
  store %struct.Memory* %call_401272, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401276	 Bytes: 4
  %loadMem_401276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401276 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401276)
  store %struct.Memory* %call_401276, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40127a	 Bytes: 3
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127a)
  store %struct.Memory* %call_40127a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40127d	 Bytes: 4
  %loadMem_40127d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127d)
  store %struct.Memory* %call_40127d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401281	 Bytes: 4
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401281 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401281)
  store %struct.Memory* %call_401281, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401285	 Bytes: 4
  %loadMem_401285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401285 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401285)
  store %struct.Memory* %call_401285, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401289	 Bytes: 4
  %loadMem_401289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401289 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401289)
  store %struct.Memory* %call_401289, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40128d	 Bytes: 2
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128d)
  store %struct.Memory* %call_40128d, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40128f	 Bytes: 3
  %loadMem_40128f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128f)
  store %struct.Memory* %call_40128f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401292	 Bytes: 3
  %loadMem_401292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401292 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401292)
  store %struct.Memory* %call_401292, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401295	 Bytes: 4
  %loadMem_401295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401295 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401295)
  store %struct.Memory* %call_401295, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401299	 Bytes: 4
  %loadMem_401299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401299 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401299)
  store %struct.Memory* %call_401299, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40129d	 Bytes: 2
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129d)
  store %struct.Memory* %call_40129d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40129f	 Bytes: 3
  %loadMem_40129f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129f)
  store %struct.Memory* %call_40129f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4012a2	 Bytes: 3
  %loadMem_4012a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a2 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a2)
  store %struct.Memory* %call_4012a2, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012a5	 Bytes: 2
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a5)
  store %struct.Memory* %call_4012a5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4012a7	 Bytes: 3
  %loadMem_4012a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a7)
  store %struct.Memory* %call_4012a7, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 4012aa	 Bytes: 5
  %loadMem_4012aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012aa = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012aa)
  store %struct.Memory* %call_4012aa, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 4012af	 Bytes: 4
  %loadMem_4012af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012af = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012af)
  store %struct.Memory* %call_4012af, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4012b3	 Bytes: 4
  %loadMem_4012b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b3 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b3)
  store %struct.Memory* %call_4012b3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4012b7	 Bytes: 4
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b7)
  store %struct.Memory* %call_4012b7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4012bb	 Bytes: 3
  %loadMem_4012bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bb = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bb)
  store %struct.Memory* %call_4012bb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012be	 Bytes: 4
  %loadMem_4012be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012be = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012be)
  store %struct.Memory* %call_4012be, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4012c2	 Bytes: 3
  %loadMem_4012c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c2 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c2)
  store %struct.Memory* %call_4012c2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4012c5	 Bytes: 3
  %loadMem_4012c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c5 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c5)
  store %struct.Memory* %call_4012c5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012c8	 Bytes: 4
  %loadMem_4012c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c8)
  store %struct.Memory* %call_4012c8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4012cc	 Bytes: 4
  %loadMem_4012cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cc = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cc)
  store %struct.Memory* %call_4012cc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012d0	 Bytes: 4
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d0)
  store %struct.Memory* %call_4012d0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4012d4	 Bytes: 4
  %loadMem_4012d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d4 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d4)
  store %struct.Memory* %call_4012d4, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4012d8	 Bytes: 3
  %loadMem_4012d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d8 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d8)
  store %struct.Memory* %call_4012d8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012db	 Bytes: 4
  %loadMem_4012db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012db = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012db)
  store %struct.Memory* %call_4012db, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4012df	 Bytes: 4
  %loadMem_4012df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012df = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012df)
  store %struct.Memory* %call_4012df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012e3	 Bytes: 4
  %loadMem_4012e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e3)
  store %struct.Memory* %call_4012e3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4012e7	 Bytes: 4
  %loadMem_4012e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e7)
  store %struct.Memory* %call_4012e7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012eb	 Bytes: 2
  %loadMem_4012eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012eb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012eb)
  store %struct.Memory* %call_4012eb, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4012ed	 Bytes: 3
  %loadMem_4012ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ed = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ed)
  store %struct.Memory* %call_4012ed, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4012f0	 Bytes: 4
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f0)
  store %struct.Memory* %call_4012f0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4012f4	 Bytes: 4
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f4)
  store %struct.Memory* %call_4012f4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4012f8	 Bytes: 2
  %loadMem_4012f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f8)
  store %struct.Memory* %call_4012f8, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4012fa	 Bytes: 3
  %loadMem_4012fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fa = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fa)
  store %struct.Memory* %call_4012fa, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4012fd	 Bytes: 3
  %loadMem_4012fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fd = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fd)
  store %struct.Memory* %call_4012fd, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 401300	 Bytes: 5
  %loadMem_401300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401300 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401300)
  store %struct.Memory* %call_401300, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401305	 Bytes: 4
  %loadMem_401305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401305 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401305)
  store %struct.Memory* %call_401305, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401309	 Bytes: 3
  %loadMem_401309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401309 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401309)
  store %struct.Memory* %call_401309, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40130c	 Bytes: 4
  %loadMem_40130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130c)
  store %struct.Memory* %call_40130c, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401310	 Bytes: 4
  %loadMem_401310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401310 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401310)
  store %struct.Memory* %call_401310, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401314	 Bytes: 4
  %loadMem_401314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401314 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401314)
  store %struct.Memory* %call_401314, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401318	 Bytes: 4
  %loadMem_401318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401318 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401318)
  store %struct.Memory* %call_401318, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40131c	 Bytes: 4
  %loadMem_40131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131c)
  store %struct.Memory* %call_40131c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401320	 Bytes: 4
  %loadMem_401320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401320 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401320)
  store %struct.Memory* %call_401320, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401324	 Bytes: 3
  %loadMem_401324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401324 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401324)
  store %struct.Memory* %call_401324, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 401327	 Bytes: 3
  %loadMem_401327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401327 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401327)
  store %struct.Memory* %call_401327, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40132a	 Bytes: 4
  %loadMem_40132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132a)
  store %struct.Memory* %call_40132a, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40132e	 Bytes: 4
  %loadMem_40132e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132e = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132e)
  store %struct.Memory* %call_40132e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401332	 Bytes: 4
  %loadMem_401332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401332 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401332)
  store %struct.Memory* %call_401332, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401336	 Bytes: 4
  %loadMem_401336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401336 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401336)
  store %struct.Memory* %call_401336, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40133a	 Bytes: 2
  %loadMem_40133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133a)
  store %struct.Memory* %call_40133a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40133c	 Bytes: 3
  %loadMem_40133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133c = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133c)
  store %struct.Memory* %call_40133c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40133f	 Bytes: 4
  %loadMem_40133f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133f)
  store %struct.Memory* %call_40133f, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401343	 Bytes: 4
  %loadMem_401343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401343 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401343)
  store %struct.Memory* %call_401343, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401347	 Bytes: 2
  %loadMem_401347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401347 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401347)
  store %struct.Memory* %call_401347, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 401349	 Bytes: 3
  %loadMem_401349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401349 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401349)
  store %struct.Memory* %call_401349, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 40134c	 Bytes: 3
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134c = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134c)
  store %struct.Memory* %call_40134c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40134f	 Bytes: 2
  %loadMem_40134f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134f)
  store %struct.Memory* %call_40134f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401351	 Bytes: 3
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401351 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401351)
  store %struct.Memory* %call_401351, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm2	 RIP: 401354	 Bytes: 5
  %loadMem_401354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401354 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401354)
  store %struct.Memory* %call_401354, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401359	 Bytes: 4
  %loadMem_401359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401359 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401359)
  store %struct.Memory* %call_401359, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40135d	 Bytes: 3
  %loadMem_40135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135d)
  store %struct.Memory* %call_40135d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401360	 Bytes: 4
  %loadMem_401360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401360 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401360)
  store %struct.Memory* %call_401360, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401364	 Bytes: 4
  %loadMem_401364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401364 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401364)
  store %struct.Memory* %call_401364, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401368	 Bytes: 4
  %loadMem_401368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401368 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401368)
  store %struct.Memory* %call_401368, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40136c	 Bytes: 4
  %loadMem_40136c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136c = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136c)
  store %struct.Memory* %call_40136c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401370	 Bytes: 4
  %loadMem_401370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401370 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401370)
  store %struct.Memory* %call_401370, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401374	 Bytes: 4
  %loadMem_401374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401374 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401374)
  store %struct.Memory* %call_401374, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401378	 Bytes: 3
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401378 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401378)
  store %struct.Memory* %call_401378, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40137b	 Bytes: 3
  %loadMem_40137b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137b = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137b)
  store %struct.Memory* %call_40137b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40137e	 Bytes: 4
  %loadMem_40137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137e)
  store %struct.Memory* %call_40137e, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401382	 Bytes: 4
  %loadMem_401382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401382 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401382)
  store %struct.Memory* %call_401382, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401386	 Bytes: 4
  %loadMem_401386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401386 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401386)
  store %struct.Memory* %call_401386, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40138a	 Bytes: 4
  %loadMem_40138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138a = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138a)
  store %struct.Memory* %call_40138a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40138e	 Bytes: 2
  %loadMem_40138e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138e = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138e)
  store %struct.Memory* %call_40138e, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401390	 Bytes: 3
  %loadMem_401390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401390 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401390)
  store %struct.Memory* %call_401390, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401393	 Bytes: 4
  %loadMem_401393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401393 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401393)
  store %struct.Memory* %call_401393, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401397	 Bytes: 4
  %loadMem_401397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401397 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401397)
  store %struct.Memory* %call_401397, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40139b	 Bytes: 2
  %loadMem_40139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139b = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139b)
  store %struct.Memory* %call_40139b, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40139d	 Bytes: 3
  %loadMem_40139d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139d)
  store %struct.Memory* %call_40139d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4013a0	 Bytes: 3
  %loadMem_4013a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a0 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a0)
  store %struct.Memory* %call_4013a0, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013a3	 Bytes: 2
  %loadMem_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a3 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a3)
  store %struct.Memory* %call_4013a3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4013a5	 Bytes: 3
  %loadMem_4013a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a5 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a5)
  store %struct.Memory* %call_4013a5, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4013a8	 Bytes: 5
  %loadMem_4013a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a8 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a8)
  store %struct.Memory* %call_4013a8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4013ad	 Bytes: 4
  %loadMem_4013ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ad = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ad)
  store %struct.Memory* %call_4013ad, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4013b1	 Bytes: 3
  %loadMem_4013b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b1)
  store %struct.Memory* %call_4013b1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013b4	 Bytes: 4
  %loadMem_4013b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b4)
  store %struct.Memory* %call_4013b4, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4013b8	 Bytes: 4
  %loadMem_4013b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b8 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b8)
  store %struct.Memory* %call_4013b8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013bc	 Bytes: 4
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bc)
  store %struct.Memory* %call_4013bc, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4013c0	 Bytes: 4
  %loadMem_4013c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c0 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c0)
  store %struct.Memory* %call_4013c0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013c4	 Bytes: 4
  %loadMem_4013c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c4)
  store %struct.Memory* %call_4013c4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4013c8	 Bytes: 4
  %loadMem_4013c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c8 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c8)
  store %struct.Memory* %call_4013c8, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4013cc	 Bytes: 3
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cc = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cc)
  store %struct.Memory* %call_4013cc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4013cf	 Bytes: 3
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cf = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cf)
  store %struct.Memory* %call_4013cf, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013d2	 Bytes: 4
  %loadMem_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d2)
  store %struct.Memory* %call_4013d2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4013d6	 Bytes: 4
  %loadMem_4013d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d6 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d6)
  store %struct.Memory* %call_4013d6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013da	 Bytes: 4
  %loadMem_4013da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013da = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013da)
  store %struct.Memory* %call_4013da, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013de	 Bytes: 4
  %loadMem_4013de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013de = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013de)
  store %struct.Memory* %call_4013de, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013e2	 Bytes: 2
  %loadMem_4013e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e2)
  store %struct.Memory* %call_4013e2, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4013e4	 Bytes: 3
  %loadMem_4013e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e4 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e4)
  store %struct.Memory* %call_4013e4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4013e7	 Bytes: 4
  %loadMem_4013e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e7)
  store %struct.Memory* %call_4013e7, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4013eb	 Bytes: 4
  %loadMem_4013eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013eb = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013eb)
  store %struct.Memory* %call_4013eb, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013ef	 Bytes: 2
  %loadMem_4013ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ef = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ef)
  store %struct.Memory* %call_4013ef, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4013f1	 Bytes: 3
  %loadMem_4013f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f1 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f1)
  store %struct.Memory* %call_4013f1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4013f4	 Bytes: 3
  %loadMem_4013f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f4 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f4)
  store %struct.Memory* %call_4013f4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4013f7	 Bytes: 2
  %loadMem_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f7 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f7)
  store %struct.Memory* %call_4013f7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4013f9	 Bytes: 3
  %loadMem_4013f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f9)
  store %struct.Memory* %call_4013f9, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm2	 RIP: 4013fc	 Bytes: 5
  %loadMem_4013fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fc = call %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fc)
  store %struct.Memory* %call_4013fc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401401	 Bytes: 4
  %loadMem_401401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401401 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401401)
  store %struct.Memory* %call_401401, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401405	 Bytes: 3
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401405 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401405)
  store %struct.Memory* %call_401405, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401408	 Bytes: 4
  %loadMem_401408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401408 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401408)
  store %struct.Memory* %call_401408, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40140c	 Bytes: 4
  %loadMem_40140c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140c = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140c)
  store %struct.Memory* %call_40140c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401410	 Bytes: 4
  %loadMem_401410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401410 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401410)
  store %struct.Memory* %call_401410, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401414	 Bytes: 4
  %loadMem_401414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401414 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401414)
  store %struct.Memory* %call_401414, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401418	 Bytes: 4
  %loadMem_401418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401418 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401418)
  store %struct.Memory* %call_401418, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40141c	 Bytes: 4
  %loadMem_40141c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141c = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141c)
  store %struct.Memory* %call_40141c, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401420	 Bytes: 3
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401420 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401420)
  store %struct.Memory* %call_401420, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401423	 Bytes: 3
  %loadMem_401423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401423 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401423)
  store %struct.Memory* %call_401423, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401426	 Bytes: 4
  %loadMem_401426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401426 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401426)
  store %struct.Memory* %call_401426, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40142a	 Bytes: 4
  %loadMem_40142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142a = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142a)
  store %struct.Memory* %call_40142a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40142e	 Bytes: 4
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142e)
  store %struct.Memory* %call_40142e, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401432	 Bytes: 4
  %loadMem_401432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401432 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401432)
  store %struct.Memory* %call_401432, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401436	 Bytes: 2
  %loadMem_401436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401436 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401436)
  store %struct.Memory* %call_401436, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401438	 Bytes: 3
  %loadMem_401438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401438 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401438)
  store %struct.Memory* %call_401438, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40143b	 Bytes: 4
  %loadMem_40143b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143b)
  store %struct.Memory* %call_40143b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40143f	 Bytes: 4
  %loadMem_40143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143f)
  store %struct.Memory* %call_40143f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401443	 Bytes: 2
  %loadMem_401443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401443 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401443)
  store %struct.Memory* %call_401443, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 401445	 Bytes: 3
  %loadMem_401445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401445 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401445)
  store %struct.Memory* %call_401445, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401448	 Bytes: 3
  %loadMem_401448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401448 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401448)
  store %struct.Memory* %call_401448, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40144b	 Bytes: 2
  %loadMem_40144b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144b = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144b)
  store %struct.Memory* %call_40144b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40144d	 Bytes: 3
  %loadMem_40144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144d)
  store %struct.Memory* %call_40144d, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm2	 RIP: 401450	 Bytes: 5
  %loadMem_401450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401450 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401450)
  store %struct.Memory* %call_401450, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 401455	 Bytes: 4
  %loadMem_401455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401455 = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401455)
  store %struct.Memory* %call_401455, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401459	 Bytes: 4
  %loadMem_401459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401459 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401459)
  store %struct.Memory* %call_401459, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40145d	 Bytes: 4
  %loadMem_40145d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145d)
  store %struct.Memory* %call_40145d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401461	 Bytes: 3
  %loadMem_401461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401461 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401461)
  store %struct.Memory* %call_401461, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401464	 Bytes: 4
  %loadMem_401464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401464 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401464)
  store %struct.Memory* %call_401464, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401468	 Bytes: 4
  %loadMem_401468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401468 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401468)
  store %struct.Memory* %call_401468, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40146c	 Bytes: 4
  %loadMem_40146c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146c)
  store %struct.Memory* %call_40146c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401470	 Bytes: 4
  %loadMem_401470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401470 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401470)
  store %struct.Memory* %call_401470, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401474	 Bytes: 4
  %loadMem_401474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401474 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401474)
  store %struct.Memory* %call_401474, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401478	 Bytes: 4
  %loadMem_401478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401478 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401478)
  store %struct.Memory* %call_401478, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40147c	 Bytes: 3
  %loadMem_40147c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147c = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147c)
  store %struct.Memory* %call_40147c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40147f	 Bytes: 4
  %loadMem_40147f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147f)
  store %struct.Memory* %call_40147f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401483	 Bytes: 4
  %loadMem_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401483 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401483)
  store %struct.Memory* %call_401483, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401487	 Bytes: 4
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401487 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401487)
  store %struct.Memory* %call_401487, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40148b	 Bytes: 4
  %loadMem_40148b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148b)
  store %struct.Memory* %call_40148b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40148f	 Bytes: 2
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148f)
  store %struct.Memory* %call_40148f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401491	 Bytes: 3
  %loadMem_401491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401491 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401491)
  store %struct.Memory* %call_401491, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401494	 Bytes: 4
  %loadMem_401494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401494 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401494)
  store %struct.Memory* %call_401494, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401498	 Bytes: 4
  %loadMem_401498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401498 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401498)
  store %struct.Memory* %call_401498, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40149c	 Bytes: 2
  %loadMem_40149c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149c)
  store %struct.Memory* %call_40149c, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40149e	 Bytes: 3
  %loadMem_40149e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149e = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149e)
  store %struct.Memory* %call_40149e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4014a1	 Bytes: 3
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a1)
  store %struct.Memory* %call_4014a1, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4014a4	 Bytes: 5
  %loadMem_4014a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a4 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a4)
  store %struct.Memory* %call_4014a4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4014a9	 Bytes: 4
  %loadMem_4014a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a9)
  store %struct.Memory* %call_4014a9, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4014ad	 Bytes: 3
  %loadMem_4014ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ad = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ad)
  store %struct.Memory* %call_4014ad, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014b0	 Bytes: 4
  %loadMem_4014b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b0)
  store %struct.Memory* %call_4014b0, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4014b4	 Bytes: 4
  %loadMem_4014b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b4 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b4)
  store %struct.Memory* %call_4014b4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014b8	 Bytes: 4
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b8)
  store %struct.Memory* %call_4014b8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4014bc	 Bytes: 4
  %loadMem_4014bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bc = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bc)
  store %struct.Memory* %call_4014bc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014c0	 Bytes: 4
  %loadMem_4014c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c0)
  store %struct.Memory* %call_4014c0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4014c4	 Bytes: 4
  %loadMem_4014c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c4 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c4)
  store %struct.Memory* %call_4014c4, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4014c8	 Bytes: 3
  %loadMem_4014c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c8 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c8)
  store %struct.Memory* %call_4014c8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4014cb	 Bytes: 3
  %loadMem_4014cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cb = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cb)
  store %struct.Memory* %call_4014cb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014ce	 Bytes: 4
  %loadMem_4014ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ce = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ce)
  store %struct.Memory* %call_4014ce, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4014d2	 Bytes: 4
  %loadMem_4014d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d2 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d2)
  store %struct.Memory* %call_4014d2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014d6	 Bytes: 4
  %loadMem_4014d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d6)
  store %struct.Memory* %call_4014d6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014da	 Bytes: 4
  %loadMem_4014da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014da = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014da)
  store %struct.Memory* %call_4014da, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014de	 Bytes: 2
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014de = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014de)
  store %struct.Memory* %call_4014de, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4014e0	 Bytes: 3
  %loadMem_4014e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e0 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e0)
  store %struct.Memory* %call_4014e0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4014e3	 Bytes: 4
  %loadMem_4014e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e3)
  store %struct.Memory* %call_4014e3, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4014e7	 Bytes: 4
  %loadMem_4014e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e7 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e7)
  store %struct.Memory* %call_4014e7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4014eb	 Bytes: 2
  %loadMem_4014eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014eb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014eb)
  store %struct.Memory* %call_4014eb, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4014ed	 Bytes: 3
  %loadMem_4014ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ed = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ed)
  store %struct.Memory* %call_4014ed, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4014f0	 Bytes: 3
  %loadMem_4014f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f0)
  store %struct.Memory* %call_4014f0, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4014f3	 Bytes: 5
  %loadMem_4014f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f3 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f3)
  store %struct.Memory* %call_4014f3, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4014f8	 Bytes: 4
  %loadMem_4014f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f8 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f8)
  store %struct.Memory* %call_4014f8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4014fc	 Bytes: 4
  %loadMem_4014fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fc)
  store %struct.Memory* %call_4014fc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401500	 Bytes: 3
  %loadMem_401500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401500 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401500)
  store %struct.Memory* %call_401500, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401503	 Bytes: 4
  %loadMem_401503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401503 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401503)
  store %struct.Memory* %call_401503, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 401507	 Bytes: 3
  %loadMem_401507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401507 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401507)
  store %struct.Memory* %call_401507, %struct.Memory** %MEMORY

  ; Code: shll $0x0, %edx	 RIP: 40150a	 Bytes: 3
  %loadMem_40150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150a = call %struct.Memory* @routine_shll__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150a)
  store %struct.Memory* %call_40150a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 40150d	 Bytes: 4
  %loadMem_40150d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150d)
  store %struct.Memory* %call_40150d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401511	 Bytes: 4
  %loadMem_401511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401511 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401511)
  store %struct.Memory* %call_401511, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401515	 Bytes: 4
  %loadMem_401515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401515 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401515)
  store %struct.Memory* %call_401515, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401519	 Bytes: 4
  %loadMem_401519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401519 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401519)
  store %struct.Memory* %call_401519, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40151d	 Bytes: 3
  %loadMem_40151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151d = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151d)
  store %struct.Memory* %call_40151d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401520	 Bytes: 4
  %loadMem_401520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401520 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401520)
  store %struct.Memory* %call_401520, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401524	 Bytes: 4
  %loadMem_401524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401524 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401524)
  store %struct.Memory* %call_401524, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401528	 Bytes: 4
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401528 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401528)
  store %struct.Memory* %call_401528, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40152c	 Bytes: 4
  %loadMem_40152c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152c)
  store %struct.Memory* %call_40152c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401530	 Bytes: 2
  %loadMem_401530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401530 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401530)
  store %struct.Memory* %call_401530, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401532	 Bytes: 3
  %loadMem_401532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401532 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401532)
  store %struct.Memory* %call_401532, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 401535	 Bytes: 4
  %loadMem_401535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401535 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401535)
  store %struct.Memory* %call_401535, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401539	 Bytes: 4
  %loadMem_401539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401539 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401539)
  store %struct.Memory* %call_401539, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40153d	 Bytes: 2
  %loadMem_40153d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153d)
  store %struct.Memory* %call_40153d, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40153f	 Bytes: 3
  %loadMem_40153f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153f = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153f)
  store %struct.Memory* %call_40153f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401542	 Bytes: 3
  %loadMem_401542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401542 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401542)
  store %struct.Memory* %call_401542, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 401545	 Bytes: 5
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401545 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401545)
  store %struct.Memory* %call_401545, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40154a	 Bytes: 4
  %loadMem_40154a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154a)
  store %struct.Memory* %call_40154a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40154e	 Bytes: 3
  %loadMem_40154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154e)
  store %struct.Memory* %call_40154e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401551	 Bytes: 4
  %loadMem_401551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401551 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401551)
  store %struct.Memory* %call_401551, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401555	 Bytes: 4
  %loadMem_401555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401555 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401555)
  store %struct.Memory* %call_401555, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401559	 Bytes: 4
  %loadMem_401559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401559 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401559)
  store %struct.Memory* %call_401559, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 40155d	 Bytes: 4
  %loadMem_40155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155d = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155d)
  store %struct.Memory* %call_40155d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401561	 Bytes: 4
  %loadMem_401561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401561 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401561)
  store %struct.Memory* %call_401561, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401565	 Bytes: 4
  %loadMem_401565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401565 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401565)
  store %struct.Memory* %call_401565, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401569	 Bytes: 3
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401569 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401569)
  store %struct.Memory* %call_401569, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40156c	 Bytes: 4
  %loadMem_40156c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156c)
  store %struct.Memory* %call_40156c, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401570	 Bytes: 4
  %loadMem_401570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401570 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401570)
  store %struct.Memory* %call_401570, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401574	 Bytes: 4
  %loadMem_401574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401574 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401574)
  store %struct.Memory* %call_401574, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401578	 Bytes: 4
  %loadMem_401578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401578 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401578)
  store %struct.Memory* %call_401578, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40157c	 Bytes: 2
  %loadMem_40157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157c)
  store %struct.Memory* %call_40157c, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40157e	 Bytes: 3
  %loadMem_40157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157e = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157e)
  store %struct.Memory* %call_40157e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 401581	 Bytes: 3
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401581 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401581)
  store %struct.Memory* %call_401581, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401584	 Bytes: 4
  %loadMem_401584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401584 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401584)
  store %struct.Memory* %call_401584, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401588	 Bytes: 4
  %loadMem_401588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401588 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401588)
  store %struct.Memory* %call_401588, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40158c	 Bytes: 2
  %loadMem_40158c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158c)
  store %struct.Memory* %call_40158c, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40158e	 Bytes: 3
  %loadMem_40158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158e = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158e)
  store %struct.Memory* %call_40158e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401591	 Bytes: 3
  %loadMem_401591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401591 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401591)
  store %struct.Memory* %call_401591, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 401594	 Bytes: 5
  %loadMem_401594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401594 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401594)
  store %struct.Memory* %call_401594, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 401599	 Bytes: 4
  %loadMem_401599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401599 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401599)
  store %struct.Memory* %call_401599, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40159d	 Bytes: 4
  %loadMem_40159d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159d)
  store %struct.Memory* %call_40159d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4015a1	 Bytes: 3
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015a4	 Bytes: 4
  %loadMem_4015a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a4)
  store %struct.Memory* %call_4015a4, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 4015a8	 Bytes: 3
  %loadMem_4015a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a8 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a8)
  store %struct.Memory* %call_4015a8, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4015ab	 Bytes: 3
  %loadMem_4015ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ab = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ab)
  store %struct.Memory* %call_4015ab, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015ae	 Bytes: 4
  %loadMem_4015ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ae = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ae)
  store %struct.Memory* %call_4015ae, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4015b2	 Bytes: 4
  %loadMem_4015b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b2 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b2)
  store %struct.Memory* %call_4015b2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015b6	 Bytes: 4
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b6)
  store %struct.Memory* %call_4015b6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4015ba	 Bytes: 4
  %loadMem_4015ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ba = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ba)
  store %struct.Memory* %call_4015ba, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4015be	 Bytes: 3
  %loadMem_4015be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015be = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015be)
  store %struct.Memory* %call_4015be, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015c1	 Bytes: 4
  %loadMem_4015c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c1)
  store %struct.Memory* %call_4015c1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4015c5	 Bytes: 4
  %loadMem_4015c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c5 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c5)
  store %struct.Memory* %call_4015c5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015c9	 Bytes: 4
  %loadMem_4015c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c9)
  store %struct.Memory* %call_4015c9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015cd	 Bytes: 4
  %loadMem_4015cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cd = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cd)
  store %struct.Memory* %call_4015cd, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015d1	 Bytes: 2
  %loadMem_4015d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d1 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d1)
  store %struct.Memory* %call_4015d1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4015d3	 Bytes: 3
  %loadMem_4015d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d3 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d3)
  store %struct.Memory* %call_4015d3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4015d6	 Bytes: 4
  %loadMem_4015d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d6)
  store %struct.Memory* %call_4015d6, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4015da	 Bytes: 4
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015da = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015da)
  store %struct.Memory* %call_4015da, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4015de	 Bytes: 2
  %loadMem_4015de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015de = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015de)
  store %struct.Memory* %call_4015de, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4015e0	 Bytes: 3
  %loadMem_4015e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e0 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e0)
  store %struct.Memory* %call_4015e0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4015e3	 Bytes: 3
  %loadMem_4015e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e3)
  store %struct.Memory* %call_4015e3, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4015e6	 Bytes: 5
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4015eb	 Bytes: 4
  %loadMem_4015eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015eb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015eb)
  store %struct.Memory* %call_4015eb, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4015ef	 Bytes: 3
  %loadMem_4015ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ef = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ef)
  store %struct.Memory* %call_4015ef, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015f2	 Bytes: 4
  %loadMem_4015f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f2)
  store %struct.Memory* %call_4015f2, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4015f6	 Bytes: 4
  %loadMem_4015f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f6 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f6)
  store %struct.Memory* %call_4015f6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4015fa	 Bytes: 4
  %loadMem_4015fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fa)
  store %struct.Memory* %call_4015fa, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4015fe	 Bytes: 4
  %loadMem_4015fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fe = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fe)
  store %struct.Memory* %call_4015fe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401602	 Bytes: 4
  %loadMem_401602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401602 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401602)
  store %struct.Memory* %call_401602, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401606	 Bytes: 4
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401606 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401606)
  store %struct.Memory* %call_401606, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40160a	 Bytes: 3
  %loadMem_40160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160a)
  store %struct.Memory* %call_40160a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40160d	 Bytes: 4
  %loadMem_40160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160d)
  store %struct.Memory* %call_40160d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401611	 Bytes: 4
  %loadMem_401611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401611 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401611)
  store %struct.Memory* %call_401611, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401615	 Bytes: 4
  %loadMem_401615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401615 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401615)
  store %struct.Memory* %call_401615, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401619	 Bytes: 4
  %loadMem_401619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401619 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401619)
  store %struct.Memory* %call_401619, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40161d	 Bytes: 2
  %loadMem_40161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161d)
  store %struct.Memory* %call_40161d, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40161f	 Bytes: 3
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401622	 Bytes: 4
  %loadMem_401622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401622 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401622)
  store %struct.Memory* %call_401622, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401626	 Bytes: 4
  %loadMem_401626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401626 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401626)
  store %struct.Memory* %call_401626, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40162a	 Bytes: 2
  %loadMem_40162a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162a = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162a)
  store %struct.Memory* %call_40162a, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 40162c	 Bytes: 3
  %loadMem_40162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162c)
  store %struct.Memory* %call_40162c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40162f	 Bytes: 3
  %loadMem_40162f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162f = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162f)
  store %struct.Memory* %call_40162f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401632	 Bytes: 2
  %loadMem_401632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401632 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401632)
  store %struct.Memory* %call_401632, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401634	 Bytes: 3
  %loadMem_401634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401634 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401634)
  store %struct.Memory* %call_401634, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 401637	 Bytes: 5
  %loadMem_401637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401637 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401637)
  store %struct.Memory* %call_401637, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40163c	 Bytes: 4
  %loadMem_40163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163c = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163c)
  store %struct.Memory* %call_40163c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 401640	 Bytes: 4
  %loadMem_401640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401640 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401640)
  store %struct.Memory* %call_401640, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401644	 Bytes: 3
  %loadMem_401644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401644 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401644)
  store %struct.Memory* %call_401644, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401647	 Bytes: 4
  %loadMem_401647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401647 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401647)
  store %struct.Memory* %call_401647, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40164b	 Bytes: 4
  %loadMem_40164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164b = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164b)
  store %struct.Memory* %call_40164b, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40164f	 Bytes: 4
  %loadMem_40164f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164f)
  store %struct.Memory* %call_40164f, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401653	 Bytes: 4
  %loadMem_401653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401653 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401653)
  store %struct.Memory* %call_401653, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401657	 Bytes: 4
  %loadMem_401657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401657 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401657)
  store %struct.Memory* %call_401657, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40165b	 Bytes: 4
  %loadMem_40165b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165b = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165b)
  store %struct.Memory* %call_40165b, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40165f	 Bytes: 3
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165f = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165f)
  store %struct.Memory* %call_40165f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401662	 Bytes: 4
  %loadMem_401662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401662 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401662)
  store %struct.Memory* %call_401662, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401666	 Bytes: 4
  %loadMem_401666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401666 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401666)
  store %struct.Memory* %call_401666, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 40166a	 Bytes: 4
  %loadMem_40166a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166a)
  store %struct.Memory* %call_40166a, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40166e	 Bytes: 4
  %loadMem_40166e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166e = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166e)
  store %struct.Memory* %call_40166e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401672	 Bytes: 2
  %loadMem_401672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401672 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401672)
  store %struct.Memory* %call_401672, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401674	 Bytes: 3
  %loadMem_401674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401674 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401674)
  store %struct.Memory* %call_401674, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 401677	 Bytes: 4
  %loadMem_401677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401677 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401677)
  store %struct.Memory* %call_401677, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40167b	 Bytes: 4
  %loadMem_40167b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167b = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167b)
  store %struct.Memory* %call_40167b, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40167f	 Bytes: 2
  %loadMem_40167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167f = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167f)
  store %struct.Memory* %call_40167f, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401681	 Bytes: 3
  %loadMem_401681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401681 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401681)
  store %struct.Memory* %call_401681, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401684	 Bytes: 3
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401684 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401684)
  store %struct.Memory* %call_401684, %struct.Memory** %MEMORY

  ; Code: addss (%rax,%rcx,4), %xmm0	 RIP: 401687	 Bytes: 5
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401687 = call %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401687)
  store %struct.Memory* %call_401687, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x64(%rbp)	 RIP: 40168c	 Bytes: 5
  %loadMem_40168c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168c = call %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168c)
  store %struct.Memory* %call_40168c, %struct.Memory** %MEMORY

  ; Code: movss -0x64(%rbp), %xmm0	 RIP: 401691	 Bytes: 5
  %loadMem_401691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401691 = call %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401691)
  store %struct.Memory* %call_401691, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 401696	 Bytes: 4
  %loadMem_401696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401696 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401696)
  store %struct.Memory* %call_401696, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 40169a	 Bytes: 3
  %loadMem_40169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169a)
  store %struct.Memory* %call_40169a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40169d	 Bytes: 4
  %loadMem_40169d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169d)
  store %struct.Memory* %call_40169d, %struct.Memory** %MEMORY

  ; Code: imull $0x3, 0xc(%rcx), %edx	 RIP: 4016a1	 Bytes: 4
  %loadMem_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a1 = call %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a1)
  store %struct.Memory* %call_4016a1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016a5	 Bytes: 4
  %loadMem_4016a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a5)
  store %struct.Memory* %call_4016a5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4016a9	 Bytes: 4
  %loadMem_4016a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a9 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a9)
  store %struct.Memory* %call_4016a9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016ad	 Bytes: 4
  %loadMem_4016ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ad = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ad)
  store %struct.Memory* %call_4016ad, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4016b1	 Bytes: 4
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4016b5	 Bytes: 3
  %loadMem_4016b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b5)
  store %struct.Memory* %call_4016b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016b8	 Bytes: 4
  %loadMem_4016b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b8)
  store %struct.Memory* %call_4016b8, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4016bc	 Bytes: 4
  %loadMem_4016bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bc = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bc)
  store %struct.Memory* %call_4016bc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016c0	 Bytes: 4
  %loadMem_4016c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c0)
  store %struct.Memory* %call_4016c0, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016c4	 Bytes: 4
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c4 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c4)
  store %struct.Memory* %call_4016c4, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016c8	 Bytes: 2
  %loadMem_4016c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c8)
  store %struct.Memory* %call_4016c8, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4016ca	 Bytes: 3
  %loadMem_4016ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ca = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ca)
  store %struct.Memory* %call_4016ca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4016cd	 Bytes: 4
  %loadMem_4016cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cd)
  store %struct.Memory* %call_4016cd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4016d1	 Bytes: 4
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4016d5	 Bytes: 2
  %loadMem_4016d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d5)
  store %struct.Memory* %call_4016d5, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4016d7	 Bytes: 3
  %loadMem_4016d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d7 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d7)
  store %struct.Memory* %call_4016d7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4016da	 Bytes: 3
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 4016dd	 Bytes: 5
  %loadMem_4016dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016dd = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016dd)
  store %struct.Memory* %call_4016dd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4016e2	 Bytes: 4
  %loadMem_4016e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e2)
  store %struct.Memory* %call_4016e2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4016e6	 Bytes: 3
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e6)
  store %struct.Memory* %call_4016e6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016e9	 Bytes: 4
  %loadMem_4016e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e9)
  store %struct.Memory* %call_4016e9, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4016ed	 Bytes: 4
  %loadMem_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ed = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ed)
  store %struct.Memory* %call_4016ed, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016f1	 Bytes: 4
  %loadMem_4016f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f1)
  store %struct.Memory* %call_4016f1, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4016f5	 Bytes: 4
  %loadMem_4016f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f5 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f5)
  store %struct.Memory* %call_4016f5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4016f9	 Bytes: 4
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f9)
  store %struct.Memory* %call_4016f9, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4016fd	 Bytes: 4
  %loadMem_4016fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fd = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fd)
  store %struct.Memory* %call_4016fd, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401701	 Bytes: 3
  %loadMem_401701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401701 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401701)
  store %struct.Memory* %call_401701, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401704	 Bytes: 4
  %loadMem_401704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401704 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401704)
  store %struct.Memory* %call_401704, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401708	 Bytes: 4
  %loadMem_401708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401708 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401708)
  store %struct.Memory* %call_401708, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40170c	 Bytes: 4
  %loadMem_40170c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170c)
  store %struct.Memory* %call_40170c, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401710	 Bytes: 4
  %loadMem_401710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401710 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401710)
  store %struct.Memory* %call_401710, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401714	 Bytes: 2
  %loadMem_401714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401714 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401714)
  store %struct.Memory* %call_401714, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401716	 Bytes: 3
  %loadMem_401716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401716 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401716)
  store %struct.Memory* %call_401716, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401719	 Bytes: 4
  %loadMem_401719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401719 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401719)
  store %struct.Memory* %call_401719, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40171d	 Bytes: 4
  %loadMem_40171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171d = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171d)
  store %struct.Memory* %call_40171d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401721	 Bytes: 2
  %loadMem_401721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401721 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401721)
  store %struct.Memory* %call_401721, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401723	 Bytes: 3
  %loadMem_401723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401723 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401723)
  store %struct.Memory* %call_401723, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401726	 Bytes: 3
  %loadMem_401726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401726 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401726)
  store %struct.Memory* %call_401726, %struct.Memory** %MEMORY

  ; Code: subss (%rax,%rcx,4), %xmm0	 RIP: 401729	 Bytes: 5
  %loadMem_401729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401729 = call %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401729)
  store %struct.Memory* %call_401729, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 40172e	 Bytes: 4
  %loadMem_40172e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172e = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172e)
  store %struct.Memory* %call_40172e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401732	 Bytes: 3
  %loadMem_401732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401732 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401732)
  store %struct.Memory* %call_401732, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401735	 Bytes: 4
  %loadMem_401735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401735 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401735)
  store %struct.Memory* %call_401735, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401739	 Bytes: 4
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401739 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401739)
  store %struct.Memory* %call_401739, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 40173d	 Bytes: 4
  %loadMem_40173d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173d)
  store %struct.Memory* %call_40173d, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401741	 Bytes: 4
  %loadMem_401741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401741 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401741)
  store %struct.Memory* %call_401741, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401745	 Bytes: 4
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401749	 Bytes: 4
  %loadMem_401749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401749 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401749)
  store %struct.Memory* %call_401749, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 40174d	 Bytes: 3
  %loadMem_40174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174d = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174d)
  store %struct.Memory* %call_40174d, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401750	 Bytes: 4
  %loadMem_401750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401750 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401750)
  store %struct.Memory* %call_401750, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401754	 Bytes: 4
  %loadMem_401754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401754 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401754)
  store %struct.Memory* %call_401754, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401758	 Bytes: 4
  %loadMem_401758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401758 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401758)
  store %struct.Memory* %call_401758, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40175c	 Bytes: 4
  %loadMem_40175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175c)
  store %struct.Memory* %call_40175c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401760	 Bytes: 2
  %loadMem_401760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401760 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401760)
  store %struct.Memory* %call_401760, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401762	 Bytes: 3
  %loadMem_401762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401762 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401762)
  store %struct.Memory* %call_401762, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 401765	 Bytes: 4
  %loadMem_401765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401765 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401765)
  store %struct.Memory* %call_401765, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401769	 Bytes: 4
  %loadMem_401769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401769 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401769)
  store %struct.Memory* %call_401769, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 40176d	 Bytes: 2
  %loadMem_40176d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176d = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176d)
  store %struct.Memory* %call_40176d, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 40176f	 Bytes: 3
  %loadMem_40176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176f = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176f)
  store %struct.Memory* %call_40176f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401772	 Bytes: 3
  %loadMem_401772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401772 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401772)
  store %struct.Memory* %call_401772, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm0	 RIP: 401775	 Bytes: 5
  %loadMem_401775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401775 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401775)
  store %struct.Memory* %call_401775, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x68(%rbp)	 RIP: 40177a	 Bytes: 5
  %loadMem_40177a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177a = call %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177a)
  store %struct.Memory* %call_40177a, %struct.Memory** %MEMORY

  ; Code: movss -0x68(%rbp), %xmm0	 RIP: 40177f	 Bytes: 5
  %loadMem_40177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177f = call %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177f)
  store %struct.Memory* %call_40177f, %struct.Memory** %MEMORY

  ; Code: mulss -0x68(%rbp), %xmm0	 RIP: 401784	 Bytes: 5
  %loadMem_401784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401784 = call %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401784)
  store %struct.Memory* %call_401784, %struct.Memory** %MEMORY

  ; Code: addss -0x60(%rbp), %xmm0	 RIP: 401789	 Bytes: 5
  %loadMem_401789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401789 = call %struct.Memory* @routine_addss_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401789)
  store %struct.Memory* %call_401789, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x60(%rbp)	 RIP: 40178e	 Bytes: 5
  %loadMem_40178e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178e = call %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178e)
  store %struct.Memory* %call_40178e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 401793	 Bytes: 4
  %loadMem_401793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401793 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401793)
  store %struct.Memory* %call_401793, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 401797	 Bytes: 3
  %loadMem_401797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401797 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401797)
  store %struct.Memory* %call_401797, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40179a	 Bytes: 4
  %loadMem_40179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179a)
  store %struct.Memory* %call_40179a, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 40179e	 Bytes: 4
  %loadMem_40179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179e = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179e)
  store %struct.Memory* %call_40179e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017a2	 Bytes: 4
  %loadMem_4017a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a2)
  store %struct.Memory* %call_4017a2, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4017a6	 Bytes: 4
  %loadMem_4017a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a6 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a6)
  store %struct.Memory* %call_4017a6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017aa	 Bytes: 4
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017aa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017aa)
  store %struct.Memory* %call_4017aa, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4017ae	 Bytes: 4
  %loadMem_4017ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ae = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ae)
  store %struct.Memory* %call_4017ae, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4017b2	 Bytes: 3
  %loadMem_4017b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b2 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b2)
  store %struct.Memory* %call_4017b2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017b5	 Bytes: 4
  %loadMem_4017b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b5)
  store %struct.Memory* %call_4017b5, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4017b9	 Bytes: 4
  %loadMem_4017b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b9 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b9)
  store %struct.Memory* %call_4017b9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017bd	 Bytes: 4
  %loadMem_4017bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017bd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017bd)
  store %struct.Memory* %call_4017bd, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017c1	 Bytes: 4
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c1 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c1)
  store %struct.Memory* %call_4017c1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4017c5	 Bytes: 2
  %loadMem_4017c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c5 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c5)
  store %struct.Memory* %call_4017c5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4017c7	 Bytes: 3
  %loadMem_4017c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c7)
  store %struct.Memory* %call_4017c7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4017ca	 Bytes: 4
  %loadMem_4017ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ca = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ca)
  store %struct.Memory* %call_4017ca, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4017ce	 Bytes: 4
  %loadMem_4017ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ce = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ce)
  store %struct.Memory* %call_4017ce, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4017d2	 Bytes: 2
  %loadMem_4017d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d2 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d2)
  store %struct.Memory* %call_4017d2, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4017d4	 Bytes: 3
  %loadMem_4017d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d4 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d4)
  store %struct.Memory* %call_4017d4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4017d7	 Bytes: 3
  %loadMem_4017d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d7)
  store %struct.Memory* %call_4017d7, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4017da	 Bytes: 5
  %loadMem_4017da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017da = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017da)
  store %struct.Memory* %call_4017da, %struct.Memory** %MEMORY

  ; Code: movss 0x603058, %xmm1	 RIP: 4017df	 Bytes: 9
  %loadMem_4017df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017df = call %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017df)
  store %struct.Memory* %call_4017df, %struct.Memory** %MEMORY

  ; Code: mulss -0x68(%rbp), %xmm1	 RIP: 4017e8	 Bytes: 5
  %loadMem_4017e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e8 = call %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e8)
  store %struct.Memory* %call_4017e8, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4017ed	 Bytes: 4
  %loadMem_4017ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ed = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ed)
  store %struct.Memory* %call_4017ed, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 4017f1	 Bytes: 4
  %loadMem_4017f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f1)
  store %struct.Memory* %call_4017f1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4017f5	 Bytes: 3
  %loadMem_4017f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f5 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f5)
  store %struct.Memory* %call_4017f5, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4017f8	 Bytes: 4
  %loadMem_4017f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f8 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f8)
  store %struct.Memory* %call_4017f8, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4017fc	 Bytes: 4
  %loadMem_4017fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fc = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fc)
  store %struct.Memory* %call_4017fc, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401800	 Bytes: 4
  %loadMem_401800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401800 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401800)
  store %struct.Memory* %call_401800, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401804	 Bytes: 4
  %loadMem_401804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401804 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401804)
  store %struct.Memory* %call_401804, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401808	 Bytes: 4
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401808 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401808)
  store %struct.Memory* %call_401808, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 40180c	 Bytes: 4
  %loadMem_40180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180c = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180c)
  store %struct.Memory* %call_40180c, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401810	 Bytes: 3
  %loadMem_401810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401810 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401810)
  store %struct.Memory* %call_401810, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401813	 Bytes: 4
  %loadMem_401813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401813 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401813)
  store %struct.Memory* %call_401813, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 401817	 Bytes: 4
  %loadMem_401817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401817 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401817)
  store %struct.Memory* %call_401817, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 40181b	 Bytes: 4
  %loadMem_40181b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181b)
  store %struct.Memory* %call_40181b, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40181f	 Bytes: 4
  %loadMem_40181f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181f = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181f)
  store %struct.Memory* %call_40181f, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401823	 Bytes: 2
  %loadMem_401823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401823 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401823)
  store %struct.Memory* %call_401823, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 401825	 Bytes: 3
  %loadMem_401825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401825 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401825)
  store %struct.Memory* %call_401825, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 401828	 Bytes: 4
  %loadMem_401828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401828 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401828)
  store %struct.Memory* %call_401828, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 40182c	 Bytes: 4
  %loadMem_40182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182c = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182c)
  store %struct.Memory* %call_40182c, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401830	 Bytes: 2
  %loadMem_401830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401830 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401830)
  store %struct.Memory* %call_401830, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401832	 Bytes: 3
  %loadMem_401832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401832 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401832)
  store %struct.Memory* %call_401832, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401835	 Bytes: 3
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401835 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401835)
  store %struct.Memory* %call_401835, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 401838	 Bytes: 5
  %loadMem_401838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401838 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401838)
  store %struct.Memory* %call_401838, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 40183d	 Bytes: 3
  %loadMem_40183d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183d)
  store %struct.Memory* %call_40183d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401840	 Bytes: 3
  %loadMem_401840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401840 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401840)
  store %struct.Memory* %call_401840, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 401843	 Bytes: 3
  %loadMem_401843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401843 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401843)
  store %struct.Memory* %call_401843, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d8a	 RIP: 401846	 Bytes: 5
  %loadMem_401846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401846 = call %struct.Memory* @routine_jmpq_.L_400d8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401846, i64 -2748, i64 5)
  store %struct.Memory* %call_401846, %struct.Memory** %MEMORY

  br label %block_.L_400d8a

  ; Code: .L_40184b:	 RIP: 40184b	 Bytes: 0
block_.L_40184b:

  ; Code: jmpq .L_401850	 RIP: 40184b	 Bytes: 5
  %loadMem_40184b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184b = call %struct.Memory* @routine_jmpq_.L_401850(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184b, i64 5, i64 5)
  store %struct.Memory* %call_40184b, %struct.Memory** %MEMORY

  br label %block_.L_401850

  ; Code: .L_401850:	 RIP: 401850	 Bytes: 0
block_.L_401850:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 401850	 Bytes: 3
  %loadMem_401850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401850 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401850)
  store %struct.Memory* %call_401850, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401853	 Bytes: 3
  %loadMem_401853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401853 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401853)
  store %struct.Memory* %call_401853, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 401856	 Bytes: 3
  %loadMem_401856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401856 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401856)
  store %struct.Memory* %call_401856, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d77	 RIP: 401859	 Bytes: 5
  %loadMem_401859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401859 = call %struct.Memory* @routine_jmpq_.L_400d77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401859, i64 -2786, i64 5)
  store %struct.Memory* %call_401859, %struct.Memory** %MEMORY

  br label %block_.L_400d77

  ; Code: .L_40185e:	 RIP: 40185e	 Bytes: 0
block_.L_40185e:

  ; Code: jmpq .L_401863	 RIP: 40185e	 Bytes: 5
  %loadMem_40185e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185e = call %struct.Memory* @routine_jmpq_.L_401863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185e, i64 5, i64 5)
  store %struct.Memory* %call_40185e, %struct.Memory** %MEMORY

  br label %block_.L_401863

  ; Code: .L_401863:	 RIP: 401863	 Bytes: 0
block_.L_401863:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 401863	 Bytes: 3
  %loadMem_401863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401863 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401863)
  store %struct.Memory* %call_401863, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401866	 Bytes: 3
  %loadMem_401866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401866 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401866)
  store %struct.Memory* %call_401866, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 401869	 Bytes: 3
  %loadMem_401869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401869 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401869)
  store %struct.Memory* %call_401869, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d64	 RIP: 40186c	 Bytes: 5
  %loadMem_40186c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186c = call %struct.Memory* @routine_jmpq_.L_400d64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186c, i64 -2824, i64 5)
  store %struct.Memory* %call_40186c, %struct.Memory** %MEMORY

  br label %block_.L_400d64

  ; Code: .L_401871:	 RIP: 401871	 Bytes: 0
block_.L_401871:

  ; Code: movl $0x1, -0x44(%rbp)	 RIP: 401871	 Bytes: 7
  %loadMem_401871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401871 = call %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401871)
  store %struct.Memory* %call_401871, %struct.Memory** %MEMORY

  ; Code: .L_401878:	 RIP: 401878	 Bytes: 0
  br label %block_.L_401878
block_.L_401878:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 401878	 Bytes: 3
  %loadMem_401878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401878 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401878)
  store %struct.Memory* %call_401878, %struct.Memory** %MEMORY

  ; Code: cmpl -0x54(%rbp), %eax	 RIP: 40187b	 Bytes: 3
  %loadMem_40187b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187b = call %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187b)
  store %struct.Memory* %call_40187b, %struct.Memory** %MEMORY

  ; Code: jge .L_401976	 RIP: 40187e	 Bytes: 6
  %loadMem_40187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187e = call %struct.Memory* @routine_jge_.L_401976(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187e, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_40187e, %struct.Memory** %MEMORY

  %loadBr_40187e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40187e = icmp eq i8 %loadBr_40187e, 1
  br i1 %cmpBr_40187e, label %block_.L_401976, label %block_401884

block_401884:
  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 401884	 Bytes: 7
  %loadMem_401884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401884 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401884)
  store %struct.Memory* %call_401884, %struct.Memory** %MEMORY

  ; Code: .L_40188b:	 RIP: 40188b	 Bytes: 0
  br label %block_.L_40188b
block_.L_40188b:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 40188b	 Bytes: 3
  %loadMem_40188b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188b)
  store %struct.Memory* %call_40188b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x58(%rbp), %eax	 RIP: 40188e	 Bytes: 3
  %loadMem_40188e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188e = call %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188e)
  store %struct.Memory* %call_40188e, %struct.Memory** %MEMORY

  ; Code: jge .L_401963	 RIP: 401891	 Bytes: 6
  %loadMem_401891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401891 = call %struct.Memory* @routine_jge_.L_401963(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401891, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_401891, %struct.Memory** %MEMORY

  %loadBr_401891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401891 = icmp eq i8 %loadBr_401891, 1
  br i1 %cmpBr_401891, label %block_.L_401963, label %block_401897

block_401897:
  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 401897	 Bytes: 7
  %loadMem_401897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401897 = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401897)
  store %struct.Memory* %call_401897, %struct.Memory** %MEMORY

  ; Code: .L_40189e:	 RIP: 40189e	 Bytes: 0
  br label %block_.L_40189e
block_.L_40189e:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 40189e	 Bytes: 3
  %loadMem_40189e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189e = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189e)
  store %struct.Memory* %call_40189e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5c(%rbp), %eax	 RIP: 4018a1	 Bytes: 3
  %loadMem_4018a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a1 = call %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a1)
  store %struct.Memory* %call_4018a1, %struct.Memory** %MEMORY

  ; Code: jge .L_401950	 RIP: 4018a4	 Bytes: 6
  %loadMem_4018a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a4 = call %struct.Memory* @routine_jge_.L_401950(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a4, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4018a4, %struct.Memory** %MEMORY

  %loadBr_4018a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018a4 = icmp eq i8 %loadBr_4018a4, 1
  br i1 %cmpBr_4018a4, label %block_.L_401950, label %block_4018aa

block_4018aa:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 4018aa	 Bytes: 4
  %loadMem_4018aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018aa = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018aa)
  store %struct.Memory* %call_4018aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4018ae	 Bytes: 3
  %loadMem_4018ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ae = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ae)
  store %struct.Memory* %call_4018ae, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018b1	 Bytes: 4
  %loadMem_4018b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b1)
  store %struct.Memory* %call_4018b1, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 4018b5	 Bytes: 4
  %loadMem_4018b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b5 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b5)
  store %struct.Memory* %call_4018b5, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018b9	 Bytes: 4
  %loadMem_4018b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b9 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b9)
  store %struct.Memory* %call_4018b9, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 4018bd	 Bytes: 4
  %loadMem_4018bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018bd = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018bd)
  store %struct.Memory* %call_4018bd, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018c1	 Bytes: 4
  %loadMem_4018c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c1)
  store %struct.Memory* %call_4018c1, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 4018c5	 Bytes: 4
  %loadMem_4018c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c5 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c5)
  store %struct.Memory* %call_4018c5, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4018c9	 Bytes: 3
  %loadMem_4018c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c9 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c9)
  store %struct.Memory* %call_4018c9, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018cc	 Bytes: 4
  %loadMem_4018cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cc = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cc)
  store %struct.Memory* %call_4018cc, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 4018d0	 Bytes: 4
  %loadMem_4018d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d0 = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d0)
  store %struct.Memory* %call_4018d0, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018d4	 Bytes: 4
  %loadMem_4018d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d4 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d4)
  store %struct.Memory* %call_4018d4, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4018d8	 Bytes: 4
  %loadMem_4018d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d8 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d8)
  store %struct.Memory* %call_4018d8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4018dc	 Bytes: 2
  %loadMem_4018dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018dc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018dc)
  store %struct.Memory* %call_4018dc, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4018de	 Bytes: 3
  %loadMem_4018de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018de = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018de)
  store %struct.Memory* %call_4018de, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4018e1	 Bytes: 4
  %loadMem_4018e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e1)
  store %struct.Memory* %call_4018e1, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 4018e5	 Bytes: 4
  %loadMem_4018e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e5 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e5)
  store %struct.Memory* %call_4018e5, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4018e9	 Bytes: 2
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e9 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e9)
  store %struct.Memory* %call_4018e9, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 4018eb	 Bytes: 3
  %loadMem_4018eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018eb = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018eb)
  store %struct.Memory* %call_4018eb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4018ee	 Bytes: 3
  %loadMem_4018ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ee = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ee)
  store %struct.Memory* %call_4018ee, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 4018f1	 Bytes: 5
  %loadMem_4018f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f1 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f1)
  store %struct.Memory* %call_4018f1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4018f6	 Bytes: 4
  %loadMem_4018f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f6)
  store %struct.Memory* %call_4018f6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4018fa	 Bytes: 3
  %loadMem_4018fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fa = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fa)
  store %struct.Memory* %call_4018fa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4018fd	 Bytes: 4
  %loadMem_4018fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fd)
  store %struct.Memory* %call_4018fd, %struct.Memory** %MEMORY

  ; Code: imull $0x0, 0xc(%rcx), %edx	 RIP: 401901	 Bytes: 4
  %loadMem_401901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401901 = call %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401901)
  store %struct.Memory* %call_401901, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401905	 Bytes: 4
  %loadMem_401905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401905 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401905)
  store %struct.Memory* %call_401905, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %edx	 RIP: 401909	 Bytes: 4
  %loadMem_401909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401909 = call %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401909)
  store %struct.Memory* %call_401909, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40190d	 Bytes: 4
  %loadMem_40190d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190d)
  store %struct.Memory* %call_40190d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %edx	 RIP: 401911	 Bytes: 4
  %loadMem_401911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401911 = call %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401911)
  store %struct.Memory* %call_401911, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 401915	 Bytes: 3
  %loadMem_401915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401915 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401915)
  store %struct.Memory* %call_401915, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401918	 Bytes: 4
  %loadMem_401918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401918 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401918)
  store %struct.Memory* %call_401918, %struct.Memory** %MEMORY

  ; Code: imull 0x10(%rcx), %esi	 RIP: 40191c	 Bytes: 4
  %loadMem_40191c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191c = call %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191c)
  store %struct.Memory* %call_40191c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 401920	 Bytes: 4
  %loadMem_401920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401920 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401920)
  store %struct.Memory* %call_401920, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401924	 Bytes: 4
  %loadMem_401924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401924 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401924)
  store %struct.Memory* %call_401924, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401928	 Bytes: 2
  %loadMem_401928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401928 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401928)
  store %struct.Memory* %call_401928, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 40192a	 Bytes: 3
  %loadMem_40192a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192a = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192a)
  store %struct.Memory* %call_40192a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 40192d	 Bytes: 4
  %loadMem_40192d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192d)
  store %struct.Memory* %call_40192d, %struct.Memory** %MEMORY

  ; Code: imull 0x14(%rcx), %esi	 RIP: 401931	 Bytes: 4
  %loadMem_401931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401931 = call %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401931)
  store %struct.Memory* %call_401931, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401935	 Bytes: 2
  %loadMem_401935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401935 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401935)
  store %struct.Memory* %call_401935, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 401937	 Bytes: 3
  %loadMem_401937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401937 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401937)
  store %struct.Memory* %call_401937, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40193a	 Bytes: 3
  %loadMem_40193a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193a)
  store %struct.Memory* %call_40193a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 40193d	 Bytes: 5
  %loadMem_40193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193d = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193d)
  store %struct.Memory* %call_40193d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 401942	 Bytes: 3
  %loadMem_401942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401942 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401942)
  store %struct.Memory* %call_401942, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401945	 Bytes: 3
  %loadMem_401945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401945 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401945)
  store %struct.Memory* %call_401945, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 401948	 Bytes: 3
  %loadMem_401948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401948 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401948)
  store %struct.Memory* %call_401948, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40189e	 RIP: 40194b	 Bytes: 5
  %loadMem_40194b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194b = call %struct.Memory* @routine_jmpq_.L_40189e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194b, i64 -173, i64 5)
  store %struct.Memory* %call_40194b, %struct.Memory** %MEMORY

  br label %block_.L_40189e

  ; Code: .L_401950:	 RIP: 401950	 Bytes: 0
block_.L_401950:

  ; Code: jmpq .L_401955	 RIP: 401950	 Bytes: 5
  %loadMem_401950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401950 = call %struct.Memory* @routine_jmpq_.L_401955(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401950, i64 5, i64 5)
  store %struct.Memory* %call_401950, %struct.Memory** %MEMORY

  br label %block_.L_401955

  ; Code: .L_401955:	 RIP: 401955	 Bytes: 0
block_.L_401955:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 401955	 Bytes: 3
  %loadMem_401955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401955 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401955)
  store %struct.Memory* %call_401955, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401958	 Bytes: 3
  %loadMem_401958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401958 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401958)
  store %struct.Memory* %call_401958, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 40195b	 Bytes: 3
  %loadMem_40195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195b = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195b)
  store %struct.Memory* %call_40195b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40188b	 RIP: 40195e	 Bytes: 5
  %loadMem_40195e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195e = call %struct.Memory* @routine_jmpq_.L_40188b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195e, i64 -211, i64 5)
  store %struct.Memory* %call_40195e, %struct.Memory** %MEMORY

  br label %block_.L_40188b

  ; Code: .L_401963:	 RIP: 401963	 Bytes: 0
block_.L_401963:

  ; Code: jmpq .L_401968	 RIP: 401963	 Bytes: 5
  %loadMem_401963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401963 = call %struct.Memory* @routine_jmpq_.L_401968(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401963, i64 5, i64 5)
  store %struct.Memory* %call_401963, %struct.Memory** %MEMORY

  br label %block_.L_401968

  ; Code: .L_401968:	 RIP: 401968	 Bytes: 0
block_.L_401968:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 401968	 Bytes: 3
  %loadMem_401968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401968 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401968)
  store %struct.Memory* %call_401968, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40196b	 Bytes: 3
  %loadMem_40196b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196b)
  store %struct.Memory* %call_40196b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 40196e	 Bytes: 3
  %loadMem_40196e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196e = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196e)
  store %struct.Memory* %call_40196e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401878	 RIP: 401971	 Bytes: 5
  %loadMem_401971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401971 = call %struct.Memory* @routine_jmpq_.L_401878(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401971, i64 -249, i64 5)
  store %struct.Memory* %call_401971, %struct.Memory** %MEMORY

  br label %block_.L_401878

  ; Code: .L_401976:	 RIP: 401976	 Bytes: 0
block_.L_401976:

  ; Code: jmpq .L_40197b	 RIP: 401976	 Bytes: 5
  %loadMem_401976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401976 = call %struct.Memory* @routine_jmpq_.L_40197b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401976, i64 5, i64 5)
  store %struct.Memory* %call_401976, %struct.Memory** %MEMORY

  br label %block_.L_40197b

  ; Code: .L_40197b:	 RIP: 40197b	 Bytes: 0
block_.L_40197b:

  ; Code: movl -0x50(%rbp), %eax	 RIP: 40197b	 Bytes: 3
  %loadMem_40197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197b)
  store %struct.Memory* %call_40197b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40197e	 Bytes: 3
  %loadMem_40197e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197e)
  store %struct.Memory* %call_40197e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 401981	 Bytes: 3
  %loadMem_401981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401981 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401981)
  store %struct.Memory* %call_401981, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d49	 RIP: 401984	 Bytes: 5
  %loadMem_401984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401984 = call %struct.Memory* @routine_jmpq_.L_400d49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401984, i64 -3131, i64 5)
  store %struct.Memory* %call_401984, %struct.Memory** %MEMORY

  br label %block_.L_400d49

  ; Code: .L_401989:	 RIP: 401989	 Bytes: 0
block_.L_401989:

  ; Code: movss -0x60(%rbp), %xmm0	 RIP: 401989	 Bytes: 5
  %loadMem_401989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401989 = call %struct.Memory* @routine_movss_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401989)
  store %struct.Memory* %call_401989, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40198e	 Bytes: 1
  %loadMem_40198e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198e)
  store %struct.Memory* %call_40198e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40198f	 Bytes: 1
  %loadMem_40198f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198f)
  store %struct.Memory* %call_40198f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40198f
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_subl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edi__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edi__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
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

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_401989(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 84
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401871(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 88
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40185e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 92
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40184b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
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

define %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 0)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
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

define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}








define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_shll__0x0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 0)
  ret %struct.Memory* %12
}


































define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}












































define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fadd float %13, %14
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

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_shll__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}








































































define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


















































































define %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}


































define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
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

define %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fmul float %13, %14
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

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




































define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 100
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 3)
  ret %struct.Memory* %16
}












































































define %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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




define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






































define %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addss_MINUS0x60__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}














































define %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303832)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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




































define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_jmpq_.L_400d8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401850(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400d77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_401863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400d64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_401976(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_401963(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_401950(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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



















































































