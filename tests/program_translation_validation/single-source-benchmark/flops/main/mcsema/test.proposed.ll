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

declare %struct.Memory* @sub_400440.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4025d0.dtime(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Data Access Globals


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 400550	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400550	 Bytes: 1
  %loadMem_400550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400550 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400550)
  store %struct.Memory* %call_400550, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400551	 Bytes: 3
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400551 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400551)
  store %struct.Memory* %call_400551, %struct.Memory** %MEMORY

  ; Code: subq $0x160, %rsp	 RIP: 400554	 Bytes: 7
  %loadMem_400554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400554 = call %struct.Memory* @routine_subq__0x160___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400554)
  store %struct.Memory* %call_400554, %struct.Memory** %MEMORY

  ; Code: movq $0x402810, %rdi	 RIP: 40055b	 Bytes: 10
  %loadMem_40055b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40055b = call %struct.Memory* @routine_movq__0x402810___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40055b)
  store %struct.Memory* %call_40055b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400565	 Bytes: 7
  %loadMem_400565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400565 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400565)
  store %struct.Memory* %call_400565, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40056c	 Bytes: 2
  %loadMem_40056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40056c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40056c)
  store %struct.Memory* %call_40056c, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 40056e	 Bytes: 5
  %loadMem1_40056e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40056e = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40056e, i64 -302, i64 5, i64 5)
  store %struct.Memory* %call1_40056e, %struct.Memory** %MEMORY

  %loadMem2_40056e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40056e = load i64, i64* %3
  %call2_40056e = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_40056e, %struct.Memory* %loadMem2_40056e)
  store %struct.Memory* %call2_40056e, %struct.Memory** %MEMORY

  ; Code: movq $0x4027d8, %rdi	 RIP: 400573	 Bytes: 10
  %loadMem_400573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400573 = call %struct.Memory* @routine_movq__0x4027d8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400573)
  store %struct.Memory* %call_400573, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 40057d	 Bytes: 3
  %loadMem_40057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40057d = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40057d)
  store %struct.Memory* %call_40057d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400580	 Bytes: 2
  %loadMem_400580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400580 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400580)
  store %struct.Memory* %call_400580, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400582	 Bytes: 5
  %loadMem1_400582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400582 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400582, i64 -322, i64 5, i64 5)
  store %struct.Memory* %call1_400582, %struct.Memory** %MEMORY

  %loadMem2_400582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400582 = load i64, i64* %3
  %call2_400582 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_400582, %struct.Memory* %loadMem2_400582)
  store %struct.Memory* %call2_400582, %struct.Memory** %MEMORY

  ; Code: movq $0x402812, %rdi	 RIP: 400587	 Bytes: 10
  %loadMem_400587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400587 = call %struct.Memory* @routine_movq__0x402812___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400587)
  store %struct.Memory* %call_400587, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm0	 RIP: 400591	 Bytes: 8
  %loadMem_400591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400591 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400591)
  store %struct.Memory* %call_400591, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm1	 RIP: 400599	 Bytes: 8
  %loadMem_400599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400599 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400599)
  store %struct.Memory* %call_400599, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm2	 RIP: 4005a1	 Bytes: 8
  %loadMem_4005a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005a1 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005a1)
  store %struct.Memory* %call_4005a1, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm3	 RIP: 4005a9	 Bytes: 8
  %loadMem_4005a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005a9 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005a9)
  store %struct.Memory* %call_4005a9, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm4	 RIP: 4005b1	 Bytes: 8
  %loadMem_4005b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005b1 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005b1)
  store %struct.Memory* %call_4005b1, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm5	 RIP: 4005b9	 Bytes: 8
  %loadMem_4005b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005b9 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005b9)
  store %struct.Memory* %call_4005b9, %struct.Memory** %MEMORY

  ; Code: movsd 0x214f(%rip), %xmm6	 RIP: 4005c1	 Bytes: 8
  %loadMem_4005c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005c1 = call %struct.Memory* @routine_movsd_0x214f__rip____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005c1)
  store %struct.Memory* %call_4005c1, %struct.Memory** %MEMORY

  ; Code: movq $0x3d09, -0x38(%rbp)	 RIP: 4005c9	 Bytes: 8
  %loadMem_4005c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005c9 = call %struct.Memory* @routine_movq__0x3d09__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005c9)
  store %struct.Memory* %call_4005c9, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x38(%rbp), %xmm7	 RIP: 4005d1	 Bytes: 6
  %loadMem_4005d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d1 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x38__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d1)
  store %struct.Memory* %call_4005d1, %struct.Memory** %MEMORY

  ; Code: divsd %xmm7, %xmm6	 RIP: 4005d7	 Bytes: 4
  %loadMem_4005d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005d7 = call %struct.Memory* @routine_divsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005d7)
  store %struct.Memory* %call_4005d7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm6, 0x603148	 RIP: 4005db	 Bytes: 9
  %loadMem_4005db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005db = call %struct.Memory* @routine_movsd__xmm6__0x603148(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005db)
  store %struct.Memory* %call_4005db, %struct.Memory** %MEMORY

  ; Code: movsd %xmm4, 0x6032f0	 RIP: 4005e4	 Bytes: 9
  %loadMem_4005e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005e4 = call %struct.Memory* @routine_movsd__xmm4__0x6032f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005e4)
  store %struct.Memory* %call_4005e4, %struct.Memory** %MEMORY

  ; Code: movq $0x1e848000, -0x40(%rbp)	 RIP: 4005ed	 Bytes: 8
  %loadMem_4005ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005ed = call %struct.Memory* @routine_movq__0x1e848000__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005ed)
  store %struct.Memory* %call_4005ed, %struct.Memory** %MEMORY

  ; Code: movsd %xmm5, 0x603270	 RIP: 4005f5	 Bytes: 9
  %loadMem_4005f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005f5 = call %struct.Memory* @routine_movsd__xmm5__0x603270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005f5)
  store %struct.Memory* %call_4005f5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm4, 0x6032a8	 RIP: 4005fe	 Bytes: 9
  %loadMem_4005fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4005fe = call %struct.Memory* @routine_movsd__xmm4__0x6032a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4005fe)
  store %struct.Memory* %call_4005fe, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603130	 RIP: 400607	 Bytes: 9
  %loadMem_400607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400607 = call %struct.Memory* @routine_movsd__xmm3__0x603130(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400607)
  store %struct.Memory* %call_400607, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032c0	 RIP: 400610	 Bytes: 9
  %loadMem_400610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400610 = call %struct.Memory* @routine_movsd__xmm2__0x6032c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400610)
  store %struct.Memory* %call_400610, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603298	 RIP: 400619	 Bytes: 9
  %loadMem_400619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400619 = call %struct.Memory* @routine_movsd__xmm1__0x603298(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400619)
  store %struct.Memory* %call_400619, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x603138	 RIP: 400622	 Bytes: 9
  %loadMem_400622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400622 = call %struct.Memory* @routine_movsd__xmm0__0x603138(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400622)
  store %struct.Memory* %call_400622, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm0	 RIP: 40062b	 Bytes: 9
  %loadMem_40062b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40062b = call %struct.Memory* @routine_movsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40062b)
  store %struct.Memory* %call_40062b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032a0	 RIP: 400634	 Bytes: 9
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400634 = call %struct.Memory* @routine_movsd__xmm0__0x6032a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400634)
  store %struct.Memory* %call_400634, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 40063d	 Bytes: 3
  %loadMem_40063d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40063d = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40063d)
  store %struct.Memory* %call_40063d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400640	 Bytes: 2
  %loadMem_400640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400640 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400640)
  store %struct.Memory* %call_400640, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400642	 Bytes: 5
  %loadMem1_400642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400642 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400642, i64 -514, i64 5, i64 5)
  store %struct.Memory* %call1_400642, %struct.Memory** %MEMORY

  %loadMem2_400642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400642 = load i64, i64* %3
  %call2_400642 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_400642, %struct.Memory* %loadMem2_400642)
  store %struct.Memory* %call2_400642, %struct.Memory** %MEMORY

  ; Code: movq $0x402842, %rdi	 RIP: 400647	 Bytes: 10
  %loadMem_400647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400647 = call %struct.Memory* @routine_movq__0x402842___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400647)
  store %struct.Memory* %call_400647, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 400651	 Bytes: 3
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400651 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400651)
  store %struct.Memory* %call_400651, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400654	 Bytes: 2
  %loadMem_400654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400654 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400654)
  store %struct.Memory* %call_400654, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400656	 Bytes: 5
  %loadMem1_400656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400656 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400656, i64 -534, i64 5, i64 5)
  store %struct.Memory* %call1_400656, %struct.Memory** %MEMORY

  %loadMem2_400656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400656 = load i64, i64* %3
  %call2_400656 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_400656, %struct.Memory* %loadMem2_400656)
  store %struct.Memory* %call2_400656, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 40065b	 Bytes: 10
  %loadMem_40065b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40065b = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40065b)
  store %struct.Memory* %call_40065b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 400665	 Bytes: 3
  %loadMem_400665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400665 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400665)
  store %struct.Memory* %call_400665, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400668	 Bytes: 5
  %loadMem1_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400668 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400668, i64 8040, i64 5, i64 5)
  store %struct.Memory* %call1_400668, %struct.Memory** %MEMORY

  %loadMem2_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400668 = load i64, i64* %3
  %call2_400668 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400668, %struct.Memory* %loadMem2_400668)
  store %struct.Memory* %call2_400668, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 40066d	 Bytes: 10
  %loadMem_40066d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40066d = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40066d)
  store %struct.Memory* %call_40066d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 400677	 Bytes: 3
  %loadMem_400677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400677 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400677)
  store %struct.Memory* %call_400677, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 40067a	 Bytes: 5
  %loadMem1_40067a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40067a = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40067a, i64 8022, i64 5, i64 5)
  store %struct.Memory* %call1_40067a, %struct.Memory** %MEMORY

  %loadMem2_40067a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40067a = load i64, i64* %3
  %call2_40067a = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_40067a, %struct.Memory* %loadMem2_40067a)
  store %struct.Memory* %call2_40067a, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 40067f	 Bytes: 3
  %loadMem_40067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40067f = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40067f)
  store %struct.Memory* %call_40067f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 400682	 Bytes: 4
  %loadMem_400682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400682 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400682)
  store %struct.Memory* %call_400682, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x58(%rbp)	 RIP: 400686	 Bytes: 4
  %loadMem_400686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400686 = call %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400686)
  store %struct.Memory* %call_400686, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032b8	 RIP: 40068a	 Bytes: 9
  %loadMem_40068a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40068a = call %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40068a)
  store %struct.Memory* %call_40068a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 400693	 Bytes: 3
  %loadMem_400693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400693 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400693)
  store %struct.Memory* %call_400693, %struct.Memory** %MEMORY

  ; Code: .L_400696:	 RIP: 400696	 Bytes: 0
  br label %block_.L_400696
block_.L_400696:

  ; Code: movsd 0x6032b8, %xmm0	 RIP: 400696	 Bytes: 9
  %loadMem_400696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400696 = call %struct.Memory* @routine_movsd_0x6032b8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400696)
  store %struct.Memory* %call_400696, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032f0, %xmm1	 RIP: 40069f	 Bytes: 9
  %loadMem_40069f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40069f = call %struct.Memory* @routine_movsd_0x6032f0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40069f)
  store %struct.Memory* %call_40069f, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4006a8	 Bytes: 4
  %loadMem_4006a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006a8 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006a8)
  store %struct.Memory* %call_4006a8, %struct.Memory** %MEMORY

  ; Code: jbe .L_400811	 RIP: 4006ac	 Bytes: 6
  %loadMem_4006ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ac = call %struct.Memory* @routine_jbe_.L_400811(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ac, i8* %BRANCH_TAKEN, i64 357, i64 6, i64 6)
  store %struct.Memory* %call_4006ac, %struct.Memory** %MEMORY

  %loadBr_4006ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4006ac = icmp eq i8 %loadBr_4006ac, 1
  br i1 %cmpBr_4006ac, label %block_.L_400811, label %block_4006b2

block_4006b2:
  ; Code: movq $0x6032d0, %rdi	 RIP: 4006b2	 Bytes: 10
  %loadMem_4006b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006b2 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006b2)
  store %struct.Memory* %call_4006b2, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4006bc	 Bytes: 3
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006bc = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006bc)
  store %struct.Memory* %call_4006bc, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4006bf	 Bytes: 4
  %loadMem_4006bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006bf = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006bf)
  store %struct.Memory* %call_4006bf, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 4006c3	 Bytes: 4
  %loadMem_4006c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006c3 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006c3)
  store %struct.Memory* %call_4006c3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 4006c7	 Bytes: 4
  %loadMem_4006c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006c7 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006c7)
  store %struct.Memory* %call_4006c7, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 4006cb	 Bytes: 9
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006cb = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006cb)
  store %struct.Memory* %call_4006cb, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x58(%rbp), %xmm2	 RIP: 4006d4	 Bytes: 6
  %loadMem_4006d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006d4 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006d4)
  store %struct.Memory* %call_4006d4, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 4006da	 Bytes: 4
  %loadMem_4006da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006da = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006da)
  store %struct.Memory* %call_4006da, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 4006de	 Bytes: 5
  %loadMem_4006de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006de = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006de)
  store %struct.Memory* %call_4006de, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 4006e3	 Bytes: 5
  %loadMem_4006e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006e3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006e3)
  store %struct.Memory* %call_4006e3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4006e8	 Bytes: 5
  %loadMem_4006e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006e8 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006e8)
  store %struct.Memory* %call_4006e8, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm0	 RIP: 4006ed	 Bytes: 9
  %loadMem_4006ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006ed = call %struct.Memory* @routine_movsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006ed)
  store %struct.Memory* %call_4006ed, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 4006f6	 Bytes: 5
  %loadMem_4006f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4006f6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4006f6)
  store %struct.Memory* %call_4006f6, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 4006fb	 Bytes: 5
  %loadMem1_4006fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4006fb = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4006fb, i64 7893, i64 5, i64 5)
  store %struct.Memory* %call1_4006fb, %struct.Memory** %MEMORY

  %loadMem2_4006fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4006fb = load i64, i64* %3
  %call2_4006fb = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_4006fb, %struct.Memory* %loadMem2_4006fb)
  store %struct.Memory* %call2_4006fb, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 400700	 Bytes: 8
  %loadMem_400700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400700 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400700)
  store %struct.Memory* %call_400700, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 400708	 Bytes: 3
  %loadMem_400708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400708 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400708)
  store %struct.Memory* %call_400708, %struct.Memory** %MEMORY

  ; Code: .L_40070b:	 RIP: 40070b	 Bytes: 0
  br label %block_.L_40070b
block_.L_40070b:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40070b	 Bytes: 4
  %loadMem_40070b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40070b = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40070b)
  store %struct.Memory* %call_40070b, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 40070f	 Bytes: 4
  %loadMem_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40070f = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40070f)
  store %struct.Memory* %call_40070f, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 400713	 Bytes: 4
  %loadMem_400713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400713 = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400713)
  store %struct.Memory* %call_400713, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 400717	 Bytes: 3
  %loadMem_400717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400717 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400717)
  store %struct.Memory* %call_400717, %struct.Memory** %MEMORY

  ; Code: jg .L_4007d5	 RIP: 40071a	 Bytes: 6
  %loadMem_40071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40071a = call %struct.Memory* @routine_jg_.L_4007d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40071a, i8* %BRANCH_TAKEN, i64 187, i64 6, i64 6)
  store %struct.Memory* %call_40071a, %struct.Memory** %MEMORY

  %loadBr_40071a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40071a = icmp eq i8 %loadBr_40071a, 1
  br i1 %cmpBr_40071a, label %block_.L_4007d5, label %block_400720

block_400720:
  ; Code: movsd -0x20(%rbp), %xmm0	 RIP: 400720	 Bytes: 5
  %loadMem_400720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400720 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400720)
  store %struct.Memory* %call_400720, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm0	 RIP: 400725	 Bytes: 5
  %loadMem_400725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400725 = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400725)
  store %struct.Memory* %call_400725, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 40072a	 Bytes: 5
  %loadMem_40072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40072a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40072a)
  store %struct.Memory* %call_40072a, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm0	 RIP: 40072f	 Bytes: 5
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40072f = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40072f)
  store %struct.Memory* %call_40072f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 400734	 Bytes: 5
  %loadMem_400734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400734 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400734)
  store %struct.Memory* %call_400734, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 400739	 Bytes: 5
  %loadMem_400739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400739 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400739)
  store %struct.Memory* %call_400739, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 40073e	 Bytes: 5
  %loadMem_40073e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40073e = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40073e)
  store %struct.Memory* %call_40073e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030f0, %xmm1	 RIP: 400743	 Bytes: 9
  %loadMem_400743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400743 = call %struct.Memory* @routine_movsd_0x6030f0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400743)
  store %struct.Memory* %call_400743, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm2	 RIP: 40074c	 Bytes: 5
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40074c = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40074c)
  store %struct.Memory* %call_40074c, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030f8, %xmm3	 RIP: 400751	 Bytes: 9
  %loadMem_400751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400751 = call %struct.Memory* @routine_movsd_0x6030f8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400751)
  store %struct.Memory* %call_400751, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm4	 RIP: 40075a	 Bytes: 5
  %loadMem_40075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40075a = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40075a)
  store %struct.Memory* %call_40075a, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603100, %xmm4	 RIP: 40075f	 Bytes: 9
  %loadMem_40075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40075f = call %struct.Memory* @routine_mulsd_0x603100___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40075f)
  store %struct.Memory* %call_40075f, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 400768	 Bytes: 4
  %loadMem_400768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400768 = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400768)
  store %struct.Memory* %call_400768, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 40076c	 Bytes: 4
  %loadMem_40076c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40076c = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40076c)
  store %struct.Memory* %call_40076c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm1	 RIP: 400770	 Bytes: 4
  %loadMem_400770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400770 = call %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400770)
  store %struct.Memory* %call_400770, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm2	 RIP: 400774	 Bytes: 5
  %loadMem_400774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400774 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400774)
  store %struct.Memory* %call_400774, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 400779	 Bytes: 5
  %loadMem_400779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400779 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400779)
  store %struct.Memory* %call_400779, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030f0, %xmm4	 RIP: 40077e	 Bytes: 9
  %loadMem_40077e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40077e = call %struct.Memory* @routine_movsd_0x6030f0___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40077e)
  store %struct.Memory* %call_40077e, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm5	 RIP: 400787	 Bytes: 5
  %loadMem_400787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400787 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400787)
  store %struct.Memory* %call_400787, %struct.Memory** %MEMORY

  ; Code: movsd 0x603108, %xmm6	 RIP: 40078c	 Bytes: 9
  %loadMem_40078c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40078c = call %struct.Memory* @routine_movsd_0x603108___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40078c)
  store %struct.Memory* %call_40078c, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm7	 RIP: 400795	 Bytes: 5
  %loadMem_400795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400795 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400795)
  store %struct.Memory* %call_400795, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603110, %xmm7	 RIP: 40079a	 Bytes: 9
  %loadMem_40079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40079a = call %struct.Memory* @routine_mulsd_0x603110___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40079a)
  store %struct.Memory* %call_40079a, %struct.Memory** %MEMORY

  ; Code: addsd %xmm7, %xmm6	 RIP: 4007a3	 Bytes: 4
  %loadMem_4007a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a3 = call %struct.Memory* @routine_addsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a3)
  store %struct.Memory* %call_4007a3, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 4007a7	 Bytes: 4
  %loadMem_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a7 = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a7)
  store %struct.Memory* %call_4007a7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm5, %xmm4	 RIP: 4007ab	 Bytes: 4
  %loadMem_4007ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ab = call %struct.Memory* @routine_addsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ab)
  store %struct.Memory* %call_4007ab, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 4007af	 Bytes: 4
  %loadMem_4007af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007af = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007af)
  store %struct.Memory* %call_4007af, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 4007b3	 Bytes: 4
  %loadMem_4007b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b3 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b3)
  store %struct.Memory* %call_4007b3, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 4007b7	 Bytes: 4
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b7 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b7)
  store %struct.Memory* %call_4007b7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4007bb	 Bytes: 4
  %loadMem_4007bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007bb = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007bb)
  store %struct.Memory* %call_4007bb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 4007bf	 Bytes: 5
  %loadMem_4007bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007bf = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007bf)
  store %struct.Memory* %call_4007bf, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4007c4	 Bytes: 4
  %loadMem_4007c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c4 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c4)
  store %struct.Memory* %call_4007c4, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4007c8	 Bytes: 4
  %loadMem_4007c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c8 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c8)
  store %struct.Memory* %call_4007c8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4007cc	 Bytes: 4
  %loadMem_4007cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007cc = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007cc)
  store %struct.Memory* %call_4007cc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40070b	 RIP: 4007d0	 Bytes: 5
  %loadMem_4007d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d0 = call %struct.Memory* @routine_jmpq_.L_40070b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d0, i64 -197, i64 5)
  store %struct.Memory* %call_4007d0, %struct.Memory** %MEMORY

  br label %block_.L_40070b

  ; Code: .L_4007d5:	 RIP: 4007d5	 Bytes: 0
block_.L_4007d5:

  ; Code: movq $0x6032d0, %rdi	 RIP: 4007d5	 Bytes: 10
  %loadMem_4007d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d5 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d5)
  store %struct.Memory* %call_4007d5, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 4007df	 Bytes: 5
  %loadMem1_4007df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4007df = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4007df, i64 7665, i64 5, i64 5)
  store %struct.Memory* %call1_4007df, %struct.Memory** %MEMORY

  %loadMem2_4007df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007df = load i64, i64* %3
  %call2_4007df = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_4007df, %struct.Memory* %loadMem2_4007df)
  store %struct.Memory* %call2_4007df, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032d8, %xmm0	 RIP: 4007e4	 Bytes: 9
  %loadMem_4007e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e4 = call %struct.Memory* @routine_movsd_0x6032d8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e4)
  store %struct.Memory* %call_4007e4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032b8	 RIP: 4007ed	 Bytes: 9
  %loadMem_4007ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ed = call %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ed)
  store %struct.Memory* %call_4007ed, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdi	 RIP: 4007f6	 Bytes: 4
  %loadMem_4007f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f6 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f6)
  store %struct.Memory* %call_4007f6, %struct.Memory** %MEMORY

  ; Code: cmpq -0x40(%rbp), %rdi	 RIP: 4007fa	 Bytes: 4
  %loadMem_4007fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007fa = call %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007fa)
  store %struct.Memory* %call_4007fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 4007fe	 Bytes: 3
  %loadMem_4007fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007fe = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007fe)
  store %struct.Memory* %call_4007fe, %struct.Memory** %MEMORY

  ; Code: jne .L_40080c	 RIP: 400801	 Bytes: 6
  %loadMem_400801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400801 = call %struct.Memory* @routine_jne_.L_40080c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400801, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_400801, %struct.Memory** %MEMORY

  %loadBr_400801 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400801 = icmp eq i8 %loadBr_400801, 1
  br i1 %cmpBr_400801, label %block_.L_40080c, label %block_400807

block_400807:
  ; Code: jmpq .L_400811	 RIP: 400807	 Bytes: 5
  %loadMem_400807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400807 = call %struct.Memory* @routine_jmpq_.L_400811(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400807, i64 10, i64 5)
  store %struct.Memory* %call_400807, %struct.Memory** %MEMORY

  br label %block_.L_400811

  ; Code: .L_40080c:	 RIP: 40080c	 Bytes: 0
block_.L_40080c:

  ; Code: jmpq .L_400696	 RIP: 40080c	 Bytes: 5
  %loadMem_40080c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40080c = call %struct.Memory* @routine_jmpq_.L_400696(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40080c, i64 -374, i64 5)
  store %struct.Memory* %call_40080c, %struct.Memory** %MEMORY

  br label %block_.L_400696

  ; Code: .L_400811:	 RIP: 400811	 Bytes: 0
block_.L_400811:

  ; Code: movq $0x6032d0, %rdi	 RIP: 400811	 Bytes: 10
  %loadMem_400811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400811 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400811)
  store %struct.Memory* %call_400811, %struct.Memory** %MEMORY

  ; Code: movsd 0x1efd(%rip), %xmm0	 RIP: 40081b	 Bytes: 8
  %loadMem_40081b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40081b = call %struct.Memory* @routine_movsd_0x1efd__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40081b)
  store %struct.Memory* %call_40081b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032a0	 RIP: 400823	 Bytes: 9
  %loadMem_400823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400823 = call %struct.Memory* @routine_movsd__xmm0__0x6032a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400823)
  store %struct.Memory* %call_400823, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a0, %xmm0	 RIP: 40082c	 Bytes: 9
  %loadMem_40082c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40082c = call %struct.Memory* @routine_movsd_0x6032a0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40082c)
  store %struct.Memory* %call_40082c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x603148	 RIP: 400835	 Bytes: 9
  %loadMem_400835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400835 = call %struct.Memory* @routine_movsd__xmm0__0x603148(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400835)
  store %struct.Memory* %call_400835, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 40083e	 Bytes: 5
  %loadMem1_40083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40083e = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40083e, i64 7570, i64 5, i64 5)
  store %struct.Memory* %call1_40083e, %struct.Memory** %MEMORY

  %loadMem2_40083e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40083e = load i64, i64* %3
  %call2_40083e = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_40083e, %struct.Memory* %loadMem2_40083e)
  store %struct.Memory* %call2_40083e, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 400843	 Bytes: 8
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400843 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400843)
  store %struct.Memory* %call_400843, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 40084b	 Bytes: 3
  %loadMem_40084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40084b = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40084b)
  store %struct.Memory* %call_40084b, %struct.Memory** %MEMORY

  ; Code: .L_40084e:	 RIP: 40084e	 Bytes: 0
  br label %block_.L_40084e
block_.L_40084e:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40084e	 Bytes: 4
  %loadMem_40084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40084e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40084e)
  store %struct.Memory* %call_40084e, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 400852	 Bytes: 4
  %loadMem_400852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400852 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400852)
  store %struct.Memory* %call_400852, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 400856	 Bytes: 4
  %loadMem_400856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400856 = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400856)
  store %struct.Memory* %call_400856, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 40085a	 Bytes: 3
  %loadMem_40085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40085a = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40085a)
  store %struct.Memory* %call_40085a, %struct.Memory** %MEMORY

  ; Code: jg .L_400879	 RIP: 40085d	 Bytes: 6
  %loadMem_40085d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40085d = call %struct.Memory* @routine_jg_.L_400879(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40085d, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40085d, %struct.Memory** %MEMORY

  %loadBr_40085d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40085d = icmp eq i8 %loadBr_40085d, 1
  br i1 %cmpBr_40085d, label %block_.L_400879, label %block_400863

block_400863:
  ; Code: jmpq .L_400868	 RIP: 400863	 Bytes: 5
  %loadMem_400863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400863 = call %struct.Memory* @routine_jmpq_.L_400868(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400863, i64 5, i64 5)
  store %struct.Memory* %call_400863, %struct.Memory** %MEMORY

  br label %block_.L_400868

  ; Code: .L_400868:	 RIP: 400868	 Bytes: 0
block_.L_400868:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400868	 Bytes: 4
  %loadMem_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400868 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400868)
  store %struct.Memory* %call_400868, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40086c	 Bytes: 4
  %loadMem_40086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40086c = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40086c)
  store %struct.Memory* %call_40086c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 400870	 Bytes: 4
  %loadMem_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400870 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400870)
  store %struct.Memory* %call_400870, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40084e	 RIP: 400874	 Bytes: 5
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400874 = call %struct.Memory* @routine_jmpq_.L_40084e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400874, i64 -38, i64 5)
  store %struct.Memory* %call_400874, %struct.Memory** %MEMORY

  br label %block_.L_40084e

  ; Code: .L_400879:	 RIP: 400879	 Bytes: 0
block_.L_400879:

  ; Code: movq $0x6032d0, %rdi	 RIP: 400879	 Bytes: 10
  %loadMem_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400879 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400879)
  store %struct.Memory* %call_400879, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400883	 Bytes: 5
  %loadMem1_400883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400883 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400883, i64 7501, i64 5, i64 5)
  store %struct.Memory* %call1_400883, %struct.Memory** %MEMORY

  %loadMem2_400883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400883 = load i64, i64* %3
  %call2_400883 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400883, %struct.Memory* %loadMem2_400883)
  store %struct.Memory* %call2_400883, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 400888	 Bytes: 3
  %loadMem_400888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400888 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400888)
  store %struct.Memory* %call_400888, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm1	 RIP: 40088b	 Bytes: 9
  %loadMem_40088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40088b = call %struct.Memory* @routine_movsd_0x603148___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40088b)
  store %struct.Memory* %call_40088b, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm1	 RIP: 400894	 Bytes: 9
  %loadMem_400894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400894 = call %struct.Memory* @routine_mulsd_0x6032d8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400894)
  store %struct.Memory* %call_400894, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603290	 RIP: 40089d	 Bytes: 9
  %loadMem_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089d = call %struct.Memory* @routine_movsd__xmm1__0x603290(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089d)
  store %struct.Memory* %call_40089d, %struct.Memory** %MEMORY

  ; Code: ucomisd 0x603290, %xmm0	 RIP: 4008a6	 Bytes: 9
  %loadMem_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a6 = call %struct.Memory* @routine_ucomisd_0x603290___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a6)
  store %struct.Memory* %call_4008a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 4008af	 Bytes: 3
  %loadMem_4008af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008af = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008af)
  store %struct.Memory* %call_4008af, %struct.Memory** %MEMORY

  ; Code: jbe .L_4008c4	 RIP: 4008b2	 Bytes: 6
  %loadMem_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b2 = call %struct.Memory* @routine_jbe_.L_4008c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4008b2, %struct.Memory** %MEMORY

  %loadBr_4008b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008b2 = icmp eq i8 %loadBr_4008b2, 1
  br i1 %cmpBr_4008b2, label %block_.L_4008c4, label %block_4008b8

block_4008b8:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4008b8	 Bytes: 3
  %loadMem_4008b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b8 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b8)
  store %struct.Memory* %call_4008b8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x603290	 RIP: 4008bb	 Bytes: 9
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008bb = call %struct.Memory* @routine_movsd__xmm0__0x603290(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008bb)
  store %struct.Memory* %call_4008bb, %struct.Memory** %MEMORY

  ; Code: .L_4008c4:	 RIP: 4008c4	 Bytes: 0
  br label %block_.L_4008c4
