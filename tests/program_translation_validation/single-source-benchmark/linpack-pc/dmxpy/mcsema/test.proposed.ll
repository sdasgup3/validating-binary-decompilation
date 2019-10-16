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


define %struct.Memory* @dmxpy(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .dmxpy:	 RIP: 401fb0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 401fb0	 Bytes: 1
  %loadMem_401fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb0)
  store %struct.Memory* %call_401fb0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 401fb1	 Bytes: 3
  %loadMem_401fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb1)
  store %struct.Memory* %call_401fb1, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 401fb4	 Bytes: 5
  %loadMem_401fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb4 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb4)
  store %struct.Memory* %call_401fb4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 401fb9	 Bytes: 3
  %loadMem_401fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb9 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb9)
  store %struct.Memory* %call_401fb9, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 401fbc	 Bytes: 4
  %loadMem_401fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbc = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbc)
  store %struct.Memory* %call_401fbc, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 401fc0	 Bytes: 3
  %loadMem_401fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc0 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc0)
  store %struct.Memory* %call_401fc0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 401fc3	 Bytes: 3
  %loadMem_401fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc3 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc3)
  store %struct.Memory* %call_401fc3, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x20(%rbp)	 RIP: 401fc6	 Bytes: 4
  %loadMem_401fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc6 = call %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc6)
  store %struct.Memory* %call_401fc6, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x28(%rbp)	 RIP: 401fca	 Bytes: 4
  %loadMem_401fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fca = call %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fca)
  store %struct.Memory* %call_401fca, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 401fce	 Bytes: 3
  %loadMem_401fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fce = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fce)
  store %struct.Memory* %call_401fce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 401fd1	 Bytes: 3
  %loadMem_401fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd1 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd1)
  store %struct.Memory* %call_401fd1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 401fd4	 Bytes: 2
  %loadMem_401fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd4 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd4)
  store %struct.Memory* %call_401fd4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 401fd6	 Bytes: 1
  %loadMem_401fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd6)
  store %struct.Memory* %call_401fd6, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 401fd7	 Bytes: 3
  %loadMem_401fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd7 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd7)
  store %struct.Memory* %call_401fd7, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 401fda	 Bytes: 2
  %loadMem_401fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fda = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fda)
  store %struct.Memory* %call_401fda, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 401fdc	 Bytes: 3
  %loadMem_401fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdc = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdc)
  store %struct.Memory* %call_401fdc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x2c(%rbp)	 RIP: 401fdf	 Bytes: 4
  %loadMem_401fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdf = call %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdf)
  store %struct.Memory* %call_401fdf, %struct.Memory** %MEMORY

  ; Code: jl .L_402059	 RIP: 401fe3	 Bytes: 6
  %loadMem_401fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe3 = call %struct.Memory* @routine_jl_.L_402059(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe3, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_401fe3, %struct.Memory** %MEMORY

  %loadBr_401fe3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401fe3 = icmp eq i8 %loadBr_401fe3, 1
  br i1 %cmpBr_401fe3, label %block_.L_402059, label %block_401fe9

block_401fe9:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401fe9	 Bytes: 3
  %loadMem_401fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe9)
  store %struct.Memory* %call_401fe9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 401fec	 Bytes: 3
  %loadMem_401fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fec = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fec)
  store %struct.Memory* %call_401fec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 401fef	 Bytes: 3
  %loadMem_401fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fef = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fef)
  store %struct.Memory* %call_401fef, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 401ff2	 Bytes: 7
  %loadMem_401ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff2 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff2)
  store %struct.Memory* %call_401ff2, %struct.Memory** %MEMORY

  ; Code: .L_401ff9:	 RIP: 401ff9	 Bytes: 0
  br label %block_.L_401ff9
block_.L_401ff9:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401ff9	 Bytes: 3
  %loadMem_401ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff9)
  store %struct.Memory* %call_401ff9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 401ffc	 Bytes: 3
  %loadMem_401ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffc = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffc)
  store %struct.Memory* %call_401ffc, %struct.Memory** %MEMORY

  ; Code: jge .L_402054	 RIP: 401fff	 Bytes: 6
  %loadMem_401fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fff = call %struct.Memory* @routine_jge_.L_402054(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fff, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_401fff, %struct.Memory** %MEMORY

  %loadBr_401fff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401fff = icmp eq i8 %loadBr_401fff, 1
  br i1 %cmpBr_401fff, label %block_.L_402054, label %block_402005

block_402005:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 402005	 Bytes: 4
  %loadMem_402005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402005 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402005)
  store %struct.Memory* %call_402005, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402009	 Bytes: 4
  %loadMem_402009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402009 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402009)
  store %struct.Memory* %call_402009, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 40200d	 Bytes: 5
  %loadMem_40200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200d)
  store %struct.Memory* %call_40200d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402012	 Bytes: 4
  %loadMem_402012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402012 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402012)
  store %struct.Memory* %call_402012, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 402016	 Bytes: 4
  %loadMem_402016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402016 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402016)
  store %struct.Memory* %call_402016, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40201a	 Bytes: 5
  %loadMem_40201a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201a)
  store %struct.Memory* %call_40201a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40201f	 Bytes: 4
  %loadMem_40201f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201f)
  store %struct.Memory* %call_40201f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402023	 Bytes: 3
  %loadMem_402023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402023 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402023)
  store %struct.Memory* %call_402023, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 402026	 Bytes: 4
  %loadMem_402026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402026 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402026)
  store %struct.Memory* %call_402026, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40202a	 Bytes: 3
  %loadMem_40202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202a = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202a)
  store %struct.Memory* %call_40202a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40202d	 Bytes: 3
  %loadMem_40202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202d)
  store %struct.Memory* %call_40202d, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402030	 Bytes: 5
  %loadMem_402030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402030 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402030)
  store %struct.Memory* %call_402030, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402035	 Bytes: 4
  %loadMem_402035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402035 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402035)
  store %struct.Memory* %call_402035, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 402039	 Bytes: 4
  %loadMem_402039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402039 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402039)
  store %struct.Memory* %call_402039, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40203d	 Bytes: 4
  %loadMem_40203d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203d)
  store %struct.Memory* %call_40203d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 402041	 Bytes: 5
  %loadMem_402041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402041 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402041)
  store %struct.Memory* %call_402041, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402046	 Bytes: 3
  %loadMem_402046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402046 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402046)
  store %struct.Memory* %call_402046, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402049	 Bytes: 3
  %loadMem_402049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402049 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402049)
  store %struct.Memory* %call_402049, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 40204c	 Bytes: 3
  %loadMem_40204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204c = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204c)
  store %struct.Memory* %call_40204c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401ff9	 RIP: 40204f	 Bytes: 5
  %loadMem_40204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204f = call %struct.Memory* @routine_jmpq_.L_401ff9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204f, i64 -86, i64 5)
  store %struct.Memory* %call_40204f, %struct.Memory** %MEMORY

  br label %block_.L_401ff9

  ; Code: .L_402054:	 RIP: 402054	 Bytes: 0
block_.L_402054:

  ; Code: jmpq .L_402059	 RIP: 402054	 Bytes: 5
  %loadMem_402054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402054 = call %struct.Memory* @routine_jmpq_.L_402059(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402054, i64 5, i64 5)
  store %struct.Memory* %call_402054, %struct.Memory** %MEMORY

  br label %block_.L_402059

  ; Code: .L_402059:	 RIP: 402059	 Bytes: 0
block_.L_402059:

  ; Code: movl $0x4, %eax	 RIP: 402059	 Bytes: 5
  %loadMem_402059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402059 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402059)
  store %struct.Memory* %call_402059, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40205e	 Bytes: 3
  %loadMem_40205e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205e)
  store %struct.Memory* %call_40205e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 402061	 Bytes: 3
  %loadMem_402061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402061 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402061)
  store %struct.Memory* %call_402061, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 402064	 Bytes: 2
  %loadMem_402064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402064 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402064)
  store %struct.Memory* %call_402064, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 402066	 Bytes: 1
  %loadMem_402066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402066 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402066)
  store %struct.Memory* %call_402066, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 402067	 Bytes: 3
  %loadMem_402067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402067 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402067)
  store %struct.Memory* %call_402067, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40206a	 Bytes: 2
  %loadMem_40206a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206a = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206a)
  store %struct.Memory* %call_40206a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 40206c	 Bytes: 3
  %loadMem_40206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206c = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206c)
  store %struct.Memory* %call_40206c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x2c(%rbp)	 RIP: 40206f	 Bytes: 4
  %loadMem_40206f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206f = call %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206f)
  store %struct.Memory* %call_40206f, %struct.Memory** %MEMORY

  ; Code: jl .L_40211a	 RIP: 402073	 Bytes: 6
  %loadMem_402073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402073 = call %struct.Memory* @routine_jl_.L_40211a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402073, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_402073, %struct.Memory** %MEMORY

  %loadBr_402073 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402073 = icmp eq i8 %loadBr_402073, 1
  br i1 %cmpBr_402073, label %block_.L_40211a, label %block_402079

block_402079:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 402079	 Bytes: 3
  %loadMem_402079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402079 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402079)
  store %struct.Memory* %call_402079, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40207c	 Bytes: 3
  %loadMem_40207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207c)
  store %struct.Memory* %call_40207c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40207f	 Bytes: 3
  %loadMem_40207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207f = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207f)
  store %struct.Memory* %call_40207f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 402082	 Bytes: 7
  %loadMem_402082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402082 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402082)
  store %struct.Memory* %call_402082, %struct.Memory** %MEMORY

  ; Code: .L_402089:	 RIP: 402089	 Bytes: 0
  br label %block_.L_402089
