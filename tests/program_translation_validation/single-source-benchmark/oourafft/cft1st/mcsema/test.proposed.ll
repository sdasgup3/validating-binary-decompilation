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


define %struct.Memory* @cft1st(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .cft1st:	 RIP: 402890	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 402890	 Bytes: 1
  %loadMem_402890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402890 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402890)
  store %struct.Memory* %call_402890, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 402891	 Bytes: 3
  %loadMem_402891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402891 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402891)
  store %struct.Memory* %call_402891, %struct.Memory** %MEMORY

  ; Code: subq $0x18, %rsp	 RIP: 402894	 Bytes: 4
  %loadMem_402894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402894 = call %struct.Memory* @routine_subq__0x18___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402894)
  store %struct.Memory* %call_402894, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 402898	 Bytes: 3
  %loadMem_402898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402898 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402898)
  store %struct.Memory* %call_402898, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 40289b	 Bytes: 4
  %loadMem_40289b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40289b = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40289b)
  store %struct.Memory* %call_40289b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 40289f	 Bytes: 4
  %loadMem_40289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40289f = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40289f)
  store %struct.Memory* %call_40289f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028a3	 Bytes: 4
  %loadMem_4028a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a3)
  store %struct.Memory* %call_4028a3, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx), %xmm0	 RIP: 4028a7	 Bytes: 4
  %loadMem_4028a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a7 = call %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a7)
  store %struct.Memory* %call_4028a7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028ab	 Bytes: 4
  %loadMem_4028ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ab)
  store %struct.Memory* %call_4028ab, %struct.Memory** %MEMORY

  ; Code: addsd 0x10(%rdx), %xmm0	 RIP: 4028af	 Bytes: 5
  %loadMem_4028af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028af = call %struct.Memory* @routine_addsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028af)
  store %struct.Memory* %call_4028af, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 4028b4	 Bytes: 5
  %loadMem_4028b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028b4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028b4)
  store %struct.Memory* %call_4028b4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028b9	 Bytes: 4
  %loadMem_4028b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028b9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028b9)
  store %struct.Memory* %call_4028b9, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rdx), %xmm0	 RIP: 4028bd	 Bytes: 5
  %loadMem_4028bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028bd = call %struct.Memory* @routine_movsd_0x8__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028bd)
  store %struct.Memory* %call_4028bd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028c2	 Bytes: 4
  %loadMem_4028c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c2)
  store %struct.Memory* %call_4028c2, %struct.Memory** %MEMORY

  ; Code: addsd 0x18(%rdx), %xmm0	 RIP: 4028c6	 Bytes: 5
  %loadMem_4028c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c6 = call %struct.Memory* @routine_addsd_0x18__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c6)
  store %struct.Memory* %call_4028c6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 4028cb	 Bytes: 5
  %loadMem_4028cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028cb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028cb)
  store %struct.Memory* %call_4028cb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028d0	 Bytes: 4
  %loadMem_4028d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d0)
  store %struct.Memory* %call_4028d0, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx), %xmm0	 RIP: 4028d4	 Bytes: 4
  %loadMem_4028d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d4 = call %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d4)
  store %struct.Memory* %call_4028d4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028d8	 Bytes: 4
  %loadMem_4028d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028d8)
  store %struct.Memory* %call_4028d8, %struct.Memory** %MEMORY

  ; Code: subsd 0x10(%rdx), %xmm0	 RIP: 4028dc	 Bytes: 5
  %loadMem_4028dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028dc = call %struct.Memory* @routine_subsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028dc)
  store %struct.Memory* %call_4028dc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 4028e1	 Bytes: 5
  %loadMem_4028e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e1)
  store %struct.Memory* %call_4028e1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028e6	 Bytes: 4
  %loadMem_4028e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e6)
  store %struct.Memory* %call_4028e6, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rdx), %xmm0	 RIP: 4028ea	 Bytes: 5
  %loadMem_4028ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ea = call %struct.Memory* @routine_movsd_0x8__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ea)
  store %struct.Memory* %call_4028ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028ef	 Bytes: 4
  %loadMem_4028ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ef = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ef)
  store %struct.Memory* %call_4028ef, %struct.Memory** %MEMORY

  ; Code: subsd 0x18(%rdx), %xmm0	 RIP: 4028f3	 Bytes: 5
  %loadMem_4028f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028f3 = call %struct.Memory* @routine_subsd_0x18__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028f3)
  store %struct.Memory* %call_4028f3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 4028f8	 Bytes: 5
  %loadMem_4028f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028f8 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028f8)
  store %struct.Memory* %call_4028f8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4028fd	 Bytes: 4
  %loadMem_4028fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028fd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028fd)
  store %struct.Memory* %call_4028fd, %struct.Memory** %MEMORY

  ; Code: movsd 0x20(%rdx), %xmm0	 RIP: 402901	 Bytes: 5
  %loadMem_402901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402901 = call %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402901)
  store %struct.Memory* %call_402901, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402906	 Bytes: 4
  %loadMem_402906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402906 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402906)
  store %struct.Memory* %call_402906, %struct.Memory** %MEMORY

  ; Code: addsd 0x30(%rdx), %xmm0	 RIP: 40290a	 Bytes: 5
  %loadMem_40290a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40290a = call %struct.Memory* @routine_addsd_0x30__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40290a)
  store %struct.Memory* %call_40290a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 40290f	 Bytes: 5
  %loadMem_40290f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40290f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40290f)
  store %struct.Memory* %call_40290f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402914	 Bytes: 4
  %loadMem_402914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402914 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402914)
  store %struct.Memory* %call_402914, %struct.Memory** %MEMORY

  ; Code: movsd 0x28(%rdx), %xmm0	 RIP: 402918	 Bytes: 5
  %loadMem_402918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402918 = call %struct.Memory* @routine_movsd_0x28__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402918)
  store %struct.Memory* %call_402918, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40291d	 Bytes: 4
  %loadMem_40291d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40291d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40291d)
  store %struct.Memory* %call_40291d, %struct.Memory** %MEMORY

  ; Code: addsd 0x38(%rdx), %xmm0	 RIP: 402921	 Bytes: 5
  %loadMem_402921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402921 = call %struct.Memory* @routine_addsd_0x38__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402921)
  store %struct.Memory* %call_402921, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 402926	 Bytes: 8
  %loadMem_402926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402926 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402926)
  store %struct.Memory* %call_402926, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40292e	 Bytes: 4
  %loadMem_40292e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40292e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40292e)
  store %struct.Memory* %call_40292e, %struct.Memory** %MEMORY

  ; Code: movsd 0x20(%rdx), %xmm0	 RIP: 402932	 Bytes: 5
  %loadMem_402932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402932 = call %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402932)
  store %struct.Memory* %call_402932, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402937	 Bytes: 4
  %loadMem_402937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402937 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402937)
  store %struct.Memory* %call_402937, %struct.Memory** %MEMORY

  ; Code: subsd 0x30(%rdx), %xmm0	 RIP: 40293b	 Bytes: 5
  %loadMem_40293b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40293b = call %struct.Memory* @routine_subsd_0x30__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40293b)
  store %struct.Memory* %call_40293b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 402940	 Bytes: 8
  %loadMem_402940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402940 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402940)
  store %struct.Memory* %call_402940, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402948	 Bytes: 4
  %loadMem_402948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402948 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402948)
  store %struct.Memory* %call_402948, %struct.Memory** %MEMORY

  ; Code: movsd 0x28(%rdx), %xmm0	 RIP: 40294c	 Bytes: 5
  %loadMem_40294c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40294c = call %struct.Memory* @routine_movsd_0x28__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40294c)
  store %struct.Memory* %call_40294c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402951	 Bytes: 4
  %loadMem_402951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402951 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402951)
  store %struct.Memory* %call_402951, %struct.Memory** %MEMORY

  ; Code: subsd 0x38(%rdx), %xmm0	 RIP: 402955	 Bytes: 5
  %loadMem_402955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402955 = call %struct.Memory* @routine_subsd_0x38__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402955)
  store %struct.Memory* %call_402955, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 40295a	 Bytes: 8
  %loadMem_40295a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40295a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40295a)
  store %struct.Memory* %call_40295a, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 402962	 Bytes: 5
  %loadMem_402962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402962 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402962)
  store %struct.Memory* %call_402962, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm0	 RIP: 402967	 Bytes: 5
  %loadMem_402967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402967 = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402967)
  store %struct.Memory* %call_402967, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40296c	 Bytes: 4
  %loadMem_40296c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40296c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40296c)
  store %struct.Memory* %call_40296c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx)	 RIP: 402970	 Bytes: 4
  %loadMem_402970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402970 = call %struct.Memory* @routine_movsd__xmm0____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402970)
  store %struct.Memory* %call_402970, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 402974	 Bytes: 5
  %loadMem_402974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402974 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402974)
  store %struct.Memory* %call_402974, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm0	 RIP: 402979	 Bytes: 8
  %loadMem_402979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402979 = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402979)
  store %struct.Memory* %call_402979, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402981	 Bytes: 4
  %loadMem_402981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402981 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402981)
  store %struct.Memory* %call_402981, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x8(%rdx)	 RIP: 402985	 Bytes: 5
  %loadMem_402985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402985 = call %struct.Memory* @routine_movsd__xmm0__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402985)
  store %struct.Memory* %call_402985, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 40298a	 Bytes: 5
  %loadMem_40298a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40298a = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40298a)
  store %struct.Memory* %call_40298a, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm0	 RIP: 40298f	 Bytes: 5
  %loadMem_40298f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40298f = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40298f)
  store %struct.Memory* %call_40298f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402994	 Bytes: 4
  %loadMem_402994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402994 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402994)
  store %struct.Memory* %call_402994, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x20(%rdx)	 RIP: 402998	 Bytes: 5
  %loadMem_402998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402998 = call %struct.Memory* @routine_movsd__xmm0__0x20__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402998)
  store %struct.Memory* %call_402998, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 40299d	 Bytes: 5
  %loadMem_40299d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40299d = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40299d)
  store %struct.Memory* %call_40299d, %struct.Memory** %MEMORY

  ; Code: subsd -0x88(%rbp), %xmm0	 RIP: 4029a2	 Bytes: 8
  %loadMem_4029a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029a2 = call %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029a2)
  store %struct.Memory* %call_4029a2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4029aa	 Bytes: 4
  %loadMem_4029aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029aa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029aa)
  store %struct.Memory* %call_4029aa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x28(%rdx)	 RIP: 4029ae	 Bytes: 5
  %loadMem_4029ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ae = call %struct.Memory* @routine_movsd__xmm0__0x28__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ae)
  store %struct.Memory* %call_4029ae, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 4029b3	 Bytes: 5
  %loadMem_4029b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b3 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b3)
  store %struct.Memory* %call_4029b3, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 4029b8	 Bytes: 8
  %loadMem_4029b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b8 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b8)
  store %struct.Memory* %call_4029b8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4029c0	 Bytes: 4
  %loadMem_4029c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c0)
  store %struct.Memory* %call_4029c0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x10(%rdx)	 RIP: 4029c4	 Bytes: 5
  %loadMem_4029c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c4 = call %struct.Memory* @routine_movsd__xmm0__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c4)
  store %struct.Memory* %call_4029c4, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4029c9	 Bytes: 5
  %loadMem_4029c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c9 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c9)
  store %struct.Memory* %call_4029c9, %struct.Memory** %MEMORY

  ; Code: addsd -0x90(%rbp), %xmm0	 RIP: 4029ce	 Bytes: 8
  %loadMem_4029ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ce = call %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ce)
  store %struct.Memory* %call_4029ce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4029d6	 Bytes: 4
  %loadMem_4029d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d6)
  store %struct.Memory* %call_4029d6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x18(%rdx)	 RIP: 4029da	 Bytes: 5
  %loadMem_4029da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029da = call %struct.Memory* @routine_movsd__xmm0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029da)
  store %struct.Memory* %call_4029da, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 4029df	 Bytes: 5
  %loadMem_4029df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029df = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029df)
  store %struct.Memory* %call_4029df, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 4029e4	 Bytes: 8
  %loadMem_4029e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029e4 = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029e4)
  store %struct.Memory* %call_4029e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4029ec	 Bytes: 4
  %loadMem_4029ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029ec = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029ec)
  store %struct.Memory* %call_4029ec, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x30(%rdx)	 RIP: 4029f0	 Bytes: 5
  %loadMem_4029f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f0 = call %struct.Memory* @routine_movsd__xmm0__0x30__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f0)
  store %struct.Memory* %call_4029f0, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 4029f5	 Bytes: 5
  %loadMem_4029f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f5 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f5)
  store %struct.Memory* %call_4029f5, %struct.Memory** %MEMORY

  ; Code: subsd -0x90(%rbp), %xmm0	 RIP: 4029fa	 Bytes: 8
  %loadMem_4029fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029fa = call %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029fa)
  store %struct.Memory* %call_4029fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a02	 Bytes: 4
  %loadMem_402a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a02 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a02)
  store %struct.Memory* %call_402a02, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x38(%rdx)	 RIP: 402a06	 Bytes: 5
  %loadMem_402a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a06 = call %struct.Memory* @routine_movsd__xmm0__0x38__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a06)
  store %struct.Memory* %call_402a06, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402a0b	 Bytes: 4
  %loadMem_402a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a0b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a0b)
  store %struct.Memory* %call_402a0b, %struct.Memory** %MEMORY

  ; Code: movsd 0x10(%rdx), %xmm0	 RIP: 402a0f	 Bytes: 5
  %loadMem_402a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a0f = call %struct.Memory* @routine_movsd_0x10__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a0f)
  store %struct.Memory* %call_402a0f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x30(%rbp)	 RIP: 402a14	 Bytes: 5
  %loadMem_402a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a14 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a14)
  store %struct.Memory* %call_402a14, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a19	 Bytes: 4
  %loadMem_402a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a19 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a19)
  store %struct.Memory* %call_402a19, %struct.Memory** %MEMORY

  ; Code: movsd 0x40(%rdx), %xmm0	 RIP: 402a1d	 Bytes: 5
  %loadMem_402a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a1d = call %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a1d)
  store %struct.Memory* %call_402a1d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a22	 Bytes: 4
  %loadMem_402a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a22 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a22)
  store %struct.Memory* %call_402a22, %struct.Memory** %MEMORY

  ; Code: addsd 0x50(%rdx), %xmm0	 RIP: 402a26	 Bytes: 5
  %loadMem_402a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a26 = call %struct.Memory* @routine_addsd_0x50__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a26)
  store %struct.Memory* %call_402a26, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 402a2b	 Bytes: 5
  %loadMem_402a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a2b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a2b)
  store %struct.Memory* %call_402a2b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a30	 Bytes: 4
  %loadMem_402a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a30 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a30)
  store %struct.Memory* %call_402a30, %struct.Memory** %MEMORY

  ; Code: movsd 0x48(%rdx), %xmm0	 RIP: 402a34	 Bytes: 5
  %loadMem_402a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a34 = call %struct.Memory* @routine_movsd_0x48__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a34)
  store %struct.Memory* %call_402a34, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a39	 Bytes: 4
  %loadMem_402a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a39 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a39)
  store %struct.Memory* %call_402a39, %struct.Memory** %MEMORY

  ; Code: addsd 0x58(%rdx), %xmm0	 RIP: 402a3d	 Bytes: 5
  %loadMem_402a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a3d = call %struct.Memory* @routine_addsd_0x58__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a3d)
  store %struct.Memory* %call_402a3d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 402a42	 Bytes: 5
  %loadMem_402a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a42 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a42)
  store %struct.Memory* %call_402a42, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a47	 Bytes: 4
  %loadMem_402a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a47 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a47)
  store %struct.Memory* %call_402a47, %struct.Memory** %MEMORY

  ; Code: movsd 0x40(%rdx), %xmm0	 RIP: 402a4b	 Bytes: 5
  %loadMem_402a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a4b = call %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a4b)
  store %struct.Memory* %call_402a4b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a50	 Bytes: 4
  %loadMem_402a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a50)
  store %struct.Memory* %call_402a50, %struct.Memory** %MEMORY

  ; Code: subsd 0x50(%rdx), %xmm0	 RIP: 402a54	 Bytes: 5
  %loadMem_402a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a54 = call %struct.Memory* @routine_subsd_0x50__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a54)
  store %struct.Memory* %call_402a54, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 402a59	 Bytes: 5
  %loadMem_402a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a59 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a59)
  store %struct.Memory* %call_402a59, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a5e	 Bytes: 4
  %loadMem_402a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a5e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a5e)
  store %struct.Memory* %call_402a5e, %struct.Memory** %MEMORY

  ; Code: movsd 0x48(%rdx), %xmm0	 RIP: 402a62	 Bytes: 5
  %loadMem_402a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a62 = call %struct.Memory* @routine_movsd_0x48__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a62)
  store %struct.Memory* %call_402a62, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a67	 Bytes: 4
  %loadMem_402a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a67 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a67)
  store %struct.Memory* %call_402a67, %struct.Memory** %MEMORY

  ; Code: subsd 0x58(%rdx), %xmm0	 RIP: 402a6b	 Bytes: 5
  %loadMem_402a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a6b = call %struct.Memory* @routine_subsd_0x58__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a6b)
  store %struct.Memory* %call_402a6b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 402a70	 Bytes: 5
  %loadMem_402a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a70 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a70)
  store %struct.Memory* %call_402a70, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a75	 Bytes: 4
  %loadMem_402a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a75 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a75)
  store %struct.Memory* %call_402a75, %struct.Memory** %MEMORY

  ; Code: movsd 0x60(%rdx), %xmm0	 RIP: 402a79	 Bytes: 5
  %loadMem_402a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a79 = call %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a79)
  store %struct.Memory* %call_402a79, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a7e	 Bytes: 4
  %loadMem_402a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a7e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a7e)
  store %struct.Memory* %call_402a7e, %struct.Memory** %MEMORY

  ; Code: addsd 0x70(%rdx), %xmm0	 RIP: 402a82	 Bytes: 5
  %loadMem_402a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a82 = call %struct.Memory* @routine_addsd_0x70__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a82)
  store %struct.Memory* %call_402a82, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 402a87	 Bytes: 5
  %loadMem_402a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a87 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a87)
  store %struct.Memory* %call_402a87, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a8c	 Bytes: 4
  %loadMem_402a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a8c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a8c)
  store %struct.Memory* %call_402a8c, %struct.Memory** %MEMORY

  ; Code: movsd 0x68(%rdx), %xmm0	 RIP: 402a90	 Bytes: 5
  %loadMem_402a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a90 = call %struct.Memory* @routine_movsd_0x68__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a90)
  store %struct.Memory* %call_402a90, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402a95	 Bytes: 4
  %loadMem_402a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a95 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a95)
  store %struct.Memory* %call_402a95, %struct.Memory** %MEMORY

  ; Code: addsd 0x78(%rdx), %xmm0	 RIP: 402a99	 Bytes: 5
  %loadMem_402a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a99 = call %struct.Memory* @routine_addsd_0x78__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a99)
  store %struct.Memory* %call_402a99, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 402a9e	 Bytes: 8
  %loadMem_402a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a9e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a9e)
  store %struct.Memory* %call_402a9e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402aa6	 Bytes: 4
  %loadMem_402aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aa6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aa6)
  store %struct.Memory* %call_402aa6, %struct.Memory** %MEMORY

  ; Code: movsd 0x60(%rdx), %xmm0	 RIP: 402aaa	 Bytes: 5
  %loadMem_402aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aaa = call %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aaa)
  store %struct.Memory* %call_402aaa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402aaf	 Bytes: 4
  %loadMem_402aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aaf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aaf)
  store %struct.Memory* %call_402aaf, %struct.Memory** %MEMORY

  ; Code: subsd 0x70(%rdx), %xmm0	 RIP: 402ab3	 Bytes: 5
  %loadMem_402ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ab3 = call %struct.Memory* @routine_subsd_0x70__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ab3)
  store %struct.Memory* %call_402ab3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 402ab8	 Bytes: 8
  %loadMem_402ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ab8 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ab8)
  store %struct.Memory* %call_402ab8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402ac0	 Bytes: 4
  %loadMem_402ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ac0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ac0)
  store %struct.Memory* %call_402ac0, %struct.Memory** %MEMORY

  ; Code: movsd 0x68(%rdx), %xmm0	 RIP: 402ac4	 Bytes: 5
  %loadMem_402ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ac4 = call %struct.Memory* @routine_movsd_0x68__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ac4)
  store %struct.Memory* %call_402ac4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402ac9	 Bytes: 4
  %loadMem_402ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ac9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ac9)
  store %struct.Memory* %call_402ac9, %struct.Memory** %MEMORY

  ; Code: subsd 0x78(%rdx), %xmm0	 RIP: 402acd	 Bytes: 5
  %loadMem_402acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402acd = call %struct.Memory* @routine_subsd_0x78__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402acd)
  store %struct.Memory* %call_402acd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 402ad2	 Bytes: 8
  %loadMem_402ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ad2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ad2)
  store %struct.Memory* %call_402ad2, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 402ada	 Bytes: 5
  %loadMem_402ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ada = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ada)
  store %struct.Memory* %call_402ada, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm0	 RIP: 402adf	 Bytes: 5
  %loadMem_402adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402adf = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402adf)
  store %struct.Memory* %call_402adf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402ae4	 Bytes: 4
  %loadMem_402ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ae4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ae4)
  store %struct.Memory* %call_402ae4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x40(%rdx)	 RIP: 402ae8	 Bytes: 5
  %loadMem_402ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ae8 = call %struct.Memory* @routine_movsd__xmm0__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ae8)
  store %struct.Memory* %call_402ae8, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 402aed	 Bytes: 5
  %loadMem_402aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aed = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aed)
  store %struct.Memory* %call_402aed, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm0	 RIP: 402af2	 Bytes: 8
  %loadMem_402af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402af2 = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402af2)
  store %struct.Memory* %call_402af2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402afa	 Bytes: 4
  %loadMem_402afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402afa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402afa)
  store %struct.Memory* %call_402afa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x48(%rdx)	 RIP: 402afe	 Bytes: 5
  %loadMem_402afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402afe = call %struct.Memory* @routine_movsd__xmm0__0x48__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402afe)
  store %struct.Memory* %call_402afe, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 402b03	 Bytes: 8
  %loadMem_402b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b03 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b03)
  store %struct.Memory* %call_402b03, %struct.Memory** %MEMORY

  ; Code: subsd -0x68(%rbp), %xmm0	 RIP: 402b0b	 Bytes: 5
  %loadMem_402b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b0b = call %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b0b)
  store %struct.Memory* %call_402b0b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402b10	 Bytes: 4
  %loadMem_402b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b10 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b10)
  store %struct.Memory* %call_402b10, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x60(%rdx)	 RIP: 402b14	 Bytes: 5
  %loadMem_402b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b14 = call %struct.Memory* @routine_movsd__xmm0__0x60__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b14)
  store %struct.Memory* %call_402b14, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 402b19	 Bytes: 5
  %loadMem_402b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b19 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b19)
  store %struct.Memory* %call_402b19, %struct.Memory** %MEMORY

  ; Code: subsd -0x80(%rbp), %xmm0	 RIP: 402b1e	 Bytes: 5
  %loadMem_402b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b1e = call %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b1e)
  store %struct.Memory* %call_402b1e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402b23	 Bytes: 4
  %loadMem_402b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b23 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b23)
  store %struct.Memory* %call_402b23, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x68(%rdx)	 RIP: 402b27	 Bytes: 5
  %loadMem_402b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b27 = call %struct.Memory* @routine_movsd__xmm0__0x68__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b27)
  store %struct.Memory* %call_402b27, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 402b2c	 Bytes: 5
  %loadMem_402b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b2c = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b2c)
  store %struct.Memory* %call_402b2c, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 402b31	 Bytes: 8
  %loadMem_402b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b31 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b31)
  store %struct.Memory* %call_402b31, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 402b39	 Bytes: 5
  %loadMem_402b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b39 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b39)
  store %struct.Memory* %call_402b39, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 402b3e	 Bytes: 5
  %loadMem_402b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b3e = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b3e)
  store %struct.Memory* %call_402b3e, %struct.Memory** %MEMORY

  ; Code: addsd -0x90(%rbp), %xmm0	 RIP: 402b43	 Bytes: 8
  %loadMem_402b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b43 = call %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b43)
  store %struct.Memory* %call_402b43, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 402b4b	 Bytes: 5
  %loadMem_402b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b4b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b4b)
  store %struct.Memory* %call_402b4b, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 402b50	 Bytes: 5
  %loadMem_402b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b50 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b50)
  store %struct.Memory* %call_402b50, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 402b55	 Bytes: 5
  %loadMem_402b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b55 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b55)
  store %struct.Memory* %call_402b55, %struct.Memory** %MEMORY

  ; Code: subsd -0x68(%rbp), %xmm1	 RIP: 402b5a	 Bytes: 5
  %loadMem_402b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b5a = call %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b5a)
  store %struct.Memory* %call_402b5a, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 402b5f	 Bytes: 4
  %loadMem_402b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b5f = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b5f)
  store %struct.Memory* %call_402b5f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402b63	 Bytes: 4
  %loadMem_402b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b63 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b63)
  store %struct.Memory* %call_402b63, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x50(%rdx)	 RIP: 402b67	 Bytes: 5
  %loadMem_402b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b67 = call %struct.Memory* @routine_movsd__xmm0__0x50__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b67)
  store %struct.Memory* %call_402b67, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 402b6c	 Bytes: 5
  %loadMem_402b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b6c = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b6c)
  store %struct.Memory* %call_402b6c, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 402b71	 Bytes: 5
  %loadMem_402b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b71 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b71)
  store %struct.Memory* %call_402b71, %struct.Memory** %MEMORY

  ; Code: addsd -0x68(%rbp), %xmm1	 RIP: 402b76	 Bytes: 5
  %loadMem_402b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b76 = call %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b76)
  store %struct.Memory* %call_402b76, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 402b7b	 Bytes: 4
  %loadMem_402b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b7b = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b7b)
  store %struct.Memory* %call_402b7b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402b7f	 Bytes: 4
  %loadMem_402b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b7f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b7f)
  store %struct.Memory* %call_402b7f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x58(%rdx)	 RIP: 402b83	 Bytes: 5
  %loadMem_402b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b83 = call %struct.Memory* @routine_movsd__xmm0__0x58__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b83)
  store %struct.Memory* %call_402b83, %struct.Memory** %MEMORY

  ; Code: movsd -0x98(%rbp), %xmm0	 RIP: 402b88	 Bytes: 8
  %loadMem_402b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b88 = call %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b88)
  store %struct.Memory* %call_402b88, %struct.Memory** %MEMORY

  ; Code: addsd -0x70(%rbp), %xmm0	 RIP: 402b90	 Bytes: 5
  %loadMem_402b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b90 = call %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b90)
  store %struct.Memory* %call_402b90, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 402b95	 Bytes: 5
  %loadMem_402b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b95 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b95)
  store %struct.Memory* %call_402b95, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 402b9a	 Bytes: 8
  %loadMem_402b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b9a = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b9a)
  store %struct.Memory* %call_402b9a, %struct.Memory** %MEMORY

  ; Code: subsd -0x78(%rbp), %xmm0	 RIP: 402ba2	 Bytes: 5
  %loadMem_402ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ba2 = call %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ba2)
  store %struct.Memory* %call_402ba2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 402ba7	 Bytes: 5
  %loadMem_402ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ba7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ba7)
  store %struct.Memory* %call_402ba7, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 402bac	 Bytes: 5
  %loadMem_402bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bac = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bac)
  store %struct.Memory* %call_402bac, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm1	 RIP: 402bb1	 Bytes: 5
  %loadMem_402bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bb1 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bb1)
  store %struct.Memory* %call_402bb1, %struct.Memory** %MEMORY

  ; Code: subsd -0x60(%rbp), %xmm1	 RIP: 402bb6	 Bytes: 5
  %loadMem_402bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bb6 = call %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bb6)
  store %struct.Memory* %call_402bb6, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 402bbb	 Bytes: 4
  %loadMem_402bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bbb = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bbb)
  store %struct.Memory* %call_402bbb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402bbf	 Bytes: 4
  %loadMem_402bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bbf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bbf)
  store %struct.Memory* %call_402bbf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x70(%rdx)	 RIP: 402bc3	 Bytes: 5
  %loadMem_402bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bc3 = call %struct.Memory* @routine_movsd__xmm0__0x70__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bc3)
  store %struct.Memory* %call_402bc3, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 402bc8	 Bytes: 5
  %loadMem_402bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bc8 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bc8)
  store %struct.Memory* %call_402bc8, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm1	 RIP: 402bcd	 Bytes: 5
  %loadMem_402bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bcd = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bcd)
  store %struct.Memory* %call_402bcd, %struct.Memory** %MEMORY

  ; Code: addsd -0x60(%rbp), %xmm1	 RIP: 402bd2	 Bytes: 5
  %loadMem_402bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bd2 = call %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bd2)
  store %struct.Memory* %call_402bd2, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 402bd7	 Bytes: 4
  %loadMem_402bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bd7 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bd7)
  store %struct.Memory* %call_402bd7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402bdb	 Bytes: 4
  %loadMem_402bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bdb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bdb)
  store %struct.Memory* %call_402bdb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x78(%rdx)	 RIP: 402bdf	 Bytes: 5
  %loadMem_402bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bdf = call %struct.Memory* @routine_movsd__xmm0__0x78__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bdf)
  store %struct.Memory* %call_402bdf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 402be4	 Bytes: 7
  %loadMem_402be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402be4 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402be4)
  store %struct.Memory* %call_402be4, %struct.Memory** %MEMORY

  ; Code: movl $0x10, -0x1c(%rbp)	 RIP: 402beb	 Bytes: 7
  %loadMem_402beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402beb = call %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402beb)
  store %struct.Memory* %call_402beb, %struct.Memory** %MEMORY

  ; Code: .L_402bf2:	 RIP: 402bf2	 Bytes: 0
  br label %block_.L_402bf2