block_.L_4008c4:

  ; Code: movq $0x402866, %rdi	 RIP: 4008c4	 Bytes: 10
  %loadMem_4008c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c4 = call %struct.Memory* @routine_movq__0x402866___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c4)
  store %struct.Memory* %call_4008c4, %struct.Memory** %MEMORY

  ; Code: movsd 0x1e52(%rip), %xmm0	 RIP: 4008ce	 Bytes: 8
  %loadMem_4008ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ce = call %struct.Memory* @routine_movsd_0x1e52__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ce)
  store %struct.Memory* %call_4008ce, %struct.Memory** %MEMORY

  ; Code: movsd 0x1e52(%rip), %xmm1	 RIP: 4008d6	 Bytes: 8
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d6 = call %struct.Memory* @routine_movsd_0x1e52__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d6)
  store %struct.Memory* %call_4008d6, %struct.Memory** %MEMORY

  ; Code: movsd 0x1e52(%rip), %xmm2	 RIP: 4008de	 Bytes: 8
  %loadMem_4008de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008de = call %struct.Memory* @routine_movsd_0x1e52__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008de)
  store %struct.Memory* %call_4008de, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm3	 RIP: 4008e6	 Bytes: 9
  %loadMem_4008e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e6 = call %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e6)
  store %struct.Memory* %call_4008e6, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b8, %xmm3	 RIP: 4008ef	 Bytes: 9
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ef = call %struct.Memory* @routine_mulsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ef)
  store %struct.Memory* %call_4008ef, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm3	 RIP: 4008f8	 Bytes: 9
  %loadMem_4008f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f8 = call %struct.Memory* @routine_subsd_0x603290___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f8)
  store %struct.Memory* %call_4008f8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603150	 RIP: 400901	 Bytes: 9
  %loadMem_400901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400901 = call %struct.Memory* @routine_movsd__xmm3__0x603150(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400901)
  store %struct.Memory* %call_400901, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030f0, %xmm3	 RIP: 40090a	 Bytes: 9
  %loadMem_40090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40090a = call %struct.Memory* @routine_movsd_0x6030f0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40090a)
  store %struct.Memory* %call_40090a, %struct.Memory** %MEMORY

  ; Code: addsd 0x6030f8, %xmm3	 RIP: 400913	 Bytes: 9
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400913 = call %struct.Memory* @routine_addsd_0x6030f8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400913)
  store %struct.Memory* %call_400913, %struct.Memory** %MEMORY

  ; Code: addsd 0x603100, %xmm3	 RIP: 40091c	 Bytes: 9
  %loadMem_40091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40091c = call %struct.Memory* @routine_addsd_0x603100___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40091c)
  store %struct.Memory* %call_40091c, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm4	 RIP: 400925	 Bytes: 9
  %loadMem_400925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400925 = call %struct.Memory* @routine_movsd_0x6032a8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400925)
  store %struct.Memory* %call_400925, %struct.Memory** %MEMORY

  ; Code: addsd 0x6030f0, %xmm4	 RIP: 40092e	 Bytes: 9
  %loadMem_40092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40092e = call %struct.Memory* @routine_addsd_0x6030f0___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40092e)
  store %struct.Memory* %call_40092e, %struct.Memory** %MEMORY

  ; Code: addsd 0x603108, %xmm4	 RIP: 400937	 Bytes: 9
  %loadMem_400937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400937 = call %struct.Memory* @routine_addsd_0x603108___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400937)
  store %struct.Memory* %call_400937, %struct.Memory** %MEMORY

  ; Code: addsd 0x603110, %xmm4	 RIP: 400940	 Bytes: 9
  %loadMem_400940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400940 = call %struct.Memory* @routine_addsd_0x603110___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400940)
  store %struct.Memory* %call_400940, %struct.Memory** %MEMORY

  ; Code: divsd %xmm4, %xmm3	 RIP: 400949	 Bytes: 4
  %loadMem_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400949 = call %struct.Memory* @routine_divsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400949)
  store %struct.Memory* %call_400949, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 40094d	 Bytes: 9
  %loadMem_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40094d = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40094d)
  store %struct.Memory* %call_40094d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030f0, %xmm3	 RIP: 400956	 Bytes: 9
  %loadMem_400956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400956 = call %struct.Memory* @routine_movsd_0x6030f0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400956)
  store %struct.Memory* %call_400956, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603268	 RIP: 40095f	 Bytes: 9
  %loadMem_40095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095f = call %struct.Memory* @routine_movsd__xmm3__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095f)
  store %struct.Memory* %call_40095f, %struct.Memory** %MEMORY

  ; Code: movsd 0x603150, %xmm3	 RIP: 400968	 Bytes: 9
  %loadMem_400968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400968 = call %struct.Memory* @routine_movsd_0x603150___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400968)
  store %struct.Memory* %call_400968, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 400971	 Bytes: 4
  %loadMem_400971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400971 = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400971)
  store %struct.Memory* %call_400971, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603158	 RIP: 400975	 Bytes: 9
  %loadMem_400975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400975 = call %struct.Memory* @routine_movsd__xmm3__0x603158(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400975)
  store %struct.Memory* %call_400975, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 40097e	 Bytes: 5
  %loadMem_40097e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097e = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097e)
  store %struct.Memory* %call_40097e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 400983	 Bytes: 9
  %loadMem_400983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400983 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400983)
  store %struct.Memory* %call_400983, %struct.Memory** %MEMORY

  ; Code: addsd 0x603268, %xmm3	 RIP: 40098c	 Bytes: 9
  %loadMem_40098c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098c = call %struct.Memory* @routine_addsd_0x603268___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098c)
  store %struct.Memory* %call_40098c, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm4	 RIP: 400995	 Bytes: 9
  %loadMem_400995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400995 = call %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400995)
  store %struct.Memory* %call_400995, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm4	 RIP: 40099e	 Bytes: 5
  %loadMem_40099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099e = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099e)
  store %struct.Memory* %call_40099e, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 4009a3	 Bytes: 4
  %loadMem_4009a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a3 = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a3)
  store %struct.Memory* %call_4009a3, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 4009a7	 Bytes: 4
  %loadMem_4009a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a7 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a7)
  store %struct.Memory* %call_4009a7, %struct.Memory** %MEMORY

  ; Code: divsd 0x603130, %xmm2	 RIP: 4009ab	 Bytes: 9
  %loadMem_4009ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ab = call %struct.Memory* @routine_divsd_0x603130___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ab)
  store %struct.Memory* %call_4009ab, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 4009b4	 Bytes: 9
  %loadMem_4009b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b4 = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b4)
  store %struct.Memory* %call_4009b4, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm2	 RIP: 4009bd	 Bytes: 9
  %loadMem_4009bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009bd = call %struct.Memory* @routine_movsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009bd)
  store %struct.Memory* %call_4009bd, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032b8, %xmm2	 RIP: 4009c6	 Bytes: 9
  %loadMem_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c6 = call %struct.Memory* @routine_divsd_0x6032b8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c6)
  store %struct.Memory* %call_4009c6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x603268	 RIP: 4009cf	 Bytes: 9
  %loadMem_4009cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cf = call %struct.Memory* @routine_movsd__xmm2__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cf)
  store %struct.Memory* %call_4009cf, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x603268, %rax	 RIP: 4009d8	 Bytes: 10
  %loadMem_4009d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d8 = call %struct.Memory* @routine_cvttsd2si_0x603268___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d8)
  store %struct.Memory* %call_4009d8, %struct.Memory** %MEMORY

  ; Code: imulq $0x9c40, %rax, %rax	 RIP: 4009e2	 Bytes: 7
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e2 = call %struct.Memory* @routine_imulq__0x9c40___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e2)
  store %struct.Memory* %call_4009e2, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq %rax, %xmm2	 RIP: 4009e9	 Bytes: 5
  %loadMem_4009e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e9 = call %struct.Memory* @routine_cvtsi2sdq__rax___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e9)
  store %struct.Memory* %call_4009e9, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032a0, %xmm2	 RIP: 4009ee	 Bytes: 9
  %loadMem_4009ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ee = call %struct.Memory* @routine_divsd_0x6032a0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ee)
  store %struct.Memory* %call_4009ee, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm2, %rax	 RIP: 4009f7	 Bytes: 5
  %loadMem_4009f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f7 = call %struct.Memory* @routine_cvttsd2si__xmm2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f7)
  store %struct.Memory* %call_4009f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 4009fc	 Bytes: 4
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009fc = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009fc)
  store %struct.Memory* %call_4009fc, %struct.Memory** %MEMORY

  ; Code: movsd 0x603268, %xmm2	 RIP: 400a00	 Bytes: 9
  %loadMem_400a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a00 = call %struct.Memory* @routine_movsd_0x603268___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a00)
  store %struct.Memory* %call_400a00, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm2	 RIP: 400a09	 Bytes: 4
  %loadMem_400a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a09 = call %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a09)
  store %struct.Memory* %call_400a09, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b0	 RIP: 400a0d	 Bytes: 9
  %loadMem_400a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0d = call %struct.Memory* @routine_movsd__xmm2__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0d)
  store %struct.Memory* %call_400a0d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 400a16	 Bytes: 9
  %loadMem_400a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a16 = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a16)
  store %struct.Memory* %call_400a16, %struct.Memory** %MEMORY

  ; Code: divsd 0x603158, %xmm1	 RIP: 400a1f	 Bytes: 9
  %loadMem_400a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1f = call %struct.Memory* @routine_divsd_0x603158___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1f)
  store %struct.Memory* %call_400a1f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603160	 RIP: 400a28	 Bytes: 9
  %loadMem_400a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a28 = call %struct.Memory* @routine_movsd__xmm1__0x603160(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a28)
  store %struct.Memory* %call_400a28, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 400a31	 Bytes: 3
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a31 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a31)
  store %struct.Memory* %call_400a31, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 400a34	 Bytes: 9
  %loadMem_400a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a34 = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a34)
  store %struct.Memory* %call_400a34, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 400a3d	 Bytes: 3
  %loadMem_400a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3d = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3d)
  store %struct.Memory* %call_400a3d, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603150, %xmm2	 RIP: 400a40	 Bytes: 9
  %loadMem_400a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a40 = call %struct.Memory* @routine_mulsd_0x603150___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a40)
  store %struct.Memory* %call_400a40, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603160, %xmm0	 RIP: 400a49	 Bytes: 9
  %loadMem_400a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a49 = call %struct.Memory* @routine_mulsd_0x603160___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a49)
  store %struct.Memory* %call_400a49, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 400a52	 Bytes: 8
  %loadMem_400a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a52 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a52)
  store %struct.Memory* %call_400a52, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 400a5a	 Bytes: 3
  %loadMem_400a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5a = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5a)
  store %struct.Memory* %call_400a5a, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 400a5d	 Bytes: 3
  %loadMem_400a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5d = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5d)
  store %struct.Memory* %call_400a5d, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm2	 RIP: 400a60	 Bytes: 8
  %loadMem_400a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a60 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a60)
  store %struct.Memory* %call_400a60, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 400a68	 Bytes: 2
  %loadMem_400a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a68 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a68)
  store %struct.Memory* %call_400a68, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400a6a	 Bytes: 5
  %loadMem1_400a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400a6a = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400a6a, i64 -1578, i64 5, i64 5)
  store %struct.Memory* %call1_400a6a, %struct.Memory** %MEMORY

  %loadMem2_400a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a6a = load i64, i64* %3
  %call2_400a6a = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_400a6a, %struct.Memory* %loadMem2_400a6a)
  store %struct.Memory* %call2_400a6a, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 400a6f	 Bytes: 10
  %loadMem_400a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6f = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6f)
  store %struct.Memory* %call_400a6f, %struct.Memory** %MEMORY

  ; Code: movq $0x8000000000000000, %rcx	 RIP: 400a79	 Bytes: 10
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a79 = call %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a79)
  store %struct.Memory* %call_400a79, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdx	 RIP: 400a83	 Bytes: 4
  %loadMem_400a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a83 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a83)
  store %struct.Memory* %call_400a83, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x50(%rbp)	 RIP: 400a87	 Bytes: 4
  %loadMem_400a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a87 = call %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a87)
  store %struct.Memory* %call_400a87, %struct.Memory** %MEMORY

  ; Code: movsd 0x603138, %xmm0	 RIP: 400a8b	 Bytes: 9
  %loadMem_400a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8b = call %struct.Memory* @routine_movsd_0x603138___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8b)
  store %struct.Memory* %call_400a8b, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 400a94	 Bytes: 5
  %loadMem_400a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a94 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a94)
  store %struct.Memory* %call_400a94, %struct.Memory** %MEMORY

  ; Code: xorq %rcx, %rdx	 RIP: 400a99	 Bytes: 3
  %loadMem_400a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a99 = call %struct.Memory* @routine_xorq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a99)
  store %struct.Memory* %call_400a99, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 400a9c	 Bytes: 5
  %loadMem_400a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9c = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9c)
  store %struct.Memory* %call_400a9c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 400aa1	 Bytes: 5
  %loadMem_400aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa1)
  store %struct.Memory* %call_400aa1, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm0	 RIP: 400aa6	 Bytes: 9
  %loadMem_400aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa6 = call %struct.Memory* @routine_movsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa6)
  store %struct.Memory* %call_400aa6, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 400aaf	 Bytes: 5
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaf = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaf)
  store %struct.Memory* %call_400aaf, %struct.Memory** %MEMORY

  ; Code: xorq %rcx, %rdx	 RIP: 400ab4	 Bytes: 3
  %loadMem_400ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab4 = call %struct.Memory* @routine_xorq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab4)
  store %struct.Memory* %call_400ab4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 400ab7	 Bytes: 5
  %loadMem_400ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab7 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab7)
  store %struct.Memory* %call_400ab7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032b8	 RIP: 400abc	 Bytes: 9
  %loadMem_400abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abc = call %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abc)
  store %struct.Memory* %call_400abc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 400ac5	 Bytes: 6
  %loadMem_400ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac5 = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac5)
  store %struct.Memory* %call_400ac5, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400acb	 Bytes: 5
  %loadMem1_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400acb = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400acb, i64 6917, i64 5, i64 5)
  store %struct.Memory* %call1_400acb, %struct.Memory** %MEMORY

  %loadMem2_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400acb = load i64, i64* %3
  %call2_400acb = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400acb, %struct.Memory* %loadMem2_400acb)
  store %struct.Memory* %call2_400acb, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 400ad0	 Bytes: 8
  %loadMem_400ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad0 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad0)
  store %struct.Memory* %call_400ad0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 400ad8	 Bytes: 6
  %loadMem_400ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad8 = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad8)
  store %struct.Memory* %call_400ad8, %struct.Memory** %MEMORY

  ; Code: .L_400ade:	 RIP: 400ade	 Bytes: 0
  br label %block_.L_400ade
block_.L_400ade:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400ade	 Bytes: 4
  %loadMem_400ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ade = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ade)
  store %struct.Memory* %call_400ade, %struct.Memory** %MEMORY

  ; Code: cmpq -0x50(%rbp), %rax	 RIP: 400ae2	 Bytes: 4
  %loadMem_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae2 = call %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae2)
  store %struct.Memory* %call_400ae2, %struct.Memory** %MEMORY

  ; Code: jg .L_400b35	 RIP: 400ae6	 Bytes: 6
  %loadMem_400ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae6 = call %struct.Memory* @routine_jg_.L_400b35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae6, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_400ae6, %struct.Memory** %MEMORY

  %loadBr_400ae6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ae6 = icmp eq i8 %loadBr_400ae6, 1
  br i1 %cmpBr_400ae6, label %block_.L_400b35, label %block_400aec

block_400aec:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 400aec	 Bytes: 10
  %loadMem_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aec = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aec)
  store %struct.Memory* %call_400aec, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 400af6	 Bytes: 5
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af6 = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af6)
  store %struct.Memory* %call_400af6, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rcx	 RIP: 400afb	 Bytes: 5
  %loadMem_400afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afb = call %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afb)
  store %struct.Memory* %call_400afb, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rcx	 RIP: 400b00	 Bytes: 3
  %loadMem_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b00 = call %struct.Memory* @routine_xorq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b00)
  store %struct.Memory* %call_400b00, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %xmm0	 RIP: 400b03	 Bytes: 5
  %loadMem_400b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b03 = call %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b03)
  store %struct.Memory* %call_400b03, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 400b08	 Bytes: 5
  %loadMem_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b08 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b08)
  store %struct.Memory* %call_400b08, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm0	 RIP: 400b0d	 Bytes: 9
  %loadMem_400b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0d = call %struct.Memory* @routine_movsd_0x6032b8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0d)
  store %struct.Memory* %call_400b0d, %struct.Memory** %MEMORY

  ; Code: addsd -0x10(%rbp), %xmm0	 RIP: 400b16	 Bytes: 5
  %loadMem_400b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b16 = call %struct.Memory* @routine_addsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b16)
  store %struct.Memory* %call_400b16, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032b8	 RIP: 400b1b	 Bytes: 9
  %loadMem_400b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1b = call %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1b)
  store %struct.Memory* %call_400b1b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400b24	 Bytes: 4
  %loadMem_400b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b24 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b24)
  store %struct.Memory* %call_400b24, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400b28	 Bytes: 4
  %loadMem_400b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b28 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b28)
  store %struct.Memory* %call_400b28, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 400b2c	 Bytes: 4
  %loadMem_400b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2c = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2c)
  store %struct.Memory* %call_400b2c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ade	 RIP: 400b30	 Bytes: 5
  %loadMem_400b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b30 = call %struct.Memory* @routine_jmpq_.L_400ade(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b30, i64 -82, i64 5)
  store %struct.Memory* %call_400b30, %struct.Memory** %MEMORY

  br label %block_.L_400ade

  ; Code: .L_400b35:	 RIP: 400b35	 Bytes: 0
block_.L_400b35:

  ; Code: movq $0x6032d0, %rdi	 RIP: 400b35	 Bytes: 10
  %loadMem_400b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b35 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b35)
  store %struct.Memory* %call_400b35, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400b3f	 Bytes: 5
  %loadMem1_400b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b3f = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b3f, i64 6801, i64 5, i64 5)
  store %struct.Memory* %call1_400b3f, %struct.Memory** %MEMORY

  %loadMem2_400b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b3f = load i64, i64* %3
  %call2_400b3f = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400b3f, %struct.Memory* %loadMem2_400b3f)
  store %struct.Memory* %call2_400b3f, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 400b44	 Bytes: 3
  %loadMem_400b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b44 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b44)
  store %struct.Memory* %call_400b44, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm1	 RIP: 400b47	 Bytes: 9
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b47 = call %struct.Memory* @routine_movsd_0x603148___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b47)
  store %struct.Memory* %call_400b47, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm1	 RIP: 400b50	 Bytes: 9
  %loadMem_400b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b50 = call %struct.Memory* @routine_mulsd_0x6032d8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b50)
  store %struct.Memory* %call_400b50, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603168	 RIP: 400b59	 Bytes: 9
  %loadMem_400b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b59 = call %struct.Memory* @routine_movsd__xmm1__0x603168(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b59)
  store %struct.Memory* %call_400b59, %struct.Memory** %MEMORY

  ; Code: ucomisd 0x603168, %xmm0	 RIP: 400b62	 Bytes: 9
  %loadMem_400b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b62 = call %struct.Memory* @routine_ucomisd_0x603168___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b62)
  store %struct.Memory* %call_400b62, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 400b6b	 Bytes: 6
  %loadMem_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b6b = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b6b)
  store %struct.Memory* %call_400b6b, %struct.Memory** %MEMORY

  ; Code: jbe .L_400b83	 RIP: 400b71	 Bytes: 6
  %loadMem_400b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b71 = call %struct.Memory* @routine_jbe_.L_400b83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b71, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_400b71, %struct.Memory** %MEMORY

  %loadBr_400b71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b71 = icmp eq i8 %loadBr_400b71, 1
  br i1 %cmpBr_400b71, label %block_.L_400b83, label %block_400b77

block_400b77:
  ; Code: xorps %xmm0, %xmm0	 RIP: 400b77	 Bytes: 3
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b77 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b77)
  store %struct.Memory* %call_400b77, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x603168	 RIP: 400b7a	 Bytes: 9
  %loadMem_400b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7a = call %struct.Memory* @routine_movsd__xmm0__0x603168(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7a)
  store %struct.Memory* %call_400b7a, %struct.Memory** %MEMORY

  ; Code: .L_400b83:	 RIP: 400b83	 Bytes: 0
  br label %block_.L_400b83
block_.L_400b83:

  ; Code: movq $0x6032d0, %rdi	 RIP: 400b83	 Bytes: 10
  %loadMem_400b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b83 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b83)
  store %struct.Memory* %call_400b83, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 400b8d	 Bytes: 3
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b8d = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b8d)
  store %struct.Memory* %call_400b8d, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm1	 RIP: 400b90	 Bytes: 6
  %loadMem_400b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b90 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b90)
  store %struct.Memory* %call_400b90, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 400b96	 Bytes: 9
  %loadMem_400b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b96 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b96)
  store %struct.Memory* %call_400b96, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm1	 RIP: 400b9f	 Bytes: 9
  %loadMem_400b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9f = call %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9f)
  store %struct.Memory* %call_400b9f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x18(%rbp)	 RIP: 400ba8	 Bytes: 5
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba8 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba8)
  store %struct.Memory* %call_400ba8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 400bad	 Bytes: 5
  %loadMem_400bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bad = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bad)
  store %struct.Memory* %call_400bad, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 400bb2	 Bytes: 5
  %loadMem_400bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb2)
  store %struct.Memory* %call_400bb2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 400bb7	 Bytes: 5
  %loadMem_400bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb7)
  store %struct.Memory* %call_400bb7, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400bbc	 Bytes: 5
  %loadMem1_400bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400bbc = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400bbc, i64 6676, i64 5, i64 5)
  store %struct.Memory* %call1_400bbc, %struct.Memory** %MEMORY

  %loadMem2_400bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400bbc = load i64, i64* %3
  %call2_400bbc = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400bbc, %struct.Memory* %loadMem2_400bbc)
  store %struct.Memory* %call2_400bbc, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 400bc1	 Bytes: 8
  %loadMem_400bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc1 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc1)
  store %struct.Memory* %call_400bc1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 400bc9	 Bytes: 6
  %loadMem_400bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc9 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc9)
  store %struct.Memory* %call_400bc9, %struct.Memory** %MEMORY

  ; Code: .L_400bcf:	 RIP: 400bcf	 Bytes: 0
  br label %block_.L_400bcf
block_.L_400bcf:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400bcf	 Bytes: 4
  %loadMem_400bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bcf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bcf)
  store %struct.Memory* %call_400bcf, %struct.Memory** %MEMORY

  ; Code: cmpq -0x50(%rbp), %rax	 RIP: 400bd3	 Bytes: 4
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd3 = call %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd3)
  store %struct.Memory* %call_400bd3, %struct.Memory** %MEMORY

  ; Code: jg .L_400c81	 RIP: 400bd7	 Bytes: 6
  %loadMem_400bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd7 = call %struct.Memory* @routine_jg_.L_400c81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd7, i8* %BRANCH_TAKEN, i64 170, i64 6, i64 6)
  store %struct.Memory* %call_400bd7, %struct.Memory** %MEMORY

  %loadBr_400bd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bd7 = icmp eq i8 %loadBr_400bd7, 1
  br i1 %cmpBr_400bd7, label %block_.L_400c81, label %block_400bdd

block_400bdd:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 400bdd	 Bytes: 10
  %loadMem_400bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bdd = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bdd)
  store %struct.Memory* %call_400bdd, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 400be7	 Bytes: 5
  %loadMem_400be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be7 = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be7)
  store %struct.Memory* %call_400be7, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rcx	 RIP: 400bec	 Bytes: 5
  %loadMem_400bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bec = call %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bec)
  store %struct.Memory* %call_400bec, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rcx	 RIP: 400bf1	 Bytes: 3
  %loadMem_400bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf1 = call %struct.Memory* @routine_xorq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf1)
  store %struct.Memory* %call_400bf1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %xmm0	 RIP: 400bf4	 Bytes: 5
  %loadMem_400bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf4 = call %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf4)
  store %struct.Memory* %call_400bf4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 400bf9	 Bytes: 5
  %loadMem_400bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf9)
  store %struct.Memory* %call_400bf9, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm0	 RIP: 400bfe	 Bytes: 9
  %loadMem_400bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bfe = call %struct.Memory* @routine_movsd_0x6032b8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bfe)
  store %struct.Memory* %call_400bfe, %struct.Memory** %MEMORY

  ; Code: addsd -0x10(%rbp), %xmm0	 RIP: 400c07	 Bytes: 5
  %loadMem_400c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c07 = call %struct.Memory* @routine_addsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c07)
  store %struct.Memory* %call_400c07, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032b8	 RIP: 400c0c	 Bytes: 9
  %loadMem_400c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c0c = call %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c0c)
  store %struct.Memory* %call_400c0c, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 400c15	 Bytes: 5
  %loadMem_400c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c15 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c15)
  store %struct.Memory* %call_400c15, %struct.Memory** %MEMORY

  ; Code: addsd 0x603130, %xmm0	 RIP: 400c1a	 Bytes: 9
  %loadMem_400c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1a = call %struct.Memory* @routine_addsd_0x603130___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1a)
  store %struct.Memory* %call_400c1a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 400c23	 Bytes: 5
  %loadMem_400c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c23 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c23)
  store %struct.Memory* %call_400c23, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 400c28	 Bytes: 5
  %loadMem_400c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c28 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c28)
  store %struct.Memory* %call_400c28, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm1	 RIP: 400c2d	 Bytes: 5
  %loadMem_400c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c2d = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c2d)
  store %struct.Memory* %call_400c2d, %struct.Memory** %MEMORY

  ; Code: subsd -0x18(%rbp), %xmm1	 RIP: 400c32	 Bytes: 5
  %loadMem_400c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c32 = call %struct.Memory* @routine_subsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c32)
  store %struct.Memory* %call_400c32, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400c37	 Bytes: 4
  %loadMem_400c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c37 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c37)
  store %struct.Memory* %call_400c37, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 400c3b	 Bytes: 5
  %loadMem_400c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3b)
  store %struct.Memory* %call_400c3b, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm0	 RIP: 400c40	 Bytes: 5
  %loadMem_400c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c40 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c40)
  store %struct.Memory* %call_400c40, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm1	 RIP: 400c45	 Bytes: 5
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c45 = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c45)
  store %struct.Memory* %call_400c45, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm1	 RIP: 400c4a	 Bytes: 5
  %loadMem_400c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4a = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4a)
  store %struct.Memory* %call_400c4a, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 400c4f	 Bytes: 4
  %loadMem_400c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4f = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4f)
  store %struct.Memory* %call_400c4f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 400c53	 Bytes: 5
  %loadMem_400c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c53 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c53)
  store %struct.Memory* %call_400c53, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm0	 RIP: 400c58	 Bytes: 5
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c58 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c58)
  store %struct.Memory* %call_400c58, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm1	 RIP: 400c5d	 Bytes: 5
  %loadMem_400c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c5d = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c5d)
  store %struct.Memory* %call_400c5d, %struct.Memory** %MEMORY

  ; Code: divsd -0x18(%rbp), %xmm1	 RIP: 400c62	 Bytes: 5
  %loadMem_400c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c62 = call %struct.Memory* @routine_divsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c62)
  store %struct.Memory* %call_400c62, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400c67	 Bytes: 4
  %loadMem_400c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c67 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c67)
  store %struct.Memory* %call_400c67, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 400c6b	 Bytes: 5
  %loadMem_400c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c6b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c6b)
  store %struct.Memory* %call_400c6b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400c70	 Bytes: 4
  %loadMem_400c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c70 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c70)
  store %struct.Memory* %call_400c70, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400c74	 Bytes: 4
  %loadMem_400c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c74 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c74)
  store %struct.Memory* %call_400c74, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 400c78	 Bytes: 4
  %loadMem_400c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c78 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c78)
  store %struct.Memory* %call_400c78, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400bcf	 RIP: 400c7c	 Bytes: 5
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7c = call %struct.Memory* @routine_jmpq_.L_400bcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7c, i64 -173, i64 5)
  store %struct.Memory* %call_400c7c, %struct.Memory** %MEMORY

  br label %block_.L_400bcf

  ; Code: .L_400c81:	 RIP: 400c81	 Bytes: 0