block_.L_402089:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402089	 Bytes: 3
  %loadMem_402089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402089 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402089)
  store %struct.Memory* %call_402089, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 40208c	 Bytes: 3
  %loadMem_40208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208c)
  store %struct.Memory* %call_40208c, %struct.Memory** %MEMORY

  ; Code: jge .L_402115	 RIP: 40208f	 Bytes: 6
  %loadMem_40208f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208f = call %struct.Memory* @routine_jge_.L_402115(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208f, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_40208f, %struct.Memory** %MEMORY

  %loadBr_40208f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40208f = icmp eq i8 %loadBr_40208f, 1
  br i1 %cmpBr_40208f, label %block_.L_402115, label %block_402095

block_402095:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 402095	 Bytes: 4
  %loadMem_402095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402095 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402095)
  store %struct.Memory* %call_402095, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402099	 Bytes: 4
  %loadMem_402099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402099 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402099)
  store %struct.Memory* %call_402099, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 40209d	 Bytes: 5
  %loadMem_40209d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209d)
  store %struct.Memory* %call_40209d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4020a2	 Bytes: 4
  %loadMem_4020a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a2)
  store %struct.Memory* %call_4020a2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4020a6	 Bytes: 3
  %loadMem_4020a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a6)
  store %struct.Memory* %call_4020a6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4020a9	 Bytes: 3
  %loadMem_4020a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a9 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a9)
  store %struct.Memory* %call_4020a9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4020ac	 Bytes: 3
  %loadMem_4020ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ac = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ac)
  store %struct.Memory* %call_4020ac, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4020af	 Bytes: 5
  %loadMem_4020af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020af = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020af)
  store %struct.Memory* %call_4020af, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4020b4	 Bytes: 4
  %loadMem_4020b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b4)
  store %struct.Memory* %call_4020b4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4020b8	 Bytes: 3
  %loadMem_4020b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b8 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b8)
  store %struct.Memory* %call_4020b8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4020bb	 Bytes: 3
  %loadMem_4020bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020bb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020bb)
  store %struct.Memory* %call_4020bb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4020be	 Bytes: 3
  %loadMem_4020be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020be = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020be)
  store %struct.Memory* %call_4020be, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4020c1	 Bytes: 3
  %loadMem_4020c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c1 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c1)
  store %struct.Memory* %call_4020c1, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4020c4	 Bytes: 3
  %loadMem_4020c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c4 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c4)
  store %struct.Memory* %call_4020c4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4020c7	 Bytes: 3
  %loadMem_4020c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c7)
  store %struct.Memory* %call_4020c7, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4020ca	 Bytes: 5
  %loadMem_4020ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ca = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ca)
  store %struct.Memory* %call_4020ca, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4020cf	 Bytes: 4
  %loadMem_4020cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cf = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cf)
  store %struct.Memory* %call_4020cf, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4020d3	 Bytes: 4
  %loadMem_4020d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d3)
  store %struct.Memory* %call_4020d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4020d7	 Bytes: 4
  %loadMem_4020d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d7)
  store %struct.Memory* %call_4020d7, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4020db	 Bytes: 5
  %loadMem_4020db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020db = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020db)
  store %struct.Memory* %call_4020db, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4020e0	 Bytes: 4
  %loadMem_4020e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e0)
  store %struct.Memory* %call_4020e0, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4020e4	 Bytes: 3
  %loadMem_4020e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e4)
  store %struct.Memory* %call_4020e4, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 4020e7	 Bytes: 4
  %loadMem_4020e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e7 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e7)
  store %struct.Memory* %call_4020e7, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4020eb	 Bytes: 3
  %loadMem_4020eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020eb = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020eb)
  store %struct.Memory* %call_4020eb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4020ee	 Bytes: 3
  %loadMem_4020ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ee = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ee)
  store %struct.Memory* %call_4020ee, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4020f1	 Bytes: 5
  %loadMem_4020f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f1 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f1)
  store %struct.Memory* %call_4020f1, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4020f6	 Bytes: 4
  %loadMem_4020f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f6 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f6)
  store %struct.Memory* %call_4020f6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4020fa	 Bytes: 4
  %loadMem_4020fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fa)
  store %struct.Memory* %call_4020fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4020fe	 Bytes: 4
  %loadMem_4020fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fe = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fe)
  store %struct.Memory* %call_4020fe, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 402102	 Bytes: 5
  %loadMem_402102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402102 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402102)
  store %struct.Memory* %call_402102, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402107	 Bytes: 3
  %loadMem_402107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402107 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402107)
  store %struct.Memory* %call_402107, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40210a	 Bytes: 3
  %loadMem_40210a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210a)
  store %struct.Memory* %call_40210a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 40210d	 Bytes: 3
  %loadMem_40210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210d = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210d)
  store %struct.Memory* %call_40210d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402089	 RIP: 402110	 Bytes: 5
  %loadMem_402110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402110 = call %struct.Memory* @routine_jmpq_.L_402089(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402110, i64 -135, i64 5)
  store %struct.Memory* %call_402110, %struct.Memory** %MEMORY

  br label %block_.L_402089

  ; Code: .L_402115:	 RIP: 402115	 Bytes: 0
block_.L_402115:

  ; Code: jmpq .L_40211a	 RIP: 402115	 Bytes: 5
  %loadMem_402115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402115 = call %struct.Memory* @routine_jmpq_.L_40211a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402115, i64 5, i64 5)
  store %struct.Memory* %call_402115, %struct.Memory** %MEMORY

  br label %block_.L_40211a

  ; Code: .L_40211a:	 RIP: 40211a	 Bytes: 0
block_.L_40211a:

  ; Code: movl $0x8, %eax	 RIP: 40211a	 Bytes: 5
  %loadMem_40211a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211a = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211a)
  store %struct.Memory* %call_40211a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40211f	 Bytes: 3
  %loadMem_40211f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211f)
  store %struct.Memory* %call_40211f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 402122	 Bytes: 3
  %loadMem_402122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402122 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402122)
  store %struct.Memory* %call_402122, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 402125	 Bytes: 2
  %loadMem_402125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402125 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402125)
  store %struct.Memory* %call_402125, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 402127	 Bytes: 1
  %loadMem_402127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402127 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402127)
  store %struct.Memory* %call_402127, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 402128	 Bytes: 3
  %loadMem_402128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402128 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402128)
  store %struct.Memory* %call_402128, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40212b	 Bytes: 2
  %loadMem_40212b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212b)
  store %struct.Memory* %call_40212b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 40212d	 Bytes: 3
  %loadMem_40212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212d = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212d)
  store %struct.Memory* %call_40212d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 402130	 Bytes: 4
  %loadMem_402130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402130 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402130)
  store %struct.Memory* %call_402130, %struct.Memory** %MEMORY

  ; Code: jl .L_40223d	 RIP: 402134	 Bytes: 6
  %loadMem_402134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402134 = call %struct.Memory* @routine_jl_.L_40223d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402134, i8* %BRANCH_TAKEN, i64 265, i64 6, i64 6)
  store %struct.Memory* %call_402134, %struct.Memory** %MEMORY

  %loadBr_402134 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402134 = icmp eq i8 %loadBr_402134, 1
  br i1 %cmpBr_402134, label %block_.L_40223d, label %block_40213a

block_40213a:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40213a	 Bytes: 3
  %loadMem_40213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213a)
  store %struct.Memory* %call_40213a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40213d	 Bytes: 3
  %loadMem_40213d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213d)
  store %struct.Memory* %call_40213d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 402140	 Bytes: 3
  %loadMem_402140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402140 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402140)
  store %struct.Memory* %call_402140, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 402143	 Bytes: 7
  %loadMem_402143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402143 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402143)
  store %struct.Memory* %call_402143, %struct.Memory** %MEMORY

  ; Code: .L_40214a:	 RIP: 40214a	 Bytes: 0
  br label %block_.L_40214a
block_.L_40214a:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40214a	 Bytes: 3
  %loadMem_40214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214a)
  store %struct.Memory* %call_40214a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 40214d	 Bytes: 3
  %loadMem_40214d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214d = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214d)
  store %struct.Memory* %call_40214d, %struct.Memory** %MEMORY

  ; Code: jge .L_402238	 RIP: 402150	 Bytes: 6
  %loadMem_402150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402150 = call %struct.Memory* @routine_jge_.L_402238(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402150, i8* %BRANCH_TAKEN, i64 232, i64 6, i64 6)
  store %struct.Memory* %call_402150, %struct.Memory** %MEMORY

  %loadBr_402150 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402150 = icmp eq i8 %loadBr_402150, 1
  br i1 %cmpBr_402150, label %block_.L_402238, label %block_402156