block_.L_402bf2:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 402bf2	 Bytes: 3
  %loadMem_402bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bf2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bf2)
  store %struct.Memory* %call_402bf2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 402bf5	 Bytes: 3
  %loadMem_402bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bf5 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bf5)
  store %struct.Memory* %call_402bf5, %struct.Memory** %MEMORY

  ; Code: jge .L_40330e	 RIP: 402bf8	 Bytes: 6
  %loadMem_402bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bf8 = call %struct.Memory* @routine_jge_.L_40330e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bf8, i8* %BRANCH_TAKEN, i64 1814, i64 6, i64 6)
  store %struct.Memory* %call_402bf8, %struct.Memory** %MEMORY

  %loadBr_402bf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402bf8 = icmp eq i8 %loadBr_402bf8, 1
  br i1 %cmpBr_402bf8, label %block_.L_40330e, label %block_402bfe

block_402bfe:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 402bfe	 Bytes: 10
  %loadMem_402bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402bfe = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402bfe)
  store %struct.Memory* %call_402bfe, %struct.Memory** %MEMORY

  ; Code: movsd 0x14d0(%rip), %xmm0	 RIP: 402c08	 Bytes: 8
  %loadMem_402c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c08 = call %struct.Memory* @routine_movsd_0x14d0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c08)
  store %struct.Memory* %call_402c08, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402c10	 Bytes: 3
  %loadMem_402c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c10 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c10)
  store %struct.Memory* %call_402c10, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 402c13	 Bytes: 3
  %loadMem_402c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c13 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c13)
  store %struct.Memory* %call_402c13, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 402c16	 Bytes: 3
  %loadMem_402c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c16 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c16)
  store %struct.Memory* %call_402c16, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402c19	 Bytes: 3
  %loadMem_402c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c19 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c19)
  store %struct.Memory* %call_402c19, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 402c1c	 Bytes: 3
  %loadMem_402c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c1c = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c1c)
  store %struct.Memory* %call_402c1c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 402c1f	 Bytes: 3
  %loadMem_402c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c1f = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c1f)
  store %struct.Memory* %call_402c1f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402c22	 Bytes: 4
  %loadMem_402c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c22 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c22)
  store %struct.Memory* %call_402c22, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402c26	 Bytes: 4
  %loadMem_402c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c26 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c26)
  store %struct.Memory* %call_402c26, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402c2a	 Bytes: 5
  %loadMem_402c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c2a = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c2a)
  store %struct.Memory* %call_402c2a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x40(%rbp)	 RIP: 402c2f	 Bytes: 5
  %loadMem_402c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c2f = call %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c2f)
  store %struct.Memory* %call_402c2f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402c34	 Bytes: 4
  %loadMem_402c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c34 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c34)
  store %struct.Memory* %call_402c34, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402c38	 Bytes: 3
  %loadMem_402c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c38 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c38)
  store %struct.Memory* %call_402c38, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402c3b	 Bytes: 3
  %loadMem_402c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c3b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c3b)
  store %struct.Memory* %call_402c3b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402c3e	 Bytes: 3
  %loadMem_402c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c3e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c3e)
  store %struct.Memory* %call_402c3e, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402c41	 Bytes: 5
  %loadMem_402c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c41 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c41)
  store %struct.Memory* %call_402c41, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x48(%rbp)	 RIP: 402c46	 Bytes: 5
  %loadMem_402c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c46 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c46)
  store %struct.Memory* %call_402c46, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402c4b	 Bytes: 4
  %loadMem_402c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c4b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c4b)
  store %struct.Memory* %call_402c4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 402c4f	 Bytes: 4
  %loadMem_402c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c4f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c4f)
  store %struct.Memory* %call_402c4f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402c53	 Bytes: 5
  %loadMem_402c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c53 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c53)
  store %struct.Memory* %call_402c53, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 402c58	 Bytes: 5
  %loadMem_402c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c58 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c58)
  store %struct.Memory* %call_402c58, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402c5d	 Bytes: 4
  %loadMem_402c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c5d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c5d)
  store %struct.Memory* %call_402c5d, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402c61	 Bytes: 3
  %loadMem_402c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c61 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c61)
  store %struct.Memory* %call_402c61, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402c64	 Bytes: 3
  %loadMem_402c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c64 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c64)
  store %struct.Memory* %call_402c64, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402c67	 Bytes: 3
  %loadMem_402c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c67 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c67)
  store %struct.Memory* %call_402c67, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402c6a	 Bytes: 5
  %loadMem_402c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c6a = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c6a)
  store %struct.Memory* %call_402c6a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x38(%rbp)	 RIP: 402c6f	 Bytes: 5
  %loadMem_402c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c6f = call %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c6f)
  store %struct.Memory* %call_402c6f, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm1	 RIP: 402c74	 Bytes: 5
  %loadMem_402c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c74 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c74)
  store %struct.Memory* %call_402c74, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 402c79	 Bytes: 3
  %loadMem_402c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c79 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c79)
  store %struct.Memory* %call_402c79, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm2	 RIP: 402c7c	 Bytes: 5
  %loadMem_402c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c7c = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c7c)
  store %struct.Memory* %call_402c7c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x38(%rbp), %xmm2	 RIP: 402c81	 Bytes: 5
  %loadMem_402c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c81 = call %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c81)
  store %struct.Memory* %call_402c81, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 402c86	 Bytes: 4
  %loadMem_402c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c86 = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c86)
  store %struct.Memory* %call_402c86, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 402c8a	 Bytes: 5
  %loadMem_402c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c8a = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c8a)
  store %struct.Memory* %call_402c8a, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 402c8f	 Bytes: 3
  %loadMem_402c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c8f = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c8f)
  store %struct.Memory* %call_402c8f, %struct.Memory** %MEMORY

  ; Code: mulsd -0x48(%rbp), %xmm1	 RIP: 402c92	 Bytes: 5
  %loadMem_402c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c92 = call %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c92)
  store %struct.Memory* %call_402c92, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm1	 RIP: 402c97	 Bytes: 5
  %loadMem_402c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c97 = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c97)
  store %struct.Memory* %call_402c97, %struct.Memory** %MEMORY

  ; Code: subsd -0x38(%rbp), %xmm1	 RIP: 402c9c	 Bytes: 5
  %loadMem_402c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402c9c = call %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402c9c)
  store %struct.Memory* %call_402c9c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x58(%rbp)	 RIP: 402ca1	 Bytes: 5
  %loadMem_402ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ca1 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ca1)
  store %struct.Memory* %call_402ca1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402ca6	 Bytes: 4
  %loadMem_402ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ca6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ca6)
  store %struct.Memory* %call_402ca6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 402caa	 Bytes: 4
  %loadMem_402caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402caa = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402caa)
  store %struct.Memory* %call_402caa, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402cae	 Bytes: 5
  %loadMem_402cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cae = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cae)
  store %struct.Memory* %call_402cae, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402cb3	 Bytes: 4
  %loadMem_402cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cb3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cb3)
  store %struct.Memory* %call_402cb3, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402cb7	 Bytes: 3
  %loadMem_402cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cb7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cb7)
  store %struct.Memory* %call_402cb7, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 402cba	 Bytes: 3
  %loadMem_402cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cba = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cba)
  store %struct.Memory* %call_402cba, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402cbd	 Bytes: 3
  %loadMem_402cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cbd = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cbd)
  store %struct.Memory* %call_402cbd, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm1	 RIP: 402cc0	 Bytes: 5
  %loadMem_402cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cc0 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cc0)
  store %struct.Memory* %call_402cc0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 402cc5	 Bytes: 5
  %loadMem_402cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cc5 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cc5)
  store %struct.Memory* %call_402cc5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402cca	 Bytes: 4
  %loadMem_402cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cca = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cca)
  store %struct.Memory* %call_402cca, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402cce	 Bytes: 3
  %loadMem_402cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cce = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cce)
  store %struct.Memory* %call_402cce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402cd1	 Bytes: 3
  %loadMem_402cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cd1 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cd1)
  store %struct.Memory* %call_402cd1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402cd4	 Bytes: 3
  %loadMem_402cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cd4 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cd4)
  store %struct.Memory* %call_402cd4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402cd7	 Bytes: 5
  %loadMem_402cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cd7 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cd7)
  store %struct.Memory* %call_402cd7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402cdc	 Bytes: 4
  %loadMem_402cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cdc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cdc)
  store %struct.Memory* %call_402cdc, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402ce0	 Bytes: 3
  %loadMem_402ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ce0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ce0)
  store %struct.Memory* %call_402ce0, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 402ce3	 Bytes: 3
  %loadMem_402ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ce3 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ce3)
  store %struct.Memory* %call_402ce3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402ce6	 Bytes: 3
  %loadMem_402ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ce6 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ce6)
  store %struct.Memory* %call_402ce6, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm1	 RIP: 402ce9	 Bytes: 5
  %loadMem_402ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ce9 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ce9)
  store %struct.Memory* %call_402ce9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 402cee	 Bytes: 5
  %loadMem_402cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cee = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cee)
  store %struct.Memory* %call_402cee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402cf3	 Bytes: 4
  %loadMem_402cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cf3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cf3)
  store %struct.Memory* %call_402cf3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 402cf7	 Bytes: 4
  %loadMem_402cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cf7 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cf7)
  store %struct.Memory* %call_402cf7, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402cfb	 Bytes: 5
  %loadMem_402cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402cfb = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402cfb)
  store %struct.Memory* %call_402cfb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d00	 Bytes: 4
  %loadMem_402d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d00 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d00)
  store %struct.Memory* %call_402d00, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d04	 Bytes: 3
  %loadMem_402d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d04 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d04)
  store %struct.Memory* %call_402d04, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 402d07	 Bytes: 3
  %loadMem_402d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d07 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d07)
  store %struct.Memory* %call_402d07, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d0a	 Bytes: 3
  %loadMem_402d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d0a = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d0a)
  store %struct.Memory* %call_402d0a, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm1	 RIP: 402d0d	 Bytes: 5
  %loadMem_402d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d0d = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d0d)
  store %struct.Memory* %call_402d0d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x70(%rbp)	 RIP: 402d12	 Bytes: 5
  %loadMem_402d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d12 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d12)
  store %struct.Memory* %call_402d12, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d17	 Bytes: 4
  %loadMem_402d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d17 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d17)
  store %struct.Memory* %call_402d17, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d1b	 Bytes: 3
  %loadMem_402d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d1b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d1b)
  store %struct.Memory* %call_402d1b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402d1e	 Bytes: 3
  %loadMem_402d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d1e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d1e)
  store %struct.Memory* %call_402d1e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d21	 Bytes: 3
  %loadMem_402d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d21 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d21)
  store %struct.Memory* %call_402d21, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402d24	 Bytes: 5
  %loadMem_402d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d24 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d24)
  store %struct.Memory* %call_402d24, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d29	 Bytes: 4
  %loadMem_402d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d29 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d29)
  store %struct.Memory* %call_402d29, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d2d	 Bytes: 3
  %loadMem_402d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d2d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d2d)
  store %struct.Memory* %call_402d2d, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 402d30	 Bytes: 3
  %loadMem_402d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d30 = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d30)
  store %struct.Memory* %call_402d30, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d33	 Bytes: 3
  %loadMem_402d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d33 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d33)
  store %struct.Memory* %call_402d33, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm1	 RIP: 402d36	 Bytes: 5
  %loadMem_402d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d36 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d36)
  store %struct.Memory* %call_402d36, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x78(%rbp)	 RIP: 402d3b	 Bytes: 5
  %loadMem_402d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d3b = call %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d3b)
  store %struct.Memory* %call_402d3b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d40	 Bytes: 4
  %loadMem_402d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d40 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d40)
  store %struct.Memory* %call_402d40, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d44	 Bytes: 3
  %loadMem_402d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d44 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d44)
  store %struct.Memory* %call_402d44, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 402d47	 Bytes: 3
  %loadMem_402d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d47 = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d47)
  store %struct.Memory* %call_402d47, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d4a	 Bytes: 3
  %loadMem_402d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d4a = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d4a)
  store %struct.Memory* %call_402d4a, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402d4d	 Bytes: 5
  %loadMem_402d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d4d = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d4d)
  store %struct.Memory* %call_402d4d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d52	 Bytes: 4
  %loadMem_402d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d52 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d52)
  store %struct.Memory* %call_402d52, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d56	 Bytes: 3
  %loadMem_402d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d56 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d56)
  store %struct.Memory* %call_402d56, %struct.Memory** %MEMORY

  ; Code: addl $0x6, %ecx	 RIP: 402d59	 Bytes: 3
  %loadMem_402d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d59 = call %struct.Memory* @routine_addl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d59)
  store %struct.Memory* %call_402d59, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d5c	 Bytes: 3
  %loadMem_402d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d5c = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d5c)
  store %struct.Memory* %call_402d5c, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm1	 RIP: 402d5f	 Bytes: 5
  %loadMem_402d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d5f = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d5f)
  store %struct.Memory* %call_402d5f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x80(%rbp)	 RIP: 402d64	 Bytes: 5
  %loadMem_402d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d64 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d64)
  store %struct.Memory* %call_402d64, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d69	 Bytes: 4
  %loadMem_402d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d69 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d69)
  store %struct.Memory* %call_402d69, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d6d	 Bytes: 3
  %loadMem_402d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d6d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d6d)
  store %struct.Memory* %call_402d6d, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %ecx	 RIP: 402d70	 Bytes: 3
  %loadMem_402d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d70 = call %struct.Memory* @routine_addl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d70)
  store %struct.Memory* %call_402d70, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d73	 Bytes: 3
  %loadMem_402d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d73 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d73)
  store %struct.Memory* %call_402d73, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402d76	 Bytes: 5
  %loadMem_402d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d76 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d76)
  store %struct.Memory* %call_402d76, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d7b	 Bytes: 4
  %loadMem_402d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d7b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d7b)
  store %struct.Memory* %call_402d7b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d7f	 Bytes: 3
  %loadMem_402d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d7f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d7f)
  store %struct.Memory* %call_402d7f, %struct.Memory** %MEMORY

  ; Code: addl $0x7, %ecx	 RIP: 402d82	 Bytes: 3
  %loadMem_402d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d82 = call %struct.Memory* @routine_addl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d82)
  store %struct.Memory* %call_402d82, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d85	 Bytes: 3
  %loadMem_402d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d85 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d85)
  store %struct.Memory* %call_402d85, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm1	 RIP: 402d88	 Bytes: 5
  %loadMem_402d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d88 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d88)
  store %struct.Memory* %call_402d88, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x88(%rbp)	 RIP: 402d8d	 Bytes: 8
  %loadMem_402d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d8d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d8d)
  store %struct.Memory* %call_402d8d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402d95	 Bytes: 4
  %loadMem_402d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d95 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d95)
  store %struct.Memory* %call_402d95, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402d99	 Bytes: 3
  %loadMem_402d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d99 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d99)
  store %struct.Memory* %call_402d99, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 402d9c	 Bytes: 3
  %loadMem_402d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d9c = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d9c)
  store %struct.Memory* %call_402d9c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402d9f	 Bytes: 3
  %loadMem_402d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402d9f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402d9f)
  store %struct.Memory* %call_402d9f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402da2	 Bytes: 5
  %loadMem_402da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402da2 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402da2)
  store %struct.Memory* %call_402da2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402da7	 Bytes: 4
  %loadMem_402da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402da7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402da7)
  store %struct.Memory* %call_402da7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402dab	 Bytes: 3
  %loadMem_402dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dab = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dab)
  store %struct.Memory* %call_402dab, %struct.Memory** %MEMORY

  ; Code: addl $0x6, %ecx	 RIP: 402dae	 Bytes: 3
  %loadMem_402dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dae = call %struct.Memory* @routine_addl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dae)
  store %struct.Memory* %call_402dae, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402db1	 Bytes: 3
  %loadMem_402db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402db1 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402db1)
  store %struct.Memory* %call_402db1, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm1	 RIP: 402db4	 Bytes: 5
  %loadMem_402db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402db4 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402db4)
  store %struct.Memory* %call_402db4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x90(%rbp)	 RIP: 402db9	 Bytes: 8
  %loadMem_402db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402db9 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402db9)
  store %struct.Memory* %call_402db9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402dc1	 Bytes: 4
  %loadMem_402dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dc1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dc1)
  store %struct.Memory* %call_402dc1, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402dc5	 Bytes: 3
  %loadMem_402dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dc5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dc5)
  store %struct.Memory* %call_402dc5, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %ecx	 RIP: 402dc8	 Bytes: 3
  %loadMem_402dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dc8 = call %struct.Memory* @routine_addl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dc8)
  store %struct.Memory* %call_402dc8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402dcb	 Bytes: 3
  %loadMem_402dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dcb = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dcb)
  store %struct.Memory* %call_402dcb, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402dce	 Bytes: 5
  %loadMem_402dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dce = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dce)
  store %struct.Memory* %call_402dce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402dd3	 Bytes: 4
  %loadMem_402dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dd3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dd3)
  store %struct.Memory* %call_402dd3, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402dd7	 Bytes: 3
  %loadMem_402dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dd7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dd7)
  store %struct.Memory* %call_402dd7, %struct.Memory** %MEMORY

  ; Code: addl $0x7, %ecx	 RIP: 402dda	 Bytes: 3
  %loadMem_402dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dda = call %struct.Memory* @routine_addl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dda)
  store %struct.Memory* %call_402dda, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402ddd	 Bytes: 3
  %loadMem_402ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ddd = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ddd)
  store %struct.Memory* %call_402ddd, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm1	 RIP: 402de0	 Bytes: 5
  %loadMem_402de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402de0 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402de0)
  store %struct.Memory* %call_402de0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x98(%rbp)	 RIP: 402de5	 Bytes: 8
  %loadMem_402de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402de5 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402de5)
  store %struct.Memory* %call_402de5, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 402ded	 Bytes: 5
  %loadMem_402ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ded = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ded)
  store %struct.Memory* %call_402ded, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm1	 RIP: 402df2	 Bytes: 5
  %loadMem_402df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402df2 = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402df2)
  store %struct.Memory* %call_402df2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402df7	 Bytes: 4
  %loadMem_402df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402df7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402df7)
  store %struct.Memory* %call_402df7, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 402dfb	 Bytes: 4
  %loadMem_402dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dfb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dfb)
  store %struct.Memory* %call_402dfb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402dff	 Bytes: 5
  %loadMem_402dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402dff = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402dff)
  store %struct.Memory* %call_402dff, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm1	 RIP: 402e04	 Bytes: 5
  %loadMem_402e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e04 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e04)
  store %struct.Memory* %call_402e04, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm1	 RIP: 402e09	 Bytes: 8
  %loadMem_402e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e09 = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e09)
  store %struct.Memory* %call_402e09, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402e11	 Bytes: 4
  %loadMem_402e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e11 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e11)
  store %struct.Memory* %call_402e11, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402e15	 Bytes: 3
  %loadMem_402e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e15 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e15)
  store %struct.Memory* %call_402e15, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402e18	 Bytes: 3
  %loadMem_402e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e18 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e18)
  store %struct.Memory* %call_402e18, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402e1b	 Bytes: 3
  %loadMem_402e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e1b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e1b)
  store %struct.Memory* %call_402e1b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402e1e	 Bytes: 5
  %loadMem_402e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e1e = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e1e)
  store %struct.Memory* %call_402e1e, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm1	 RIP: 402e23	 Bytes: 5
  %loadMem_402e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e23 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e23)
  store %struct.Memory* %call_402e23, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm2	 RIP: 402e28	 Bytes: 5
  %loadMem_402e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e28 = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e28)
  store %struct.Memory* %call_402e28, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm2	 RIP: 402e2d	 Bytes: 4
  %loadMem_402e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e2d = call %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e2d)
  store %struct.Memory* %call_402e2d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x60(%rbp)	 RIP: 402e31	 Bytes: 5
  %loadMem_402e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e31 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e31)
  store %struct.Memory* %call_402e31, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm1	 RIP: 402e36	 Bytes: 8
  %loadMem_402e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e36 = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e36)
  store %struct.Memory* %call_402e36, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm2	 RIP: 402e3e	 Bytes: 5
  %loadMem_402e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e3e = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e3e)
  store %struct.Memory* %call_402e3e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm2	 RIP: 402e43	 Bytes: 4
  %loadMem_402e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e43 = call %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e43)
  store %struct.Memory* %call_402e43, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0x68(%rbp)	 RIP: 402e47	 Bytes: 5
  %loadMem_402e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e47 = call %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e47)
  store %struct.Memory* %call_402e47, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402e4c	 Bytes: 5
  %loadMem_402e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e4c = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e4c)
  store %struct.Memory* %call_402e4c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm1	 RIP: 402e51	 Bytes: 5
  %loadMem_402e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e51 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e51)
  store %struct.Memory* %call_402e51, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm2	 RIP: 402e56	 Bytes: 5
  %loadMem_402e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e56 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e56)
  store %struct.Memory* %call_402e56, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm2	 RIP: 402e5b	 Bytes: 5
  %loadMem_402e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e5b = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e5b)
  store %struct.Memory* %call_402e5b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 402e60	 Bytes: 4
  %loadMem_402e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e60 = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e60)
  store %struct.Memory* %call_402e60, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402e64	 Bytes: 4
  %loadMem_402e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e64 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e64)
  store %struct.Memory* %call_402e64, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402e68	 Bytes: 3
  %loadMem_402e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e68 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e68)
  store %struct.Memory* %call_402e68, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 402e6b	 Bytes: 3
  %loadMem_402e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e6b = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e6b)
  store %struct.Memory* %call_402e6b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402e6e	 Bytes: 3
  %loadMem_402e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e6e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e6e)
  store %struct.Memory* %call_402e6e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402e71	 Bytes: 5
  %loadMem_402e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e71 = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e71)
  store %struct.Memory* %call_402e71, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 402e76	 Bytes: 5
  %loadMem_402e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e76 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e76)
  store %struct.Memory* %call_402e76, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm1	 RIP: 402e7b	 Bytes: 5
  %loadMem_402e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e7b = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e7b)
  store %struct.Memory* %call_402e7b, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm2	 RIP: 402e80	 Bytes: 5
  %loadMem_402e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e80 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e80)
  store %struct.Memory* %call_402e80, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm2	 RIP: 402e85	 Bytes: 5
  %loadMem_402e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e85 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e85)
  store %struct.Memory* %call_402e85, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm1	 RIP: 402e8a	 Bytes: 4
  %loadMem_402e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e8a = call %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e8a)
  store %struct.Memory* %call_402e8a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402e8e	 Bytes: 4
  %loadMem_402e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e8e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e8e)
  store %struct.Memory* %call_402e8e, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402e92	 Bytes: 3
  %loadMem_402e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e92 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e92)
  store %struct.Memory* %call_402e92, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %ecx	 RIP: 402e95	 Bytes: 3
  %loadMem_402e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e95 = call %struct.Memory* @routine_addl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e95)
  store %struct.Memory* %call_402e95, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402e98	 Bytes: 3
  %loadMem_402e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e98 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e98)
  store %struct.Memory* %call_402e98, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402e9b	 Bytes: 5
  %loadMem_402e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402e9b = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402e9b)
  store %struct.Memory* %call_402e9b, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 402ea0	 Bytes: 5
  %loadMem_402ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ea0 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ea0)
  store %struct.Memory* %call_402ea0, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm1	 RIP: 402ea5	 Bytes: 8
  %loadMem_402ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ea5 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ea5)
  store %struct.Memory* %call_402ea5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 402ead	 Bytes: 5
  %loadMem_402ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ead = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ead)
  store %struct.Memory* %call_402ead, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 402eb2	 Bytes: 5
  %loadMem_402eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eb2 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eb2)
  store %struct.Memory* %call_402eb2, %struct.Memory** %MEMORY

  ; Code: addsd -0x90(%rbp), %xmm1	 RIP: 402eb7	 Bytes: 8
  %loadMem_402eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eb7 = call %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eb7)
  store %struct.Memory* %call_402eb7, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 402ebf	 Bytes: 5
  %loadMem_402ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ebf = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ebf)
  store %struct.Memory* %call_402ebf, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm1	 RIP: 402ec4	 Bytes: 5
  %loadMem_402ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ec4 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ec4)
  store %struct.Memory* %call_402ec4, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm1	 RIP: 402ec9	 Bytes: 5
  %loadMem_402ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ec9 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ec9)
  store %struct.Memory* %call_402ec9, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm2	 RIP: 402ece	 Bytes: 5
  %loadMem_402ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ece = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ece)
  store %struct.Memory* %call_402ece, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm2	 RIP: 402ed3	 Bytes: 5
  %loadMem_402ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ed3 = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ed3)
  store %struct.Memory* %call_402ed3, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 402ed8	 Bytes: 4
  %loadMem_402ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ed8 = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ed8)
  store %struct.Memory* %call_402ed8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402edc	 Bytes: 4
  %loadMem_402edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402edc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402edc)
  store %struct.Memory* %call_402edc, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402ee0	 Bytes: 3
  %loadMem_402ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ee0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ee0)
  store %struct.Memory* %call_402ee0, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 402ee3	 Bytes: 3
  %loadMem_402ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ee3 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ee3)
  store %struct.Memory* %call_402ee3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402ee6	 Bytes: 3
  %loadMem_402ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ee6 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ee6)
  store %struct.Memory* %call_402ee6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402ee9	 Bytes: 5
  %loadMem_402ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ee9 = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ee9)
  store %struct.Memory* %call_402ee9, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm1	 RIP: 402eee	 Bytes: 5
  %loadMem_402eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402eee = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402eee)
  store %struct.Memory* %call_402eee, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm1	 RIP: 402ef3	 Bytes: 5
  %loadMem_402ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ef3 = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ef3)
  store %struct.Memory* %call_402ef3, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm2	 RIP: 402ef8	 Bytes: 5
  %loadMem_402ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ef8 = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ef8)
  store %struct.Memory* %call_402ef8, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm2	 RIP: 402efd	 Bytes: 5
  %loadMem_402efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402efd = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402efd)
  store %struct.Memory* %call_402efd, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm1	 RIP: 402f02	 Bytes: 4
  %loadMem_402f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f02 = call %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f02)
  store %struct.Memory* %call_402f02, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402f06	 Bytes: 4
  %loadMem_402f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f06 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f06)
  store %struct.Memory* %call_402f06, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402f0a	 Bytes: 3
  %loadMem_402f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f0a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f0a)
  store %struct.Memory* %call_402f0a, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 402f0d	 Bytes: 3
  %loadMem_402f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f0d = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f0d)
  store %struct.Memory* %call_402f0d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402f10	 Bytes: 3
  %loadMem_402f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f10 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f10)
  store %struct.Memory* %call_402f10, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402f13	 Bytes: 5
  %loadMem_402f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f13 = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f13)
  store %struct.Memory* %call_402f13, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm1	 RIP: 402f18	 Bytes: 5
  %loadMem_402f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f18 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f18)
  store %struct.Memory* %call_402f18, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm1	 RIP: 402f1d	 Bytes: 8
  %loadMem_402f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f1d = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f1d)
  store %struct.Memory* %call_402f1d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 402f25	 Bytes: 5
  %loadMem_402f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f25 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f25)
  store %struct.Memory* %call_402f25, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm1	 RIP: 402f2a	 Bytes: 5
  %loadMem_402f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f2a = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f2a)
  store %struct.Memory* %call_402f2a, %struct.Memory** %MEMORY

  ; Code: subsd -0x90(%rbp), %xmm1	 RIP: 402f2f	 Bytes: 8
  %loadMem_402f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f2f = call %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f2f)
  store %struct.Memory* %call_402f2f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 402f37	 Bytes: 5
  %loadMem_402f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f37 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f37)
  store %struct.Memory* %call_402f37, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 402f3c	 Bytes: 5
  %loadMem_402f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f3c = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f3c)
  store %struct.Memory* %call_402f3c, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm1	 RIP: 402f41	 Bytes: 5
  %loadMem_402f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f41 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f41)
  store %struct.Memory* %call_402f41, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm2	 RIP: 402f46	 Bytes: 5
  %loadMem_402f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f46 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f46)
  store %struct.Memory* %call_402f46, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm2	 RIP: 402f4b	 Bytes: 5
  %loadMem_402f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f4b = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f4b)
  store %struct.Memory* %call_402f4b, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 402f50	 Bytes: 4
  %loadMem_402f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f50 = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f50)
  store %struct.Memory* %call_402f50, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402f54	 Bytes: 4
  %loadMem_402f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f54)
  store %struct.Memory* %call_402f54, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402f58	 Bytes: 3
  %loadMem_402f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f58 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f58)
  store %struct.Memory* %call_402f58, %struct.Memory** %MEMORY

  ; Code: addl $0x6, %ecx	 RIP: 402f5b	 Bytes: 3
  %loadMem_402f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f5b = call %struct.Memory* @routine_addl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f5b)
  store %struct.Memory* %call_402f5b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402f5e	 Bytes: 3
  %loadMem_402f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f5e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f5e)
  store %struct.Memory* %call_402f5e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402f61	 Bytes: 5
  %loadMem_402f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f61 = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f61)
  store %struct.Memory* %call_402f61, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 402f66	 Bytes: 5
  %loadMem_402f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f66 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f66)
  store %struct.Memory* %call_402f66, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm1	 RIP: 402f6b	 Bytes: 5
  %loadMem_402f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f6b = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f6b)
  store %struct.Memory* %call_402f6b, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm2	 RIP: 402f70	 Bytes: 5
  %loadMem_402f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f70 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f70)
  store %struct.Memory* %call_402f70, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm2	 RIP: 402f75	 Bytes: 5
  %loadMem_402f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f75 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f75)
  store %struct.Memory* %call_402f75, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm1	 RIP: 402f7a	 Bytes: 4
  %loadMem_402f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f7a = call %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f7a)
  store %struct.Memory* %call_402f7a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402f7e	 Bytes: 4
  %loadMem_402f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f7e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f7e)
  store %struct.Memory* %call_402f7e, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402f82	 Bytes: 3
  %loadMem_402f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f82 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f82)
  store %struct.Memory* %call_402f82, %struct.Memory** %MEMORY

  ; Code: addl $0x7, %ecx	 RIP: 402f85	 Bytes: 3
  %loadMem_402f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f85 = call %struct.Memory* @routine_addl__0x7___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f85)
  store %struct.Memory* %call_402f85, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402f88	 Bytes: 3
  %loadMem_402f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f88 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f88)
  store %struct.Memory* %call_402f88, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, (%rdx,%rsi,8)	 RIP: 402f8b	 Bytes: 5
  %loadMem_402f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f8b = call %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f8b)
  store %struct.Memory* %call_402f8b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402f90	 Bytes: 4
  %loadMem_402f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f90 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f90)
  store %struct.Memory* %call_402f90, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402f94	 Bytes: 3
  %loadMem_402f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f94 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f94)
  store %struct.Memory* %call_402f94, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 402f97	 Bytes: 3
  %loadMem_402f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f97 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f97)
  store %struct.Memory* %call_402f97, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402f9a	 Bytes: 3
  %loadMem_402f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f9a = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f9a)
  store %struct.Memory* %call_402f9a, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402f9d	 Bytes: 5
  %loadMem_402f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402f9d = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402f9d)
  store %struct.Memory* %call_402f9d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x30(%rbp)	 RIP: 402fa2	 Bytes: 5
  %loadMem_402fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fa2 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fa2)
  store %struct.Memory* %call_402fa2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402fa7	 Bytes: 4
  %loadMem_402fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fa7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fa7)
  store %struct.Memory* %call_402fa7, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402fab	 Bytes: 3
  %loadMem_402fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fab = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fab)
  store %struct.Memory* %call_402fab, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %ecx	 RIP: 402fae	 Bytes: 3
  %loadMem_402fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fae = call %struct.Memory* @routine_addl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fae)
  store %struct.Memory* %call_402fae, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402fb1	 Bytes: 3
  %loadMem_402fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fb1 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fb1)
  store %struct.Memory* %call_402fb1, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm1	 RIP: 402fb4	 Bytes: 5
  %loadMem_402fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fb4 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fb4)
  store %struct.Memory* %call_402fb4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x38(%rbp)	 RIP: 402fb9	 Bytes: 5
  %loadMem_402fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fb9 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fb9)
  store %struct.Memory* %call_402fb9, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm1	 RIP: 402fbe	 Bytes: 5
  %loadMem_402fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fbe = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fbe)
  store %struct.Memory* %call_402fbe, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 402fc3	 Bytes: 3
  %loadMem_402fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fc3 = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fc3)
  store %struct.Memory* %call_402fc3, %struct.Memory** %MEMORY

  ; Code: mulsd -0x40(%rbp), %xmm2	 RIP: 402fc6	 Bytes: 5
  %loadMem_402fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fc6 = call %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fc6)
  store %struct.Memory* %call_402fc6, %struct.Memory** %MEMORY

  ; Code: mulsd -0x38(%rbp), %xmm2	 RIP: 402fcb	 Bytes: 5
  %loadMem_402fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fcb = call %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fcb)
  store %struct.Memory* %call_402fcb, %struct.Memory** %MEMORY

  ; Code: subsd %xmm2, %xmm1	 RIP: 402fd0	 Bytes: 4
  %loadMem_402fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fd0 = call %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fd0)
  store %struct.Memory* %call_402fd0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x50(%rbp)	 RIP: 402fd4	 Bytes: 5
  %loadMem_402fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fd4 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fd4)
  store %struct.Memory* %call_402fd4, %struct.Memory** %MEMORY

  ; Code: mulsd -0x40(%rbp), %xmm0	 RIP: 402fd9	 Bytes: 5
  %loadMem_402fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fd9 = call %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fd9)
  store %struct.Memory* %call_402fd9, %struct.Memory** %MEMORY

  ; Code: mulsd -0x30(%rbp), %xmm0	 RIP: 402fde	 Bytes: 5
  %loadMem_402fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fde = call %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fde)
  store %struct.Memory* %call_402fde, %struct.Memory** %MEMORY

  ; Code: subsd -0x38(%rbp), %xmm0	 RIP: 402fe3	 Bytes: 5
  %loadMem_402fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fe3 = call %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fe3)
  store %struct.Memory* %call_402fe3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 402fe8	 Bytes: 5
  %loadMem_402fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fe8 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fe8)
  store %struct.Memory* %call_402fe8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402fed	 Bytes: 4
  %loadMem_402fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fed)
  store %struct.Memory* %call_402fed, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402ff1	 Bytes: 3
  %loadMem_402ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ff1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ff1)
  store %struct.Memory* %call_402ff1, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 402ff4	 Bytes: 3
  %loadMem_402ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ff4 = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ff4)
  store %struct.Memory* %call_402ff4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402ff7	 Bytes: 3
  %loadMem_402ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ff7 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ff7)
  store %struct.Memory* %call_402ff7, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402ffa	 Bytes: 5
  %loadMem_402ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ffa = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ffa)
  store %struct.Memory* %call_402ffa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402fff	 Bytes: 4
  %loadMem_402fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402fff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402fff)
  store %struct.Memory* %call_402fff, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403003	 Bytes: 3
  %loadMem_403003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403003 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403003)
  store %struct.Memory* %call_403003, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 403006	 Bytes: 3
  %loadMem_403006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403006 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403006)
  store %struct.Memory* %call_403006, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403009	 Bytes: 3
  %loadMem_403009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403009 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403009)
  store %struct.Memory* %call_403009, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 40300c	 Bytes: 5
  %loadMem_40300c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40300c = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40300c)
  store %struct.Memory* %call_40300c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 403011	 Bytes: 5
  %loadMem_403011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403011 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403011)
  store %struct.Memory* %call_403011, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403016	 Bytes: 4
  %loadMem_403016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403016 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403016)
  store %struct.Memory* %call_403016, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40301a	 Bytes: 3
  %loadMem_40301a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40301a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40301a)
  store %struct.Memory* %call_40301a, %struct.Memory** %MEMORY

  ; Code: addl $0x9, %ecx	 RIP: 40301d	 Bytes: 3
  %loadMem_40301d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40301d = call %struct.Memory* @routine_addl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40301d)
  store %struct.Memory* %call_40301d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403020	 Bytes: 3
  %loadMem_403020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403020 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403020)
  store %struct.Memory* %call_403020, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403023	 Bytes: 5
  %loadMem_403023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403023 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403023)
  store %struct.Memory* %call_403023, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403028	 Bytes: 4
  %loadMem_403028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403028 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403028)
  store %struct.Memory* %call_403028, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40302c	 Bytes: 3
  %loadMem_40302c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40302c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40302c)
  store %struct.Memory* %call_40302c, %struct.Memory** %MEMORY

  ; Code: addl $0xb, %ecx	 RIP: 40302f	 Bytes: 3
  %loadMem_40302f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40302f = call %struct.Memory* @routine_addl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40302f)
  store %struct.Memory* %call_40302f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403032	 Bytes: 3
  %loadMem_403032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403032 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403032)
  store %struct.Memory* %call_403032, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 403035	 Bytes: 5
  %loadMem_403035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403035 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403035)
  store %struct.Memory* %call_403035, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 40303a	 Bytes: 5
  %loadMem_40303a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40303a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40303a)
  store %struct.Memory* %call_40303a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40303f	 Bytes: 4
  %loadMem_40303f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40303f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40303f)
  store %struct.Memory* %call_40303f, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403043	 Bytes: 3
  %loadMem_403043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403043 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403043)
  store %struct.Memory* %call_403043, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 403046	 Bytes: 3
  %loadMem_403046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403046 = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403046)
  store %struct.Memory* %call_403046, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403049	 Bytes: 3
  %loadMem_403049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403049 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403049)
  store %struct.Memory* %call_403049, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40304c	 Bytes: 5
  %loadMem_40304c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40304c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40304c)
  store %struct.Memory* %call_40304c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403051	 Bytes: 4
  %loadMem_403051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403051 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403051)
  store %struct.Memory* %call_403051, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403055	 Bytes: 3
  %loadMem_403055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403055 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403055)
  store %struct.Memory* %call_403055, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 403058	 Bytes: 3
  %loadMem_403058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403058 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403058)
  store %struct.Memory* %call_403058, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40305b	 Bytes: 3
  %loadMem_40305b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40305b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40305b)
  store %struct.Memory* %call_40305b, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 40305e	 Bytes: 5
  %loadMem_40305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40305e = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40305e)
  store %struct.Memory* %call_40305e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x70(%rbp)	 RIP: 403063	 Bytes: 5
  %loadMem_403063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403063 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403063)
  store %struct.Memory* %call_403063, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403068	 Bytes: 4
  %loadMem_403068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403068 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403068)
  store %struct.Memory* %call_403068, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40306c	 Bytes: 3
  %loadMem_40306c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40306c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40306c)
  store %struct.Memory* %call_40306c, %struct.Memory** %MEMORY

  ; Code: addl $0x9, %ecx	 RIP: 40306f	 Bytes: 3
  %loadMem_40306f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40306f = call %struct.Memory* @routine_addl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40306f)
  store %struct.Memory* %call_40306f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403072	 Bytes: 3
  %loadMem_403072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403072 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403072)
  store %struct.Memory* %call_403072, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 403075	 Bytes: 5
  %loadMem_403075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403075 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403075)
  store %struct.Memory* %call_403075, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40307a	 Bytes: 4
  %loadMem_40307a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40307a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40307a)
  store %struct.Memory* %call_40307a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40307e	 Bytes: 3
  %loadMem_40307e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40307e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40307e)
  store %struct.Memory* %call_40307e, %struct.Memory** %MEMORY

  ; Code: addl $0xb, %ecx	 RIP: 403081	 Bytes: 3
  %loadMem_403081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403081 = call %struct.Memory* @routine_addl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403081)
  store %struct.Memory* %call_403081, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403084	 Bytes: 3
  %loadMem_403084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403084 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403084)
  store %struct.Memory* %call_403084, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403087	 Bytes: 5
  %loadMem_403087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403087 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403087)
  store %struct.Memory* %call_403087, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x78(%rbp)	 RIP: 40308c	 Bytes: 5
  %loadMem_40308c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40308c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40308c)
  store %struct.Memory* %call_40308c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403091	 Bytes: 4
  %loadMem_403091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403091 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403091)
  store %struct.Memory* %call_403091, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403095	 Bytes: 3
  %loadMem_403095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403095 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403095)
  store %struct.Memory* %call_403095, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 403098	 Bytes: 3
  %loadMem_403098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403098 = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403098)
  store %struct.Memory* %call_403098, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40309b	 Bytes: 3
  %loadMem_40309b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40309b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40309b)
  store %struct.Memory* %call_40309b, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40309e	 Bytes: 5
  %loadMem_40309e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40309e = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40309e)
  store %struct.Memory* %call_40309e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4030a3	 Bytes: 4
  %loadMem_4030a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030a3)
  store %struct.Memory* %call_4030a3, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4030a7	 Bytes: 3
  %loadMem_4030a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030a7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030a7)
  store %struct.Memory* %call_4030a7, %struct.Memory** %MEMORY

  ; Code: addl $0xe, %ecx	 RIP: 4030aa	 Bytes: 3
  %loadMem_4030aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030aa = call %struct.Memory* @routine_addl__0xe___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030aa)
  store %struct.Memory* %call_4030aa, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4030ad	 Bytes: 3
  %loadMem_4030ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030ad = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030ad)
  store %struct.Memory* %call_4030ad, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 4030b0	 Bytes: 5
  %loadMem_4030b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030b0 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030b0)
  store %struct.Memory* %call_4030b0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x80(%rbp)	 RIP: 4030b5	 Bytes: 5
  %loadMem_4030b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030b5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030b5)
  store %struct.Memory* %call_4030b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4030ba	 Bytes: 4
  %loadMem_4030ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030ba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030ba)
  store %struct.Memory* %call_4030ba, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4030be	 Bytes: 3
  %loadMem_4030be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030be = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030be)
  store %struct.Memory* %call_4030be, %struct.Memory** %MEMORY

  ; Code: addl $0xd, %ecx	 RIP: 4030c1	 Bytes: 3
  %loadMem_4030c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030c1 = call %struct.Memory* @routine_addl__0xd___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030c1)
  store %struct.Memory* %call_4030c1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4030c4	 Bytes: 3
  %loadMem_4030c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030c4 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030c4)
  store %struct.Memory* %call_4030c4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4030c7	 Bytes: 5
  %loadMem_4030c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030c7 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030c7)
  store %struct.Memory* %call_4030c7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4030cc	 Bytes: 4
  %loadMem_4030cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030cc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030cc)
  store %struct.Memory* %call_4030cc, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4030d0	 Bytes: 3
  %loadMem_4030d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030d0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030d0)
  store %struct.Memory* %call_4030d0, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %ecx	 RIP: 4030d3	 Bytes: 3
  %loadMem_4030d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030d3 = call %struct.Memory* @routine_addl__0xf___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030d3)
  store %struct.Memory* %call_4030d3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4030d6	 Bytes: 3
  %loadMem_4030d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030d6 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030d6)
  store %struct.Memory* %call_4030d6, %struct.Memory** %MEMORY

  ; Code: addsd (%rdx,%rsi,8), %xmm0	 RIP: 4030d9	 Bytes: 5
  %loadMem_4030d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030d9 = call %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030d9)
  store %struct.Memory* %call_4030d9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x88(%rbp)	 RIP: 4030de	 Bytes: 8
  %loadMem_4030de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030de = call %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030de)
  store %struct.Memory* %call_4030de, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4030e6	 Bytes: 4
  %loadMem_4030e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030e6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030e6)
  store %struct.Memory* %call_4030e6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4030ea	 Bytes: 3
  %loadMem_4030ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030ea = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030ea)
  store %struct.Memory* %call_4030ea, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 4030ed	 Bytes: 3
  %loadMem_4030ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030ed = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030ed)
  store %struct.Memory* %call_4030ed, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4030f0	 Bytes: 3
  %loadMem_4030f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030f0 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030f0)
  store %struct.Memory* %call_4030f0, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4030f3	 Bytes: 5
  %loadMem_4030f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030f3 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030f3)
  store %struct.Memory* %call_4030f3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4030f8	 Bytes: 4
  %loadMem_4030f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030f8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030f8)
  store %struct.Memory* %call_4030f8, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4030fc	 Bytes: 3
  %loadMem_4030fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030fc = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030fc)
  store %struct.Memory* %call_4030fc, %struct.Memory** %MEMORY

  ; Code: addl $0xe, %ecx	 RIP: 4030ff	 Bytes: 3
  %loadMem_4030ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4030ff = call %struct.Memory* @routine_addl__0xe___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4030ff)
  store %struct.Memory* %call_4030ff, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403102	 Bytes: 3
  %loadMem_403102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403102 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403102)
  store %struct.Memory* %call_403102, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403105	 Bytes: 5
  %loadMem_403105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403105 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403105)
  store %struct.Memory* %call_403105, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 40310a	 Bytes: 8
  %loadMem_40310a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40310a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40310a)
  store %struct.Memory* %call_40310a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403112	 Bytes: 4
  %loadMem_403112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403112 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403112)
  store %struct.Memory* %call_403112, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403116	 Bytes: 3
  %loadMem_403116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403116 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403116)
  store %struct.Memory* %call_403116, %struct.Memory** %MEMORY

  ; Code: addl $0xd, %ecx	 RIP: 403119	 Bytes: 3
  %loadMem_403119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403119 = call %struct.Memory* @routine_addl__0xd___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403119)
  store %struct.Memory* %call_403119, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40311c	 Bytes: 3
  %loadMem_40311c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40311c = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40311c)
  store %struct.Memory* %call_40311c, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40311f	 Bytes: 5
  %loadMem_40311f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40311f = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40311f)
  store %struct.Memory* %call_40311f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403124	 Bytes: 4
  %loadMem_403124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403124 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403124)
  store %struct.Memory* %call_403124, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403128	 Bytes: 3
  %loadMem_403128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403128 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403128)
  store %struct.Memory* %call_403128, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %ecx	 RIP: 40312b	 Bytes: 3
  %loadMem_40312b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40312b = call %struct.Memory* @routine_addl__0xf___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40312b)
  store %struct.Memory* %call_40312b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40312e	 Bytes: 3
  %loadMem_40312e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40312e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40312e)
  store %struct.Memory* %call_40312e, %struct.Memory** %MEMORY

  ; Code: subsd (%rdx,%rsi,8), %xmm0	 RIP: 403131	 Bytes: 5
  %loadMem_403131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403131 = call %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403131)
  store %struct.Memory* %call_403131, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x98(%rbp)	 RIP: 403136	 Bytes: 8
  %loadMem_403136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403136 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403136)
  store %struct.Memory* %call_403136, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm0	 RIP: 40313e	 Bytes: 5
  %loadMem_40313e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40313e = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40313e)
  store %struct.Memory* %call_40313e, %struct.Memory** %MEMORY

  ; Code: addsd -0x80(%rbp), %xmm0	 RIP: 403143	 Bytes: 5
  %loadMem_403143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403143 = call %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403143)
  store %struct.Memory* %call_403143, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403148	 Bytes: 4
  %loadMem_403148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403148 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403148)
  store %struct.Memory* %call_403148, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40314c	 Bytes: 3
  %loadMem_40314c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40314c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40314c)
  store %struct.Memory* %call_40314c, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 40314f	 Bytes: 3
  %loadMem_40314f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40314f = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40314f)
  store %struct.Memory* %call_40314f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403152	 Bytes: 3
  %loadMem_403152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403152 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403152)
  store %struct.Memory* %call_403152, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403155	 Bytes: 5
  %loadMem_403155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403155 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403155)
  store %struct.Memory* %call_403155, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm0	 RIP: 40315a	 Bytes: 5
  %loadMem_40315a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40315a = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40315a)
  store %struct.Memory* %call_40315a, %struct.Memory** %MEMORY

  ; Code: addsd -0x88(%rbp), %xmm0	 RIP: 40315f	 Bytes: 8
  %loadMem_40315f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40315f = call %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40315f)
  store %struct.Memory* %call_40315f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403167	 Bytes: 4
  %loadMem_403167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403167 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403167)
  store %struct.Memory* %call_403167, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40316b	 Bytes: 3
  %loadMem_40316b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40316b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40316b)
  store %struct.Memory* %call_40316b, %struct.Memory** %MEMORY

  ; Code: addl $0x9, %ecx	 RIP: 40316e	 Bytes: 3
  %loadMem_40316e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40316e = call %struct.Memory* @routine_addl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40316e)
  store %struct.Memory* %call_40316e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 403171	 Bytes: 3
  %loadMem_403171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403171 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403171)
  store %struct.Memory* %call_403171, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 403174	 Bytes: 5
  %loadMem_403174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403174 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403174)
  store %struct.Memory* %call_403174, %struct.Memory** %MEMORY

  ; Code: movsd -0x80(%rbp), %xmm0	 RIP: 403179	 Bytes: 5
  %loadMem_403179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403179 = call %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403179)
  store %struct.Memory* %call_403179, %struct.Memory** %MEMORY

  ; Code: movsd -0x60(%rbp), %xmm1	 RIP: 40317e	 Bytes: 5
  %loadMem_40317e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40317e = call %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40317e)
  store %struct.Memory* %call_40317e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403183	 Bytes: 4
  %loadMem_403183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403183 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403183)
  store %struct.Memory* %call_403183, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x60(%rbp)	 RIP: 403187	 Bytes: 5
  %loadMem_403187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403187 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403187)
  store %struct.Memory* %call_403187, %struct.Memory** %MEMORY

  ; Code: movsd -0x88(%rbp), %xmm0	 RIP: 40318c	 Bytes: 8
  %loadMem_40318c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40318c = call %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40318c)
  store %struct.Memory* %call_40318c, %struct.Memory** %MEMORY

  ; Code: movsd -0x68(%rbp), %xmm1	 RIP: 403194	 Bytes: 5
  %loadMem_403194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403194 = call %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403194)
  store %struct.Memory* %call_403194, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 403199	 Bytes: 4
  %loadMem_403199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403199 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403199)
  store %struct.Memory* %call_403199, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x68(%rbp)	 RIP: 40319d	 Bytes: 5
  %loadMem_40319d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40319d = call %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40319d)
  store %struct.Memory* %call_40319d, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4031a2	 Bytes: 5
  %loadMem_4031a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031a2 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031a2)
  store %struct.Memory* %call_4031a2, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4031a7	 Bytes: 5
  %loadMem_4031a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031a7 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031a7)
  store %struct.Memory* %call_4031a7, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4031ac	 Bytes: 3
  %loadMem_4031ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031ac = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031ac)
  store %struct.Memory* %call_4031ac, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 4031af	 Bytes: 5
  %loadMem_4031af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031af = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031af)
  store %struct.Memory* %call_4031af, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm0	 RIP: 4031b4	 Bytes: 5
  %loadMem_4031b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031b4 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031b4)
  store %struct.Memory* %call_4031b4, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4031b9	 Bytes: 5
  %loadMem_4031b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031b9 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031b9)
  store %struct.Memory* %call_4031b9, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm1	 RIP: 4031be	 Bytes: 5
  %loadMem_4031be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031be = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031be)
  store %struct.Memory* %call_4031be, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4031c3	 Bytes: 4
  %loadMem_4031c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031c3 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031c3)
  store %struct.Memory* %call_4031c3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4031c7	 Bytes: 4
  %loadMem_4031c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031c7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031c7)
  store %struct.Memory* %call_4031c7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4031cb	 Bytes: 3
  %loadMem_4031cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031cb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031cb)
  store %struct.Memory* %call_4031cb, %struct.Memory** %MEMORY

  ; Code: addl $0xc, %ecx	 RIP: 4031ce	 Bytes: 3
  %loadMem_4031ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031ce = call %struct.Memory* @routine_addl__0xc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031ce)
  store %struct.Memory* %call_4031ce, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4031d1	 Bytes: 3
  %loadMem_4031d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031d1 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031d1)
  store %struct.Memory* %call_4031d1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 4031d4	 Bytes: 5
  %loadMem_4031d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031d4 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031d4)
  store %struct.Memory* %call_4031d4, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4031d9	 Bytes: 5
  %loadMem_4031d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031d9 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031d9)
  store %struct.Memory* %call_4031d9, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4031de	 Bytes: 5
  %loadMem_4031de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031de = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031de)
  store %struct.Memory* %call_4031de, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4031e3	 Bytes: 3
  %loadMem_4031e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031e3 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031e3)
  store %struct.Memory* %call_4031e3, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 4031e6	 Bytes: 5
  %loadMem_4031e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031e6 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031e6)
  store %struct.Memory* %call_4031e6, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm0	 RIP: 4031eb	 Bytes: 5
  %loadMem_4031eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031eb = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031eb)
  store %struct.Memory* %call_4031eb, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm1	 RIP: 4031f0	 Bytes: 5
  %loadMem_4031f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031f0 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031f0)
  store %struct.Memory* %call_4031f0, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm1	 RIP: 4031f5	 Bytes: 5
  %loadMem_4031f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031f5 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031f5)
  store %struct.Memory* %call_4031f5, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4031fa	 Bytes: 4
  %loadMem_4031fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031fa = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031fa)
  store %struct.Memory* %call_4031fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4031fe	 Bytes: 4
  %loadMem_4031fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4031fe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4031fe)
  store %struct.Memory* %call_4031fe, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403202	 Bytes: 3
  %loadMem_403202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403202 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403202)
  store %struct.Memory* %call_403202, %struct.Memory** %MEMORY

  ; Code: addl $0xd, %ecx	 RIP: 403205	 Bytes: 3
  %loadMem_403205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403205 = call %struct.Memory* @routine_addl__0xd___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403205)
  store %struct.Memory* %call_403205, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403208	 Bytes: 3
  %loadMem_403208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403208 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403208)
  store %struct.Memory* %call_403208, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 40320b	 Bytes: 5
  %loadMem_40320b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40320b = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40320b)
  store %struct.Memory* %call_40320b, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 403210	 Bytes: 5
  %loadMem_403210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403210 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403210)
  store %struct.Memory* %call_403210, %struct.Memory** %MEMORY

  ; Code: subsd -0x98(%rbp), %xmm0	 RIP: 403215	 Bytes: 8
  %loadMem_403215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403215 = call %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403215)
  store %struct.Memory* %call_403215, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 40321d	 Bytes: 5
  %loadMem_40321d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40321d = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40321d)
  store %struct.Memory* %call_40321d, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 403222	 Bytes: 5
  %loadMem_403222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403222 = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403222)
  store %struct.Memory* %call_403222, %struct.Memory** %MEMORY

  ; Code: addsd -0x90(%rbp), %xmm0	 RIP: 403227	 Bytes: 8
  %loadMem_403227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403227 = call %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403227)
  store %struct.Memory* %call_403227, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 40322f	 Bytes: 5
  %loadMem_40322f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40322f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40322f)
  store %struct.Memory* %call_40322f, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 403234	 Bytes: 5
  %loadMem_403234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403234 = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403234)
  store %struct.Memory* %call_403234, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm0	 RIP: 403239	 Bytes: 5
  %loadMem_403239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403239 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403239)
  store %struct.Memory* %call_403239, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm1	 RIP: 40323e	 Bytes: 5
  %loadMem_40323e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40323e = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40323e)
  store %struct.Memory* %call_40323e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm1	 RIP: 403243	 Bytes: 5
  %loadMem_403243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403243 = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403243)
  store %struct.Memory* %call_403243, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 403248	 Bytes: 4
  %loadMem_403248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403248 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403248)
  store %struct.Memory* %call_403248, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40324c	 Bytes: 4
  %loadMem_40324c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40324c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40324c)
  store %struct.Memory* %call_40324c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 403250	 Bytes: 3
  %loadMem_403250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403250 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403250)
  store %struct.Memory* %call_403250, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 403253	 Bytes: 3
  %loadMem_403253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403253 = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403253)
  store %struct.Memory* %call_403253, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403256	 Bytes: 3
  %loadMem_403256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403256 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403256)
  store %struct.Memory* %call_403256, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403259	 Bytes: 5
  %loadMem_403259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403259 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403259)
  store %struct.Memory* %call_403259, %struct.Memory** %MEMORY

  ; Code: movsd -0x30(%rbp), %xmm0	 RIP: 40325e	 Bytes: 5
  %loadMem_40325e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40325e = call %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40325e)
  store %struct.Memory* %call_40325e, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm0	 RIP: 403263	 Bytes: 5
  %loadMem_403263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403263 = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403263)
  store %struct.Memory* %call_403263, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm1	 RIP: 403268	 Bytes: 5
  %loadMem_403268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403268 = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403268)
  store %struct.Memory* %call_403268, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm1	 RIP: 40326d	 Bytes: 5
  %loadMem_40326d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40326d = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40326d)
  store %struct.Memory* %call_40326d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 403272	 Bytes: 4
  %loadMem_403272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403272 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403272)
  store %struct.Memory* %call_403272, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403276	 Bytes: 4
  %loadMem_403276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403276 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403276)
  store %struct.Memory* %call_403276, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 40327a	 Bytes: 3
  %loadMem_40327a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40327a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40327a)
  store %struct.Memory* %call_40327a, %struct.Memory** %MEMORY

  ; Code: addl $0xb, %ecx	 RIP: 40327d	 Bytes: 3
  %loadMem_40327d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40327d = call %struct.Memory* @routine_addl__0xb___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40327d)
  store %struct.Memory* %call_40327d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 403280	 Bytes: 3
  %loadMem_403280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403280 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403280)
  store %struct.Memory* %call_403280, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 403283	 Bytes: 5
  %loadMem_403283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403283 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403283)
  store %struct.Memory* %call_403283, %struct.Memory** %MEMORY

  ; Code: movsd -0x70(%rbp), %xmm0	 RIP: 403288	 Bytes: 5
  %loadMem_403288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403288 = call %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403288)
  store %struct.Memory* %call_403288, %struct.Memory** %MEMORY

  ; Code: addsd -0x98(%rbp), %xmm0	 RIP: 40328d	 Bytes: 8
  %loadMem_40328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40328d = call %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40328d)
  store %struct.Memory* %call_40328d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x60(%rbp)	 RIP: 403295	 Bytes: 5
  %loadMem_403295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403295 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403295)
  store %struct.Memory* %call_403295, %struct.Memory** %MEMORY

  ; Code: movsd -0x78(%rbp), %xmm0	 RIP: 40329a	 Bytes: 5
  %loadMem_40329a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40329a = call %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40329a)
  store %struct.Memory* %call_40329a, %struct.Memory** %MEMORY

  ; Code: subsd -0x90(%rbp), %xmm0	 RIP: 40329f	 Bytes: 8
  %loadMem_40329f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40329f = call %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40329f)
  store %struct.Memory* %call_40329f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x68(%rbp)	 RIP: 4032a7	 Bytes: 5
  %loadMem_4032a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032a7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032a7)
  store %struct.Memory* %call_4032a7, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4032ac	 Bytes: 5
  %loadMem_4032ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032ac = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032ac)
  store %struct.Memory* %call_4032ac, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm0	 RIP: 4032b1	 Bytes: 5
  %loadMem_4032b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032b1 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032b1)
  store %struct.Memory* %call_4032b1, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 4032b6	 Bytes: 5
  %loadMem_4032b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032b6 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032b6)
  store %struct.Memory* %call_4032b6, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm1	 RIP: 4032bb	 Bytes: 5
  %loadMem_4032bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032bb = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032bb)
  store %struct.Memory* %call_4032bb, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 4032c0	 Bytes: 4
  %loadMem_4032c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032c0 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032c0)
  store %struct.Memory* %call_4032c0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4032c4	 Bytes: 4
  %loadMem_4032c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032c4)
  store %struct.Memory* %call_4032c4, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4032c8	 Bytes: 3
  %loadMem_4032c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032c8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032c8)
  store %struct.Memory* %call_4032c8, %struct.Memory** %MEMORY

  ; Code: addl $0xe, %ecx	 RIP: 4032cb	 Bytes: 3
  %loadMem_4032cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032cb = call %struct.Memory* @routine_addl__0xe___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032cb)
  store %struct.Memory* %call_4032cb, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4032ce	 Bytes: 3
  %loadMem_4032ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032ce = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032ce)
  store %struct.Memory* %call_4032ce, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4032d1	 Bytes: 5
  %loadMem_4032d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032d1 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032d1)
  store %struct.Memory* %call_4032d1, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4032d6	 Bytes: 5
  %loadMem_4032d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032d6 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032d6)
  store %struct.Memory* %call_4032d6, %struct.Memory** %MEMORY

  ; Code: mulsd -0x68(%rbp), %xmm0	 RIP: 4032db	 Bytes: 5
  %loadMem_4032db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032db = call %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032db)
  store %struct.Memory* %call_4032db, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm1	 RIP: 4032e0	 Bytes: 5
  %loadMem_4032e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032e0 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032e0)
  store %struct.Memory* %call_4032e0, %struct.Memory** %MEMORY

  ; Code: mulsd -0x60(%rbp), %xmm1	 RIP: 4032e5	 Bytes: 5
  %loadMem_4032e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032e5 = call %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032e5)
  store %struct.Memory* %call_4032e5, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 4032ea	 Bytes: 4
  %loadMem_4032ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032ea = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032ea)
  store %struct.Memory* %call_4032ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4032ee	 Bytes: 4
  %loadMem_4032ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032ee)
  store %struct.Memory* %call_4032ee, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4032f2	 Bytes: 3
  %loadMem_4032f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032f2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032f2)
  store %struct.Memory* %call_4032f2, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %ecx	 RIP: 4032f5	 Bytes: 3
  %loadMem_4032f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032f5 = call %struct.Memory* @routine_addl__0xf___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032f5)
  store %struct.Memory* %call_4032f5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4032f8	 Bytes: 3
  %loadMem_4032f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032f8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032f8)
  store %struct.Memory* %call_4032f8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4032fb	 Bytes: 5
  %loadMem_4032fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4032fb = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4032fb)
  store %struct.Memory* %call_4032fb, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 403300	 Bytes: 3
  %loadMem_403300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403300 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403300)
  store %struct.Memory* %call_403300, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %eax	 RIP: 403303	 Bytes: 3
  %loadMem_403303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403303 = call %struct.Memory* @routine_addl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403303)
  store %struct.Memory* %call_403303, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 403306	 Bytes: 3
  %loadMem_403306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403306 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403306)
  store %struct.Memory* %call_403306, %struct.Memory** %MEMORY

  ; Code: jmpq .L_402bf2	 RIP: 403309	 Bytes: 5
  %loadMem_403309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403309 = call %struct.Memory* @routine_jmpq_.L_402bf2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403309, i64 -1815, i64 5)
  store %struct.Memory* %call_403309, %struct.Memory** %MEMORY

  br label %block_.L_402bf2

  ; Code: .L_40330e:	 RIP: 40330e	 Bytes: 0