block_.L_400c81:

  ; Code: movq $0x6032d0, %rdi	 RIP: 400c81	 Bytes: 10
  %loadMem_400c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c81 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c81)
  store %struct.Memory* %call_400c81, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400c8b	 Bytes: 5
  %loadMem1_400c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400c8b = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400c8b, i64 6469, i64 5, i64 5)
  store %struct.Memory* %call1_400c8b, %struct.Memory** %MEMORY

  %loadMem2_400c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400c8b = load i64, i64* %3
  %call2_400c8b = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400c8b, %struct.Memory* %loadMem2_400c8b)
  store %struct.Memory* %call2_400c8b, %struct.Memory** %MEMORY

  ; Code: movq $0x40288a, %rdi	 RIP: 400c90	 Bytes: 10
  %loadMem_400c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c90 = call %struct.Memory* @routine_movq__0x40288a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c90)
  store %struct.Memory* %call_400c90, %struct.Memory** %MEMORY

  ; Code: movsd 0x1a86(%rip), %xmm0	 RIP: 400c9a	 Bytes: 8
  %loadMem_400c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c9a = call %struct.Memory* @routine_movsd_0x1a86__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c9a)
  store %struct.Memory* %call_400c9a, %struct.Memory** %MEMORY

  ; Code: movsd 0x1a96(%rip), %xmm1	 RIP: 400ca2	 Bytes: 8
  %loadMem_400ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca2 = call %struct.Memory* @routine_movsd_0x1a96__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca2)
  store %struct.Memory* %call_400ca2, %struct.Memory** %MEMORY

  ; Code: movsd 0x1a96(%rip), %xmm2	 RIP: 400caa	 Bytes: 8
  %loadMem_400caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400caa = call %struct.Memory* @routine_movsd_0x1a96__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400caa)
  store %struct.Memory* %call_400caa, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm3	 RIP: 400cb2	 Bytes: 9
  %loadMem_400cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb2 = call %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb2)
  store %struct.Memory* %call_400cb2, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm3	 RIP: 400cbb	 Bytes: 9
  %loadMem_400cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbb = call %struct.Memory* @routine_mulsd_0x6032d8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbb)
  store %struct.Memory* %call_400cbb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603170	 RIP: 400cc4	 Bytes: 9
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc4 = call %struct.Memory* @routine_movsd__xmm3__0x603170(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc4)
  store %struct.Memory* %call_400cc4, %struct.Memory** %MEMORY

  ; Code: movsd 0x603170, %xmm3	 RIP: 400ccd	 Bytes: 9
  %loadMem_400ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ccd = call %struct.Memory* @routine_movsd_0x603170___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ccd)
  store %struct.Memory* %call_400ccd, %struct.Memory** %MEMORY

  ; Code: subsd 0x603168, %xmm3	 RIP: 400cd6	 Bytes: 9
  %loadMem_400cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd6 = call %struct.Memory* @routine_subsd_0x603168___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd6)
  store %struct.Memory* %call_400cd6, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 400cdf	 Bytes: 4
  %loadMem_400cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdf = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdf)
  store %struct.Memory* %call_400cdf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603178	 RIP: 400ce3	 Bytes: 9
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce3 = call %struct.Memory* @routine_movsd__xmm3__0x603178(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce3)
  store %struct.Memory* %call_400ce3, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm2	 RIP: 400cec	 Bytes: 9
  %loadMem_400cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cec = call %struct.Memory* @routine_movsd_0x6032b8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cec)
  store %struct.Memory* %call_400cec, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm2	 RIP: 400cf5	 Bytes: 5
  %loadMem_400cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf5 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf5)
  store %struct.Memory* %call_400cf5, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032b0, %xmm2	 RIP: 400cfa	 Bytes: 9
  %loadMem_400cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfa = call %struct.Memory* @routine_divsd_0x6032b0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfa)
  store %struct.Memory* %call_400cfa, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm2, %rcx	 RIP: 400d03	 Bytes: 5
  %loadMem_400d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d03 = call %struct.Memory* @routine_cvttsd2si__xmm2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d03)
  store %struct.Memory* %call_400d03, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 400d08	 Bytes: 4
  %loadMem_400d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d08 = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d08)
  store %struct.Memory* %call_400d08, %struct.Memory** %MEMORY

  ; Code: movsd 0x603298, %xmm2	 RIP: 400d0c	 Bytes: 9
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0c = call %struct.Memory* @routine_movsd_0x603298___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0c)
  store %struct.Memory* %call_400d0c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400d15	 Bytes: 5
  %loadMem_400d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d15 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d15)
  store %struct.Memory* %call_400d15, %struct.Memory** %MEMORY

  ; Code: divsd 0x603138, %xmm2	 RIP: 400d1a	 Bytes: 9
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1a = call %struct.Memory* @routine_divsd_0x603138___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1a)
  store %struct.Memory* %call_400d1a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 400d23	 Bytes: 9
  %loadMem_400d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d23 = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d23)
  store %struct.Memory* %call_400d23, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm2	 RIP: 400d2c	 Bytes: 9
  %loadMem_400d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2c = call %struct.Memory* @routine_movsd_0x6032b8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2c)
  store %struct.Memory* %call_400d2c, %struct.Memory** %MEMORY

  ; Code: movsd 0x603138, %xmm3	 RIP: 400d35	 Bytes: 9
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d35 = call %struct.Memory* @routine_movsd_0x603138___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d35)
  store %struct.Memory* %call_400d35, %struct.Memory** %MEMORY

  ; Code: divsd -0x20(%rbp), %xmm3	 RIP: 400d3e	 Bytes: 5
  %loadMem_400d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3e = call %struct.Memory* @routine_divsd_MINUS0x20__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3e)
  store %struct.Memory* %call_400d3e, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 400d43	 Bytes: 4
  %loadMem_400d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d43 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d43)
  store %struct.Memory* %call_400d43, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x603268	 RIP: 400d47	 Bytes: 9
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d47 = call %struct.Memory* @routine_movsd__xmm2__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d47)
  store %struct.Memory* %call_400d47, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 400d50	 Bytes: 9
  %loadMem_400d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d50 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d50)
  store %struct.Memory* %call_400d50, %struct.Memory** %MEMORY

  ; Code: movsd 0x603268, %xmm1	 RIP: 400d59	 Bytes: 9
  %loadMem_400d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d59 = call %struct.Memory* @routine_movsd_0x603268___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d59)
  store %struct.Memory* %call_400d59, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b0, %xmm2	 RIP: 400d62	 Bytes: 9
  %loadMem_400d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d62 = call %struct.Memory* @routine_movsd_0x6032b0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d62)
  store %struct.Memory* %call_400d62, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm3	 RIP: 400d6b	 Bytes: 5
  %loadMem_400d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6b = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6b)
  store %struct.Memory* %call_400d6b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm3	 RIP: 400d70	 Bytes: 5
  %loadMem_400d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d70 = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d70)
  store %struct.Memory* %call_400d70, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm3	 RIP: 400d75	 Bytes: 5
  %loadMem_400d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d75 = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d75)
  store %struct.Memory* %call_400d75, %struct.Memory** %MEMORY

  ; Code: divsd %xmm3, %xmm2	 RIP: 400d7a	 Bytes: 4
  %loadMem_400d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7a = call %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7a)
  store %struct.Memory* %call_400d7a, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 400d7e	 Bytes: 4
  %loadMem_400d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7e = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7e)
  store %struct.Memory* %call_400d7e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032e8	 RIP: 400d82	 Bytes: 9
  %loadMem_400d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d82 = call %struct.Memory* @routine_movsd__xmm1__0x6032e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d82)
  store %struct.Memory* %call_400d82, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032e8, %xmm1	 RIP: 400d8b	 Bytes: 9
  %loadMem_400d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8b = call %struct.Memory* @routine_movsd_0x6032e8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8b)
  store %struct.Memory* %call_400d8b, %struct.Memory** %MEMORY

  ; Code: subsd 0x603270, %xmm1	 RIP: 400d94	 Bytes: 9
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d94 = call %struct.Memory* @routine_subsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d94)
  store %struct.Memory* %call_400d94, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603278	 RIP: 400d9d	 Bytes: 9
  %loadMem_400d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9d = call %struct.Memory* @routine_movsd__xmm1__0x603278(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9d)
  store %struct.Memory* %call_400d9d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 400da6	 Bytes: 9
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da6 = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da6)
  store %struct.Memory* %call_400da6, %struct.Memory** %MEMORY

  ; Code: divsd 0x603178, %xmm1	 RIP: 400daf	 Bytes: 9
  %loadMem_400daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400daf = call %struct.Memory* @routine_divsd_0x603178___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400daf)
  store %struct.Memory* %call_400daf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603180	 RIP: 400db8	 Bytes: 9
  %loadMem_400db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db8 = call %struct.Memory* @routine_movsd__xmm1__0x603180(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db8)
  store %struct.Memory* %call_400db8, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 400dc1	 Bytes: 3
  %loadMem_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc1 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc1)
  store %struct.Memory* %call_400dc1, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603278, %xmm1	 RIP: 400dc4	 Bytes: 9
  %loadMem_400dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc4 = call %struct.Memory* @routine_mulsd_0x603278___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc4)
  store %struct.Memory* %call_400dc4, %struct.Memory** %MEMORY

  ; Code: movsd 0x603170, %xmm2	 RIP: 400dcd	 Bytes: 9
  %loadMem_400dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcd = call %struct.Memory* @routine_movsd_0x603170___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcd)
  store %struct.Memory* %call_400dcd, %struct.Memory** %MEMORY

  ; Code: subsd 0x603168, %xmm2	 RIP: 400dd6	 Bytes: 9
  %loadMem_400dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd6 = call %struct.Memory* @routine_subsd_0x603168___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd6)
  store %struct.Memory* %call_400dd6, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm2	 RIP: 400ddf	 Bytes: 4
  %loadMem_400ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddf = call %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddf)
  store %struct.Memory* %call_400ddf, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603180, %xmm0	 RIP: 400de3	 Bytes: 9
  %loadMem_400de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de3 = call %struct.Memory* @routine_mulsd_0x603180___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de3)
  store %struct.Memory* %call_400de3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp)	 RIP: 400dec	 Bytes: 8
  %loadMem_400dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dec = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dec)
  store %struct.Memory* %call_400dec, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 400df4	 Bytes: 3
  %loadMem_400df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df4 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df4)
  store %struct.Memory* %call_400df4, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 400df7	 Bytes: 3
  %loadMem_400df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df7 = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df7)
  store %struct.Memory* %call_400df7, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp), %xmm2	 RIP: 400dfa	 Bytes: 8
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfa = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfa)
  store %struct.Memory* %call_400dfa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 400e02	 Bytes: 6
  %loadMem_400e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e02 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e02)
  store %struct.Memory* %call_400e02, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 400e08	 Bytes: 2
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e08 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e08)
  store %struct.Memory* %call_400e08, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400e0a	 Bytes: 5
  %loadMem1_400e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e0a = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e0a, i64 -2506, i64 5, i64 5)
  store %struct.Memory* %call1_400e0a, %struct.Memory** %MEMORY

  %loadMem2_400e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e0a = load i64, i64* %3
  %call2_400e0a = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_400e0a, %struct.Memory* %loadMem2_400e0a)
  store %struct.Memory* %call2_400e0a, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 400e0f	 Bytes: 10
  %loadMem_400e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0f = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0f)
  store %struct.Memory* %call_400e0f, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 400e19	 Bytes: 3
  %loadMem_400e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e19 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e19)
  store %struct.Memory* %call_400e19, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm1	 RIP: 400e1c	 Bytes: 9
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1c = call %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1c)
  store %struct.Memory* %call_400e1c, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032c0, %xmm2	 RIP: 400e25	 Bytes: 9
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e25 = call %struct.Memory* @routine_movsd_0x6032c0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e25)
  store %struct.Memory* %call_400e25, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm3	 RIP: 400e2e	 Bytes: 6
  %loadMem_400e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2e = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2e)
  store %struct.Memory* %call_400e2e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 400e34	 Bytes: 4
  %loadMem_400e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e34 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e34)
  store %struct.Memory* %call_400e34, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 400e38	 Bytes: 4
  %loadMem_400e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e38 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e38)
  store %struct.Memory* %call_400e38, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 400e3c	 Bytes: 5
  %loadMem_400e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3c = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3c)
  store %struct.Memory* %call_400e3c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 400e41	 Bytes: 5
  %loadMem_400e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e41 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e41)
  store %struct.Memory* %call_400e41, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 400e46	 Bytes: 5
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e46 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e46)
  store %struct.Memory* %call_400e46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 400e4b	 Bytes: 6
  %loadMem_400e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4b = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4b)
  store %struct.Memory* %call_400e4b, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400e51	 Bytes: 5
  %loadMem1_400e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400e51 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400e51, i64 6015, i64 5, i64 5)
  store %struct.Memory* %call1_400e51, %struct.Memory** %MEMORY

  %loadMem2_400e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e51 = load i64, i64* %3
  %call2_400e51 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400e51, %struct.Memory* %loadMem2_400e51)
  store %struct.Memory* %call2_400e51, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 400e56	 Bytes: 8
  %loadMem_400e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e56 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e56)
  store %struct.Memory* %call_400e56, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 400e5e	 Bytes: 6
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5e = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5e)
  store %struct.Memory* %call_400e5e, %struct.Memory** %MEMORY

  ; Code: .L_400e64:	 RIP: 400e64	 Bytes: 0
  br label %block_.L_400e64
block_.L_400e64:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400e64	 Bytes: 4
  %loadMem_400e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e64 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e64)
  store %struct.Memory* %call_400e64, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 400e68	 Bytes: 4
  %loadMem_400e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e68 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e68)
  store %struct.Memory* %call_400e68, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 400e6c	 Bytes: 4
  %loadMem_400e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6c = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6c)
  store %struct.Memory* %call_400e6c, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 400e70	 Bytes: 3
  %loadMem_400e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e70 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e70)
  store %struct.Memory* %call_400e70, %struct.Memory** %MEMORY

  ; Code: jg .L_400f2f	 RIP: 400e73	 Bytes: 6
  %loadMem_400e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e73 = call %struct.Memory* @routine_jg_.L_400f2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e73, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_400e73, %struct.Memory** %MEMORY

  %loadBr_400e73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e73 = icmp eq i8 %loadBr_400e73, 1
  br i1 %cmpBr_400e73, label %block_.L_400f2f, label %block_400e79

block_400e79:
  ; Code: movsd -0x20(%rbp), %xmm0	 RIP: 400e79	 Bytes: 5
  %loadMem_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e79 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e79)
  store %struct.Memory* %call_400e79, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm0	 RIP: 400e7e	 Bytes: 9
  %loadMem_400e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7e = call %struct.Memory* @routine_addsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7e)
  store %struct.Memory* %call_400e7e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 400e87	 Bytes: 5
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e87 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e87)
  store %struct.Memory* %call_400e87, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm0	 RIP: 400e8c	 Bytes: 5
  %loadMem_400e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8c = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8c)
  store %struct.Memory* %call_400e8c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 400e91	 Bytes: 5
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e91 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e91)
  store %struct.Memory* %call_400e91, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 400e96	 Bytes: 5
  %loadMem_400e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e96 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e96)
  store %struct.Memory* %call_400e96, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 400e9b	 Bytes: 5
  %loadMem_400e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9b = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9b)
  store %struct.Memory* %call_400e9b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm0	 RIP: 400ea0	 Bytes: 5
  %loadMem_400ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea0 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea0)
  store %struct.Memory* %call_400ea0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 400ea5	 Bytes: 5
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea5)
  store %struct.Memory* %call_400ea5, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 400eaa	 Bytes: 5
  %loadMem_400eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eaa = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eaa)
  store %struct.Memory* %call_400eaa, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm1	 RIP: 400eaf	 Bytes: 5
  %loadMem_400eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eaf = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eaf)
  store %struct.Memory* %call_400eaf, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm2	 RIP: 400eb4	 Bytes: 9
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb4 = call %struct.Memory* @routine_movsd_0x603068___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb4)
  store %struct.Memory* %call_400eb4, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400ebd	 Bytes: 5
  %loadMem_400ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebd = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebd)
  store %struct.Memory* %call_400ebd, %struct.Memory** %MEMORY

  ; Code: subsd 0x603060, %xmm2	 RIP: 400ec2	 Bytes: 9
  %loadMem_400ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec2 = call %struct.Memory* @routine_subsd_0x603060___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec2)
  store %struct.Memory* %call_400ec2, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400ecb	 Bytes: 5
  %loadMem_400ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecb = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecb)
  store %struct.Memory* %call_400ecb, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm2	 RIP: 400ed0	 Bytes: 9
  %loadMem_400ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed0 = call %struct.Memory* @routine_addsd_0x603058___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed0)
  store %struct.Memory* %call_400ed0, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400ed9	 Bytes: 5
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed9 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed9)
  store %struct.Memory* %call_400ed9, %struct.Memory** %MEMORY

  ; Code: subsd 0x603050, %xmm2	 RIP: 400ede	 Bytes: 9
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ede = call %struct.Memory* @routine_subsd_0x603050___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ede)
  store %struct.Memory* %call_400ede, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400ee7	 Bytes: 5
  %loadMem_400ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee7 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee7)
  store %struct.Memory* %call_400ee7, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm2	 RIP: 400eec	 Bytes: 9
  %loadMem_400eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eec = call %struct.Memory* @routine_addsd_0x603048___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eec)
  store %struct.Memory* %call_400eec, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400ef5	 Bytes: 5
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef5 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef5)
  store %struct.Memory* %call_400ef5, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm2	 RIP: 400efa	 Bytes: 9
  %loadMem_400efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efa = call %struct.Memory* @routine_addsd_0x603040___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efa)
  store %struct.Memory* %call_400efa, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 400f03	 Bytes: 5
  %loadMem_400f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f03 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f03)
  store %struct.Memory* %call_400f03, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm2	 RIP: 400f08	 Bytes: 9
  %loadMem_400f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f08 = call %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f08)
  store %struct.Memory* %call_400f08, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 400f11	 Bytes: 4
  %loadMem_400f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f11 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f11)
  store %struct.Memory* %call_400f11, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 400f15	 Bytes: 4
  %loadMem_400f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f15 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f15)
  store %struct.Memory* %call_400f15, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 400f19	 Bytes: 5
  %loadMem_400f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f19 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f19)
  store %struct.Memory* %call_400f19, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 400f1e	 Bytes: 4
  %loadMem_400f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1e)
  store %struct.Memory* %call_400f1e, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 400f22	 Bytes: 4
  %loadMem_400f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f22 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f22)
  store %struct.Memory* %call_400f22, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 400f26	 Bytes: 4
  %loadMem_400f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f26 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f26)
  store %struct.Memory* %call_400f26, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e64	 RIP: 400f2a	 Bytes: 5
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2a = call %struct.Memory* @routine_jmpq_.L_400e64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2a, i64 -198, i64 5)
  store %struct.Memory* %call_400f2a, %struct.Memory** %MEMORY

  br label %block_.L_400e64

  ; Code: .L_400f2f:	 RIP: 400f2f	 Bytes: 0
block_.L_400f2f:

  ; Code: movq $0x6032d0, %rdi	 RIP: 400f2f	 Bytes: 10
  %loadMem_400f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2f = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2f)
  store %struct.Memory* %call_400f2f, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 400f39	 Bytes: 5
  %loadMem1_400f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f39 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f39, i64 5783, i64 5, i64 5)
  store %struct.Memory* %call1_400f39, %struct.Memory** %MEMORY

  %loadMem2_400f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f39 = load i64, i64* %3
  %call2_400f39 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_400f39, %struct.Memory* %loadMem2_400f39)
  store %struct.Memory* %call2_400f39, %struct.Memory** %MEMORY

  ; Code: movq $0x4028ae, %rdi	 RIP: 400f3e	 Bytes: 10
  %loadMem_400f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3e = call %struct.Memory* @routine_movq__0x4028ae___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3e)
  store %struct.Memory* %call_400f3e, %struct.Memory** %MEMORY

  ; Code: movsd 0x17d8(%rip), %xmm0	 RIP: 400f48	 Bytes: 8
  %loadMem_400f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f48 = call %struct.Memory* @routine_movsd_0x17d8__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f48)
  store %struct.Memory* %call_400f48, %struct.Memory** %MEMORY

  ; Code: movsd 0x17f8(%rip), %xmm1	 RIP: 400f50	 Bytes: 8
  %loadMem_400f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f50 = call %struct.Memory* @routine_movsd_0x17f8__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f50)
  store %struct.Memory* %call_400f50, %struct.Memory** %MEMORY

  ; Code: movsd 0x17f8(%rip), %xmm2	 RIP: 400f58	 Bytes: 8
  %loadMem_400f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f58 = call %struct.Memory* @routine_movsd_0x17f8__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f58)
  store %struct.Memory* %call_400f58, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm3	 RIP: 400f60	 Bytes: 9
  %loadMem_400f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f60 = call %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f60)
  store %struct.Memory* %call_400f60, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm3	 RIP: 400f69	 Bytes: 9
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f69 = call %struct.Memory* @routine_mulsd_0x6032d8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f69)
  store %struct.Memory* %call_400f69, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm3	 RIP: 400f72	 Bytes: 9
  %loadMem_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f72 = call %struct.Memory* @routine_subsd_0x603290___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f72)
  store %struct.Memory* %call_400f72, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603188	 RIP: 400f7b	 Bytes: 9
  %loadMem_400f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7b = call %struct.Memory* @routine_movsd__xmm3__0x603188(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7b)
  store %struct.Memory* %call_400f7b, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm3	 RIP: 400f84	 Bytes: 9
  %loadMem_400f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f84 = call %struct.Memory* @routine_movsd_0x603270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f84)
  store %struct.Memory* %call_400f84, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032c0, %xmm3	 RIP: 400f8d	 Bytes: 9
  %loadMem_400f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8d = call %struct.Memory* @routine_divsd_0x6032c0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8d)
  store %struct.Memory* %call_400f8d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x18(%rbp)	 RIP: 400f96	 Bytes: 5
  %loadMem_400f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f96 = call %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f96)
  store %struct.Memory* %call_400f96, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 400f9b	 Bytes: 5
  %loadMem_400f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9b = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9b)
  store %struct.Memory* %call_400f9b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm3	 RIP: 400fa0	 Bytes: 5
  %loadMem_400fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa0 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa0)
  store %struct.Memory* %call_400fa0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x28(%rbp)	 RIP: 400fa5	 Bytes: 5
  %loadMem_400fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa5 = call %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa5)
  store %struct.Memory* %call_400fa5, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 400faa	 Bytes: 5
  %loadMem_400faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faa = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faa)
  store %struct.Memory* %call_400faa, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm4	 RIP: 400faf	 Bytes: 9
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faf = call %struct.Memory* @routine_movsd_0x603068___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faf)
  store %struct.Memory* %call_400faf, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 400fb8	 Bytes: 5
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb8 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb8)
  store %struct.Memory* %call_400fb8, %struct.Memory** %MEMORY

  ; Code: subsd 0x603060, %xmm4	 RIP: 400fbd	 Bytes: 9
  %loadMem_400fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbd = call %struct.Memory* @routine_subsd_0x603060___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbd)
  store %struct.Memory* %call_400fbd, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 400fc6	 Bytes: 5
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc6 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc6)
  store %struct.Memory* %call_400fc6, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm4	 RIP: 400fcb	 Bytes: 9
  %loadMem_400fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcb = call %struct.Memory* @routine_addsd_0x603058___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcb)
  store %struct.Memory* %call_400fcb, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 400fd4	 Bytes: 5
  %loadMem_400fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd4 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd4)
  store %struct.Memory* %call_400fd4, %struct.Memory** %MEMORY

  ; Code: subsd 0x603050, %xmm4	 RIP: 400fd9	 Bytes: 9
  %loadMem_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd9 = call %struct.Memory* @routine_subsd_0x603050___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd9)
  store %struct.Memory* %call_400fd9, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 400fe2	 Bytes: 5
  %loadMem_400fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe2 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe2)
  store %struct.Memory* %call_400fe2, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm4	 RIP: 400fe7	 Bytes: 9
  %loadMem_400fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe7 = call %struct.Memory* @routine_addsd_0x603048___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe7)
  store %struct.Memory* %call_400fe7, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 400ff0	 Bytes: 5
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff0 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff0)
  store %struct.Memory* %call_400ff0, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm4	 RIP: 400ff5	 Bytes: 9
  %loadMem_400ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff5 = call %struct.Memory* @routine_addsd_0x603040___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff5)
  store %struct.Memory* %call_400ff5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 400ffe	 Bytes: 5
  %loadMem_400ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffe = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffe)
  store %struct.Memory* %call_400ffe, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm4	 RIP: 401003	 Bytes: 9
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401003 = call %struct.Memory* @routine_addsd_0x6032a8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401003)
  store %struct.Memory* %call_401003, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 40100c	 Bytes: 4
  %loadMem_40100c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100c = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100c)
  store %struct.Memory* %call_40100c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 401010	 Bytes: 9
  %loadMem_401010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401010 = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401010)
  store %struct.Memory* %call_401010, %struct.Memory** %MEMORY

  ; Code: movsd 0x603188, %xmm3	 RIP: 401019	 Bytes: 9
  %loadMem_401019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401019 = call %struct.Memory* @routine_movsd_0x603188___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401019)
  store %struct.Memory* %call_401019, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 401022	 Bytes: 4
  %loadMem_401022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401022 = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401022)
  store %struct.Memory* %call_401022, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603190	 RIP: 401026	 Bytes: 9
  %loadMem_401026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401026 = call %struct.Memory* @routine_movsd__xmm3__0x603190(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401026)
  store %struct.Memory* %call_401026, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 40102f	 Bytes: 5
  %loadMem_40102f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102f = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102f)
  store %struct.Memory* %call_40102f, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 401034	 Bytes: 9
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401034 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401034)
  store %struct.Memory* %call_401034, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm4	 RIP: 40103d	 Bytes: 9
  %loadMem_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103d = call %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103d)
  store %struct.Memory* %call_40103d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm4	 RIP: 401046	 Bytes: 5
  %loadMem_401046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401046 = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401046)
  store %struct.Memory* %call_401046, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 40104b	 Bytes: 4
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104b = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104b)
  store %struct.Memory* %call_40104b, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 40104f	 Bytes: 4
  %loadMem_40104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104f = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104f)
  store %struct.Memory* %call_40104f, %struct.Memory** %MEMORY

  ; Code: divsd 0x603130, %xmm2	 RIP: 401053	 Bytes: 9
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401053 = call %struct.Memory* @routine_divsd_0x603130___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401053)
  store %struct.Memory* %call_401053, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 40105c	 Bytes: 9
  %loadMem_40105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105c = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105c)
  store %struct.Memory* %call_40105c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603268	 RIP: 401065	 Bytes: 9
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401065 = call %struct.Memory* @routine_movsd__xmm1__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401065)
  store %struct.Memory* %call_401065, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm1	 RIP: 40106e	 Bytes: 9
  %loadMem_40106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106e = call %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106e)
  store %struct.Memory* %call_40106e, %struct.Memory** %MEMORY

  ; Code: subsd 0x603268, %xmm1	 RIP: 401077	 Bytes: 9
  %loadMem_401077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401077 = call %struct.Memory* @routine_subsd_0x603268___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401077)
  store %struct.Memory* %call_401077, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 401080	 Bytes: 9
  %loadMem_401080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401080 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401080)
  store %struct.Memory* %call_401080, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 401089	 Bytes: 9
  %loadMem_401089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401089 = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401089)
  store %struct.Memory* %call_401089, %struct.Memory** %MEMORY

  ; Code: divsd 0x603190, %xmm1	 RIP: 401092	 Bytes: 9
  %loadMem_401092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401092 = call %struct.Memory* @routine_divsd_0x603190___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401092)
  store %struct.Memory* %call_401092, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603198	 RIP: 40109b	 Bytes: 9
  %loadMem_40109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109b = call %struct.Memory* @routine_movsd__xmm1__0x603198(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109b)
  store %struct.Memory* %call_40109b, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 4010a4	 Bytes: 3
  %loadMem_4010a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a4 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a4)
  store %struct.Memory* %call_4010a4, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 4010a7	 Bytes: 9
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a7 = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a7)
  store %struct.Memory* %call_4010a7, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 4010b0	 Bytes: 3
  %loadMem_4010b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b0 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b0)
  store %struct.Memory* %call_4010b0, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603188, %xmm2	 RIP: 4010b3	 Bytes: 9
  %loadMem_4010b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b3 = call %struct.Memory* @routine_mulsd_0x603188___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b3)
  store %struct.Memory* %call_4010b3, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603198, %xmm0	 RIP: 4010bc	 Bytes: 9
  %loadMem_4010bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bc = call %struct.Memory* @routine_mulsd_0x603198___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bc)
  store %struct.Memory* %call_4010bc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb8(%rbp)	 RIP: 4010c5	 Bytes: 8
  %loadMem_4010c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c5)
  store %struct.Memory* %call_4010c5, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4010cd	 Bytes: 3
  %loadMem_4010cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cd = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cd)
  store %struct.Memory* %call_4010cd, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 4010d0	 Bytes: 3
  %loadMem_4010d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d0 = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d0)
  store %struct.Memory* %call_4010d0, %struct.Memory** %MEMORY

  ; Code: movsd -0xb8(%rbp), %xmm2	 RIP: 4010d3	 Bytes: 8
  %loadMem_4010d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d3 = call %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d3)
  store %struct.Memory* %call_4010d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 4010db	 Bytes: 6
  %loadMem_4010db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010db = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010db)
  store %struct.Memory* %call_4010db, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 4010e1	 Bytes: 2
  %loadMem_4010e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e1 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e1)
  store %struct.Memory* %call_4010e1, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4010e3	 Bytes: 5
  %loadMem1_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4010e3 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4010e3, i64 -3235, i64 5, i64 5)
  store %struct.Memory* %call1_4010e3, %struct.Memory** %MEMORY

  %loadMem2_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4010e3 = load i64, i64* %3
  %call2_4010e3 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_4010e3, %struct.Memory* %loadMem2_4010e3)
  store %struct.Memory* %call2_4010e3, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 4010e8	 Bytes: 10
  %loadMem_4010e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e8 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e8)
  store %struct.Memory* %call_4010e8, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4010f2	 Bytes: 3
  %loadMem_4010f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f2 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f2)
  store %struct.Memory* %call_4010f2, %struct.Memory** %MEMORY

  ; Code: movq $0x8000000000000000, %rcx	 RIP: 4010f5	 Bytes: 10
  %loadMem_4010f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f5 = call %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f5)
  store %struct.Memory* %call_4010f5, %struct.Memory** %MEMORY

  ; Code: movsd 0x603050, %xmm1	 RIP: 4010ff	 Bytes: 9
  %loadMem_4010ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ff = call %struct.Memory* @routine_movsd_0x603050___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ff)
  store %struct.Memory* %call_4010ff, %struct.Memory** %MEMORY

  ; Code: movq %xmm1, %rdx	 RIP: 401108	 Bytes: 5
  %loadMem_401108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401108 = call %struct.Memory* @routine_movq__xmm1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401108)
  store %struct.Memory* %call_401108, %struct.Memory** %MEMORY

  ; Code: xorq %rcx, %rdx	 RIP: 40110d	 Bytes: 3
  %loadMem_40110d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110d = call %struct.Memory* @routine_xorq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110d)
  store %struct.Memory* %call_40110d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm1	 RIP: 401110	 Bytes: 5
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401110 = call %struct.Memory* @routine_movq__rdx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401110)
  store %struct.Memory* %call_401110, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603050	 RIP: 401115	 Bytes: 9
  %loadMem_401115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401115 = call %struct.Memory* @routine_movsd__xmm1__0x603050(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401115)
  store %struct.Memory* %call_401115, %struct.Memory** %MEMORY

  ; Code: movsd 0x603060, %xmm1	 RIP: 40111e	 Bytes: 9
  %loadMem_40111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111e = call %struct.Memory* @routine_movsd_0x603060___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111e)
  store %struct.Memory* %call_40111e, %struct.Memory** %MEMORY

  ; Code: movq %xmm1, %rdx	 RIP: 401127	 Bytes: 5
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401127 = call %struct.Memory* @routine_movq__xmm1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401127)
  store %struct.Memory* %call_401127, %struct.Memory** %MEMORY

  ; Code: xorq %rcx, %rdx	 RIP: 40112c	 Bytes: 3
  %loadMem_40112c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112c = call %struct.Memory* @routine_xorq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112c)
  store %struct.Memory* %call_40112c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm1	 RIP: 40112f	 Bytes: 5
  %loadMem_40112f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112f = call %struct.Memory* @routine_movq__rdx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112f)
  store %struct.Memory* %call_40112f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603060	 RIP: 401134	 Bytes: 9
  %loadMem_401134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401134 = call %struct.Memory* @routine_movsd__xmm1__0x603060(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401134)
  store %struct.Memory* %call_401134, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm1	 RIP: 40113d	 Bytes: 9
  %loadMem_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113d = call %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113d)
  store %struct.Memory* %call_40113d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032c0, %xmm2	 RIP: 401146	 Bytes: 9
  %loadMem_401146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401146 = call %struct.Memory* @routine_movsd_0x6032c0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401146)
  store %struct.Memory* %call_401146, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm3	 RIP: 40114f	 Bytes: 6
  %loadMem_40114f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114f = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114f)
  store %struct.Memory* %call_40114f, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401155	 Bytes: 4
  %loadMem_401155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401155 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401155)
  store %struct.Memory* %call_401155, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 401159	 Bytes: 4
  %loadMem_401159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401159 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401159)
  store %struct.Memory* %call_401159, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 40115d	 Bytes: 5
  %loadMem_40115d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115d)
  store %struct.Memory* %call_40115d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 401162	 Bytes: 5
  %loadMem_401162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401162 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401162)
  store %struct.Memory* %call_401162, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 401167	 Bytes: 5
  %loadMem_401167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401167 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401167)
  store %struct.Memory* %call_401167, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 40116c	 Bytes: 6
  %loadMem_40116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116c = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116c)
  store %struct.Memory* %call_40116c, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401172	 Bytes: 5
  %loadMem1_401172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401172 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401172, i64 5214, i64 5, i64 5)
  store %struct.Memory* %call1_401172, %struct.Memory** %MEMORY

  %loadMem2_401172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401172 = load i64, i64* %3
  %call2_401172 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401172, %struct.Memory* %loadMem2_401172)
  store %struct.Memory* %call2_401172, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 401177	 Bytes: 8
  %loadMem_401177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401177 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401177)
  store %struct.Memory* %call_401177, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 40117f	 Bytes: 6
  %loadMem_40117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117f = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117f)
  store %struct.Memory* %call_40117f, %struct.Memory** %MEMORY

  ; Code: .L_401185:	 RIP: 401185	 Bytes: 0
  br label %block_.L_401185
