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


define %struct.Memory* @print_element(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .print_element:	 RIP: 400cc0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400cc0	 Bytes: 1
  %loadMem_400cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc0)
  store %struct.Memory* %call_400cc0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400cc1	 Bytes: 3
  %loadMem_400cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc1)
  store %struct.Memory* %call_400cc1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x8(%rbp)	 RIP: 400cc4	 Bytes: 5
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc4)
  store %struct.Memory* %call_400cc4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0xc(%rbp)	 RIP: 400cc9	 Bytes: 3
  %loadMem_400cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc9 = call %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc9)
  store %struct.Memory* %call_400cc9, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 400ccc	 Bytes: 4
  %loadMem_400ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ccc = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ccc)
  store %struct.Memory* %call_400ccc, %struct.Memory** %MEMORY

  ; Code: movsd -0x8(%rbp), %xmm0	 RIP: 400cd0	 Bytes: 5
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd0 = call %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd0)
  store %struct.Memory* %call_400cd0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 400cd5	 Bytes: 5
  %loadMem_400cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd5)
  store %struct.Memory* %call_400cd5, %struct.Memory** %MEMORY

  ; Code: movsbl -0x20(%rbp), %edi	 RIP: 400cda	 Bytes: 4
  %loadMem_400cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cda = call %struct.Memory* @routine_movsbl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cda)
  store %struct.Memory* %call_400cda, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400cde	 Bytes: 3
  %loadMem_400cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cde = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cde)
  store %struct.Memory* %call_400cde, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400ce1	 Bytes: 3
  %loadMem_400ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce1 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce1)
  store %struct.Memory* %call_400ce1, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400ce4	 Bytes: 3
  %loadMem_400ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce4 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce4)
  store %struct.Memory* %call_400ce4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 400ce7	 Bytes: 4
  %loadMem_400ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce7)
  store %struct.Memory* %call_400ce7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400ceb	 Bytes: 4
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ceb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ceb)
  store %struct.Memory* %call_400ceb, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rsi,%rcx,1)	 RIP: 400cef	 Bytes: 3
  %loadMem_400cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cef = call %struct.Memory* @routine_movb__al____rsi__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cef)
  store %struct.Memory* %call_400cef, %struct.Memory** %MEMORY

  ; Code: movsbl -0x20(%rbp), %edi	 RIP: 400cf2	 Bytes: 4
  %loadMem_400cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf2 = call %struct.Memory* @routine_movsbl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf2)
  store %struct.Memory* %call_400cf2, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400cf6	 Bytes: 3
  %loadMem_400cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf6 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf6)
  store %struct.Memory* %call_400cf6, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400cf9	 Bytes: 3
  %loadMem_400cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf9 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf9)
  store %struct.Memory* %call_400cf9, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400cfc	 Bytes: 3
  %loadMem_400cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfc = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfc)
  store %struct.Memory* %call_400cfc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400cff	 Bytes: 4
  %loadMem_400cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cff = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cff)
  store %struct.Memory* %call_400cff, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d03	 Bytes: 4
  %loadMem_400d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d03 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d03)
  store %struct.Memory* %call_400d03, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x1(%rcx,%rsi,1)	 RIP: 400d07	 Bytes: 4
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d07 = call %struct.Memory* @routine_movb__al__0x1__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d07)
  store %struct.Memory* %call_400d07, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1f(%rbp), %edi	 RIP: 400d0b	 Bytes: 4
  %loadMem_400d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0b = call %struct.Memory* @routine_movsbl_MINUS0x1f__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0b)
  store %struct.Memory* %call_400d0b, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400d0f	 Bytes: 3
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0f = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0f)
  store %struct.Memory* %call_400d0f, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400d12	 Bytes: 3
  %loadMem_400d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d12 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d12)
  store %struct.Memory* %call_400d12, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400d15	 Bytes: 3
  %loadMem_400d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d15 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d15)
  store %struct.Memory* %call_400d15, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400d18	 Bytes: 4
  %loadMem_400d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d18 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d18)
  store %struct.Memory* %call_400d18, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d1c	 Bytes: 4
  %loadMem_400d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1c)
  store %struct.Memory* %call_400d1c, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x2(%rcx,%rsi,1)	 RIP: 400d20	 Bytes: 4
  %loadMem_400d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d20 = call %struct.Memory* @routine_movb__al__0x2__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d20)
  store %struct.Memory* %call_400d20, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1f(%rbp), %edi	 RIP: 400d24	 Bytes: 4
  %loadMem_400d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d24 = call %struct.Memory* @routine_movsbl_MINUS0x1f__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d24)
  store %struct.Memory* %call_400d24, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400d28	 Bytes: 3
  %loadMem_400d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d28 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d28)
  store %struct.Memory* %call_400d28, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400d2b	 Bytes: 3
  %loadMem_400d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2b = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2b)
  store %struct.Memory* %call_400d2b, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400d2e	 Bytes: 3
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2e = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2e)
  store %struct.Memory* %call_400d2e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400d31	 Bytes: 4
  %loadMem_400d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d31 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d31)
  store %struct.Memory* %call_400d31, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d35	 Bytes: 4
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d35 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d35)
  store %struct.Memory* %call_400d35, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x3(%rcx,%rsi,1)	 RIP: 400d39	 Bytes: 4
  %loadMem_400d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d39 = call %struct.Memory* @routine_movb__al__0x3__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d39)
  store %struct.Memory* %call_400d39, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e(%rbp), %edi	 RIP: 400d3d	 Bytes: 4
  %loadMem_400d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3d = call %struct.Memory* @routine_movsbl_MINUS0x1e__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3d)
  store %struct.Memory* %call_400d3d, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400d41	 Bytes: 3
  %loadMem_400d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d41 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d41)
  store %struct.Memory* %call_400d41, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400d44	 Bytes: 3
  %loadMem_400d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d44 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d44)
  store %struct.Memory* %call_400d44, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400d47	 Bytes: 3
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d47 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d47)
  store %struct.Memory* %call_400d47, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400d4a	 Bytes: 4
  %loadMem_400d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4a)
  store %struct.Memory* %call_400d4a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d4e	 Bytes: 4
  %loadMem_400d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4e)
  store %struct.Memory* %call_400d4e, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x4(%rcx,%rsi,1)	 RIP: 400d52	 Bytes: 4
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d52 = call %struct.Memory* @routine_movb__al__0x4__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d52)
  store %struct.Memory* %call_400d52, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e(%rbp), %edi	 RIP: 400d56	 Bytes: 4
  %loadMem_400d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d56 = call %struct.Memory* @routine_movsbl_MINUS0x1e__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d56)
  store %struct.Memory* %call_400d56, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400d5a	 Bytes: 3
  %loadMem_400d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5a = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5a)
  store %struct.Memory* %call_400d5a, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400d5d	 Bytes: 3
  %loadMem_400d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5d = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5d)
  store %struct.Memory* %call_400d5d, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400d60	 Bytes: 3
  %loadMem_400d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d60 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d60)
  store %struct.Memory* %call_400d60, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400d63	 Bytes: 4
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d63 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d63)
  store %struct.Memory* %call_400d63, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d67	 Bytes: 4
  %loadMem_400d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d67 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d67)
  store %struct.Memory* %call_400d67, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x5(%rcx,%rsi,1)	 RIP: 400d6b	 Bytes: 4
  %loadMem_400d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6b = call %struct.Memory* @routine_movb__al__0x5__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6b)
  store %struct.Memory* %call_400d6b, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1d(%rbp), %edi	 RIP: 400d6f	 Bytes: 4
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6f = call %struct.Memory* @routine_movsbl_MINUS0x1d__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6f)
  store %struct.Memory* %call_400d6f, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400d73	 Bytes: 3
  %loadMem_400d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d73 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d73)
  store %struct.Memory* %call_400d73, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400d76	 Bytes: 3
  %loadMem_400d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d76 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d76)
  store %struct.Memory* %call_400d76, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400d79	 Bytes: 3
  %loadMem_400d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d79 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d79)
  store %struct.Memory* %call_400d79, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400d7c	 Bytes: 4
  %loadMem_400d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7c)
  store %struct.Memory* %call_400d7c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d80	 Bytes: 4
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d80 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d80)
  store %struct.Memory* %call_400d80, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x6(%rcx,%rsi,1)	 RIP: 400d84	 Bytes: 4
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d84 = call %struct.Memory* @routine_movb__al__0x6__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d84)
  store %struct.Memory* %call_400d84, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1d(%rbp), %edi	 RIP: 400d88	 Bytes: 4
  %loadMem_400d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d88 = call %struct.Memory* @routine_movsbl_MINUS0x1d__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d88)
  store %struct.Memory* %call_400d88, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400d8c	 Bytes: 3
  %loadMem_400d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8c = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8c)
  store %struct.Memory* %call_400d8c, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400d8f	 Bytes: 3
  %loadMem_400d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8f = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8f)
  store %struct.Memory* %call_400d8f, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400d92	 Bytes: 3
  %loadMem_400d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d92 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d92)
  store %struct.Memory* %call_400d92, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400d95	 Bytes: 4
  %loadMem_400d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d95 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d95)
  store %struct.Memory* %call_400d95, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400d99	 Bytes: 4
  %loadMem_400d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d99 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d99)
  store %struct.Memory* %call_400d99, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x7(%rcx,%rsi,1)	 RIP: 400d9d	 Bytes: 4
  %loadMem_400d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9d = call %struct.Memory* @routine_movb__al__0x7__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9d)
  store %struct.Memory* %call_400d9d, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1c(%rbp), %edi	 RIP: 400da1	 Bytes: 4
  %loadMem_400da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da1 = call %struct.Memory* @routine_movsbl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da1)
  store %struct.Memory* %call_400da1, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400da5	 Bytes: 3
  %loadMem_400da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da5 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da5)
  store %struct.Memory* %call_400da5, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400da8	 Bytes: 3
  %loadMem_400da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da8 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da8)
  store %struct.Memory* %call_400da8, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400dab	 Bytes: 3
  %loadMem_400dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dab = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dab)
  store %struct.Memory* %call_400dab, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400dae	 Bytes: 4
  %loadMem_400dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dae = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dae)
  store %struct.Memory* %call_400dae, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400db2	 Bytes: 4
  %loadMem_400db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db2)
  store %struct.Memory* %call_400db2, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x8(%rcx,%rsi,1)	 RIP: 400db6	 Bytes: 4
  %loadMem_400db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db6 = call %struct.Memory* @routine_movb__al__0x8__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db6)
  store %struct.Memory* %call_400db6, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1c(%rbp), %edi	 RIP: 400dba	 Bytes: 4
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dba = call %struct.Memory* @routine_movsbl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dba)
  store %struct.Memory* %call_400dba, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400dbe	 Bytes: 3
  %loadMem_400dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbe = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbe)
  store %struct.Memory* %call_400dbe, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400dc1	 Bytes: 3
  %loadMem_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc1 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc1)
  store %struct.Memory* %call_400dc1, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400dc4	 Bytes: 3
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc4 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc4)
  store %struct.Memory* %call_400dc4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400dc7	 Bytes: 4
  %loadMem_400dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc7)
  store %struct.Memory* %call_400dc7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400dcb	 Bytes: 4
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcb)
  store %struct.Memory* %call_400dcb, %struct.Memory** %MEMORY

  ; Code: movb %al, 0x9(%rcx,%rsi,1)	 RIP: 400dcf	 Bytes: 4
  %loadMem_400dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcf = call %struct.Memory* @routine_movb__al__0x9__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcf)
  store %struct.Memory* %call_400dcf, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b(%rbp), %edi	 RIP: 400dd3	 Bytes: 4
  %loadMem_400dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd3 = call %struct.Memory* @routine_movsbl_MINUS0x1b__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd3)
  store %struct.Memory* %call_400dd3, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400dd7	 Bytes: 3
  %loadMem_400dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd7 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd7)
  store %struct.Memory* %call_400dd7, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400dda	 Bytes: 3
  %loadMem_400dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dda = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dda)
  store %struct.Memory* %call_400dda, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400ddd	 Bytes: 3
  %loadMem_400ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddd = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddd)
  store %struct.Memory* %call_400ddd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400de0	 Bytes: 4
  %loadMem_400de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de0)
  store %struct.Memory* %call_400de0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400de4	 Bytes: 4
  %loadMem_400de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de4)
  store %struct.Memory* %call_400de4, %struct.Memory** %MEMORY

  ; Code: movb %al, 0xa(%rcx,%rsi,1)	 RIP: 400de8	 Bytes: 4
  %loadMem_400de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de8 = call %struct.Memory* @routine_movb__al__0xa__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de8)
  store %struct.Memory* %call_400de8, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1b(%rbp), %edi	 RIP: 400dec	 Bytes: 4
  %loadMem_400dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dec = call %struct.Memory* @routine_movsbl_MINUS0x1b__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dec)
  store %struct.Memory* %call_400dec, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400df0	 Bytes: 3
  %loadMem_400df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df0 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df0)
  store %struct.Memory* %call_400df0, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400df3	 Bytes: 3
  %loadMem_400df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df3 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df3)
  store %struct.Memory* %call_400df3, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400df6	 Bytes: 3
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df6 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df6)
  store %struct.Memory* %call_400df6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400df9	 Bytes: 4
  %loadMem_400df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df9)
  store %struct.Memory* %call_400df9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400dfd	 Bytes: 4
  %loadMem_400dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfd = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfd)
  store %struct.Memory* %call_400dfd, %struct.Memory** %MEMORY

  ; Code: movb %al, 0xb(%rcx,%rsi,1)	 RIP: 400e01	 Bytes: 4
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e01 = call %struct.Memory* @routine_movb__al__0xb__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e01)
  store %struct.Memory* %call_400e01, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1a(%rbp), %edi	 RIP: 400e05	 Bytes: 4
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e05 = call %struct.Memory* @routine_movsbl_MINUS0x1a__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e05)
  store %struct.Memory* %call_400e05, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400e09	 Bytes: 3
  %loadMem_400e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e09 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e09)
  store %struct.Memory* %call_400e09, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400e0c	 Bytes: 3
  %loadMem_400e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0c = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0c)
  store %struct.Memory* %call_400e0c, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400e0f	 Bytes: 3
  %loadMem_400e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0f = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0f)
  store %struct.Memory* %call_400e0f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400e12	 Bytes: 4
  %loadMem_400e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e12 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e12)
  store %struct.Memory* %call_400e12, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400e16	 Bytes: 4
  %loadMem_400e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e16 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e16)
  store %struct.Memory* %call_400e16, %struct.Memory** %MEMORY

  ; Code: movb %al, 0xc(%rcx,%rsi,1)	 RIP: 400e1a	 Bytes: 4
  %loadMem_400e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1a = call %struct.Memory* @routine_movb__al__0xc__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1a)
  store %struct.Memory* %call_400e1a, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1a(%rbp), %edi	 RIP: 400e1e	 Bytes: 4
  %loadMem_400e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1e = call %struct.Memory* @routine_movsbl_MINUS0x1a__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1e)
  store %struct.Memory* %call_400e1e, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400e22	 Bytes: 3
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e22 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e22)
  store %struct.Memory* %call_400e22, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400e25	 Bytes: 3
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e25 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e25)
  store %struct.Memory* %call_400e25, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400e28	 Bytes: 3
  %loadMem_400e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e28 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e28)
  store %struct.Memory* %call_400e28, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400e2b	 Bytes: 4
  %loadMem_400e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2b)
  store %struct.Memory* %call_400e2b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400e2f	 Bytes: 4
  %loadMem_400e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2f)
  store %struct.Memory* %call_400e2f, %struct.Memory** %MEMORY

  ; Code: movb %al, 0xd(%rcx,%rsi,1)	 RIP: 400e33	 Bytes: 4
  %loadMem_400e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e33 = call %struct.Memory* @routine_movb__al__0xd__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e33)
  store %struct.Memory* %call_400e33, %struct.Memory** %MEMORY

  ; Code: movsbl -0x19(%rbp), %edi	 RIP: 400e37	 Bytes: 4
  %loadMem_400e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e37 = call %struct.Memory* @routine_movsbl_MINUS0x19__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e37)
  store %struct.Memory* %call_400e37, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400e3b	 Bytes: 3
  %loadMem_400e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3b = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3b)
  store %struct.Memory* %call_400e3b, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400e3e	 Bytes: 3
  %loadMem_400e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3e = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3e)
  store %struct.Memory* %call_400e3e, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400e41	 Bytes: 3
  %loadMem_400e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e41 = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e41)
  store %struct.Memory* %call_400e41, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400e44	 Bytes: 4
  %loadMem_400e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e44 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e44)
  store %struct.Memory* %call_400e44, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400e48	 Bytes: 4
  %loadMem_400e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e48 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e48)
  store %struct.Memory* %call_400e48, %struct.Memory** %MEMORY

  ; Code: movb %al, 0xe(%rcx,%rsi,1)	 RIP: 400e4c	 Bytes: 4
  %loadMem_400e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4c = call %struct.Memory* @routine_movb__al__0xe__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4c)
  store %struct.Memory* %call_400e4c, %struct.Memory** %MEMORY

  ; Code: movsbl -0x19(%rbp), %edi	 RIP: 400e50	 Bytes: 4
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e50 = call %struct.Memory* @routine_movsbl_MINUS0x19__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e50)
  store %struct.Memory* %call_400e50, %struct.Memory** %MEMORY

  ; Code: andl $0xf, %edi	 RIP: 400e54	 Bytes: 3
  %loadMem_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e54 = call %struct.Memory* @routine_andl__0xf___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e54)
  store %struct.Memory* %call_400e54, %struct.Memory** %MEMORY

  ; Code: addl $0x30, %edi	 RIP: 400e57	 Bytes: 3
  %loadMem_400e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e57 = call %struct.Memory* @routine_addl__0x30___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e57)
  store %struct.Memory* %call_400e57, %struct.Memory** %MEMORY

  ; Code: movb %dil, %al	 RIP: 400e5a	 Bytes: 3
  %loadMem_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5a = call %struct.Memory* @routine_movb__dil___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5a)
  store %struct.Memory* %call_400e5a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 400e5d	 Bytes: 4
  %loadMem_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5d)
  store %struct.Memory* %call_400e5d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 400e61	 Bytes: 4
  %loadMem_400e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e61 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e61)
  store %struct.Memory* %call_400e61, %struct.Memory** %MEMORY

  ; Code: movb %al, 0xf(%rcx,%rsi,1)	 RIP: 400e65	 Bytes: 4
  %loadMem_400e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e65 = call %struct.Memory* @routine_movb__al__0xf__rcx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e65)
  store %struct.Memory* %call_400e65, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 400e69	 Bytes: 1
  %loadMem_400e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e69 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e69)
  store %struct.Memory* %call_400e69, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 400e6a	 Bytes: 1
  %loadMem_400e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6a)
  store %struct.Memory* %call_400e6a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_400e6a
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
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

define %struct.Memory* @routine_andl__0xf___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 15)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addl__0x30___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dil___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al____rsi__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %AL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__al__0x1__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 1
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x1f__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 31
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0x2__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 2
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0x3__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 3
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x1e__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 30
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0x4__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 4
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0x5__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 5
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x1d__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 29
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0x6__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 6
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0x7__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 7
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0x8__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 8
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0x9__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 9
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x1b__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 27
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0xa__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 10
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0xb__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 11
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x1a__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 26
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0xc__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 12
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0xd__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 13
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movsbl_MINUS0x19__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 25
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movb__al__0xe__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 14
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}














define %struct.Memory* @routine_movb__al__0xf__rcx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 15
  %19 = add i64 %18, %17
  %20 = load i8, i8* %AL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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