block_402156:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 402156	 Bytes: 4
  %loadMem_402156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402156 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402156)
  store %struct.Memory* %call_402156, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40215a	 Bytes: 4
  %loadMem_40215a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215a)
  store %struct.Memory* %call_40215a, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 40215e	 Bytes: 5
  %loadMem_40215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215e = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215e)
  store %struct.Memory* %call_40215e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402163	 Bytes: 4
  %loadMem_402163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402163 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402163)
  store %struct.Memory* %call_402163, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402167	 Bytes: 3
  %loadMem_402167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402167 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402167)
  store %struct.Memory* %call_402167, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 40216a	 Bytes: 3
  %loadMem_40216a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216a = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216a)
  store %struct.Memory* %call_40216a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40216d	 Bytes: 3
  %loadMem_40216d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216d)
  store %struct.Memory* %call_40216d, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402170	 Bytes: 5
  %loadMem_402170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402170 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402170)
  store %struct.Memory* %call_402170, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402175	 Bytes: 4
  %loadMem_402175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402175 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402175)
  store %struct.Memory* %call_402175, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402179	 Bytes: 3
  %loadMem_402179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402179 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402179)
  store %struct.Memory* %call_402179, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40217c	 Bytes: 3
  %loadMem_40217c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217c)
  store %struct.Memory* %call_40217c, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %esi	 RIP: 40217f	 Bytes: 3
  %loadMem_40217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217f = call %struct.Memory* @routine_subl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217f)
  store %struct.Memory* %call_40217f, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402182	 Bytes: 3
  %loadMem_402182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402182 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402182)
  store %struct.Memory* %call_402182, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402185	 Bytes: 3
  %loadMem_402185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402185 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402185)
  store %struct.Memory* %call_402185, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402188	 Bytes: 3
  %loadMem_402188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402188 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402188)
  store %struct.Memory* %call_402188, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40218b	 Bytes: 5
  %loadMem_40218b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218b = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218b)
  store %struct.Memory* %call_40218b, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402190	 Bytes: 4
  %loadMem_402190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402190 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402190)
  store %struct.Memory* %call_402190, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402194	 Bytes: 4
  %loadMem_402194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402194 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402194)
  store %struct.Memory* %call_402194, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402198	 Bytes: 3
  %loadMem_402198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402198 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402198)
  store %struct.Memory* %call_402198, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 40219b	 Bytes: 3
  %loadMem_40219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219b = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219b)
  store %struct.Memory* %call_40219b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40219e	 Bytes: 3
  %loadMem_40219e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219e)
  store %struct.Memory* %call_40219e, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4021a1	 Bytes: 5
  %loadMem_4021a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a1 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a1)
  store %struct.Memory* %call_4021a1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4021a6	 Bytes: 4
  %loadMem_4021a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a6)
  store %struct.Memory* %call_4021a6, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4021aa	 Bytes: 3
  %loadMem_4021aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021aa = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021aa)
  store %struct.Memory* %call_4021aa, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021ad	 Bytes: 3
  %loadMem_4021ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ad = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ad)
  store %struct.Memory* %call_4021ad, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 4021b0	 Bytes: 3
  %loadMem_4021b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b0 = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b0)
  store %struct.Memory* %call_4021b0, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4021b3	 Bytes: 3
  %loadMem_4021b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b3 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b3)
  store %struct.Memory* %call_4021b3, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4021b6	 Bytes: 3
  %loadMem_4021b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b6 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b6)
  store %struct.Memory* %call_4021b6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021b9	 Bytes: 3
  %loadMem_4021b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b9)
  store %struct.Memory* %call_4021b9, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4021bc	 Bytes: 5
  %loadMem_4021bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021bc = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021bc)
  store %struct.Memory* %call_4021bc, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4021c1	 Bytes: 4
  %loadMem_4021c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c1 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c1)
  store %struct.Memory* %call_4021c1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4021c5	 Bytes: 4
  %loadMem_4021c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c5)
  store %struct.Memory* %call_4021c5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4021c9	 Bytes: 3
  %loadMem_4021c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c9)
  store %struct.Memory* %call_4021c9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4021cc	 Bytes: 3
  %loadMem_4021cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cc = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cc)
  store %struct.Memory* %call_4021cc, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021cf	 Bytes: 3
  %loadMem_4021cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cf = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cf)
  store %struct.Memory* %call_4021cf, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4021d2	 Bytes: 5
  %loadMem_4021d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d2 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d2)
  store %struct.Memory* %call_4021d2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4021d7	 Bytes: 4
  %loadMem_4021d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d7)
  store %struct.Memory* %call_4021d7, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4021db	 Bytes: 3
  %loadMem_4021db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021db = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021db)
  store %struct.Memory* %call_4021db, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021de	 Bytes: 3
  %loadMem_4021de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021de = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021de)
  store %struct.Memory* %call_4021de, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4021e1	 Bytes: 3
  %loadMem_4021e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e1 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e1)
  store %struct.Memory* %call_4021e1, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4021e4	 Bytes: 3
  %loadMem_4021e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e4 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e4)
  store %struct.Memory* %call_4021e4, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4021e7	 Bytes: 3
  %loadMem_4021e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e7 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e7)
  store %struct.Memory* %call_4021e7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4021ea	 Bytes: 3
  %loadMem_4021ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ea = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ea)
  store %struct.Memory* %call_4021ea, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4021ed	 Bytes: 5
  %loadMem_4021ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ed = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ed)
  store %struct.Memory* %call_4021ed, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4021f2	 Bytes: 4
  %loadMem_4021f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f2 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f2)
  store %struct.Memory* %call_4021f2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4021f6	 Bytes: 4
  %loadMem_4021f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f6)
  store %struct.Memory* %call_4021f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4021fa	 Bytes: 4
  %loadMem_4021fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fa = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fa)
  store %struct.Memory* %call_4021fa, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4021fe	 Bytes: 5
  %loadMem_4021fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fe = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fe)
  store %struct.Memory* %call_4021fe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402203	 Bytes: 4
  %loadMem_402203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402203 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402203)
  store %struct.Memory* %call_402203, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402207	 Bytes: 3
  %loadMem_402207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402207 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402207)
  store %struct.Memory* %call_402207, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 40220a	 Bytes: 4
  %loadMem_40220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220a = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220a)
  store %struct.Memory* %call_40220a, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40220e	 Bytes: 3
  %loadMem_40220e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220e = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220e)
  store %struct.Memory* %call_40220e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402211	 Bytes: 3
  %loadMem_402211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402211 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402211)
  store %struct.Memory* %call_402211, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402214	 Bytes: 5
  %loadMem_402214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402214 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402214)
  store %struct.Memory* %call_402214, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402219	 Bytes: 4
  %loadMem_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402219 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402219)
  store %struct.Memory* %call_402219, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40221d	 Bytes: 4
  %loadMem_40221d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221d)
  store %struct.Memory* %call_40221d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402221	 Bytes: 4
  %loadMem_402221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402221 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402221)
  store %struct.Memory* %call_402221, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 402225	 Bytes: 5
  %loadMem_402225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402225 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402225)
  store %struct.Memory* %call_402225, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40222a	 Bytes: 3
  %loadMem_40222a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222a)
  store %struct.Memory* %call_40222a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40222d	 Bytes: 3
  %loadMem_40222d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222d)
  store %struct.Memory* %call_40222d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 402230	 Bytes: 3
  %loadMem_402230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402230 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402230)
  store %struct.Memory* %call_402230, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40214a	 RIP: 402233	 Bytes: 5
  %loadMem_402233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402233 = call %struct.Memory* @routine_jmpq_.L_40214a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402233, i64 -233, i64 5)
  store %struct.Memory* %call_402233, %struct.Memory** %MEMORY

  br label %block_.L_40214a

  ; Code: .L_402238:	 RIP: 402238	 Bytes: 0
block_.L_402238:

  ; Code: jmpq .L_40223d	 RIP: 402238	 Bytes: 5
  %loadMem_402238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402238 = call %struct.Memory* @routine_jmpq_.L_40223d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402238, i64 5, i64 5)
  store %struct.Memory* %call_402238, %struct.Memory** %MEMORY

  br label %block_.L_40223d

  ; Code: .L_40223d:	 RIP: 40223d	 Bytes: 0
block_.L_40223d:

  ; Code: movl $0x10, %eax	 RIP: 40223d	 Bytes: 5
  %loadMem_40223d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223d = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223d)
  store %struct.Memory* %call_40223d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 402242	 Bytes: 3
  %loadMem_402242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402242 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402242)
  store %struct.Memory* %call_402242, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 402245	 Bytes: 3
  %loadMem_402245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402245 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402245)
  store %struct.Memory* %call_402245, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 402248	 Bytes: 2
  %loadMem_402248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402248 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402248)
  store %struct.Memory* %call_402248, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40224a	 Bytes: 1
  %loadMem_40224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224a)
  store %struct.Memory* %call_40224a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 40224b	 Bytes: 3
  %loadMem_40224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224b = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224b)
  store %struct.Memory* %call_40224b, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40224e	 Bytes: 2
  %loadMem_40224e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224e = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224e)
  store %struct.Memory* %call_40224e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 402250	 Bytes: 3
  %loadMem_402250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402250 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402250)
  store %struct.Memory* %call_402250, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, -0x2c(%rbp)	 RIP: 402253	 Bytes: 4
  %loadMem_402253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402253 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402253)
  store %struct.Memory* %call_402253, %struct.Memory** %MEMORY

  ; Code: jl .L_402424	 RIP: 402257	 Bytes: 6
  %loadMem_402257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402257 = call %struct.Memory* @routine_jl_.L_402424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402257, i8* %BRANCH_TAKEN, i64 461, i64 6, i64 6)
  store %struct.Memory* %call_402257, %struct.Memory** %MEMORY

  %loadBr_402257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402257 = icmp eq i8 %loadBr_402257, 1
  br i1 %cmpBr_402257, label %block_.L_402424, label %block_40225d

block_40225d:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 40225d	 Bytes: 3
  %loadMem_40225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225d)
  store %struct.Memory* %call_40225d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 402260	 Bytes: 3
  %loadMem_402260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402260 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402260)
  store %struct.Memory* %call_402260, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 402263	 Bytes: 3
  %loadMem_402263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402263 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402263)
  store %struct.Memory* %call_402263, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 402266	 Bytes: 7
  %loadMem_402266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402266 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402266)
  store %struct.Memory* %call_402266, %struct.Memory** %MEMORY

  ; Code: .L_40226d:	 RIP: 40226d	 Bytes: 0
  br label %block_.L_40226d
block_.L_40226d:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 40226d	 Bytes: 3
  %loadMem_40226d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226d)
  store %struct.Memory* %call_40226d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 402270	 Bytes: 3
  %loadMem_402270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402270 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402270)
  store %struct.Memory* %call_402270, %struct.Memory** %MEMORY

  ; Code: jge .L_40241f	 RIP: 402273	 Bytes: 6
  %loadMem_402273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402273 = call %struct.Memory* @routine_jge_.L_40241f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402273, i8* %BRANCH_TAKEN, i64 428, i64 6, i64 6)
  store %struct.Memory* %call_402273, %struct.Memory** %MEMORY

  %loadBr_402273 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402273 = icmp eq i8 %loadBr_402273, 1
  br i1 %cmpBr_402273, label %block_.L_40241f, label %block_402279