block_.L_401185:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 401185	 Bytes: 4
  %loadMem_401185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401185 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401185)
  store %struct.Memory* %call_401185, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 401189	 Bytes: 4
  %loadMem_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401189 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401189)
  store %struct.Memory* %call_401189, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 40118d	 Bytes: 4
  %loadMem_40118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118d = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118d)
  store %struct.Memory* %call_40118d, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 401191	 Bytes: 3
  %loadMem_401191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401191 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401191)
  store %struct.Memory* %call_401191, %struct.Memory** %MEMORY

  ; Code: jg .L_401249	 RIP: 401194	 Bytes: 6
  %loadMem_401194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401194 = call %struct.Memory* @routine_jg_.L_401249(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401194, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_401194, %struct.Memory** %MEMORY

  %loadBr_401194 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401194 = icmp eq i8 %loadBr_401194, 1
  br i1 %cmpBr_401194, label %block_.L_401249, label %block_40119a

block_40119a:
  ; Code: cvtsi2sdq -0x48(%rbp), %xmm0	 RIP: 40119a	 Bytes: 6
  %loadMem_40119a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119a = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119a)
  store %struct.Memory* %call_40119a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 4011a0	 Bytes: 5
  %loadMem_4011a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a0 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a0)
  store %struct.Memory* %call_4011a0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 4011a5	 Bytes: 5
  %loadMem_4011a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a5)
  store %struct.Memory* %call_4011a5, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 4011aa	 Bytes: 5
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011aa = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011aa)
  store %struct.Memory* %call_4011aa, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm0	 RIP: 4011af	 Bytes: 5
  %loadMem_4011af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011af = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011af)
  store %struct.Memory* %call_4011af, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 4011b4	 Bytes: 5
  %loadMem_4011b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b4)
  store %struct.Memory* %call_4011b4, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 4011b9	 Bytes: 5
  %loadMem_4011b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b9 = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b9)
  store %struct.Memory* %call_4011b9, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm1	 RIP: 4011be	 Bytes: 5
  %loadMem_4011be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011be = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011be)
  store %struct.Memory* %call_4011be, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm2	 RIP: 4011c3	 Bytes: 5
  %loadMem_4011c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c3 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c3)
  store %struct.Memory* %call_4011c3, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 4011c8	 Bytes: 5
  %loadMem_4011c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c8 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c8)
  store %struct.Memory* %call_4011c8, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 4011cd	 Bytes: 5
  %loadMem_4011cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011cd = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011cd)
  store %struct.Memory* %call_4011cd, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 4011d2	 Bytes: 5
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d2 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d2)
  store %struct.Memory* %call_4011d2, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm6	 RIP: 4011d7	 Bytes: 9
  %loadMem_4011d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d7 = call %struct.Memory* @routine_movsd_0x6030a0___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d7)
  store %struct.Memory* %call_4011d7, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm6	 RIP: 4011e0	 Bytes: 5
  %loadMem_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e0 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e0)
  store %struct.Memory* %call_4011e0, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm6	 RIP: 4011e5	 Bytes: 9
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e5 = call %struct.Memory* @routine_addsd_0x603098___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e5)
  store %struct.Memory* %call_4011e5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 4011ee	 Bytes: 4
  %loadMem_4011ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ee = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ee)
  store %struct.Memory* %call_4011ee, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm5	 RIP: 4011f2	 Bytes: 9
  %loadMem_4011f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f2 = call %struct.Memory* @routine_addsd_0x603090___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f2)
  store %struct.Memory* %call_4011f2, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 4011fb	 Bytes: 4
  %loadMem_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fb = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fb)
  store %struct.Memory* %call_4011fb, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm4	 RIP: 4011ff	 Bytes: 9
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ff = call %struct.Memory* @routine_addsd_0x603088___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ff)
  store %struct.Memory* %call_4011ff, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401208	 Bytes: 4
  %loadMem_401208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401208 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401208)
  store %struct.Memory* %call_401208, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm3	 RIP: 40120c	 Bytes: 9
  %loadMem_40120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120c = call %struct.Memory* @routine_addsd_0x603080___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120c)
  store %struct.Memory* %call_40120c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401215	 Bytes: 4
  %loadMem_401215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401215 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401215)
  store %struct.Memory* %call_401215, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm2	 RIP: 401219	 Bytes: 9
  %loadMem_401219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401219 = call %struct.Memory* @routine_addsd_0x603078___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401219)
  store %struct.Memory* %call_401219, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 401222	 Bytes: 4
  %loadMem_401222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401222 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401222)
  store %struct.Memory* %call_401222, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 401226	 Bytes: 4
  %loadMem_401226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401226 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401226)
  store %struct.Memory* %call_401226, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm0	 RIP: 40122a	 Bytes: 9
  %loadMem_40122a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122a = call %struct.Memory* @routine_addsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122a)
  store %struct.Memory* %call_40122a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 401233	 Bytes: 5
  %loadMem_401233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401233 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401233)
  store %struct.Memory* %call_401233, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 401238	 Bytes: 4
  %loadMem_401238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401238 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401238)
  store %struct.Memory* %call_401238, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40123c	 Bytes: 4
  %loadMem_40123c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123c = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123c)
  store %struct.Memory* %call_40123c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 401240	 Bytes: 4
  %loadMem_401240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401240 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401240)
  store %struct.Memory* %call_401240, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401185	 RIP: 401244	 Bytes: 5
  %loadMem_401244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401244 = call %struct.Memory* @routine_jmpq_.L_401185(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401244, i64 -191, i64 5)
  store %struct.Memory* %call_401244, %struct.Memory** %MEMORY

  br label %block_.L_401185

  ; Code: .L_401249:	 RIP: 401249	 Bytes: 0
block_.L_401249:

  ; Code: movq $0x6032d0, %rdi	 RIP: 401249	 Bytes: 10
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401249 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401249)
  store %struct.Memory* %call_401249, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401253	 Bytes: 5
  %loadMem1_401253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401253 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401253, i64 4989, i64 5, i64 5)
  store %struct.Memory* %call1_401253, %struct.Memory** %MEMORY

  %loadMem2_401253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401253 = load i64, i64* %3
  %call2_401253 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401253, %struct.Memory* %loadMem2_401253)
  store %struct.Memory* %call2_401253, %struct.Memory** %MEMORY

  ; Code: movq $0x4028d2, %rdi	 RIP: 401258	 Bytes: 10
  %loadMem_401258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401258 = call %struct.Memory* @routine_movq__0x4028d2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401258)
  store %struct.Memory* %call_401258, %struct.Memory** %MEMORY

  ; Code: movsd 0x14be(%rip), %xmm0	 RIP: 401262	 Bytes: 8
  %loadMem_401262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401262 = call %struct.Memory* @routine_movsd_0x14be__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401262)
  store %struct.Memory* %call_401262, %struct.Memory** %MEMORY

  ; Code: movsd 0x14ee(%rip), %xmm1	 RIP: 40126a	 Bytes: 8
  %loadMem_40126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126a = call %struct.Memory* @routine_movsd_0x14ee__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126a)
  store %struct.Memory* %call_40126a, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm2	 RIP: 401272	 Bytes: 9
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401272 = call %struct.Memory* @routine_movsd_0x603148___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401272)
  store %struct.Memory* %call_401272, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm2	 RIP: 40127b	 Bytes: 9
  %loadMem_40127b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127b = call %struct.Memory* @routine_mulsd_0x6032d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127b)
  store %struct.Memory* %call_40127b, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm2	 RIP: 401284	 Bytes: 9
  %loadMem_401284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401284 = call %struct.Memory* @routine_subsd_0x603290___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401284)
  store %struct.Memory* %call_401284, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6031a0	 RIP: 40128d	 Bytes: 9
  %loadMem_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128d = call %struct.Memory* @routine_movsd__xmm2__0x6031a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128d)
  store %struct.Memory* %call_40128d, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm2	 RIP: 401296	 Bytes: 9
  %loadMem_401296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401296 = call %struct.Memory* @routine_movsd_0x603270___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401296)
  store %struct.Memory* %call_401296, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032c0, %xmm2	 RIP: 40129f	 Bytes: 9
  %loadMem_40129f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129f = call %struct.Memory* @routine_divsd_0x6032c0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129f)
  store %struct.Memory* %call_40129f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x18(%rbp)	 RIP: 4012a8	 Bytes: 5
  %loadMem_4012a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a8 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a8)
  store %struct.Memory* %call_4012a8, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm2	 RIP: 4012ad	 Bytes: 5
  %loadMem_4012ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ad = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ad)
  store %struct.Memory* %call_4012ad, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm2	 RIP: 4012b2	 Bytes: 5
  %loadMem_4012b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b2 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b2)
  store %struct.Memory* %call_4012b2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x28(%rbp)	 RIP: 4012b7	 Bytes: 5
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b7 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b7)
  store %struct.Memory* %call_4012b7, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm2	 RIP: 4012bc	 Bytes: 5
  %loadMem_4012bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bc = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bc)
  store %struct.Memory* %call_4012bc, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 4012c1	 Bytes: 5
  %loadMem_4012c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c1 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c1)
  store %struct.Memory* %call_4012c1, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 4012c6	 Bytes: 5
  %loadMem_4012c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c6 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c6)
  store %struct.Memory* %call_4012c6, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 4012cb	 Bytes: 5
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm6	 RIP: 4012d0	 Bytes: 5
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d0 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d0)
  store %struct.Memory* %call_4012d0, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm7	 RIP: 4012d5	 Bytes: 9
  %loadMem_4012d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d5 = call %struct.Memory* @routine_movsd_0x6030a0___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d5)
  store %struct.Memory* %call_4012d5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm7	 RIP: 4012de	 Bytes: 5
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012de = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012de)
  store %struct.Memory* %call_4012de, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm7	 RIP: 4012e3	 Bytes: 9
  %loadMem_4012e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e3 = call %struct.Memory* @routine_addsd_0x603098___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e3)
  store %struct.Memory* %call_4012e3, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm7, %xmm6	 RIP: 4012ec	 Bytes: 4
  %loadMem_4012ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ec = call %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ec)
  store %struct.Memory* %call_4012ec, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm6	 RIP: 4012f0	 Bytes: 9
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f0 = call %struct.Memory* @routine_addsd_0x603090___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f0)
  store %struct.Memory* %call_4012f0, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 4012f9	 Bytes: 4
  %loadMem_4012f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f9 = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f9)
  store %struct.Memory* %call_4012f9, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm5	 RIP: 4012fd	 Bytes: 9
  %loadMem_4012fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fd = call %struct.Memory* @routine_addsd_0x603088___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fd)
  store %struct.Memory* %call_4012fd, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 401306	 Bytes: 4
  %loadMem_401306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401306 = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401306)
  store %struct.Memory* %call_401306, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm4	 RIP: 40130a	 Bytes: 9
  %loadMem_40130a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130a = call %struct.Memory* @routine_addsd_0x603080___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130a)
  store %struct.Memory* %call_40130a, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401313	 Bytes: 4
  %loadMem_401313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401313 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401313)
  store %struct.Memory* %call_401313, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm3	 RIP: 401317	 Bytes: 9
  %loadMem_401317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401317 = call %struct.Memory* @routine_addsd_0x603078___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401317)
  store %struct.Memory* %call_401317, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401320	 Bytes: 4
  %loadMem_401320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401320 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401320)
  store %struct.Memory* %call_401320, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm2	 RIP: 401324	 Bytes: 9
  %loadMem_401324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401324 = call %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401324)
  store %struct.Memory* %call_401324, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 40132d	 Bytes: 9
  %loadMem_40132d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132d = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132d)
  store %struct.Memory* %call_40132d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6031a0, %xmm2	 RIP: 401336	 Bytes: 9
  %loadMem_401336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401336 = call %struct.Memory* @routine_movsd_0x6031a0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401336)
  store %struct.Memory* %call_401336, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm2	 RIP: 40133f	 Bytes: 4
  %loadMem_40133f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133f = call %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133f)
  store %struct.Memory* %call_40133f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6031a8	 RIP: 401343	 Bytes: 9
  %loadMem_401343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401343 = call %struct.Memory* @routine_movsd__xmm2__0x6031a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401343)
  store %struct.Memory* %call_401343, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm1	 RIP: 40134c	 Bytes: 5
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134c = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134c)
  store %struct.Memory* %call_40134c, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm2	 RIP: 401351	 Bytes: 9
  %loadMem_401351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401351 = call %struct.Memory* @routine_movsd_0x6032b8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401351)
  store %struct.Memory* %call_401351, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm2	 RIP: 40135a	 Bytes: 9
  %loadMem_40135a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135a = call %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135a)
  store %struct.Memory* %call_40135a, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm3	 RIP: 401363	 Bytes: 9
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401363 = call %struct.Memory* @routine_movsd_0x603130___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401363)
  store %struct.Memory* %call_401363, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm3	 RIP: 40136c	 Bytes: 5
  %loadMem_40136c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136c = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136c)
  store %struct.Memory* %call_40136c, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 401371	 Bytes: 4
  %loadMem_401371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401371 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401371)
  store %struct.Memory* %call_401371, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 401375	 Bytes: 4
  %loadMem_401375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401375 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401375)
  store %struct.Memory* %call_401375, %struct.Memory** %MEMORY

  ; Code: divsd 0x603130, %xmm1	 RIP: 401379	 Bytes: 9
  %loadMem_401379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401379 = call %struct.Memory* @routine_divsd_0x603130___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401379)
  store %struct.Memory* %call_401379, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b8	 RIP: 401382	 Bytes: 9
  %loadMem_401382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401382 = call %struct.Memory* @routine_movsd__xmm1__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401382)
  store %struct.Memory* %call_401382, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm1	 RIP: 40138b	 Bytes: 9
  %loadMem_40138b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138b = call %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138b)
  store %struct.Memory* %call_40138b, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032c0, %xmm1	 RIP: 401394	 Bytes: 9
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401394 = call %struct.Memory* @routine_divsd_0x6032c0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401394)
  store %struct.Memory* %call_401394, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x18(%rbp)	 RIP: 40139d	 Bytes: 5
  %loadMem_40139d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139d)
  store %struct.Memory* %call_40139d, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm1	 RIP: 4013a2	 Bytes: 5
  %loadMem_4013a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a2 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a2)
  store %struct.Memory* %call_4013a2, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm1	 RIP: 4013a7	 Bytes: 5
  %loadMem_4013a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a7 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a7)
  store %struct.Memory* %call_4013a7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x28(%rbp)	 RIP: 4013ac	 Bytes: 5
  %loadMem_4013ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ac = call %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ac)
  store %struct.Memory* %call_4013ac, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm1	 RIP: 4013b1	 Bytes: 5
  %loadMem_4013b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b1 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b1)
  store %struct.Memory* %call_4013b1, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm2	 RIP: 4013b6	 Bytes: 9
  %loadMem_4013b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b6 = call %struct.Memory* @routine_movsd_0x603068___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b6)
  store %struct.Memory* %call_4013b6, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 4013bf	 Bytes: 5
  %loadMem_4013bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bf = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bf)
  store %struct.Memory* %call_4013bf, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm2	 RIP: 4013c4	 Bytes: 9
  %loadMem_4013c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c4 = call %struct.Memory* @routine_addsd_0x603060___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c4)
  store %struct.Memory* %call_4013c4, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 4013cd	 Bytes: 5
  %loadMem_4013cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cd = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cd)
  store %struct.Memory* %call_4013cd, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm2	 RIP: 4013d2	 Bytes: 9
  %loadMem_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d2 = call %struct.Memory* @routine_addsd_0x603058___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d2)
  store %struct.Memory* %call_4013d2, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 4013db	 Bytes: 5
  %loadMem_4013db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013db = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013db)
  store %struct.Memory* %call_4013db, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm2	 RIP: 4013e0	 Bytes: 9
  %loadMem_4013e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e0 = call %struct.Memory* @routine_addsd_0x603050___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e0)
  store %struct.Memory* %call_4013e0, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 4013e9	 Bytes: 5
  %loadMem_4013e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e9 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e9)
  store %struct.Memory* %call_4013e9, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm2	 RIP: 4013ee	 Bytes: 9
  %loadMem_4013ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ee = call %struct.Memory* @routine_addsd_0x603048___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ee)
  store %struct.Memory* %call_4013ee, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 4013f7	 Bytes: 5
  %loadMem_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f7 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f7)
  store %struct.Memory* %call_4013f7, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm2	 RIP: 4013fc	 Bytes: 9
  %loadMem_4013fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fc = call %struct.Memory* @routine_addsd_0x603040___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fc)
  store %struct.Memory* %call_4013fc, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 401405	 Bytes: 5
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401405 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401405)
  store %struct.Memory* %call_401405, %struct.Memory** %MEMORY

  ; Code: addsd 0x603038, %xmm2	 RIP: 40140a	 Bytes: 9
  %loadMem_40140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140a = call %struct.Memory* @routine_addsd_0x603038___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140a)
  store %struct.Memory* %call_40140a, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 401413	 Bytes: 4
  %loadMem_401413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401413 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401413)
  store %struct.Memory* %call_401413, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603268	 RIP: 401417	 Bytes: 9
  %loadMem_401417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401417 = call %struct.Memory* @routine_movsd__xmm1__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401417)
  store %struct.Memory* %call_401417, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm1	 RIP: 401420	 Bytes: 9
  %loadMem_401420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401420 = call %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401420)
  store %struct.Memory* %call_401420, %struct.Memory** %MEMORY

  ; Code: subsd 0x603268, %xmm1	 RIP: 401429	 Bytes: 9
  %loadMem_401429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401429 = call %struct.Memory* @routine_subsd_0x603268___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401429)
  store %struct.Memory* %call_401429, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 401432	 Bytes: 9
  %loadMem_401432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401432 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401432)
  store %struct.Memory* %call_401432, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 40143b	 Bytes: 9
  %loadMem_40143b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143b = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143b)
  store %struct.Memory* %call_40143b, %struct.Memory** %MEMORY

  ; Code: divsd 0x6031a8, %xmm1	 RIP: 401444	 Bytes: 9
  %loadMem_401444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401444 = call %struct.Memory* @routine_divsd_0x6031a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401444)
  store %struct.Memory* %call_401444, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6031b0	 RIP: 40144d	 Bytes: 9
  %loadMem_40144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144d = call %struct.Memory* @routine_movsd__xmm1__0x6031b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144d)
  store %struct.Memory* %call_40144d, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 401456	 Bytes: 3
  %loadMem_401456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401456 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401456)
  store %struct.Memory* %call_401456, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 401459	 Bytes: 9
  %loadMem_401459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401459 = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401459)
  store %struct.Memory* %call_401459, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 401462	 Bytes: 3
  %loadMem_401462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401462 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401462)
  store %struct.Memory* %call_401462, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031a0, %xmm2	 RIP: 401465	 Bytes: 9
  %loadMem_401465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401465 = call %struct.Memory* @routine_mulsd_0x6031a0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401465)
  store %struct.Memory* %call_401465, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031b0, %xmm0	 RIP: 40146e	 Bytes: 9
  %loadMem_40146e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146e = call %struct.Memory* @routine_mulsd_0x6031b0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146e)
  store %struct.Memory* %call_40146e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xd0(%rbp)	 RIP: 401477	 Bytes: 8
  %loadMem_401477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401477 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401477)
  store %struct.Memory* %call_401477, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 40147f	 Bytes: 3
  %loadMem_40147f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147f = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147f)
  store %struct.Memory* %call_40147f, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 401482	 Bytes: 3
  %loadMem_401482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401482 = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401482)
  store %struct.Memory* %call_401482, %struct.Memory** %MEMORY

  ; Code: movsd -0xd0(%rbp), %xmm2	 RIP: 401485	 Bytes: 8
  %loadMem_401485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401485 = call %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401485)
  store %struct.Memory* %call_401485, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 40148d	 Bytes: 6
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 401493	 Bytes: 2
  %loadMem_401493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401493 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401493)
  store %struct.Memory* %call_401493, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401495	 Bytes: 5
  %loadMem1_401495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401495 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401495, i64 -4181, i64 5, i64 5)
  store %struct.Memory* %call1_401495, %struct.Memory** %MEMORY

  %loadMem2_401495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401495 = load i64, i64* %3
  %call2_401495 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_401495, %struct.Memory* %loadMem2_401495)
  store %struct.Memory* %call2_401495, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 40149a	 Bytes: 10
  %loadMem_40149a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149a = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149a)
  store %struct.Memory* %call_40149a, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4014a4	 Bytes: 3
  %loadMem_4014a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a4 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a4)
  store %struct.Memory* %call_4014a4, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm1	 RIP: 4014a7	 Bytes: 9
  %loadMem_4014a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a7 = call %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a7)
  store %struct.Memory* %call_4014a7, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032c0, %xmm2	 RIP: 4014b0	 Bytes: 9
  %loadMem_4014b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b0 = call %struct.Memory* @routine_movsd_0x6032c0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b0)
  store %struct.Memory* %call_4014b0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm3	 RIP: 4014b9	 Bytes: 6
  %loadMem_4014b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b9 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b9)
  store %struct.Memory* %call_4014b9, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 4014bf	 Bytes: 4
  %loadMem_4014bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bf = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bf)
  store %struct.Memory* %call_4014bf, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 4014c3	 Bytes: 4
  %loadMem_4014c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c3 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c3)
  store %struct.Memory* %call_4014c3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 4014c7	 Bytes: 5
  %loadMem_4014c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c7 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c7)
  store %struct.Memory* %call_4014c7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 4014cc	 Bytes: 5
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cc = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cc)
  store %struct.Memory* %call_4014cc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4014d1	 Bytes: 5
  %loadMem_4014d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d1)
  store %struct.Memory* %call_4014d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd8(%rbp)	 RIP: 4014d6	 Bytes: 6
  %loadMem_4014d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d6 = call %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d6)
  store %struct.Memory* %call_4014d6, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 4014dc	 Bytes: 5
  %loadMem1_4014dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4014dc = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4014dc, i64 4340, i64 5, i64 5)
  store %struct.Memory* %call1_4014dc, %struct.Memory** %MEMORY

  %loadMem2_4014dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014dc = load i64, i64* %3
  %call2_4014dc = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_4014dc, %struct.Memory* %loadMem2_4014dc)
  store %struct.Memory* %call2_4014dc, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 4014e1	 Bytes: 8
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e1 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e1)
  store %struct.Memory* %call_4014e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 4014e9	 Bytes: 6
  %loadMem_4014e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e9 = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e9)
  store %struct.Memory* %call_4014e9, %struct.Memory** %MEMORY

  ; Code: .L_4014ef:	 RIP: 4014ef	 Bytes: 0
  br label %block_.L_4014ef
block_.L_4014ef:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4014ef	 Bytes: 4
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ef = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ef)
  store %struct.Memory* %call_4014ef, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 4014f3	 Bytes: 4
  %loadMem_4014f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f3 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f3)
  store %struct.Memory* %call_4014f3, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 4014f7	 Bytes: 4
  %loadMem_4014f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f7 = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f7)
  store %struct.Memory* %call_4014f7, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 4014fb	 Bytes: 3
  %loadMem_4014fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fb = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fb)
  store %struct.Memory* %call_4014fb, %struct.Memory** %MEMORY

  ; Code: jg .L_401627	 RIP: 4014fe	 Bytes: 6
  %loadMem_4014fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fe = call %struct.Memory* @routine_jg_.L_401627(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fe, i8* %BRANCH_TAKEN, i64 297, i64 6, i64 6)
  store %struct.Memory* %call_4014fe, %struct.Memory** %MEMORY

  %loadBr_4014fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014fe = icmp eq i8 %loadBr_4014fe, 1
  br i1 %cmpBr_4014fe, label %block_.L_401627, label %block_401504

block_401504:
  ; Code: cvtsi2sdq -0x48(%rbp), %xmm0	 RIP: 401504	 Bytes: 6
  %loadMem_401504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401504 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401504)
  store %struct.Memory* %call_401504, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 40150a	 Bytes: 5
  %loadMem_40150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150a = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150a)
  store %struct.Memory* %call_40150a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 40150f	 Bytes: 5
  %loadMem_40150f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150f)
  store %struct.Memory* %call_40150f, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 401514	 Bytes: 5
  %loadMem_401514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401514 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401514)
  store %struct.Memory* %call_401514, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm0	 RIP: 401519	 Bytes: 5
  %loadMem_401519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401519 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401519)
  store %struct.Memory* %call_401519, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 40151e	 Bytes: 5
  %loadMem_40151e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151e)
  store %struct.Memory* %call_40151e, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 401523	 Bytes: 5
  %loadMem_401523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401523 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401523)
  store %struct.Memory* %call_401523, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm1	 RIP: 401528	 Bytes: 9
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401528 = call %struct.Memory* @routine_movsd_0x603068___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401528)
  store %struct.Memory* %call_401528, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 401531	 Bytes: 5
  %loadMem_401531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401531 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401531)
  store %struct.Memory* %call_401531, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm1	 RIP: 401536	 Bytes: 9
  %loadMem_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401536 = call %struct.Memory* @routine_addsd_0x603060___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401536)
  store %struct.Memory* %call_401536, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 40153f	 Bytes: 5
  %loadMem_40153f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153f = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153f)
  store %struct.Memory* %call_40153f, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm1	 RIP: 401544	 Bytes: 9
  %loadMem_401544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401544 = call %struct.Memory* @routine_addsd_0x603058___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401544)
  store %struct.Memory* %call_401544, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 40154d	 Bytes: 5
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154d = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154d)
  store %struct.Memory* %call_40154d, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm1	 RIP: 401552	 Bytes: 9
  %loadMem_401552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401552 = call %struct.Memory* @routine_addsd_0x603050___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401552)
  store %struct.Memory* %call_401552, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 40155b	 Bytes: 5
  %loadMem_40155b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155b = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155b)
  store %struct.Memory* %call_40155b, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm1	 RIP: 401560	 Bytes: 9
  %loadMem_401560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401560 = call %struct.Memory* @routine_addsd_0x603048___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401560)
  store %struct.Memory* %call_401560, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 401569	 Bytes: 5
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401569 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401569)
  store %struct.Memory* %call_401569, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm1	 RIP: 40156e	 Bytes: 9
  %loadMem_40156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156e = call %struct.Memory* @routine_addsd_0x603040___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156e)
  store %struct.Memory* %call_40156e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 401577	 Bytes: 5
  %loadMem_401577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401577 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401577)
  store %struct.Memory* %call_401577, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm1	 RIP: 40157c	 Bytes: 9
  %loadMem_40157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157c = call %struct.Memory* @routine_addsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157c)
  store %struct.Memory* %call_40157c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 401585	 Bytes: 4
  %loadMem_401585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401585 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401585)
  store %struct.Memory* %call_401585, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 401589	 Bytes: 5
  %loadMem_401589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401589 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401589)
  store %struct.Memory* %call_401589, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 40158e	 Bytes: 5
  %loadMem_40158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158e = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158e)
  store %struct.Memory* %call_40158e, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm1	 RIP: 401593	 Bytes: 5
  %loadMem_401593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401593 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401593)
  store %struct.Memory* %call_401593, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm2	 RIP: 401598	 Bytes: 5
  %loadMem_401598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401598 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401598)
  store %struct.Memory* %call_401598, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 40159d	 Bytes: 5
  %loadMem_40159d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159d = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159d)
  store %struct.Memory* %call_40159d, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 4015a2	 Bytes: 5
  %loadMem_4015a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a2 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a2)
  store %struct.Memory* %call_4015a2, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 4015a7	 Bytes: 5
  %loadMem_4015a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a7 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a7)
  store %struct.Memory* %call_4015a7, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm6	 RIP: 4015ac	 Bytes: 5
  %loadMem_4015ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ac = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ac)
  store %struct.Memory* %call_4015ac, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm7	 RIP: 4015b1	 Bytes: 9
  %loadMem_4015b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b1 = call %struct.Memory* @routine_movsd_0x6030a0___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b1)
  store %struct.Memory* %call_4015b1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm7	 RIP: 4015ba	 Bytes: 5
  %loadMem_4015ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ba = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ba)
  store %struct.Memory* %call_4015ba, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm7	 RIP: 4015bf	 Bytes: 9
  %loadMem_4015bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bf = call %struct.Memory* @routine_addsd_0x603098___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bf)
  store %struct.Memory* %call_4015bf, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm7, %xmm6	 RIP: 4015c8	 Bytes: 4
  %loadMem_4015c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c8 = call %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c8)
  store %struct.Memory* %call_4015c8, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm6	 RIP: 4015cc	 Bytes: 9
  %loadMem_4015cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cc = call %struct.Memory* @routine_addsd_0x603090___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cc)
  store %struct.Memory* %call_4015cc, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 4015d5	 Bytes: 4
  %loadMem_4015d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d5 = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d5)
  store %struct.Memory* %call_4015d5, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm5	 RIP: 4015d9	 Bytes: 9
  %loadMem_4015d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d9 = call %struct.Memory* @routine_addsd_0x603088___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d9)
  store %struct.Memory* %call_4015d9, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 4015e2	 Bytes: 4
  %loadMem_4015e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e2 = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e2)
  store %struct.Memory* %call_4015e2, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm4	 RIP: 4015e6	 Bytes: 9
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_addsd_0x603080___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 4015ef	 Bytes: 4
  %loadMem_4015ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ef = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ef)
  store %struct.Memory* %call_4015ef, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm3	 RIP: 4015f3	 Bytes: 9
  %loadMem_4015f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f3 = call %struct.Memory* @routine_addsd_0x603078___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f3)
  store %struct.Memory* %call_4015f3, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 4015fc	 Bytes: 4
  %loadMem_4015fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fc = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fc)
  store %struct.Memory* %call_4015fc, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm2	 RIP: 401600	 Bytes: 9
  %loadMem_401600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401600 = call %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401600)
  store %struct.Memory* %call_401600, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 401609	 Bytes: 4
  %loadMem_401609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401609 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401609)
  store %struct.Memory* %call_401609, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 40160d	 Bytes: 4
  %loadMem_40160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160d = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160d)
  store %struct.Memory* %call_40160d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 401611	 Bytes: 5
  %loadMem_401611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401611 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401611)
  store %struct.Memory* %call_401611, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 401616	 Bytes: 4
  %loadMem_401616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401616 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401616)
  store %struct.Memory* %call_401616, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40161a	 Bytes: 4
  %loadMem_40161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161a = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161a)
  store %struct.Memory* %call_40161a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 40161e	 Bytes: 4
  %loadMem_40161e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161e = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161e)
  store %struct.Memory* %call_40161e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4014ef	 RIP: 401622	 Bytes: 5
  %loadMem_401622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401622 = call %struct.Memory* @routine_jmpq_.L_4014ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401622, i64 -307, i64 5)
  store %struct.Memory* %call_401622, %struct.Memory** %MEMORY

  br label %block_.L_4014ef

  ; Code: .L_401627:	 RIP: 401627	 Bytes: 0