block_.L_40330e:

  ; Code: addq $0x18, %rsp	 RIP: 40330e	 Bytes: 4
  %loadMem_40330e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40330e = call %struct.Memory* @routine_addq__0x18___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40330e)
  store %struct.Memory* %call_40330e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 403312	 Bytes: 1
  %loadMem_403312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403312 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403312)
  store %struct.Memory* %call_403312, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 403313	 Bytes: 1
  %loadMem_403313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403313 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403313)
  store %struct.Memory* %call_403313, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_403313
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

define %struct.Memory* @routine_subq__0x18___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 24)
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

define %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addsd_0x10__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x8__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x18__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_subsd_0x10__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 16
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








define %struct.Memory* @routine_subsd_0x18__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x30__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movsd_0x28__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x38__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_subsd_0x30__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_subsd_0x38__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd__xmm0____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_movsd__xmm0__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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




define %struct.Memory* @routine_movsd__xmm0__0x20__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subsd_MINUS0x88__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd__xmm0__0x28__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movsd__xmm0__0x10__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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


define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd__xmm0__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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




define %struct.Memory* @routine_movsd__xmm0__0x30__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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




define %struct.Memory* @routine_movsd__xmm0__0x38__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movsd_0x10__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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




define %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x50__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_0x48__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x58__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_0x50__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_0x58__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x70__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_0x68__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addsd_0x78__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_0x70__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_subsd_0x78__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movsd__xmm0__0x40__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0__0x48__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd__xmm0__0x60__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd__xmm0__0x68__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movsd__xmm0__0x50__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd__xmm0__0x58__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
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


define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd__xmm0__0x70__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movsd__xmm0__0x78__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x10__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jge_.L_40330e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movsd_0x14d0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5336
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
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


define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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








define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
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


define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
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
















define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
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


define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_addl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addl__0x6___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_addl__0x5___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 5)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addl__0x7___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movsd__xmm1____rdx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
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


define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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


define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addsd_MINUS0x90__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






































define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
































































define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_subsd_MINUS0x38__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_addl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_addl__0xa___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 10)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_addl__0x9___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addl__0xb___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 11)
  ret %struct.Memory* %12
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






























define %struct.Memory* @routine_addl__0xc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addl__0xe___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 14)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_addl__0xd___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 13)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addl__0xf___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 15)
  ret %struct.Memory* %12
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




















define %struct.Memory* @routine_mulsd_MINUS0x68__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
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


















define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_jmpq_.L_402bf2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x18___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 24)
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