block_402279:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 402279	 Bytes: 4
  %loadMem_402279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402279 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402279)
  store %struct.Memory* %call_402279, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40227d	 Bytes: 4
  %loadMem_40227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227d)
  store %struct.Memory* %call_40227d, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 402281	 Bytes: 5
  %loadMem_402281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402281 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402281)
  store %struct.Memory* %call_402281, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402286	 Bytes: 4
  %loadMem_402286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402286 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402286)
  store %struct.Memory* %call_402286, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40228a	 Bytes: 3
  %loadMem_40228a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228a)
  store %struct.Memory* %call_40228a, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %edx	 RIP: 40228d	 Bytes: 3
  %loadMem_40228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228d = call %struct.Memory* @routine_subl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228d)
  store %struct.Memory* %call_40228d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402290	 Bytes: 3
  %loadMem_402290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402290 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402290)
  store %struct.Memory* %call_402290, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402293	 Bytes: 5
  %loadMem_402293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402293 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402293)
  store %struct.Memory* %call_402293, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402298	 Bytes: 4
  %loadMem_402298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402298 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402298)
  store %struct.Memory* %call_402298, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40229c	 Bytes: 3
  %loadMem_40229c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229c)
  store %struct.Memory* %call_40229c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40229f	 Bytes: 3
  %loadMem_40229f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229f)
  store %struct.Memory* %call_40229f, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %esi	 RIP: 4022a2	 Bytes: 3
  %loadMem_4022a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a2 = call %struct.Memory* @routine_subl__0x7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a2)
  store %struct.Memory* %call_4022a2, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4022a5	 Bytes: 3
  %loadMem_4022a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a5 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a5)
  store %struct.Memory* %call_4022a5, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4022a8	 Bytes: 3
  %loadMem_4022a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a8 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a8)
  store %struct.Memory* %call_4022a8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4022ab	 Bytes: 3
  %loadMem_4022ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ab = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ab)
  store %struct.Memory* %call_4022ab, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4022ae	 Bytes: 5
  %loadMem_4022ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ae = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ae)
  store %struct.Memory* %call_4022ae, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4022b3	 Bytes: 4
  %loadMem_4022b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b3 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b3)
  store %struct.Memory* %call_4022b3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4022b7	 Bytes: 4
  %loadMem_4022b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b7)
  store %struct.Memory* %call_4022b7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4022bb	 Bytes: 3
  %loadMem_4022bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bb)
  store %struct.Memory* %call_4022bb, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edx	 RIP: 4022be	 Bytes: 3
  %loadMem_4022be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022be = call %struct.Memory* @routine_subl__0x6___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022be)
  store %struct.Memory* %call_4022be, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4022c1	 Bytes: 3
  %loadMem_4022c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c1)
  store %struct.Memory* %call_4022c1, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4022c4	 Bytes: 5
  %loadMem_4022c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c4 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c4)
  store %struct.Memory* %call_4022c4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4022c9	 Bytes: 4
  %loadMem_4022c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c9)
  store %struct.Memory* %call_4022c9, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4022cd	 Bytes: 3
  %loadMem_4022cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cd = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cd)
  store %struct.Memory* %call_4022cd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4022d0	 Bytes: 3
  %loadMem_4022d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d0)
  store %struct.Memory* %call_4022d0, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %esi	 RIP: 4022d3	 Bytes: 3
  %loadMem_4022d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d3 = call %struct.Memory* @routine_subl__0x6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d3)
  store %struct.Memory* %call_4022d3, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4022d6	 Bytes: 3
  %loadMem_4022d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d6 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d6)
  store %struct.Memory* %call_4022d6, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4022d9	 Bytes: 3
  %loadMem_4022d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d9 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d9)
  store %struct.Memory* %call_4022d9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4022dc	 Bytes: 3
  %loadMem_4022dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022dc = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022dc)
  store %struct.Memory* %call_4022dc, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4022df	 Bytes: 5
  %loadMem_4022df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022df = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022df)
  store %struct.Memory* %call_4022df, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4022e4	 Bytes: 4
  %loadMem_4022e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e4 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e4)
  store %struct.Memory* %call_4022e4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4022e8	 Bytes: 4
  %loadMem_4022e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e8)
  store %struct.Memory* %call_4022e8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4022ec	 Bytes: 3
  %loadMem_4022ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ec = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ec)
  store %struct.Memory* %call_4022ec, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %edx	 RIP: 4022ef	 Bytes: 3
  %loadMem_4022ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ef = call %struct.Memory* @routine_subl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ef)
  store %struct.Memory* %call_4022ef, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4022f2	 Bytes: 3
  %loadMem_4022f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f2)
  store %struct.Memory* %call_4022f2, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4022f5	 Bytes: 5
  %loadMem_4022f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f5 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f5)
  store %struct.Memory* %call_4022f5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4022fa	 Bytes: 4
  %loadMem_4022fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fa)
  store %struct.Memory* %call_4022fa, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4022fe	 Bytes: 3
  %loadMem_4022fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fe = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fe)
  store %struct.Memory* %call_4022fe, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402301	 Bytes: 3
  %loadMem_402301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402301 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402301)
  store %struct.Memory* %call_402301, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %esi	 RIP: 402304	 Bytes: 3
  %loadMem_402304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402304 = call %struct.Memory* @routine_subl__0x5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402304)
  store %struct.Memory* %call_402304, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402307	 Bytes: 3
  %loadMem_402307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402307 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402307)
  store %struct.Memory* %call_402307, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40230a	 Bytes: 3
  %loadMem_40230a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230a = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230a)
  store %struct.Memory* %call_40230a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40230d	 Bytes: 3
  %loadMem_40230d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230d)
  store %struct.Memory* %call_40230d, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402310	 Bytes: 5
  %loadMem_402310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402310 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402310)
  store %struct.Memory* %call_402310, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402315	 Bytes: 4
  %loadMem_402315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402315 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402315)
  store %struct.Memory* %call_402315, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402319	 Bytes: 4
  %loadMem_402319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402319 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402319)
  store %struct.Memory* %call_402319, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40231d	 Bytes: 3
  %loadMem_40231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231d)
  store %struct.Memory* %call_40231d, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 402320	 Bytes: 3
  %loadMem_402320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402320 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402320)
  store %struct.Memory* %call_402320, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402323	 Bytes: 3
  %loadMem_402323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402323 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402323)
  store %struct.Memory* %call_402323, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402326	 Bytes: 5
  %loadMem_402326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402326 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402326)
  store %struct.Memory* %call_402326, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40232b	 Bytes: 4
  %loadMem_40232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232b)
  store %struct.Memory* %call_40232b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40232f	 Bytes: 3
  %loadMem_40232f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232f)
  store %struct.Memory* %call_40232f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402332	 Bytes: 3
  %loadMem_402332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402332 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402332)
  store %struct.Memory* %call_402332, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %esi	 RIP: 402335	 Bytes: 3
  %loadMem_402335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402335 = call %struct.Memory* @routine_subl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402335)
  store %struct.Memory* %call_402335, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402338	 Bytes: 3
  %loadMem_402338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402338 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402338)
  store %struct.Memory* %call_402338, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40233b	 Bytes: 3
  %loadMem_40233b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233b = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233b)
  store %struct.Memory* %call_40233b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40233e	 Bytes: 3
  %loadMem_40233e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233e)
  store %struct.Memory* %call_40233e, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402341	 Bytes: 5
  %loadMem_402341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402341 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402341)
  store %struct.Memory* %call_402341, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402346	 Bytes: 4
  %loadMem_402346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402346 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402346)
  store %struct.Memory* %call_402346, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40234a	 Bytes: 4
  %loadMem_40234a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234a)
  store %struct.Memory* %call_40234a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40234e	 Bytes: 3
  %loadMem_40234e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234e)
  store %struct.Memory* %call_40234e, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 402351	 Bytes: 3
  %loadMem_402351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402351 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402351)
  store %struct.Memory* %call_402351, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402354	 Bytes: 3
  %loadMem_402354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402354 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402354)
  store %struct.Memory* %call_402354, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402357	 Bytes: 5
  %loadMem_402357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402357 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402357)
  store %struct.Memory* %call_402357, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40235c	 Bytes: 4
  %loadMem_40235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235c)
  store %struct.Memory* %call_40235c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402360	 Bytes: 3
  %loadMem_402360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402360 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402360)
  store %struct.Memory* %call_402360, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402363	 Bytes: 3
  %loadMem_402363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402363 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402363)
  store %struct.Memory* %call_402363, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %esi	 RIP: 402366	 Bytes: 3
  %loadMem_402366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402366 = call %struct.Memory* @routine_subl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402366)
  store %struct.Memory* %call_402366, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402369	 Bytes: 3
  %loadMem_402369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402369 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402369)
  store %struct.Memory* %call_402369, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40236c	 Bytes: 3
  %loadMem_40236c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236c = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236c)
  store %struct.Memory* %call_40236c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40236f	 Bytes: 3
  %loadMem_40236f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236f)
  store %struct.Memory* %call_40236f, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402372	 Bytes: 5
  %loadMem_402372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402372 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402372)
  store %struct.Memory* %call_402372, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402377	 Bytes: 4
  %loadMem_402377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402377 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402377)
  store %struct.Memory* %call_402377, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40237b	 Bytes: 4
  %loadMem_40237b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237b)
  store %struct.Memory* %call_40237b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40237f	 Bytes: 3
  %loadMem_40237f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237f)
  store %struct.Memory* %call_40237f, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 402382	 Bytes: 3
  %loadMem_402382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402382 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402382)
  store %struct.Memory* %call_402382, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402385	 Bytes: 3
  %loadMem_402385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402385 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402385)
  store %struct.Memory* %call_402385, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402388	 Bytes: 5
  %loadMem_402388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402388 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402388)
  store %struct.Memory* %call_402388, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40238d	 Bytes: 4
  %loadMem_40238d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238d)
  store %struct.Memory* %call_40238d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402391	 Bytes: 3
  %loadMem_402391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402391 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402391)
  store %struct.Memory* %call_402391, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402394	 Bytes: 3
  %loadMem_402394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402394 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402394)
  store %struct.Memory* %call_402394, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 402397	 Bytes: 3
  %loadMem_402397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402397 = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402397)
  store %struct.Memory* %call_402397, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40239a	 Bytes: 3
  %loadMem_40239a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239a = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239a)
  store %struct.Memory* %call_40239a, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40239d	 Bytes: 3
  %loadMem_40239d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239d = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239d)
  store %struct.Memory* %call_40239d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023a0	 Bytes: 3
  %loadMem_4023a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a0)
  store %struct.Memory* %call_4023a0, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4023a3	 Bytes: 5
  %loadMem_4023a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a3 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a3)
  store %struct.Memory* %call_4023a3, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4023a8	 Bytes: 4
  %loadMem_4023a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a8 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a8)
  store %struct.Memory* %call_4023a8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4023ac	 Bytes: 4
  %loadMem_4023ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ac = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ac)
  store %struct.Memory* %call_4023ac, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4023b0	 Bytes: 3
  %loadMem_4023b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b0)
  store %struct.Memory* %call_4023b0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4023b3	 Bytes: 3
  %loadMem_4023b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b3 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b3)
  store %struct.Memory* %call_4023b3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023b6	 Bytes: 3
  %loadMem_4023b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b6)
  store %struct.Memory* %call_4023b6, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4023b9	 Bytes: 5
  %loadMem_4023b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b9 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b9)
  store %struct.Memory* %call_4023b9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4023be	 Bytes: 4
  %loadMem_4023be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023be = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023be)
  store %struct.Memory* %call_4023be, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4023c2	 Bytes: 3
  %loadMem_4023c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c2)
  store %struct.Memory* %call_4023c2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4023c5	 Bytes: 3
  %loadMem_4023c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c5)
  store %struct.Memory* %call_4023c5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 4023c8	 Bytes: 3
  %loadMem_4023c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c8 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c8)
  store %struct.Memory* %call_4023c8, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4023cb	 Bytes: 3
  %loadMem_4023cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cb = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cb)
  store %struct.Memory* %call_4023cb, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4023ce	 Bytes: 3
  %loadMem_4023ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ce = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ce)
  store %struct.Memory* %call_4023ce, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023d1	 Bytes: 3
  %loadMem_4023d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d1)
  store %struct.Memory* %call_4023d1, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4023d4	 Bytes: 5
  %loadMem_4023d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d4 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d4)
  store %struct.Memory* %call_4023d4, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4023d9	 Bytes: 4
  %loadMem_4023d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d9 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d9)
  store %struct.Memory* %call_4023d9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4023dd	 Bytes: 4
  %loadMem_4023dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023dd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023dd)
  store %struct.Memory* %call_4023dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4023e1	 Bytes: 4
  %loadMem_4023e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e1)
  store %struct.Memory* %call_4023e1, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4023e5	 Bytes: 5
  %loadMem_4023e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e5 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e5)
  store %struct.Memory* %call_4023e5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4023ea	 Bytes: 4
  %loadMem_4023ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ea = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ea)
  store %struct.Memory* %call_4023ea, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4023ee	 Bytes: 3
  %loadMem_4023ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ee = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ee)
  store %struct.Memory* %call_4023ee, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 4023f1	 Bytes: 4
  %loadMem_4023f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f1 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f1)
  store %struct.Memory* %call_4023f1, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4023f5	 Bytes: 3
  %loadMem_4023f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f5 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f5)
  store %struct.Memory* %call_4023f5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4023f8	 Bytes: 3
  %loadMem_4023f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f8)
  store %struct.Memory* %call_4023f8, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4023fb	 Bytes: 5
  %loadMem_4023fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fb = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fb)
  store %struct.Memory* %call_4023fb, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402400	 Bytes: 4
  %loadMem_402400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402400 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402400)
  store %struct.Memory* %call_402400, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 402404	 Bytes: 4
  %loadMem_402404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402404 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402404)
  store %struct.Memory* %call_402404, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402408	 Bytes: 4
  %loadMem_402408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402408 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402408)
  store %struct.Memory* %call_402408, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 40240c	 Bytes: 5
  %loadMem_40240c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240c = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240c)
  store %struct.Memory* %call_40240c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402411	 Bytes: 3
  %loadMem_402411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402411 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402411)
  store %struct.Memory* %call_402411, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402414	 Bytes: 3
  %loadMem_402414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402414 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402414)
  store %struct.Memory* %call_402414, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 402417	 Bytes: 3
  %loadMem_402417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402417 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402417)
  store %struct.Memory* %call_402417, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40226d	 RIP: 40241a	 Bytes: 5
  %loadMem_40241a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241a = call %struct.Memory* @routine_jmpq_.L_40226d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241a, i64 -429, i64 5)
  store %struct.Memory* %call_40241a, %struct.Memory** %MEMORY

  br label %block_.L_40226d

  ; Code: .L_40241f:	 RIP: 40241f	 Bytes: 0