block_.L_401627:

  ; Code: movq $0x6032d0, %rdi	 RIP: 401627	 Bytes: 10
  %loadMem_401627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401627 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401627)
  store %struct.Memory* %call_401627, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401631	 Bytes: 5
  %loadMem1_401631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401631 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401631, i64 3999, i64 5, i64 5)
  store %struct.Memory* %call1_401631, %struct.Memory** %MEMORY

  %loadMem2_401631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401631 = load i64, i64* %3
  %call2_401631 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401631, %struct.Memory* %loadMem2_401631)
  store %struct.Memory* %call2_401631, %struct.Memory** %MEMORY

  ; Code: movq $0x4028f6, %rdi	 RIP: 401636	 Bytes: 10
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401636 = call %struct.Memory* @routine_movq__0x4028f6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401636)
  store %struct.Memory* %call_401636, %struct.Memory** %MEMORY

  ; Code: movsd 0x10e0(%rip), %xmm0	 RIP: 401640	 Bytes: 8
  %loadMem_401640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401640 = call %struct.Memory* @routine_movsd_0x10e0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401640)
  store %struct.Memory* %call_401640, %struct.Memory** %MEMORY

  ; Code: movsd 0x1118(%rip), %xmm1	 RIP: 401648	 Bytes: 8
  %loadMem_401648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401648 = call %struct.Memory* @routine_movsd_0x1118__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401648)
  store %struct.Memory* %call_401648, %struct.Memory** %MEMORY

  ; Code: movsd 0x1118(%rip), %xmm2	 RIP: 401650	 Bytes: 8
  %loadMem_401650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401650 = call %struct.Memory* @routine_movsd_0x1118__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401650)
  store %struct.Memory* %call_401650, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm3	 RIP: 401658	 Bytes: 9
  %loadMem_401658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401658 = call %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401658)
  store %struct.Memory* %call_401658, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm3	 RIP: 401661	 Bytes: 9
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_mulsd_0x6032d8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm3	 RIP: 40166a	 Bytes: 9
  %loadMem_40166a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166a = call %struct.Memory* @routine_subsd_0x603290___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166a)
  store %struct.Memory* %call_40166a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6031b8	 RIP: 401673	 Bytes: 9
  %loadMem_401673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401673 = call %struct.Memory* @routine_movsd__xmm3__0x6031b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401673)
  store %struct.Memory* %call_401673, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm3	 RIP: 40167c	 Bytes: 9
  %loadMem_40167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167c = call %struct.Memory* @routine_movsd_0x603270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167c)
  store %struct.Memory* %call_40167c, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032c0, %xmm3	 RIP: 401685	 Bytes: 9
  %loadMem_401685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401685 = call %struct.Memory* @routine_divsd_0x6032c0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401685)
  store %struct.Memory* %call_401685, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x18(%rbp)	 RIP: 40168e	 Bytes: 5
  %loadMem_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168e = call %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168e)
  store %struct.Memory* %call_40168e, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 401693	 Bytes: 5
  %loadMem_401693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401693 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401693)
  store %struct.Memory* %call_401693, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm3	 RIP: 401698	 Bytes: 5
  %loadMem_401698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401698 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401698)
  store %struct.Memory* %call_401698, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x28(%rbp)	 RIP: 40169d	 Bytes: 5
  %loadMem_40169d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169d = call %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169d)
  store %struct.Memory* %call_40169d, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 4016a2	 Bytes: 5
  %loadMem_4016a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a2 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a2)
  store %struct.Memory* %call_4016a2, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm4	 RIP: 4016a7	 Bytes: 9
  %loadMem_4016a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a7 = call %struct.Memory* @routine_movsd_0x603068___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a7)
  store %struct.Memory* %call_4016a7, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 4016b0	 Bytes: 5
  %loadMem_4016b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b0 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b0)
  store %struct.Memory* %call_4016b0, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm4	 RIP: 4016b5	 Bytes: 9
  %loadMem_4016b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b5 = call %struct.Memory* @routine_addsd_0x603060___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b5)
  store %struct.Memory* %call_4016b5, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 4016be	 Bytes: 5
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016be = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016be)
  store %struct.Memory* %call_4016be, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm4	 RIP: 4016c3	 Bytes: 9
  %loadMem_4016c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c3 = call %struct.Memory* @routine_addsd_0x603058___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c3)
  store %struct.Memory* %call_4016c3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 4016cc	 Bytes: 5
  %loadMem_4016cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cc = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cc)
  store %struct.Memory* %call_4016cc, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm4	 RIP: 4016d1	 Bytes: 9
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_addsd_0x603050___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 4016da	 Bytes: 5
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm4	 RIP: 4016df	 Bytes: 9
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016df = call %struct.Memory* @routine_addsd_0x603048___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016df)
  store %struct.Memory* %call_4016df, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 4016e8	 Bytes: 5
  %loadMem_4016e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e8 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e8)
  store %struct.Memory* %call_4016e8, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm4	 RIP: 4016ed	 Bytes: 9
  %loadMem_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ed = call %struct.Memory* @routine_addsd_0x603040___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ed)
  store %struct.Memory* %call_4016ed, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 4016f6	 Bytes: 5
  %loadMem_4016f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f6 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f6)
  store %struct.Memory* %call_4016f6, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm4	 RIP: 4016fb	 Bytes: 9
  %loadMem_4016fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fb = call %struct.Memory* @routine_addsd_0x6032a8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fb)
  store %struct.Memory* %call_4016fb, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401704	 Bytes: 4
  %loadMem_401704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401704 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401704)
  store %struct.Memory* %call_401704, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 401708	 Bytes: 9
  %loadMem_401708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401708 = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401708)
  store %struct.Memory* %call_401708, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 401711	 Bytes: 5
  %loadMem_401711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401711 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401711)
  store %struct.Memory* %call_401711, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 401716	 Bytes: 5
  %loadMem_401716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401716 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401716)
  store %struct.Memory* %call_401716, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 40171b	 Bytes: 5
  %loadMem_40171b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171b = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171b)
  store %struct.Memory* %call_40171b, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm6	 RIP: 401720	 Bytes: 5
  %loadMem_401720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401720 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401720)
  store %struct.Memory* %call_401720, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm7	 RIP: 401725	 Bytes: 5
  %loadMem_401725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401725 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401725)
  store %struct.Memory* %call_401725, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm8	 RIP: 40172a	 Bytes: 10
  %loadMem_40172a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172a = call %struct.Memory* @routine_movsd_0x6030a0___xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172a)
  store %struct.Memory* %call_40172a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm8	 RIP: 401734	 Bytes: 6
  %loadMem_401734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401734 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401734)
  store %struct.Memory* %call_401734, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm8	 RIP: 40173a	 Bytes: 10
  %loadMem_40173a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173a = call %struct.Memory* @routine_addsd_0x603098___xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173a)
  store %struct.Memory* %call_40173a, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm8, %xmm7	 RIP: 401744	 Bytes: 5
  %loadMem_401744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401744 = call %struct.Memory* @routine_mulsd__xmm8___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401744)
  store %struct.Memory* %call_401744, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm7	 RIP: 401749	 Bytes: 9
  %loadMem_401749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401749 = call %struct.Memory* @routine_addsd_0x603090___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401749)
  store %struct.Memory* %call_401749, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm7, %xmm6	 RIP: 401752	 Bytes: 4
  %loadMem_401752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401752 = call %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401752)
  store %struct.Memory* %call_401752, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm6	 RIP: 401756	 Bytes: 9
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401756 = call %struct.Memory* @routine_addsd_0x603088___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401756)
  store %struct.Memory* %call_401756, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 40175f	 Bytes: 4
  %loadMem_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175f = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175f)
  store %struct.Memory* %call_40175f, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm5	 RIP: 401763	 Bytes: 9
  %loadMem_401763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401763 = call %struct.Memory* @routine_addsd_0x603080___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401763)
  store %struct.Memory* %call_401763, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 40176c	 Bytes: 4
  %loadMem_40176c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176c = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176c)
  store %struct.Memory* %call_40176c, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm4	 RIP: 401770	 Bytes: 9
  %loadMem_401770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401770 = call %struct.Memory* @routine_addsd_0x603078___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401770)
  store %struct.Memory* %call_401770, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401779	 Bytes: 4
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401779 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401779)
  store %struct.Memory* %call_401779, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm3	 RIP: 40177d	 Bytes: 9
  %loadMem_40177d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177d = call %struct.Memory* @routine_addsd_0x6032a8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177d)
  store %struct.Memory* %call_40177d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603268	 RIP: 401786	 Bytes: 9
  %loadMem_401786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401786 = call %struct.Memory* @routine_movsd__xmm3__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401786)
  store %struct.Memory* %call_401786, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 40178f	 Bytes: 9
  %loadMem_40178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178f = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178f)
  store %struct.Memory* %call_40178f, %struct.Memory** %MEMORY

  ; Code: divsd 0x603268, %xmm3	 RIP: 401798	 Bytes: 9
  %loadMem_401798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401798 = call %struct.Memory* @routine_divsd_0x603268___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401798)
  store %struct.Memory* %call_401798, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 4017a1	 Bytes: 9
  %loadMem_4017a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a1 = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a1)
  store %struct.Memory* %call_4017a1, %struct.Memory** %MEMORY

  ; Code: movsd 0x6031b8, %xmm3	 RIP: 4017aa	 Bytes: 9
  %loadMem_4017aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017aa = call %struct.Memory* @routine_movsd_0x6031b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017aa)
  store %struct.Memory* %call_4017aa, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 4017b3	 Bytes: 4
  %loadMem_4017b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b3 = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b3)
  store %struct.Memory* %call_4017b3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6031c0	 RIP: 4017b7	 Bytes: 9
  %loadMem_4017b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b7 = call %struct.Memory* @routine_movsd__xmm3__0x6031c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b7)
  store %struct.Memory* %call_4017b7, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 4017c0	 Bytes: 5
  %loadMem_4017c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c0 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c0)
  store %struct.Memory* %call_4017c0, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 4017c5	 Bytes: 9
  %loadMem_4017c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c5 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c5)
  store %struct.Memory* %call_4017c5, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm4	 RIP: 4017ce	 Bytes: 9
  %loadMem_4017ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ce = call %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ce)
  store %struct.Memory* %call_4017ce, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm4	 RIP: 4017d7	 Bytes: 5
  %loadMem_4017d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d7 = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d7)
  store %struct.Memory* %call_4017d7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 4017dc	 Bytes: 4
  %loadMem_4017dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017dc = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017dc)
  store %struct.Memory* %call_4017dc, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 4017e0	 Bytes: 4
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e0 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e0)
  store %struct.Memory* %call_4017e0, %struct.Memory** %MEMORY

  ; Code: divsd 0x603130, %xmm2	 RIP: 4017e4	 Bytes: 9
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e4 = call %struct.Memory* @routine_divsd_0x603130___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e4)
  store %struct.Memory* %call_4017e4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 4017ed	 Bytes: 9
  %loadMem_4017ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ed = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ed)
  store %struct.Memory* %call_4017ed, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603268	 RIP: 4017f6	 Bytes: 9
  %loadMem_4017f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f6 = call %struct.Memory* @routine_movsd__xmm1__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f6)
  store %struct.Memory* %call_4017f6, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm1	 RIP: 4017ff	 Bytes: 9
  %loadMem_4017ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ff = call %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ff)
  store %struct.Memory* %call_4017ff, %struct.Memory** %MEMORY

  ; Code: subsd 0x603268, %xmm1	 RIP: 401808	 Bytes: 9
  %loadMem_401808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401808 = call %struct.Memory* @routine_subsd_0x603268___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401808)
  store %struct.Memory* %call_401808, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 401811	 Bytes: 9
  %loadMem_401811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401811 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401811)
  store %struct.Memory* %call_401811, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 40181a	 Bytes: 9
  %loadMem_40181a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181a = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181a)
  store %struct.Memory* %call_40181a, %struct.Memory** %MEMORY

  ; Code: divsd 0x6031c0, %xmm1	 RIP: 401823	 Bytes: 9
  %loadMem_401823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401823 = call %struct.Memory* @routine_divsd_0x6031c0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401823)
  store %struct.Memory* %call_401823, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6031c8	 RIP: 40182c	 Bytes: 9
  %loadMem_40182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182c = call %struct.Memory* @routine_movsd__xmm1__0x6031c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182c)
  store %struct.Memory* %call_40182c, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 401835	 Bytes: 3
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401835 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401835)
  store %struct.Memory* %call_401835, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 401838	 Bytes: 9
  %loadMem_401838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401838 = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401838)
  store %struct.Memory* %call_401838, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 401841	 Bytes: 3
  %loadMem_401841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401841 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401841)
  store %struct.Memory* %call_401841, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031b8, %xmm2	 RIP: 401844	 Bytes: 9
  %loadMem_401844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401844 = call %struct.Memory* @routine_mulsd_0x6031b8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401844)
  store %struct.Memory* %call_401844, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031c8, %xmm0	 RIP: 40184d	 Bytes: 9
  %loadMem_40184d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184d = call %struct.Memory* @routine_mulsd_0x6031c8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184d)
  store %struct.Memory* %call_40184d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xe8(%rbp)	 RIP: 401856	 Bytes: 8
  %loadMem_401856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401856 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401856)
  store %struct.Memory* %call_401856, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 40185e	 Bytes: 3
  %loadMem_40185e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185e = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185e)
  store %struct.Memory* %call_40185e, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 401861	 Bytes: 3
  %loadMem_401861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401861 = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401861)
  store %struct.Memory* %call_401861, %struct.Memory** %MEMORY

  ; Code: movsd -0xe8(%rbp), %xmm2	 RIP: 401864	 Bytes: 8
  %loadMem_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401864 = call %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401864)
  store %struct.Memory* %call_401864, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xec(%rbp)	 RIP: 40186c	 Bytes: 6
  %loadMem_40186c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186c = call %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186c)
  store %struct.Memory* %call_40186c, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 401872	 Bytes: 2
  %loadMem_401872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401872 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401872)
  store %struct.Memory* %call_401872, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401874	 Bytes: 5
  %loadMem1_401874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401874 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401874, i64 -5172, i64 5, i64 5)
  store %struct.Memory* %call1_401874, %struct.Memory** %MEMORY

  %loadMem2_401874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401874 = load i64, i64* %3
  %call2_401874 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_401874, %struct.Memory* %loadMem2_401874)
  store %struct.Memory* %call2_401874, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 401879	 Bytes: 10
  %loadMem_401879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401879 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401879)
  store %struct.Memory* %call_401879, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 401883	 Bytes: 3
  %loadMem_401883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401883 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401883)
  store %struct.Memory* %call_401883, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm1	 RIP: 401886	 Bytes: 9
  %loadMem_401886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401886 = call %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401886)
  store %struct.Memory* %call_401886, %struct.Memory** %MEMORY

  ; Code: movsd 0x603298, %xmm2	 RIP: 40188f	 Bytes: 9
  %loadMem_40188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188f = call %struct.Memory* @routine_movsd_0x603298___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188f)
  store %struct.Memory* %call_40188f, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm3	 RIP: 401898	 Bytes: 6
  %loadMem_401898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401898 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401898)
  store %struct.Memory* %call_401898, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 40189e	 Bytes: 4
  %loadMem_40189e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189e = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189e)
  store %struct.Memory* %call_40189e, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 4018a2	 Bytes: 4
  %loadMem_4018a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a2 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a2)
  store %struct.Memory* %call_4018a2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 4018a6	 Bytes: 5
  %loadMem_4018a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a6 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a6)
  store %struct.Memory* %call_4018a6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 4018ab	 Bytes: 5
  %loadMem_4018ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ab = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ab)
  store %struct.Memory* %call_4018ab, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4018b0	 Bytes: 5
  %loadMem_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b0)
  store %struct.Memory* %call_4018b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf0(%rbp)	 RIP: 4018b5	 Bytes: 6
  %loadMem_4018b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b5 = call %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b5)
  store %struct.Memory* %call_4018b5, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 4018bb	 Bytes: 5
  %loadMem1_4018bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4018bb = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4018bb, i64 3349, i64 5, i64 5)
  store %struct.Memory* %call1_4018bb, %struct.Memory** %MEMORY

  %loadMem2_4018bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4018bb = load i64, i64* %3
  %call2_4018bb = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_4018bb, %struct.Memory* %loadMem2_4018bb)
  store %struct.Memory* %call2_4018bb, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 4018c0	 Bytes: 8
  %loadMem_4018c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c0 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c0)
  store %struct.Memory* %call_4018c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf4(%rbp)	 RIP: 4018c8	 Bytes: 6
  %loadMem_4018c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c8 = call %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c8)
  store %struct.Memory* %call_4018c8, %struct.Memory** %MEMORY

  ; Code: .L_4018ce:	 RIP: 4018ce	 Bytes: 0
  br label %block_.L_4018ce
block_.L_4018ce:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4018ce	 Bytes: 4
  %loadMem_4018ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ce = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ce)
  store %struct.Memory* %call_4018ce, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 4018d2	 Bytes: 4
  %loadMem_4018d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d2 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d2)
  store %struct.Memory* %call_4018d2, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 4018d6	 Bytes: 4
  %loadMem_4018d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d6 = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d6)
  store %struct.Memory* %call_4018d6, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 4018da	 Bytes: 3
  %loadMem_4018da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018da = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018da)
  store %struct.Memory* %call_4018da, %struct.Memory** %MEMORY

  ; Code: jg .L_401a06	 RIP: 4018dd	 Bytes: 6
  %loadMem_4018dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018dd = call %struct.Memory* @routine_jg_.L_401a06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018dd, i8* %BRANCH_TAKEN, i64 297, i64 6, i64 6)
  store %struct.Memory* %call_4018dd, %struct.Memory** %MEMORY

  %loadBr_4018dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4018dd = icmp eq i8 %loadBr_4018dd, 1
  br i1 %cmpBr_4018dd, label %block_.L_401a06, label %block_4018e3

block_4018e3:
  ; Code: cvtsi2sdq -0x48(%rbp), %xmm0	 RIP: 4018e3	 Bytes: 6
  %loadMem_4018e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e3 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e3)
  store %struct.Memory* %call_4018e3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 4018e9	 Bytes: 5
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e9 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e9)
  store %struct.Memory* %call_4018e9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 4018ee	 Bytes: 5
  %loadMem_4018ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ee = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ee)
  store %struct.Memory* %call_4018ee, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 4018f3	 Bytes: 5
  %loadMem_4018f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f3 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f3)
  store %struct.Memory* %call_4018f3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm0	 RIP: 4018f8	 Bytes: 5
  %loadMem_4018f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f8 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f8)
  store %struct.Memory* %call_4018f8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 4018fd	 Bytes: 5
  %loadMem_4018fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fd)
  store %struct.Memory* %call_4018fd, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 401902	 Bytes: 5
  %loadMem_401902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401902 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401902)
  store %struct.Memory* %call_401902, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm1	 RIP: 401907	 Bytes: 9
  %loadMem_401907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401907 = call %struct.Memory* @routine_movsd_0x603068___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401907)
  store %struct.Memory* %call_401907, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 401910	 Bytes: 5
  %loadMem_401910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401910 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401910)
  store %struct.Memory* %call_401910, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm1	 RIP: 401915	 Bytes: 9
  %loadMem_401915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401915 = call %struct.Memory* @routine_addsd_0x603060___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401915)
  store %struct.Memory* %call_401915, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 40191e	 Bytes: 5
  %loadMem_40191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191e = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191e)
  store %struct.Memory* %call_40191e, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm1	 RIP: 401923	 Bytes: 9
  %loadMem_401923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401923 = call %struct.Memory* @routine_addsd_0x603058___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401923)
  store %struct.Memory* %call_401923, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 40192c	 Bytes: 5
  %loadMem_40192c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192c = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192c)
  store %struct.Memory* %call_40192c, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm1	 RIP: 401931	 Bytes: 9
  %loadMem_401931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401931 = call %struct.Memory* @routine_addsd_0x603050___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401931)
  store %struct.Memory* %call_401931, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 40193a	 Bytes: 5
  %loadMem_40193a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193a = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193a)
  store %struct.Memory* %call_40193a, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm1	 RIP: 40193f	 Bytes: 9
  %loadMem_40193f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193f = call %struct.Memory* @routine_addsd_0x603048___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193f)
  store %struct.Memory* %call_40193f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 401948	 Bytes: 5
  %loadMem_401948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401948 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401948)
  store %struct.Memory* %call_401948, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm1	 RIP: 40194d	 Bytes: 9
  %loadMem_40194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194d = call %struct.Memory* @routine_addsd_0x603040___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194d)
  store %struct.Memory* %call_40194d, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm1	 RIP: 401956	 Bytes: 5
  %loadMem_401956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401956 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401956)
  store %struct.Memory* %call_401956, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm1	 RIP: 40195b	 Bytes: 9
  %loadMem_40195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195b = call %struct.Memory* @routine_addsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195b)
  store %struct.Memory* %call_40195b, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 401964	 Bytes: 4
  %loadMem_401964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401964 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401964)
  store %struct.Memory* %call_401964, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 401968	 Bytes: 5
  %loadMem_401968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401968 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401968)
  store %struct.Memory* %call_401968, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 40196d	 Bytes: 5
  %loadMem_40196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196d = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196d)
  store %struct.Memory* %call_40196d, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm1	 RIP: 401972	 Bytes: 5
  %loadMem_401972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401972 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401972)
  store %struct.Memory* %call_401972, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm2	 RIP: 401977	 Bytes: 5
  %loadMem_401977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401977 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401977)
  store %struct.Memory* %call_401977, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 40197c	 Bytes: 5
  %loadMem_40197c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197c = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197c)
  store %struct.Memory* %call_40197c, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 401981	 Bytes: 5
  %loadMem_401981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401981 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401981)
  store %struct.Memory* %call_401981, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 401986	 Bytes: 5
  %loadMem_401986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401986 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401986)
  store %struct.Memory* %call_401986, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm6	 RIP: 40198b	 Bytes: 5
  %loadMem_40198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198b = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198b)
  store %struct.Memory* %call_40198b, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm7	 RIP: 401990	 Bytes: 9
  %loadMem_401990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401990 = call %struct.Memory* @routine_movsd_0x6030a0___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401990)
  store %struct.Memory* %call_401990, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm7	 RIP: 401999	 Bytes: 5
  %loadMem_401999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401999 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401999)
  store %struct.Memory* %call_401999, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm7	 RIP: 40199e	 Bytes: 9
  %loadMem_40199e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199e = call %struct.Memory* @routine_addsd_0x603098___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199e)
  store %struct.Memory* %call_40199e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm7, %xmm6	 RIP: 4019a7	 Bytes: 4
  %loadMem_4019a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a7 = call %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a7)
  store %struct.Memory* %call_4019a7, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm6	 RIP: 4019ab	 Bytes: 9
  %loadMem_4019ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ab = call %struct.Memory* @routine_addsd_0x603090___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ab)
  store %struct.Memory* %call_4019ab, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 4019b4	 Bytes: 4
  %loadMem_4019b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b4 = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b4)
  store %struct.Memory* %call_4019b4, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm5	 RIP: 4019b8	 Bytes: 9
  %loadMem_4019b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b8 = call %struct.Memory* @routine_addsd_0x603088___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b8)
  store %struct.Memory* %call_4019b8, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 4019c1	 Bytes: 4
  %loadMem_4019c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c1 = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c1)
  store %struct.Memory* %call_4019c1, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm4	 RIP: 4019c5	 Bytes: 9
  %loadMem_4019c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c5 = call %struct.Memory* @routine_addsd_0x603080___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c5)
  store %struct.Memory* %call_4019c5, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 4019ce	 Bytes: 4
  %loadMem_4019ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ce = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ce)
  store %struct.Memory* %call_4019ce, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm3	 RIP: 4019d2	 Bytes: 9
  %loadMem_4019d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d2 = call %struct.Memory* @routine_addsd_0x603078___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d2)
  store %struct.Memory* %call_4019d2, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 4019db	 Bytes: 4
  %loadMem_4019db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019db = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019db)
  store %struct.Memory* %call_4019db, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm2	 RIP: 4019df	 Bytes: 9
  %loadMem_4019df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019df = call %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019df)
  store %struct.Memory* %call_4019df, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 4019e8	 Bytes: 4
  %loadMem_4019e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e8 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e8)
  store %struct.Memory* %call_4019e8, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4019ec	 Bytes: 4
  %loadMem_4019ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ec = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ec)
  store %struct.Memory* %call_4019ec, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 4019f0	 Bytes: 5
  %loadMem_4019f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f0)
  store %struct.Memory* %call_4019f0, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4019f5	 Bytes: 4
  %loadMem_4019f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f5)
  store %struct.Memory* %call_4019f5, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4019f9	 Bytes: 4
  %loadMem_4019f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f9 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f9)
  store %struct.Memory* %call_4019f9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4019fd	 Bytes: 4
  %loadMem_4019fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019fd = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019fd)
  store %struct.Memory* %call_4019fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4018ce	 RIP: 401a01	 Bytes: 5
  %loadMem_401a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a01 = call %struct.Memory* @routine_jmpq_.L_4018ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a01, i64 -307, i64 5)
  store %struct.Memory* %call_401a01, %struct.Memory** %MEMORY

  br label %block_.L_4018ce

  ; Code: .L_401a06:	 RIP: 401a06	 Bytes: 0
block_.L_401a06:

  ; Code: movq $0x6032d0, %rdi	 RIP: 401a06	 Bytes: 10
  %loadMem_401a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a06 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a06)
  store %struct.Memory* %call_401a06, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401a10	 Bytes: 5
  %loadMem1_401a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a10 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a10, i64 3008, i64 5, i64 5)
  store %struct.Memory* %call1_401a10, %struct.Memory** %MEMORY

  %loadMem2_401a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a10 = load i64, i64* %3
  %call2_401a10 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401a10, %struct.Memory* %loadMem2_401a10)
  store %struct.Memory* %call2_401a10, %struct.Memory** %MEMORY

  ; Code: movq $0x40291a, %rdi	 RIP: 401a15	 Bytes: 10
  %loadMem_401a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a15 = call %struct.Memory* @routine_movq__0x40291a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a15)
  store %struct.Memory* %call_401a15, %struct.Memory** %MEMORY

  ; Code: movsd 0xd01(%rip), %xmm0	 RIP: 401a1f	 Bytes: 8
  %loadMem_401a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a1f = call %struct.Memory* @routine_movsd_0xd01__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a1f)
  store %struct.Memory* %call_401a1f, %struct.Memory** %MEMORY

  ; Code: movsd 0xd51(%rip), %xmm1	 RIP: 401a27	 Bytes: 8
  %loadMem_401a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a27 = call %struct.Memory* @routine_movsd_0xd51__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a27)
  store %struct.Memory* %call_401a27, %struct.Memory** %MEMORY

  ; Code: movsd 0xd39(%rip), %xmm2	 RIP: 401a2f	 Bytes: 8
  %loadMem_401a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a2f = call %struct.Memory* @routine_movsd_0xd39__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a2f)
  store %struct.Memory* %call_401a2f, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm3	 RIP: 401a37	 Bytes: 9
  %loadMem_401a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a37 = call %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a37)
  store %struct.Memory* %call_401a37, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm3	 RIP: 401a40	 Bytes: 9
  %loadMem_401a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a40 = call %struct.Memory* @routine_mulsd_0x6032d8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a40)
  store %struct.Memory* %call_401a40, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm3	 RIP: 401a49	 Bytes: 9
  %loadMem_401a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a49 = call %struct.Memory* @routine_subsd_0x603290___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a49)
  store %struct.Memory* %call_401a49, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6031d0	 RIP: 401a52	 Bytes: 9
  %loadMem_401a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a52 = call %struct.Memory* @routine_movsd__xmm3__0x6031d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a52)
  store %struct.Memory* %call_401a52, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm3	 RIP: 401a5b	 Bytes: 9
  %loadMem_401a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a5b = call %struct.Memory* @routine_movsd_0x603270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a5b)
  store %struct.Memory* %call_401a5b, %struct.Memory** %MEMORY

  ; Code: divsd 0x603298, %xmm3	 RIP: 401a64	 Bytes: 9
  %loadMem_401a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a64 = call %struct.Memory* @routine_divsd_0x603298___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a64)
  store %struct.Memory* %call_401a64, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x18(%rbp)	 RIP: 401a6d	 Bytes: 5
  %loadMem_401a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a6d = call %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a6d)
  store %struct.Memory* %call_401a6d, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 401a72	 Bytes: 5
  %loadMem_401a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a72 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a72)
  store %struct.Memory* %call_401a72, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm3	 RIP: 401a77	 Bytes: 5
  %loadMem_401a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a77 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a77)
  store %struct.Memory* %call_401a77, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x28(%rbp)	 RIP: 401a7c	 Bytes: 5
  %loadMem_401a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a7c = call %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a7c)
  store %struct.Memory* %call_401a7c, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 401a81	 Bytes: 5
  %loadMem_401a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a81 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a81)
  store %struct.Memory* %call_401a81, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm4	 RIP: 401a86	 Bytes: 9
  %loadMem_401a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a86 = call %struct.Memory* @routine_movsd_0x603068___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a86)
  store %struct.Memory* %call_401a86, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 401a8f	 Bytes: 5
  %loadMem_401a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8f = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8f)
  store %struct.Memory* %call_401a8f, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm4	 RIP: 401a94	 Bytes: 9
  %loadMem_401a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a94 = call %struct.Memory* @routine_addsd_0x603060___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a94)
  store %struct.Memory* %call_401a94, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 401a9d	 Bytes: 5
  %loadMem_401a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9d = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9d)
  store %struct.Memory* %call_401a9d, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm4	 RIP: 401aa2	 Bytes: 9
  %loadMem_401aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa2 = call %struct.Memory* @routine_addsd_0x603058___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa2)
  store %struct.Memory* %call_401aa2, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 401aab	 Bytes: 5
  %loadMem_401aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aab = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aab)
  store %struct.Memory* %call_401aab, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm4	 RIP: 401ab0	 Bytes: 9
  %loadMem_401ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab0 = call %struct.Memory* @routine_addsd_0x603050___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab0)
  store %struct.Memory* %call_401ab0, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 401ab9	 Bytes: 5
  %loadMem_401ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab9 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab9)
  store %struct.Memory* %call_401ab9, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm4	 RIP: 401abe	 Bytes: 9
  %loadMem_401abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401abe = call %struct.Memory* @routine_addsd_0x603048___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401abe)
  store %struct.Memory* %call_401abe, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 401ac7	 Bytes: 5
  %loadMem_401ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac7 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac7)
  store %struct.Memory* %call_401ac7, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm4	 RIP: 401acc	 Bytes: 9
  %loadMem_401acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401acc = call %struct.Memory* @routine_addsd_0x603040___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401acc)
  store %struct.Memory* %call_401acc, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 401ad5	 Bytes: 5
  %loadMem_401ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad5 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad5)
  store %struct.Memory* %call_401ad5, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm4	 RIP: 401ada	 Bytes: 9
  %loadMem_401ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ada = call %struct.Memory* @routine_addsd_0x6032a8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ada)
  store %struct.Memory* %call_401ada, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401ae3	 Bytes: 4
  %loadMem_401ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae3 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae3)
  store %struct.Memory* %call_401ae3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 401ae7	 Bytes: 9
  %loadMem_401ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae7 = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae7)
  store %struct.Memory* %call_401ae7, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 401af0	 Bytes: 5
  %loadMem_401af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af0 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af0)
  store %struct.Memory* %call_401af0, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 401af5	 Bytes: 5
  %loadMem_401af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af5 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af5)
  store %struct.Memory* %call_401af5, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 401afa	 Bytes: 5
  %loadMem_401afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401afa = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401afa)
  store %struct.Memory* %call_401afa, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm6	 RIP: 401aff	 Bytes: 5
  %loadMem_401aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aff = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aff)
  store %struct.Memory* %call_401aff, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm7	 RIP: 401b04	 Bytes: 5
  %loadMem_401b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b04 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b04)
  store %struct.Memory* %call_401b04, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm8	 RIP: 401b09	 Bytes: 10
  %loadMem_401b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b09 = call %struct.Memory* @routine_movsd_0x6030a0___xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b09)
  store %struct.Memory* %call_401b09, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm8	 RIP: 401b13	 Bytes: 6
  %loadMem_401b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b13 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b13)
  store %struct.Memory* %call_401b13, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm8	 RIP: 401b19	 Bytes: 10
  %loadMem_401b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b19 = call %struct.Memory* @routine_addsd_0x603098___xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b19)
  store %struct.Memory* %call_401b19, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm8, %xmm7	 RIP: 401b23	 Bytes: 5
  %loadMem_401b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b23 = call %struct.Memory* @routine_mulsd__xmm8___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b23)
  store %struct.Memory* %call_401b23, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm7	 RIP: 401b28	 Bytes: 9
  %loadMem_401b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b28 = call %struct.Memory* @routine_addsd_0x603090___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b28)
  store %struct.Memory* %call_401b28, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm7, %xmm6	 RIP: 401b31	 Bytes: 4
  %loadMem_401b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b31 = call %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b31)
  store %struct.Memory* %call_401b31, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm6	 RIP: 401b35	 Bytes: 9
  %loadMem_401b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b35 = call %struct.Memory* @routine_addsd_0x603088___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b35)
  store %struct.Memory* %call_401b35, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 401b3e	 Bytes: 4
  %loadMem_401b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b3e = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b3e)
  store %struct.Memory* %call_401b3e, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm5	 RIP: 401b42	 Bytes: 9
  %loadMem_401b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b42 = call %struct.Memory* @routine_addsd_0x603080___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b42)
  store %struct.Memory* %call_401b42, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 401b4b	 Bytes: 4
  %loadMem_401b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4b = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4b)
  store %struct.Memory* %call_401b4b, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm4	 RIP: 401b4f	 Bytes: 9
  %loadMem_401b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4f = call %struct.Memory* @routine_addsd_0x603078___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4f)
  store %struct.Memory* %call_401b4f, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401b58	 Bytes: 4
  %loadMem_401b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b58 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b58)
  store %struct.Memory* %call_401b58, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm3	 RIP: 401b5c	 Bytes: 9
  %loadMem_401b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5c = call %struct.Memory* @routine_addsd_0x6032a8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5c)
  store %struct.Memory* %call_401b5c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603268	 RIP: 401b65	 Bytes: 9
  %loadMem_401b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b65 = call %struct.Memory* @routine_movsd__xmm3__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b65)
  store %struct.Memory* %call_401b65, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 401b6e	 Bytes: 9
  %loadMem_401b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b6e = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b6e)
  store %struct.Memory* %call_401b6e, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603268, %xmm3	 RIP: 401b77	 Bytes: 9
  %loadMem_401b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b77 = call %struct.Memory* @routine_mulsd_0x603268___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b77)
  store %struct.Memory* %call_401b77, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 401b80	 Bytes: 9
  %loadMem_401b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b80 = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b80)
  store %struct.Memory* %call_401b80, %struct.Memory** %MEMORY

  ; Code: movsd 0x6031d0, %xmm3	 RIP: 401b89	 Bytes: 9
  %loadMem_401b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b89 = call %struct.Memory* @routine_movsd_0x6031d0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b89)
  store %struct.Memory* %call_401b89, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 401b92	 Bytes: 4
  %loadMem_401b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b92 = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b92)
  store %struct.Memory* %call_401b92, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6031d8	 RIP: 401b96	 Bytes: 9
  %loadMem_401b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b96 = call %struct.Memory* @routine_movsd__xmm3__0x6031d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b96)
  store %struct.Memory* %call_401b96, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 401b9f	 Bytes: 5
  %loadMem_401b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b9f = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b9f)
  store %struct.Memory* %call_401b9f, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 401ba4	 Bytes: 9
  %loadMem_401ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba4 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba4)
  store %struct.Memory* %call_401ba4, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm4	 RIP: 401bad	 Bytes: 9
  %loadMem_401bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bad = call %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bad)
  store %struct.Memory* %call_401bad, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm4	 RIP: 401bb6	 Bytes: 5
  %loadMem_401bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb6 = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb6)
  store %struct.Memory* %call_401bb6, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 401bbb	 Bytes: 4
  %loadMem_401bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bbb = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bbb)
  store %struct.Memory* %call_401bbb, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401bbf	 Bytes: 4
  %loadMem_401bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bbf = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bbf)
  store %struct.Memory* %call_401bbf, %struct.Memory** %MEMORY

  ; Code: divsd 0x603130, %xmm2	 RIP: 401bc3	 Bytes: 9
  %loadMem_401bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc3 = call %struct.Memory* @routine_divsd_0x603130___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc3)
  store %struct.Memory* %call_401bc3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 401bcc	 Bytes: 9
  %loadMem_401bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bcc = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bcc)
  store %struct.Memory* %call_401bcc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603268	 RIP: 401bd5	 Bytes: 9
  %loadMem_401bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd5 = call %struct.Memory* @routine_movsd__xmm1__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd5)
  store %struct.Memory* %call_401bd5, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm1	 RIP: 401bde	 Bytes: 9
  %loadMem_401bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bde = call %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bde)
  store %struct.Memory* %call_401bde, %struct.Memory** %MEMORY

  ; Code: subsd 0x603268, %xmm1	 RIP: 401be7	 Bytes: 9
  %loadMem_401be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be7 = call %struct.Memory* @routine_subsd_0x603268___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be7)
  store %struct.Memory* %call_401be7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 401bf0	 Bytes: 9
  %loadMem_401bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf0 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf0)
  store %struct.Memory* %call_401bf0, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 401bf9	 Bytes: 9
  %loadMem_401bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf9 = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf9)
  store %struct.Memory* %call_401bf9, %struct.Memory** %MEMORY

  ; Code: divsd 0x6031d8, %xmm1	 RIP: 401c02	 Bytes: 9
  %loadMem_401c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c02 = call %struct.Memory* @routine_divsd_0x6031d8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c02)
  store %struct.Memory* %call_401c02, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6031e0	 RIP: 401c0b	 Bytes: 9
  %loadMem_401c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0b = call %struct.Memory* @routine_movsd__xmm1__0x6031e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0b)
  store %struct.Memory* %call_401c0b, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 401c14	 Bytes: 3
  %loadMem_401c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c14 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c14)
  store %struct.Memory* %call_401c14, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 401c17	 Bytes: 9
  %loadMem_401c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c17 = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c17)
  store %struct.Memory* %call_401c17, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 401c20	 Bytes: 3
  %loadMem_401c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c20 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c20)
  store %struct.Memory* %call_401c20, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031d0, %xmm2	 RIP: 401c23	 Bytes: 9
  %loadMem_401c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c23 = call %struct.Memory* @routine_mulsd_0x6031d0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c23)
  store %struct.Memory* %call_401c23, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031e0, %xmm0	 RIP: 401c2c	 Bytes: 9
  %loadMem_401c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2c = call %struct.Memory* @routine_mulsd_0x6031e0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2c)
  store %struct.Memory* %call_401c2c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x100(%rbp)	 RIP: 401c35	 Bytes: 8
  %loadMem_401c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c35 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c35)
  store %struct.Memory* %call_401c35, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 401c3d	 Bytes: 3
  %loadMem_401c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3d = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3d)
  store %struct.Memory* %call_401c3d, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 401c40	 Bytes: 3
  %loadMem_401c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c40 = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c40)
  store %struct.Memory* %call_401c40, %struct.Memory** %MEMORY

  ; Code: movsd -0x100(%rbp), %xmm2	 RIP: 401c43	 Bytes: 8
  %loadMem_401c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c43 = call %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c43)
  store %struct.Memory* %call_401c43, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x104(%rbp)	 RIP: 401c4b	 Bytes: 6
  %loadMem_401c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4b = call %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4b)
  store %struct.Memory* %call_401c4b, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 401c51	 Bytes: 2
  %loadMem_401c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c51 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c51)
  store %struct.Memory* %call_401c51, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401c53	 Bytes: 5
  %loadMem1_401c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c53 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c53, i64 -6163, i64 5, i64 5)
  store %struct.Memory* %call1_401c53, %struct.Memory** %MEMORY

  %loadMem2_401c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c53 = load i64, i64* %3
  %call2_401c53 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_401c53, %struct.Memory* %loadMem2_401c53)
  store %struct.Memory* %call2_401c53, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 401c58	 Bytes: 10
  %loadMem_401c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c58 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c58)
  store %struct.Memory* %call_401c58, %struct.Memory** %MEMORY

  ; Code: movsd 0xb0e(%rip), %xmm0	 RIP: 401c62	 Bytes: 8
  %loadMem_401c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c62 = call %struct.Memory* @routine_movsd_0xb0e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c62)
  store %struct.Memory* %call_401c62, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 401c6a	 Bytes: 3
  %loadMem_401c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6a = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6a)
  store %struct.Memory* %call_401c6a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x10(%rbp)	 RIP: 401c6d	 Bytes: 5
  %loadMem_401c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6d)
  store %struct.Memory* %call_401c6d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 401c72	 Bytes: 9
  %loadMem_401c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c72 = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c72)
  store %struct.Memory* %call_401c72, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x28(%rbp)	 RIP: 401c7b	 Bytes: 5
  %loadMem_401c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7b = call %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7b)
  store %struct.Memory* %call_401c7b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6032b8	 RIP: 401c80	 Bytes: 9
  %loadMem_401c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c80 = call %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c80)
  store %struct.Memory* %call_401c80, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm0	 RIP: 401c89	 Bytes: 9
  %loadMem_401c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c89 = call %struct.Memory* @routine_movsd_0x6032b8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c89)
  store %struct.Memory* %call_401c89, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm1	 RIP: 401c92	 Bytes: 6
  %loadMem_401c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c92 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c92)
  store %struct.Memory* %call_401c92, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 401c98	 Bytes: 4
  %loadMem_401c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c98 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c98)
  store %struct.Memory* %call_401c98, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 401c9c	 Bytes: 5
  %loadMem_401c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9c)
  store %struct.Memory* %call_401c9c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x108(%rbp)	 RIP: 401ca1	 Bytes: 6
  %loadMem_401ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca1 = call %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca1)
  store %struct.Memory* %call_401ca1, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401ca7	 Bytes: 5
  %loadMem1_401ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401ca7 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401ca7, i64 2345, i64 5, i64 5)
  store %struct.Memory* %call1_401ca7, %struct.Memory** %MEMORY

  %loadMem2_401ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401ca7 = load i64, i64* %3
  %call2_401ca7 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401ca7, %struct.Memory* %loadMem2_401ca7)
  store %struct.Memory* %call2_401ca7, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 401cac	 Bytes: 8
  %loadMem_401cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cac = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cac)
  store %struct.Memory* %call_401cac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10c(%rbp)	 RIP: 401cb4	 Bytes: 6
  %loadMem_401cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb4 = call %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb4)
  store %struct.Memory* %call_401cb4, %struct.Memory** %MEMORY

  ; Code: .L_401cba:	 RIP: 401cba	 Bytes: 0
  br label %block_.L_401cba
block_.L_401cba:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 401cba	 Bytes: 4
  %loadMem_401cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cba = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cba)
  store %struct.Memory* %call_401cba, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 401cbe	 Bytes: 4
  %loadMem_401cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbe = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbe)
  store %struct.Memory* %call_401cbe, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 401cc2	 Bytes: 4
  %loadMem_401cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc2 = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc2)
  store %struct.Memory* %call_401cc2, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 401cc6	 Bytes: 3
  %loadMem_401cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc6 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc6)
  store %struct.Memory* %call_401cc6, %struct.Memory** %MEMORY

  ; Code: jg .L_401d53	 RIP: 401cc9	 Bytes: 6
  %loadMem_401cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc9 = call %struct.Memory* @routine_jg_.L_401d53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc9, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_401cc9, %struct.Memory** %MEMORY

  %loadBr_401cc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401cc9 = icmp eq i8 %loadBr_401cc9, 1
  br i1 %cmpBr_401cc9, label %block_.L_401d53, label %block_401ccf

block_401ccf:
  ; Code: cvtsi2sdq -0x48(%rbp), %xmm0	 RIP: 401ccf	 Bytes: 6
  %loadMem_401ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ccf = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ccf)
  store %struct.Memory* %call_401ccf, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm0	 RIP: 401cd5	 Bytes: 5
  %loadMem_401cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd5 = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd5)
  store %struct.Memory* %call_401cd5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 401cda	 Bytes: 5
  %loadMem_401cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cda = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cda)
  store %struct.Memory* %call_401cda, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 401cdf	 Bytes: 5
  %loadMem_401cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdf = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdf)
  store %struct.Memory* %call_401cdf, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 401ce4	 Bytes: 5
  %loadMem_401ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce4 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce4)
  store %struct.Memory* %call_401ce4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 401ce9	 Bytes: 5
  %loadMem_401ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce9 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce9)
  store %struct.Memory* %call_401ce9, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 401cee	 Bytes: 5
  %loadMem_401cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cee = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cee)
  store %struct.Memory* %call_401cee, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm1	 RIP: 401cf3	 Bytes: 5
  %loadMem_401cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf3 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf3)
  store %struct.Memory* %call_401cf3, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 401cf8	 Bytes: 5
  %loadMem_401cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf8 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf8)
  store %struct.Memory* %call_401cf8, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm2	 RIP: 401cfd	 Bytes: 5
  %loadMem_401cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfd = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfd)
  store %struct.Memory* %call_401cfd, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 401d02	 Bytes: 4
  %loadMem_401d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d02 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d02)
  store %struct.Memory* %call_401d02, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401d06	 Bytes: 4
  %loadMem_401d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d06 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d06)
  store %struct.Memory* %call_401d06, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm1	 RIP: 401d0a	 Bytes: 5
  %loadMem_401d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0a = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0a)
  store %struct.Memory* %call_401d0a, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm2	 RIP: 401d0f	 Bytes: 5
  %loadMem_401d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0f = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0f)
  store %struct.Memory* %call_401d0f, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm2	 RIP: 401d14	 Bytes: 5
  %loadMem_401d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d14 = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d14)
  store %struct.Memory* %call_401d14, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 401d19	 Bytes: 4
  %loadMem_401d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d19 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d19)
  store %struct.Memory* %call_401d19, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401d1d	 Bytes: 4
  %loadMem_401d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1d = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1d)
  store %struct.Memory* %call_401d1d, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm1	 RIP: 401d21	 Bytes: 5
  %loadMem_401d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d21 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d21)
  store %struct.Memory* %call_401d21, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 401d26	 Bytes: 5
  %loadMem_401d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d26 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d26)
  store %struct.Memory* %call_401d26, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm2	 RIP: 401d2b	 Bytes: 5
  %loadMem_401d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2b = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2b)
  store %struct.Memory* %call_401d2b, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm2	 RIP: 401d30	 Bytes: 5
  %loadMem_401d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d30 = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d30)
  store %struct.Memory* %call_401d30, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 401d35	 Bytes: 4
  %loadMem_401d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d35 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d35)
  store %struct.Memory* %call_401d35, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 401d39	 Bytes: 4
  %loadMem_401d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d39 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d39)
  store %struct.Memory* %call_401d39, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 401d3d	 Bytes: 5
  %loadMem_401d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3d)
  store %struct.Memory* %call_401d3d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 401d42	 Bytes: 4
  %loadMem_401d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d42 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d42)
  store %struct.Memory* %call_401d42, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 401d46	 Bytes: 4
  %loadMem_401d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d46 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d46)
  store %struct.Memory* %call_401d46, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 401d4a	 Bytes: 4
  %loadMem_401d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4a = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4a)
  store %struct.Memory* %call_401d4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401cba	 RIP: 401d4e	 Bytes: 5
  %loadMem_401d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4e = call %struct.Memory* @routine_jmpq_.L_401cba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4e, i64 -148, i64 5)
  store %struct.Memory* %call_401d4e, %struct.Memory** %MEMORY

  br label %block_.L_401cba

  ; Code: .L_401d53:	 RIP: 401d53	 Bytes: 0
block_.L_401d53:

  ; Code: movq $0x6032d0, %rdi	 RIP: 401d53	 Bytes: 10
  %loadMem_401d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d53 = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d53)
  store %struct.Memory* %call_401d53, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401d5d	 Bytes: 5
  %loadMem1_401d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d5d = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d5d, i64 2163, i64 5, i64 5)
  store %struct.Memory* %call1_401d5d, %struct.Memory** %MEMORY

  %loadMem2_401d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d5d = load i64, i64* %3
  %call2_401d5d = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401d5d, %struct.Memory* %loadMem2_401d5d)
  store %struct.Memory* %call2_401d5d, %struct.Memory** %MEMORY

  ; Code: movq $0x40293e, %rdi	 RIP: 401d62	 Bytes: 10
  %loadMem_401d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d62 = call %struct.Memory* @routine_movq__0x40293e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d62)
  store %struct.Memory* %call_401d62, %struct.Memory** %MEMORY

  ; Code: movsd 0x9b4(%rip), %xmm0	 RIP: 401d6c	 Bytes: 8
  %loadMem_401d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6c = call %struct.Memory* @routine_movsd_0x9b4__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6c)
  store %struct.Memory* %call_401d6c, %struct.Memory** %MEMORY

  ; Code: movsd 0xa0c(%rip), %xmm1	 RIP: 401d74	 Bytes: 8
  %loadMem_401d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d74 = call %struct.Memory* @routine_movsd_0xa0c__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d74)
  store %struct.Memory* %call_401d74, %struct.Memory** %MEMORY

  ; Code: movsd 0xa0c(%rip), %xmm2	 RIP: 401d7c	 Bytes: 8
  %loadMem_401d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7c = call %struct.Memory* @routine_movsd_0xa0c__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7c)
  store %struct.Memory* %call_401d7c, %struct.Memory** %MEMORY

  ; Code: movq $0x8000000000000000, %rcx	 RIP: 401d84	 Bytes: 10
  %loadMem_401d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d84 = call %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d84)
  store %struct.Memory* %call_401d84, %struct.Memory** %MEMORY

  ; Code: movsd 0xa02(%rip), %xmm3	 RIP: 401d8e	 Bytes: 8
  %loadMem_401d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8e = call %struct.Memory* @routine_movsd_0xa02__rip____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8e)
  store %struct.Memory* %call_401d8e, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm4	 RIP: 401d96	 Bytes: 9
  %loadMem_401d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d96 = call %struct.Memory* @routine_movsd_0x603148___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d96)
  store %struct.Memory* %call_401d96, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm4	 RIP: 401d9f	 Bytes: 9
  %loadMem_401d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9f = call %struct.Memory* @routine_mulsd_0x6032d8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9f)
  store %struct.Memory* %call_401d9f, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm4	 RIP: 401da8	 Bytes: 9
  %loadMem_401da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da8 = call %struct.Memory* @routine_subsd_0x603290___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da8)
  store %struct.Memory* %call_401da8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm4, 0x6031e8	 RIP: 401db1	 Bytes: 9
  %loadMem_401db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db1 = call %struct.Memory* @routine_movsd__xmm4__0x6031e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db1)
  store %struct.Memory* %call_401db1, %struct.Memory** %MEMORY

  ; Code: movsd 0x6031e8, %xmm4	 RIP: 401dba	 Bytes: 9
  %loadMem_401dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dba = call %struct.Memory* @routine_movsd_0x6031e8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dba)
  store %struct.Memory* %call_401dba, %struct.Memory** %MEMORY

  ; Code: divsd %xmm3, %xmm4	 RIP: 401dc3	 Bytes: 4
  %loadMem_401dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc3 = call %struct.Memory* @routine_divsd__xmm3___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc3)
  store %struct.Memory* %call_401dc3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm4, 0x6031f0	 RIP: 401dc7	 Bytes: 9
  %loadMem_401dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc7 = call %struct.Memory* @routine_movsd__xmm4__0x6031f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc7)
  store %struct.Memory* %call_401dc7, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 401dd0	 Bytes: 9
  %loadMem_401dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd0 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd0)
  store %struct.Memory* %call_401dd0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x30(%rbp)	 RIP: 401dd9	 Bytes: 5
  %loadMem_401dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd9 = call %struct.Memory* @routine_movsd__xmm3__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd9)
  store %struct.Memory* %call_401dd9, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm3	 RIP: 401dde	 Bytes: 5
  %loadMem_401dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dde = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dde)
  store %struct.Memory* %call_401dde, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm3	 RIP: 401de3	 Bytes: 5
  %loadMem_401de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de3 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de3)
  store %struct.Memory* %call_401de3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x18(%rbp)	 RIP: 401de8	 Bytes: 5
  %loadMem_401de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de8 = call %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de8)
  store %struct.Memory* %call_401de8, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 401ded	 Bytes: 5
  %loadMem_401ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ded = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ded)
  store %struct.Memory* %call_401ded, %struct.Memory** %MEMORY

  ; Code: movq %xmm3, %rdx	 RIP: 401df2	 Bytes: 5
  %loadMem_401df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df2 = call %struct.Memory* @routine_movq__xmm3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df2)
  store %struct.Memory* %call_401df2, %struct.Memory** %MEMORY

  ; Code: xorq %rcx, %rdx	 RIP: 401df7	 Bytes: 3
  %loadMem_401df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df7 = call %struct.Memory* @routine_xorq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df7)
  store %struct.Memory* %call_401df7, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm3	 RIP: 401dfa	 Bytes: 5
  %loadMem_401dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfa = call %struct.Memory* @routine_movq__rdx___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfa)
  store %struct.Memory* %call_401dfa, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 401dff	 Bytes: 5
  %loadMem_401dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dff = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dff)
  store %struct.Memory* %call_401dff, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm5	 RIP: 401e04	 Bytes: 5
  %loadMem_401e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e04 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e04)
  store %struct.Memory* %call_401e04, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm5	 RIP: 401e09	 Bytes: 5
  %loadMem_401e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e09 = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e09)
  store %struct.Memory* %call_401e09, %struct.Memory** %MEMORY

  ; Code: divsd %xmm5, %xmm4	 RIP: 401e0e	 Bytes: 4
  %loadMem_401e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0e = call %struct.Memory* @routine_divsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0e)
  store %struct.Memory* %call_401e0e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm4, %xmm3	 RIP: 401e12	 Bytes: 4
  %loadMem_401e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e12 = call %struct.Memory* @routine_subsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e12)
  store %struct.Memory* %call_401e12, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm4	 RIP: 401e16	 Bytes: 5
  %loadMem_401e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e16 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e16)
  store %struct.Memory* %call_401e16, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm5	 RIP: 401e1b	 Bytes: 5
  %loadMem_401e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1b = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1b)
  store %struct.Memory* %call_401e1b, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm5	 RIP: 401e20	 Bytes: 5
  %loadMem_401e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e20 = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e20)
  store %struct.Memory* %call_401e20, %struct.Memory** %MEMORY

  ; Code: divsd %xmm5, %xmm4	 RIP: 401e25	 Bytes: 4
  %loadMem_401e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e25 = call %struct.Memory* @routine_divsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e25)
  store %struct.Memory* %call_401e25, %struct.Memory** %MEMORY

  ; Code: subsd %xmm4, %xmm3	 RIP: 401e29	 Bytes: 4
  %loadMem_401e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e29 = call %struct.Memory* @routine_subsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e29)
  store %struct.Memory* %call_401e29, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm4	 RIP: 401e2d	 Bytes: 5
  %loadMem_401e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2d = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2d)
  store %struct.Memory* %call_401e2d, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm5	 RIP: 401e32	 Bytes: 5
  %loadMem_401e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e32 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e32)
  store %struct.Memory* %call_401e32, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm5	 RIP: 401e37	 Bytes: 5
  %loadMem_401e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e37 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e37)
  store %struct.Memory* %call_401e37, %struct.Memory** %MEMORY

  ; Code: addsd -0x28(%rbp), %xmm5	 RIP: 401e3c	 Bytes: 5
  %loadMem_401e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3c = call %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3c)
  store %struct.Memory* %call_401e3c, %struct.Memory** %MEMORY

  ; Code: divsd %xmm5, %xmm4	 RIP: 401e41	 Bytes: 4
  %loadMem_401e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e41 = call %struct.Memory* @routine_divsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e41)
  store %struct.Memory* %call_401e41, %struct.Memory** %MEMORY

  ; Code: subsd %xmm4, %xmm3	 RIP: 401e45	 Bytes: 4
  %loadMem_401e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e45 = call %struct.Memory* @routine_subsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e45)
  store %struct.Memory* %call_401e45, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 401e49	 Bytes: 9
  %loadMem_401e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e49 = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e49)
  store %struct.Memory* %call_401e49, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm2	 RIP: 401e52	 Bytes: 5
  %loadMem_401e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e52 = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e52)
  store %struct.Memory* %call_401e52, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 401e57	 Bytes: 9
  %loadMem_401e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e57 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e57)
  store %struct.Memory* %call_401e57, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm4	 RIP: 401e60	 Bytes: 9
  %loadMem_401e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e60 = call %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e60)
  store %struct.Memory* %call_401e60, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm4	 RIP: 401e69	 Bytes: 5
  %loadMem_401e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e69 = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e69)
  store %struct.Memory* %call_401e69, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 401e6e	 Bytes: 4
  %loadMem_401e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6e = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6e)
  store %struct.Memory* %call_401e6e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401e72	 Bytes: 4
  %loadMem_401e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e72 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e72)
  store %struct.Memory* %call_401e72, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 401e76	 Bytes: 9
  %loadMem_401e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e76 = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e76)
  store %struct.Memory* %call_401e76, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x6032b8, %rcx	 RIP: 401e7f	 Bytes: 10
  %loadMem_401e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7f = call %struct.Memory* @routine_cvttsd2si_0x6032b8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7f)
  store %struct.Memory* %call_401e7f, %struct.Memory** %MEMORY

  ; Code: imulq $0xfffff830, %rcx, %rcx	 RIP: 401e89	 Bytes: 7
  %loadMem_401e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e89 = call %struct.Memory* @routine_imulq__0xfffff830___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e89)
  store %struct.Memory* %call_401e89, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 401e90	 Bytes: 4
  %loadMem_401e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e90 = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e90)
  store %struct.Memory* %call_401e90, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm2	 RIP: 401e94	 Bytes: 6
  %loadMem_401e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e94 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e94)
  store %struct.Memory* %call_401e94, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032a0, %xmm2	 RIP: 401e9a	 Bytes: 9
  %loadMem_401e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9a = call %struct.Memory* @routine_divsd_0x6032a0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9a)
  store %struct.Memory* %call_401e9a, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm2, %rcx	 RIP: 401ea3	 Bytes: 5
  %loadMem_401ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea3 = call %struct.Memory* @routine_cvttsd2si__xmm2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea3)
  store %struct.Memory* %call_401ea3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x50(%rbp)	 RIP: 401ea8	 Bytes: 4
  %loadMem_401ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea8 = call %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea8)
  store %struct.Memory* %call_401ea8, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032b8, %xmm1	 RIP: 401eac	 Bytes: 9
  %loadMem_401eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eac = call %struct.Memory* @routine_addsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eac)
  store %struct.Memory* %call_401eac, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 401eb5	 Bytes: 9
  %loadMem_401eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb5 = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb5)
  store %struct.Memory* %call_401eb5, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 401ebe	 Bytes: 9
  %loadMem_401ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebe = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebe)
  store %struct.Memory* %call_401ebe, %struct.Memory** %MEMORY

  ; Code: divsd 0x6031f0, %xmm1	 RIP: 401ec7	 Bytes: 9
  %loadMem_401ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec7 = call %struct.Memory* @routine_divsd_0x6031f0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec7)
  store %struct.Memory* %call_401ec7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6031f8	 RIP: 401ed0	 Bytes: 9
  %loadMem_401ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed0 = call %struct.Memory* @routine_movsd__xmm1__0x6031f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed0)
  store %struct.Memory* %call_401ed0, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 401ed9	 Bytes: 3
  %loadMem_401ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed9 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed9)
  store %struct.Memory* %call_401ed9, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 401edc	 Bytes: 9
  %loadMem_401edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401edc = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401edc)
  store %struct.Memory* %call_401edc, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 401ee5	 Bytes: 3
  %loadMem_401ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee5 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee5)
  store %struct.Memory* %call_401ee5, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031e8, %xmm2	 RIP: 401ee8	 Bytes: 9
  %loadMem_401ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee8 = call %struct.Memory* @routine_mulsd_0x6031e8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee8)
  store %struct.Memory* %call_401ee8, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031f8, %xmm0	 RIP: 401ef1	 Bytes: 9
  %loadMem_401ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef1 = call %struct.Memory* @routine_mulsd_0x6031f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef1)
  store %struct.Memory* %call_401ef1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x118(%rbp)	 RIP: 401efa	 Bytes: 8
  %loadMem_401efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efa = call %struct.Memory* @routine_movsd__xmm0__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efa)
  store %struct.Memory* %call_401efa, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 401f02	 Bytes: 3
  %loadMem_401f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f02 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f02)
  store %struct.Memory* %call_401f02, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 401f05	 Bytes: 3
  %loadMem_401f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f05 = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f05)
  store %struct.Memory* %call_401f05, %struct.Memory** %MEMORY

  ; Code: movsd -0x118(%rbp), %xmm2	 RIP: 401f08	 Bytes: 8
  %loadMem_401f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f08 = call %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f08)
  store %struct.Memory* %call_401f08, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 401f10	 Bytes: 6
  %loadMem_401f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f10 = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f10)
  store %struct.Memory* %call_401f10, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 401f16	 Bytes: 2
  %loadMem_401f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f16 = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f16)
  store %struct.Memory* %call_401f16, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401f18	 Bytes: 5
  %loadMem1_401f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f18 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f18, i64 -6872, i64 5, i64 5)
  store %struct.Memory* %call1_401f18, %struct.Memory** %MEMORY

  %loadMem2_401f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f18 = load i64, i64* %3
  %call2_401f18 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_401f18, %struct.Memory* %loadMem2_401f18)
  store %struct.Memory* %call2_401f18, %struct.Memory** %MEMORY

  ; Code: movq $0x6032d0, %rdi	 RIP: 401f1d	 Bytes: 10
  %loadMem_401f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1d = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1d)
  store %struct.Memory* %call_401f1d, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 401f27	 Bytes: 3
  %loadMem_401f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f27 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f27)
  store %struct.Memory* %call_401f27, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm1	 RIP: 401f2a	 Bytes: 9
  %loadMem_401f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2a = call %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2a)
  store %struct.Memory* %call_401f2a, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032c0, %xmm2	 RIP: 401f33	 Bytes: 9
  %loadMem_401f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f33 = call %struct.Memory* @routine_movsd_0x6032c0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f33)
  store %struct.Memory* %call_401f33, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x50(%rbp), %xmm3	 RIP: 401f3c	 Bytes: 6
  %loadMem_401f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3c = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3c)
  store %struct.Memory* %call_401f3c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401f42	 Bytes: 4
  %loadMem_401f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f42 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f42)
  store %struct.Memory* %call_401f42, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 401f46	 Bytes: 4
  %loadMem_401f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f46 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f46)
  store %struct.Memory* %call_401f46, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 401f4a	 Bytes: 5
  %loadMem_401f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4a = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4a)
  store %struct.Memory* %call_401f4a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 401f4f	 Bytes: 5
  %loadMem_401f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4f)
  store %struct.Memory* %call_401f4f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 401f54	 Bytes: 5
  %loadMem_401f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f54 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f54)
  store %struct.Memory* %call_401f54, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x120(%rbp)	 RIP: 401f59	 Bytes: 6
  %loadMem_401f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f59 = call %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f59)
  store %struct.Memory* %call_401f59, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 401f5f	 Bytes: 5
  %loadMem1_401f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f5f = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f5f, i64 1649, i64 5, i64 5)
  store %struct.Memory* %call1_401f5f, %struct.Memory** %MEMORY

  %loadMem2_401f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f5f = load i64, i64* %3
  %call2_401f5f = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_401f5f, %struct.Memory* %loadMem2_401f5f)
  store %struct.Memory* %call2_401f5f, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x48(%rbp)	 RIP: 401f64	 Bytes: 8
  %loadMem_401f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f64 = call %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f64)
  store %struct.Memory* %call_401f64, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x124(%rbp)	 RIP: 401f6c	 Bytes: 6
  %loadMem_401f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6c = call %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6c)
  store %struct.Memory* %call_401f6c, %struct.Memory** %MEMORY

  ; Code: .L_401f72:	 RIP: 401f72	 Bytes: 0
  br label %block_.L_401f72