block_.L_40241f:

  ; Code: jmpq .L_402424	 RIP: 40241f	 Bytes: 5
  %loadMem_40241f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241f = call %struct.Memory* @routine_jmpq_.L_402424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241f, i64 5, i64 5)
  store %struct.Memory* %call_40241f, %struct.Memory** %MEMORY

  br label %block_.L_402424

  ; Code: .L_402424:	 RIP: 402424	 Bytes: 0
block_.L_402424:

  ; Code: movl $0x10, %eax	 RIP: 402424	 Bytes: 5
  %loadMem_402424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402424 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402424)
  store %struct.Memory* %call_402424, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 402429	 Bytes: 3
  %loadMem_402429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402429 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402429)
  store %struct.Memory* %call_402429, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 40242c	 Bytes: 3
  %loadMem_40242c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242c = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242c)
  store %struct.Memory* %call_40242c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40242f	 Bytes: 2
  %loadMem_40242f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242f = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242f)
  store %struct.Memory* %call_40242f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 402431	 Bytes: 1
  %loadMem_402431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402431 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402431)
  store %struct.Memory* %call_402431, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 402432	 Bytes: 3
  %loadMem_402432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402432 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402432)
  store %struct.Memory* %call_402432, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 402435	 Bytes: 2
  %loadMem_402435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402435 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402435)
  store %struct.Memory* %call_402435, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %edx	 RIP: 402437	 Bytes: 3
  %loadMem_402437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402437 = call %struct.Memory* @routine_addl__0x10___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402437)
  store %struct.Memory* %call_402437, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 40243a	 Bytes: 3
  %loadMem_40243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243a = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243a)
  store %struct.Memory* %call_40243a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 40243d	 Bytes: 3
  %loadMem_40243d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243d)
  store %struct.Memory* %call_40243d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 402440	 Bytes: 3
  %loadMem_402440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402440 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402440)
  store %struct.Memory* %call_402440, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 402443	 Bytes: 3
  %loadMem_402443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402443 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402443)
  store %struct.Memory* %call_402443, %struct.Memory** %MEMORY

  ; Code: .L_402446:	 RIP: 402446	 Bytes: 0
  br label %block_.L_402446
block_.L_402446:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 402446	 Bytes: 3
  %loadMem_402446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402446 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402446)
  store %struct.Memory* %call_402446, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 402449	 Bytes: 3
  %loadMem_402449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402449 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402449)
  store %struct.Memory* %call_402449, %struct.Memory** %MEMORY

  ; Code: jge .L_4027a6	 RIP: 40244c	 Bytes: 6
  %loadMem_40244c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244c = call %struct.Memory* @routine_jge_.L_4027a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244c, i8* %BRANCH_TAKEN, i64 858, i64 6, i64 6)
  store %struct.Memory* %call_40244c, %struct.Memory** %MEMORY

  %loadBr_40244c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40244c = icmp eq i8 %loadBr_40244c, 1
  br i1 %cmpBr_40244c, label %block_.L_4027a6, label %block_402452

block_402452:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 402452	 Bytes: 7
  %loadMem_402452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402452 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402452)
  store %struct.Memory* %call_402452, %struct.Memory** %MEMORY

  ; Code: .L_402459:	 RIP: 402459	 Bytes: 0
  br label %block_.L_402459
block_.L_402459:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402459	 Bytes: 3
  %loadMem_402459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402459 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402459)
  store %struct.Memory* %call_402459, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 40245c	 Bytes: 3
  %loadMem_40245c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245c)
  store %struct.Memory* %call_40245c, %struct.Memory** %MEMORY

  ; Code: jge .L_402793	 RIP: 40245f	 Bytes: 6
  %loadMem_40245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245f = call %struct.Memory* @routine_jge_.L_402793(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245f, i8* %BRANCH_TAKEN, i64 820, i64 6, i64 6)
  store %struct.Memory* %call_40245f, %struct.Memory** %MEMORY

  %loadBr_40245f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40245f = icmp eq i8 %loadBr_40245f, 1
  br i1 %cmpBr_40245f, label %block_.L_402793, label %block_402465