block_.L_401f72:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 401f72	 Bytes: 4
  %loadMem_401f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f72 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f72)
  store %struct.Memory* %call_401f72, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 401f76	 Bytes: 4
  %loadMem_401f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f76 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f76)
  store %struct.Memory* %call_401f76, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rcx	 RIP: 401f7a	 Bytes: 4
  %loadMem_401f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7a = call %struct.Memory* @routine_subq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7a)
  store %struct.Memory* %call_401f7a, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 401f7e	 Bytes: 3
  %loadMem_401f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7e = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7e)
  store %struct.Memory* %call_401f7e, %struct.Memory** %MEMORY

  ; Code: jg .L_4020ab	 RIP: 401f81	 Bytes: 6
  %loadMem_401f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f81 = call %struct.Memory* @routine_jg_.L_4020ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f81, i8* %BRANCH_TAKEN, i64 298, i64 6, i64 6)
  store %struct.Memory* %call_401f81, %struct.Memory** %MEMORY

  %loadBr_401f81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401f81 = icmp eq i8 %loadBr_401f81, 1
  br i1 %cmpBr_401f81, label %block_.L_4020ab, label %block_401f87

block_401f87:
  ; Code: cvtsi2sdq -0x48(%rbp), %xmm0	 RIP: 401f87	 Bytes: 6
  %loadMem_401f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f87 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f87)
  store %struct.Memory* %call_401f87, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 401f8d	 Bytes: 5
  %loadMem_401f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8d = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8d)
  store %struct.Memory* %call_401f8d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 401f92	 Bytes: 5
  %loadMem_401f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f92 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f92)
  store %struct.Memory* %call_401f92, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm0	 RIP: 401f97	 Bytes: 5
  %loadMem_401f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f97 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f97)
  store %struct.Memory* %call_401f97, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm0	 RIP: 401f9c	 Bytes: 5
  %loadMem_401f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9c = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9c)
  store %struct.Memory* %call_401f9c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x28(%rbp)	 RIP: 401fa1	 Bytes: 5
  %loadMem_401fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa1)
  store %struct.Memory* %call_401fa1, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm0	 RIP: 401fa6	 Bytes: 5
  %loadMem_401fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa6 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa6)
  store %struct.Memory* %call_401fa6, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm1	 RIP: 401fab	 Bytes: 5
  %loadMem_401fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fab = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fab)
  store %struct.Memory* %call_401fab, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm2	 RIP: 401fb0	 Bytes: 5
  %loadMem_401fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb0 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb0)
  store %struct.Memory* %call_401fb0, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 401fb5	 Bytes: 5
  %loadMem_401fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb5 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb5)
  store %struct.Memory* %call_401fb5, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 401fba	 Bytes: 5
  %loadMem_401fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fba = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fba)
  store %struct.Memory* %call_401fba, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm5	 RIP: 401fbf	 Bytes: 9
  %loadMem_401fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbf = call %struct.Memory* @routine_movsd_0x6030a0___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbf)
  store %struct.Memory* %call_401fbf, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm5	 RIP: 401fc8	 Bytes: 5
  %loadMem_401fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc8 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc8)
  store %struct.Memory* %call_401fc8, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm5	 RIP: 401fcd	 Bytes: 9
  %loadMem_401fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcd = call %struct.Memory* @routine_addsd_0x603098___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcd)
  store %struct.Memory* %call_401fcd, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 401fd6	 Bytes: 4
  %loadMem_401fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd6 = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd6)
  store %struct.Memory* %call_401fd6, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm4	 RIP: 401fda	 Bytes: 9
  %loadMem_401fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fda = call %struct.Memory* @routine_addsd_0x603090___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fda)
  store %struct.Memory* %call_401fda, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 401fe3	 Bytes: 4
  %loadMem_401fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe3 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe3)
  store %struct.Memory* %call_401fe3, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm3	 RIP: 401fe7	 Bytes: 9
  %loadMem_401fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe7 = call %struct.Memory* @routine_addsd_0x603088___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe7)
  store %struct.Memory* %call_401fe7, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 401ff0	 Bytes: 4
  %loadMem_401ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff0 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff0)
  store %struct.Memory* %call_401ff0, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm2	 RIP: 401ff4	 Bytes: 9
  %loadMem_401ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff4 = call %struct.Memory* @routine_addsd_0x603080___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff4)
  store %struct.Memory* %call_401ff4, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 401ffd	 Bytes: 4
  %loadMem_401ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffd = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffd)
  store %struct.Memory* %call_401ffd, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm1	 RIP: 402001	 Bytes: 9
  %loadMem_402001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402001 = call %struct.Memory* @routine_addsd_0x603078___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402001)
  store %struct.Memory* %call_402001, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 40200a	 Bytes: 4
  %loadMem_40200a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200a = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200a)
  store %struct.Memory* %call_40200a, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm0	 RIP: 40200e	 Bytes: 9
  %loadMem_40200e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200e = call %struct.Memory* @routine_addsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200e)
  store %struct.Memory* %call_40200e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 402017	 Bytes: 5
  %loadMem_402017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402017 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402017)
  store %struct.Memory* %call_402017, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 40201c	 Bytes: 5
  %loadMem_40201c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201c = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201c)
  store %struct.Memory* %call_40201c, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm1	 RIP: 402021	 Bytes: 5
  %loadMem_402021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402021 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402021)
  store %struct.Memory* %call_402021, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm1	 RIP: 402026	 Bytes: 5
  %loadMem_402026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402026 = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402026)
  store %struct.Memory* %call_402026, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm1	 RIP: 40202b	 Bytes: 5
  %loadMem_40202b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202b = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202b)
  store %struct.Memory* %call_40202b, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm2	 RIP: 402030	 Bytes: 9
  %loadMem_402030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402030 = call %struct.Memory* @routine_movsd_0x603068___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402030)
  store %struct.Memory* %call_402030, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 402039	 Bytes: 5
  %loadMem_402039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402039 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402039)
  store %struct.Memory* %call_402039, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm2	 RIP: 40203e	 Bytes: 9
  %loadMem_40203e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203e = call %struct.Memory* @routine_addsd_0x603060___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203e)
  store %struct.Memory* %call_40203e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 402047	 Bytes: 5
  %loadMem_402047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402047 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402047)
  store %struct.Memory* %call_402047, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm2	 RIP: 40204c	 Bytes: 9
  %loadMem_40204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204c = call %struct.Memory* @routine_addsd_0x603058___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204c)
  store %struct.Memory* %call_40204c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 402055	 Bytes: 5
  %loadMem_402055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402055 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402055)
  store %struct.Memory* %call_402055, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm2	 RIP: 40205a	 Bytes: 9
  %loadMem_40205a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205a = call %struct.Memory* @routine_addsd_0x603050___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205a)
  store %struct.Memory* %call_40205a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 402063	 Bytes: 5
  %loadMem_402063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402063 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402063)
  store %struct.Memory* %call_402063, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm2	 RIP: 402068	 Bytes: 9
  %loadMem_402068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402068 = call %struct.Memory* @routine_addsd_0x603048___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402068)
  store %struct.Memory* %call_402068, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 402071	 Bytes: 5
  %loadMem_402071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402071 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402071)
  store %struct.Memory* %call_402071, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm2	 RIP: 402076	 Bytes: 9
  %loadMem_402076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402076 = call %struct.Memory* @routine_addsd_0x603040___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402076)
  store %struct.Memory* %call_402076, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm2	 RIP: 40207f	 Bytes: 5
  %loadMem_40207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207f = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207f)
  store %struct.Memory* %call_40207f, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm2	 RIP: 402084	 Bytes: 9
  %loadMem_402084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402084 = call %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402084)
  store %struct.Memory* %call_402084, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 40208d	 Bytes: 4
  %loadMem_40208d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208d = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208d)
  store %struct.Memory* %call_40208d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 402091	 Bytes: 4
  %loadMem_402091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402091 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402091)
  store %struct.Memory* %call_402091, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 402095	 Bytes: 5
  %loadMem_402095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402095 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402095)
  store %struct.Memory* %call_402095, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 40209a	 Bytes: 4
  %loadMem_40209a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209a)
  store %struct.Memory* %call_40209a, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40209e	 Bytes: 4
  %loadMem_40209e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209e = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209e)
  store %struct.Memory* %call_40209e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4020a2	 Bytes: 4
  %loadMem_4020a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a2 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a2)
  store %struct.Memory* %call_4020a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401f72	 RIP: 4020a6	 Bytes: 5
  %loadMem_4020a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a6 = call %struct.Memory* @routine_jmpq_.L_401f72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a6, i64 -308, i64 5)
  store %struct.Memory* %call_4020a6, %struct.Memory** %MEMORY

  br label %block_.L_401f72

  ; Code: .L_4020ab:	 RIP: 4020ab	 Bytes: 0
block_.L_4020ab:

  ; Code: movq $0x6032d0, %rdi	 RIP: 4020ab	 Bytes: 10
  %loadMem_4020ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ab = call %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ab)
  store %struct.Memory* %call_4020ab, %struct.Memory** %MEMORY

  ; Code: callq .dtime	 RIP: 4020b5	 Bytes: 5
  %loadMem1_4020b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4020b5 = call %struct.Memory* @routine_callq_.dtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4020b5, i64 1307, i64 5, i64 5)
  store %struct.Memory* %call1_4020b5, %struct.Memory** %MEMORY

  %loadMem2_4020b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4020b5 = load i64, i64* %3
  %call2_4020b5 = call %struct.Memory* @sub_4025d0.dtime(%struct.State* %0, i64  %loadPC_4020b5, %struct.Memory* %loadMem2_4020b5)
  store %struct.Memory* %call2_4020b5, %struct.Memory** %MEMORY

  ; Code: movq $0x402962, %rdi	 RIP: 4020ba	 Bytes: 10
  %loadMem_4020ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ba = call %struct.Memory* @routine_movq__0x402962___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ba)
  store %struct.Memory* %call_4020ba, %struct.Memory** %MEMORY

  ; Code: movsd 0x65c(%rip), %xmm0	 RIP: 4020c4	 Bytes: 8
  %loadMem_4020c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c4 = call %struct.Memory* @routine_movsd_0x65c__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c4)
  store %struct.Memory* %call_4020c4, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ec(%rip), %xmm1	 RIP: 4020cc	 Bytes: 8
  %loadMem_4020cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cc = call %struct.Memory* @routine_movsd_0x6ec__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cc)
  store %struct.Memory* %call_4020cc, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ec(%rip), %xmm2	 RIP: 4020d4	 Bytes: 8
  %loadMem_4020d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d4 = call %struct.Memory* @routine_movsd_0x6ec__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d4)
  store %struct.Memory* %call_4020d4, %struct.Memory** %MEMORY

  ; Code: movsd 0x603148, %xmm3	 RIP: 4020dc	 Bytes: 9
  %loadMem_4020dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020dc = call %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020dc)
  store %struct.Memory* %call_4020dc, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032d8, %xmm3	 RIP: 4020e5	 Bytes: 9
  %loadMem_4020e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e5 = call %struct.Memory* @routine_mulsd_0x6032d8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e5)
  store %struct.Memory* %call_4020e5, %struct.Memory** %MEMORY

  ; Code: subsd 0x603290, %xmm3	 RIP: 4020ee	 Bytes: 9
  %loadMem_4020ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ee = call %struct.Memory* @routine_subsd_0x603290___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ee)
  store %struct.Memory* %call_4020ee, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603200	 RIP: 4020f7	 Bytes: 9
  %loadMem_4020f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f7 = call %struct.Memory* @routine_movsd__xmm3__0x603200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f7)
  store %struct.Memory* %call_4020f7, %struct.Memory** %MEMORY

  ; Code: movsd 0x603270, %xmm3	 RIP: 402100	 Bytes: 9
  %loadMem_402100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402100 = call %struct.Memory* @routine_movsd_0x603270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402100)
  store %struct.Memory* %call_402100, %struct.Memory** %MEMORY

  ; Code: divsd 0x6032c0, %xmm3	 RIP: 402109	 Bytes: 9
  %loadMem_402109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402109 = call %struct.Memory* @routine_divsd_0x6032c0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402109)
  store %struct.Memory* %call_402109, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x18(%rbp)	 RIP: 402112	 Bytes: 5
  %loadMem_402112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402112 = call %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402112)
  store %struct.Memory* %call_402112, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 402117	 Bytes: 5
  %loadMem_402117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402117 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402117)
  store %struct.Memory* %call_402117, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm3	 RIP: 40211c	 Bytes: 5
  %loadMem_40211c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211c = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211c)
  store %struct.Memory* %call_40211c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, -0x28(%rbp)	 RIP: 402121	 Bytes: 5
  %loadMem_402121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402121 = call %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402121)
  store %struct.Memory* %call_402121, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm3	 RIP: 402126	 Bytes: 5
  %loadMem_402126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402126 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402126)
  store %struct.Memory* %call_402126, %struct.Memory** %MEMORY

  ; Code: movsd 0x603068, %xmm4	 RIP: 40212b	 Bytes: 9
  %loadMem_40212b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212b = call %struct.Memory* @routine_movsd_0x603068___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212b)
  store %struct.Memory* %call_40212b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 402134	 Bytes: 5
  %loadMem_402134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402134 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402134)
  store %struct.Memory* %call_402134, %struct.Memory** %MEMORY

  ; Code: addsd 0x603060, %xmm4	 RIP: 402139	 Bytes: 9
  %loadMem_402139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402139 = call %struct.Memory* @routine_addsd_0x603060___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402139)
  store %struct.Memory* %call_402139, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 402142	 Bytes: 5
  %loadMem_402142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402142 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402142)
  store %struct.Memory* %call_402142, %struct.Memory** %MEMORY

  ; Code: addsd 0x603058, %xmm4	 RIP: 402147	 Bytes: 9
  %loadMem_402147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402147 = call %struct.Memory* @routine_addsd_0x603058___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402147)
  store %struct.Memory* %call_402147, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 402150	 Bytes: 5
  %loadMem_402150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402150 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402150)
  store %struct.Memory* %call_402150, %struct.Memory** %MEMORY

  ; Code: addsd 0x603050, %xmm4	 RIP: 402155	 Bytes: 9
  %loadMem_402155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402155 = call %struct.Memory* @routine_addsd_0x603050___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402155)
  store %struct.Memory* %call_402155, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 40215e	 Bytes: 5
  %loadMem_40215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215e = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215e)
  store %struct.Memory* %call_40215e, %struct.Memory** %MEMORY

  ; Code: addsd 0x603048, %xmm4	 RIP: 402163	 Bytes: 9
  %loadMem_402163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402163 = call %struct.Memory* @routine_addsd_0x603048___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402163)
  store %struct.Memory* %call_402163, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 40216c	 Bytes: 5
  %loadMem_40216c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216c = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216c)
  store %struct.Memory* %call_40216c, %struct.Memory** %MEMORY

  ; Code: addsd 0x603040, %xmm4	 RIP: 402171	 Bytes: 9
  %loadMem_402171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402171 = call %struct.Memory* @routine_addsd_0x603040___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402171)
  store %struct.Memory* %call_402171, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm4	 RIP: 40217a	 Bytes: 5
  %loadMem_40217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217a = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217a)
  store %struct.Memory* %call_40217a, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm4	 RIP: 40217f	 Bytes: 9
  %loadMem_40217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217f = call %struct.Memory* @routine_addsd_0x6032a8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217f)
  store %struct.Memory* %call_40217f, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 402188	 Bytes: 4
  %loadMem_402188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402188 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402188)
  store %struct.Memory* %call_402188, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 40218c	 Bytes: 9
  %loadMem_40218c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218c = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218c)
  store %struct.Memory* %call_40218c, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm3	 RIP: 402195	 Bytes: 5
  %loadMem_402195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402195 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402195)
  store %struct.Memory* %call_402195, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm4	 RIP: 40219a	 Bytes: 5
  %loadMem_40219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219a = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219a)
  store %struct.Memory* %call_40219a, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm5	 RIP: 40219f	 Bytes: 5
  %loadMem_40219f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219f = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219f)
  store %struct.Memory* %call_40219f, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm6	 RIP: 4021a4	 Bytes: 5
  %loadMem_4021a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a4 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a4)
  store %struct.Memory* %call_4021a4, %struct.Memory** %MEMORY

  ; Code: movsd -0x28(%rbp), %xmm7	 RIP: 4021a9	 Bytes: 5
  %loadMem_4021a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a9 = call %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a9)
  store %struct.Memory* %call_4021a9, %struct.Memory** %MEMORY

  ; Code: movsd 0x6030a0, %xmm8	 RIP: 4021ae	 Bytes: 10
  %loadMem_4021ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ae = call %struct.Memory* @routine_movsd_0x6030a0___xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ae)
  store %struct.Memory* %call_4021ae, %struct.Memory** %MEMORY

  ; Code: mulsd -0x28(%rbp), %xmm8	 RIP: 4021b8	 Bytes: 6
  %loadMem_4021b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b8 = call %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b8)
  store %struct.Memory* %call_4021b8, %struct.Memory** %MEMORY

  ; Code: addsd 0x603098, %xmm8	 RIP: 4021be	 Bytes: 10
  %loadMem_4021be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021be = call %struct.Memory* @routine_addsd_0x603098___xmm8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021be)
  store %struct.Memory* %call_4021be, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm8, %xmm7	 RIP: 4021c8	 Bytes: 5
  %loadMem_4021c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c8 = call %struct.Memory* @routine_mulsd__xmm8___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c8)
  store %struct.Memory* %call_4021c8, %struct.Memory** %MEMORY

  ; Code: addsd 0x603090, %xmm7	 RIP: 4021cd	 Bytes: 9
  %loadMem_4021cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021cd = call %struct.Memory* @routine_addsd_0x603090___xmm7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021cd)
  store %struct.Memory* %call_4021cd, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm7, %xmm6	 RIP: 4021d6	 Bytes: 4
  %loadMem_4021d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d6 = call %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d6)
  store %struct.Memory* %call_4021d6, %struct.Memory** %MEMORY

  ; Code: addsd 0x603088, %xmm6	 RIP: 4021da	 Bytes: 9
  %loadMem_4021da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021da = call %struct.Memory* @routine_addsd_0x603088___xmm6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021da)
  store %struct.Memory* %call_4021da, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm6, %xmm5	 RIP: 4021e3	 Bytes: 4
  %loadMem_4021e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e3 = call %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e3)
  store %struct.Memory* %call_4021e3, %struct.Memory** %MEMORY

  ; Code: addsd 0x603080, %xmm5	 RIP: 4021e7	 Bytes: 9
  %loadMem_4021e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e7 = call %struct.Memory* @routine_addsd_0x603080___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e7)
  store %struct.Memory* %call_4021e7, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 4021f0	 Bytes: 4
  %loadMem_4021f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f0 = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f0)
  store %struct.Memory* %call_4021f0, %struct.Memory** %MEMORY

  ; Code: addsd 0x603078, %xmm4	 RIP: 4021f4	 Bytes: 9
  %loadMem_4021f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f4 = call %struct.Memory* @routine_addsd_0x603078___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f4)
  store %struct.Memory* %call_4021f4, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 4021fd	 Bytes: 4
  %loadMem_4021fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fd = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fd)
  store %struct.Memory* %call_4021fd, %struct.Memory** %MEMORY

  ; Code: addsd 0x6032a8, %xmm3	 RIP: 402201	 Bytes: 9
  %loadMem_402201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402201 = call %struct.Memory* @routine_addsd_0x6032a8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402201)
  store %struct.Memory* %call_402201, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603268	 RIP: 40220a	 Bytes: 9
  %loadMem_40220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220a = call %struct.Memory* @routine_movsd__xmm3__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220a)
  store %struct.Memory* %call_40220a, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 402213	 Bytes: 9
  %loadMem_402213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402213 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402213)
  store %struct.Memory* %call_402213, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603268, %xmm3	 RIP: 40221c	 Bytes: 9
  %loadMem_40221c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221c = call %struct.Memory* @routine_mulsd_0x603268___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221c)
  store %struct.Memory* %call_40221c, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603268, %xmm3	 RIP: 402225	 Bytes: 9
  %loadMem_402225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402225 = call %struct.Memory* @routine_mulsd_0x603268___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402225)
  store %struct.Memory* %call_402225, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x6032b8	 RIP: 40222e	 Bytes: 9
  %loadMem_40222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222e = call %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222e)
  store %struct.Memory* %call_40222e, %struct.Memory** %MEMORY

  ; Code: movsd 0x603200, %xmm3	 RIP: 402237	 Bytes: 9
  %loadMem_402237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402237 = call %struct.Memory* @routine_movsd_0x603200___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402237)
  store %struct.Memory* %call_402237, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 402240	 Bytes: 4
  %loadMem_402240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402240 = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402240)
  store %struct.Memory* %call_402240, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603208	 RIP: 402244	 Bytes: 9
  %loadMem_402244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402244 = call %struct.Memory* @routine_movsd__xmm3__0x603208(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402244)
  store %struct.Memory* %call_402244, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm2	 RIP: 40224d	 Bytes: 5
  %loadMem_40224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224d = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224d)
  store %struct.Memory* %call_40224d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm3	 RIP: 402252	 Bytes: 9
  %loadMem_402252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402252 = call %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402252)
  store %struct.Memory* %call_402252, %struct.Memory** %MEMORY

  ; Code: movsd 0x603130, %xmm4	 RIP: 40225b	 Bytes: 9
  %loadMem_40225b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225b = call %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225b)
  store %struct.Memory* %call_40225b, %struct.Memory** %MEMORY

  ; Code: mulsd -0x10(%rbp), %xmm4	 RIP: 402264	 Bytes: 5
  %loadMem_402264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402264 = call %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402264)
  store %struct.Memory* %call_402264, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 402269	 Bytes: 4
  %loadMem_402269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402269 = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402269)
  store %struct.Memory* %call_402269, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 40226d	 Bytes: 4
  %loadMem_40226d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226d = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226d)
  store %struct.Memory* %call_40226d, %struct.Memory** %MEMORY

  ; Code: divsd 0x603130, %xmm2	 RIP: 402271	 Bytes: 9
  %loadMem_402271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402271 = call %struct.Memory* @routine_divsd_0x603130___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402271)
  store %struct.Memory* %call_402271, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6032b8	 RIP: 40227a	 Bytes: 9
  %loadMem_40227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227a = call %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227a)
  store %struct.Memory* %call_40227a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603268	 RIP: 402283	 Bytes: 9
  %loadMem_402283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402283 = call %struct.Memory* @routine_movsd__xmm1__0x603268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402283)
  store %struct.Memory* %call_402283, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032b8, %xmm1	 RIP: 40228c	 Bytes: 9
  %loadMem_40228c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228c = call %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228c)
  store %struct.Memory* %call_40228c, %struct.Memory** %MEMORY

  ; Code: subsd 0x603268, %xmm1	 RIP: 402295	 Bytes: 9
  %loadMem_402295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402295 = call %struct.Memory* @routine_subsd_0x603268___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402295)
  store %struct.Memory* %call_402295, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6032b0	 RIP: 40229e	 Bytes: 9
  %loadMem_40229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229e = call %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229e)
  store %struct.Memory* %call_40229e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 4022a7	 Bytes: 9
  %loadMem_4022a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a7 = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a7)
  store %struct.Memory* %call_4022a7, %struct.Memory** %MEMORY

  ; Code: divsd 0x603208, %xmm1	 RIP: 4022b0	 Bytes: 9
  %loadMem_4022b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b0 = call %struct.Memory* @routine_divsd_0x603208___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b0)
  store %struct.Memory* %call_4022b0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603210	 RIP: 4022b9	 Bytes: 9
  %loadMem_4022b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b9 = call %struct.Memory* @routine_movsd__xmm1__0x603210(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b9)
  store %struct.Memory* %call_4022b9, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 4022c2	 Bytes: 3
  %loadMem_4022c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c2 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c2)
  store %struct.Memory* %call_4022c2, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6032b0, %xmm1	 RIP: 4022c5	 Bytes: 9
  %loadMem_4022c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c5 = call %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c5)
  store %struct.Memory* %call_4022c5, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 4022ce	 Bytes: 3
  %loadMem_4022ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ce = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ce)
  store %struct.Memory* %call_4022ce, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603200, %xmm2	 RIP: 4022d1	 Bytes: 9
  %loadMem_4022d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d1 = call %struct.Memory* @routine_mulsd_0x603200___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d1)
  store %struct.Memory* %call_4022d1, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603210, %xmm0	 RIP: 4022da	 Bytes: 9
  %loadMem_4022da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022da = call %struct.Memory* @routine_mulsd_0x603210___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022da)
  store %struct.Memory* %call_4022da, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x130(%rbp)	 RIP: 4022e3	 Bytes: 8
  %loadMem_4022e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e3)
  store %struct.Memory* %call_4022e3, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4022eb	 Bytes: 3
  %loadMem_4022eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022eb = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022eb)
  store %struct.Memory* %call_4022eb, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm1	 RIP: 4022ee	 Bytes: 3
  %loadMem_4022ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ee = call %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ee)
  store %struct.Memory* %call_4022ee, %struct.Memory** %MEMORY

  ; Code: movsd -0x130(%rbp), %xmm2	 RIP: 4022f1	 Bytes: 8
  %loadMem_4022f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f1 = call %struct.Memory* @routine_movsd_MINUS0x130__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f1)
  store %struct.Memory* %call_4022f1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x134(%rbp)	 RIP: 4022f9	 Bytes: 6
  %loadMem_4022f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f9 = call %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f9)
  store %struct.Memory* %call_4022f9, %struct.Memory** %MEMORY

  ; Code: movb $0x3, %al	 RIP: 4022ff	 Bytes: 2
  %loadMem_4022ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ff = call %struct.Memory* @routine_movb__0x3___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ff)
  store %struct.Memory* %call_4022ff, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 402301	 Bytes: 5
  %loadMem1_402301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402301 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402301, i64 -7873, i64 5, i64 5)
  store %struct.Memory* %call1_402301, %struct.Memory** %MEMORY

  %loadMem2_402301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402301 = load i64, i64* %3
  %call2_402301 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_402301, %struct.Memory* %loadMem2_402301)
  store %struct.Memory* %call2_402301, %struct.Memory** %MEMORY

  ; Code: movq $0x402810, %rdi	 RIP: 402306	 Bytes: 10
  %loadMem_402306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402306 = call %struct.Memory* @routine_movq__0x402810___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402306)
  store %struct.Memory* %call_402306, %struct.Memory** %MEMORY

  ; Code: movsd 0x488(%rip), %xmm0	 RIP: 402310	 Bytes: 8
  %loadMem_402310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402310 = call %struct.Memory* @routine_movsd_0x488__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402310)
  store %struct.Memory* %call_402310, %struct.Memory** %MEMORY

  ; Code: movsd 0x488(%rip), %xmm1	 RIP: 402318	 Bytes: 8
  %loadMem_402318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402318 = call %struct.Memory* @routine_movsd_0x488__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402318)
  store %struct.Memory* %call_402318, %struct.Memory** %MEMORY

  ; Code: movsd 0x488(%rip), %xmm2	 RIP: 402320	 Bytes: 8
  %loadMem_402320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402320 = call %struct.Memory* @routine_movsd_0x488__rip____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402320)
  store %struct.Memory* %call_402320, %struct.Memory** %MEMORY

  ; Code: movsd 0x488(%rip), %xmm3	 RIP: 402328	 Bytes: 8
  %loadMem_402328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402328 = call %struct.Memory* @routine_movsd_0x488__rip____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402328)
  store %struct.Memory* %call_402328, %struct.Memory** %MEMORY

  ; Code: movsd 0x603138, %xmm4	 RIP: 402330	 Bytes: 9
  %loadMem_402330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402330 = call %struct.Memory* @routine_movsd_0x603138___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402330)
  store %struct.Memory* %call_402330, %struct.Memory** %MEMORY

  ; Code: movsd 0x603170, %xmm5	 RIP: 402339	 Bytes: 9
  %loadMem_402339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402339 = call %struct.Memory* @routine_movsd_0x603170___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402339)
  store %struct.Memory* %call_402339, %struct.Memory** %MEMORY

  ; Code: subsd 0x603168, %xmm5	 RIP: 402342	 Bytes: 9
  %loadMem_402342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402342 = call %struct.Memory* @routine_subsd_0x603168___xmm5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402342)
  store %struct.Memory* %call_402342, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm5, %xmm4	 RIP: 40234b	 Bytes: 4
  %loadMem_40234b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234b = call %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234b)
  store %struct.Memory* %call_40234b, %struct.Memory** %MEMORY

  ; Code: addsd 0x603188, %xmm4	 RIP: 40234f	 Bytes: 9
  %loadMem_40234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234f = call %struct.Memory* @routine_addsd_0x603188___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234f)
  store %struct.Memory* %call_40234f, %struct.Memory** %MEMORY

  ; Code: divsd %xmm3, %xmm4	 RIP: 402358	 Bytes: 4
  %loadMem_402358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402358 = call %struct.Memory* @routine_divsd__xmm3___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402358)
  store %struct.Memory* %call_402358, %struct.Memory** %MEMORY

  ; Code: movsd %xmm4, 0x603218	 RIP: 40235c	 Bytes: 9
  %loadMem_40235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235c = call %struct.Memory* @routine_movsd__xmm4__0x603218(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235c)
  store %struct.Memory* %call_40235c, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm3	 RIP: 402365	 Bytes: 9
  %loadMem_402365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402365 = call %struct.Memory* @routine_movsd_0x6032a8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402365)
  store %struct.Memory* %call_402365, %struct.Memory** %MEMORY

  ; Code: divsd 0x603218, %xmm3	 RIP: 40236e	 Bytes: 9
  %loadMem_40236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236e = call %struct.Memory* @routine_divsd_0x603218___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236e)
  store %struct.Memory* %call_40236e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603220	 RIP: 402377	 Bytes: 9
  %loadMem_402377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402377 = call %struct.Memory* @routine_movsd__xmm3__0x603220(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402377)
  store %struct.Memory* %call_402377, %struct.Memory** %MEMORY

  ; Code: movsd 0x603150, %xmm3	 RIP: 402380	 Bytes: 9
  %loadMem_402380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402380 = call %struct.Memory* @routine_movsd_0x603150___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402380)
  store %struct.Memory* %call_402380, %struct.Memory** %MEMORY

  ; Code: addsd 0x603188, %xmm3	 RIP: 402389	 Bytes: 9
  %loadMem_402389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402389 = call %struct.Memory* @routine_addsd_0x603188___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402389)
  store %struct.Memory* %call_402389, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031a0, %xmm3	 RIP: 402392	 Bytes: 9
  %loadMem_402392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402392 = call %struct.Memory* @routine_addsd_0x6031a0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402392)
  store %struct.Memory* %call_402392, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031b8, %xmm3	 RIP: 40239b	 Bytes: 9
  %loadMem_40239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239b = call %struct.Memory* @routine_addsd_0x6031b8___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239b)
  store %struct.Memory* %call_40239b, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031d0, %xmm3	 RIP: 4023a4	 Bytes: 9
  %loadMem_4023a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a4 = call %struct.Memory* @routine_addsd_0x6031d0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a4)
  store %struct.Memory* %call_4023a4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603228	 RIP: 4023ad	 Bytes: 9
  %loadMem_4023ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ad = call %struct.Memory* @routine_movsd__xmm3__0x603228(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ad)
  store %struct.Memory* %call_4023ad, %struct.Memory** %MEMORY

  ; Code: movsd 0x603228, %xmm3	 RIP: 4023b6	 Bytes: 9
  %loadMem_4023b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b6 = call %struct.Memory* @routine_movsd_0x603228___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b6)
  store %struct.Memory* %call_4023b6, %struct.Memory** %MEMORY

  ; Code: movsd 0x603298, %xmm4	 RIP: 4023bf	 Bytes: 9
  %loadMem_4023bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023bf = call %struct.Memory* @routine_movsd_0x603298___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023bf)
  store %struct.Memory* %call_4023bf, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6031e8, %xmm4	 RIP: 4023c8	 Bytes: 9
  %loadMem_4023c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c8 = call %struct.Memory* @routine_mulsd_0x6031e8___xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c8)
  store %struct.Memory* %call_4023c8, %struct.Memory** %MEMORY

  ; Code: addsd %xmm4, %xmm3	 RIP: 4023d1	 Bytes: 4
  %loadMem_4023d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d1 = call %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d1)
  store %struct.Memory* %call_4023d1, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm3	 RIP: 4023d5	 Bytes: 4
  %loadMem_4023d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d5 = call %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d5)
  store %struct.Memory* %call_4023d5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm3, 0x603228	 RIP: 4023d9	 Bytes: 9
  %loadMem_4023d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d9 = call %struct.Memory* @routine_movsd__xmm3__0x603228(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d9)
  store %struct.Memory* %call_4023d9, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm2	 RIP: 4023e2	 Bytes: 9
  %loadMem_4023e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e2 = call %struct.Memory* @routine_movsd_0x6032a8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e2)
  store %struct.Memory* %call_4023e2, %struct.Memory** %MEMORY

  ; Code: divsd 0x603228, %xmm2	 RIP: 4023eb	 Bytes: 9
  %loadMem_4023eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023eb = call %struct.Memory* @routine_divsd_0x603228___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023eb)
  store %struct.Memory* %call_4023eb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x603230	 RIP: 4023f4	 Bytes: 9
  %loadMem_4023f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f4 = call %struct.Memory* @routine_movsd__xmm2__0x603230(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f4)
  store %struct.Memory* %call_4023f4, %struct.Memory** %MEMORY

  ; Code: movsd 0x603150, %xmm2	 RIP: 4023fd	 Bytes: 9
  %loadMem_4023fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fd = call %struct.Memory* @routine_movsd_0x603150___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fd)
  store %struct.Memory* %call_4023fd, %struct.Memory** %MEMORY

  ; Code: addsd 0x603188, %xmm2	 RIP: 402406	 Bytes: 9
  %loadMem_402406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402406 = call %struct.Memory* @routine_addsd_0x603188___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402406)
  store %struct.Memory* %call_402406, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031a0, %xmm2	 RIP: 40240f	 Bytes: 9
  %loadMem_40240f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240f = call %struct.Memory* @routine_addsd_0x6031a0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240f)
  store %struct.Memory* %call_40240f, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031b8, %xmm2	 RIP: 402418	 Bytes: 9
  %loadMem_402418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402418 = call %struct.Memory* @routine_addsd_0x6031b8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402418)
  store %struct.Memory* %call_402418, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031d0, %xmm2	 RIP: 402421	 Bytes: 9
  %loadMem_402421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402421 = call %struct.Memory* @routine_addsd_0x6031d0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402421)
  store %struct.Memory* %call_402421, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x603238	 RIP: 40242a	 Bytes: 9
  %loadMem_40242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242a = call %struct.Memory* @routine_movsd__xmm2__0x603238(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242a)
  store %struct.Memory* %call_40242a, %struct.Memory** %MEMORY

  ; Code: movsd 0x603238, %xmm2	 RIP: 402433	 Bytes: 9
  %loadMem_402433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402433 = call %struct.Memory* @routine_movsd_0x603238___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402433)
  store %struct.Memory* %call_402433, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031e8, %xmm2	 RIP: 40243c	 Bytes: 9
  %loadMem_40243c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243c = call %struct.Memory* @routine_addsd_0x6031e8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243c)
  store %struct.Memory* %call_40243c, %struct.Memory** %MEMORY

  ; Code: addsd 0x603200, %xmm2	 RIP: 402445	 Bytes: 9
  %loadMem_402445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402445 = call %struct.Memory* @routine_addsd_0x603200___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402445)
  store %struct.Memory* %call_402445, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm2	 RIP: 40244e	 Bytes: 4
  %loadMem_40244e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244e = call %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244e)
  store %struct.Memory* %call_40244e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x603238	 RIP: 402452	 Bytes: 9
  %loadMem_402452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402452 = call %struct.Memory* @routine_movsd__xmm2__0x603238(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402452)
  store %struct.Memory* %call_402452, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm1	 RIP: 40245b	 Bytes: 9
  %loadMem_40245b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245b = call %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245b)
  store %struct.Memory* %call_40245b, %struct.Memory** %MEMORY

  ; Code: divsd 0x603238, %xmm1	 RIP: 402464	 Bytes: 9
  %loadMem_402464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402464 = call %struct.Memory* @routine_divsd_0x603238___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402464)
  store %struct.Memory* %call_402464, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603240	 RIP: 40246d	 Bytes: 9
  %loadMem_40246d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246d = call %struct.Memory* @routine_movsd__xmm1__0x603240(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246d)
  store %struct.Memory* %call_40246d, %struct.Memory** %MEMORY

  ; Code: movsd 0x603188, %xmm1	 RIP: 402476	 Bytes: 9
  %loadMem_402476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402476 = call %struct.Memory* @routine_movsd_0x603188___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402476)
  store %struct.Memory* %call_402476, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031a0, %xmm1	 RIP: 40247f	 Bytes: 9
  %loadMem_40247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247f = call %struct.Memory* @routine_addsd_0x6031a0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247f)
  store %struct.Memory* %call_40247f, %struct.Memory** %MEMORY

  ; Code: addsd 0x6031d0, %xmm1	 RIP: 402488	 Bytes: 9
  %loadMem_402488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402488 = call %struct.Memory* @routine_addsd_0x6031d0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402488)
  store %struct.Memory* %call_402488, %struct.Memory** %MEMORY

  ; Code: addsd 0x603200, %xmm1	 RIP: 402491	 Bytes: 9
  %loadMem_402491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402491 = call %struct.Memory* @routine_addsd_0x603200___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402491)
  store %struct.Memory* %call_402491, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm1	 RIP: 40249a	 Bytes: 4
  %loadMem_40249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249a = call %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249a)
  store %struct.Memory* %call_40249a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x603248	 RIP: 40249e	 Bytes: 9
  %loadMem_40249e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249e = call %struct.Memory* @routine_movsd__xmm1__0x603248(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249e)
  store %struct.Memory* %call_40249e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6032a8, %xmm0	 RIP: 4024a7	 Bytes: 9
  %loadMem_4024a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a7 = call %struct.Memory* @routine_movsd_0x6032a8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a7)
  store %struct.Memory* %call_4024a7, %struct.Memory** %MEMORY

  ; Code: divsd 0x603248, %xmm0	 RIP: 4024b0	 Bytes: 9
  %loadMem_4024b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b0 = call %struct.Memory* @routine_divsd_0x603248___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b0)
  store %struct.Memory* %call_4024b0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x603250	 RIP: 4024b9	 Bytes: 9
  %loadMem_4024b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b9 = call %struct.Memory* @routine_movsd__xmm0__0x603250(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b9)
  store %struct.Memory* %call_4024b9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x138(%rbp)	 RIP: 4024c2	 Bytes: 6
  %loadMem_4024c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c2 = call %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c2)
  store %struct.Memory* %call_4024c2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4024c8	 Bytes: 2
  %loadMem_4024c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c8)
  store %struct.Memory* %call_4024c8, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4024ca	 Bytes: 5
  %loadMem1_4024ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4024ca = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4024ca, i64 -8330, i64 5, i64 5)
  store %struct.Memory* %call1_4024ca, %struct.Memory** %MEMORY

  %loadMem2_4024ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4024ca = load i64, i64* %3
  %call2_4024ca = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_4024ca, %struct.Memory* %loadMem2_4024ca)
  store %struct.Memory* %call2_4024ca, %struct.Memory** %MEMORY

  ; Code: movq $0x402986, %rdi	 RIP: 4024cf	 Bytes: 10
  %loadMem_4024cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024cf = call %struct.Memory* @routine_movq__0x402986___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024cf)
  store %struct.Memory* %call_4024cf, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 4024d9	 Bytes: 4
  %loadMem_4024d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d9 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d9)
  store %struct.Memory* %call_4024d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x13c(%rbp)	 RIP: 4024dd	 Bytes: 6
  %loadMem_4024dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024dd = call %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024dd)
  store %struct.Memory* %call_4024dd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4024e3	 Bytes: 2
  %loadMem_4024e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e3)
  store %struct.Memory* %call_4024e3, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4024e5	 Bytes: 5
  %loadMem1_4024e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4024e5 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4024e5, i64 -8357, i64 5, i64 5)
  store %struct.Memory* %call1_4024e5, %struct.Memory** %MEMORY

  %loadMem2_4024e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4024e5 = load i64, i64* %3
  %call2_4024e5 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_4024e5, %struct.Memory* %loadMem2_4024e5)
  store %struct.Memory* %call2_4024e5, %struct.Memory** %MEMORY

  ; Code: movq $0x4029a2, %rdi	 RIP: 4024ea	 Bytes: 10
  %loadMem_4024ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ea = call %struct.Memory* @routine_movq__0x4029a2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ea)
  store %struct.Memory* %call_4024ea, %struct.Memory** %MEMORY

  ; Code: movsd 0x22c(%rip), %xmm0	 RIP: 4024f4	 Bytes: 8
  %loadMem_4024f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f4 = call %struct.Memory* @routine_movsd_0x22c__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f4)
  store %struct.Memory* %call_4024f4, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603290, %xmm0	 RIP: 4024fc	 Bytes: 9
  %loadMem_4024fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024fc = call %struct.Memory* @routine_mulsd_0x603290___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024fc)
  store %struct.Memory* %call_4024fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x140(%rbp)	 RIP: 402505	 Bytes: 6
  %loadMem_402505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402505 = call %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402505)
  store %struct.Memory* %call_402505, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 40250b	 Bytes: 2
  %loadMem_40250b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40250b = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40250b)
  store %struct.Memory* %call_40250b, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 40250d	 Bytes: 5
  %loadMem1_40250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40250d = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40250d, i64 -8397, i64 5, i64 5)
  store %struct.Memory* %call1_40250d, %struct.Memory** %MEMORY

  %loadMem2_40250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40250d = load i64, i64* %3
  %call2_40250d = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_40250d, %struct.Memory* %loadMem2_40250d)
  store %struct.Memory* %call2_40250d, %struct.Memory** %MEMORY

  ; Code: movq $0x4029c0, %rdi	 RIP: 402512	 Bytes: 10
  %loadMem_402512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402512 = call %struct.Memory* @routine_movq__0x4029c0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402512)
  store %struct.Memory* %call_402512, %struct.Memory** %MEMORY

  ; Code: movsd 0x204(%rip), %xmm0	 RIP: 40251c	 Bytes: 8
  %loadMem_40251c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251c = call %struct.Memory* @routine_movsd_0x204__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251c)
  store %struct.Memory* %call_40251c, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603220, %xmm0	 RIP: 402524	 Bytes: 9
  %loadMem_402524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402524 = call %struct.Memory* @routine_mulsd_0x603220___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402524)
  store %struct.Memory* %call_402524, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x144(%rbp)	 RIP: 40252d	 Bytes: 6
  %loadMem_40252d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40252d = call %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40252d)
  store %struct.Memory* %call_40252d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 402533	 Bytes: 2
  %loadMem_402533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402533 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402533)
  store %struct.Memory* %call_402533, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 402535	 Bytes: 5
  %loadMem1_402535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402535 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402535, i64 -8437, i64 5, i64 5)
  store %struct.Memory* %call1_402535, %struct.Memory** %MEMORY

  %loadMem2_402535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402535 = load i64, i64* %3
  %call2_402535 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_402535, %struct.Memory* %loadMem2_402535)
  store %struct.Memory* %call2_402535, %struct.Memory** %MEMORY

  ; Code: movq $0x4029de, %rdi	 RIP: 40253a	 Bytes: 10
  %loadMem_40253a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253a = call %struct.Memory* @routine_movq__0x4029de___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253a)
  store %struct.Memory* %call_40253a, %struct.Memory** %MEMORY

  ; Code: movsd 0x1dc(%rip), %xmm0	 RIP: 402544	 Bytes: 8
  %loadMem_402544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402544 = call %struct.Memory* @routine_movsd_0x1dc__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402544)
  store %struct.Memory* %call_402544, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603230, %xmm0	 RIP: 40254c	 Bytes: 9
  %loadMem_40254c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254c = call %struct.Memory* @routine_mulsd_0x603230___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254c)
  store %struct.Memory* %call_40254c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x148(%rbp)	 RIP: 402555	 Bytes: 6
  %loadMem_402555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402555 = call %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402555)
  store %struct.Memory* %call_402555, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 40255b	 Bytes: 2
  %loadMem_40255b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40255b = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40255b)
  store %struct.Memory* %call_40255b, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 40255d	 Bytes: 5
  %loadMem1_40255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40255d = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40255d, i64 -8477, i64 5, i64 5)
  store %struct.Memory* %call1_40255d, %struct.Memory** %MEMORY

  %loadMem2_40255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40255d = load i64, i64* %3
  %call2_40255d = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_40255d, %struct.Memory* %loadMem2_40255d)
  store %struct.Memory* %call2_40255d, %struct.Memory** %MEMORY

  ; Code: movq $0x4029fc, %rdi	 RIP: 402562	 Bytes: 10
  %loadMem_402562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402562 = call %struct.Memory* @routine_movq__0x4029fc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402562)
  store %struct.Memory* %call_402562, %struct.Memory** %MEMORY

  ; Code: movsd 0x1b4(%rip), %xmm0	 RIP: 40256c	 Bytes: 8
  %loadMem_40256c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256c = call %struct.Memory* @routine_movsd_0x1b4__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256c)
  store %struct.Memory* %call_40256c, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603240, %xmm0	 RIP: 402574	 Bytes: 9
  %loadMem_402574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402574 = call %struct.Memory* @routine_mulsd_0x603240___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402574)
  store %struct.Memory* %call_402574, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14c(%rbp)	 RIP: 40257d	 Bytes: 6
  %loadMem_40257d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257d = call %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257d)
  store %struct.Memory* %call_40257d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 402583	 Bytes: 2
  %loadMem_402583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402583 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402583)
  store %struct.Memory* %call_402583, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 402585	 Bytes: 5
  %loadMem1_402585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402585 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402585, i64 -8517, i64 5, i64 5)
  store %struct.Memory* %call1_402585, %struct.Memory** %MEMORY

  %loadMem2_402585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402585 = load i64, i64* %3
  %call2_402585 = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_402585, %struct.Memory* %loadMem2_402585)
  store %struct.Memory* %call2_402585, %struct.Memory** %MEMORY

  ; Code: movq $0x402a1a, %rdi	 RIP: 40258a	 Bytes: 10
  %loadMem_40258a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258a = call %struct.Memory* @routine_movq__0x402a1a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258a)
  store %struct.Memory* %call_40258a, %struct.Memory** %MEMORY

  ; Code: movsd 0x18c(%rip), %xmm0	 RIP: 402594	 Bytes: 8
  %loadMem_402594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402594 = call %struct.Memory* @routine_movsd_0x18c__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402594)
  store %struct.Memory* %call_402594, %struct.Memory** %MEMORY

  ; Code: mulsd 0x603250, %xmm0	 RIP: 40259c	 Bytes: 9
  %loadMem_40259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40259c = call %struct.Memory* @routine_mulsd_0x603250___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40259c)
  store %struct.Memory* %call_40259c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x150(%rbp)	 RIP: 4025a5	 Bytes: 6
  %loadMem_4025a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a5 = call %struct.Memory* @routine_movl__eax__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a5)
  store %struct.Memory* %call_4025a5, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4025ab	 Bytes: 2
  %loadMem_4025ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ab = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ab)
  store %struct.Memory* %call_4025ab, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4025ad	 Bytes: 5
  %loadMem1_4025ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4025ad = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4025ad, i64 -8557, i64 5, i64 5)
  store %struct.Memory* %call1_4025ad, %struct.Memory** %MEMORY

  %loadMem2_4025ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4025ad = load i64, i64* %3
  %call2_4025ad = call %struct.Memory* @sub_400440.printf_plt(%struct.State* %0, i64  %loadPC_4025ad, %struct.Memory* %loadMem2_4025ad)
  store %struct.Memory* %call2_4025ad, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4025b2	 Bytes: 2
  %loadMem_4025b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b2 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b2)
  store %struct.Memory* %call_4025b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x154(%rbp)	 RIP: 4025b4	 Bytes: 6
  %loadMem_4025b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b4 = call %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b4)
  store %struct.Memory* %call_4025b4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4025ba	 Bytes: 2
  %loadMem_4025ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ba = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ba)
  store %struct.Memory* %call_4025ba, %struct.Memory** %MEMORY

  ; Code: addq $0x160, %rsp	 RIP: 4025bc	 Bytes: 7
  %loadMem_4025bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025bc = call %struct.Memory* @routine_addq__0x160___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025bc)
  store %struct.Memory* %call_4025bc, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4025c3	 Bytes: 1
  %loadMem_4025c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c3 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c3)
  store %struct.Memory* %call_4025c3, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4025c4	 Bytes: 1
  %loadMem_4025c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c4 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c4)
  store %struct.Memory* %call_4025c4, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4025c4
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

define %struct.Memory* @routine_subq__0x160___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 352)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x402810___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204560)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 0)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8
  store i64 %7, i64* %5, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %9, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x4027d8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204504)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402812___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204562)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_movsd_0x214f__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x214f__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x214f__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x214f__rip____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x214f__rip____xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x214f__rip____xmm5(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x214f__rip____xmm6(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8535
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x3d09__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15625)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sitofp i64 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x38__rbp____xmm7(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm7___xmm6(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = bitcast %union.vec128_t* %XMM7 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm6__0x603148(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304072, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm4__0x6032f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304496, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x1e848000__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 512000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd__xmm5__0x603270(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304368, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm4__0x6032a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304424, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm3__0x603130(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304048, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm2__0x6032c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304448, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm1__0x603298(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304408, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x603138(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304056, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032a8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304424)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x6032a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304416, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x402842___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204610)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x6032d0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 6304464)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.dtime(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* %2, %struct.State* %0, i64 %7, i64 %9)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__0x6032b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304440, i8* %8)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movsd_0x6032b8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304440)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032f0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304496)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_400811(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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

define %struct.Memory* @routine_shlq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd_0x6032a8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304424)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cvtsi2sdq_MINUS0x58__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subq__0x1___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %2, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %3, i64 %4
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jg_.L_4007d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x6030f0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303984)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x6030f8___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303992)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_0x603100___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304000)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x6030f0___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303984)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x603108___xmm6(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304008)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm7(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_0x603110___xmm7(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304016)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addsd__xmm7___xmm6(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = bitcast %union.vec128_t* %XMM7 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %union.vec128_t* %XMM6 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm5___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM5 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40070b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movsd_0x6032d8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304472)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %2, %6
  %8 = icmp ugt i64 %6, %2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %2
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %2, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_jne_.L_40080c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_400811(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_400696(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movsd_0x1efd__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7941
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd_0x6032a0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304416)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x603148(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304072, i8* %8)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jg_.L_400879(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_400868(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_40084e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movsd_0x603148___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304072)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_0x6032d8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304472)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm1__0x603290(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304400, i8* %8)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %3 to double*
  %8 = load double, double* %7
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd_0x603290___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304400)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jbe_.L_4008c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm0__0x603290(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304400, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x402866___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204646)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x1e52__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7770
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x1e52__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7770
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x1e52__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7770
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x603148___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304072)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_0x6032b8___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304440)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subsd_0x603290___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304400)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm3__0x603150(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304080, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6030f0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303984)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addsd_0x6030f8___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303992)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addsd_0x603100___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304000)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x6032a8___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304424)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addsd_0x6030f0___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303984)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addsd_0x603108___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304008)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addsd_0x603110___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304016)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_divsd__xmm4___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm3__0x6032b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304440, i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd__xmm3__0x603268(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304360, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x603150___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304080)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_divsd__xmm2___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm3__0x603158(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304088, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x6032b8___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304440)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addsd_0x603268___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304360)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x603130___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304048)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_divsd_0x603130___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304048)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm2__0x6032b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304440, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032a8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304424)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_divsd_0x6032b8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304440)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm2__0x603268(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304360, i8* %8)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I3MVnI7vec64_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x43E0000000000000
  %10 = fptosi double %7 to i64
  %11 = select i1 %9, i64 -9223372036854775808, i64 %10
  store i64 %11, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si_0x603268___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I3MVnI7vec64_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6304360)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_imulq__0x9c40___rax___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 40000)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = sitofp i64 %3 to double
  %6 = bitcast i8* %2 to double*
  store double %5, double* %6, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdq__rax___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_divsd_0x6032a0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304416)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x43E0000000000000
  %10 = fptosi double %7 to i64
  %11 = select i1 %9, i64 -9223372036854775808, i64 %10
  store i64 %11, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si__xmm2___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movsd_0x603268___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304360)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm2__0x6032b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304432, i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_divsd_0x603158___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304088)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm1__0x603160(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304096, i8* %8)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_mulsd_0x6032b0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304432)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_mulsd_0x603150___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304080)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_mulsd_0x603160___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304096)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x3___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 3)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 -9223372036854775808)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd_0x603138___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304056)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_xorq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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














define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jg_.L_400b35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_addsd_MINUS0x10__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_jmpq_.L_400ade(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movsd__xmm1__0x603168(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304104, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_ucomisd_0x603168___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304104)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jbe_.L_400b83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm0__0x603168(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304104, i8* %8)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm1__0x6032b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304432, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032b8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304440)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jg_.L_400c81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_0x603130___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
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




define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_divsd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_400bcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x40288a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204682)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x1a86__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6798
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x1a96__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6814
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x1a96__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 6814
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_mulsd_0x6032d8___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304472)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm3__0x603170(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304112, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x603170___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304112)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subsd_0x603168___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304104)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm3__0x603178(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304120, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032b8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304440)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_divsd_0x6032b0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304432)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cvttsd2si__xmm2___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
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


define %struct.Memory* @routine_movsd_0x603298___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304408)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_divsd_0x603138___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304056)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd_0x603138___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304056)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_divsd_MINUS0x20__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movsd_0x603268___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304360)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032b0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304432)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movsd__xmm1__0x6032e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304488, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032e8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304488)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subsd_0x603270___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304368)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm1__0x603278(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304376, i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_divsd_0x603178___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304120)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm1__0x603180(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304128, i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_mulsd_0x603278___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304376)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x603170___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304112)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subsd_0x603168___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304104)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_mulsd_0x603180___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304128)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movsd_0x603270___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304368)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6032c0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304448)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jg_.L_400f2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x6032a8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304424)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x603068___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303848)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subsd_0x603060___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303840)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x603058___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303832)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_subsd_0x603050___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303824)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x603048___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303816)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x603040___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303808)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x6032a8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304424)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_jmpq_.L_400e64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x4028ae___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4204718)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x17d8__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x17f8__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x17f8__rip____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 6144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movsd__xmm3__0x603188(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304136, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x603270___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304368)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_divsd_0x6032c0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304448)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x603068___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303848)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd_0x603060___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303840)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x603058___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303832)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_subsd_0x603050___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303824)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x603048___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303816)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x603040___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6303808)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addsd_0x6032a8___xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304424)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd_0x603188___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6304136)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd__xmm3__0x603190(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304144, i8* %8)
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movsd__xmm1__0x603268(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304360, i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subsd_0x603268___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304360)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_divsd_0x603190___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304144)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm1__0x603198(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6304152, i8* %8)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_mulsd_0x603188___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304136)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_mulsd_0x603198___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 6304152)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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












define %struct.Memory* @routine_movsd_0x603050___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303824)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__xmm1___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movq__rdx___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__0x603050(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6303824, i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x603060___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 6303840)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movsd__xmm1__0x603060(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6303840, i8* %8)
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}