block_402465:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 402465	 Bytes: 4
  %loadMem_402465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402465 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402465)
  store %struct.Memory* %call_402465, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 402469	 Bytes: 4
  %loadMem_402469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402469 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402469)
  store %struct.Memory* %call_402469, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm0	 RIP: 40246d	 Bytes: 5
  %loadMem_40246d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246d)
  store %struct.Memory* %call_40246d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402472	 Bytes: 4
  %loadMem_402472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402472 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402472)
  store %struct.Memory* %call_402472, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402476	 Bytes: 3
  %loadMem_402476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402476 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402476)
  store %struct.Memory* %call_402476, %struct.Memory** %MEMORY

  ; Code: subl $0xf, %edx	 RIP: 402479	 Bytes: 3
  %loadMem_402479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402479 = call %struct.Memory* @routine_subl__0xf___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402479)
  store %struct.Memory* %call_402479, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40247c	 Bytes: 3
  %loadMem_40247c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247c)
  store %struct.Memory* %call_40247c, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40247f	 Bytes: 5
  %loadMem_40247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247f = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247f)
  store %struct.Memory* %call_40247f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402484	 Bytes: 4
  %loadMem_402484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402484 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402484)
  store %struct.Memory* %call_402484, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402488	 Bytes: 3
  %loadMem_402488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402488 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402488)
  store %struct.Memory* %call_402488, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40248b	 Bytes: 3
  %loadMem_40248b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248b)
  store %struct.Memory* %call_40248b, %struct.Memory** %MEMORY

  ; Code: subl $0xf, %esi	 RIP: 40248e	 Bytes: 3
  %loadMem_40248e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248e = call %struct.Memory* @routine_subl__0xf___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248e)
  store %struct.Memory* %call_40248e, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402491	 Bytes: 3
  %loadMem_402491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402491 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402491)
  store %struct.Memory* %call_402491, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402494	 Bytes: 3
  %loadMem_402494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402494 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402494)
  store %struct.Memory* %call_402494, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402497	 Bytes: 3
  %loadMem_402497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402497 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402497)
  store %struct.Memory* %call_402497, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40249a	 Bytes: 5
  %loadMem_40249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249a = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249a)
  store %struct.Memory* %call_40249a, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40249f	 Bytes: 4
  %loadMem_40249f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249f = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249f)
  store %struct.Memory* %call_40249f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4024a3	 Bytes: 4
  %loadMem_4024a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a3)
  store %struct.Memory* %call_4024a3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4024a7	 Bytes: 3
  %loadMem_4024a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a7)
  store %struct.Memory* %call_4024a7, %struct.Memory** %MEMORY

  ; Code: subl $0xe, %edx	 RIP: 4024aa	 Bytes: 3
  %loadMem_4024aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024aa = call %struct.Memory* @routine_subl__0xe___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024aa)
  store %struct.Memory* %call_4024aa, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4024ad	 Bytes: 3
  %loadMem_4024ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ad = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ad)
  store %struct.Memory* %call_4024ad, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4024b0	 Bytes: 5
  %loadMem_4024b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b0 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b0)
  store %struct.Memory* %call_4024b0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4024b5	 Bytes: 4
  %loadMem_4024b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b5)
  store %struct.Memory* %call_4024b5, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4024b9	 Bytes: 3
  %loadMem_4024b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b9)
  store %struct.Memory* %call_4024b9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4024bc	 Bytes: 3
  %loadMem_4024bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bc)
  store %struct.Memory* %call_4024bc, %struct.Memory** %MEMORY

  ; Code: subl $0xe, %esi	 RIP: 4024bf	 Bytes: 3
  %loadMem_4024bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bf = call %struct.Memory* @routine_subl__0xe___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bf)
  store %struct.Memory* %call_4024bf, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4024c2	 Bytes: 3
  %loadMem_4024c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c2 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c2)
  store %struct.Memory* %call_4024c2, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4024c5	 Bytes: 3
  %loadMem_4024c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c5 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c5)
  store %struct.Memory* %call_4024c5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4024c8	 Bytes: 3
  %loadMem_4024c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c8)
  store %struct.Memory* %call_4024c8, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4024cb	 Bytes: 5
  %loadMem_4024cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024cb = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024cb)
  store %struct.Memory* %call_4024cb, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4024d0	 Bytes: 4
  %loadMem_4024d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d0 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d0)
  store %struct.Memory* %call_4024d0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4024d4	 Bytes: 4
  %loadMem_4024d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d4)
  store %struct.Memory* %call_4024d4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4024d8	 Bytes: 3
  %loadMem_4024d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d8)
  store %struct.Memory* %call_4024d8, %struct.Memory** %MEMORY

  ; Code: subl $0xd, %edx	 RIP: 4024db	 Bytes: 3
  %loadMem_4024db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024db = call %struct.Memory* @routine_subl__0xd___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024db)
  store %struct.Memory* %call_4024db, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4024de	 Bytes: 3
  %loadMem_4024de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024de = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024de)
  store %struct.Memory* %call_4024de, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4024e1	 Bytes: 5
  %loadMem_4024e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e1 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e1)
  store %struct.Memory* %call_4024e1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4024e6	 Bytes: 4
  %loadMem_4024e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e6)
  store %struct.Memory* %call_4024e6, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4024ea	 Bytes: 3
  %loadMem_4024ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ea = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ea)
  store %struct.Memory* %call_4024ea, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4024ed	 Bytes: 3
  %loadMem_4024ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ed = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ed)
  store %struct.Memory* %call_4024ed, %struct.Memory** %MEMORY

  ; Code: subl $0xd, %esi	 RIP: 4024f0	 Bytes: 3
  %loadMem_4024f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f0 = call %struct.Memory* @routine_subl__0xd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f0)
  store %struct.Memory* %call_4024f0, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4024f3	 Bytes: 3
  %loadMem_4024f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f3 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f3)
  store %struct.Memory* %call_4024f3, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4024f6	 Bytes: 3
  %loadMem_4024f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f6 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f6)
  store %struct.Memory* %call_4024f6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4024f9	 Bytes: 3
  %loadMem_4024f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f9)
  store %struct.Memory* %call_4024f9, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4024fc	 Bytes: 5
  %loadMem_4024fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024fc = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024fc)
  store %struct.Memory* %call_4024fc, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402501	 Bytes: 4
  %loadMem_402501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402501 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402501)
  store %struct.Memory* %call_402501, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402505	 Bytes: 4
  %loadMem_402505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402505 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402505)
  store %struct.Memory* %call_402505, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402509	 Bytes: 3
  %loadMem_402509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402509 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402509)
  store %struct.Memory* %call_402509, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %edx	 RIP: 40250c	 Bytes: 3
  %loadMem_40250c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250c = call %struct.Memory* @routine_subl__0xc___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250c)
  store %struct.Memory* %call_40250c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40250f	 Bytes: 3
  %loadMem_40250f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250f)
  store %struct.Memory* %call_40250f, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402512	 Bytes: 5
  %loadMem_402512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402512 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402512)
  store %struct.Memory* %call_402512, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402517	 Bytes: 4
  %loadMem_402517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402517 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402517)
  store %struct.Memory* %call_402517, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40251b	 Bytes: 3
  %loadMem_40251b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251b)
  store %struct.Memory* %call_40251b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40251e	 Bytes: 3
  %loadMem_40251e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251e)
  store %struct.Memory* %call_40251e, %struct.Memory** %MEMORY

  ; Code: subl $0xc, %esi	 RIP: 402521	 Bytes: 3
  %loadMem_402521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402521 = call %struct.Memory* @routine_subl__0xc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402521)
  store %struct.Memory* %call_402521, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402524	 Bytes: 3
  %loadMem_402524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402524 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402524)
  store %struct.Memory* %call_402524, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402527	 Bytes: 3
  %loadMem_402527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402527 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402527)
  store %struct.Memory* %call_402527, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40252a	 Bytes: 3
  %loadMem_40252a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40252a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40252a)
  store %struct.Memory* %call_40252a, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40252d	 Bytes: 5
  %loadMem_40252d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40252d = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40252d)
  store %struct.Memory* %call_40252d, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402532	 Bytes: 4
  %loadMem_402532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402532 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402532)
  store %struct.Memory* %call_402532, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402536	 Bytes: 4
  %loadMem_402536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402536 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402536)
  store %struct.Memory* %call_402536, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40253a	 Bytes: 3
  %loadMem_40253a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253a)
  store %struct.Memory* %call_40253a, %struct.Memory** %MEMORY

  ; Code: subl $0xb, %edx	 RIP: 40253d	 Bytes: 3
  %loadMem_40253d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253d = call %struct.Memory* @routine_subl__0xb___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253d)
  store %struct.Memory* %call_40253d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402540	 Bytes: 3
  %loadMem_402540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402540 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402540)
  store %struct.Memory* %call_402540, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402543	 Bytes: 5
  %loadMem_402543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402543 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402543)
  store %struct.Memory* %call_402543, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402548	 Bytes: 4
  %loadMem_402548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402548 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402548)
  store %struct.Memory* %call_402548, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40254c	 Bytes: 3
  %loadMem_40254c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254c)
  store %struct.Memory* %call_40254c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40254f	 Bytes: 3
  %loadMem_40254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254f)
  store %struct.Memory* %call_40254f, %struct.Memory** %MEMORY

  ; Code: subl $0xb, %esi	 RIP: 402552	 Bytes: 3
  %loadMem_402552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402552 = call %struct.Memory* @routine_subl__0xb___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402552)
  store %struct.Memory* %call_402552, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402555	 Bytes: 3
  %loadMem_402555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402555 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402555)
  store %struct.Memory* %call_402555, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402558	 Bytes: 3
  %loadMem_402558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402558 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402558)
  store %struct.Memory* %call_402558, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40255b	 Bytes: 3
  %loadMem_40255b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40255b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40255b)
  store %struct.Memory* %call_40255b, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40255e	 Bytes: 5
  %loadMem_40255e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40255e = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40255e)
  store %struct.Memory* %call_40255e, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402563	 Bytes: 4
  %loadMem_402563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402563 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402563)
  store %struct.Memory* %call_402563, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402567	 Bytes: 4
  %loadMem_402567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402567 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402567)
  store %struct.Memory* %call_402567, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40256b	 Bytes: 3
  %loadMem_40256b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256b)
  store %struct.Memory* %call_40256b, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %edx	 RIP: 40256e	 Bytes: 3
  %loadMem_40256e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256e = call %struct.Memory* @routine_subl__0xa___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256e)
  store %struct.Memory* %call_40256e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402571	 Bytes: 3
  %loadMem_402571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402571 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402571)
  store %struct.Memory* %call_402571, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402574	 Bytes: 5
  %loadMem_402574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402574 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402574)
  store %struct.Memory* %call_402574, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402579	 Bytes: 4
  %loadMem_402579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402579 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402579)
  store %struct.Memory* %call_402579, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 40257d	 Bytes: 3
  %loadMem_40257d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257d)
  store %struct.Memory* %call_40257d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402580	 Bytes: 3
  %loadMem_402580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402580 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402580)
  store %struct.Memory* %call_402580, %struct.Memory** %MEMORY

  ; Code: subl $0xa, %esi	 RIP: 402583	 Bytes: 3
  %loadMem_402583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402583 = call %struct.Memory* @routine_subl__0xa___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402583)
  store %struct.Memory* %call_402583, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402586	 Bytes: 3
  %loadMem_402586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402586 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402586)
  store %struct.Memory* %call_402586, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402589	 Bytes: 3
  %loadMem_402589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402589 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402589)
  store %struct.Memory* %call_402589, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40258c	 Bytes: 3
  %loadMem_40258c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258c)
  store %struct.Memory* %call_40258c, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40258f	 Bytes: 5
  %loadMem_40258f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258f = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258f)
  store %struct.Memory* %call_40258f, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402594	 Bytes: 4
  %loadMem_402594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402594 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402594)
  store %struct.Memory* %call_402594, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402598	 Bytes: 4
  %loadMem_402598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402598 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402598)
  store %struct.Memory* %call_402598, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40259c	 Bytes: 3
  %loadMem_40259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259c)
  store %struct.Memory* %call_40259c, %struct.Memory** %MEMORY

  ; Code: subl $0x9, %edx	 RIP: 40259f	 Bytes: 3
  %loadMem_40259f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259f = call %struct.Memory* @routine_subl__0x9___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259f)
  store %struct.Memory* %call_40259f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025a2	 Bytes: 3
  %loadMem_4025a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a2)
  store %struct.Memory* %call_4025a2, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4025a5	 Bytes: 5
  %loadMem_4025a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a5 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a5)
  store %struct.Memory* %call_4025a5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4025aa	 Bytes: 4
  %loadMem_4025aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025aa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025aa)
  store %struct.Memory* %call_4025aa, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4025ae	 Bytes: 3
  %loadMem_4025ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ae = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ae)
  store %struct.Memory* %call_4025ae, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4025b1	 Bytes: 3
  %loadMem_4025b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b1)
  store %struct.Memory* %call_4025b1, %struct.Memory** %MEMORY

  ; Code: subl $0x9, %esi	 RIP: 4025b4	 Bytes: 3
  %loadMem_4025b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b4 = call %struct.Memory* @routine_subl__0x9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b4)
  store %struct.Memory* %call_4025b4, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4025b7	 Bytes: 3
  %loadMem_4025b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b7 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b7)
  store %struct.Memory* %call_4025b7, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4025ba	 Bytes: 3
  %loadMem_4025ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ba = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ba)
  store %struct.Memory* %call_4025ba, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025bd	 Bytes: 3
  %loadMem_4025bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025bd = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025bd)
  store %struct.Memory* %call_4025bd, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4025c0	 Bytes: 5
  %loadMem_4025c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c0 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c0)
  store %struct.Memory* %call_4025c0, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4025c5	 Bytes: 4
  %loadMem_4025c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c5 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c5)
  store %struct.Memory* %call_4025c5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4025c9	 Bytes: 4
  %loadMem_4025c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c9)
  store %struct.Memory* %call_4025c9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4025cd	 Bytes: 3
  %loadMem_4025cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025cd = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025cd)
  store %struct.Memory* %call_4025cd, %struct.Memory** %MEMORY

  ; Code: subl $0x8, %edx	 RIP: 4025d0	 Bytes: 3
  %loadMem_4025d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d0 = call %struct.Memory* @routine_subl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d0)
  store %struct.Memory* %call_4025d0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025d3	 Bytes: 3
  %loadMem_4025d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d3)
  store %struct.Memory* %call_4025d3, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4025d6	 Bytes: 5
  %loadMem_4025d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d6 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d6)
  store %struct.Memory* %call_4025d6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4025db	 Bytes: 4
  %loadMem_4025db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025db = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025db)
  store %struct.Memory* %call_4025db, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4025df	 Bytes: 3
  %loadMem_4025df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025df = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025df)
  store %struct.Memory* %call_4025df, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4025e2	 Bytes: 3
  %loadMem_4025e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e2)
  store %struct.Memory* %call_4025e2, %struct.Memory** %MEMORY

  ; Code: subl $0x8, %esi	 RIP: 4025e5	 Bytes: 3
  %loadMem_4025e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e5 = call %struct.Memory* @routine_subl__0x8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e5)
  store %struct.Memory* %call_4025e5, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4025e8	 Bytes: 3
  %loadMem_4025e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e8 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e8)
  store %struct.Memory* %call_4025e8, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4025eb	 Bytes: 3
  %loadMem_4025eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025eb = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025eb)
  store %struct.Memory* %call_4025eb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4025ee	 Bytes: 3
  %loadMem_4025ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ee = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ee)
  store %struct.Memory* %call_4025ee, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4025f1	 Bytes: 5
  %loadMem_4025f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f1 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f1)
  store %struct.Memory* %call_4025f1, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4025f6	 Bytes: 4
  %loadMem_4025f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f6 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f6)
  store %struct.Memory* %call_4025f6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4025fa	 Bytes: 4
  %loadMem_4025fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025fa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025fa)
  store %struct.Memory* %call_4025fa, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4025fe	 Bytes: 3
  %loadMem_4025fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025fe = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025fe)
  store %struct.Memory* %call_4025fe, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %edx	 RIP: 402601	 Bytes: 3
  %loadMem_402601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402601 = call %struct.Memory* @routine_subl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402601)
  store %struct.Memory* %call_402601, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402604	 Bytes: 3
  %loadMem_402604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402604 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402604)
  store %struct.Memory* %call_402604, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402607	 Bytes: 5
  %loadMem_402607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402607 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402607)
  store %struct.Memory* %call_402607, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40260c	 Bytes: 4
  %loadMem_40260c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260c)
  store %struct.Memory* %call_40260c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402610	 Bytes: 3
  %loadMem_402610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402610 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402610)
  store %struct.Memory* %call_402610, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402613	 Bytes: 3
  %loadMem_402613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402613 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402613)
  store %struct.Memory* %call_402613, %struct.Memory** %MEMORY

  ; Code: subl $0x7, %esi	 RIP: 402616	 Bytes: 3
  %loadMem_402616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402616 = call %struct.Memory* @routine_subl__0x7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402616)
  store %struct.Memory* %call_402616, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 402619	 Bytes: 3
  %loadMem_402619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402619 = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402619)
  store %struct.Memory* %call_402619, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40261c	 Bytes: 3
  %loadMem_40261c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40261c = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40261c)
  store %struct.Memory* %call_40261c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40261f	 Bytes: 3
  %loadMem_40261f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40261f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40261f)
  store %struct.Memory* %call_40261f, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402622	 Bytes: 5
  %loadMem_402622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402622 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402622)
  store %struct.Memory* %call_402622, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402627	 Bytes: 4
  %loadMem_402627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402627 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402627)
  store %struct.Memory* %call_402627, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40262b	 Bytes: 4
  %loadMem_40262b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262b)
  store %struct.Memory* %call_40262b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 40262f	 Bytes: 3
  %loadMem_40262f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262f)
  store %struct.Memory* %call_40262f, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %edx	 RIP: 402632	 Bytes: 3
  %loadMem_402632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402632 = call %struct.Memory* @routine_subl__0x6___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402632)
  store %struct.Memory* %call_402632, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402635	 Bytes: 3
  %loadMem_402635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402635 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402635)
  store %struct.Memory* %call_402635, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402638	 Bytes: 5
  %loadMem_402638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402638 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402638)
  store %struct.Memory* %call_402638, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40263d	 Bytes: 4
  %loadMem_40263d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263d)
  store %struct.Memory* %call_40263d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402641	 Bytes: 3
  %loadMem_402641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402641 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402641)
  store %struct.Memory* %call_402641, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402644	 Bytes: 3
  %loadMem_402644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402644 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402644)
  store %struct.Memory* %call_402644, %struct.Memory** %MEMORY

  ; Code: subl $0x6, %esi	 RIP: 402647	 Bytes: 3
  %loadMem_402647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402647 = call %struct.Memory* @routine_subl__0x6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402647)
  store %struct.Memory* %call_402647, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40264a	 Bytes: 3
  %loadMem_40264a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264a = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264a)
  store %struct.Memory* %call_40264a, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40264d	 Bytes: 3
  %loadMem_40264d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264d = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264d)
  store %struct.Memory* %call_40264d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402650	 Bytes: 3
  %loadMem_402650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402650 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402650)
  store %struct.Memory* %call_402650, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402653	 Bytes: 5
  %loadMem_402653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402653 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402653)
  store %struct.Memory* %call_402653, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402658	 Bytes: 4
  %loadMem_402658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402658 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402658)
  store %struct.Memory* %call_402658, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40265c	 Bytes: 4
  %loadMem_40265c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265c)
  store %struct.Memory* %call_40265c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402660	 Bytes: 3
  %loadMem_402660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402660 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402660)
  store %struct.Memory* %call_402660, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %edx	 RIP: 402663	 Bytes: 3
  %loadMem_402663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402663 = call %struct.Memory* @routine_subl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402663)
  store %struct.Memory* %call_402663, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402666	 Bytes: 3
  %loadMem_402666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402666 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402666)
  store %struct.Memory* %call_402666, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402669	 Bytes: 5
  %loadMem_402669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402669 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402669)
  store %struct.Memory* %call_402669, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40266e	 Bytes: 4
  %loadMem_40266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40266e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40266e)
  store %struct.Memory* %call_40266e, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402672	 Bytes: 3
  %loadMem_402672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402672 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402672)
  store %struct.Memory* %call_402672, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402675	 Bytes: 3
  %loadMem_402675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402675 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402675)
  store %struct.Memory* %call_402675, %struct.Memory** %MEMORY

  ; Code: subl $0x5, %esi	 RIP: 402678	 Bytes: 3
  %loadMem_402678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402678 = call %struct.Memory* @routine_subl__0x5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402678)
  store %struct.Memory* %call_402678, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40267b	 Bytes: 3
  %loadMem_40267b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267b = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267b)
  store %struct.Memory* %call_40267b, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 40267e	 Bytes: 3
  %loadMem_40267e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267e = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267e)
  store %struct.Memory* %call_40267e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402681	 Bytes: 3
  %loadMem_402681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402681 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402681)
  store %struct.Memory* %call_402681, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402684	 Bytes: 5
  %loadMem_402684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402684 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402684)
  store %struct.Memory* %call_402684, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402689	 Bytes: 4
  %loadMem_402689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402689 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402689)
  store %struct.Memory* %call_402689, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 40268d	 Bytes: 4
  %loadMem_40268d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40268d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40268d)
  store %struct.Memory* %call_40268d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402691	 Bytes: 3
  %loadMem_402691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402691 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402691)
  store %struct.Memory* %call_402691, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %edx	 RIP: 402694	 Bytes: 3
  %loadMem_402694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402694 = call %struct.Memory* @routine_subl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402694)
  store %struct.Memory* %call_402694, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402697	 Bytes: 3
  %loadMem_402697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402697 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402697)
  store %struct.Memory* %call_402697, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40269a	 Bytes: 5
  %loadMem_40269a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40269a = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40269a)
  store %struct.Memory* %call_40269a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40269f	 Bytes: 4
  %loadMem_40269f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40269f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40269f)
  store %struct.Memory* %call_40269f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4026a3	 Bytes: 3
  %loadMem_4026a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a3)
  store %struct.Memory* %call_4026a3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4026a6	 Bytes: 3
  %loadMem_4026a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a6)
  store %struct.Memory* %call_4026a6, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %esi	 RIP: 4026a9	 Bytes: 3
  %loadMem_4026a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a9 = call %struct.Memory* @routine_subl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a9)
  store %struct.Memory* %call_4026a9, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4026ac	 Bytes: 3
  %loadMem_4026ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ac = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ac)
  store %struct.Memory* %call_4026ac, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4026af	 Bytes: 3
  %loadMem_4026af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026af = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026af)
  store %struct.Memory* %call_4026af, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026b2	 Bytes: 3
  %loadMem_4026b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b2)
  store %struct.Memory* %call_4026b2, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4026b5	 Bytes: 5
  %loadMem_4026b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b5 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b5)
  store %struct.Memory* %call_4026b5, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4026ba	 Bytes: 4
  %loadMem_4026ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ba = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ba)
  store %struct.Memory* %call_4026ba, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4026be	 Bytes: 4
  %loadMem_4026be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026be = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026be)
  store %struct.Memory* %call_4026be, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4026c2	 Bytes: 3
  %loadMem_4026c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c2)
  store %struct.Memory* %call_4026c2, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %edx	 RIP: 4026c5	 Bytes: 3
  %loadMem_4026c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c5 = call %struct.Memory* @routine_subl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c5)
  store %struct.Memory* %call_4026c5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026c8	 Bytes: 3
  %loadMem_4026c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c8)
  store %struct.Memory* %call_4026c8, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4026cb	 Bytes: 5
  %loadMem_4026cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026cb = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026cb)
  store %struct.Memory* %call_4026cb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 4026d0	 Bytes: 4
  %loadMem_4026d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d0)
  store %struct.Memory* %call_4026d0, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4026d4	 Bytes: 3
  %loadMem_4026d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d4)
  store %struct.Memory* %call_4026d4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4026d7	 Bytes: 3
  %loadMem_4026d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d7)
  store %struct.Memory* %call_4026d7, %struct.Memory** %MEMORY

  ; Code: subl $0x3, %esi	 RIP: 4026da	 Bytes: 3
  %loadMem_4026da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026da = call %struct.Memory* @routine_subl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026da)
  store %struct.Memory* %call_4026da, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 4026dd	 Bytes: 3
  %loadMem_4026dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026dd = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026dd)
  store %struct.Memory* %call_4026dd, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 4026e0	 Bytes: 3
  %loadMem_4026e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e0 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e0)
  store %struct.Memory* %call_4026e0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026e3	 Bytes: 3
  %loadMem_4026e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e3)
  store %struct.Memory* %call_4026e3, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 4026e6	 Bytes: 5
  %loadMem_4026e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e6 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e6)
  store %struct.Memory* %call_4026e6, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 4026eb	 Bytes: 4
  %loadMem_4026eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026eb = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026eb)
  store %struct.Memory* %call_4026eb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4026ef	 Bytes: 4
  %loadMem_4026ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ef = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ef)
  store %struct.Memory* %call_4026ef, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 4026f3	 Bytes: 3
  %loadMem_4026f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f3)
  store %struct.Memory* %call_4026f3, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %edx	 RIP: 4026f6	 Bytes: 3
  %loadMem_4026f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f6 = call %struct.Memory* @routine_subl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f6)
  store %struct.Memory* %call_4026f6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4026f9	 Bytes: 3
  %loadMem_4026f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f9)
  store %struct.Memory* %call_4026f9, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 4026fc	 Bytes: 5
  %loadMem_4026fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026fc = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026fc)
  store %struct.Memory* %call_4026fc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402701	 Bytes: 4
  %loadMem_402701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402701 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402701)
  store %struct.Memory* %call_402701, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402705	 Bytes: 3
  %loadMem_402705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402705 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402705)
  store %struct.Memory* %call_402705, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402708	 Bytes: 3
  %loadMem_402708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402708 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402708)
  store %struct.Memory* %call_402708, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 40270b	 Bytes: 3
  %loadMem_40270b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270b = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270b)
  store %struct.Memory* %call_40270b, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40270e	 Bytes: 3
  %loadMem_40270e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270e = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270e)
  store %struct.Memory* %call_40270e, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402711	 Bytes: 3
  %loadMem_402711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402711 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402711)
  store %struct.Memory* %call_402711, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402714	 Bytes: 3
  %loadMem_402714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402714 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402714)
  store %struct.Memory* %call_402714, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402717	 Bytes: 5
  %loadMem_402717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402717 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402717)
  store %struct.Memory* %call_402717, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40271c	 Bytes: 4
  %loadMem_40271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40271c = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40271c)
  store %struct.Memory* %call_40271c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402720	 Bytes: 4
  %loadMem_402720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402720 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402720)
  store %struct.Memory* %call_402720, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 402724	 Bytes: 3
  %loadMem_402724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402724 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402724)
  store %struct.Memory* %call_402724, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 402727	 Bytes: 3
  %loadMem_402727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402727 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402727)
  store %struct.Memory* %call_402727, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40272a	 Bytes: 3
  %loadMem_40272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40272a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40272a)
  store %struct.Memory* %call_40272a, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 40272d	 Bytes: 5
  %loadMem_40272d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40272d = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40272d)
  store %struct.Memory* %call_40272d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 402732	 Bytes: 4
  %loadMem_402732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402732 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402732)
  store %struct.Memory* %call_402732, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402736	 Bytes: 3
  %loadMem_402736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402736 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402736)
  store %struct.Memory* %call_402736, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402739	 Bytes: 3
  %loadMem_402739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402739 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402739)
  store %struct.Memory* %call_402739, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40273c	 Bytes: 3
  %loadMem_40273c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40273c = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40273c)
  store %struct.Memory* %call_40273c, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 40273f	 Bytes: 3
  %loadMem_40273f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40273f = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40273f)
  store %struct.Memory* %call_40273f, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402742	 Bytes: 3
  %loadMem_402742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402742 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402742)
  store %struct.Memory* %call_402742, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 402745	 Bytes: 3
  %loadMem_402745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402745 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402745)
  store %struct.Memory* %call_402745, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 402748	 Bytes: 5
  %loadMem_402748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402748 = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402748)
  store %struct.Memory* %call_402748, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 40274d	 Bytes: 4
  %loadMem_40274d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40274d = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40274d)
  store %struct.Memory* %call_40274d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 402751	 Bytes: 4
  %loadMem_402751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402751 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402751)
  store %struct.Memory* %call_402751, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 402755	 Bytes: 4
  %loadMem_402755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402755 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402755)
  store %struct.Memory* %call_402755, %struct.Memory** %MEMORY

  ; Code: movss (%rax,%rcx,4), %xmm1	 RIP: 402759	 Bytes: 5
  %loadMem_402759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402759 = call %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402759)
  store %struct.Memory* %call_402759, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 40275e	 Bytes: 4
  %loadMem_40275e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40275e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40275e)
  store %struct.Memory* %call_40275e, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 402762	 Bytes: 3
  %loadMem_402762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402762 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402762)
  store %struct.Memory* %call_402762, %struct.Memory** %MEMORY

  ; Code: imull -0x2c(%rbp), %edx	 RIP: 402765	 Bytes: 4
  %loadMem_402765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402765 = call %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402765)
  store %struct.Memory* %call_402765, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 402769	 Bytes: 3
  %loadMem_402769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402769 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402769)
  store %struct.Memory* %call_402769, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40276c	 Bytes: 3
  %loadMem_40276c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276c)
  store %struct.Memory* %call_40276c, %struct.Memory** %MEMORY

  ; Code: mulss (%rax,%rcx,4), %xmm1	 RIP: 40276f	 Bytes: 5
  %loadMem_40276f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276f = call %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276f)
  store %struct.Memory* %call_40276f, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 402774	 Bytes: 4
  %loadMem_402774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402774 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402774)
  store %struct.Memory* %call_402774, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 402778	 Bytes: 4
  %loadMem_402778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402778 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402778)
  store %struct.Memory* %call_402778, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 40277c	 Bytes: 4
  %loadMem_40277c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40277c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40277c)
  store %struct.Memory* %call_40277c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 402780	 Bytes: 5
  %loadMem_402780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402780 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402780)
  store %struct.Memory* %call_402780, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 402785	 Bytes: 3
  %loadMem_402785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402785 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402785)
  store %struct.Memory* %call_402785, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402788	 Bytes: 3
  %loadMem_402788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402788 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402788)
  store %struct.Memory* %call_402788, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 40278b	 Bytes: 3
  %loadMem_40278b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278b = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278b)
  store %struct.Memory* %call_40278b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402459	 RIP: 40278e	 Bytes: 5
  %loadMem_40278e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278e = call %struct.Memory* @routine_jmpq_.L_402459(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278e, i64 -821, i64 5)
  store %struct.Memory* %call_40278e, %struct.Memory** %MEMORY

  br label %block_.L_402459

  ; Code: .L_402793:	 RIP: 402793	 Bytes: 0
block_.L_402793:

  ; Code: jmpq .L_402798	 RIP: 402793	 Bytes: 5
  %loadMem_402793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402793 = call %struct.Memory* @routine_jmpq_.L_402798(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402793, i64 5, i64 5)
  store %struct.Memory* %call_402793, %struct.Memory** %MEMORY

  br label %block_.L_402798

  ; Code: .L_402798:	 RIP: 402798	 Bytes: 0
block_.L_402798:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 402798	 Bytes: 3
  %loadMem_402798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402798 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402798)
  store %struct.Memory* %call_402798, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %eax	 RIP: 40279b	 Bytes: 3
  %loadMem_40279b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279b = call %struct.Memory* @routine_addl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279b)
  store %struct.Memory* %call_40279b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40279e	 Bytes: 3
  %loadMem_40279e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279e = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279e)
  store %struct.Memory* %call_40279e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402446	 RIP: 4027a1	 Bytes: 5
  %loadMem_4027a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a1 = call %struct.Memory* @routine_jmpq_.L_402446(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a1, i64 -859, i64 5)
  store %struct.Memory* %call_4027a1, %struct.Memory** %MEMORY

  br label %block_.L_402446

  ; Code: .L_4027a6:	 RIP: 4027a6	 Bytes: 0
block_.L_4027a6:

  ; Code: popq %rbp	 RIP: 4027a6	 Bytes: 1
  %loadMem_4027a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a6 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a6)
  store %struct.Memory* %call_4027a6, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4027a7	 Bytes: 1
  %loadMem_4027a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a7 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a7)
  store %struct.Memory* %call_4027a7, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4027a7
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R9
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376)) #2 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = lshr i64 %7, 32
  store i64 %8, i64* %3, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cltd(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = shl i64 %2, 32
  %13 = ashr exact i64 %12, 32
  %14 = shl  i64 %11, 32
  %15 = or i64 %14, %7
  %16 = sdiv i64 %15, %13
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %36

; <label>:24:                                     ; preds = %3
  %25 = srem i64 %15, %13
  %26 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %27 = and i64 %16, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %24, %20
  %37 = phi %struct.Memory* [ %23, %20 ], [ %0, %24 ]
  ret %struct.Memory* %37
}

define %struct.Memory* @routine_idivl__ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jl_.L_402059(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jge_.L_402054(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_401ff9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402059(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_40211a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jge_.L_402115(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










































define %struct.Memory* @routine_jmpq_.L_402089(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40211a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_40223d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jge_.L_402238(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 3)
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












define %struct.Memory* @routine_subl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}








































































define %struct.Memory* @routine_jmpq_.L_40214a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40223d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 16)
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x8__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_402424(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jge_.L_40241f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0x7___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 7)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x7___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 7)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x6___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 6)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x6___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x5___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 5)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 5)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}
































































































































define %struct.Memory* @routine_jmpq_.L_40226d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402424(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl__0x10___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 16)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 20
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4027a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jge_.L_402793(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_subl__0xf___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 15)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xf___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 15)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xe___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 14)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xe___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 14)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xd___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 13)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xd___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 13)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xc___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xb___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 11)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xb___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 11)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0xa___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 10)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0xa___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 10)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x9___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_subl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 8)
  ret %struct.Memory* %12
}
















































































































































































































































define %struct.Memory* @routine_jmpq_.L_402459(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_402798(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_402446(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

