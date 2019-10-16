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

declare %struct.Memory* @sub_400700.atoi_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_400690.atof_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402b60._Z4fillIPaaEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402ba0._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402c40._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402ce0._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402d80._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402e20._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402ec0._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_402f60._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403000._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4030a0._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403140._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4031e0._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403280._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403320._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4033c0._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403460._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403500._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4035a0._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403640._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4036e0._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403780._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403820._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4038c0._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403960._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403a00._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403aa0._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403b40._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403be0._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403c80._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403d20._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403dc0._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403e60._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403f00._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403fa0._Z4fillIPhhEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_403fe0._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404080._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404120._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4041c0._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404260._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404300._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4043a0._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404440._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4044e0._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404580._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404620._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4046c0._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404760._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404800._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4048a0._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404940._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4049e0._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404a80._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404b20._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404bc0._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404c60._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404d00._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404da0._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404e40._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404ee0._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_404f80._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405020._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4050c0._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405160._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405200._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4052a0._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405340._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4053e0._Z4fillIPssEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405420._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4054d0._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405580._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405630._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4056e0._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405790._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405840._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4058f0._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4059a0._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405a50._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405b00._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405bb0._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405c60._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405d10._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405dc0._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405e70._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405f20._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_405fd0._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406080._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406130._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4061e0._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406290._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406340._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4063f0._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4064a0._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406550._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406600._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4066b0._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406760._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406810._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4068c0._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406970._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406a20._Z4fillIPttEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406a60._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406b10._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406bc0._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406c70._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406d20._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406dd0._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406e80._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406f30._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_406fe0._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407090._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407140._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4071f0._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4072a0._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407350._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407400._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4074b0._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407560._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407610._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4076c0._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407770._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407820._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4078d0._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407980._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407a30._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407ae0._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407b90._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407c40._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407cf0._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407da0._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407e50._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407f00._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_407fb0._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408060._Z4fillIPiiEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4080a0._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408140._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4081e0._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408280._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408320._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4083c0._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408460._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408500._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4085a0._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408640._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4086e0._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408780._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408820._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4088c0._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408960._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408a00._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408aa0._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408b40._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408be0._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408c80._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408d20._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408dc0._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408e60._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408f00._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_408fa0._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409040._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4090e0._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409180._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409220._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4092c0._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409360._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409400._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4094a0._Z4fillIPjjEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4094e0._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409580._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409620._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4096c0._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409760._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409800._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4098a0._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409940._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_4099e0._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409a80._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409b20._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409bc0._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409c60._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409d00._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409da0._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409e40._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409ee0._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_409f80._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a020._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a0c0._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a160._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a200._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a2a0._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a340._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a3e0._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a480._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a520._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a5c0._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a660._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a700._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a7a0._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a840._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a8e0._Z4fillIPllEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a920._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40a9c0._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40aa60._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ab00._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40aba0._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ac40._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ace0._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ad80._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ae20._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40aec0._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40af60._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b000._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b0a0._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b140._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b1e0._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b280._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b320._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b3c0._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b460._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b500._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b5a0._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b640._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b6e0._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b780._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b820._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b8c0._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40b960._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ba00._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40baa0._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bb40._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bbe0._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bc80._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bd20._Z4fillIPmmEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bd60._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40be00._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bea0._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bf40._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40bfe0._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c080._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c120._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c1c0._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c260._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c300._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c3a0._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c440._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c4e0._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c580._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c620._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c6c0._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c760._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c800._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c8a0._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c940._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40c9e0._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ca80._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cb20._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cbc0._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cc60._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cd00._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cda0._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ce40._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cee0._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40cf80._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d020._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d0c0._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d160._Z4fillIPffEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d1a0._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d240._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d2e0._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d380._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d420._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d4c0._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d560._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d600._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d6a0._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d740._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d7e0._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d880._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d920._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40d9c0._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40da60._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40db00._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40dba0._Z4fillIPddEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40dbe0._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40dc80._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40dd20._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40ddc0._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40de60._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40df00._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40dfa0._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e040._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e0e0._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e180._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e220._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e2c0._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e360._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e400._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e4a0._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)
declare %struct.Memory* @sub_40e540._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

; Data Access Globals


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 400ee0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400ee0	 Bytes: 1
  %loadMem_400ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee0)
  store %struct.Memory* %call_400ee0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400ee1	 Bytes: 3
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee1)
  store %struct.Memory* %call_400ee1, %struct.Memory** %MEMORY

  ; Code: subq $0x90, %rsp	 RIP: 400ee4	 Bytes: 7
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee4 = call %struct.Memory* @routine_subq__0x90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee4)
  store %struct.Memory* %call_400ee4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400eeb	 Bytes: 7
  %loadMem_400eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eeb = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eeb)
  store %struct.Memory* %call_400eeb, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 400ef2	 Bytes: 3
  %loadMem_400ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef2 = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef2)
  store %struct.Memory* %call_400ef2, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 400ef5	 Bytes: 4
  %loadMem_400ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef5 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef5)
  store %struct.Memory* %call_400ef5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 400ef9	 Bytes: 4
  %loadMem_400ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef9 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef9)
  store %struct.Memory* %call_400ef9, %struct.Memory** %MEMORY

  ; Code: jle .L_400f17	 RIP: 400efd	 Bytes: 6
  %loadMem_400efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efd = call %struct.Memory* @routine_jle_.L_400f17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efd, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_400efd, %struct.Memory** %MEMORY

  %loadBr_400efd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400efd = icmp eq i8 %loadBr_400efd, 1
  br i1 %cmpBr_400efd, label %block_.L_400f17, label %block_400f03

block_400f03:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400f03	 Bytes: 4
  %loadMem_400f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f03 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f03)
  store %struct.Memory* %call_400f03, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdi	 RIP: 400f07	 Bytes: 4
  %loadMem_400f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f07 = call %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f07)
  store %struct.Memory* %call_400f07, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 400f0b	 Bytes: 5
  %loadMem1_400f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f0b = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f0b, i64 -2059, i64 5, i64 5)
  store %struct.Memory* %call1_400f0b, %struct.Memory** %MEMORY

  %loadMem2_400f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f0b = load i64, i64* %3
  %call2_400f0b = call %struct.Memory* @sub_400700.atoi_plt(%struct.State* %0, i64  %loadPC_400f0b, %struct.Memory* %loadMem2_400f0b)
  store %struct.Memory* %call2_400f0b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x622080	 RIP: 400f10	 Bytes: 7
  %loadMem_400f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f10 = call %struct.Memory* @routine_movl__eax__0x622080(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f10)
  store %struct.Memory* %call_400f10, %struct.Memory** %MEMORY

  ; Code: .L_400f17:	 RIP: 400f17	 Bytes: 0
  br label %block_.L_400f17
block_.L_400f17:

  ; Code: cmpl $0x2, -0x8(%rbp)	 RIP: 400f17	 Bytes: 4
  %loadMem_400f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f17 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f17)
  store %struct.Memory* %call_400f17, %struct.Memory** %MEMORY

  ; Code: jle .L_400f37	 RIP: 400f1b	 Bytes: 6
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1b = call %struct.Memory* @routine_jle_.L_400f37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1b, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_400f1b, %struct.Memory** %MEMORY

  %loadBr_400f1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f1b = icmp eq i8 %loadBr_400f1b, 1
  br i1 %cmpBr_400f1b, label %block_.L_400f37, label %block_400f21

block_400f21:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400f21	 Bytes: 4
  %loadMem_400f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f21 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f21)
  store %struct.Memory* %call_400f21, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rdi	 RIP: 400f25	 Bytes: 4
  %loadMem_400f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f25 = call %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f25)
  store %struct.Memory* %call_400f25, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 400f29	 Bytes: 5
  %loadMem1_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f29 = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f29, i64 -2201, i64 5, i64 5)
  store %struct.Memory* %call1_400f29, %struct.Memory** %MEMORY

  %loadMem2_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f29 = load i64, i64* %3
  %call2_400f29 = call %struct.Memory* @sub_400690.atof_plt(%struct.State* %0, i64  %loadPC_400f29, %struct.Memory* %loadMem2_400f29)
  store %struct.Memory* %call2_400f29, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x622088	 RIP: 400f2e	 Bytes: 9
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2e = call %struct.Memory* @routine_movsd__xmm0__0x622088(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2e)
  store %struct.Memory* %call_400f2e, %struct.Memory** %MEMORY

  ; Code: .L_400f37:	 RIP: 400f37	 Bytes: 0
  br label %block_.L_400f37
block_.L_400f37:

  ; Code: movq $0x6397d0, %rax	 RIP: 400f37	 Bytes: 10
  %loadMem_400f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f37 = call %struct.Memory* @routine_movq__0x6397d0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f37)
  store %struct.Memory* %call_400f37, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 400f41	 Bytes: 3
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f41 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f41)
  store %struct.Memory* %call_400f41, %struct.Memory** %MEMORY

  ; Code: addq $0xfa00, %rcx	 RIP: 400f44	 Bytes: 7
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f44 = call %struct.Memory* @routine_addq__0xfa00___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f44)
  store %struct.Memory* %call_400f44, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x221135(%rip), %edx	 RIP: 400f4b	 Bytes: 8
  %loadMem_400f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4b = call %struct.Memory* @routine_cvttsd2si_0x221135__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4b)
  store %struct.Memory* %call_400f4b, %struct.Memory** %MEMORY

  ; Code: movl $0x672210, %esi	 RIP: 400f53	 Bytes: 5
  %loadMem_400f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f53 = call %struct.Memory* @routine_movl__0x672210___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f53)
  store %struct.Memory* %call_400f53, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 400f58	 Bytes: 2
  %loadMem_400f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f58 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f58)
  store %struct.Memory* %call_400f58, %struct.Memory** %MEMORY

  ; Code: movb %dl, %r8b	 RIP: 400f5a	 Bytes: 3
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5a = call %struct.Memory* @routine_movb__dl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5a)
  store %struct.Memory* %call_400f5a, %struct.Memory** %MEMORY

  ; Code: movsbl %r8b, %edx	 RIP: 400f5d	 Bytes: 4
  %loadMem_400f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5d = call %struct.Memory* @routine_movsbl__r8b___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5d)
  store %struct.Memory* %call_400f5d, %struct.Memory** %MEMORY

  ; Code: movl $0x674150, %esi	 RIP: 400f61	 Bytes: 5
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f61 = call %struct.Memory* @routine_movl__0x674150___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f61)
  store %struct.Memory* %call_400f61, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x18(%rbp)	 RIP: 400f66	 Bytes: 4
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f66 = call %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f66)
  store %struct.Memory* %call_400f66, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 400f6a	 Bytes: 4
  %loadMem_400f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6a = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6a)
  store %struct.Memory* %call_400f6a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x28(%rbp)	 RIP: 400f6e	 Bytes: 4
  %loadMem_400f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6e = call %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6e)
  store %struct.Memory* %call_400f6e, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPaaEvT_S1_T0_	 RIP: 400f72	 Bytes: 5
  %loadMem1_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f72 = call %struct.Memory* @routine_callq_._Z4fillIPaaEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f72, i64 7150, i64 5, i64 5)
  store %struct.Memory* %call1_400f72, %struct.Memory** %MEMORY

  %loadMem2_400f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f72 = load i64, i64* %3
  %call2_400f72 = call %struct.Memory* @sub_402b60._Z4fillIPaaEvT_S1_T0_(%struct.State* %0, i64  %loadPC_400f72, %struct.Memory* %loadMem2_400f72)
  store %struct.Memory* %call2_400f72, %struct.Memory** %MEMORY

  ; Code: movl 0x221103(%rip), %edx	 RIP: 400f77	 Bytes: 6
  %loadMem_400f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f77 = call %struct.Memory* @routine_movl_0x221103__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f77)
  store %struct.Memory* %call_400f77, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x22113d(%rip)	 RIP: 400f7d	 Bytes: 6
  %loadMem_400f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7d = call %struct.Memory* @routine_movl__edx__0x22113d__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7d)
  store %struct.Memory* %call_400f7d, %struct.Memory** %MEMORY

  ; Code: movl $0x418c23, %edx	 RIP: 400f83	 Bytes: 5
  %loadMem_400f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f83 = call %struct.Memory* @routine_movl__0x418c23___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f83)
  store %struct.Memory* %call_400f83, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %r9d	 RIP: 400f88	 Bytes: 6
  %loadMem_400f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f88 = call %struct.Memory* @routine_movl__0x1f40___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f88)
  store %struct.Memory* %call_400f88, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 400f8e	 Bytes: 4
  %loadMem_400f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8e)
  store %struct.Memory* %call_400f8e, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %esi	 RIP: 400f92	 Bytes: 3
  %loadMem_400f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f92 = call %struct.Memory* @routine_movl__r9d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f92)
  store %struct.Memory* %call_400f92, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x2c(%rbp)	 RIP: 400f95	 Bytes: 4
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f95 = call %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f95)
  store %struct.Memory* %call_400f95, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa10custom_twoIaEEvPT_iPKc	 RIP: 400f99	 Bytes: 5
  %loadMem1_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400f99 = call %struct.Memory* @routine_callq_._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400f99, i64 7175, i64 5, i64 5)
  store %struct.Memory* %call1_400f99, %struct.Memory** %MEMORY

  %loadMem2_400f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400f99 = load i64, i64* %3
  %call2_400f99 = call %struct.Memory* @sub_402ba0._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_400f99, %struct.Memory* %loadMem2_400f99)
  store %struct.Memory* %call2_400f99, %struct.Memory** %MEMORY

  ; Code: movl $0x418c34, %esi	 RIP: 400f9e	 Bytes: 5
  %loadMem_400f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9e = call %struct.Memory* @routine_movl__0x418c34___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9e)
  store %struct.Memory* %call_400f9e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 400fa3	 Bytes: 2
  %loadMem_400fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa3 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa3)
  store %struct.Memory* %call_400fa3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 400fa5	 Bytes: 4
  %loadMem_400fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa5)
  store %struct.Memory* %call_400fa5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 400fa9	 Bytes: 3
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa9)
  store %struct.Memory* %call_400fa9, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc	 RIP: 400fac	 Bytes: 5
  %loadMem1_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400fac = call %struct.Memory* @routine_callq_._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400fac, i64 7316, i64 5, i64 5)
  store %struct.Memory* %call1_400fac, %struct.Memory** %MEMORY

  %loadMem2_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fac = load i64, i64* %3
  %call2_400fac = call %struct.Memory* @sub_402c40._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_400fac, %struct.Memory* %loadMem2_400fac)
  store %struct.Memory* %call2_400fac, %struct.Memory** %MEMORY

  ; Code: movl $0x418c4a, %esi	 RIP: 400fb1	 Bytes: 5
  %loadMem_400fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb1 = call %struct.Memory* @routine_movl__0x418c4a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb1)
  store %struct.Memory* %call_400fb1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 400fb6	 Bytes: 2
  %loadMem_400fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb6)
  store %struct.Memory* %call_400fb6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 400fb8	 Bytes: 4
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb8)
  store %struct.Memory* %call_400fb8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 400fbc	 Bytes: 3
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fbc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fbc)
  store %struct.Memory* %call_400fbc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc	 RIP: 400fbf	 Bytes: 5
  %loadMem1_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400fbf = call %struct.Memory* @routine_callq_._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400fbf, i64 7457, i64 5, i64 5)
  store %struct.Memory* %call1_400fbf, %struct.Memory** %MEMORY

  %loadMem2_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fbf = load i64, i64* %3
  %call2_400fbf = call %struct.Memory* @sub_402ce0._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_400fbf, %struct.Memory* %loadMem2_400fbf)
  store %struct.Memory* %call2_400fbf, %struct.Memory** %MEMORY

  ; Code: movl $0x418c65, %esi	 RIP: 400fc4	 Bytes: 5
  %loadMem_400fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc4 = call %struct.Memory* @routine_movl__0x418c65___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc4)
  store %struct.Memory* %call_400fc4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 400fc9	 Bytes: 2
  %loadMem_400fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc9 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc9)
  store %struct.Memory* %call_400fc9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 400fcb	 Bytes: 4
  %loadMem_400fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcb)
  store %struct.Memory* %call_400fcb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 400fcf	 Bytes: 3
  %loadMem_400fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcf)
  store %struct.Memory* %call_400fcf, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc	 RIP: 400fd2	 Bytes: 5
  %loadMem1_400fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400fd2 = call %struct.Memory* @routine_callq_._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400fd2, i64 7598, i64 5, i64 5)
  store %struct.Memory* %call1_400fd2, %struct.Memory** %MEMORY

  %loadMem2_400fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fd2 = load i64, i64* %3
  %call2_400fd2 = call %struct.Memory* @sub_402d80._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_400fd2, %struct.Memory* %loadMem2_400fd2)
  store %struct.Memory* %call2_400fd2, %struct.Memory** %MEMORY

  ; Code: movl $0x418c80, %esi	 RIP: 400fd7	 Bytes: 5
  %loadMem_400fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd7 = call %struct.Memory* @routine_movl__0x418c80___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd7)
  store %struct.Memory* %call_400fd7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 400fdc	 Bytes: 2
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdc = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdc)
  store %struct.Memory* %call_400fdc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 400fde	 Bytes: 4
  %loadMem_400fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fde = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fde)
  store %struct.Memory* %call_400fde, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 400fe2	 Bytes: 3
  %loadMem_400fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe2)
  store %struct.Memory* %call_400fe2, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc	 RIP: 400fe5	 Bytes: 5
  %loadMem1_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400fe5 = call %struct.Memory* @routine_callq_._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400fe5, i64 7739, i64 5, i64 5)
  store %struct.Memory* %call1_400fe5, %struct.Memory** %MEMORY

  %loadMem2_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400fe5 = load i64, i64* %3
  %call2_400fe5 = call %struct.Memory* @sub_402e20._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_400fe5, %struct.Memory* %loadMem2_400fe5)
  store %struct.Memory* %call2_400fe5, %struct.Memory** %MEMORY

  ; Code: movl $0x418c99, %esi	 RIP: 400fea	 Bytes: 5
  %loadMem_400fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fea = call %struct.Memory* @routine_movl__0x418c99___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fea)
  store %struct.Memory* %call_400fea, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 400fef	 Bytes: 2
  %loadMem_400fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fef = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fef)
  store %struct.Memory* %call_400fef, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 400ff1	 Bytes: 4
  %loadMem_400ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff1)
  store %struct.Memory* %call_400ff1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 400ff5	 Bytes: 3
  %loadMem_400ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff5)
  store %struct.Memory* %call_400ff5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc	 RIP: 400ff8	 Bytes: 5
  %loadMem1_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ff8 = call %struct.Memory* @routine_callq_._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ff8, i64 7880, i64 5, i64 5)
  store %struct.Memory* %call1_400ff8, %struct.Memory** %MEMORY

  %loadMem2_400ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ff8 = load i64, i64* %3
  %call2_400ff8 = call %struct.Memory* @sub_402ec0._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_400ff8, %struct.Memory* %loadMem2_400ff8)
  store %struct.Memory* %call2_400ff8, %struct.Memory** %MEMORY

  ; Code: movl $0x418caf, %esi	 RIP: 400ffd	 Bytes: 5
  %loadMem_400ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffd = call %struct.Memory* @routine_movl__0x418caf___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffd)
  store %struct.Memory* %call_400ffd, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401002	 Bytes: 2
  %loadMem_401002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401002 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401002)
  store %struct.Memory* %call_401002, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401004	 Bytes: 4
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401004 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401004)
  store %struct.Memory* %call_401004, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401008	 Bytes: 3
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401008 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401008)
  store %struct.Memory* %call_401008, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc	 RIP: 40100b	 Bytes: 5
  %loadMem1_40100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40100b = call %struct.Memory* @routine_callq_._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40100b, i64 8021, i64 5, i64 5)
  store %struct.Memory* %call1_40100b, %struct.Memory** %MEMORY

  %loadMem2_40100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40100b = load i64, i64* %3
  %call2_40100b = call %struct.Memory* @sub_402f60._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40100b, %struct.Memory* %loadMem2_40100b)
  store %struct.Memory* %call2_40100b, %struct.Memory** %MEMORY

  ; Code: movl $0x418cc7, %esi	 RIP: 401010	 Bytes: 5
  %loadMem_401010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401010 = call %struct.Memory* @routine_movl__0x418cc7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401010)
  store %struct.Memory* %call_401010, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401015	 Bytes: 2
  %loadMem_401015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401015 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401015)
  store %struct.Memory* %call_401015, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401017	 Bytes: 4
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401017 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401017)
  store %struct.Memory* %call_401017, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40101b	 Bytes: 3
  %loadMem_40101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101b)
  store %struct.Memory* %call_40101b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc	 RIP: 40101e	 Bytes: 5
  %loadMem1_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40101e = call %struct.Memory* @routine_callq_._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40101e, i64 8162, i64 5, i64 5)
  store %struct.Memory* %call1_40101e, %struct.Memory** %MEMORY

  %loadMem2_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40101e = load i64, i64* %3
  %call2_40101e = call %struct.Memory* @sub_403000._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40101e, %struct.Memory* %loadMem2_40101e)
  store %struct.Memory* %call2_40101e, %struct.Memory** %MEMORY

  ; Code: movl $0x418ce2, %esi	 RIP: 401023	 Bytes: 5
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401023 = call %struct.Memory* @routine_movl__0x418ce2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401023)
  store %struct.Memory* %call_401023, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401028	 Bytes: 2
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401028 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401028)
  store %struct.Memory* %call_401028, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 40102a	 Bytes: 4
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102a)
  store %struct.Memory* %call_40102a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40102e	 Bytes: 3
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102e)
  store %struct.Memory* %call_40102e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc	 RIP: 401031	 Bytes: 5
  %loadMem1_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401031 = call %struct.Memory* @routine_callq_._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401031, i64 8303, i64 5, i64 5)
  store %struct.Memory* %call1_401031, %struct.Memory** %MEMORY

  %loadMem2_401031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401031 = load i64, i64* %3
  %call2_401031 = call %struct.Memory* @sub_4030a0._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401031, %struct.Memory* %loadMem2_401031)
  store %struct.Memory* %call2_401031, %struct.Memory** %MEMORY

  ; Code: movl $0x418d01, %esi	 RIP: 401036	 Bytes: 5
  %loadMem_401036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401036 = call %struct.Memory* @routine_movl__0x418d01___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401036)
  store %struct.Memory* %call_401036, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40103b	 Bytes: 2
  %loadMem_40103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103b = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103b)
  store %struct.Memory* %call_40103b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 40103d	 Bytes: 4
  %loadMem_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103d)
  store %struct.Memory* %call_40103d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401041	 Bytes: 3
  %loadMem_401041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401041 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401041)
  store %struct.Memory* %call_401041, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc	 RIP: 401044	 Bytes: 5
  %loadMem1_401044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401044 = call %struct.Memory* @routine_callq_._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401044, i64 8444, i64 5, i64 5)
  store %struct.Memory* %call1_401044, %struct.Memory** %MEMORY

  %loadMem2_401044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401044 = load i64, i64* %3
  %call2_401044 = call %struct.Memory* @sub_403140._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401044, %struct.Memory* %loadMem2_401044)
  store %struct.Memory* %call2_401044, %struct.Memory** %MEMORY

  ; Code: movl $0x418d1d, %esi	 RIP: 401049	 Bytes: 5
  %loadMem_401049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401049 = call %struct.Memory* @routine_movl__0x418d1d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401049)
  store %struct.Memory* %call_401049, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40104e	 Bytes: 2
  %loadMem_40104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104e)
  store %struct.Memory* %call_40104e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401050	 Bytes: 4
  %loadMem_401050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401050 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401050)
  store %struct.Memory* %call_401050, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401054	 Bytes: 3
  %loadMem_401054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401054 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401054)
  store %struct.Memory* %call_401054, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc	 RIP: 401057	 Bytes: 5
  %loadMem1_401057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401057 = call %struct.Memory* @routine_callq_._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401057, i64 8585, i64 5, i64 5)
  store %struct.Memory* %call1_401057, %struct.Memory** %MEMORY

  %loadMem2_401057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401057 = load i64, i64* %3
  %call2_401057 = call %struct.Memory* @sub_4031e0._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401057, %struct.Memory* %loadMem2_401057)
  store %struct.Memory* %call2_401057, %struct.Memory** %MEMORY

  ; Code: movl $0x418d42, %esi	 RIP: 40105c	 Bytes: 5
  %loadMem_40105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105c = call %struct.Memory* @routine_movl__0x418d42___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105c)
  store %struct.Memory* %call_40105c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401061	 Bytes: 2
  %loadMem_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401061 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401061)
  store %struct.Memory* %call_401061, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401063	 Bytes: 4
  %loadMem_401063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401063 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401063)
  store %struct.Memory* %call_401063, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401067	 Bytes: 3
  %loadMem_401067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401067 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401067)
  store %struct.Memory* %call_401067, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc	 RIP: 40106a	 Bytes: 5
  %loadMem1_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40106a = call %struct.Memory* @routine_callq_._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40106a, i64 8726, i64 5, i64 5)
  store %struct.Memory* %call1_40106a, %struct.Memory** %MEMORY

  %loadMem2_40106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40106a = load i64, i64* %3
  %call2_40106a = call %struct.Memory* @sub_403280._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40106a, %struct.Memory* %loadMem2_40106a)
  store %struct.Memory* %call2_40106a, %struct.Memory** %MEMORY

  ; Code: movl $0x418d64, %esi	 RIP: 40106f	 Bytes: 5
  %loadMem_40106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106f = call %struct.Memory* @routine_movl__0x418d64___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106f)
  store %struct.Memory* %call_40106f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401074	 Bytes: 2
  %loadMem_401074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401074 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401074)
  store %struct.Memory* %call_401074, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401076	 Bytes: 4
  %loadMem_401076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401076 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401076)
  store %struct.Memory* %call_401076, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40107a	 Bytes: 3
  %loadMem_40107a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107a)
  store %struct.Memory* %call_40107a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc	 RIP: 40107d	 Bytes: 5
  %loadMem1_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40107d = call %struct.Memory* @routine_callq_._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40107d, i64 8867, i64 5, i64 5)
  store %struct.Memory* %call1_40107d, %struct.Memory** %MEMORY

  %loadMem2_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40107d = load i64, i64* %3
  %call2_40107d = call %struct.Memory* @sub_403320._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40107d, %struct.Memory* %loadMem2_40107d)
  store %struct.Memory* %call2_40107d, %struct.Memory** %MEMORY

  ; Code: movl $0x418d7a, %esi	 RIP: 401082	 Bytes: 5
  %loadMem_401082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401082 = call %struct.Memory* @routine_movl__0x418d7a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401082)
  store %struct.Memory* %call_401082, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401087	 Bytes: 2
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401087 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401087)
  store %struct.Memory* %call_401087, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401089	 Bytes: 4
  %loadMem_401089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401089 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401089)
  store %struct.Memory* %call_401089, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40108d	 Bytes: 3
  %loadMem_40108d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108d)
  store %struct.Memory* %call_40108d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc	 RIP: 401090	 Bytes: 5
  %loadMem1_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401090 = call %struct.Memory* @routine_callq_._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401090, i64 9008, i64 5, i64 5)
  store %struct.Memory* %call1_401090, %struct.Memory** %MEMORY

  %loadMem2_401090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401090 = load i64, i64* %3
  %call2_401090 = call %struct.Memory* @sub_4033c0._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401090, %struct.Memory* %loadMem2_401090)
  store %struct.Memory* %call2_401090, %struct.Memory** %MEMORY

  ; Code: movl $0x418d8f, %esi	 RIP: 401095	 Bytes: 5
  %loadMem_401095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401095 = call %struct.Memory* @routine_movl__0x418d8f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401095)
  store %struct.Memory* %call_401095, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40109a	 Bytes: 2
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109a)
  store %struct.Memory* %call_40109a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 40109c	 Bytes: 4
  %loadMem_40109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109c)
  store %struct.Memory* %call_40109c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4010a0	 Bytes: 3
  %loadMem_4010a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a0)
  store %struct.Memory* %call_4010a0, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc	 RIP: 4010a3	 Bytes: 5
  %loadMem1_4010a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4010a3 = call %struct.Memory* @routine_callq_._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4010a3, i64 9149, i64 5, i64 5)
  store %struct.Memory* %call1_4010a3, %struct.Memory** %MEMORY

  %loadMem2_4010a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4010a3 = load i64, i64* %3
  %call2_4010a3 = call %struct.Memory* @sub_403460._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4010a3, %struct.Memory* %loadMem2_4010a3)
  store %struct.Memory* %call2_4010a3, %struct.Memory** %MEMORY

  ; Code: movslq 0x220fd1(%rip), %rax	 RIP: 4010a8	 Bytes: 7
  %loadMem_4010a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a8 = call %struct.Memory* @routine_movslq_0x220fd1__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a8)
  store %struct.Memory* %call_4010a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 4010af	 Bytes: 7
  %loadMem_4010af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010af = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010af)
  store %struct.Memory* %call_4010af, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4010b6	 Bytes: 3
  %loadMem_4010b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b6 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b6)
  store %struct.Memory* %call_4010b6, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 4010b9	 Bytes: 4
  %loadMem_4010b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b9 = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b9)
  store %struct.Memory* %call_4010b9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4010bd	 Bytes: 2
  %loadMem_4010bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bd = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bd)
  store %struct.Memory* %call_4010bd, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 4010bf	 Bytes: 4
  %loadMem_4010bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bf = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bf)
  store %struct.Memory* %call_4010bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 4010c3	 Bytes: 3
  %loadMem_4010c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c3 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c3)
  store %struct.Memory* %call_4010c3, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 4010c6	 Bytes: 3
  %loadMem_4010c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c6 = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c6)
  store %struct.Memory* %call_4010c6, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x220ff0(%rip)	 RIP: 4010c9	 Bytes: 7
  %loadMem_4010c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c9 = call %struct.Memory* @routine_movl__r9d__0x220ff0__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c9)
  store %struct.Memory* %call_4010c9, %struct.Memory** %MEMORY

  ; Code: movl $0x418da5, %esi	 RIP: 4010d0	 Bytes: 5
  %loadMem_4010d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d0 = call %struct.Memory* @routine_movl__0x418da5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d0)
  store %struct.Memory* %call_4010d0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4010d5	 Bytes: 2
  %loadMem_4010d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d5)
  store %struct.Memory* %call_4010d5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4010d7	 Bytes: 4
  %loadMem_4010d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d7)
  store %struct.Memory* %call_4010d7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4010db	 Bytes: 3
  %loadMem_4010db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010db = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010db)
  store %struct.Memory* %call_4010db, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc	 RIP: 4010de	 Bytes: 5
  %loadMem1_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4010de = call %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4010de, i64 9250, i64 5, i64 5)
  store %struct.Memory* %call1_4010de, %struct.Memory** %MEMORY

  %loadMem2_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4010de = load i64, i64* %3
  %call2_4010de = call %struct.Memory* @sub_403500._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4010de, %struct.Memory* %loadMem2_4010de)
  store %struct.Memory* %call2_4010de, %struct.Memory** %MEMORY

  ; Code: movl $0x418dba, %esi	 RIP: 4010e3	 Bytes: 5
  %loadMem_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e3 = call %struct.Memory* @routine_movl__0x418dba___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e3)
  store %struct.Memory* %call_4010e3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4010e8	 Bytes: 2
  %loadMem_4010e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e8)
  store %struct.Memory* %call_4010e8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4010ea	 Bytes: 4
  %loadMem_4010ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ea)
  store %struct.Memory* %call_4010ea, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4010ee	 Bytes: 3
  %loadMem_4010ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ee = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ee)
  store %struct.Memory* %call_4010ee, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc	 RIP: 4010f1	 Bytes: 5
  %loadMem1_4010f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4010f1 = call %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4010f1, i64 9391, i64 5, i64 5)
  store %struct.Memory* %call1_4010f1, %struct.Memory** %MEMORY

  %loadMem2_4010f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4010f1 = load i64, i64* %3
  %call2_4010f1 = call %struct.Memory* @sub_4035a0._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4010f1, %struct.Memory* %loadMem2_4010f1)
  store %struct.Memory* %call2_4010f1, %struct.Memory** %MEMORY

  ; Code: movl $0x418dd9, %esi	 RIP: 4010f6	 Bytes: 5
  %loadMem_4010f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f6 = call %struct.Memory* @routine_movl__0x418dd9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f6)
  store %struct.Memory* %call_4010f6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4010fb	 Bytes: 2
  %loadMem_4010fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fb)
  store %struct.Memory* %call_4010fb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4010fd	 Bytes: 4
  %loadMem_4010fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fd)
  store %struct.Memory* %call_4010fd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401101	 Bytes: 3
  %loadMem_401101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401101 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401101)
  store %struct.Memory* %call_401101, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc	 RIP: 401104	 Bytes: 5
  %loadMem1_401104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401104 = call %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401104, i64 9532, i64 5, i64 5)
  store %struct.Memory* %call1_401104, %struct.Memory** %MEMORY

  %loadMem2_401104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401104 = load i64, i64* %3
  %call2_401104 = call %struct.Memory* @sub_403640._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401104, %struct.Memory* %loadMem2_401104)
  store %struct.Memory* %call2_401104, %struct.Memory** %MEMORY

  ; Code: movl $0x418df3, %esi	 RIP: 401109	 Bytes: 5
  %loadMem_401109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401109 = call %struct.Memory* @routine_movl__0x418df3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401109)
  store %struct.Memory* %call_401109, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40110e	 Bytes: 2
  %loadMem_40110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110e)
  store %struct.Memory* %call_40110e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401110	 Bytes: 4
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401110 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401110)
  store %struct.Memory* %call_401110, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401114	 Bytes: 3
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401114 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401114)
  store %struct.Memory* %call_401114, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc	 RIP: 401117	 Bytes: 5
  %loadMem1_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401117 = call %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401117, i64 9673, i64 5, i64 5)
  store %struct.Memory* %call1_401117, %struct.Memory** %MEMORY

  %loadMem2_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401117 = load i64, i64* %3
  %call2_401117 = call %struct.Memory* @sub_4036e0._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401117, %struct.Memory* %loadMem2_401117)
  store %struct.Memory* %call2_401117, %struct.Memory** %MEMORY

  ; Code: movl $0x418e17, %esi	 RIP: 40111c	 Bytes: 5
  %loadMem_40111c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111c = call %struct.Memory* @routine_movl__0x418e17___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111c)
  store %struct.Memory* %call_40111c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401121	 Bytes: 2
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401121 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401121)
  store %struct.Memory* %call_401121, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401123	 Bytes: 4
  %loadMem_401123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401123 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401123)
  store %struct.Memory* %call_401123, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401127	 Bytes: 3
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401127 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401127)
  store %struct.Memory* %call_401127, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc	 RIP: 40112a	 Bytes: 5
  %loadMem1_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40112a = call %struct.Memory* @routine_callq_._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40112a, i64 9814, i64 5, i64 5)
  store %struct.Memory* %call1_40112a, %struct.Memory** %MEMORY

  %loadMem2_40112a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40112a = load i64, i64* %3
  %call2_40112a = call %struct.Memory* @sub_403780._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40112a, %struct.Memory* %loadMem2_40112a)
  store %struct.Memory* %call2_40112a, %struct.Memory** %MEMORY

  ; Code: movl $0x418e31, %esi	 RIP: 40112f	 Bytes: 5
  %loadMem_40112f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112f = call %struct.Memory* @routine_movl__0x418e31___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112f)
  store %struct.Memory* %call_40112f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401134	 Bytes: 2
  %loadMem_401134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401134 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401134)
  store %struct.Memory* %call_401134, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401136	 Bytes: 4
  %loadMem_401136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401136 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401136)
  store %struct.Memory* %call_401136, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40113a	 Bytes: 3
  %loadMem_40113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113a)
  store %struct.Memory* %call_40113a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc	 RIP: 40113d	 Bytes: 5
  %loadMem1_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40113d = call %struct.Memory* @routine_callq_._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40113d, i64 9955, i64 5, i64 5)
  store %struct.Memory* %call1_40113d, %struct.Memory** %MEMORY

  %loadMem2_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40113d = load i64, i64* %3
  %call2_40113d = call %struct.Memory* @sub_403820._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40113d, %struct.Memory* %loadMem2_40113d)
  store %struct.Memory* %call2_40113d, %struct.Memory** %MEMORY

  ; Code: movl $0x418e56, %esi	 RIP: 401142	 Bytes: 5
  %loadMem_401142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401142 = call %struct.Memory* @routine_movl__0x418e56___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401142)
  store %struct.Memory* %call_401142, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401147	 Bytes: 2
  %loadMem_401147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401147 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401147)
  store %struct.Memory* %call_401147, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401149	 Bytes: 4
  %loadMem_401149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401149 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401149)
  store %struct.Memory* %call_401149, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40114d	 Bytes: 3
  %loadMem_40114d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114d)
  store %struct.Memory* %call_40114d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc	 RIP: 401150	 Bytes: 5
  %loadMem1_401150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401150 = call %struct.Memory* @routine_callq_._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401150, i64 10096, i64 5, i64 5)
  store %struct.Memory* %call1_401150, %struct.Memory** %MEMORY

  %loadMem2_401150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401150 = load i64, i64* %3
  %call2_401150 = call %struct.Memory* @sub_4038c0._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401150, %struct.Memory* %loadMem2_401150)
  store %struct.Memory* %call2_401150, %struct.Memory** %MEMORY

  ; Code: movl $0x418e7a, %esi	 RIP: 401155	 Bytes: 5
  %loadMem_401155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401155 = call %struct.Memory* @routine_movl__0x418e7a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401155)
  store %struct.Memory* %call_401155, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40115a	 Bytes: 2
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115a)
  store %struct.Memory* %call_40115a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 40115c	 Bytes: 4
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115c)
  store %struct.Memory* %call_40115c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401160	 Bytes: 3
  %loadMem_401160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401160 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401160)
  store %struct.Memory* %call_401160, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc	 RIP: 401163	 Bytes: 5
  %loadMem1_401163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401163 = call %struct.Memory* @routine_callq_._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401163, i64 10237, i64 5, i64 5)
  store %struct.Memory* %call1_401163, %struct.Memory** %MEMORY

  %loadMem2_401163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401163 = load i64, i64* %3
  %call2_401163 = call %struct.Memory* @sub_403960._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401163, %struct.Memory* %loadMem2_401163)
  store %struct.Memory* %call2_401163, %struct.Memory** %MEMORY

  ; Code: movl $0x418e92, %esi	 RIP: 401168	 Bytes: 5
  %loadMem_401168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401168 = call %struct.Memory* @routine_movl__0x418e92___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401168)
  store %struct.Memory* %call_401168, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40116d	 Bytes: 2
  %loadMem_40116d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116d)
  store %struct.Memory* %call_40116d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 40116f	 Bytes: 4
  %loadMem_40116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116f)
  store %struct.Memory* %call_40116f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401173	 Bytes: 3
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401173 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401173)
  store %struct.Memory* %call_401173, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc	 RIP: 401176	 Bytes: 5
  %loadMem1_401176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401176 = call %struct.Memory* @routine_callq_._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401176, i64 10378, i64 5, i64 5)
  store %struct.Memory* %call1_401176, %struct.Memory** %MEMORY

  %loadMem2_401176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401176 = load i64, i64* %3
  %call2_401176 = call %struct.Memory* @sub_403a00._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401176, %struct.Memory* %loadMem2_401176)
  store %struct.Memory* %call2_401176, %struct.Memory** %MEMORY

  ; Code: movl $0x418eb4, %esi	 RIP: 40117b	 Bytes: 5
  %loadMem_40117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117b = call %struct.Memory* @routine_movl__0x418eb4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117b)
  store %struct.Memory* %call_40117b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401180	 Bytes: 2
  %loadMem_401180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401180 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401180)
  store %struct.Memory* %call_401180, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401182	 Bytes: 4
  %loadMem_401182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401182 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401182)
  store %struct.Memory* %call_401182, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401186	 Bytes: 3
  %loadMem_401186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401186 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401186)
  store %struct.Memory* %call_401186, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc	 RIP: 401189	 Bytes: 5
  %loadMem1_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401189 = call %struct.Memory* @routine_callq_._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401189, i64 10519, i64 5, i64 5)
  store %struct.Memory* %call1_401189, %struct.Memory** %MEMORY

  %loadMem2_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401189 = load i64, i64* %3
  %call2_401189 = call %struct.Memory* @sub_403aa0._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401189, %struct.Memory* %loadMem2_401189)
  store %struct.Memory* %call2_401189, %struct.Memory** %MEMORY

  ; Code: movl $0x418ed6, %esi	 RIP: 40118e	 Bytes: 5
  %loadMem_40118e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40118e = call %struct.Memory* @routine_movl__0x418ed6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40118e)
  store %struct.Memory* %call_40118e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401193	 Bytes: 2
  %loadMem_401193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401193 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401193)
  store %struct.Memory* %call_401193, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401195	 Bytes: 4
  %loadMem_401195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401195 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401195)
  store %struct.Memory* %call_401195, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401199	 Bytes: 3
  %loadMem_401199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401199 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401199)
  store %struct.Memory* %call_401199, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc	 RIP: 40119c	 Bytes: 5
  %loadMem1_40119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40119c = call %struct.Memory* @routine_callq_._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40119c, i64 10660, i64 5, i64 5)
  store %struct.Memory* %call1_40119c, %struct.Memory** %MEMORY

  %loadMem2_40119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40119c = load i64, i64* %3
  %call2_40119c = call %struct.Memory* @sub_403b40._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40119c, %struct.Memory* %loadMem2_40119c)
  store %struct.Memory* %call2_40119c, %struct.Memory** %MEMORY

  ; Code: movl $0x418ef6, %esi	 RIP: 4011a1	 Bytes: 5
  %loadMem_4011a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a1 = call %struct.Memory* @routine_movl__0x418ef6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a1)
  store %struct.Memory* %call_4011a1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4011a6	 Bytes: 2
  %loadMem_4011a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a6)
  store %struct.Memory* %call_4011a6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4011a8	 Bytes: 4
  %loadMem_4011a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a8)
  store %struct.Memory* %call_4011a8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4011ac	 Bytes: 3
  %loadMem_4011ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ac = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ac)
  store %struct.Memory* %call_4011ac, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc	 RIP: 4011af	 Bytes: 5
  %loadMem1_4011af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011af = call %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011af, i64 10801, i64 5, i64 5)
  store %struct.Memory* %call1_4011af, %struct.Memory** %MEMORY

  %loadMem2_4011af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011af = load i64, i64* %3
  %call2_4011af = call %struct.Memory* @sub_403be0._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4011af, %struct.Memory* %loadMem2_4011af)
  store %struct.Memory* %call2_4011af, %struct.Memory** %MEMORY

  ; Code: movl $0x418f0b, %esi	 RIP: 4011b4	 Bytes: 5
  %loadMem_4011b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b4 = call %struct.Memory* @routine_movl__0x418f0b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b4)
  store %struct.Memory* %call_4011b4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4011b9	 Bytes: 2
  %loadMem_4011b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b9 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b9)
  store %struct.Memory* %call_4011b9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4011bb	 Bytes: 4
  %loadMem_4011bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011bb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011bb)
  store %struct.Memory* %call_4011bb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4011bf	 Bytes: 3
  %loadMem_4011bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011bf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011bf)
  store %struct.Memory* %call_4011bf, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc	 RIP: 4011c2	 Bytes: 5
  %loadMem1_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011c2 = call %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011c2, i64 10942, i64 5, i64 5)
  store %struct.Memory* %call1_4011c2, %struct.Memory** %MEMORY

  %loadMem2_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011c2 = load i64, i64* %3
  %call2_4011c2 = call %struct.Memory* @sub_403c80._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4011c2, %struct.Memory* %loadMem2_4011c2)
  store %struct.Memory* %call2_4011c2, %struct.Memory** %MEMORY

  ; Code: movl $0x418f29, %esi	 RIP: 4011c7	 Bytes: 5
  %loadMem_4011c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c7 = call %struct.Memory* @routine_movl__0x418f29___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c7)
  store %struct.Memory* %call_4011c7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4011cc	 Bytes: 2
  %loadMem_4011cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011cc = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011cc)
  store %struct.Memory* %call_4011cc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4011ce	 Bytes: 4
  %loadMem_4011ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ce = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ce)
  store %struct.Memory* %call_4011ce, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4011d2	 Bytes: 3
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d2)
  store %struct.Memory* %call_4011d2, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc	 RIP: 4011d5	 Bytes: 5
  %loadMem1_4011d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011d5 = call %struct.Memory* @routine_callq_._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011d5, i64 11083, i64 5, i64 5)
  store %struct.Memory* %call1_4011d5, %struct.Memory** %MEMORY

  %loadMem2_4011d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011d5 = load i64, i64* %3
  %call2_4011d5 = call %struct.Memory* @sub_403d20._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4011d5, %struct.Memory* %loadMem2_4011d5)
  store %struct.Memory* %call2_4011d5, %struct.Memory** %MEMORY

  ; Code: movl $0x418f3d, %esi	 RIP: 4011da	 Bytes: 5
  %loadMem_4011da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011da = call %struct.Memory* @routine_movl__0x418f3d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011da)
  store %struct.Memory* %call_4011da, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4011df	 Bytes: 2
  %loadMem_4011df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011df = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011df)
  store %struct.Memory* %call_4011df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4011e1	 Bytes: 4
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e1)
  store %struct.Memory* %call_4011e1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4011e5	 Bytes: 3
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e5)
  store %struct.Memory* %call_4011e5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc	 RIP: 4011e8	 Bytes: 5
  %loadMem1_4011e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011e8 = call %struct.Memory* @routine_callq_._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011e8, i64 11224, i64 5, i64 5)
  store %struct.Memory* %call1_4011e8, %struct.Memory** %MEMORY

  %loadMem2_4011e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011e8 = load i64, i64* %3
  %call2_4011e8 = call %struct.Memory* @sub_403dc0._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4011e8, %struct.Memory* %loadMem2_4011e8)
  store %struct.Memory* %call2_4011e8, %struct.Memory** %MEMORY

  ; Code: movl $0x418f5a, %esi	 RIP: 4011ed	 Bytes: 5
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ed = call %struct.Memory* @routine_movl__0x418f5a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ed)
  store %struct.Memory* %call_4011ed, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4011f2	 Bytes: 2
  %loadMem_4011f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f2 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f2)
  store %struct.Memory* %call_4011f2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4011f4	 Bytes: 4
  %loadMem_4011f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f4)
  store %struct.Memory* %call_4011f4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4011f8	 Bytes: 3
  %loadMem_4011f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f8)
  store %struct.Memory* %call_4011f8, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc	 RIP: 4011fb	 Bytes: 5
  %loadMem1_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011fb = call %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011fb, i64 11365, i64 5, i64 5)
  store %struct.Memory* %call1_4011fb, %struct.Memory** %MEMORY

  %loadMem2_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011fb = load i64, i64* %3
  %call2_4011fb = call %struct.Memory* @sub_403e60._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4011fb, %struct.Memory* %loadMem2_4011fb)
  store %struct.Memory* %call2_4011fb, %struct.Memory** %MEMORY

  ; Code: movl $0x418f6f, %esi	 RIP: 401200	 Bytes: 5
  %loadMem_401200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401200 = call %struct.Memory* @routine_movl__0x418f6f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401200)
  store %struct.Memory* %call_401200, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401205	 Bytes: 2
  %loadMem_401205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401205 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401205)
  store %struct.Memory* %call_401205, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 401207	 Bytes: 4
  %loadMem_401207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401207 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401207)
  store %struct.Memory* %call_401207, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40120b	 Bytes: 3
  %loadMem_40120b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120b)
  store %struct.Memory* %call_40120b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc	 RIP: 40120e	 Bytes: 5
  %loadMem1_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40120e = call %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40120e, i64 11506, i64 5, i64 5)
  store %struct.Memory* %call1_40120e, %struct.Memory** %MEMORY

  %loadMem2_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40120e = load i64, i64* %3
  %call2_40120e = call %struct.Memory* @sub_403f00._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40120e, %struct.Memory* %loadMem2_40120e)
  store %struct.Memory* %call2_40120e, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x220e6d(%rip), %esi	 RIP: 401213	 Bytes: 8
  %loadMem_401213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401213 = call %struct.Memory* @routine_cvttsd2si_0x220e6d__rip____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401213)
  store %struct.Memory* %call_401213, %struct.Memory** %MEMORY

  ; Code: movl $0x6702d0, %r9d	 RIP: 40121b	 Bytes: 6
  %loadMem_40121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121b = call %struct.Memory* @routine_movl__0x6702d0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121b)
  store %struct.Memory* %call_40121b, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 401221	 Bytes: 3
  %loadMem_401221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401221 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401221)
  store %struct.Memory* %call_401221, %struct.Memory** %MEMORY

  ; Code: movb %sil, %r8b	 RIP: 401224	 Bytes: 3
  %loadMem_401224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401224 = call %struct.Memory* @routine_movb__sil___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401224)
  store %struct.Memory* %call_401224, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %edx	 RIP: 401227	 Bytes: 4
  %loadMem_401227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401227 = call %struct.Memory* @routine_movzbl__r8b___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401227)
  store %struct.Memory* %call_401227, %struct.Memory** %MEMORY

  ; Code: movl $0x672210, %esi	 RIP: 40122b	 Bytes: 5
  %loadMem_40122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122b = call %struct.Memory* @routine_movl__0x672210___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122b)
  store %struct.Memory* %call_40122b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 401230	 Bytes: 3
  %loadMem_401230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401230 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401230)
  store %struct.Memory* %call_401230, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 401233	 Bytes: 4
  %loadMem_401233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401233 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401233)
  store %struct.Memory* %call_401233, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPhhEvT_S1_T0_	 RIP: 401237	 Bytes: 5
  %loadMem1_401237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401237 = call %struct.Memory* @routine_callq_._Z4fillIPhhEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401237, i64 11625, i64 5, i64 5)
  store %struct.Memory* %call1_401237, %struct.Memory** %MEMORY

  %loadMem2_401237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401237 = load i64, i64* %3
  %call2_401237 = call %struct.Memory* @sub_403fa0._Z4fillIPhhEvT_S1_T0_(%struct.State* %0, i64  %loadPC_401237, %struct.Memory* %loadMem2_401237)
  store %struct.Memory* %call2_401237, %struct.Memory** %MEMORY

  ; Code: movl 0x220e3e(%rip), %edx	 RIP: 40123c	 Bytes: 6
  %loadMem_40123c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123c = call %struct.Memory* @routine_movl_0x220e3e__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123c)
  store %struct.Memory* %call_40123c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x220e78(%rip)	 RIP: 401242	 Bytes: 6
  %loadMem_401242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401242 = call %struct.Memory* @routine_movl__edx__0x220e78__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401242)
  store %struct.Memory* %call_401242, %struct.Memory** %MEMORY

  ; Code: movl $0x418c22, %edx	 RIP: 401248	 Bytes: 5
  %loadMem_401248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401248 = call %struct.Memory* @routine_movl__0x418c22___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401248)
  store %struct.Memory* %call_401248, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40124d	 Bytes: 4
  %loadMem_40124d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124d)
  store %struct.Memory* %call_40124d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401251	 Bytes: 3
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401251 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401251)
  store %struct.Memory* %call_401251, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh10custom_twoIhEEvPT_iPKc	 RIP: 401254	 Bytes: 5
  %loadMem1_401254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401254 = call %struct.Memory* @routine_callq_._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401254, i64 11660, i64 5, i64 5)
  store %struct.Memory* %call1_401254, %struct.Memory** %MEMORY

  %loadMem2_401254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401254 = load i64, i64* %3
  %call2_401254 = call %struct.Memory* @sub_403fe0._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401254, %struct.Memory* %loadMem2_401254)
  store %struct.Memory* %call2_401254, %struct.Memory** %MEMORY

  ; Code: movl $0x418c33, %esi	 RIP: 401259	 Bytes: 5
  %loadMem_401259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401259 = call %struct.Memory* @routine_movl__0x418c33___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401259)
  store %struct.Memory* %call_401259, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40125e	 Bytes: 2
  %loadMem_40125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125e)
  store %struct.Memory* %call_40125e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401260	 Bytes: 4
  %loadMem_401260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401260 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401260)
  store %struct.Memory* %call_401260, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401264	 Bytes: 3
  %loadMem_401264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401264 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401264)
  store %struct.Memory* %call_401264, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc	 RIP: 401267	 Bytes: 5
  %loadMem1_401267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401267 = call %struct.Memory* @routine_callq_._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401267, i64 11801, i64 5, i64 5)
  store %struct.Memory* %call1_401267, %struct.Memory** %MEMORY

  %loadMem2_401267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401267 = load i64, i64* %3
  %call2_401267 = call %struct.Memory* @sub_404080._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401267, %struct.Memory* %loadMem2_401267)
  store %struct.Memory* %call2_401267, %struct.Memory** %MEMORY

  ; Code: movl $0x418c49, %esi	 RIP: 40126c	 Bytes: 5
  %loadMem_40126c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126c = call %struct.Memory* @routine_movl__0x418c49___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126c)
  store %struct.Memory* %call_40126c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401271	 Bytes: 2
  %loadMem_401271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401271 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401271)
  store %struct.Memory* %call_401271, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401273	 Bytes: 4
  %loadMem_401273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401273 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401273)
  store %struct.Memory* %call_401273, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401277	 Bytes: 3
  %loadMem_401277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401277 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401277)
  store %struct.Memory* %call_401277, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc	 RIP: 40127a	 Bytes: 5
  %loadMem1_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40127a = call %struct.Memory* @routine_callq_._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40127a, i64 11942, i64 5, i64 5)
  store %struct.Memory* %call1_40127a, %struct.Memory** %MEMORY

  %loadMem2_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40127a = load i64, i64* %3
  %call2_40127a = call %struct.Memory* @sub_404120._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40127a, %struct.Memory* %loadMem2_40127a)
  store %struct.Memory* %call2_40127a, %struct.Memory** %MEMORY

  ; Code: movl $0x418c64, %esi	 RIP: 40127f	 Bytes: 5
  %loadMem_40127f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127f = call %struct.Memory* @routine_movl__0x418c64___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127f)
  store %struct.Memory* %call_40127f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401284	 Bytes: 2
  %loadMem_401284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401284 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401284)
  store %struct.Memory* %call_401284, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401286	 Bytes: 4
  %loadMem_401286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401286 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401286)
  store %struct.Memory* %call_401286, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40128a	 Bytes: 3
  %loadMem_40128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128a)
  store %struct.Memory* %call_40128a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc	 RIP: 40128d	 Bytes: 5
  %loadMem1_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40128d = call %struct.Memory* @routine_callq_._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40128d, i64 12083, i64 5, i64 5)
  store %struct.Memory* %call1_40128d, %struct.Memory** %MEMORY

  %loadMem2_40128d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40128d = load i64, i64* %3
  %call2_40128d = call %struct.Memory* @sub_4041c0._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40128d, %struct.Memory* %loadMem2_40128d)
  store %struct.Memory* %call2_40128d, %struct.Memory** %MEMORY

  ; Code: movl $0x418c7f, %esi	 RIP: 401292	 Bytes: 5
  %loadMem_401292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401292 = call %struct.Memory* @routine_movl__0x418c7f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401292)
  store %struct.Memory* %call_401292, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401297	 Bytes: 2
  %loadMem_401297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401297 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401297)
  store %struct.Memory* %call_401297, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401299	 Bytes: 4
  %loadMem_401299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401299 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401299)
  store %struct.Memory* %call_401299, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40129d	 Bytes: 3
  %loadMem_40129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129d)
  store %struct.Memory* %call_40129d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc	 RIP: 4012a0	 Bytes: 5
  %loadMem1_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012a0 = call %struct.Memory* @routine_callq_._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012a0, i64 12224, i64 5, i64 5)
  store %struct.Memory* %call1_4012a0, %struct.Memory** %MEMORY

  %loadMem2_4012a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012a0 = load i64, i64* %3
  %call2_4012a0 = call %struct.Memory* @sub_404260._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4012a0, %struct.Memory* %loadMem2_4012a0)
  store %struct.Memory* %call2_4012a0, %struct.Memory** %MEMORY

  ; Code: movl $0x418c98, %esi	 RIP: 4012a5	 Bytes: 5
  %loadMem_4012a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a5 = call %struct.Memory* @routine_movl__0x418c98___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a5)
  store %struct.Memory* %call_4012a5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4012aa	 Bytes: 2
  %loadMem_4012aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012aa = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012aa)
  store %struct.Memory* %call_4012aa, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4012ac	 Bytes: 4
  %loadMem_4012ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ac = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ac)
  store %struct.Memory* %call_4012ac, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4012b0	 Bytes: 3
  %loadMem_4012b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b0)
  store %struct.Memory* %call_4012b0, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc	 RIP: 4012b3	 Bytes: 5
  %loadMem1_4012b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012b3 = call %struct.Memory* @routine_callq_._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012b3, i64 12365, i64 5, i64 5)
  store %struct.Memory* %call1_4012b3, %struct.Memory** %MEMORY

  %loadMem2_4012b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012b3 = load i64, i64* %3
  %call2_4012b3 = call %struct.Memory* @sub_404300._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4012b3, %struct.Memory* %loadMem2_4012b3)
  store %struct.Memory* %call2_4012b3, %struct.Memory** %MEMORY

  ; Code: movl $0x418cae, %esi	 RIP: 4012b8	 Bytes: 5
  %loadMem_4012b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b8 = call %struct.Memory* @routine_movl__0x418cae___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b8)
  store %struct.Memory* %call_4012b8, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4012bd	 Bytes: 2
  %loadMem_4012bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bd = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bd)
  store %struct.Memory* %call_4012bd, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4012bf	 Bytes: 4
  %loadMem_4012bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bf = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bf)
  store %struct.Memory* %call_4012bf, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4012c3	 Bytes: 3
  %loadMem_4012c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c3)
  store %struct.Memory* %call_4012c3, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc	 RIP: 4012c6	 Bytes: 5
  %loadMem1_4012c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012c6 = call %struct.Memory* @routine_callq_._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012c6, i64 12506, i64 5, i64 5)
  store %struct.Memory* %call1_4012c6, %struct.Memory** %MEMORY

  %loadMem2_4012c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012c6 = load i64, i64* %3
  %call2_4012c6 = call %struct.Memory* @sub_4043a0._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4012c6, %struct.Memory* %loadMem2_4012c6)
  store %struct.Memory* %call2_4012c6, %struct.Memory** %MEMORY

  ; Code: movl $0x418cc6, %esi	 RIP: 4012cb	 Bytes: 5
  %loadMem_4012cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cb = call %struct.Memory* @routine_movl__0x418cc6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cb)
  store %struct.Memory* %call_4012cb, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4012d0	 Bytes: 2
  %loadMem_4012d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d0 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d0)
  store %struct.Memory* %call_4012d0, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4012d2	 Bytes: 4
  %loadMem_4012d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d2)
  store %struct.Memory* %call_4012d2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4012d6	 Bytes: 3
  %loadMem_4012d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d6)
  store %struct.Memory* %call_4012d6, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc	 RIP: 4012d9	 Bytes: 5
  %loadMem1_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012d9 = call %struct.Memory* @routine_callq_._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012d9, i64 12647, i64 5, i64 5)
  store %struct.Memory* %call1_4012d9, %struct.Memory** %MEMORY

  %loadMem2_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012d9 = load i64, i64* %3
  %call2_4012d9 = call %struct.Memory* @sub_404440._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4012d9, %struct.Memory* %loadMem2_4012d9)
  store %struct.Memory* %call2_4012d9, %struct.Memory** %MEMORY

  ; Code: movl $0x418ce1, %esi	 RIP: 4012de	 Bytes: 5
  %loadMem_4012de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012de = call %struct.Memory* @routine_movl__0x418ce1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012de)
  store %struct.Memory* %call_4012de, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4012e3	 Bytes: 2
  %loadMem_4012e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e3 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e3)
  store %struct.Memory* %call_4012e3, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4012e5	 Bytes: 4
  %loadMem_4012e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e5)
  store %struct.Memory* %call_4012e5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4012e9	 Bytes: 3
  %loadMem_4012e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e9)
  store %struct.Memory* %call_4012e9, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc	 RIP: 4012ec	 Bytes: 5
  %loadMem1_4012ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012ec = call %struct.Memory* @routine_callq_._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012ec, i64 12788, i64 5, i64 5)
  store %struct.Memory* %call1_4012ec, %struct.Memory** %MEMORY

  %loadMem2_4012ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012ec = load i64, i64* %3
  %call2_4012ec = call %struct.Memory* @sub_4044e0._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4012ec, %struct.Memory* %loadMem2_4012ec)
  store %struct.Memory* %call2_4012ec, %struct.Memory** %MEMORY

  ; Code: movl $0x418d00, %esi	 RIP: 4012f1	 Bytes: 5
  %loadMem_4012f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f1 = call %struct.Memory* @routine_movl__0x418d00___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f1)
  store %struct.Memory* %call_4012f1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4012f6	 Bytes: 2
  %loadMem_4012f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f6)
  store %struct.Memory* %call_4012f6, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4012f8	 Bytes: 4
  %loadMem_4012f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f8)
  store %struct.Memory* %call_4012f8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4012fc	 Bytes: 3
  %loadMem_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fc)
  store %struct.Memory* %call_4012fc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc	 RIP: 4012ff	 Bytes: 5
  %loadMem1_4012ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4012ff = call %struct.Memory* @routine_callq_._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4012ff, i64 12929, i64 5, i64 5)
  store %struct.Memory* %call1_4012ff, %struct.Memory** %MEMORY

  %loadMem2_4012ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4012ff = load i64, i64* %3
  %call2_4012ff = call %struct.Memory* @sub_404580._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4012ff, %struct.Memory* %loadMem2_4012ff)
  store %struct.Memory* %call2_4012ff, %struct.Memory** %MEMORY

  ; Code: movl $0x418d1c, %esi	 RIP: 401304	 Bytes: 5
  %loadMem_401304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401304 = call %struct.Memory* @routine_movl__0x418d1c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401304)
  store %struct.Memory* %call_401304, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401309	 Bytes: 2
  %loadMem_401309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401309 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401309)
  store %struct.Memory* %call_401309, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40130b	 Bytes: 4
  %loadMem_40130b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130b)
  store %struct.Memory* %call_40130b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40130f	 Bytes: 3
  %loadMem_40130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130f)
  store %struct.Memory* %call_40130f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc	 RIP: 401312	 Bytes: 5
  %loadMem1_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401312 = call %struct.Memory* @routine_callq_._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401312, i64 13070, i64 5, i64 5)
  store %struct.Memory* %call1_401312, %struct.Memory** %MEMORY

  %loadMem2_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401312 = load i64, i64* %3
  %call2_401312 = call %struct.Memory* @sub_404620._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401312, %struct.Memory* %loadMem2_401312)
  store %struct.Memory* %call2_401312, %struct.Memory** %MEMORY

  ; Code: movl $0x418d41, %esi	 RIP: 401317	 Bytes: 5
  %loadMem_401317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401317 = call %struct.Memory* @routine_movl__0x418d41___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401317)
  store %struct.Memory* %call_401317, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40131c	 Bytes: 2
  %loadMem_40131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131c)
  store %struct.Memory* %call_40131c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40131e	 Bytes: 4
  %loadMem_40131e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131e)
  store %struct.Memory* %call_40131e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401322	 Bytes: 3
  %loadMem_401322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401322 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401322)
  store %struct.Memory* %call_401322, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc	 RIP: 401325	 Bytes: 5
  %loadMem1_401325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401325 = call %struct.Memory* @routine_callq_._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401325, i64 13211, i64 5, i64 5)
  store %struct.Memory* %call1_401325, %struct.Memory** %MEMORY

  %loadMem2_401325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401325 = load i64, i64* %3
  %call2_401325 = call %struct.Memory* @sub_4046c0._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401325, %struct.Memory* %loadMem2_401325)
  store %struct.Memory* %call2_401325, %struct.Memory** %MEMORY

  ; Code: movl $0x418d63, %esi	 RIP: 40132a	 Bytes: 5
  %loadMem_40132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132a = call %struct.Memory* @routine_movl__0x418d63___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132a)
  store %struct.Memory* %call_40132a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40132f	 Bytes: 2
  %loadMem_40132f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132f)
  store %struct.Memory* %call_40132f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401331	 Bytes: 4
  %loadMem_401331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401331 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401331)
  store %struct.Memory* %call_401331, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401335	 Bytes: 3
  %loadMem_401335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401335 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401335)
  store %struct.Memory* %call_401335, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc	 RIP: 401338	 Bytes: 5
  %loadMem1_401338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401338 = call %struct.Memory* @routine_callq_._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401338, i64 13352, i64 5, i64 5)
  store %struct.Memory* %call1_401338, %struct.Memory** %MEMORY

  %loadMem2_401338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401338 = load i64, i64* %3
  %call2_401338 = call %struct.Memory* @sub_404760._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401338, %struct.Memory* %loadMem2_401338)
  store %struct.Memory* %call2_401338, %struct.Memory** %MEMORY

  ; Code: movl $0x418d79, %esi	 RIP: 40133d	 Bytes: 5
  %loadMem_40133d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133d = call %struct.Memory* @routine_movl__0x418d79___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133d)
  store %struct.Memory* %call_40133d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401342	 Bytes: 2
  %loadMem_401342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401342 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401342)
  store %struct.Memory* %call_401342, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401344	 Bytes: 4
  %loadMem_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401344 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401344)
  store %struct.Memory* %call_401344, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401348	 Bytes: 3
  %loadMem_401348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401348 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401348)
  store %struct.Memory* %call_401348, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc	 RIP: 40134b	 Bytes: 5
  %loadMem1_40134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40134b = call %struct.Memory* @routine_callq_._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40134b, i64 13493, i64 5, i64 5)
  store %struct.Memory* %call1_40134b, %struct.Memory** %MEMORY

  %loadMem2_40134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40134b = load i64, i64* %3
  %call2_40134b = call %struct.Memory* @sub_404800._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40134b, %struct.Memory* %loadMem2_40134b)
  store %struct.Memory* %call2_40134b, %struct.Memory** %MEMORY

  ; Code: movl $0x418d8e, %esi	 RIP: 401350	 Bytes: 5
  %loadMem_401350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401350 = call %struct.Memory* @routine_movl__0x418d8e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401350)
  store %struct.Memory* %call_401350, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401355	 Bytes: 2
  %loadMem_401355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401355 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401355)
  store %struct.Memory* %call_401355, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401357	 Bytes: 4
  %loadMem_401357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401357 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401357)
  store %struct.Memory* %call_401357, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40135b	 Bytes: 3
  %loadMem_40135b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135b)
  store %struct.Memory* %call_40135b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc	 RIP: 40135e	 Bytes: 5
  %loadMem1_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40135e = call %struct.Memory* @routine_callq_._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40135e, i64 13634, i64 5, i64 5)
  store %struct.Memory* %call1_40135e, %struct.Memory** %MEMORY

  %loadMem2_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40135e = load i64, i64* %3
  %call2_40135e = call %struct.Memory* @sub_4048a0._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40135e, %struct.Memory* %loadMem2_40135e)
  store %struct.Memory* %call2_40135e, %struct.Memory** %MEMORY

  ; Code: movslq 0x220d16(%rip), %rax	 RIP: 401363	 Bytes: 7
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401363 = call %struct.Memory* @routine_movslq_0x220d16__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401363)
  store %struct.Memory* %call_401363, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 40136a	 Bytes: 7
  %loadMem_40136a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40136a = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40136a)
  store %struct.Memory* %call_40136a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 401371	 Bytes: 3
  %loadMem_401371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401371 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401371)
  store %struct.Memory* %call_401371, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 401374	 Bytes: 4
  %loadMem_401374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401374 = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401374)
  store %struct.Memory* %call_401374, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 401378	 Bytes: 2
  %loadMem_401378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401378 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401378)
  store %struct.Memory* %call_401378, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 40137a	 Bytes: 4
  %loadMem_40137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137a = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137a)
  store %struct.Memory* %call_40137a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 40137e	 Bytes: 3
  %loadMem_40137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137e = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137e)
  store %struct.Memory* %call_40137e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 401381	 Bytes: 3
  %loadMem_401381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401381 = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401381)
  store %struct.Memory* %call_401381, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x220d35(%rip)	 RIP: 401384	 Bytes: 7
  %loadMem_401384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401384 = call %struct.Memory* @routine_movl__r9d__0x220d35__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401384)
  store %struct.Memory* %call_401384, %struct.Memory** %MEMORY

  ; Code: movl $0x418da4, %esi	 RIP: 40138b	 Bytes: 5
  %loadMem_40138b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138b = call %struct.Memory* @routine_movl__0x418da4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138b)
  store %struct.Memory* %call_40138b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401390	 Bytes: 2
  %loadMem_401390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401390 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401390)
  store %struct.Memory* %call_401390, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401392	 Bytes: 4
  %loadMem_401392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401392 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401392)
  store %struct.Memory* %call_401392, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401396	 Bytes: 3
  %loadMem_401396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401396 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401396)
  store %struct.Memory* %call_401396, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc	 RIP: 401399	 Bytes: 5
  %loadMem1_401399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401399 = call %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401399, i64 13735, i64 5, i64 5)
  store %struct.Memory* %call1_401399, %struct.Memory** %MEMORY

  %loadMem2_401399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401399 = load i64, i64* %3
  %call2_401399 = call %struct.Memory* @sub_404940._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401399, %struct.Memory* %loadMem2_401399)
  store %struct.Memory* %call2_401399, %struct.Memory** %MEMORY

  ; Code: movl $0x418db9, %esi	 RIP: 40139e	 Bytes: 5
  %loadMem_40139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139e = call %struct.Memory* @routine_movl__0x418db9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139e)
  store %struct.Memory* %call_40139e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4013a3	 Bytes: 2
  %loadMem_4013a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a3 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a3)
  store %struct.Memory* %call_4013a3, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4013a5	 Bytes: 4
  %loadMem_4013a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a5 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a5)
  store %struct.Memory* %call_4013a5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4013a9	 Bytes: 3
  %loadMem_4013a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a9)
  store %struct.Memory* %call_4013a9, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc	 RIP: 4013ac	 Bytes: 5
  %loadMem1_4013ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013ac = call %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013ac, i64 13876, i64 5, i64 5)
  store %struct.Memory* %call1_4013ac, %struct.Memory** %MEMORY

  %loadMem2_4013ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013ac = load i64, i64* %3
  %call2_4013ac = call %struct.Memory* @sub_4049e0._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4013ac, %struct.Memory* %loadMem2_4013ac)
  store %struct.Memory* %call2_4013ac, %struct.Memory** %MEMORY

  ; Code: movl $0x418dd8, %esi	 RIP: 4013b1	 Bytes: 5
  %loadMem_4013b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b1 = call %struct.Memory* @routine_movl__0x418dd8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b1)
  store %struct.Memory* %call_4013b1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4013b6	 Bytes: 2
  %loadMem_4013b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b6)
  store %struct.Memory* %call_4013b6, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4013b8	 Bytes: 4
  %loadMem_4013b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b8)
  store %struct.Memory* %call_4013b8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4013bc	 Bytes: 3
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bc)
  store %struct.Memory* %call_4013bc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc	 RIP: 4013bf	 Bytes: 5
  %loadMem1_4013bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013bf = call %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013bf, i64 14017, i64 5, i64 5)
  store %struct.Memory* %call1_4013bf, %struct.Memory** %MEMORY

  %loadMem2_4013bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013bf = load i64, i64* %3
  %call2_4013bf = call %struct.Memory* @sub_404a80._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4013bf, %struct.Memory* %loadMem2_4013bf)
  store %struct.Memory* %call2_4013bf, %struct.Memory** %MEMORY

  ; Code: movl $0x418df2, %esi	 RIP: 4013c4	 Bytes: 5
  %loadMem_4013c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c4 = call %struct.Memory* @routine_movl__0x418df2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c4)
  store %struct.Memory* %call_4013c4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4013c9	 Bytes: 2
  %loadMem_4013c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c9 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c9)
  store %struct.Memory* %call_4013c9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4013cb	 Bytes: 4
  %loadMem_4013cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cb = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cb)
  store %struct.Memory* %call_4013cb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4013cf	 Bytes: 3
  %loadMem_4013cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cf)
  store %struct.Memory* %call_4013cf, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc	 RIP: 4013d2	 Bytes: 5
  %loadMem1_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013d2 = call %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013d2, i64 14158, i64 5, i64 5)
  store %struct.Memory* %call1_4013d2, %struct.Memory** %MEMORY

  %loadMem2_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013d2 = load i64, i64* %3
  %call2_4013d2 = call %struct.Memory* @sub_404b20._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4013d2, %struct.Memory* %loadMem2_4013d2)
  store %struct.Memory* %call2_4013d2, %struct.Memory** %MEMORY

  ; Code: movl $0x418e16, %esi	 RIP: 4013d7	 Bytes: 5
  %loadMem_4013d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d7 = call %struct.Memory* @routine_movl__0x418e16___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d7)
  store %struct.Memory* %call_4013d7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4013dc	 Bytes: 2
  %loadMem_4013dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dc = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dc)
  store %struct.Memory* %call_4013dc, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4013de	 Bytes: 4
  %loadMem_4013de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013de = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013de)
  store %struct.Memory* %call_4013de, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4013e2	 Bytes: 3
  %loadMem_4013e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e2)
  store %struct.Memory* %call_4013e2, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc	 RIP: 4013e5	 Bytes: 5
  %loadMem1_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013e5 = call %struct.Memory* @routine_callq_._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013e5, i64 14299, i64 5, i64 5)
  store %struct.Memory* %call1_4013e5, %struct.Memory** %MEMORY

  %loadMem2_4013e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013e5 = load i64, i64* %3
  %call2_4013e5 = call %struct.Memory* @sub_404bc0._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4013e5, %struct.Memory* %loadMem2_4013e5)
  store %struct.Memory* %call2_4013e5, %struct.Memory** %MEMORY

  ; Code: movl $0x418e30, %esi	 RIP: 4013ea	 Bytes: 5
  %loadMem_4013ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ea = call %struct.Memory* @routine_movl__0x418e30___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ea)
  store %struct.Memory* %call_4013ea, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4013ef	 Bytes: 2
  %loadMem_4013ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ef = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ef)
  store %struct.Memory* %call_4013ef, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4013f1	 Bytes: 4
  %loadMem_4013f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f1 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f1)
  store %struct.Memory* %call_4013f1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4013f5	 Bytes: 3
  %loadMem_4013f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f5)
  store %struct.Memory* %call_4013f5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc	 RIP: 4013f8	 Bytes: 5
  %loadMem1_4013f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4013f8 = call %struct.Memory* @routine_callq_._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4013f8, i64 14440, i64 5, i64 5)
  store %struct.Memory* %call1_4013f8, %struct.Memory** %MEMORY

  %loadMem2_4013f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013f8 = load i64, i64* %3
  %call2_4013f8 = call %struct.Memory* @sub_404c60._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4013f8, %struct.Memory* %loadMem2_4013f8)
  store %struct.Memory* %call2_4013f8, %struct.Memory** %MEMORY

  ; Code: movl $0x418e55, %esi	 RIP: 4013fd	 Bytes: 5
  %loadMem_4013fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fd = call %struct.Memory* @routine_movl__0x418e55___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fd)
  store %struct.Memory* %call_4013fd, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401402	 Bytes: 2
  %loadMem_401402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401402 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401402)
  store %struct.Memory* %call_401402, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401404	 Bytes: 4
  %loadMem_401404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401404 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401404)
  store %struct.Memory* %call_401404, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401408	 Bytes: 3
  %loadMem_401408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401408 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401408)
  store %struct.Memory* %call_401408, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc	 RIP: 40140b	 Bytes: 5
  %loadMem1_40140b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40140b = call %struct.Memory* @routine_callq_._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40140b, i64 14581, i64 5, i64 5)
  store %struct.Memory* %call1_40140b, %struct.Memory** %MEMORY

  %loadMem2_40140b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40140b = load i64, i64* %3
  %call2_40140b = call %struct.Memory* @sub_404d00._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40140b, %struct.Memory* %loadMem2_40140b)
  store %struct.Memory* %call2_40140b, %struct.Memory** %MEMORY

  ; Code: movl $0x418e79, %esi	 RIP: 401410	 Bytes: 5
  %loadMem_401410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401410 = call %struct.Memory* @routine_movl__0x418e79___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401410)
  store %struct.Memory* %call_401410, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401415	 Bytes: 2
  %loadMem_401415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401415 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401415)
  store %struct.Memory* %call_401415, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401417	 Bytes: 4
  %loadMem_401417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401417 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401417)
  store %struct.Memory* %call_401417, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40141b	 Bytes: 3
  %loadMem_40141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141b)
  store %struct.Memory* %call_40141b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc	 RIP: 40141e	 Bytes: 5
  %loadMem1_40141e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40141e = call %struct.Memory* @routine_callq_._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40141e, i64 14722, i64 5, i64 5)
  store %struct.Memory* %call1_40141e, %struct.Memory** %MEMORY

  %loadMem2_40141e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40141e = load i64, i64* %3
  %call2_40141e = call %struct.Memory* @sub_404da0._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40141e, %struct.Memory* %loadMem2_40141e)
  store %struct.Memory* %call2_40141e, %struct.Memory** %MEMORY

  ; Code: movl $0x418e91, %esi	 RIP: 401423	 Bytes: 5
  %loadMem_401423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401423 = call %struct.Memory* @routine_movl__0x418e91___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401423)
  store %struct.Memory* %call_401423, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401428	 Bytes: 2
  %loadMem_401428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401428 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401428)
  store %struct.Memory* %call_401428, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40142a	 Bytes: 4
  %loadMem_40142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142a)
  store %struct.Memory* %call_40142a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40142e	 Bytes: 3
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142e)
  store %struct.Memory* %call_40142e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc	 RIP: 401431	 Bytes: 5
  %loadMem1_401431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401431 = call %struct.Memory* @routine_callq_._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401431, i64 14863, i64 5, i64 5)
  store %struct.Memory* %call1_401431, %struct.Memory** %MEMORY

  %loadMem2_401431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401431 = load i64, i64* %3
  %call2_401431 = call %struct.Memory* @sub_404e40._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401431, %struct.Memory* %loadMem2_401431)
  store %struct.Memory* %call2_401431, %struct.Memory** %MEMORY

  ; Code: movl $0x418eb3, %esi	 RIP: 401436	 Bytes: 5
  %loadMem_401436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401436 = call %struct.Memory* @routine_movl__0x418eb3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401436)
  store %struct.Memory* %call_401436, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40143b	 Bytes: 2
  %loadMem_40143b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143b = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143b)
  store %struct.Memory* %call_40143b, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40143d	 Bytes: 4
  %loadMem_40143d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40143d = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40143d)
  store %struct.Memory* %call_40143d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401441	 Bytes: 3
  %loadMem_401441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401441 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401441)
  store %struct.Memory* %call_401441, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc	 RIP: 401444	 Bytes: 5
  %loadMem1_401444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401444 = call %struct.Memory* @routine_callq_._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401444, i64 15004, i64 5, i64 5)
  store %struct.Memory* %call1_401444, %struct.Memory** %MEMORY

  %loadMem2_401444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401444 = load i64, i64* %3
  %call2_401444 = call %struct.Memory* @sub_404ee0._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401444, %struct.Memory* %loadMem2_401444)
  store %struct.Memory* %call2_401444, %struct.Memory** %MEMORY

  ; Code: movl $0x418ed5, %esi	 RIP: 401449	 Bytes: 5
  %loadMem_401449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401449 = call %struct.Memory* @routine_movl__0x418ed5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401449)
  store %struct.Memory* %call_401449, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40144e	 Bytes: 2
  %loadMem_40144e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144e)
  store %struct.Memory* %call_40144e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401450	 Bytes: 4
  %loadMem_401450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401450 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401450)
  store %struct.Memory* %call_401450, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401454	 Bytes: 3
  %loadMem_401454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401454 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401454)
  store %struct.Memory* %call_401454, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc	 RIP: 401457	 Bytes: 5
  %loadMem1_401457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401457 = call %struct.Memory* @routine_callq_._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401457, i64 15145, i64 5, i64 5)
  store %struct.Memory* %call1_401457, %struct.Memory** %MEMORY

  %loadMem2_401457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401457 = load i64, i64* %3
  %call2_401457 = call %struct.Memory* @sub_404f80._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401457, %struct.Memory* %loadMem2_401457)
  store %struct.Memory* %call2_401457, %struct.Memory** %MEMORY

  ; Code: movl $0x418ef5, %esi	 RIP: 40145c	 Bytes: 5
  %loadMem_40145c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145c = call %struct.Memory* @routine_movl__0x418ef5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145c)
  store %struct.Memory* %call_40145c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401461	 Bytes: 2
  %loadMem_401461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401461 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401461)
  store %struct.Memory* %call_401461, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401463	 Bytes: 4
  %loadMem_401463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401463 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401463)
  store %struct.Memory* %call_401463, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401467	 Bytes: 3
  %loadMem_401467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401467 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401467)
  store %struct.Memory* %call_401467, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc	 RIP: 40146a	 Bytes: 5
  %loadMem1_40146a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40146a = call %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40146a, i64 15286, i64 5, i64 5)
  store %struct.Memory* %call1_40146a, %struct.Memory** %MEMORY

  %loadMem2_40146a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40146a = load i64, i64* %3
  %call2_40146a = call %struct.Memory* @sub_405020._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40146a, %struct.Memory* %loadMem2_40146a)
  store %struct.Memory* %call2_40146a, %struct.Memory** %MEMORY

  ; Code: movl $0x418f0a, %esi	 RIP: 40146f	 Bytes: 5
  %loadMem_40146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146f = call %struct.Memory* @routine_movl__0x418f0a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146f)
  store %struct.Memory* %call_40146f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401474	 Bytes: 2
  %loadMem_401474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401474 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401474)
  store %struct.Memory* %call_401474, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401476	 Bytes: 4
  %loadMem_401476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401476 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401476)
  store %struct.Memory* %call_401476, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40147a	 Bytes: 3
  %loadMem_40147a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40147a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40147a)
  store %struct.Memory* %call_40147a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc	 RIP: 40147d	 Bytes: 5
  %loadMem1_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40147d = call %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40147d, i64 15427, i64 5, i64 5)
  store %struct.Memory* %call1_40147d, %struct.Memory** %MEMORY

  %loadMem2_40147d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40147d = load i64, i64* %3
  %call2_40147d = call %struct.Memory* @sub_4050c0._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40147d, %struct.Memory* %loadMem2_40147d)
  store %struct.Memory* %call2_40147d, %struct.Memory** %MEMORY

  ; Code: movl $0x418f28, %esi	 RIP: 401482	 Bytes: 5
  %loadMem_401482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401482 = call %struct.Memory* @routine_movl__0x418f28___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401482)
  store %struct.Memory* %call_401482, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401487	 Bytes: 2
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401487 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401487)
  store %struct.Memory* %call_401487, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 401489	 Bytes: 4
  %loadMem_401489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401489 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401489)
  store %struct.Memory* %call_401489, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40148d	 Bytes: 3
  %loadMem_40148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148d)
  store %struct.Memory* %call_40148d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc	 RIP: 401490	 Bytes: 5
  %loadMem1_401490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401490 = call %struct.Memory* @routine_callq_._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401490, i64 15568, i64 5, i64 5)
  store %struct.Memory* %call1_401490, %struct.Memory** %MEMORY

  %loadMem2_401490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401490 = load i64, i64* %3
  %call2_401490 = call %struct.Memory* @sub_405160._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401490, %struct.Memory* %loadMem2_401490)
  store %struct.Memory* %call2_401490, %struct.Memory** %MEMORY

  ; Code: movl $0x418f3c, %esi	 RIP: 401495	 Bytes: 5
  %loadMem_401495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401495 = call %struct.Memory* @routine_movl__0x418f3c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401495)
  store %struct.Memory* %call_401495, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40149a	 Bytes: 2
  %loadMem_40149a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149a)
  store %struct.Memory* %call_40149a, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 40149c	 Bytes: 4
  %loadMem_40149c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40149c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40149c)
  store %struct.Memory* %call_40149c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4014a0	 Bytes: 3
  %loadMem_4014a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a0)
  store %struct.Memory* %call_4014a0, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc	 RIP: 4014a3	 Bytes: 5
  %loadMem1_4014a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4014a3 = call %struct.Memory* @routine_callq_._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4014a3, i64 15709, i64 5, i64 5)
  store %struct.Memory* %call1_4014a3, %struct.Memory** %MEMORY

  %loadMem2_4014a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014a3 = load i64, i64* %3
  %call2_4014a3 = call %struct.Memory* @sub_405200._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4014a3, %struct.Memory* %loadMem2_4014a3)
  store %struct.Memory* %call2_4014a3, %struct.Memory** %MEMORY

  ; Code: movl $0x418f59, %esi	 RIP: 4014a8	 Bytes: 5
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a8 = call %struct.Memory* @routine_movl__0x418f59___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a8)
  store %struct.Memory* %call_4014a8, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4014ad	 Bytes: 2
  %loadMem_4014ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ad = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ad)
  store %struct.Memory* %call_4014ad, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4014af	 Bytes: 4
  %loadMem_4014af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014af = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014af)
  store %struct.Memory* %call_4014af, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4014b3	 Bytes: 3
  %loadMem_4014b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b3)
  store %struct.Memory* %call_4014b3, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc	 RIP: 4014b6	 Bytes: 5
  %loadMem1_4014b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4014b6 = call %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4014b6, i64 15850, i64 5, i64 5)
  store %struct.Memory* %call1_4014b6, %struct.Memory** %MEMORY

  %loadMem2_4014b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014b6 = load i64, i64* %3
  %call2_4014b6 = call %struct.Memory* @sub_4052a0._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4014b6, %struct.Memory* %loadMem2_4014b6)
  store %struct.Memory* %call2_4014b6, %struct.Memory** %MEMORY

  ; Code: movl $0x418f6e, %esi	 RIP: 4014bb	 Bytes: 5
  %loadMem_4014bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bb = call %struct.Memory* @routine_movl__0x418f6e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bb)
  store %struct.Memory* %call_4014bb, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4014c0	 Bytes: 2
  %loadMem_4014c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c0 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c0)
  store %struct.Memory* %call_4014c0, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 4014c2	 Bytes: 4
  %loadMem_4014c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c2)
  store %struct.Memory* %call_4014c2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4014c6	 Bytes: 3
  %loadMem_4014c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c6)
  store %struct.Memory* %call_4014c6, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc	 RIP: 4014c9	 Bytes: 5
  %loadMem1_4014c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4014c9 = call %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4014c9, i64 15991, i64 5, i64 5)
  store %struct.Memory* %call1_4014c9, %struct.Memory** %MEMORY

  %loadMem2_4014c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014c9 = load i64, i64* %3
  %call2_4014c9 = call %struct.Memory* @sub_405340._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4014c9, %struct.Memory* %loadMem2_4014c9)
  store %struct.Memory* %call2_4014c9, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x220bb2(%rip), %esi	 RIP: 4014ce	 Bytes: 8
  %loadMem_4014ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ce = call %struct.Memory* @routine_cvttsd2si_0x220bb2__rip____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ce)
  store %struct.Memory* %call_4014ce, %struct.Memory** %MEMORY

  ; Code: movl $0x66c450, %r9d	 RIP: 4014d6	 Bytes: 6
  %loadMem_4014d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d6 = call %struct.Memory* @routine_movl__0x66c450___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d6)
  store %struct.Memory* %call_4014d6, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 4014dc	 Bytes: 3
  %loadMem_4014dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014dc = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014dc)
  store %struct.Memory* %call_4014dc, %struct.Memory** %MEMORY

  ; Code: movw %si, %r10w	 RIP: 4014df	 Bytes: 4
  %loadMem_4014df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014df = call %struct.Memory* @routine_movw__si___r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014df)
  store %struct.Memory* %call_4014df, %struct.Memory** %MEMORY

  ; Code: movswl %r10w, %edx	 RIP: 4014e3	 Bytes: 4
  %loadMem_4014e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e3 = call %struct.Memory* @routine_movswl__r10w___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e3)
  store %struct.Memory* %call_4014e3, %struct.Memory** %MEMORY

  ; Code: movl $0x6702d0, %esi	 RIP: 4014e7	 Bytes: 5
  %loadMem_4014e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e7 = call %struct.Memory* @routine_movl__0x6702d0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e7)
  store %struct.Memory* %call_4014e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4014ec	 Bytes: 3
  %loadMem_4014ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ec = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ec)
  store %struct.Memory* %call_4014ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 4014ef	 Bytes: 4
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ef = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ef)
  store %struct.Memory* %call_4014ef, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPssEvT_S1_T0_	 RIP: 4014f3	 Bytes: 5
  %loadMem1_4014f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4014f3 = call %struct.Memory* @routine_callq_._Z4fillIPssEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4014f3, i64 16109, i64 5, i64 5)
  store %struct.Memory* %call1_4014f3, %struct.Memory** %MEMORY

  %loadMem2_4014f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4014f3 = load i64, i64* %3
  %call2_4014f3 = call %struct.Memory* @sub_4053e0._Z4fillIPssEvT_S1_T0_(%struct.State* %0, i64  %loadPC_4014f3, %struct.Memory* %loadMem2_4014f3)
  store %struct.Memory* %call2_4014f3, %struct.Memory** %MEMORY

  ; Code: movl 0x220b82(%rip), %edx	 RIP: 4014f8	 Bytes: 6
  %loadMem_4014f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f8 = call %struct.Memory* @routine_movl_0x220b82__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f8)
  store %struct.Memory* %call_4014f8, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x220bbc(%rip)	 RIP: 4014fe	 Bytes: 6
  %loadMem_4014fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014fe = call %struct.Memory* @routine_movl__edx__0x220bbc__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014fe)
  store %struct.Memory* %call_4014fe, %struct.Memory** %MEMORY

  ; Code: movl $0x418f8d, %edx	 RIP: 401504	 Bytes: 5
  %loadMem_401504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401504 = call %struct.Memory* @routine_movl__0x418f8d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401504)
  store %struct.Memory* %call_401504, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401509	 Bytes: 4
  %loadMem_401509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401509 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401509)
  store %struct.Memory* %call_401509, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40150d	 Bytes: 3
  %loadMem_40150d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150d)
  store %struct.Memory* %call_40150d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs10custom_twoIsEEvPT_iPKc	 RIP: 401510	 Bytes: 5
  %loadMem1_401510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401510 = call %struct.Memory* @routine_callq_._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401510, i64 16144, i64 5, i64 5)
  store %struct.Memory* %call1_401510, %struct.Memory** %MEMORY

  %loadMem2_401510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401510 = load i64, i64* %3
  %call2_401510 = call %struct.Memory* @sub_405420._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401510, %struct.Memory* %loadMem2_401510)
  store %struct.Memory* %call2_401510, %struct.Memory** %MEMORY

  ; Code: movl $0x418f9f, %esi	 RIP: 401515	 Bytes: 5
  %loadMem_401515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401515 = call %struct.Memory* @routine_movl__0x418f9f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401515)
  store %struct.Memory* %call_401515, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40151a	 Bytes: 2
  %loadMem_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151a)
  store %struct.Memory* %call_40151a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40151c	 Bytes: 4
  %loadMem_40151c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151c)
  store %struct.Memory* %call_40151c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401520	 Bytes: 3
  %loadMem_401520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401520 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401520)
  store %struct.Memory* %call_401520, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc	 RIP: 401523	 Bytes: 5
  %loadMem1_401523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401523 = call %struct.Memory* @routine_callq_._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401523, i64 16301, i64 5, i64 5)
  store %struct.Memory* %call1_401523, %struct.Memory** %MEMORY

  %loadMem2_401523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401523 = load i64, i64* %3
  %call2_401523 = call %struct.Memory* @sub_4054d0._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401523, %struct.Memory* %loadMem2_401523)
  store %struct.Memory* %call2_401523, %struct.Memory** %MEMORY

  ; Code: movl $0x418fb6, %esi	 RIP: 401528	 Bytes: 5
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401528 = call %struct.Memory* @routine_movl__0x418fb6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401528)
  store %struct.Memory* %call_401528, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40152d	 Bytes: 2
  %loadMem_40152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152d)
  store %struct.Memory* %call_40152d, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40152f	 Bytes: 4
  %loadMem_40152f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152f)
  store %struct.Memory* %call_40152f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401533	 Bytes: 3
  %loadMem_401533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401533 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401533)
  store %struct.Memory* %call_401533, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc	 RIP: 401536	 Bytes: 5
  %loadMem1_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401536 = call %struct.Memory* @routine_callq_._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401536, i64 16458, i64 5, i64 5)
  store %struct.Memory* %call1_401536, %struct.Memory** %MEMORY

  %loadMem2_401536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401536 = load i64, i64* %3
  %call2_401536 = call %struct.Memory* @sub_405580._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401536, %struct.Memory* %loadMem2_401536)
  store %struct.Memory* %call2_401536, %struct.Memory** %MEMORY

  ; Code: movl $0x418fd2, %esi	 RIP: 40153b	 Bytes: 5
  %loadMem_40153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153b = call %struct.Memory* @routine_movl__0x418fd2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153b)
  store %struct.Memory* %call_40153b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401540	 Bytes: 2
  %loadMem_401540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401540 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401540)
  store %struct.Memory* %call_401540, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401542	 Bytes: 4
  %loadMem_401542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401542 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401542)
  store %struct.Memory* %call_401542, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401546	 Bytes: 3
  %loadMem_401546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401546 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401546)
  store %struct.Memory* %call_401546, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc	 RIP: 401549	 Bytes: 5
  %loadMem1_401549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401549 = call %struct.Memory* @routine_callq_._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401549, i64 16615, i64 5, i64 5)
  store %struct.Memory* %call1_401549, %struct.Memory** %MEMORY

  %loadMem2_401549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401549 = load i64, i64* %3
  %call2_401549 = call %struct.Memory* @sub_405630._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401549, %struct.Memory* %loadMem2_401549)
  store %struct.Memory* %call2_401549, %struct.Memory** %MEMORY

  ; Code: movl $0x418fee, %esi	 RIP: 40154e	 Bytes: 5
  %loadMem_40154e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154e = call %struct.Memory* @routine_movl__0x418fee___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154e)
  store %struct.Memory* %call_40154e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401553	 Bytes: 2
  %loadMem_401553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401553 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401553)
  store %struct.Memory* %call_401553, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401555	 Bytes: 4
  %loadMem_401555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401555 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401555)
  store %struct.Memory* %call_401555, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401559	 Bytes: 3
  %loadMem_401559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401559 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401559)
  store %struct.Memory* %call_401559, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc	 RIP: 40155c	 Bytes: 5
  %loadMem1_40155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40155c = call %struct.Memory* @routine_callq_._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40155c, i64 16772, i64 5, i64 5)
  store %struct.Memory* %call1_40155c, %struct.Memory** %MEMORY

  %loadMem2_40155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40155c = load i64, i64* %3
  %call2_40155c = call %struct.Memory* @sub_4056e0._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40155c, %struct.Memory* %loadMem2_40155c)
  store %struct.Memory* %call2_40155c, %struct.Memory** %MEMORY

  ; Code: movl $0x419008, %esi	 RIP: 401561	 Bytes: 5
  %loadMem_401561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401561 = call %struct.Memory* @routine_movl__0x419008___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401561)
  store %struct.Memory* %call_401561, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401566	 Bytes: 2
  %loadMem_401566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401566 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401566)
  store %struct.Memory* %call_401566, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401568	 Bytes: 4
  %loadMem_401568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401568 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401568)
  store %struct.Memory* %call_401568, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40156c	 Bytes: 3
  %loadMem_40156c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156c)
  store %struct.Memory* %call_40156c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc	 RIP: 40156f	 Bytes: 5
  %loadMem1_40156f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40156f = call %struct.Memory* @routine_callq_._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40156f, i64 16929, i64 5, i64 5)
  store %struct.Memory* %call1_40156f, %struct.Memory** %MEMORY

  %loadMem2_40156f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40156f = load i64, i64* %3
  %call2_40156f = call %struct.Memory* @sub_405790._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40156f, %struct.Memory* %loadMem2_40156f)
  store %struct.Memory* %call2_40156f, %struct.Memory** %MEMORY

  ; Code: movl $0x41901f, %esi	 RIP: 401574	 Bytes: 5
  %loadMem_401574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401574 = call %struct.Memory* @routine_movl__0x41901f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401574)
  store %struct.Memory* %call_401574, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401579	 Bytes: 2
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401579 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401579)
  store %struct.Memory* %call_401579, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40157b	 Bytes: 4
  %loadMem_40157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157b)
  store %struct.Memory* %call_40157b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40157f	 Bytes: 3
  %loadMem_40157f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40157f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40157f)
  store %struct.Memory* %call_40157f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc	 RIP: 401582	 Bytes: 5
  %loadMem1_401582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401582 = call %struct.Memory* @routine_callq_._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401582, i64 17086, i64 5, i64 5)
  store %struct.Memory* %call1_401582, %struct.Memory** %MEMORY

  %loadMem2_401582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401582 = load i64, i64* %3
  %call2_401582 = call %struct.Memory* @sub_405840._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401582, %struct.Memory* %loadMem2_401582)
  store %struct.Memory* %call2_401582, %struct.Memory** %MEMORY

  ; Code: movl $0x419038, %esi	 RIP: 401587	 Bytes: 5
  %loadMem_401587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401587 = call %struct.Memory* @routine_movl__0x419038___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401587)
  store %struct.Memory* %call_401587, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40158c	 Bytes: 2
  %loadMem_40158c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158c)
  store %struct.Memory* %call_40158c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40158e	 Bytes: 4
  %loadMem_40158e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158e)
  store %struct.Memory* %call_40158e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401592	 Bytes: 3
  %loadMem_401592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401592 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401592)
  store %struct.Memory* %call_401592, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc	 RIP: 401595	 Bytes: 5
  %loadMem1_401595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401595 = call %struct.Memory* @routine_callq_._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401595, i64 17243, i64 5, i64 5)
  store %struct.Memory* %call1_401595, %struct.Memory** %MEMORY

  %loadMem2_401595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401595 = load i64, i64* %3
  %call2_401595 = call %struct.Memory* @sub_4058f0._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401595, %struct.Memory* %loadMem2_401595)
  store %struct.Memory* %call2_401595, %struct.Memory** %MEMORY

  ; Code: movl $0x419054, %esi	 RIP: 40159a	 Bytes: 5
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159a = call %struct.Memory* @routine_movl__0x419054___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159a)
  store %struct.Memory* %call_40159a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40159f	 Bytes: 2
  %loadMem_40159f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159f)
  store %struct.Memory* %call_40159f, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4015a1	 Bytes: 4
  %loadMem_4015a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a1)
  store %struct.Memory* %call_4015a1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4015a5	 Bytes: 3
  %loadMem_4015a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a5)
  store %struct.Memory* %call_4015a5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc	 RIP: 4015a8	 Bytes: 5
  %loadMem1_4015a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015a8 = call %struct.Memory* @routine_callq_._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015a8, i64 17400, i64 5, i64 5)
  store %struct.Memory* %call1_4015a8, %struct.Memory** %MEMORY

  %loadMem2_4015a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015a8 = load i64, i64* %3
  %call2_4015a8 = call %struct.Memory* @sub_4059a0._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4015a8, %struct.Memory* %loadMem2_4015a8)
  store %struct.Memory* %call2_4015a8, %struct.Memory** %MEMORY

  ; Code: movl $0x419074, %esi	 RIP: 4015ad	 Bytes: 5
  %loadMem_4015ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ad = call %struct.Memory* @routine_movl__0x419074___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ad)
  store %struct.Memory* %call_4015ad, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4015b2	 Bytes: 2
  %loadMem_4015b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b2 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b2)
  store %struct.Memory* %call_4015b2, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4015b4	 Bytes: 4
  %loadMem_4015b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b4 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b4)
  store %struct.Memory* %call_4015b4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4015b8	 Bytes: 3
  %loadMem_4015b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b8)
  store %struct.Memory* %call_4015b8, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc	 RIP: 4015bb	 Bytes: 5
  %loadMem1_4015bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015bb = call %struct.Memory* @routine_callq_._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015bb, i64 17557, i64 5, i64 5)
  store %struct.Memory* %call1_4015bb, %struct.Memory** %MEMORY

  %loadMem2_4015bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015bb = load i64, i64* %3
  %call2_4015bb = call %struct.Memory* @sub_405a50._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4015bb, %struct.Memory* %loadMem2_4015bb)
  store %struct.Memory* %call2_4015bb, %struct.Memory** %MEMORY

  ; Code: movl $0x419091, %esi	 RIP: 4015c0	 Bytes: 5
  %loadMem_4015c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c0 = call %struct.Memory* @routine_movl__0x419091___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c0)
  store %struct.Memory* %call_4015c0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4015c5	 Bytes: 2
  %loadMem_4015c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c5)
  store %struct.Memory* %call_4015c5, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4015c7	 Bytes: 4
  %loadMem_4015c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c7)
  store %struct.Memory* %call_4015c7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4015cb	 Bytes: 3
  %loadMem_4015cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015cb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015cb)
  store %struct.Memory* %call_4015cb, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc	 RIP: 4015ce	 Bytes: 5
  %loadMem1_4015ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015ce = call %struct.Memory* @routine_callq_._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015ce, i64 17714, i64 5, i64 5)
  store %struct.Memory* %call1_4015ce, %struct.Memory** %MEMORY

  %loadMem2_4015ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015ce = load i64, i64* %3
  %call2_4015ce = call %struct.Memory* @sub_405b00._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4015ce, %struct.Memory* %loadMem2_4015ce)
  store %struct.Memory* %call2_4015ce, %struct.Memory** %MEMORY

  ; Code: movl $0x4190b7, %esi	 RIP: 4015d3	 Bytes: 5
  %loadMem_4015d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d3 = call %struct.Memory* @routine_movl__0x4190b7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d3)
  store %struct.Memory* %call_4015d3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4015d8	 Bytes: 2
  %loadMem_4015d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d8)
  store %struct.Memory* %call_4015d8, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4015da	 Bytes: 4
  %loadMem_4015da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015da = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015da)
  store %struct.Memory* %call_4015da, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4015de	 Bytes: 3
  %loadMem_4015de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015de = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015de)
  store %struct.Memory* %call_4015de, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc	 RIP: 4015e1	 Bytes: 5
  %loadMem1_4015e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015e1 = call %struct.Memory* @routine_callq_._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015e1, i64 17871, i64 5, i64 5)
  store %struct.Memory* %call1_4015e1, %struct.Memory** %MEMORY

  %loadMem2_4015e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015e1 = load i64, i64* %3
  %call2_4015e1 = call %struct.Memory* @sub_405bb0._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4015e1, %struct.Memory* %loadMem2_4015e1)
  store %struct.Memory* %call2_4015e1, %struct.Memory** %MEMORY

  ; Code: movl $0x4190da, %esi	 RIP: 4015e6	 Bytes: 5
  %loadMem_4015e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e6 = call %struct.Memory* @routine_movl__0x4190da___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e6)
  store %struct.Memory* %call_4015e6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4015eb	 Bytes: 2
  %loadMem_4015eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015eb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015eb)
  store %struct.Memory* %call_4015eb, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4015ed	 Bytes: 4
  %loadMem_4015ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ed = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ed)
  store %struct.Memory* %call_4015ed, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4015f1	 Bytes: 3
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f1)
  store %struct.Memory* %call_4015f1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc	 RIP: 4015f4	 Bytes: 5
  %loadMem1_4015f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4015f4 = call %struct.Memory* @routine_callq_._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4015f4, i64 18028, i64 5, i64 5)
  store %struct.Memory* %call1_4015f4, %struct.Memory** %MEMORY

  %loadMem2_4015f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4015f4 = load i64, i64* %3
  %call2_4015f4 = call %struct.Memory* @sub_405c60._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4015f4, %struct.Memory* %loadMem2_4015f4)
  store %struct.Memory* %call2_4015f4, %struct.Memory** %MEMORY

  ; Code: movl $0x4190f1, %esi	 RIP: 4015f9	 Bytes: 5
  %loadMem_4015f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f9 = call %struct.Memory* @routine_movl__0x4190f1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f9)
  store %struct.Memory* %call_4015f9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4015fe	 Bytes: 2
  %loadMem_4015fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fe = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fe)
  store %struct.Memory* %call_4015fe, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401600	 Bytes: 4
  %loadMem_401600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401600 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401600)
  store %struct.Memory* %call_401600, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401604	 Bytes: 3
  %loadMem_401604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401604 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401604)
  store %struct.Memory* %call_401604, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc	 RIP: 401607	 Bytes: 5
  %loadMem1_401607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401607 = call %struct.Memory* @routine_callq_._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401607, i64 18185, i64 5, i64 5)
  store %struct.Memory* %call1_401607, %struct.Memory** %MEMORY

  %loadMem2_401607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401607 = load i64, i64* %3
  %call2_401607 = call %struct.Memory* @sub_405d10._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401607, %struct.Memory* %loadMem2_401607)
  store %struct.Memory* %call2_401607, %struct.Memory** %MEMORY

  ; Code: movl $0x419107, %esi	 RIP: 40160c	 Bytes: 5
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160c = call %struct.Memory* @routine_movl__0x419107___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160c)
  store %struct.Memory* %call_40160c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401611	 Bytes: 2
  %loadMem_401611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401611 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401611)
  store %struct.Memory* %call_401611, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401613	 Bytes: 4
  %loadMem_401613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401613 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401613)
  store %struct.Memory* %call_401613, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401617	 Bytes: 3
  %loadMem_401617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401617 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401617)
  store %struct.Memory* %call_401617, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc	 RIP: 40161a	 Bytes: 5
  %loadMem1_40161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40161a = call %struct.Memory* @routine_callq_._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40161a, i64 18342, i64 5, i64 5)
  store %struct.Memory* %call1_40161a, %struct.Memory** %MEMORY

  %loadMem2_40161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40161a = load i64, i64* %3
  %call2_40161a = call %struct.Memory* @sub_405dc0._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40161a, %struct.Memory* %loadMem2_40161a)
  store %struct.Memory* %call2_40161a, %struct.Memory** %MEMORY

  ; Code: movslq 0x220a5a(%rip), %rax	 RIP: 40161f	 Bytes: 7
  %loadMem_40161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161f = call %struct.Memory* @routine_movslq_0x220a5a__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161f)
  store %struct.Memory* %call_40161f, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 401626	 Bytes: 7
  %loadMem_401626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401626 = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401626)
  store %struct.Memory* %call_401626, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 40162d	 Bytes: 3
  %loadMem_40162d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162d = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162d)
  store %struct.Memory* %call_40162d, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 401630	 Bytes: 4
  %loadMem_401630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401630 = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401630)
  store %struct.Memory* %call_401630, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 401634	 Bytes: 2
  %loadMem_401634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401634 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401634)
  store %struct.Memory* %call_401634, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 401636	 Bytes: 4
  %loadMem_401636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401636 = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401636)
  store %struct.Memory* %call_401636, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 40163a	 Bytes: 3
  %loadMem_40163a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163a = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163a)
  store %struct.Memory* %call_40163a, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 40163d	 Bytes: 3
  %loadMem_40163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163d = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163d)
  store %struct.Memory* %call_40163d, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x220a79(%rip)	 RIP: 401640	 Bytes: 7
  %loadMem_401640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401640 = call %struct.Memory* @routine_movl__r9d__0x220a79__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401640)
  store %struct.Memory* %call_401640, %struct.Memory** %MEMORY

  ; Code: movl $0x41911e, %esi	 RIP: 401647	 Bytes: 5
  %loadMem_401647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401647 = call %struct.Memory* @routine_movl__0x41911e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401647)
  store %struct.Memory* %call_401647, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40164c	 Bytes: 2
  %loadMem_40164c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164c)
  store %struct.Memory* %call_40164c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40164e	 Bytes: 4
  %loadMem_40164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164e)
  store %struct.Memory* %call_40164e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401652	 Bytes: 3
  %loadMem_401652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401652 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401652)
  store %struct.Memory* %call_401652, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc	 RIP: 401655	 Bytes: 5
  %loadMem1_401655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401655 = call %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401655, i64 18459, i64 5, i64 5)
  store %struct.Memory* %call1_401655, %struct.Memory** %MEMORY

  %loadMem2_401655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401655 = load i64, i64* %3
  %call2_401655 = call %struct.Memory* @sub_405e70._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401655, %struct.Memory* %loadMem2_401655)
  store %struct.Memory* %call2_401655, %struct.Memory** %MEMORY

  ; Code: movl $0x419134, %esi	 RIP: 40165a	 Bytes: 5
  %loadMem_40165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165a = call %struct.Memory* @routine_movl__0x419134___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165a)
  store %struct.Memory* %call_40165a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40165f	 Bytes: 2
  %loadMem_40165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165f)
  store %struct.Memory* %call_40165f, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401661	 Bytes: 4
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401665	 Bytes: 3
  %loadMem_401665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401665 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401665)
  store %struct.Memory* %call_401665, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc	 RIP: 401668	 Bytes: 5
  %loadMem1_401668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401668 = call %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401668, i64 18616, i64 5, i64 5)
  store %struct.Memory* %call1_401668, %struct.Memory** %MEMORY

  %loadMem2_401668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401668 = load i64, i64* %3
  %call2_401668 = call %struct.Memory* @sub_405f20._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401668, %struct.Memory* %loadMem2_401668)
  store %struct.Memory* %call2_401668, %struct.Memory** %MEMORY

  ; Code: movl $0x419154, %esi	 RIP: 40166d	 Bytes: 5
  %loadMem_40166d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166d = call %struct.Memory* @routine_movl__0x419154___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166d)
  store %struct.Memory* %call_40166d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401672	 Bytes: 2
  %loadMem_401672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401672 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401672)
  store %struct.Memory* %call_401672, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401674	 Bytes: 4
  %loadMem_401674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401674 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401674)
  store %struct.Memory* %call_401674, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401678	 Bytes: 3
  %loadMem_401678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401678 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401678)
  store %struct.Memory* %call_401678, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc	 RIP: 40167b	 Bytes: 5
  %loadMem1_40167b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40167b = call %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40167b, i64 18773, i64 5, i64 5)
  store %struct.Memory* %call1_40167b, %struct.Memory** %MEMORY

  %loadMem2_40167b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40167b = load i64, i64* %3
  %call2_40167b = call %struct.Memory* @sub_405fd0._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40167b, %struct.Memory* %loadMem2_40167b)
  store %struct.Memory* %call2_40167b, %struct.Memory** %MEMORY

  ; Code: movl $0x41916f, %esi	 RIP: 401680	 Bytes: 5
  %loadMem_401680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401680 = call %struct.Memory* @routine_movl__0x41916f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401680)
  store %struct.Memory* %call_401680, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401685	 Bytes: 2
  %loadMem_401685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401685 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401685)
  store %struct.Memory* %call_401685, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401687	 Bytes: 4
  %loadMem_401687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401687 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401687)
  store %struct.Memory* %call_401687, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40168b	 Bytes: 3
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168b)
  store %struct.Memory* %call_40168b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc	 RIP: 40168e	 Bytes: 5
  %loadMem1_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40168e = call %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40168e, i64 18930, i64 5, i64 5)
  store %struct.Memory* %call1_40168e, %struct.Memory** %MEMORY

  %loadMem2_40168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40168e = load i64, i64* %3
  %call2_40168e = call %struct.Memory* @sub_406080._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40168e, %struct.Memory* %loadMem2_40168e)
  store %struct.Memory* %call2_40168e, %struct.Memory** %MEMORY

  ; Code: movl $0x419194, %esi	 RIP: 401693	 Bytes: 5
  %loadMem_401693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401693 = call %struct.Memory* @routine_movl__0x419194___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401693)
  store %struct.Memory* %call_401693, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401698	 Bytes: 2
  %loadMem_401698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401698 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401698)
  store %struct.Memory* %call_401698, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40169a	 Bytes: 4
  %loadMem_40169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169a)
  store %struct.Memory* %call_40169a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40169e	 Bytes: 3
  %loadMem_40169e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169e)
  store %struct.Memory* %call_40169e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc	 RIP: 4016a1	 Bytes: 5
  %loadMem1_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4016a1 = call %struct.Memory* @routine_callq_._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4016a1, i64 19087, i64 5, i64 5)
  store %struct.Memory* %call1_4016a1, %struct.Memory** %MEMORY

  %loadMem2_4016a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4016a1 = load i64, i64* %3
  %call2_4016a1 = call %struct.Memory* @sub_406130._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4016a1, %struct.Memory* %loadMem2_4016a1)
  store %struct.Memory* %call2_4016a1, %struct.Memory** %MEMORY

  ; Code: movl $0x4191af, %esi	 RIP: 4016a6	 Bytes: 5
  %loadMem_4016a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a6 = call %struct.Memory* @routine_movl__0x4191af___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a6)
  store %struct.Memory* %call_4016a6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4016ab	 Bytes: 2
  %loadMem_4016ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ab = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ab)
  store %struct.Memory* %call_4016ab, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4016ad	 Bytes: 4
  %loadMem_4016ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ad = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ad)
  store %struct.Memory* %call_4016ad, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4016b1	 Bytes: 3
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc	 RIP: 4016b4	 Bytes: 5
  %loadMem1_4016b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4016b4 = call %struct.Memory* @routine_callq_._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4016b4, i64 19244, i64 5, i64 5)
  store %struct.Memory* %call1_4016b4, %struct.Memory** %MEMORY

  %loadMem2_4016b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4016b4 = load i64, i64* %3
  %call2_4016b4 = call %struct.Memory* @sub_4061e0._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4016b4, %struct.Memory* %loadMem2_4016b4)
  store %struct.Memory* %call2_4016b4, %struct.Memory** %MEMORY

  ; Code: movl $0x4191d5, %esi	 RIP: 4016b9	 Bytes: 5
  %loadMem_4016b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b9 = call %struct.Memory* @routine_movl__0x4191d5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b9)
  store %struct.Memory* %call_4016b9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4016be	 Bytes: 2
  %loadMem_4016be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016be = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016be)
  store %struct.Memory* %call_4016be, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4016c0	 Bytes: 4
  %loadMem_4016c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c0 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c0)
  store %struct.Memory* %call_4016c0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4016c4	 Bytes: 3
  %loadMem_4016c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c4)
  store %struct.Memory* %call_4016c4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc	 RIP: 4016c7	 Bytes: 5
  %loadMem1_4016c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4016c7 = call %struct.Memory* @routine_callq_._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4016c7, i64 19401, i64 5, i64 5)
  store %struct.Memory* %call1_4016c7, %struct.Memory** %MEMORY

  %loadMem2_4016c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4016c7 = load i64, i64* %3
  %call2_4016c7 = call %struct.Memory* @sub_406290._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4016c7, %struct.Memory* %loadMem2_4016c7)
  store %struct.Memory* %call2_4016c7, %struct.Memory** %MEMORY

  ; Code: movl $0x4191fa, %esi	 RIP: 4016cc	 Bytes: 5
  %loadMem_4016cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016cc = call %struct.Memory* @routine_movl__0x4191fa___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016cc)
  store %struct.Memory* %call_4016cc, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4016d1	 Bytes: 2
  %loadMem_4016d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d1 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d1)
  store %struct.Memory* %call_4016d1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4016d3	 Bytes: 4
  %loadMem_4016d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d3 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d3)
  store %struct.Memory* %call_4016d3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4016d7	 Bytes: 3
  %loadMem_4016d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d7)
  store %struct.Memory* %call_4016d7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc	 RIP: 4016da	 Bytes: 5
  %loadMem1_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4016da = call %struct.Memory* @routine_callq_._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4016da, i64 19558, i64 5, i64 5)
  store %struct.Memory* %call1_4016da, %struct.Memory** %MEMORY

  %loadMem2_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4016da = load i64, i64* %3
  %call2_4016da = call %struct.Memory* @sub_406340._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4016da, %struct.Memory* %loadMem2_4016da)
  store %struct.Memory* %call2_4016da, %struct.Memory** %MEMORY

  ; Code: movl $0x419213, %esi	 RIP: 4016df	 Bytes: 5
  %loadMem_4016df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016df = call %struct.Memory* @routine_movl__0x419213___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016df)
  store %struct.Memory* %call_4016df, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4016e4	 Bytes: 2
  %loadMem_4016e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e4 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e4)
  store %struct.Memory* %call_4016e4, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4016e6	 Bytes: 4
  %loadMem_4016e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e6 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e6)
  store %struct.Memory* %call_4016e6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4016ea	 Bytes: 3
  %loadMem_4016ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ea = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ea)
  store %struct.Memory* %call_4016ea, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc	 RIP: 4016ed	 Bytes: 5
  %loadMem1_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4016ed = call %struct.Memory* @routine_callq_._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4016ed, i64 19715, i64 5, i64 5)
  store %struct.Memory* %call1_4016ed, %struct.Memory** %MEMORY

  %loadMem2_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4016ed = load i64, i64* %3
  %call2_4016ed = call %struct.Memory* @sub_4063f0._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4016ed, %struct.Memory* %loadMem2_4016ed)
  store %struct.Memory* %call2_4016ed, %struct.Memory** %MEMORY

  ; Code: movl $0x419236, %esi	 RIP: 4016f2	 Bytes: 5
  %loadMem_4016f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f2 = call %struct.Memory* @routine_movl__0x419236___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f2)
  store %struct.Memory* %call_4016f2, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4016f7	 Bytes: 2
  %loadMem_4016f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f7 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f7)
  store %struct.Memory* %call_4016f7, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4016f9	 Bytes: 4
  %loadMem_4016f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f9 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f9)
  store %struct.Memory* %call_4016f9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4016fd	 Bytes: 3
  %loadMem_4016fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fd = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fd)
  store %struct.Memory* %call_4016fd, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc	 RIP: 401700	 Bytes: 5
  %loadMem1_401700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401700 = call %struct.Memory* @routine_callq_._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401700, i64 19872, i64 5, i64 5)
  store %struct.Memory* %call1_401700, %struct.Memory** %MEMORY

  %loadMem2_401700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401700 = load i64, i64* %3
  %call2_401700 = call %struct.Memory* @sub_4064a0._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401700, %struct.Memory* %loadMem2_401700)
  store %struct.Memory* %call2_401700, %struct.Memory** %MEMORY

  ; Code: movl $0x419259, %esi	 RIP: 401705	 Bytes: 5
  %loadMem_401705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401705 = call %struct.Memory* @routine_movl__0x419259___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401705)
  store %struct.Memory* %call_401705, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40170a	 Bytes: 2
  %loadMem_40170a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170a)
  store %struct.Memory* %call_40170a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40170c	 Bytes: 4
  %loadMem_40170c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170c)
  store %struct.Memory* %call_40170c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401710	 Bytes: 3
  %loadMem_401710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401710 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401710)
  store %struct.Memory* %call_401710, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc	 RIP: 401713	 Bytes: 5
  %loadMem1_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401713 = call %struct.Memory* @routine_callq_._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401713, i64 20029, i64 5, i64 5)
  store %struct.Memory* %call1_401713, %struct.Memory** %MEMORY

  %loadMem2_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401713 = load i64, i64* %3
  %call2_401713 = call %struct.Memory* @sub_406550._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401713, %struct.Memory* %loadMem2_401713)
  store %struct.Memory* %call2_401713, %struct.Memory** %MEMORY

  ; Code: movl $0x41927a, %esi	 RIP: 401718	 Bytes: 5
  %loadMem_401718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401718 = call %struct.Memory* @routine_movl__0x41927a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401718)
  store %struct.Memory* %call_401718, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40171d	 Bytes: 2
  %loadMem_40171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171d)
  store %struct.Memory* %call_40171d, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40171f	 Bytes: 4
  %loadMem_40171f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171f = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171f)
  store %struct.Memory* %call_40171f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401723	 Bytes: 3
  %loadMem_401723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401723 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401723)
  store %struct.Memory* %call_401723, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc	 RIP: 401726	 Bytes: 5
  %loadMem1_401726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401726 = call %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401726, i64 20186, i64 5, i64 5)
  store %struct.Memory* %call1_401726, %struct.Memory** %MEMORY

  %loadMem2_401726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401726 = load i64, i64* %3
  %call2_401726 = call %struct.Memory* @sub_406600._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401726, %struct.Memory* %loadMem2_401726)
  store %struct.Memory* %call2_401726, %struct.Memory** %MEMORY

  ; Code: movl $0x419290, %esi	 RIP: 40172b	 Bytes: 5
  %loadMem_40172b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172b = call %struct.Memory* @routine_movl__0x419290___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172b)
  store %struct.Memory* %call_40172b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401730	 Bytes: 2
  %loadMem_401730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401730 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401730)
  store %struct.Memory* %call_401730, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401732	 Bytes: 4
  %loadMem_401732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401732 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401732)
  store %struct.Memory* %call_401732, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401736	 Bytes: 3
  %loadMem_401736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401736 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401736)
  store %struct.Memory* %call_401736, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc	 RIP: 401739	 Bytes: 5
  %loadMem1_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401739 = call %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401739, i64 20343, i64 5, i64 5)
  store %struct.Memory* %call1_401739, %struct.Memory** %MEMORY

  %loadMem2_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401739 = load i64, i64* %3
  %call2_401739 = call %struct.Memory* @sub_4066b0._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401739, %struct.Memory* %loadMem2_401739)
  store %struct.Memory* %call2_401739, %struct.Memory** %MEMORY

  ; Code: movl $0x4192af, %esi	 RIP: 40173e	 Bytes: 5
  %loadMem_40173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173e = call %struct.Memory* @routine_movl__0x4192af___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173e)
  store %struct.Memory* %call_40173e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401743	 Bytes: 2
  %loadMem_401743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401743 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401743)
  store %struct.Memory* %call_401743, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401745	 Bytes: 4
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401749	 Bytes: 3
  %loadMem_401749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401749 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401749)
  store %struct.Memory* %call_401749, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc	 RIP: 40174c	 Bytes: 5
  %loadMem1_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40174c = call %struct.Memory* @routine_callq_._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40174c, i64 20500, i64 5, i64 5)
  store %struct.Memory* %call1_40174c, %struct.Memory** %MEMORY

  %loadMem2_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40174c = load i64, i64* %3
  %call2_40174c = call %struct.Memory* @sub_406760._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40174c, %struct.Memory* %loadMem2_40174c)
  store %struct.Memory* %call2_40174c, %struct.Memory** %MEMORY

  ; Code: movl $0x4192c4, %esi	 RIP: 401751	 Bytes: 5
  %loadMem_401751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401751 = call %struct.Memory* @routine_movl__0x4192c4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401751)
  store %struct.Memory* %call_401751, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401756	 Bytes: 2
  %loadMem_401756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401756 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401756)
  store %struct.Memory* %call_401756, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 401758	 Bytes: 4
  %loadMem_401758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401758 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401758)
  store %struct.Memory* %call_401758, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40175c	 Bytes: 3
  %loadMem_40175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175c)
  store %struct.Memory* %call_40175c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc	 RIP: 40175f	 Bytes: 5
  %loadMem1_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40175f = call %struct.Memory* @routine_callq_._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40175f, i64 20657, i64 5, i64 5)
  store %struct.Memory* %call1_40175f, %struct.Memory** %MEMORY

  %loadMem2_40175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40175f = load i64, i64* %3
  %call2_40175f = call %struct.Memory* @sub_406810._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40175f, %struct.Memory* %loadMem2_40175f)
  store %struct.Memory* %call2_40175f, %struct.Memory** %MEMORY

  ; Code: movl $0x4192e2, %esi	 RIP: 401764	 Bytes: 5
  %loadMem_401764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401764 = call %struct.Memory* @routine_movl__0x4192e2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401764)
  store %struct.Memory* %call_401764, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401769	 Bytes: 2
  %loadMem_401769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401769 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401769)
  store %struct.Memory* %call_401769, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40176b	 Bytes: 4
  %loadMem_40176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176b)
  store %struct.Memory* %call_40176b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40176f	 Bytes: 3
  %loadMem_40176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176f)
  store %struct.Memory* %call_40176f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc	 RIP: 401772	 Bytes: 5
  %loadMem1_401772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401772 = call %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401772, i64 20814, i64 5, i64 5)
  store %struct.Memory* %call1_401772, %struct.Memory** %MEMORY

  %loadMem2_401772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401772 = load i64, i64* %3
  %call2_401772 = call %struct.Memory* @sub_4068c0._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401772, %struct.Memory* %loadMem2_401772)
  store %struct.Memory* %call2_401772, %struct.Memory** %MEMORY

  ; Code: movl $0x4192f8, %esi	 RIP: 401777	 Bytes: 5
  %loadMem_401777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401777 = call %struct.Memory* @routine_movl__0x4192f8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401777)
  store %struct.Memory* %call_401777, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40177c	 Bytes: 2
  %loadMem_40177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177c)
  store %struct.Memory* %call_40177c, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 40177e	 Bytes: 4
  %loadMem_40177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177e)
  store %struct.Memory* %call_40177e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401782	 Bytes: 3
  %loadMem_401782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401782 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401782)
  store %struct.Memory* %call_401782, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc	 RIP: 401785	 Bytes: 5
  %loadMem1_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401785 = call %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401785, i64 20971, i64 5, i64 5)
  store %struct.Memory* %call1_401785, %struct.Memory** %MEMORY

  %loadMem2_401785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401785 = load i64, i64* %3
  %call2_401785 = call %struct.Memory* @sub_406970._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401785, %struct.Memory* %loadMem2_401785)
  store %struct.Memory* %call2_401785, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x2208f6(%rip), %esi	 RIP: 40178a	 Bytes: 8
  %loadMem_40178a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178a = call %struct.Memory* @routine_cvttsd2si_0x2208f6__rip____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178a)
  store %struct.Memory* %call_40178a, %struct.Memory** %MEMORY

  ; Code: movl $0x6685d0, %r9d	 RIP: 401792	 Bytes: 6
  %loadMem_401792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401792 = call %struct.Memory* @routine_movl__0x6685d0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401792)
  store %struct.Memory* %call_401792, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 401798	 Bytes: 3
  %loadMem_401798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401798 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401798)
  store %struct.Memory* %call_401798, %struct.Memory** %MEMORY

  ; Code: movw %si, %r10w	 RIP: 40179b	 Bytes: 4
  %loadMem_40179b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179b = call %struct.Memory* @routine_movw__si___r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179b)
  store %struct.Memory* %call_40179b, %struct.Memory** %MEMORY

  ; Code: movzwl %r10w, %edx	 RIP: 40179f	 Bytes: 4
  %loadMem_40179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179f = call %struct.Memory* @routine_movzwl__r10w___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179f)
  store %struct.Memory* %call_40179f, %struct.Memory** %MEMORY

  ; Code: movl $0x66c450, %esi	 RIP: 4017a3	 Bytes: 5
  %loadMem_4017a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a3 = call %struct.Memory* @routine_movl__0x66c450___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a3)
  store %struct.Memory* %call_4017a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4017a8	 Bytes: 3
  %loadMem_4017a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a8 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a8)
  store %struct.Memory* %call_4017a8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4017ab	 Bytes: 4
  %loadMem_4017ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ab = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ab)
  store %struct.Memory* %call_4017ab, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPttEvT_S1_T0_	 RIP: 4017af	 Bytes: 5
  %loadMem1_4017af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4017af = call %struct.Memory* @routine_callq_._Z4fillIPttEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4017af, i64 21105, i64 5, i64 5)
  store %struct.Memory* %call1_4017af, %struct.Memory** %MEMORY

  %loadMem2_4017af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4017af = load i64, i64* %3
  %call2_4017af = call %struct.Memory* @sub_406a20._Z4fillIPttEvT_S1_T0_(%struct.State* %0, i64  %loadPC_4017af, %struct.Memory* %loadMem2_4017af)
  store %struct.Memory* %call2_4017af, %struct.Memory** %MEMORY

  ; Code: movl 0x2208c6(%rip), %edx	 RIP: 4017b4	 Bytes: 6
  %loadMem_4017b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b4 = call %struct.Memory* @routine_movl_0x2208c6__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b4)
  store %struct.Memory* %call_4017b4, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x220900(%rip)	 RIP: 4017ba	 Bytes: 6
  %loadMem_4017ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ba = call %struct.Memory* @routine_movl__edx__0x220900__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ba)
  store %struct.Memory* %call_4017ba, %struct.Memory** %MEMORY

  ; Code: movl $0x418f8c, %edx	 RIP: 4017c0	 Bytes: 5
  %loadMem_4017c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c0 = call %struct.Memory* @routine_movl__0x418f8c___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c0)
  store %struct.Memory* %call_4017c0, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4017c5	 Bytes: 4
  %loadMem_4017c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c5)
  store %struct.Memory* %call_4017c5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4017c9	 Bytes: 3
  %loadMem_4017c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c9)
  store %struct.Memory* %call_4017c9, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt10custom_twoItEEvPT_iPKc	 RIP: 4017cc	 Bytes: 5
  %loadMem1_4017cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4017cc = call %struct.Memory* @routine_callq_._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4017cc, i64 21140, i64 5, i64 5)
  store %struct.Memory* %call1_4017cc, %struct.Memory** %MEMORY

  %loadMem2_4017cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4017cc = load i64, i64* %3
  %call2_4017cc = call %struct.Memory* @sub_406a60._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4017cc, %struct.Memory* %loadMem2_4017cc)
  store %struct.Memory* %call2_4017cc, %struct.Memory** %MEMORY

  ; Code: movl $0x418f9e, %esi	 RIP: 4017d1	 Bytes: 5
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d1 = call %struct.Memory* @routine_movl__0x418f9e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d1)
  store %struct.Memory* %call_4017d1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4017d6	 Bytes: 2
  %loadMem_4017d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d6)
  store %struct.Memory* %call_4017d6, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4017d8	 Bytes: 4
  %loadMem_4017d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d8 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d8)
  store %struct.Memory* %call_4017d8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4017dc	 Bytes: 3
  %loadMem_4017dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017dc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017dc)
  store %struct.Memory* %call_4017dc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc	 RIP: 4017df	 Bytes: 5
  %loadMem1_4017df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4017df = call %struct.Memory* @routine_callq_._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4017df, i64 21297, i64 5, i64 5)
  store %struct.Memory* %call1_4017df, %struct.Memory** %MEMORY

  %loadMem2_4017df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4017df = load i64, i64* %3
  %call2_4017df = call %struct.Memory* @sub_406b10._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4017df, %struct.Memory* %loadMem2_4017df)
  store %struct.Memory* %call2_4017df, %struct.Memory** %MEMORY

  ; Code: movl $0x418fb5, %esi	 RIP: 4017e4	 Bytes: 5
  %loadMem_4017e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e4 = call %struct.Memory* @routine_movl__0x418fb5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e4)
  store %struct.Memory* %call_4017e4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4017e9	 Bytes: 2
  %loadMem_4017e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e9 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e9)
  store %struct.Memory* %call_4017e9, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4017eb	 Bytes: 4
  %loadMem_4017eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017eb = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017eb)
  store %struct.Memory* %call_4017eb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4017ef	 Bytes: 3
  %loadMem_4017ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ef = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ef)
  store %struct.Memory* %call_4017ef, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc	 RIP: 4017f2	 Bytes: 5
  %loadMem1_4017f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4017f2 = call %struct.Memory* @routine_callq_._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4017f2, i64 21454, i64 5, i64 5)
  store %struct.Memory* %call1_4017f2, %struct.Memory** %MEMORY

  %loadMem2_4017f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4017f2 = load i64, i64* %3
  %call2_4017f2 = call %struct.Memory* @sub_406bc0._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4017f2, %struct.Memory* %loadMem2_4017f2)
  store %struct.Memory* %call2_4017f2, %struct.Memory** %MEMORY

  ; Code: movl $0x418fd1, %esi	 RIP: 4017f7	 Bytes: 5
  %loadMem_4017f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f7 = call %struct.Memory* @routine_movl__0x418fd1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f7)
  store %struct.Memory* %call_4017f7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4017fc	 Bytes: 2
  %loadMem_4017fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fc = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fc)
  store %struct.Memory* %call_4017fc, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4017fe	 Bytes: 4
  %loadMem_4017fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fe = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fe)
  store %struct.Memory* %call_4017fe, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401802	 Bytes: 3
  %loadMem_401802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401802 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401802)
  store %struct.Memory* %call_401802, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc	 RIP: 401805	 Bytes: 5
  %loadMem1_401805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401805 = call %struct.Memory* @routine_callq_._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401805, i64 21611, i64 5, i64 5)
  store %struct.Memory* %call1_401805, %struct.Memory** %MEMORY

  %loadMem2_401805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401805 = load i64, i64* %3
  %call2_401805 = call %struct.Memory* @sub_406c70._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401805, %struct.Memory* %loadMem2_401805)
  store %struct.Memory* %call2_401805, %struct.Memory** %MEMORY

  ; Code: movl $0x418fed, %esi	 RIP: 40180a	 Bytes: 5
  %loadMem_40180a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180a = call %struct.Memory* @routine_movl__0x418fed___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180a)
  store %struct.Memory* %call_40180a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40180f	 Bytes: 2
  %loadMem_40180f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180f)
  store %struct.Memory* %call_40180f, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401811	 Bytes: 4
  %loadMem_401811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401811 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401811)
  store %struct.Memory* %call_401811, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401815	 Bytes: 3
  %loadMem_401815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401815 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401815)
  store %struct.Memory* %call_401815, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc	 RIP: 401818	 Bytes: 5
  %loadMem1_401818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401818 = call %struct.Memory* @routine_callq_._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401818, i64 21768, i64 5, i64 5)
  store %struct.Memory* %call1_401818, %struct.Memory** %MEMORY

  %loadMem2_401818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401818 = load i64, i64* %3
  %call2_401818 = call %struct.Memory* @sub_406d20._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401818, %struct.Memory* %loadMem2_401818)
  store %struct.Memory* %call2_401818, %struct.Memory** %MEMORY

  ; Code: movl $0x419007, %esi	 RIP: 40181d	 Bytes: 5
  %loadMem_40181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181d = call %struct.Memory* @routine_movl__0x419007___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181d)
  store %struct.Memory* %call_40181d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401822	 Bytes: 2
  %loadMem_401822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401822 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401822)
  store %struct.Memory* %call_401822, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401824	 Bytes: 4
  %loadMem_401824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401824 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401824)
  store %struct.Memory* %call_401824, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401828	 Bytes: 3
  %loadMem_401828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401828 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401828)
  store %struct.Memory* %call_401828, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc	 RIP: 40182b	 Bytes: 5
  %loadMem1_40182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40182b = call %struct.Memory* @routine_callq_._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40182b, i64 21925, i64 5, i64 5)
  store %struct.Memory* %call1_40182b, %struct.Memory** %MEMORY

  %loadMem2_40182b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40182b = load i64, i64* %3
  %call2_40182b = call %struct.Memory* @sub_406dd0._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40182b, %struct.Memory* %loadMem2_40182b)
  store %struct.Memory* %call2_40182b, %struct.Memory** %MEMORY

  ; Code: movl $0x41901e, %esi	 RIP: 401830	 Bytes: 5
  %loadMem_401830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401830 = call %struct.Memory* @routine_movl__0x41901e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401830)
  store %struct.Memory* %call_401830, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401835	 Bytes: 2
  %loadMem_401835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401835 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401835)
  store %struct.Memory* %call_401835, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401837	 Bytes: 4
  %loadMem_401837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401837 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401837)
  store %struct.Memory* %call_401837, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40183b	 Bytes: 3
  %loadMem_40183b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183b)
  store %struct.Memory* %call_40183b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc	 RIP: 40183e	 Bytes: 5
  %loadMem1_40183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40183e = call %struct.Memory* @routine_callq_._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40183e, i64 22082, i64 5, i64 5)
  store %struct.Memory* %call1_40183e, %struct.Memory** %MEMORY

  %loadMem2_40183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40183e = load i64, i64* %3
  %call2_40183e = call %struct.Memory* @sub_406e80._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40183e, %struct.Memory* %loadMem2_40183e)
  store %struct.Memory* %call2_40183e, %struct.Memory** %MEMORY

  ; Code: movl $0x419037, %esi	 RIP: 401843	 Bytes: 5
  %loadMem_401843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401843 = call %struct.Memory* @routine_movl__0x419037___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401843)
  store %struct.Memory* %call_401843, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401848	 Bytes: 2
  %loadMem_401848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401848 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401848)
  store %struct.Memory* %call_401848, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40184a	 Bytes: 4
  %loadMem_40184a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184a)
  store %struct.Memory* %call_40184a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40184e	 Bytes: 3
  %loadMem_40184e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184e)
  store %struct.Memory* %call_40184e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc	 RIP: 401851	 Bytes: 5
  %loadMem1_401851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401851 = call %struct.Memory* @routine_callq_._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401851, i64 22239, i64 5, i64 5)
  store %struct.Memory* %call1_401851, %struct.Memory** %MEMORY

  %loadMem2_401851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401851 = load i64, i64* %3
  %call2_401851 = call %struct.Memory* @sub_406f30._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401851, %struct.Memory* %loadMem2_401851)
  store %struct.Memory* %call2_401851, %struct.Memory** %MEMORY

  ; Code: movl $0x419053, %esi	 RIP: 401856	 Bytes: 5
  %loadMem_401856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401856 = call %struct.Memory* @routine_movl__0x419053___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401856)
  store %struct.Memory* %call_401856, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40185b	 Bytes: 2
  %loadMem_40185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185b = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185b)
  store %struct.Memory* %call_40185b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40185d	 Bytes: 4
  %loadMem_40185d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185d)
  store %struct.Memory* %call_40185d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401861	 Bytes: 3
  %loadMem_401861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401861 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401861)
  store %struct.Memory* %call_401861, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc	 RIP: 401864	 Bytes: 5
  %loadMem1_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401864 = call %struct.Memory* @routine_callq_._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401864, i64 22396, i64 5, i64 5)
  store %struct.Memory* %call1_401864, %struct.Memory** %MEMORY

  %loadMem2_401864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401864 = load i64, i64* %3
  %call2_401864 = call %struct.Memory* @sub_406fe0._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401864, %struct.Memory* %loadMem2_401864)
  store %struct.Memory* %call2_401864, %struct.Memory** %MEMORY

  ; Code: movl $0x419073, %esi	 RIP: 401869	 Bytes: 5
  %loadMem_401869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401869 = call %struct.Memory* @routine_movl__0x419073___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401869)
  store %struct.Memory* %call_401869, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40186e	 Bytes: 2
  %loadMem_40186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186e)
  store %struct.Memory* %call_40186e, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401870	 Bytes: 4
  %loadMem_401870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401870 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401870)
  store %struct.Memory* %call_401870, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401874	 Bytes: 3
  %loadMem_401874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401874 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401874)
  store %struct.Memory* %call_401874, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc	 RIP: 401877	 Bytes: 5
  %loadMem1_401877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401877 = call %struct.Memory* @routine_callq_._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401877, i64 22553, i64 5, i64 5)
  store %struct.Memory* %call1_401877, %struct.Memory** %MEMORY

  %loadMem2_401877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401877 = load i64, i64* %3
  %call2_401877 = call %struct.Memory* @sub_407090._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401877, %struct.Memory* %loadMem2_401877)
  store %struct.Memory* %call2_401877, %struct.Memory** %MEMORY

  ; Code: movl $0x419090, %esi	 RIP: 40187c	 Bytes: 5
  %loadMem_40187c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40187c = call %struct.Memory* @routine_movl__0x419090___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40187c)
  store %struct.Memory* %call_40187c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401881	 Bytes: 2
  %loadMem_401881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401881 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401881)
  store %struct.Memory* %call_401881, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401883	 Bytes: 4
  %loadMem_401883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401883 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401883)
  store %struct.Memory* %call_401883, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401887	 Bytes: 3
  %loadMem_401887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401887 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401887)
  store %struct.Memory* %call_401887, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc	 RIP: 40188a	 Bytes: 5
  %loadMem1_40188a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40188a = call %struct.Memory* @routine_callq_._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40188a, i64 22710, i64 5, i64 5)
  store %struct.Memory* %call1_40188a, %struct.Memory** %MEMORY

  %loadMem2_40188a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40188a = load i64, i64* %3
  %call2_40188a = call %struct.Memory* @sub_407140._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40188a, %struct.Memory* %loadMem2_40188a)
  store %struct.Memory* %call2_40188a, %struct.Memory** %MEMORY

  ; Code: movl $0x4190b6, %esi	 RIP: 40188f	 Bytes: 5
  %loadMem_40188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40188f = call %struct.Memory* @routine_movl__0x4190b6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40188f)
  store %struct.Memory* %call_40188f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401894	 Bytes: 2
  %loadMem_401894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401894 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401894)
  store %struct.Memory* %call_401894, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401896	 Bytes: 4
  %loadMem_401896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401896 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401896)
  store %struct.Memory* %call_401896, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40189a	 Bytes: 3
  %loadMem_40189a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40189a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40189a)
  store %struct.Memory* %call_40189a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc	 RIP: 40189d	 Bytes: 5
  %loadMem1_40189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40189d = call %struct.Memory* @routine_callq_._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40189d, i64 22867, i64 5, i64 5)
  store %struct.Memory* %call1_40189d, %struct.Memory** %MEMORY

  %loadMem2_40189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40189d = load i64, i64* %3
  %call2_40189d = call %struct.Memory* @sub_4071f0._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40189d, %struct.Memory* %loadMem2_40189d)
  store %struct.Memory* %call2_40189d, %struct.Memory** %MEMORY

  ; Code: movl $0x4190d9, %esi	 RIP: 4018a2	 Bytes: 5
  %loadMem_4018a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a2 = call %struct.Memory* @routine_movl__0x4190d9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a2)
  store %struct.Memory* %call_4018a2, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4018a7	 Bytes: 2
  %loadMem_4018a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a7 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a7)
  store %struct.Memory* %call_4018a7, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4018a9	 Bytes: 4
  %loadMem_4018a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018a9 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018a9)
  store %struct.Memory* %call_4018a9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4018ad	 Bytes: 3
  %loadMem_4018ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ad = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ad)
  store %struct.Memory* %call_4018ad, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc	 RIP: 4018b0	 Bytes: 5
  %loadMem1_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4018b0 = call %struct.Memory* @routine_callq_._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4018b0, i64 23024, i64 5, i64 5)
  store %struct.Memory* %call1_4018b0, %struct.Memory** %MEMORY

  %loadMem2_4018b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4018b0 = load i64, i64* %3
  %call2_4018b0 = call %struct.Memory* @sub_4072a0._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4018b0, %struct.Memory* %loadMem2_4018b0)
  store %struct.Memory* %call2_4018b0, %struct.Memory** %MEMORY

  ; Code: movl $0x4190f0, %esi	 RIP: 4018b5	 Bytes: 5
  %loadMem_4018b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018b5 = call %struct.Memory* @routine_movl__0x4190f0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018b5)
  store %struct.Memory* %call_4018b5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4018ba	 Bytes: 2
  %loadMem_4018ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ba = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ba)
  store %struct.Memory* %call_4018ba, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4018bc	 Bytes: 4
  %loadMem_4018bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018bc = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018bc)
  store %struct.Memory* %call_4018bc, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4018c0	 Bytes: 3
  %loadMem_4018c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c0)
  store %struct.Memory* %call_4018c0, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc	 RIP: 4018c3	 Bytes: 5
  %loadMem1_4018c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4018c3 = call %struct.Memory* @routine_callq_._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4018c3, i64 23181, i64 5, i64 5)
  store %struct.Memory* %call1_4018c3, %struct.Memory** %MEMORY

  %loadMem2_4018c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4018c3 = load i64, i64* %3
  %call2_4018c3 = call %struct.Memory* @sub_407350._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4018c3, %struct.Memory* %loadMem2_4018c3)
  store %struct.Memory* %call2_4018c3, %struct.Memory** %MEMORY

  ; Code: movl $0x419106, %esi	 RIP: 4018c8	 Bytes: 5
  %loadMem_4018c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018c8 = call %struct.Memory* @routine_movl__0x419106___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018c8)
  store %struct.Memory* %call_4018c8, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4018cd	 Bytes: 2
  %loadMem_4018cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cd = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cd)
  store %struct.Memory* %call_4018cd, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4018cf	 Bytes: 4
  %loadMem_4018cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018cf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018cf)
  store %struct.Memory* %call_4018cf, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4018d3	 Bytes: 3
  %loadMem_4018d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018d3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018d3)
  store %struct.Memory* %call_4018d3, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc	 RIP: 4018d6	 Bytes: 5
  %loadMem1_4018d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4018d6 = call %struct.Memory* @routine_callq_._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4018d6, i64 23338, i64 5, i64 5)
  store %struct.Memory* %call1_4018d6, %struct.Memory** %MEMORY

  %loadMem2_4018d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4018d6 = load i64, i64* %3
  %call2_4018d6 = call %struct.Memory* @sub_407400._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4018d6, %struct.Memory* %loadMem2_4018d6)
  store %struct.Memory* %call2_4018d6, %struct.Memory** %MEMORY

  ; Code: movslq 0x22079e(%rip), %rax	 RIP: 4018db	 Bytes: 7
  %loadMem_4018db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018db = call %struct.Memory* @routine_movslq_0x22079e__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018db)
  store %struct.Memory* %call_4018db, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 4018e2	 Bytes: 7
  %loadMem_4018e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e2 = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e2)
  store %struct.Memory* %call_4018e2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4018e9	 Bytes: 3
  %loadMem_4018e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018e9 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018e9)
  store %struct.Memory* %call_4018e9, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 4018ec	 Bytes: 4
  %loadMem_4018ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018ec = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018ec)
  store %struct.Memory* %call_4018ec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4018f0	 Bytes: 2
  %loadMem_4018f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f0 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f0)
  store %struct.Memory* %call_4018f0, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 4018f2	 Bytes: 4
  %loadMem_4018f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f2 = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f2)
  store %struct.Memory* %call_4018f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 4018f6	 Bytes: 3
  %loadMem_4018f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f6 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f6)
  store %struct.Memory* %call_4018f6, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 4018f9	 Bytes: 3
  %loadMem_4018f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018f9 = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018f9)
  store %struct.Memory* %call_4018f9, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x2207bd(%rip)	 RIP: 4018fc	 Bytes: 7
  %loadMem_4018fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4018fc = call %struct.Memory* @routine_movl__r9d__0x2207bd__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4018fc)
  store %struct.Memory* %call_4018fc, %struct.Memory** %MEMORY

  ; Code: movl $0x41911d, %esi	 RIP: 401903	 Bytes: 5
  %loadMem_401903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401903 = call %struct.Memory* @routine_movl__0x41911d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401903)
  store %struct.Memory* %call_401903, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401908	 Bytes: 2
  %loadMem_401908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401908 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401908)
  store %struct.Memory* %call_401908, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40190a	 Bytes: 4
  %loadMem_40190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190a)
  store %struct.Memory* %call_40190a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40190e	 Bytes: 3
  %loadMem_40190e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40190e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40190e)
  store %struct.Memory* %call_40190e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt19custom_constant_addItEEvPT_iPKc	 RIP: 401911	 Bytes: 5
  %loadMem1_401911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401911 = call %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401911, i64 23455, i64 5, i64 5)
  store %struct.Memory* %call1_401911, %struct.Memory** %MEMORY

  %loadMem2_401911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401911 = load i64, i64* %3
  %call2_401911 = call %struct.Memory* @sub_4074b0._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401911, %struct.Memory* %loadMem2_401911)
  store %struct.Memory* %call2_401911, %struct.Memory** %MEMORY

  ; Code: movl $0x419133, %esi	 RIP: 401916	 Bytes: 5
  %loadMem_401916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401916 = call %struct.Memory* @routine_movl__0x419133___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401916)
  store %struct.Memory* %call_401916, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40191b	 Bytes: 2
  %loadMem_40191b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191b = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191b)
  store %struct.Memory* %call_40191b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40191d	 Bytes: 4
  %loadMem_40191d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40191d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40191d)
  store %struct.Memory* %call_40191d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401921	 Bytes: 3
  %loadMem_401921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401921 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401921)
  store %struct.Memory* %call_401921, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc	 RIP: 401924	 Bytes: 5
  %loadMem1_401924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401924 = call %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401924, i64 23612, i64 5, i64 5)
  store %struct.Memory* %call1_401924, %struct.Memory** %MEMORY

  %loadMem2_401924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401924 = load i64, i64* %3
  %call2_401924 = call %struct.Memory* @sub_407560._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401924, %struct.Memory* %loadMem2_401924)
  store %struct.Memory* %call2_401924, %struct.Memory** %MEMORY

  ; Code: movl $0x419153, %esi	 RIP: 401929	 Bytes: 5
  %loadMem_401929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401929 = call %struct.Memory* @routine_movl__0x419153___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401929)
  store %struct.Memory* %call_401929, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40192e	 Bytes: 2
  %loadMem_40192e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40192e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40192e)
  store %struct.Memory* %call_40192e, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401930	 Bytes: 4
  %loadMem_401930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401930 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401930)
  store %struct.Memory* %call_401930, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401934	 Bytes: 3
  %loadMem_401934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401934 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401934)
  store %struct.Memory* %call_401934, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt19custom_constant_subItEEvPT_iPKc	 RIP: 401937	 Bytes: 5
  %loadMem1_401937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401937 = call %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401937, i64 23769, i64 5, i64 5)
  store %struct.Memory* %call1_401937, %struct.Memory** %MEMORY

  %loadMem2_401937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401937 = load i64, i64* %3
  %call2_401937 = call %struct.Memory* @sub_407610._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401937, %struct.Memory* %loadMem2_401937)
  store %struct.Memory* %call2_401937, %struct.Memory** %MEMORY

  ; Code: movl $0x41916e, %esi	 RIP: 40193c	 Bytes: 5
  %loadMem_40193c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40193c = call %struct.Memory* @routine_movl__0x41916e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40193c)
  store %struct.Memory* %call_40193c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401941	 Bytes: 2
  %loadMem_401941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401941 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401941)
  store %struct.Memory* %call_401941, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401943	 Bytes: 4
  %loadMem_401943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401943 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401943)
  store %struct.Memory* %call_401943, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401947	 Bytes: 3
  %loadMem_401947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401947 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401947)
  store %struct.Memory* %call_401947, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc	 RIP: 40194a	 Bytes: 5
  %loadMem1_40194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40194a = call %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40194a, i64 23926, i64 5, i64 5)
  store %struct.Memory* %call1_40194a, %struct.Memory** %MEMORY

  %loadMem2_40194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40194a = load i64, i64* %3
  %call2_40194a = call %struct.Memory* @sub_4076c0._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40194a, %struct.Memory* %loadMem2_40194a)
  store %struct.Memory* %call2_40194a, %struct.Memory** %MEMORY

  ; Code: movl $0x419193, %esi	 RIP: 40194f	 Bytes: 5
  %loadMem_40194f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40194f = call %struct.Memory* @routine_movl__0x419193___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40194f)
  store %struct.Memory* %call_40194f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401954	 Bytes: 2
  %loadMem_401954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401954 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401954)
  store %struct.Memory* %call_401954, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401956	 Bytes: 4
  %loadMem_401956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401956 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401956)
  store %struct.Memory* %call_401956, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40195a	 Bytes: 3
  %loadMem_40195a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40195a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40195a)
  store %struct.Memory* %call_40195a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc	 RIP: 40195d	 Bytes: 5
  %loadMem1_40195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40195d = call %struct.Memory* @routine_callq_._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40195d, i64 24083, i64 5, i64 5)
  store %struct.Memory* %call1_40195d, %struct.Memory** %MEMORY

  %loadMem2_40195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40195d = load i64, i64* %3
  %call2_40195d = call %struct.Memory* @sub_407770._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40195d, %struct.Memory* %loadMem2_40195d)
  store %struct.Memory* %call2_40195d, %struct.Memory** %MEMORY

  ; Code: movl $0x4191ae, %esi	 RIP: 401962	 Bytes: 5
  %loadMem_401962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401962 = call %struct.Memory* @routine_movl__0x4191ae___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401962)
  store %struct.Memory* %call_401962, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401967	 Bytes: 2
  %loadMem_401967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401967 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401967)
  store %struct.Memory* %call_401967, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401969	 Bytes: 4
  %loadMem_401969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401969 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401969)
  store %struct.Memory* %call_401969, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40196d	 Bytes: 3
  %loadMem_40196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40196d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40196d)
  store %struct.Memory* %call_40196d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc	 RIP: 401970	 Bytes: 5
  %loadMem1_401970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401970 = call %struct.Memory* @routine_callq_._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401970, i64 24240, i64 5, i64 5)
  store %struct.Memory* %call1_401970, %struct.Memory** %MEMORY

  %loadMem2_401970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401970 = load i64, i64* %3
  %call2_401970 = call %struct.Memory* @sub_407820._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401970, %struct.Memory* %loadMem2_401970)
  store %struct.Memory* %call2_401970, %struct.Memory** %MEMORY

  ; Code: movl $0x4191d4, %esi	 RIP: 401975	 Bytes: 5
  %loadMem_401975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401975 = call %struct.Memory* @routine_movl__0x4191d4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401975)
  store %struct.Memory* %call_401975, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40197a	 Bytes: 2
  %loadMem_40197a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197a)
  store %struct.Memory* %call_40197a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40197c	 Bytes: 4
  %loadMem_40197c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40197c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40197c)
  store %struct.Memory* %call_40197c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401980	 Bytes: 3
  %loadMem_401980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401980 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401980)
  store %struct.Memory* %call_401980, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc	 RIP: 401983	 Bytes: 5
  %loadMem1_401983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401983 = call %struct.Memory* @routine_callq_._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401983, i64 24397, i64 5, i64 5)
  store %struct.Memory* %call1_401983, %struct.Memory** %MEMORY

  %loadMem2_401983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401983 = load i64, i64* %3
  %call2_401983 = call %struct.Memory* @sub_4078d0._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401983, %struct.Memory* %loadMem2_401983)
  store %struct.Memory* %call2_401983, %struct.Memory** %MEMORY

  ; Code: movl $0x4191f9, %esi	 RIP: 401988	 Bytes: 5
  %loadMem_401988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401988 = call %struct.Memory* @routine_movl__0x4191f9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401988)
  store %struct.Memory* %call_401988, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40198d	 Bytes: 2
  %loadMem_40198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198d)
  store %struct.Memory* %call_40198d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 40198f	 Bytes: 4
  %loadMem_40198f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40198f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40198f)
  store %struct.Memory* %call_40198f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401993	 Bytes: 3
  %loadMem_401993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401993 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401993)
  store %struct.Memory* %call_401993, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc	 RIP: 401996	 Bytes: 5
  %loadMem1_401996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401996 = call %struct.Memory* @routine_callq_._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401996, i64 24554, i64 5, i64 5)
  store %struct.Memory* %call1_401996, %struct.Memory** %MEMORY

  %loadMem2_401996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401996 = load i64, i64* %3
  %call2_401996 = call %struct.Memory* @sub_407980._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401996, %struct.Memory* %loadMem2_401996)
  store %struct.Memory* %call2_401996, %struct.Memory** %MEMORY

  ; Code: movl $0x419212, %esi	 RIP: 40199b	 Bytes: 5
  %loadMem_40199b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40199b = call %struct.Memory* @routine_movl__0x419212___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40199b)
  store %struct.Memory* %call_40199b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4019a0	 Bytes: 2
  %loadMem_4019a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a0 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a0)
  store %struct.Memory* %call_4019a0, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4019a2	 Bytes: 4
  %loadMem_4019a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a2 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a2)
  store %struct.Memory* %call_4019a2, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4019a6	 Bytes: 3
  %loadMem_4019a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019a6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019a6)
  store %struct.Memory* %call_4019a6, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc	 RIP: 4019a9	 Bytes: 5
  %loadMem1_4019a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4019a9 = call %struct.Memory* @routine_callq_._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4019a9, i64 24711, i64 5, i64 5)
  store %struct.Memory* %call1_4019a9, %struct.Memory** %MEMORY

  %loadMem2_4019a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4019a9 = load i64, i64* %3
  %call2_4019a9 = call %struct.Memory* @sub_407a30._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4019a9, %struct.Memory* %loadMem2_4019a9)
  store %struct.Memory* %call2_4019a9, %struct.Memory** %MEMORY

  ; Code: movl $0x419235, %esi	 RIP: 4019ae	 Bytes: 5
  %loadMem_4019ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ae = call %struct.Memory* @routine_movl__0x419235___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ae)
  store %struct.Memory* %call_4019ae, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4019b3	 Bytes: 2
  %loadMem_4019b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b3 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b3)
  store %struct.Memory* %call_4019b3, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4019b5	 Bytes: 4
  %loadMem_4019b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b5)
  store %struct.Memory* %call_4019b5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4019b9	 Bytes: 3
  %loadMem_4019b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019b9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019b9)
  store %struct.Memory* %call_4019b9, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc	 RIP: 4019bc	 Bytes: 5
  %loadMem1_4019bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4019bc = call %struct.Memory* @routine_callq_._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4019bc, i64 24868, i64 5, i64 5)
  store %struct.Memory* %call1_4019bc, %struct.Memory** %MEMORY

  %loadMem2_4019bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4019bc = load i64, i64* %3
  %call2_4019bc = call %struct.Memory* @sub_407ae0._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4019bc, %struct.Memory* %loadMem2_4019bc)
  store %struct.Memory* %call2_4019bc, %struct.Memory** %MEMORY

  ; Code: movl $0x419258, %esi	 RIP: 4019c1	 Bytes: 5
  %loadMem_4019c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c1 = call %struct.Memory* @routine_movl__0x419258___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c1)
  store %struct.Memory* %call_4019c1, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4019c6	 Bytes: 2
  %loadMem_4019c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c6)
  store %struct.Memory* %call_4019c6, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4019c8	 Bytes: 4
  %loadMem_4019c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019c8 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019c8)
  store %struct.Memory* %call_4019c8, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4019cc	 Bytes: 3
  %loadMem_4019cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019cc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019cc)
  store %struct.Memory* %call_4019cc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc	 RIP: 4019cf	 Bytes: 5
  %loadMem1_4019cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4019cf = call %struct.Memory* @routine_callq_._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4019cf, i64 25025, i64 5, i64 5)
  store %struct.Memory* %call1_4019cf, %struct.Memory** %MEMORY

  %loadMem2_4019cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4019cf = load i64, i64* %3
  %call2_4019cf = call %struct.Memory* @sub_407b90._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4019cf, %struct.Memory* %loadMem2_4019cf)
  store %struct.Memory* %call2_4019cf, %struct.Memory** %MEMORY

  ; Code: movl $0x419279, %esi	 RIP: 4019d4	 Bytes: 5
  %loadMem_4019d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d4 = call %struct.Memory* @routine_movl__0x419279___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d4)
  store %struct.Memory* %call_4019d4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4019d9	 Bytes: 2
  %loadMem_4019d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019d9 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019d9)
  store %struct.Memory* %call_4019d9, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4019db	 Bytes: 4
  %loadMem_4019db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019db = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019db)
  store %struct.Memory* %call_4019db, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4019df	 Bytes: 3
  %loadMem_4019df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019df = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019df)
  store %struct.Memory* %call_4019df, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt19custom_constant_andItEEvPT_iPKc	 RIP: 4019e2	 Bytes: 5
  %loadMem1_4019e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4019e2 = call %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4019e2, i64 25182, i64 5, i64 5)
  store %struct.Memory* %call1_4019e2, %struct.Memory** %MEMORY

  %loadMem2_4019e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4019e2 = load i64, i64* %3
  %call2_4019e2 = call %struct.Memory* @sub_407c40._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4019e2, %struct.Memory* %loadMem2_4019e2)
  store %struct.Memory* %call2_4019e2, %struct.Memory** %MEMORY

  ; Code: movl $0x41928f, %esi	 RIP: 4019e7	 Bytes: 5
  %loadMem_4019e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019e7 = call %struct.Memory* @routine_movl__0x41928f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019e7)
  store %struct.Memory* %call_4019e7, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4019ec	 Bytes: 2
  %loadMem_4019ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ec = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ec)
  store %struct.Memory* %call_4019ec, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 4019ee	 Bytes: 4
  %loadMem_4019ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ee = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ee)
  store %struct.Memory* %call_4019ee, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4019f2	 Bytes: 3
  %loadMem_4019f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019f2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019f2)
  store %struct.Memory* %call_4019f2, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc	 RIP: 4019f5	 Bytes: 5
  %loadMem1_4019f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4019f5 = call %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4019f5, i64 25339, i64 5, i64 5)
  store %struct.Memory* %call1_4019f5, %struct.Memory** %MEMORY

  %loadMem2_4019f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4019f5 = load i64, i64* %3
  %call2_4019f5 = call %struct.Memory* @sub_407cf0._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4019f5, %struct.Memory* %loadMem2_4019f5)
  store %struct.Memory* %call2_4019f5, %struct.Memory** %MEMORY

  ; Code: movl $0x4192ae, %esi	 RIP: 4019fa	 Bytes: 5
  %loadMem_4019fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019fa = call %struct.Memory* @routine_movl__0x4192ae___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019fa)
  store %struct.Memory* %call_4019fa, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4019ff	 Bytes: 2
  %loadMem_4019ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4019ff = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4019ff)
  store %struct.Memory* %call_4019ff, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401a01	 Bytes: 4
  %loadMem_401a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a01 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a01)
  store %struct.Memory* %call_401a01, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401a05	 Bytes: 3
  %loadMem_401a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a05 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a05)
  store %struct.Memory* %call_401a05, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt18custom_constant_orItEEvPT_iPKc	 RIP: 401a08	 Bytes: 5
  %loadMem1_401a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a08 = call %struct.Memory* @routine_callq_._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a08, i64 25496, i64 5, i64 5)
  store %struct.Memory* %call1_401a08, %struct.Memory** %MEMORY

  %loadMem2_401a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a08 = load i64, i64* %3
  %call2_401a08 = call %struct.Memory* @sub_407da0._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401a08, %struct.Memory* %loadMem2_401a08)
  store %struct.Memory* %call2_401a08, %struct.Memory** %MEMORY

  ; Code: movl $0x4192c3, %esi	 RIP: 401a0d	 Bytes: 5
  %loadMem_401a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a0d = call %struct.Memory* @routine_movl__0x4192c3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a0d)
  store %struct.Memory* %call_401a0d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401a12	 Bytes: 2
  %loadMem_401a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a12 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a12)
  store %struct.Memory* %call_401a12, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401a14	 Bytes: 4
  %loadMem_401a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a14 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a14)
  store %struct.Memory* %call_401a14, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401a18	 Bytes: 3
  %loadMem_401a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a18 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a18)
  store %struct.Memory* %call_401a18, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc	 RIP: 401a1b	 Bytes: 5
  %loadMem1_401a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a1b = call %struct.Memory* @routine_callq_._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a1b, i64 25653, i64 5, i64 5)
  store %struct.Memory* %call1_401a1b, %struct.Memory** %MEMORY

  %loadMem2_401a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a1b = load i64, i64* %3
  %call2_401a1b = call %struct.Memory* @sub_407e50._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401a1b, %struct.Memory* %loadMem2_401a1b)
  store %struct.Memory* %call2_401a1b, %struct.Memory** %MEMORY

  ; Code: movl $0x4192e1, %esi	 RIP: 401a20	 Bytes: 5
  %loadMem_401a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a20 = call %struct.Memory* @routine_movl__0x4192e1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a20)
  store %struct.Memory* %call_401a20, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401a25	 Bytes: 2
  %loadMem_401a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a25 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a25)
  store %struct.Memory* %call_401a25, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401a27	 Bytes: 4
  %loadMem_401a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a27 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a27)
  store %struct.Memory* %call_401a27, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401a2b	 Bytes: 3
  %loadMem_401a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a2b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a2b)
  store %struct.Memory* %call_401a2b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc	 RIP: 401a2e	 Bytes: 5
  %loadMem1_401a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a2e = call %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a2e, i64 25810, i64 5, i64 5)
  store %struct.Memory* %call1_401a2e, %struct.Memory** %MEMORY

  %loadMem2_401a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a2e = load i64, i64* %3
  %call2_401a2e = call %struct.Memory* @sub_407f00._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401a2e, %struct.Memory* %loadMem2_401a2e)
  store %struct.Memory* %call2_401a2e, %struct.Memory** %MEMORY

  ; Code: movl $0x4192f7, %esi	 RIP: 401a33	 Bytes: 5
  %loadMem_401a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a33 = call %struct.Memory* @routine_movl__0x4192f7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a33)
  store %struct.Memory* %call_401a33, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401a38	 Bytes: 2
  %loadMem_401a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a38 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a38)
  store %struct.Memory* %call_401a38, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdi	 RIP: 401a3a	 Bytes: 4
  %loadMem_401a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a3a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a3a)
  store %struct.Memory* %call_401a3a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401a3e	 Bytes: 3
  %loadMem_401a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a3e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a3e)
  store %struct.Memory* %call_401a3e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc	 RIP: 401a41	 Bytes: 5
  %loadMem1_401a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a41 = call %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a41, i64 25967, i64 5, i64 5)
  store %struct.Memory* %call1_401a41, %struct.Memory** %MEMORY

  %loadMem2_401a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a41 = load i64, i64* %3
  %call2_401a41 = call %struct.Memory* @sub_407fb0._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401a41, %struct.Memory* %loadMem2_401a41)
  store %struct.Memory* %call2_401a41, %struct.Memory** %MEMORY

  ; Code: movsd 0x22063a(%rip), %xmm0	 RIP: 401a46	 Bytes: 8
  %loadMem_401a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a46 = call %struct.Memory* @routine_movsd_0x22063a__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a46)
  store %struct.Memory* %call_401a46, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %edx	 RIP: 401a4e	 Bytes: 4
  %loadMem_401a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a4e = call %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a4e)
  store %struct.Memory* %call_401a4e, %struct.Memory** %MEMORY

  ; Code: movl $0x6608d0, %esi	 RIP: 401a52	 Bytes: 5
  %loadMem_401a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a52 = call %struct.Memory* @routine_movl__0x6608d0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a52)
  store %struct.Memory* %call_401a52, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 401a57	 Bytes: 2
  %loadMem_401a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a57 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a57)
  store %struct.Memory* %call_401a57, %struct.Memory** %MEMORY

  ; Code: movl $0x6685d0, %esi	 RIP: 401a59	 Bytes: 5
  %loadMem_401a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a59 = call %struct.Memory* @routine_movl__0x6685d0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a59)
  store %struct.Memory* %call_401a59, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 401a5e	 Bytes: 3
  %loadMem_401a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a5e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a5e)
  store %struct.Memory* %call_401a5e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 401a61	 Bytes: 4
  %loadMem_401a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a61 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a61)
  store %struct.Memory* %call_401a61, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPiiEvT_S1_T0_	 RIP: 401a65	 Bytes: 5
  %loadMem1_401a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a65 = call %struct.Memory* @routine_callq_._Z4fillIPiiEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a65, i64 26107, i64 5, i64 5)
  store %struct.Memory* %call1_401a65, %struct.Memory** %MEMORY

  %loadMem2_401a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a65 = load i64, i64* %3
  %call2_401a65 = call %struct.Memory* @sub_408060._Z4fillIPiiEvT_S1_T0_(%struct.State* %0, i64  %loadPC_401a65, %struct.Memory* %loadMem2_401a65)
  store %struct.Memory* %call2_401a65, %struct.Memory** %MEMORY

  ; Code: movl 0x220610(%rip), %edx	 RIP: 401a6a	 Bytes: 6
  %loadMem_401a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a6a = call %struct.Memory* @routine_movl_0x220610__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a6a)
  store %struct.Memory* %call_401a6a, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x22064a(%rip)	 RIP: 401a70	 Bytes: 6
  %loadMem_401a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a70 = call %struct.Memory* @routine_movl__edx__0x22064a__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a70)
  store %struct.Memory* %call_401a70, %struct.Memory** %MEMORY

  ; Code: movl $0x419317, %edx	 RIP: 401a76	 Bytes: 5
  %loadMem_401a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a76 = call %struct.Memory* @routine_movl__0x419317___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a76)
  store %struct.Memory* %call_401a76, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401a7b	 Bytes: 4
  %loadMem_401a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a7b = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a7b)
  store %struct.Memory* %call_401a7b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401a7f	 Bytes: 3
  %loadMem_401a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a7f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a7f)
  store %struct.Memory* %call_401a7f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi10custom_twoIiEEvPT_iPKc	 RIP: 401a82	 Bytes: 5
  %loadMem1_401a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a82 = call %struct.Memory* @routine_callq_._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a82, i64 26142, i64 5, i64 5)
  store %struct.Memory* %call1_401a82, %struct.Memory** %MEMORY

  %loadMem2_401a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a82 = load i64, i64* %3
  %call2_401a82 = call %struct.Memory* @sub_4080a0._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401a82, %struct.Memory* %loadMem2_401a82)
  store %struct.Memory* %call2_401a82, %struct.Memory** %MEMORY

  ; Code: movl $0x419329, %esi	 RIP: 401a87	 Bytes: 5
  %loadMem_401a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a87 = call %struct.Memory* @routine_movl__0x419329___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a87)
  store %struct.Memory* %call_401a87, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401a8c	 Bytes: 2
  %loadMem_401a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8c)
  store %struct.Memory* %call_401a8c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401a8e	 Bytes: 4
  %loadMem_401a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a8e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a8e)
  store %struct.Memory* %call_401a8e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401a92	 Bytes: 3
  %loadMem_401a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a92 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a92)
  store %struct.Memory* %call_401a92, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc	 RIP: 401a95	 Bytes: 5
  %loadMem1_401a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401a95 = call %struct.Memory* @routine_callq_._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401a95, i64 26283, i64 5, i64 5)
  store %struct.Memory* %call1_401a95, %struct.Memory** %MEMORY

  %loadMem2_401a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401a95 = load i64, i64* %3
  %call2_401a95 = call %struct.Memory* @sub_408140._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401a95, %struct.Memory* %loadMem2_401a95)
  store %struct.Memory* %call2_401a95, %struct.Memory** %MEMORY

  ; Code: movl $0x419340, %esi	 RIP: 401a9a	 Bytes: 5
  %loadMem_401a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9a = call %struct.Memory* @routine_movl__0x419340___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9a)
  store %struct.Memory* %call_401a9a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401a9f	 Bytes: 2
  %loadMem_401a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401a9f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401a9f)
  store %struct.Memory* %call_401a9f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401aa1	 Bytes: 4
  %loadMem_401aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa1 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa1)
  store %struct.Memory* %call_401aa1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401aa5	 Bytes: 3
  %loadMem_401aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aa5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aa5)
  store %struct.Memory* %call_401aa5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc	 RIP: 401aa8	 Bytes: 5
  %loadMem1_401aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401aa8 = call %struct.Memory* @routine_callq_._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401aa8, i64 26424, i64 5, i64 5)
  store %struct.Memory* %call1_401aa8, %struct.Memory** %MEMORY

  %loadMem2_401aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401aa8 = load i64, i64* %3
  %call2_401aa8 = call %struct.Memory* @sub_4081e0._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401aa8, %struct.Memory* %loadMem2_401aa8)
  store %struct.Memory* %call2_401aa8, %struct.Memory** %MEMORY

  ; Code: movl $0x41935c, %esi	 RIP: 401aad	 Bytes: 5
  %loadMem_401aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aad = call %struct.Memory* @routine_movl__0x41935c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aad)
  store %struct.Memory* %call_401aad, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ab2	 Bytes: 2
  %loadMem_401ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab2 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab2)
  store %struct.Memory* %call_401ab2, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401ab4	 Bytes: 4
  %loadMem_401ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab4 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab4)
  store %struct.Memory* %call_401ab4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ab8	 Bytes: 3
  %loadMem_401ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ab8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ab8)
  store %struct.Memory* %call_401ab8, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc	 RIP: 401abb	 Bytes: 5
  %loadMem1_401abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401abb = call %struct.Memory* @routine_callq_._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401abb, i64 26565, i64 5, i64 5)
  store %struct.Memory* %call1_401abb, %struct.Memory** %MEMORY

  %loadMem2_401abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401abb = load i64, i64* %3
  %call2_401abb = call %struct.Memory* @sub_408280._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401abb, %struct.Memory* %loadMem2_401abb)
  store %struct.Memory* %call2_401abb, %struct.Memory** %MEMORY

  ; Code: movl $0x419378, %esi	 RIP: 401ac0	 Bytes: 5
  %loadMem_401ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac0 = call %struct.Memory* @routine_movl__0x419378___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac0)
  store %struct.Memory* %call_401ac0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ac5	 Bytes: 2
  %loadMem_401ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac5)
  store %struct.Memory* %call_401ac5, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401ac7	 Bytes: 4
  %loadMem_401ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ac7 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ac7)
  store %struct.Memory* %call_401ac7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401acb	 Bytes: 3
  %loadMem_401acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401acb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401acb)
  store %struct.Memory* %call_401acb, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc	 RIP: 401ace	 Bytes: 5
  %loadMem1_401ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401ace = call %struct.Memory* @routine_callq_._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401ace, i64 26706, i64 5, i64 5)
  store %struct.Memory* %call1_401ace, %struct.Memory** %MEMORY

  %loadMem2_401ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401ace = load i64, i64* %3
  %call2_401ace = call %struct.Memory* @sub_408320._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401ace, %struct.Memory* %loadMem2_401ace)
  store %struct.Memory* %call2_401ace, %struct.Memory** %MEMORY

  ; Code: movl $0x419392, %esi	 RIP: 401ad3	 Bytes: 5
  %loadMem_401ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad3 = call %struct.Memory* @routine_movl__0x419392___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad3)
  store %struct.Memory* %call_401ad3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ad8	 Bytes: 2
  %loadMem_401ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ad8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ad8)
  store %struct.Memory* %call_401ad8, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401ada	 Bytes: 4
  %loadMem_401ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ada = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ada)
  store %struct.Memory* %call_401ada, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ade	 Bytes: 3
  %loadMem_401ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ade = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ade)
  store %struct.Memory* %call_401ade, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc	 RIP: 401ae1	 Bytes: 5
  %loadMem1_401ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401ae1 = call %struct.Memory* @routine_callq_._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401ae1, i64 26847, i64 5, i64 5)
  store %struct.Memory* %call1_401ae1, %struct.Memory** %MEMORY

  %loadMem2_401ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401ae1 = load i64, i64* %3
  %call2_401ae1 = call %struct.Memory* @sub_4083c0._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401ae1, %struct.Memory* %loadMem2_401ae1)
  store %struct.Memory* %call2_401ae1, %struct.Memory** %MEMORY

  ; Code: movl $0x4193a9, %esi	 RIP: 401ae6	 Bytes: 5
  %loadMem_401ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ae6 = call %struct.Memory* @routine_movl__0x4193a9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ae6)
  store %struct.Memory* %call_401ae6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401aeb	 Bytes: 2
  %loadMem_401aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aeb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aeb)
  store %struct.Memory* %call_401aeb, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401aed	 Bytes: 4
  %loadMem_401aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401aed = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401aed)
  store %struct.Memory* %call_401aed, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401af1	 Bytes: 3
  %loadMem_401af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af1)
  store %struct.Memory* %call_401af1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc	 RIP: 401af4	 Bytes: 5
  %loadMem1_401af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401af4 = call %struct.Memory* @routine_callq_._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401af4, i64 26988, i64 5, i64 5)
  store %struct.Memory* %call1_401af4, %struct.Memory** %MEMORY

  %loadMem2_401af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401af4 = load i64, i64* %3
  %call2_401af4 = call %struct.Memory* @sub_408460._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401af4, %struct.Memory* %loadMem2_401af4)
  store %struct.Memory* %call2_401af4, %struct.Memory** %MEMORY

  ; Code: movl $0x4193c2, %esi	 RIP: 401af9	 Bytes: 5
  %loadMem_401af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401af9 = call %struct.Memory* @routine_movl__0x4193c2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401af9)
  store %struct.Memory* %call_401af9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401afe	 Bytes: 2
  %loadMem_401afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401afe = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401afe)
  store %struct.Memory* %call_401afe, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b00	 Bytes: 4
  %loadMem_401b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b00 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b00)
  store %struct.Memory* %call_401b00, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b04	 Bytes: 3
  %loadMem_401b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b04 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b04)
  store %struct.Memory* %call_401b04, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc	 RIP: 401b07	 Bytes: 5
  %loadMem1_401b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b07 = call %struct.Memory* @routine_callq_._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b07, i64 27129, i64 5, i64 5)
  store %struct.Memory* %call1_401b07, %struct.Memory** %MEMORY

  %loadMem2_401b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b07 = load i64, i64* %3
  %call2_401b07 = call %struct.Memory* @sub_408500._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b07, %struct.Memory* %loadMem2_401b07)
  store %struct.Memory* %call2_401b07, %struct.Memory** %MEMORY

  ; Code: movl $0x4193de, %esi	 RIP: 401b0c	 Bytes: 5
  %loadMem_401b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b0c = call %struct.Memory* @routine_movl__0x4193de___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b0c)
  store %struct.Memory* %call_401b0c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b11	 Bytes: 2
  %loadMem_401b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b11 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b11)
  store %struct.Memory* %call_401b11, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b13	 Bytes: 4
  %loadMem_401b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b13 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b13)
  store %struct.Memory* %call_401b13, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b17	 Bytes: 3
  %loadMem_401b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b17 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b17)
  store %struct.Memory* %call_401b17, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc	 RIP: 401b1a	 Bytes: 5
  %loadMem1_401b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b1a = call %struct.Memory* @routine_callq_._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b1a, i64 27270, i64 5, i64 5)
  store %struct.Memory* %call1_401b1a, %struct.Memory** %MEMORY

  %loadMem2_401b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b1a = load i64, i64* %3
  %call2_401b1a = call %struct.Memory* @sub_4085a0._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b1a, %struct.Memory* %loadMem2_401b1a)
  store %struct.Memory* %call2_401b1a, %struct.Memory** %MEMORY

  ; Code: movl $0x4193fe, %esi	 RIP: 401b1f	 Bytes: 5
  %loadMem_401b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b1f = call %struct.Memory* @routine_movl__0x4193fe___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b1f)
  store %struct.Memory* %call_401b1f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b24	 Bytes: 2
  %loadMem_401b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b24 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b24)
  store %struct.Memory* %call_401b24, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b26	 Bytes: 4
  %loadMem_401b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b26 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b26)
  store %struct.Memory* %call_401b26, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b2a	 Bytes: 3
  %loadMem_401b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b2a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b2a)
  store %struct.Memory* %call_401b2a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc	 RIP: 401b2d	 Bytes: 5
  %loadMem1_401b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b2d = call %struct.Memory* @routine_callq_._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b2d, i64 27411, i64 5, i64 5)
  store %struct.Memory* %call1_401b2d, %struct.Memory** %MEMORY

  %loadMem2_401b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b2d = load i64, i64* %3
  %call2_401b2d = call %struct.Memory* @sub_408640._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b2d, %struct.Memory* %loadMem2_401b2d)
  store %struct.Memory* %call2_401b2d, %struct.Memory** %MEMORY

  ; Code: movl $0x41941b, %esi	 RIP: 401b32	 Bytes: 5
  %loadMem_401b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b32 = call %struct.Memory* @routine_movl__0x41941b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b32)
  store %struct.Memory* %call_401b32, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b37	 Bytes: 2
  %loadMem_401b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b37 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b37)
  store %struct.Memory* %call_401b37, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b39	 Bytes: 4
  %loadMem_401b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b39 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b39)
  store %struct.Memory* %call_401b39, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b3d	 Bytes: 3
  %loadMem_401b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b3d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b3d)
  store %struct.Memory* %call_401b3d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc	 RIP: 401b40	 Bytes: 5
  %loadMem1_401b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b40 = call %struct.Memory* @routine_callq_._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b40, i64 27552, i64 5, i64 5)
  store %struct.Memory* %call1_401b40, %struct.Memory** %MEMORY

  %loadMem2_401b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b40 = load i64, i64* %3
  %call2_401b40 = call %struct.Memory* @sub_4086e0._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b40, %struct.Memory* %loadMem2_401b40)
  store %struct.Memory* %call2_401b40, %struct.Memory** %MEMORY

  ; Code: movl $0x419441, %esi	 RIP: 401b45	 Bytes: 5
  %loadMem_401b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b45 = call %struct.Memory* @routine_movl__0x419441___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b45)
  store %struct.Memory* %call_401b45, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b4a	 Bytes: 2
  %loadMem_401b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4a)
  store %struct.Memory* %call_401b4a, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b4c	 Bytes: 4
  %loadMem_401b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b4c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b4c)
  store %struct.Memory* %call_401b4c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b50	 Bytes: 3
  %loadMem_401b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b50 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b50)
  store %struct.Memory* %call_401b50, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc	 RIP: 401b53	 Bytes: 5
  %loadMem1_401b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b53 = call %struct.Memory* @routine_callq_._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b53, i64 27693, i64 5, i64 5)
  store %struct.Memory* %call1_401b53, %struct.Memory** %MEMORY

  %loadMem2_401b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b53 = load i64, i64* %3
  %call2_401b53 = call %struct.Memory* @sub_408780._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b53, %struct.Memory* %loadMem2_401b53)
  store %struct.Memory* %call2_401b53, %struct.Memory** %MEMORY

  ; Code: movl $0x419464, %esi	 RIP: 401b58	 Bytes: 5
  %loadMem_401b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b58 = call %struct.Memory* @routine_movl__0x419464___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b58)
  store %struct.Memory* %call_401b58, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b5d	 Bytes: 2
  %loadMem_401b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5d)
  store %struct.Memory* %call_401b5d, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b5f	 Bytes: 4
  %loadMem_401b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b5f = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b5f)
  store %struct.Memory* %call_401b5f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b63	 Bytes: 3
  %loadMem_401b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b63 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b63)
  store %struct.Memory* %call_401b63, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc	 RIP: 401b66	 Bytes: 5
  %loadMem1_401b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b66 = call %struct.Memory* @routine_callq_._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b66, i64 27834, i64 5, i64 5)
  store %struct.Memory* %call1_401b66, %struct.Memory** %MEMORY

  %loadMem2_401b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b66 = load i64, i64* %3
  %call2_401b66 = call %struct.Memory* @sub_408820._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b66, %struct.Memory* %loadMem2_401b66)
  store %struct.Memory* %call2_401b66, %struct.Memory** %MEMORY

  ; Code: movl $0x41947b, %esi	 RIP: 401b6b	 Bytes: 5
  %loadMem_401b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b6b = call %struct.Memory* @routine_movl__0x41947b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b6b)
  store %struct.Memory* %call_401b6b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b70	 Bytes: 2
  %loadMem_401b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b70 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b70)
  store %struct.Memory* %call_401b70, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b72	 Bytes: 4
  %loadMem_401b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b72 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b72)
  store %struct.Memory* %call_401b72, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b76	 Bytes: 3
  %loadMem_401b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b76 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b76)
  store %struct.Memory* %call_401b76, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc	 RIP: 401b79	 Bytes: 5
  %loadMem1_401b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b79 = call %struct.Memory* @routine_callq_._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b79, i64 27975, i64 5, i64 5)
  store %struct.Memory* %call1_401b79, %struct.Memory** %MEMORY

  %loadMem2_401b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b79 = load i64, i64* %3
  %call2_401b79 = call %struct.Memory* @sub_4088c0._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b79, %struct.Memory* %loadMem2_401b79)
  store %struct.Memory* %call2_401b79, %struct.Memory** %MEMORY

  ; Code: movl $0x419491, %esi	 RIP: 401b7e	 Bytes: 5
  %loadMem_401b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b7e = call %struct.Memory* @routine_movl__0x419491___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b7e)
  store %struct.Memory* %call_401b7e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401b83	 Bytes: 2
  %loadMem_401b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b83 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b83)
  store %struct.Memory* %call_401b83, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401b85	 Bytes: 4
  %loadMem_401b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b85 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b85)
  store %struct.Memory* %call_401b85, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401b89	 Bytes: 3
  %loadMem_401b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b89 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b89)
  store %struct.Memory* %call_401b89, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc	 RIP: 401b8c	 Bytes: 5
  %loadMem1_401b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401b8c = call %struct.Memory* @routine_callq_._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401b8c, i64 28116, i64 5, i64 5)
  store %struct.Memory* %call1_401b8c, %struct.Memory** %MEMORY

  %loadMem2_401b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401b8c = load i64, i64* %3
  %call2_401b8c = call %struct.Memory* @sub_408960._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401b8c, %struct.Memory* %loadMem2_401b8c)
  store %struct.Memory* %call2_401b8c, %struct.Memory** %MEMORY

  ; Code: movslq 0x2204e8(%rip), %rax	 RIP: 401b91	 Bytes: 7
  %loadMem_401b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b91 = call %struct.Memory* @routine_movslq_0x2204e8__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b91)
  store %struct.Memory* %call_401b91, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 401b98	 Bytes: 7
  %loadMem_401b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b98 = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b98)
  store %struct.Memory* %call_401b98, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 401b9f	 Bytes: 3
  %loadMem_401b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401b9f = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401b9f)
  store %struct.Memory* %call_401b9f, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 401ba2	 Bytes: 4
  %loadMem_401ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba2 = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba2)
  store %struct.Memory* %call_401ba2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 401ba6	 Bytes: 2
  %loadMem_401ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba6 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba6)
  store %struct.Memory* %call_401ba6, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 401ba8	 Bytes: 4
  %loadMem_401ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ba8 = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ba8)
  store %struct.Memory* %call_401ba8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 401bac	 Bytes: 3
  %loadMem_401bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bac = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bac)
  store %struct.Memory* %call_401bac, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 401baf	 Bytes: 3
  %loadMem_401baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401baf = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401baf)
  store %struct.Memory* %call_401baf, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x220507(%rip)	 RIP: 401bb2	 Bytes: 7
  %loadMem_401bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb2 = call %struct.Memory* @routine_movl__r9d__0x220507__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb2)
  store %struct.Memory* %call_401bb2, %struct.Memory** %MEMORY

  ; Code: movl $0x4194a8, %esi	 RIP: 401bb9	 Bytes: 5
  %loadMem_401bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bb9 = call %struct.Memory* @routine_movl__0x4194a8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bb9)
  store %struct.Memory* %call_401bb9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401bbe	 Bytes: 2
  %loadMem_401bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bbe = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bbe)
  store %struct.Memory* %call_401bbe, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401bc0	 Bytes: 4
  %loadMem_401bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc0 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc0)
  store %struct.Memory* %call_401bc0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401bc4	 Bytes: 3
  %loadMem_401bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bc4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bc4)
  store %struct.Memory* %call_401bc4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc	 RIP: 401bc7	 Bytes: 5
  %loadMem1_401bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401bc7 = call %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401bc7, i64 28217, i64 5, i64 5)
  store %struct.Memory* %call1_401bc7, %struct.Memory** %MEMORY

  %loadMem2_401bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401bc7 = load i64, i64* %3
  %call2_401bc7 = call %struct.Memory* @sub_408a00._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401bc7, %struct.Memory* %loadMem2_401bc7)
  store %struct.Memory* %call2_401bc7, %struct.Memory** %MEMORY

  ; Code: movl $0x4194be, %esi	 RIP: 401bcc	 Bytes: 5
  %loadMem_401bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bcc = call %struct.Memory* @routine_movl__0x4194be___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bcc)
  store %struct.Memory* %call_401bcc, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401bd1	 Bytes: 2
  %loadMem_401bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd1 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd1)
  store %struct.Memory* %call_401bd1, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401bd3	 Bytes: 4
  %loadMem_401bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd3 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd3)
  store %struct.Memory* %call_401bd3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401bd7	 Bytes: 3
  %loadMem_401bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bd7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bd7)
  store %struct.Memory* %call_401bd7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc	 RIP: 401bda	 Bytes: 5
  %loadMem1_401bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401bda = call %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401bda, i64 28358, i64 5, i64 5)
  store %struct.Memory* %call1_401bda, %struct.Memory** %MEMORY

  %loadMem2_401bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401bda = load i64, i64* %3
  %call2_401bda = call %struct.Memory* @sub_408aa0._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401bda, %struct.Memory* %loadMem2_401bda)
  store %struct.Memory* %call2_401bda, %struct.Memory** %MEMORY

  ; Code: movl $0x4194de, %esi	 RIP: 401bdf	 Bytes: 5
  %loadMem_401bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bdf = call %struct.Memory* @routine_movl__0x4194de___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bdf)
  store %struct.Memory* %call_401bdf, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401be4	 Bytes: 2
  %loadMem_401be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be4 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be4)
  store %struct.Memory* %call_401be4, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401be6	 Bytes: 4
  %loadMem_401be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401be6 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401be6)
  store %struct.Memory* %call_401be6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401bea	 Bytes: 3
  %loadMem_401bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bea = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bea)
  store %struct.Memory* %call_401bea, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc	 RIP: 401bed	 Bytes: 5
  %loadMem1_401bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401bed = call %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401bed, i64 28499, i64 5, i64 5)
  store %struct.Memory* %call1_401bed, %struct.Memory** %MEMORY

  %loadMem2_401bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401bed = load i64, i64* %3
  %call2_401bed = call %struct.Memory* @sub_408b40._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401bed, %struct.Memory* %loadMem2_401bed)
  store %struct.Memory* %call2_401bed, %struct.Memory** %MEMORY

  ; Code: movl $0x4194f9, %esi	 RIP: 401bf2	 Bytes: 5
  %loadMem_401bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf2 = call %struct.Memory* @routine_movl__0x4194f9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf2)
  store %struct.Memory* %call_401bf2, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401bf7	 Bytes: 2
  %loadMem_401bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf7 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf7)
  store %struct.Memory* %call_401bf7, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401bf9	 Bytes: 4
  %loadMem_401bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bf9 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bf9)
  store %struct.Memory* %call_401bf9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401bfd	 Bytes: 3
  %loadMem_401bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401bfd = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401bfd)
  store %struct.Memory* %call_401bfd, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc	 RIP: 401c00	 Bytes: 5
  %loadMem1_401c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c00 = call %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c00, i64 28640, i64 5, i64 5)
  store %struct.Memory* %call1_401c00, %struct.Memory** %MEMORY

  %loadMem2_401c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c00 = load i64, i64* %3
  %call2_401c00 = call %struct.Memory* @sub_408be0._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c00, %struct.Memory* %loadMem2_401c00)
  store %struct.Memory* %call2_401c00, %struct.Memory** %MEMORY

  ; Code: movl $0x41951e, %esi	 RIP: 401c05	 Bytes: 5
  %loadMem_401c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c05 = call %struct.Memory* @routine_movl__0x41951e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c05)
  store %struct.Memory* %call_401c05, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c0a	 Bytes: 2
  %loadMem_401c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0a)
  store %struct.Memory* %call_401c0a, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c0c	 Bytes: 4
  %loadMem_401c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c0c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c0c)
  store %struct.Memory* %call_401c0c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c10	 Bytes: 3
  %loadMem_401c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c10 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c10)
  store %struct.Memory* %call_401c10, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc	 RIP: 401c13	 Bytes: 5
  %loadMem1_401c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c13 = call %struct.Memory* @routine_callq_._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c13, i64 28781, i64 5, i64 5)
  store %struct.Memory* %call1_401c13, %struct.Memory** %MEMORY

  %loadMem2_401c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c13 = load i64, i64* %3
  %call2_401c13 = call %struct.Memory* @sub_408c80._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c13, %struct.Memory* %loadMem2_401c13)
  store %struct.Memory* %call2_401c13, %struct.Memory** %MEMORY

  ; Code: movl $0x419539, %esi	 RIP: 401c18	 Bytes: 5
  %loadMem_401c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c18 = call %struct.Memory* @routine_movl__0x419539___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c18)
  store %struct.Memory* %call_401c18, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c1d	 Bytes: 2
  %loadMem_401c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1d)
  store %struct.Memory* %call_401c1d, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c1f	 Bytes: 4
  %loadMem_401c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1f = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1f)
  store %struct.Memory* %call_401c1f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c23	 Bytes: 3
  %loadMem_401c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c23 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c23)
  store %struct.Memory* %call_401c23, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc	 RIP: 401c26	 Bytes: 5
  %loadMem1_401c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c26 = call %struct.Memory* @routine_callq_._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c26, i64 28922, i64 5, i64 5)
  store %struct.Memory* %call1_401c26, %struct.Memory** %MEMORY

  %loadMem2_401c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c26 = load i64, i64* %3
  %call2_401c26 = call %struct.Memory* @sub_408d20._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c26, %struct.Memory* %loadMem2_401c26)
  store %struct.Memory* %call2_401c26, %struct.Memory** %MEMORY

  ; Code: movl $0x41955f, %esi	 RIP: 401c2b	 Bytes: 5
  %loadMem_401c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2b = call %struct.Memory* @routine_movl__0x41955f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2b)
  store %struct.Memory* %call_401c2b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c30	 Bytes: 2
  %loadMem_401c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c30 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c30)
  store %struct.Memory* %call_401c30, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c32	 Bytes: 4
  %loadMem_401c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c32 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c32)
  store %struct.Memory* %call_401c32, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c36	 Bytes: 3
  %loadMem_401c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c36 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c36)
  store %struct.Memory* %call_401c36, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc	 RIP: 401c39	 Bytes: 5
  %loadMem1_401c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c39 = call %struct.Memory* @routine_callq_._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c39, i64 29063, i64 5, i64 5)
  store %struct.Memory* %call1_401c39, %struct.Memory** %MEMORY

  %loadMem2_401c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c39 = load i64, i64* %3
  %call2_401c39 = call %struct.Memory* @sub_408dc0._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c39, %struct.Memory* %loadMem2_401c39)
  store %struct.Memory* %call2_401c39, %struct.Memory** %MEMORY

  ; Code: movl $0x419584, %esi	 RIP: 401c3e	 Bytes: 5
  %loadMem_401c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3e = call %struct.Memory* @routine_movl__0x419584___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3e)
  store %struct.Memory* %call_401c3e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c43	 Bytes: 2
  %loadMem_401c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c43 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c43)
  store %struct.Memory* %call_401c43, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c45	 Bytes: 4
  %loadMem_401c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c45 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c45)
  store %struct.Memory* %call_401c45, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c49	 Bytes: 3
  %loadMem_401c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c49 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c49)
  store %struct.Memory* %call_401c49, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc	 RIP: 401c4c	 Bytes: 5
  %loadMem1_401c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c4c = call %struct.Memory* @routine_callq_._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c4c, i64 29204, i64 5, i64 5)
  store %struct.Memory* %call1_401c4c, %struct.Memory** %MEMORY

  %loadMem2_401c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c4c = load i64, i64* %3
  %call2_401c4c = call %struct.Memory* @sub_408e60._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c4c, %struct.Memory* %loadMem2_401c4c)
  store %struct.Memory* %call2_401c4c, %struct.Memory** %MEMORY

  ; Code: movl $0x41959d, %esi	 RIP: 401c51	 Bytes: 5
  %loadMem_401c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c51 = call %struct.Memory* @routine_movl__0x41959d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c51)
  store %struct.Memory* %call_401c51, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c56	 Bytes: 2
  %loadMem_401c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c56 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c56)
  store %struct.Memory* %call_401c56, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c58	 Bytes: 4
  %loadMem_401c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c58 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c58)
  store %struct.Memory* %call_401c58, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c5c	 Bytes: 3
  %loadMem_401c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5c)
  store %struct.Memory* %call_401c5c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc	 RIP: 401c5f	 Bytes: 5
  %loadMem1_401c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c5f = call %struct.Memory* @routine_callq_._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c5f, i64 29345, i64 5, i64 5)
  store %struct.Memory* %call1_401c5f, %struct.Memory** %MEMORY

  %loadMem2_401c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c5f = load i64, i64* %3
  %call2_401c5f = call %struct.Memory* @sub_408f00._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c5f, %struct.Memory* %loadMem2_401c5f)
  store %struct.Memory* %call2_401c5f, %struct.Memory** %MEMORY

  ; Code: movl $0x4195c0, %esi	 RIP: 401c64	 Bytes: 5
  %loadMem_401c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c64 = call %struct.Memory* @routine_movl__0x4195c0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c64)
  store %struct.Memory* %call_401c64, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c69	 Bytes: 2
  %loadMem_401c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c69 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c69)
  store %struct.Memory* %call_401c69, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c6b	 Bytes: 4
  %loadMem_401c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6b = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6b)
  store %struct.Memory* %call_401c6b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c6f	 Bytes: 3
  %loadMem_401c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6f)
  store %struct.Memory* %call_401c6f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc	 RIP: 401c72	 Bytes: 5
  %loadMem1_401c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c72 = call %struct.Memory* @routine_callq_._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c72, i64 29486, i64 5, i64 5)
  store %struct.Memory* %call1_401c72, %struct.Memory** %MEMORY

  %loadMem2_401c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c72 = load i64, i64* %3
  %call2_401c72 = call %struct.Memory* @sub_408fa0._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c72, %struct.Memory* %loadMem2_401c72)
  store %struct.Memory* %call2_401c72, %struct.Memory** %MEMORY

  ; Code: movl $0x4195e3, %esi	 RIP: 401c77	 Bytes: 5
  %loadMem_401c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c77 = call %struct.Memory* @routine_movl__0x4195e3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c77)
  store %struct.Memory* %call_401c77, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c7c	 Bytes: 2
  %loadMem_401c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7c)
  store %struct.Memory* %call_401c7c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c7e	 Bytes: 4
  %loadMem_401c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7e)
  store %struct.Memory* %call_401c7e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c82	 Bytes: 3
  %loadMem_401c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c82 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c82)
  store %struct.Memory* %call_401c82, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc	 RIP: 401c85	 Bytes: 5
  %loadMem1_401c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c85 = call %struct.Memory* @routine_callq_._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c85, i64 29627, i64 5, i64 5)
  store %struct.Memory* %call1_401c85, %struct.Memory** %MEMORY

  %loadMem2_401c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c85 = load i64, i64* %3
  %call2_401c85 = call %struct.Memory* @sub_409040._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c85, %struct.Memory* %loadMem2_401c85)
  store %struct.Memory* %call2_401c85, %struct.Memory** %MEMORY

  ; Code: movl $0x419604, %esi	 RIP: 401c8a	 Bytes: 5
  %loadMem_401c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8a = call %struct.Memory* @routine_movl__0x419604___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8a)
  store %struct.Memory* %call_401c8a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401c8f	 Bytes: 2
  %loadMem_401c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8f)
  store %struct.Memory* %call_401c8f, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401c91	 Bytes: 4
  %loadMem_401c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c91 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c91)
  store %struct.Memory* %call_401c91, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401c95	 Bytes: 3
  %loadMem_401c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c95 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c95)
  store %struct.Memory* %call_401c95, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc	 RIP: 401c98	 Bytes: 5
  %loadMem1_401c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401c98 = call %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401c98, i64 29768, i64 5, i64 5)
  store %struct.Memory* %call1_401c98, %struct.Memory** %MEMORY

  %loadMem2_401c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401c98 = load i64, i64* %3
  %call2_401c98 = call %struct.Memory* @sub_4090e0._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401c98, %struct.Memory* %loadMem2_401c98)
  store %struct.Memory* %call2_401c98, %struct.Memory** %MEMORY

  ; Code: movl $0x41961a, %esi	 RIP: 401c9d	 Bytes: 5
  %loadMem_401c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9d = call %struct.Memory* @routine_movl__0x41961a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9d)
  store %struct.Memory* %call_401c9d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ca2	 Bytes: 2
  %loadMem_401ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca2 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca2)
  store %struct.Memory* %call_401ca2, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401ca4	 Bytes: 4
  %loadMem_401ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca4 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca4)
  store %struct.Memory* %call_401ca4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ca8	 Bytes: 3
  %loadMem_401ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca8)
  store %struct.Memory* %call_401ca8, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc	 RIP: 401cab	 Bytes: 5
  %loadMem1_401cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401cab = call %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401cab, i64 29909, i64 5, i64 5)
  store %struct.Memory* %call1_401cab, %struct.Memory** %MEMORY

  %loadMem2_401cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401cab = load i64, i64* %3
  %call2_401cab = call %struct.Memory* @sub_409180._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401cab, %struct.Memory* %loadMem2_401cab)
  store %struct.Memory* %call2_401cab, %struct.Memory** %MEMORY

  ; Code: movl $0x419639, %esi	 RIP: 401cb0	 Bytes: 5
  %loadMem_401cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb0 = call %struct.Memory* @routine_movl__0x419639___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb0)
  store %struct.Memory* %call_401cb0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401cb5	 Bytes: 2
  %loadMem_401cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb5)
  store %struct.Memory* %call_401cb5, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401cb7	 Bytes: 4
  %loadMem_401cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb7 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb7)
  store %struct.Memory* %call_401cb7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401cbb	 Bytes: 3
  %loadMem_401cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbb)
  store %struct.Memory* %call_401cbb, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc	 RIP: 401cbe	 Bytes: 5
  %loadMem1_401cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401cbe = call %struct.Memory* @routine_callq_._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401cbe, i64 30050, i64 5, i64 5)
  store %struct.Memory* %call1_401cbe, %struct.Memory** %MEMORY

  %loadMem2_401cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401cbe = load i64, i64* %3
  %call2_401cbe = call %struct.Memory* @sub_409220._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401cbe, %struct.Memory* %loadMem2_401cbe)
  store %struct.Memory* %call2_401cbe, %struct.Memory** %MEMORY

  ; Code: movl $0x41964e, %esi	 RIP: 401cc3	 Bytes: 5
  %loadMem_401cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc3 = call %struct.Memory* @routine_movl__0x41964e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc3)
  store %struct.Memory* %call_401cc3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401cc8	 Bytes: 2
  %loadMem_401cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc8)
  store %struct.Memory* %call_401cc8, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401cca	 Bytes: 4
  %loadMem_401cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cca = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cca)
  store %struct.Memory* %call_401cca, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401cce	 Bytes: 3
  %loadMem_401cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cce = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cce)
  store %struct.Memory* %call_401cce, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc	 RIP: 401cd1	 Bytes: 5
  %loadMem1_401cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401cd1 = call %struct.Memory* @routine_callq_._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401cd1, i64 30191, i64 5, i64 5)
  store %struct.Memory* %call1_401cd1, %struct.Memory** %MEMORY

  %loadMem2_401cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401cd1 = load i64, i64* %3
  %call2_401cd1 = call %struct.Memory* @sub_4092c0._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401cd1, %struct.Memory* %loadMem2_401cd1)
  store %struct.Memory* %call2_401cd1, %struct.Memory** %MEMORY

  ; Code: movl $0x41966c, %esi	 RIP: 401cd6	 Bytes: 5
  %loadMem_401cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd6 = call %struct.Memory* @routine_movl__0x41966c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd6)
  store %struct.Memory* %call_401cd6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401cdb	 Bytes: 2
  %loadMem_401cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdb)
  store %struct.Memory* %call_401cdb, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401cdd	 Bytes: 4
  %loadMem_401cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cdd = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cdd)
  store %struct.Memory* %call_401cdd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ce1	 Bytes: 3
  %loadMem_401ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce1)
  store %struct.Memory* %call_401ce1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc	 RIP: 401ce4	 Bytes: 5
  %loadMem1_401ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401ce4 = call %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401ce4, i64 30332, i64 5, i64 5)
  store %struct.Memory* %call1_401ce4, %struct.Memory** %MEMORY

  %loadMem2_401ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401ce4 = load i64, i64* %3
  %call2_401ce4 = call %struct.Memory* @sub_409360._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401ce4, %struct.Memory* %loadMem2_401ce4)
  store %struct.Memory* %call2_401ce4, %struct.Memory** %MEMORY

  ; Code: movl $0x419682, %esi	 RIP: 401ce9	 Bytes: 5
  %loadMem_401ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce9 = call %struct.Memory* @routine_movl__0x419682___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce9)
  store %struct.Memory* %call_401ce9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401cee	 Bytes: 2
  %loadMem_401cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cee = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cee)
  store %struct.Memory* %call_401cee, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 401cf0	 Bytes: 4
  %loadMem_401cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf0 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf0)
  store %struct.Memory* %call_401cf0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401cf4	 Bytes: 3
  %loadMem_401cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf4)
  store %struct.Memory* %call_401cf4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc	 RIP: 401cf7	 Bytes: 5
  %loadMem1_401cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401cf7 = call %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401cf7, i64 30473, i64 5, i64 5)
  store %struct.Memory* %call1_401cf7, %struct.Memory** %MEMORY

  %loadMem2_401cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401cf7 = load i64, i64* %3
  %call2_401cf7 = call %struct.Memory* @sub_409400._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401cf7, %struct.Memory* %loadMem2_401cf7)
  store %struct.Memory* %call2_401cf7, %struct.Memory** %MEMORY

  ; Code: cvttsd2si 0x220383(%rip), %rax	 RIP: 401cfc	 Bytes: 9
  %loadMem_401cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfc = call %struct.Memory* @routine_cvttsd2si_0x220383__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfc)
  store %struct.Memory* %call_401cfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 401d05	 Bytes: 2
  %loadMem_401d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d05 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d05)
  store %struct.Memory* %call_401d05, %struct.Memory** %MEMORY

  ; Code: movl $0x658bd0, %r9d	 RIP: 401d07	 Bytes: 6
  %loadMem_401d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d07 = call %struct.Memory* @routine_movl__0x658bd0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d07)
  store %struct.Memory* %call_401d07, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 401d0d	 Bytes: 3
  %loadMem_401d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0d = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0d)
  store %struct.Memory* %call_401d0d, %struct.Memory** %MEMORY

  ; Code: movl $0x6608d0, %r9d	 RIP: 401d10	 Bytes: 6
  %loadMem_401d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d10 = call %struct.Memory* @routine_movl__0x6608d0___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d10)
  store %struct.Memory* %call_401d10, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %ecx	 RIP: 401d16	 Bytes: 3
  %loadMem_401d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d16 = call %struct.Memory* @routine_movl__r9d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d16)
  store %struct.Memory* %call_401d16, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 401d19	 Bytes: 3
  %loadMem_401d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d19 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d19)
  store %struct.Memory* %call_401d19, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x54(%rbp)	 RIP: 401d1c	 Bytes: 3
  %loadMem_401d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1c = call %struct.Memory* @routine_movl__esi__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1c)
  store %struct.Memory* %call_401d1c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 401d1f	 Bytes: 3
  %loadMem_401d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1f = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1f)
  store %struct.Memory* %call_401d1f, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edx	 RIP: 401d22	 Bytes: 3
  %loadMem_401d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d22 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d22)
  store %struct.Memory* %call_401d22, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 401d25	 Bytes: 4
  %loadMem_401d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d25 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d25)
  store %struct.Memory* %call_401d25, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPjjEvT_S1_T0_	 RIP: 401d29	 Bytes: 5
  %loadMem1_401d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d29 = call %struct.Memory* @routine_callq_._Z4fillIPjjEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d29, i64 30583, i64 5, i64 5)
  store %struct.Memory* %call1_401d29, %struct.Memory** %MEMORY

  %loadMem2_401d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d29 = load i64, i64* %3
  %call2_401d29 = call %struct.Memory* @sub_4094a0._Z4fillIPjjEvT_S1_T0_(%struct.State* %0, i64  %loadPC_401d29, %struct.Memory* %loadMem2_401d29)
  store %struct.Memory* %call2_401d29, %struct.Memory** %MEMORY

  ; Code: movl 0x22034c(%rip), %edx	 RIP: 401d2e	 Bytes: 6
  %loadMem_401d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2e = call %struct.Memory* @routine_movl_0x22034c__rip____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2e)
  store %struct.Memory* %call_401d2e, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x220386(%rip)	 RIP: 401d34	 Bytes: 6
  %loadMem_401d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d34 = call %struct.Memory* @routine_movl__edx__0x220386__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d34)
  store %struct.Memory* %call_401d34, %struct.Memory** %MEMORY

  ; Code: movl $0x419316, %edx	 RIP: 401d3a	 Bytes: 5
  %loadMem_401d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3a = call %struct.Memory* @routine_movl__0x419316___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3a)
  store %struct.Memory* %call_401d3a, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401d3f	 Bytes: 4
  %loadMem_401d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3f = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3f)
  store %struct.Memory* %call_401d3f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401d43	 Bytes: 3
  %loadMem_401d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d43 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d43)
  store %struct.Memory* %call_401d43, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj10custom_twoIjEEvPT_iPKc	 RIP: 401d46	 Bytes: 5
  %loadMem1_401d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d46 = call %struct.Memory* @routine_callq_._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d46, i64 30618, i64 5, i64 5)
  store %struct.Memory* %call1_401d46, %struct.Memory** %MEMORY

  %loadMem2_401d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d46 = load i64, i64* %3
  %call2_401d46 = call %struct.Memory* @sub_4094e0._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401d46, %struct.Memory* %loadMem2_401d46)
  store %struct.Memory* %call2_401d46, %struct.Memory** %MEMORY

  ; Code: movl $0x419328, %esi	 RIP: 401d4b	 Bytes: 5
  %loadMem_401d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4b = call %struct.Memory* @routine_movl__0x419328___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4b)
  store %struct.Memory* %call_401d4b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401d50	 Bytes: 2
  %loadMem_401d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d50 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d50)
  store %struct.Memory* %call_401d50, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401d52	 Bytes: 4
  %loadMem_401d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d52 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d52)
  store %struct.Memory* %call_401d52, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401d56	 Bytes: 3
  %loadMem_401d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d56 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d56)
  store %struct.Memory* %call_401d56, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc	 RIP: 401d59	 Bytes: 5
  %loadMem1_401d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d59 = call %struct.Memory* @routine_callq_._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d59, i64 30759, i64 5, i64 5)
  store %struct.Memory* %call1_401d59, %struct.Memory** %MEMORY

  %loadMem2_401d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d59 = load i64, i64* %3
  %call2_401d59 = call %struct.Memory* @sub_409580._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401d59, %struct.Memory* %loadMem2_401d59)
  store %struct.Memory* %call2_401d59, %struct.Memory** %MEMORY

  ; Code: movl $0x41933f, %esi	 RIP: 401d5e	 Bytes: 5
  %loadMem_401d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5e = call %struct.Memory* @routine_movl__0x41933f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5e)
  store %struct.Memory* %call_401d5e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401d63	 Bytes: 2
  %loadMem_401d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d63 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d63)
  store %struct.Memory* %call_401d63, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401d65	 Bytes: 4
  %loadMem_401d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d65 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d65)
  store %struct.Memory* %call_401d65, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401d69	 Bytes: 3
  %loadMem_401d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d69 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d69)
  store %struct.Memory* %call_401d69, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc	 RIP: 401d6c	 Bytes: 5
  %loadMem1_401d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d6c = call %struct.Memory* @routine_callq_._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d6c, i64 30900, i64 5, i64 5)
  store %struct.Memory* %call1_401d6c, %struct.Memory** %MEMORY

  %loadMem2_401d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d6c = load i64, i64* %3
  %call2_401d6c = call %struct.Memory* @sub_409620._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401d6c, %struct.Memory* %loadMem2_401d6c)
  store %struct.Memory* %call2_401d6c, %struct.Memory** %MEMORY

  ; Code: movl $0x41935b, %esi	 RIP: 401d71	 Bytes: 5
  %loadMem_401d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d71 = call %struct.Memory* @routine_movl__0x41935b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d71)
  store %struct.Memory* %call_401d71, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401d76	 Bytes: 2
  %loadMem_401d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d76 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d76)
  store %struct.Memory* %call_401d76, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401d78	 Bytes: 4
  %loadMem_401d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d78 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d78)
  store %struct.Memory* %call_401d78, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401d7c	 Bytes: 3
  %loadMem_401d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7c)
  store %struct.Memory* %call_401d7c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc	 RIP: 401d7f	 Bytes: 5
  %loadMem1_401d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d7f = call %struct.Memory* @routine_callq_._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d7f, i64 31041, i64 5, i64 5)
  store %struct.Memory* %call1_401d7f, %struct.Memory** %MEMORY

  %loadMem2_401d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d7f = load i64, i64* %3
  %call2_401d7f = call %struct.Memory* @sub_4096c0._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401d7f, %struct.Memory* %loadMem2_401d7f)
  store %struct.Memory* %call2_401d7f, %struct.Memory** %MEMORY

  ; Code: movl $0x419377, %esi	 RIP: 401d84	 Bytes: 5
  %loadMem_401d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d84 = call %struct.Memory* @routine_movl__0x419377___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d84)
  store %struct.Memory* %call_401d84, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401d89	 Bytes: 2
  %loadMem_401d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d89 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d89)
  store %struct.Memory* %call_401d89, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401d8b	 Bytes: 4
  %loadMem_401d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8b = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8b)
  store %struct.Memory* %call_401d8b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401d8f	 Bytes: 3
  %loadMem_401d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8f)
  store %struct.Memory* %call_401d8f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc	 RIP: 401d92	 Bytes: 5
  %loadMem1_401d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401d92 = call %struct.Memory* @routine_callq_._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401d92, i64 31182, i64 5, i64 5)
  store %struct.Memory* %call1_401d92, %struct.Memory** %MEMORY

  %loadMem2_401d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d92 = load i64, i64* %3
  %call2_401d92 = call %struct.Memory* @sub_409760._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401d92, %struct.Memory* %loadMem2_401d92)
  store %struct.Memory* %call2_401d92, %struct.Memory** %MEMORY

  ; Code: movl $0x419391, %esi	 RIP: 401d97	 Bytes: 5
  %loadMem_401d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d97 = call %struct.Memory* @routine_movl__0x419391___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d97)
  store %struct.Memory* %call_401d97, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401d9c	 Bytes: 2
  %loadMem_401d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9c)
  store %struct.Memory* %call_401d9c, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401d9e	 Bytes: 4
  %loadMem_401d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9e)
  store %struct.Memory* %call_401d9e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401da2	 Bytes: 3
  %loadMem_401da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da2)
  store %struct.Memory* %call_401da2, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc	 RIP: 401da5	 Bytes: 5
  %loadMem1_401da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401da5 = call %struct.Memory* @routine_callq_._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401da5, i64 31323, i64 5, i64 5)
  store %struct.Memory* %call1_401da5, %struct.Memory** %MEMORY

  %loadMem2_401da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401da5 = load i64, i64* %3
  %call2_401da5 = call %struct.Memory* @sub_409800._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401da5, %struct.Memory* %loadMem2_401da5)
  store %struct.Memory* %call2_401da5, %struct.Memory** %MEMORY

  ; Code: movl $0x4193a8, %esi	 RIP: 401daa	 Bytes: 5
  %loadMem_401daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401daa = call %struct.Memory* @routine_movl__0x4193a8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401daa)
  store %struct.Memory* %call_401daa, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401daf	 Bytes: 2
  %loadMem_401daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401daf = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401daf)
  store %struct.Memory* %call_401daf, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401db1	 Bytes: 4
  %loadMem_401db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db1 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db1)
  store %struct.Memory* %call_401db1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401db5	 Bytes: 3
  %loadMem_401db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db5)
  store %struct.Memory* %call_401db5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc	 RIP: 401db8	 Bytes: 5
  %loadMem1_401db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401db8 = call %struct.Memory* @routine_callq_._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401db8, i64 31464, i64 5, i64 5)
  store %struct.Memory* %call1_401db8, %struct.Memory** %MEMORY

  %loadMem2_401db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401db8 = load i64, i64* %3
  %call2_401db8 = call %struct.Memory* @sub_4098a0._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401db8, %struct.Memory* %loadMem2_401db8)
  store %struct.Memory* %call2_401db8, %struct.Memory** %MEMORY

  ; Code: movl $0x4193c1, %esi	 RIP: 401dbd	 Bytes: 5
  %loadMem_401dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbd = call %struct.Memory* @routine_movl__0x4193c1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbd)
  store %struct.Memory* %call_401dbd, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401dc2	 Bytes: 2
  %loadMem_401dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc2 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc2)
  store %struct.Memory* %call_401dc2, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401dc4	 Bytes: 4
  %loadMem_401dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc4 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc4)
  store %struct.Memory* %call_401dc4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401dc8	 Bytes: 3
  %loadMem_401dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc8)
  store %struct.Memory* %call_401dc8, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc	 RIP: 401dcb	 Bytes: 5
  %loadMem1_401dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401dcb = call %struct.Memory* @routine_callq_._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401dcb, i64 31605, i64 5, i64 5)
  store %struct.Memory* %call1_401dcb, %struct.Memory** %MEMORY

  %loadMem2_401dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401dcb = load i64, i64* %3
  %call2_401dcb = call %struct.Memory* @sub_409940._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401dcb, %struct.Memory* %loadMem2_401dcb)
  store %struct.Memory* %call2_401dcb, %struct.Memory** %MEMORY

  ; Code: movl $0x4193dd, %esi	 RIP: 401dd0	 Bytes: 5
  %loadMem_401dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd0 = call %struct.Memory* @routine_movl__0x4193dd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd0)
  store %struct.Memory* %call_401dd0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401dd5	 Bytes: 2
  %loadMem_401dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd5)
  store %struct.Memory* %call_401dd5, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401dd7	 Bytes: 4
  %loadMem_401dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd7 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd7)
  store %struct.Memory* %call_401dd7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ddb	 Bytes: 3
  %loadMem_401ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ddb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ddb)
  store %struct.Memory* %call_401ddb, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc	 RIP: 401dde	 Bytes: 5
  %loadMem1_401dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401dde = call %struct.Memory* @routine_callq_._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401dde, i64 31746, i64 5, i64 5)
  store %struct.Memory* %call1_401dde, %struct.Memory** %MEMORY

  %loadMem2_401dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401dde = load i64, i64* %3
  %call2_401dde = call %struct.Memory* @sub_4099e0._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401dde, %struct.Memory* %loadMem2_401dde)
  store %struct.Memory* %call2_401dde, %struct.Memory** %MEMORY

  ; Code: movl $0x4193fd, %esi	 RIP: 401de3	 Bytes: 5
  %loadMem_401de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de3 = call %struct.Memory* @routine_movl__0x4193fd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de3)
  store %struct.Memory* %call_401de3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401de8	 Bytes: 2
  %loadMem_401de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de8)
  store %struct.Memory* %call_401de8, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401dea	 Bytes: 4
  %loadMem_401dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dea = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dea)
  store %struct.Memory* %call_401dea, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401dee	 Bytes: 3
  %loadMem_401dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dee = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dee)
  store %struct.Memory* %call_401dee, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc	 RIP: 401df1	 Bytes: 5
  %loadMem1_401df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401df1 = call %struct.Memory* @routine_callq_._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401df1, i64 31887, i64 5, i64 5)
  store %struct.Memory* %call1_401df1, %struct.Memory** %MEMORY

  %loadMem2_401df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401df1 = load i64, i64* %3
  %call2_401df1 = call %struct.Memory* @sub_409a80._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401df1, %struct.Memory* %loadMem2_401df1)
  store %struct.Memory* %call2_401df1, %struct.Memory** %MEMORY

  ; Code: movl $0x41941a, %esi	 RIP: 401df6	 Bytes: 5
  %loadMem_401df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df6 = call %struct.Memory* @routine_movl__0x41941a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df6)
  store %struct.Memory* %call_401df6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401dfb	 Bytes: 2
  %loadMem_401dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfb)
  store %struct.Memory* %call_401dfb, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401dfd	 Bytes: 4
  %loadMem_401dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfd = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfd)
  store %struct.Memory* %call_401dfd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e01	 Bytes: 3
  %loadMem_401e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e01 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e01)
  store %struct.Memory* %call_401e01, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc	 RIP: 401e04	 Bytes: 5
  %loadMem1_401e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e04 = call %struct.Memory* @routine_callq_._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e04, i64 32028, i64 5, i64 5)
  store %struct.Memory* %call1_401e04, %struct.Memory** %MEMORY

  %loadMem2_401e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e04 = load i64, i64* %3
  %call2_401e04 = call %struct.Memory* @sub_409b20._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e04, %struct.Memory* %loadMem2_401e04)
  store %struct.Memory* %call2_401e04, %struct.Memory** %MEMORY

  ; Code: movl $0x419440, %esi	 RIP: 401e09	 Bytes: 5
  %loadMem_401e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e09 = call %struct.Memory* @routine_movl__0x419440___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e09)
  store %struct.Memory* %call_401e09, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401e0e	 Bytes: 2
  %loadMem_401e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0e)
  store %struct.Memory* %call_401e0e, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401e10	 Bytes: 4
  %loadMem_401e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e10 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e10)
  store %struct.Memory* %call_401e10, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e14	 Bytes: 3
  %loadMem_401e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e14 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e14)
  store %struct.Memory* %call_401e14, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc	 RIP: 401e17	 Bytes: 5
  %loadMem1_401e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e17 = call %struct.Memory* @routine_callq_._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e17, i64 32169, i64 5, i64 5)
  store %struct.Memory* %call1_401e17, %struct.Memory** %MEMORY

  %loadMem2_401e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e17 = load i64, i64* %3
  %call2_401e17 = call %struct.Memory* @sub_409bc0._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e17, %struct.Memory* %loadMem2_401e17)
  store %struct.Memory* %call2_401e17, %struct.Memory** %MEMORY

  ; Code: movl $0x419463, %esi	 RIP: 401e1c	 Bytes: 5
  %loadMem_401e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1c = call %struct.Memory* @routine_movl__0x419463___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1c)
  store %struct.Memory* %call_401e1c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401e21	 Bytes: 2
  %loadMem_401e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e21 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e21)
  store %struct.Memory* %call_401e21, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401e23	 Bytes: 4
  %loadMem_401e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e23 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e23)
  store %struct.Memory* %call_401e23, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e27	 Bytes: 3
  %loadMem_401e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e27 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e27)
  store %struct.Memory* %call_401e27, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc	 RIP: 401e2a	 Bytes: 5
  %loadMem1_401e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e2a = call %struct.Memory* @routine_callq_._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e2a, i64 32310, i64 5, i64 5)
  store %struct.Memory* %call1_401e2a, %struct.Memory** %MEMORY

  %loadMem2_401e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e2a = load i64, i64* %3
  %call2_401e2a = call %struct.Memory* @sub_409c60._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e2a, %struct.Memory* %loadMem2_401e2a)
  store %struct.Memory* %call2_401e2a, %struct.Memory** %MEMORY

  ; Code: movl $0x41947a, %esi	 RIP: 401e2f	 Bytes: 5
  %loadMem_401e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2f = call %struct.Memory* @routine_movl__0x41947a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2f)
  store %struct.Memory* %call_401e2f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401e34	 Bytes: 2
  %loadMem_401e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e34 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e34)
  store %struct.Memory* %call_401e34, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401e36	 Bytes: 4
  %loadMem_401e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e36 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e36)
  store %struct.Memory* %call_401e36, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e3a	 Bytes: 3
  %loadMem_401e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3a)
  store %struct.Memory* %call_401e3a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc	 RIP: 401e3d	 Bytes: 5
  %loadMem1_401e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e3d = call %struct.Memory* @routine_callq_._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e3d, i64 32451, i64 5, i64 5)
  store %struct.Memory* %call1_401e3d, %struct.Memory** %MEMORY

  %loadMem2_401e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e3d = load i64, i64* %3
  %call2_401e3d = call %struct.Memory* @sub_409d00._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e3d, %struct.Memory* %loadMem2_401e3d)
  store %struct.Memory* %call2_401e3d, %struct.Memory** %MEMORY

  ; Code: movl $0x419490, %esi	 RIP: 401e42	 Bytes: 5
  %loadMem_401e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e42 = call %struct.Memory* @routine_movl__0x419490___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e42)
  store %struct.Memory* %call_401e42, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401e47	 Bytes: 2
  %loadMem_401e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e47 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e47)
  store %struct.Memory* %call_401e47, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401e49	 Bytes: 4
  %loadMem_401e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e49 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e49)
  store %struct.Memory* %call_401e49, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e4d	 Bytes: 3
  %loadMem_401e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4d)
  store %struct.Memory* %call_401e4d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc	 RIP: 401e50	 Bytes: 5
  %loadMem1_401e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e50 = call %struct.Memory* @routine_callq_._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e50, i64 32592, i64 5, i64 5)
  store %struct.Memory* %call1_401e50, %struct.Memory** %MEMORY

  %loadMem2_401e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e50 = load i64, i64* %3
  %call2_401e50 = call %struct.Memory* @sub_409da0._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e50, %struct.Memory* %loadMem2_401e50)
  store %struct.Memory* %call2_401e50, %struct.Memory** %MEMORY

  ; Code: movslq 0x220224(%rip), %rax	 RIP: 401e55	 Bytes: 7
  %loadMem_401e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e55 = call %struct.Memory* @routine_movslq_0x220224__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e55)
  store %struct.Memory* %call_401e55, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 401e5c	 Bytes: 7
  %loadMem_401e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5c = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5c)
  store %struct.Memory* %call_401e5c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 401e63	 Bytes: 3
  %loadMem_401e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e63 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e63)
  store %struct.Memory* %call_401e63, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 401e66	 Bytes: 4
  %loadMem_401e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e66 = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e66)
  store %struct.Memory* %call_401e66, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 401e6a	 Bytes: 2
  %loadMem_401e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6a = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6a)
  store %struct.Memory* %call_401e6a, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 401e6c	 Bytes: 4
  %loadMem_401e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6c = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6c)
  store %struct.Memory* %call_401e6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 401e70	 Bytes: 3
  %loadMem_401e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e70 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e70)
  store %struct.Memory* %call_401e70, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 401e73	 Bytes: 3
  %loadMem_401e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e73 = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e73)
  store %struct.Memory* %call_401e73, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x220243(%rip)	 RIP: 401e76	 Bytes: 7
  %loadMem_401e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e76 = call %struct.Memory* @routine_movl__r9d__0x220243__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e76)
  store %struct.Memory* %call_401e76, %struct.Memory** %MEMORY

  ; Code: movl $0x4194a7, %esi	 RIP: 401e7d	 Bytes: 5
  %loadMem_401e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7d = call %struct.Memory* @routine_movl__0x4194a7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7d)
  store %struct.Memory* %call_401e7d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401e82	 Bytes: 2
  %loadMem_401e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e82 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e82)
  store %struct.Memory* %call_401e82, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401e84	 Bytes: 4
  %loadMem_401e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e84 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e84)
  store %struct.Memory* %call_401e84, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e88	 Bytes: 3
  %loadMem_401e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e88 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e88)
  store %struct.Memory* %call_401e88, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc	 RIP: 401e8b	 Bytes: 5
  %loadMem1_401e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e8b = call %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e8b, i64 32693, i64 5, i64 5)
  store %struct.Memory* %call1_401e8b, %struct.Memory** %MEMORY

  %loadMem2_401e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e8b = load i64, i64* %3
  %call2_401e8b = call %struct.Memory* @sub_409e40._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e8b, %struct.Memory* %loadMem2_401e8b)
  store %struct.Memory* %call2_401e8b, %struct.Memory** %MEMORY

  ; Code: movl $0x4194bd, %esi	 RIP: 401e90	 Bytes: 5
  %loadMem_401e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e90 = call %struct.Memory* @routine_movl__0x4194bd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e90)
  store %struct.Memory* %call_401e90, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401e95	 Bytes: 2
  %loadMem_401e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e95 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e95)
  store %struct.Memory* %call_401e95, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401e97	 Bytes: 4
  %loadMem_401e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e97 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e97)
  store %struct.Memory* %call_401e97, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401e9b	 Bytes: 3
  %loadMem_401e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9b)
  store %struct.Memory* %call_401e9b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc	 RIP: 401e9e	 Bytes: 5
  %loadMem1_401e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401e9e = call %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401e9e, i64 32834, i64 5, i64 5)
  store %struct.Memory* %call1_401e9e, %struct.Memory** %MEMORY

  %loadMem2_401e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401e9e = load i64, i64* %3
  %call2_401e9e = call %struct.Memory* @sub_409ee0._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401e9e, %struct.Memory* %loadMem2_401e9e)
  store %struct.Memory* %call2_401e9e, %struct.Memory** %MEMORY

  ; Code: movl $0x4194dd, %esi	 RIP: 401ea3	 Bytes: 5
  %loadMem_401ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea3 = call %struct.Memory* @routine_movl__0x4194dd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea3)
  store %struct.Memory* %call_401ea3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ea8	 Bytes: 2
  %loadMem_401ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea8)
  store %struct.Memory* %call_401ea8, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401eaa	 Bytes: 4
  %loadMem_401eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eaa = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eaa)
  store %struct.Memory* %call_401eaa, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401eae	 Bytes: 3
  %loadMem_401eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eae = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eae)
  store %struct.Memory* %call_401eae, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc	 RIP: 401eb1	 Bytes: 5
  %loadMem1_401eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401eb1 = call %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401eb1, i64 32975, i64 5, i64 5)
  store %struct.Memory* %call1_401eb1, %struct.Memory** %MEMORY

  %loadMem2_401eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401eb1 = load i64, i64* %3
  %call2_401eb1 = call %struct.Memory* @sub_409f80._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401eb1, %struct.Memory* %loadMem2_401eb1)
  store %struct.Memory* %call2_401eb1, %struct.Memory** %MEMORY

  ; Code: movl $0x4194f8, %esi	 RIP: 401eb6	 Bytes: 5
  %loadMem_401eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb6 = call %struct.Memory* @routine_movl__0x4194f8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb6)
  store %struct.Memory* %call_401eb6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ebb	 Bytes: 2
  %loadMem_401ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebb)
  store %struct.Memory* %call_401ebb, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401ebd	 Bytes: 4
  %loadMem_401ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebd = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebd)
  store %struct.Memory* %call_401ebd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ec1	 Bytes: 3
  %loadMem_401ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec1)
  store %struct.Memory* %call_401ec1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc	 RIP: 401ec4	 Bytes: 5
  %loadMem1_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401ec4 = call %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401ec4, i64 33116, i64 5, i64 5)
  store %struct.Memory* %call1_401ec4, %struct.Memory** %MEMORY

  %loadMem2_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401ec4 = load i64, i64* %3
  %call2_401ec4 = call %struct.Memory* @sub_40a020._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401ec4, %struct.Memory* %loadMem2_401ec4)
  store %struct.Memory* %call2_401ec4, %struct.Memory** %MEMORY

  ; Code: movl $0x41951d, %esi	 RIP: 401ec9	 Bytes: 5
  %loadMem_401ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec9 = call %struct.Memory* @routine_movl__0x41951d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec9)
  store %struct.Memory* %call_401ec9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ece	 Bytes: 2
  %loadMem_401ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ece = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ece)
  store %struct.Memory* %call_401ece, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401ed0	 Bytes: 4
  %loadMem_401ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed0 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed0)
  store %struct.Memory* %call_401ed0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ed4	 Bytes: 3
  %loadMem_401ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed4)
  store %struct.Memory* %call_401ed4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc	 RIP: 401ed7	 Bytes: 5
  %loadMem1_401ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401ed7 = call %struct.Memory* @routine_callq_._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401ed7, i64 33257, i64 5, i64 5)
  store %struct.Memory* %call1_401ed7, %struct.Memory** %MEMORY

  %loadMem2_401ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401ed7 = load i64, i64* %3
  %call2_401ed7 = call %struct.Memory* @sub_40a0c0._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401ed7, %struct.Memory* %loadMem2_401ed7)
  store %struct.Memory* %call2_401ed7, %struct.Memory** %MEMORY

  ; Code: movl $0x419538, %esi	 RIP: 401edc	 Bytes: 5
  %loadMem_401edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401edc = call %struct.Memory* @routine_movl__0x419538___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401edc)
  store %struct.Memory* %call_401edc, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ee1	 Bytes: 2
  %loadMem_401ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee1 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee1)
  store %struct.Memory* %call_401ee1, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401ee3	 Bytes: 4
  %loadMem_401ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee3 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee3)
  store %struct.Memory* %call_401ee3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401ee7	 Bytes: 3
  %loadMem_401ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee7)
  store %struct.Memory* %call_401ee7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc	 RIP: 401eea	 Bytes: 5
  %loadMem1_401eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401eea = call %struct.Memory* @routine_callq_._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401eea, i64 33398, i64 5, i64 5)
  store %struct.Memory* %call1_401eea, %struct.Memory** %MEMORY

  %loadMem2_401eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401eea = load i64, i64* %3
  %call2_401eea = call %struct.Memory* @sub_40a160._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401eea, %struct.Memory* %loadMem2_401eea)
  store %struct.Memory* %call2_401eea, %struct.Memory** %MEMORY

  ; Code: movl $0x41955e, %esi	 RIP: 401eef	 Bytes: 5
  %loadMem_401eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eef = call %struct.Memory* @routine_movl__0x41955e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eef)
  store %struct.Memory* %call_401eef, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401ef4	 Bytes: 2
  %loadMem_401ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef4 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef4)
  store %struct.Memory* %call_401ef4, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401ef6	 Bytes: 4
  %loadMem_401ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef6 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef6)
  store %struct.Memory* %call_401ef6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401efa	 Bytes: 3
  %loadMem_401efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efa = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efa)
  store %struct.Memory* %call_401efa, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc	 RIP: 401efd	 Bytes: 5
  %loadMem1_401efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401efd = call %struct.Memory* @routine_callq_._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401efd, i64 33539, i64 5, i64 5)
  store %struct.Memory* %call1_401efd, %struct.Memory** %MEMORY

  %loadMem2_401efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401efd = load i64, i64* %3
  %call2_401efd = call %struct.Memory* @sub_40a200._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401efd, %struct.Memory* %loadMem2_401efd)
  store %struct.Memory* %call2_401efd, %struct.Memory** %MEMORY

  ; Code: movl $0x419583, %esi	 RIP: 401f02	 Bytes: 5
  %loadMem_401f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f02 = call %struct.Memory* @routine_movl__0x419583___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f02)
  store %struct.Memory* %call_401f02, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f07	 Bytes: 2
  %loadMem_401f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f07 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f07)
  store %struct.Memory* %call_401f07, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f09	 Bytes: 4
  %loadMem_401f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f09 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f09)
  store %struct.Memory* %call_401f09, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f0d	 Bytes: 3
  %loadMem_401f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f0d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f0d)
  store %struct.Memory* %call_401f0d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc	 RIP: 401f10	 Bytes: 5
  %loadMem1_401f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f10 = call %struct.Memory* @routine_callq_._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f10, i64 33680, i64 5, i64 5)
  store %struct.Memory* %call1_401f10, %struct.Memory** %MEMORY

  %loadMem2_401f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f10 = load i64, i64* %3
  %call2_401f10 = call %struct.Memory* @sub_40a2a0._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f10, %struct.Memory* %loadMem2_401f10)
  store %struct.Memory* %call2_401f10, %struct.Memory** %MEMORY

  ; Code: movl $0x41959c, %esi	 RIP: 401f15	 Bytes: 5
  %loadMem_401f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f15 = call %struct.Memory* @routine_movl__0x41959c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f15)
  store %struct.Memory* %call_401f15, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f1a	 Bytes: 2
  %loadMem_401f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1a)
  store %struct.Memory* %call_401f1a, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f1c	 Bytes: 4
  %loadMem_401f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1c = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1c)
  store %struct.Memory* %call_401f1c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f20	 Bytes: 3
  %loadMem_401f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f20 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f20)
  store %struct.Memory* %call_401f20, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc	 RIP: 401f23	 Bytes: 5
  %loadMem1_401f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f23 = call %struct.Memory* @routine_callq_._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f23, i64 33821, i64 5, i64 5)
  store %struct.Memory* %call1_401f23, %struct.Memory** %MEMORY

  %loadMem2_401f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f23 = load i64, i64* %3
  %call2_401f23 = call %struct.Memory* @sub_40a340._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f23, %struct.Memory* %loadMem2_401f23)
  store %struct.Memory* %call2_401f23, %struct.Memory** %MEMORY

  ; Code: movl $0x4195bf, %esi	 RIP: 401f28	 Bytes: 5
  %loadMem_401f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f28 = call %struct.Memory* @routine_movl__0x4195bf___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f28)
  store %struct.Memory* %call_401f28, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f2d	 Bytes: 2
  %loadMem_401f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2d)
  store %struct.Memory* %call_401f2d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f2f	 Bytes: 4
  %loadMem_401f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2f = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2f)
  store %struct.Memory* %call_401f2f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f33	 Bytes: 3
  %loadMem_401f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f33 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f33)
  store %struct.Memory* %call_401f33, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc	 RIP: 401f36	 Bytes: 5
  %loadMem1_401f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f36 = call %struct.Memory* @routine_callq_._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f36, i64 33962, i64 5, i64 5)
  store %struct.Memory* %call1_401f36, %struct.Memory** %MEMORY

  %loadMem2_401f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f36 = load i64, i64* %3
  %call2_401f36 = call %struct.Memory* @sub_40a3e0._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f36, %struct.Memory* %loadMem2_401f36)
  store %struct.Memory* %call2_401f36, %struct.Memory** %MEMORY

  ; Code: movl $0x4195e2, %esi	 RIP: 401f3b	 Bytes: 5
  %loadMem_401f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3b = call %struct.Memory* @routine_movl__0x4195e2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3b)
  store %struct.Memory* %call_401f3b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f40	 Bytes: 2
  %loadMem_401f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f40 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f40)
  store %struct.Memory* %call_401f40, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f42	 Bytes: 4
  %loadMem_401f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f42 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f42)
  store %struct.Memory* %call_401f42, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f46	 Bytes: 3
  %loadMem_401f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f46 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f46)
  store %struct.Memory* %call_401f46, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc	 RIP: 401f49	 Bytes: 5
  %loadMem1_401f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f49 = call %struct.Memory* @routine_callq_._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f49, i64 34103, i64 5, i64 5)
  store %struct.Memory* %call1_401f49, %struct.Memory** %MEMORY

  %loadMem2_401f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f49 = load i64, i64* %3
  %call2_401f49 = call %struct.Memory* @sub_40a480._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f49, %struct.Memory* %loadMem2_401f49)
  store %struct.Memory* %call2_401f49, %struct.Memory** %MEMORY

  ; Code: movl $0x419603, %esi	 RIP: 401f4e	 Bytes: 5
  %loadMem_401f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4e = call %struct.Memory* @routine_movl__0x419603___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4e)
  store %struct.Memory* %call_401f4e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f53	 Bytes: 2
  %loadMem_401f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f53 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f53)
  store %struct.Memory* %call_401f53, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f55	 Bytes: 4
  %loadMem_401f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f55 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f55)
  store %struct.Memory* %call_401f55, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f59	 Bytes: 3
  %loadMem_401f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f59 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f59)
  store %struct.Memory* %call_401f59, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc	 RIP: 401f5c	 Bytes: 5
  %loadMem1_401f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f5c = call %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f5c, i64 34244, i64 5, i64 5)
  store %struct.Memory* %call1_401f5c, %struct.Memory** %MEMORY

  %loadMem2_401f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f5c = load i64, i64* %3
  %call2_401f5c = call %struct.Memory* @sub_40a520._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f5c, %struct.Memory* %loadMem2_401f5c)
  store %struct.Memory* %call2_401f5c, %struct.Memory** %MEMORY

  ; Code: movl $0x419619, %esi	 RIP: 401f61	 Bytes: 5
  %loadMem_401f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f61 = call %struct.Memory* @routine_movl__0x419619___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f61)
  store %struct.Memory* %call_401f61, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f66	 Bytes: 2
  %loadMem_401f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f66 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f66)
  store %struct.Memory* %call_401f66, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f68	 Bytes: 4
  %loadMem_401f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f68 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f68)
  store %struct.Memory* %call_401f68, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f6c	 Bytes: 3
  %loadMem_401f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6c)
  store %struct.Memory* %call_401f6c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc	 RIP: 401f6f	 Bytes: 5
  %loadMem1_401f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f6f = call %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f6f, i64 34385, i64 5, i64 5)
  store %struct.Memory* %call1_401f6f, %struct.Memory** %MEMORY

  %loadMem2_401f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f6f = load i64, i64* %3
  %call2_401f6f = call %struct.Memory* @sub_40a5c0._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f6f, %struct.Memory* %loadMem2_401f6f)
  store %struct.Memory* %call2_401f6f, %struct.Memory** %MEMORY

  ; Code: movl $0x419638, %esi	 RIP: 401f74	 Bytes: 5
  %loadMem_401f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f74 = call %struct.Memory* @routine_movl__0x419638___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f74)
  store %struct.Memory* %call_401f74, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f79	 Bytes: 2
  %loadMem_401f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f79 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f79)
  store %struct.Memory* %call_401f79, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f7b	 Bytes: 4
  %loadMem_401f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7b = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7b)
  store %struct.Memory* %call_401f7b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f7f	 Bytes: 3
  %loadMem_401f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7f)
  store %struct.Memory* %call_401f7f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc	 RIP: 401f82	 Bytes: 5
  %loadMem1_401f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f82 = call %struct.Memory* @routine_callq_._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f82, i64 34526, i64 5, i64 5)
  store %struct.Memory* %call1_401f82, %struct.Memory** %MEMORY

  %loadMem2_401f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f82 = load i64, i64* %3
  %call2_401f82 = call %struct.Memory* @sub_40a660._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f82, %struct.Memory* %loadMem2_401f82)
  store %struct.Memory* %call2_401f82, %struct.Memory** %MEMORY

  ; Code: movl $0x41964d, %esi	 RIP: 401f87	 Bytes: 5
  %loadMem_401f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f87 = call %struct.Memory* @routine_movl__0x41964d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f87)
  store %struct.Memory* %call_401f87, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f8c	 Bytes: 2
  %loadMem_401f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8c)
  store %struct.Memory* %call_401f8c, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401f8e	 Bytes: 4
  %loadMem_401f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8e)
  store %struct.Memory* %call_401f8e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401f92	 Bytes: 3
  %loadMem_401f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f92 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f92)
  store %struct.Memory* %call_401f92, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc	 RIP: 401f95	 Bytes: 5
  %loadMem1_401f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401f95 = call %struct.Memory* @routine_callq_._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401f95, i64 34667, i64 5, i64 5)
  store %struct.Memory* %call1_401f95, %struct.Memory** %MEMORY

  %loadMem2_401f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401f95 = load i64, i64* %3
  %call2_401f95 = call %struct.Memory* @sub_40a700._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401f95, %struct.Memory* %loadMem2_401f95)
  store %struct.Memory* %call2_401f95, %struct.Memory** %MEMORY

  ; Code: movl $0x41966b, %esi	 RIP: 401f9a	 Bytes: 5
  %loadMem_401f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9a = call %struct.Memory* @routine_movl__0x41966b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9a)
  store %struct.Memory* %call_401f9a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401f9f	 Bytes: 2
  %loadMem_401f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9f)
  store %struct.Memory* %call_401f9f, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401fa1	 Bytes: 4
  %loadMem_401fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa1 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa1)
  store %struct.Memory* %call_401fa1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401fa5	 Bytes: 3
  %loadMem_401fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa5)
  store %struct.Memory* %call_401fa5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc	 RIP: 401fa8	 Bytes: 5
  %loadMem1_401fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401fa8 = call %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401fa8, i64 34808, i64 5, i64 5)
  store %struct.Memory* %call1_401fa8, %struct.Memory** %MEMORY

  %loadMem2_401fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401fa8 = load i64, i64* %3
  %call2_401fa8 = call %struct.Memory* @sub_40a7a0._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401fa8, %struct.Memory* %loadMem2_401fa8)
  store %struct.Memory* %call2_401fa8, %struct.Memory** %MEMORY

  ; Code: movl $0x419681, %esi	 RIP: 401fad	 Bytes: 5
  %loadMem_401fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fad = call %struct.Memory* @routine_movl__0x419681___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fad)
  store %struct.Memory* %call_401fad, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 401fb2	 Bytes: 2
  %loadMem_401fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb2 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb2)
  store %struct.Memory* %call_401fb2, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rdi	 RIP: 401fb4	 Bytes: 4
  %loadMem_401fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb4 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb4)
  store %struct.Memory* %call_401fb4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 401fb8	 Bytes: 3
  %loadMem_401fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb8)
  store %struct.Memory* %call_401fb8, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc	 RIP: 401fbb	 Bytes: 5
  %loadMem1_401fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401fbb = call %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401fbb, i64 34949, i64 5, i64 5)
  store %struct.Memory* %call1_401fbb, %struct.Memory** %MEMORY

  %loadMem2_401fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401fbb = load i64, i64* %3
  %call2_401fbb = call %struct.Memory* @sub_40a840._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* %0, i64  %loadPC_401fbb, %struct.Memory* %loadMem2_401fbb)
  store %struct.Memory* %call2_401fbb, %struct.Memory** %MEMORY

  ; Code: movsd 0x2200c0(%rip), %xmm0	 RIP: 401fc0	 Bytes: 8
  %loadMem_401fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc0 = call %struct.Memory* @routine_movsd_0x2200c0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc0)
  store %struct.Memory* %call_401fc0, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rdx	 RIP: 401fc8	 Bytes: 5
  %loadMem_401fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc8 = call %struct.Memory* @routine_cvttsd2si__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc8)
  store %struct.Memory* %call_401fc8, %struct.Memory** %MEMORY

  ; Code: movl $0x6491d0, %esi	 RIP: 401fcd	 Bytes: 5
  %loadMem_401fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcd = call %struct.Memory* @routine_movl__0x6491d0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcd)
  store %struct.Memory* %call_401fcd, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 401fd2	 Bytes: 2
  %loadMem_401fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd2 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd2)
  store %struct.Memory* %call_401fd2, %struct.Memory** %MEMORY

  ; Code: movl $0x658bd0, %esi	 RIP: 401fd4	 Bytes: 5
  %loadMem_401fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd4 = call %struct.Memory* @routine_movl__0x658bd0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd4)
  store %struct.Memory* %call_401fd4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 401fd9	 Bytes: 3
  %loadMem_401fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd9)
  store %struct.Memory* %call_401fd9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 401fdc	 Bytes: 4
  %loadMem_401fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdc = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdc)
  store %struct.Memory* %call_401fdc, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPllEvT_S1_T0_	 RIP: 401fe0	 Bytes: 5
  %loadMem1_401fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401fe0 = call %struct.Memory* @routine_callq_._Z4fillIPllEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401fe0, i64 35072, i64 5, i64 5)
  store %struct.Memory* %call1_401fe0, %struct.Memory** %MEMORY

  %loadMem2_401fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401fe0 = load i64, i64* %3
  %call2_401fe0 = call %struct.Memory* @sub_40a8e0._Z4fillIPllEvT_S1_T0_(%struct.State* %0, i64  %loadPC_401fe0, %struct.Memory* %loadMem2_401fe0)
  store %struct.Memory* %call2_401fe0, %struct.Memory** %MEMORY

  ; Code: movl 0x220094(%rip), %r9d	 RIP: 401fe5	 Bytes: 7
  %loadMem_401fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe5 = call %struct.Memory* @routine_movl_0x220094__rip____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe5)
  store %struct.Memory* %call_401fe5, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x2200cd(%rip)	 RIP: 401fec	 Bytes: 7
  %loadMem_401fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fec = call %struct.Memory* @routine_movl__r9d__0x2200cd__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fec)
  store %struct.Memory* %call_401fec, %struct.Memory** %MEMORY

  ; Code: movl $0x4196a1, %r9d	 RIP: 401ff3	 Bytes: 6
  %loadMem_401ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff3 = call %struct.Memory* @routine_movl__0x4196a1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff3)
  store %struct.Memory* %call_401ff3, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edx	 RIP: 401ff9	 Bytes: 3
  %loadMem_401ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff9 = call %struct.Memory* @routine_movl__r9d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff9)
  store %struct.Memory* %call_401ff9, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 401ffc	 Bytes: 4
  %loadMem_401ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffc = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffc)
  store %struct.Memory* %call_401ffc, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402000	 Bytes: 3
  %loadMem_402000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402000 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402000)
  store %struct.Memory* %call_402000, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl10custom_twoIlEEvPT_iPKc	 RIP: 402003	 Bytes: 5
  %loadMem1_402003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402003 = call %struct.Memory* @routine_callq_._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402003, i64 35101, i64 5, i64 5)
  store %struct.Memory* %call1_402003, %struct.Memory** %MEMORY

  %loadMem2_402003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402003 = load i64, i64* %3
  %call2_402003 = call %struct.Memory* @sub_40a920._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402003, %struct.Memory* %loadMem2_402003)
  store %struct.Memory* %call2_402003, %struct.Memory** %MEMORY

  ; Code: movl $0x4196b3, %esi	 RIP: 402008	 Bytes: 5
  %loadMem_402008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402008 = call %struct.Memory* @routine_movl__0x4196b3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402008)
  store %struct.Memory* %call_402008, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40200d	 Bytes: 2
  %loadMem_40200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200d)
  store %struct.Memory* %call_40200d, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40200f	 Bytes: 4
  %loadMem_40200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200f = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200f)
  store %struct.Memory* %call_40200f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402013	 Bytes: 3
  %loadMem_402013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402013 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402013)
  store %struct.Memory* %call_402013, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc	 RIP: 402016	 Bytes: 5
  %loadMem1_402016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402016 = call %struct.Memory* @routine_callq_._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402016, i64 35242, i64 5, i64 5)
  store %struct.Memory* %call1_402016, %struct.Memory** %MEMORY

  %loadMem2_402016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402016 = load i64, i64* %3
  %call2_402016 = call %struct.Memory* @sub_40a9c0._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402016, %struct.Memory* %loadMem2_402016)
  store %struct.Memory* %call2_402016, %struct.Memory** %MEMORY

  ; Code: movl $0x4196ca, %esi	 RIP: 40201b	 Bytes: 5
  %loadMem_40201b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201b = call %struct.Memory* @routine_movl__0x4196ca___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201b)
  store %struct.Memory* %call_40201b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402020	 Bytes: 2
  %loadMem_402020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402020 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402020)
  store %struct.Memory* %call_402020, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402022	 Bytes: 4
  %loadMem_402022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402022 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402022)
  store %struct.Memory* %call_402022, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402026	 Bytes: 3
  %loadMem_402026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402026 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402026)
  store %struct.Memory* %call_402026, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc	 RIP: 402029	 Bytes: 5
  %loadMem1_402029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402029 = call %struct.Memory* @routine_callq_._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402029, i64 35383, i64 5, i64 5)
  store %struct.Memory* %call1_402029, %struct.Memory** %MEMORY

  %loadMem2_402029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402029 = load i64, i64* %3
  %call2_402029 = call %struct.Memory* @sub_40aa60._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402029, %struct.Memory* %loadMem2_402029)
  store %struct.Memory* %call2_402029, %struct.Memory** %MEMORY

  ; Code: movl $0x4196e6, %esi	 RIP: 40202e	 Bytes: 5
  %loadMem_40202e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202e = call %struct.Memory* @routine_movl__0x4196e6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202e)
  store %struct.Memory* %call_40202e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402033	 Bytes: 2
  %loadMem_402033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402033 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402033)
  store %struct.Memory* %call_402033, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402035	 Bytes: 4
  %loadMem_402035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402035 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402035)
  store %struct.Memory* %call_402035, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402039	 Bytes: 3
  %loadMem_402039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402039 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402039)
  store %struct.Memory* %call_402039, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc	 RIP: 40203c	 Bytes: 5
  %loadMem1_40203c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40203c = call %struct.Memory* @routine_callq_._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40203c, i64 35524, i64 5, i64 5)
  store %struct.Memory* %call1_40203c, %struct.Memory** %MEMORY

  %loadMem2_40203c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40203c = load i64, i64* %3
  %call2_40203c = call %struct.Memory* @sub_40ab00._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40203c, %struct.Memory* %loadMem2_40203c)
  store %struct.Memory* %call2_40203c, %struct.Memory** %MEMORY

  ; Code: movl $0x419702, %esi	 RIP: 402041	 Bytes: 5
  %loadMem_402041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402041 = call %struct.Memory* @routine_movl__0x419702___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402041)
  store %struct.Memory* %call_402041, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402046	 Bytes: 2
  %loadMem_402046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402046 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402046)
  store %struct.Memory* %call_402046, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402048	 Bytes: 4
  %loadMem_402048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402048 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402048)
  store %struct.Memory* %call_402048, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40204c	 Bytes: 3
  %loadMem_40204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204c)
  store %struct.Memory* %call_40204c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc	 RIP: 40204f	 Bytes: 5
  %loadMem1_40204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40204f = call %struct.Memory* @routine_callq_._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40204f, i64 35665, i64 5, i64 5)
  store %struct.Memory* %call1_40204f, %struct.Memory** %MEMORY

  %loadMem2_40204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40204f = load i64, i64* %3
  %call2_40204f = call %struct.Memory* @sub_40aba0._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40204f, %struct.Memory* %loadMem2_40204f)
  store %struct.Memory* %call2_40204f, %struct.Memory** %MEMORY

  ; Code: movl $0x41971c, %esi	 RIP: 402054	 Bytes: 5
  %loadMem_402054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402054 = call %struct.Memory* @routine_movl__0x41971c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402054)
  store %struct.Memory* %call_402054, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402059	 Bytes: 2
  %loadMem_402059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402059 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402059)
  store %struct.Memory* %call_402059, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40205b	 Bytes: 4
  %loadMem_40205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205b)
  store %struct.Memory* %call_40205b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40205f	 Bytes: 3
  %loadMem_40205f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205f)
  store %struct.Memory* %call_40205f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc	 RIP: 402062	 Bytes: 5
  %loadMem1_402062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402062 = call %struct.Memory* @routine_callq_._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402062, i64 35806, i64 5, i64 5)
  store %struct.Memory* %call1_402062, %struct.Memory** %MEMORY

  %loadMem2_402062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402062 = load i64, i64* %3
  %call2_402062 = call %struct.Memory* @sub_40ac40._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402062, %struct.Memory* %loadMem2_402062)
  store %struct.Memory* %call2_402062, %struct.Memory** %MEMORY

  ; Code: movl $0x419733, %esi	 RIP: 402067	 Bytes: 5
  %loadMem_402067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402067 = call %struct.Memory* @routine_movl__0x419733___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402067)
  store %struct.Memory* %call_402067, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40206c	 Bytes: 2
  %loadMem_40206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206c)
  store %struct.Memory* %call_40206c, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40206e	 Bytes: 4
  %loadMem_40206e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206e = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206e)
  store %struct.Memory* %call_40206e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402072	 Bytes: 3
  %loadMem_402072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402072 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402072)
  store %struct.Memory* %call_402072, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc	 RIP: 402075	 Bytes: 5
  %loadMem1_402075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402075 = call %struct.Memory* @routine_callq_._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402075, i64 35947, i64 5, i64 5)
  store %struct.Memory* %call1_402075, %struct.Memory** %MEMORY

  %loadMem2_402075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402075 = load i64, i64* %3
  %call2_402075 = call %struct.Memory* @sub_40ace0._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402075, %struct.Memory* %loadMem2_402075)
  store %struct.Memory* %call2_402075, %struct.Memory** %MEMORY

  ; Code: movl $0x41974c, %esi	 RIP: 40207a	 Bytes: 5
  %loadMem_40207a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207a = call %struct.Memory* @routine_movl__0x41974c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207a)
  store %struct.Memory* %call_40207a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40207f	 Bytes: 2
  %loadMem_40207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207f)
  store %struct.Memory* %call_40207f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402081	 Bytes: 4
  %loadMem_402081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402081 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402081)
  store %struct.Memory* %call_402081, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402085	 Bytes: 3
  %loadMem_402085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402085 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402085)
  store %struct.Memory* %call_402085, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc	 RIP: 402088	 Bytes: 5
  %loadMem1_402088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402088 = call %struct.Memory* @routine_callq_._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402088, i64 36088, i64 5, i64 5)
  store %struct.Memory* %call1_402088, %struct.Memory** %MEMORY

  %loadMem2_402088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402088 = load i64, i64* %3
  %call2_402088 = call %struct.Memory* @sub_40ad80._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402088, %struct.Memory* %loadMem2_402088)
  store %struct.Memory* %call2_402088, %struct.Memory** %MEMORY

  ; Code: movl $0x419768, %esi	 RIP: 40208d	 Bytes: 5
  %loadMem_40208d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208d = call %struct.Memory* @routine_movl__0x419768___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208d)
  store %struct.Memory* %call_40208d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402092	 Bytes: 2
  %loadMem_402092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402092 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402092)
  store %struct.Memory* %call_402092, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402094	 Bytes: 4
  %loadMem_402094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402094 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402094)
  store %struct.Memory* %call_402094, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402098	 Bytes: 3
  %loadMem_402098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402098 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402098)
  store %struct.Memory* %call_402098, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc	 RIP: 40209b	 Bytes: 5
  %loadMem1_40209b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40209b = call %struct.Memory* @routine_callq_._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40209b, i64 36229, i64 5, i64 5)
  store %struct.Memory* %call1_40209b, %struct.Memory** %MEMORY

  %loadMem2_40209b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40209b = load i64, i64* %3
  %call2_40209b = call %struct.Memory* @sub_40ae20._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40209b, %struct.Memory* %loadMem2_40209b)
  store %struct.Memory* %call2_40209b, %struct.Memory** %MEMORY

  ; Code: movl $0x419788, %esi	 RIP: 4020a0	 Bytes: 5
  %loadMem_4020a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a0 = call %struct.Memory* @routine_movl__0x419788___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a0)
  store %struct.Memory* %call_4020a0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4020a5	 Bytes: 2
  %loadMem_4020a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a5)
  store %struct.Memory* %call_4020a5, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4020a7	 Bytes: 4
  %loadMem_4020a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a7 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a7)
  store %struct.Memory* %call_4020a7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4020ab	 Bytes: 3
  %loadMem_4020ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ab = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ab)
  store %struct.Memory* %call_4020ab, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc	 RIP: 4020ae	 Bytes: 5
  %loadMem1_4020ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4020ae = call %struct.Memory* @routine_callq_._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4020ae, i64 36370, i64 5, i64 5)
  store %struct.Memory* %call1_4020ae, %struct.Memory** %MEMORY

  %loadMem2_4020ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4020ae = load i64, i64* %3
  %call2_4020ae = call %struct.Memory* @sub_40aec0._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4020ae, %struct.Memory* %loadMem2_4020ae)
  store %struct.Memory* %call2_4020ae, %struct.Memory** %MEMORY

  ; Code: movl $0x4197a5, %esi	 RIP: 4020b3	 Bytes: 5
  %loadMem_4020b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b3 = call %struct.Memory* @routine_movl__0x4197a5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b3)
  store %struct.Memory* %call_4020b3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4020b8	 Bytes: 2
  %loadMem_4020b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b8 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b8)
  store %struct.Memory* %call_4020b8, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4020ba	 Bytes: 4
  %loadMem_4020ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ba = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ba)
  store %struct.Memory* %call_4020ba, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4020be	 Bytes: 3
  %loadMem_4020be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020be = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020be)
  store %struct.Memory* %call_4020be, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc	 RIP: 4020c1	 Bytes: 5
  %loadMem1_4020c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4020c1 = call %struct.Memory* @routine_callq_._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4020c1, i64 36511, i64 5, i64 5)
  store %struct.Memory* %call1_4020c1, %struct.Memory** %MEMORY

  %loadMem2_4020c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4020c1 = load i64, i64* %3
  %call2_4020c1 = call %struct.Memory* @sub_40af60._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4020c1, %struct.Memory* %loadMem2_4020c1)
  store %struct.Memory* %call2_4020c1, %struct.Memory** %MEMORY

  ; Code: movl $0x4197cb, %esi	 RIP: 4020c6	 Bytes: 5
  %loadMem_4020c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c6 = call %struct.Memory* @routine_movl__0x4197cb___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c6)
  store %struct.Memory* %call_4020c6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4020cb	 Bytes: 2
  %loadMem_4020cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cb)
  store %struct.Memory* %call_4020cb, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4020cd	 Bytes: 4
  %loadMem_4020cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cd = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cd)
  store %struct.Memory* %call_4020cd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4020d1	 Bytes: 3
  %loadMem_4020d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d1)
  store %struct.Memory* %call_4020d1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc	 RIP: 4020d4	 Bytes: 5
  %loadMem1_4020d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4020d4 = call %struct.Memory* @routine_callq_._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4020d4, i64 36652, i64 5, i64 5)
  store %struct.Memory* %call1_4020d4, %struct.Memory** %MEMORY

  %loadMem2_4020d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4020d4 = load i64, i64* %3
  %call2_4020d4 = call %struct.Memory* @sub_40b000._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4020d4, %struct.Memory* %loadMem2_4020d4)
  store %struct.Memory* %call2_4020d4, %struct.Memory** %MEMORY

  ; Code: movl $0x4197ee, %esi	 RIP: 4020d9	 Bytes: 5
  %loadMem_4020d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d9 = call %struct.Memory* @routine_movl__0x4197ee___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d9)
  store %struct.Memory* %call_4020d9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4020de	 Bytes: 2
  %loadMem_4020de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020de = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020de)
  store %struct.Memory* %call_4020de, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4020e0	 Bytes: 4
  %loadMem_4020e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e0 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e0)
  store %struct.Memory* %call_4020e0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4020e4	 Bytes: 3
  %loadMem_4020e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e4)
  store %struct.Memory* %call_4020e4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc	 RIP: 4020e7	 Bytes: 5
  %loadMem1_4020e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4020e7 = call %struct.Memory* @routine_callq_._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4020e7, i64 36793, i64 5, i64 5)
  store %struct.Memory* %call1_4020e7, %struct.Memory** %MEMORY

  %loadMem2_4020e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4020e7 = load i64, i64* %3
  %call2_4020e7 = call %struct.Memory* @sub_40b0a0._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4020e7, %struct.Memory* %loadMem2_4020e7)
  store %struct.Memory* %call2_4020e7, %struct.Memory** %MEMORY

  ; Code: movl $0x419805, %esi	 RIP: 4020ec	 Bytes: 5
  %loadMem_4020ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ec = call %struct.Memory* @routine_movl__0x419805___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ec)
  store %struct.Memory* %call_4020ec, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4020f1	 Bytes: 2
  %loadMem_4020f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f1 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f1)
  store %struct.Memory* %call_4020f1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4020f3	 Bytes: 4
  %loadMem_4020f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f3 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f3)
  store %struct.Memory* %call_4020f3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4020f7	 Bytes: 3
  %loadMem_4020f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f7)
  store %struct.Memory* %call_4020f7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc	 RIP: 4020fa	 Bytes: 5
  %loadMem1_4020fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4020fa = call %struct.Memory* @routine_callq_._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4020fa, i64 36934, i64 5, i64 5)
  store %struct.Memory* %call1_4020fa, %struct.Memory** %MEMORY

  %loadMem2_4020fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4020fa = load i64, i64* %3
  %call2_4020fa = call %struct.Memory* @sub_40b140._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4020fa, %struct.Memory* %loadMem2_4020fa)
  store %struct.Memory* %call2_4020fa, %struct.Memory** %MEMORY

  ; Code: movl $0x41981b, %esi	 RIP: 4020ff	 Bytes: 5
  %loadMem_4020ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ff = call %struct.Memory* @routine_movl__0x41981b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ff)
  store %struct.Memory* %call_4020ff, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402104	 Bytes: 2
  %loadMem_402104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402104 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402104)
  store %struct.Memory* %call_402104, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402106	 Bytes: 4
  %loadMem_402106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402106 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402106)
  store %struct.Memory* %call_402106, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40210a	 Bytes: 3
  %loadMem_40210a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210a)
  store %struct.Memory* %call_40210a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc	 RIP: 40210d	 Bytes: 5
  %loadMem1_40210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40210d = call %struct.Memory* @routine_callq_._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40210d, i64 37075, i64 5, i64 5)
  store %struct.Memory* %call1_40210d, %struct.Memory** %MEMORY

  %loadMem2_40210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40210d = load i64, i64* %3
  %call2_40210d = call %struct.Memory* @sub_40b1e0._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40210d, %struct.Memory* %loadMem2_40210d)
  store %struct.Memory* %call2_40210d, %struct.Memory** %MEMORY

  ; Code: movslq 0x21ff67(%rip), %rax	 RIP: 402112	 Bytes: 7
  %loadMem_402112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402112 = call %struct.Memory* @routine_movslq_0x21ff67__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402112)
  store %struct.Memory* %call_402112, %struct.Memory** %MEMORY

  ; Code: imulq $0x66666667, %rax, %rax	 RIP: 402119	 Bytes: 7
  %loadMem_402119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402119 = call %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402119)
  store %struct.Memory* %call_402119, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 402120	 Bytes: 3
  %loadMem_402120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402120 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402120)
  store %struct.Memory* %call_402120, %struct.Memory** %MEMORY

  ; Code: shrq $0x3f, %rcx	 RIP: 402123	 Bytes: 4
  %loadMem_402123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402123 = call %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402123)
  store %struct.Memory* %call_402123, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 402127	 Bytes: 2
  %loadMem_402127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402127 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402127)
  store %struct.Memory* %call_402127, %struct.Memory** %MEMORY

  ; Code: sarq $0x22, %rax	 RIP: 402129	 Bytes: 4
  %loadMem_402129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402129 = call %struct.Memory* @routine_sarq__0x22___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402129)
  store %struct.Memory* %call_402129, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 40212d	 Bytes: 3
  %loadMem_40212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212d = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212d)
  store %struct.Memory* %call_40212d, %struct.Memory** %MEMORY

  ; Code: addl %esi, %r9d	 RIP: 402130	 Bytes: 3
  %loadMem_402130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402130 = call %struct.Memory* @routine_addl__esi___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402130)
  store %struct.Memory* %call_402130, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x21ff86(%rip)	 RIP: 402133	 Bytes: 7
  %loadMem_402133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402133 = call %struct.Memory* @routine_movl__r9d__0x21ff86__rip_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402133)
  store %struct.Memory* %call_402133, %struct.Memory** %MEMORY

  ; Code: movl $0x419832, %esi	 RIP: 40213a	 Bytes: 5
  %loadMem_40213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213a = call %struct.Memory* @routine_movl__0x419832___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213a)
  store %struct.Memory* %call_40213a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40213f	 Bytes: 2
  %loadMem_40213f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213f)
  store %struct.Memory* %call_40213f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402141	 Bytes: 4
  %loadMem_402141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402141 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402141)
  store %struct.Memory* %call_402141, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402145	 Bytes: 3
  %loadMem_402145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402145 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402145)
  store %struct.Memory* %call_402145, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc	 RIP: 402148	 Bytes: 5
  %loadMem1_402148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402148 = call %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402148, i64 37176, i64 5, i64 5)
  store %struct.Memory* %call1_402148, %struct.Memory** %MEMORY

  %loadMem2_402148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402148 = load i64, i64* %3
  %call2_402148 = call %struct.Memory* @sub_40b280._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402148, %struct.Memory* %loadMem2_402148)
  store %struct.Memory* %call2_402148, %struct.Memory** %MEMORY

  ; Code: movl $0x419848, %esi	 RIP: 40214d	 Bytes: 5
  %loadMem_40214d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214d = call %struct.Memory* @routine_movl__0x419848___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214d)
  store %struct.Memory* %call_40214d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402152	 Bytes: 2
  %loadMem_402152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402152 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402152)
  store %struct.Memory* %call_402152, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402154	 Bytes: 4
  %loadMem_402154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402154 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402154)
  store %struct.Memory* %call_402154, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402158	 Bytes: 3
  %loadMem_402158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402158 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402158)
  store %struct.Memory* %call_402158, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc	 RIP: 40215b	 Bytes: 5
  %loadMem1_40215b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40215b = call %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40215b, i64 37317, i64 5, i64 5)
  store %struct.Memory* %call1_40215b, %struct.Memory** %MEMORY

  %loadMem2_40215b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40215b = load i64, i64* %3
  %call2_40215b = call %struct.Memory* @sub_40b320._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40215b, %struct.Memory* %loadMem2_40215b)
  store %struct.Memory* %call2_40215b, %struct.Memory** %MEMORY

  ; Code: movl $0x419868, %esi	 RIP: 402160	 Bytes: 5
  %loadMem_402160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402160 = call %struct.Memory* @routine_movl__0x419868___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402160)
  store %struct.Memory* %call_402160, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402165	 Bytes: 2
  %loadMem_402165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402165 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402165)
  store %struct.Memory* %call_402165, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402167	 Bytes: 4
  %loadMem_402167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402167 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402167)
  store %struct.Memory* %call_402167, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40216b	 Bytes: 3
  %loadMem_40216b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216b)
  store %struct.Memory* %call_40216b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc	 RIP: 40216e	 Bytes: 5
  %loadMem1_40216e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40216e = call %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40216e, i64 37458, i64 5, i64 5)
  store %struct.Memory* %call1_40216e, %struct.Memory** %MEMORY

  %loadMem2_40216e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40216e = load i64, i64* %3
  %call2_40216e = call %struct.Memory* @sub_40b3c0._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40216e, %struct.Memory* %loadMem2_40216e)
  store %struct.Memory* %call2_40216e, %struct.Memory** %MEMORY

  ; Code: movl $0x419883, %esi	 RIP: 402173	 Bytes: 5
  %loadMem_402173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402173 = call %struct.Memory* @routine_movl__0x419883___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402173)
  store %struct.Memory* %call_402173, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402178	 Bytes: 2
  %loadMem_402178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402178 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402178)
  store %struct.Memory* %call_402178, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40217a	 Bytes: 4
  %loadMem_40217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217a = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217a)
  store %struct.Memory* %call_40217a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40217e	 Bytes: 3
  %loadMem_40217e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217e)
  store %struct.Memory* %call_40217e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc	 RIP: 402181	 Bytes: 5
  %loadMem1_402181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402181 = call %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402181, i64 37599, i64 5, i64 5)
  store %struct.Memory* %call1_402181, %struct.Memory** %MEMORY

  %loadMem2_402181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402181 = load i64, i64* %3
  %call2_402181 = call %struct.Memory* @sub_40b460._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402181, %struct.Memory* %loadMem2_402181)
  store %struct.Memory* %call2_402181, %struct.Memory** %MEMORY

  ; Code: movl $0x4198a8, %esi	 RIP: 402186	 Bytes: 5
  %loadMem_402186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402186 = call %struct.Memory* @routine_movl__0x4198a8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402186)
  store %struct.Memory* %call_402186, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40218b	 Bytes: 2
  %loadMem_40218b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218b = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218b)
  store %struct.Memory* %call_40218b, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40218d	 Bytes: 4
  %loadMem_40218d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218d = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218d)
  store %struct.Memory* %call_40218d, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402191	 Bytes: 3
  %loadMem_402191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402191 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402191)
  store %struct.Memory* %call_402191, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc	 RIP: 402194	 Bytes: 5
  %loadMem1_402194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402194 = call %struct.Memory* @routine_callq_._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402194, i64 37740, i64 5, i64 5)
  store %struct.Memory* %call1_402194, %struct.Memory** %MEMORY

  %loadMem2_402194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402194 = load i64, i64* %3
  %call2_402194 = call %struct.Memory* @sub_40b500._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402194, %struct.Memory* %loadMem2_402194)
  store %struct.Memory* %call2_402194, %struct.Memory** %MEMORY

  ; Code: movl $0x4198c3, %esi	 RIP: 402199	 Bytes: 5
  %loadMem_402199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402199 = call %struct.Memory* @routine_movl__0x4198c3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402199)
  store %struct.Memory* %call_402199, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40219e	 Bytes: 2
  %loadMem_40219e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219e = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219e)
  store %struct.Memory* %call_40219e, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4021a0	 Bytes: 4
  %loadMem_4021a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a0 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a0)
  store %struct.Memory* %call_4021a0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021a4	 Bytes: 3
  %loadMem_4021a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a4)
  store %struct.Memory* %call_4021a4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc	 RIP: 4021a7	 Bytes: 5
  %loadMem1_4021a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4021a7 = call %struct.Memory* @routine_callq_._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4021a7, i64 37881, i64 5, i64 5)
  store %struct.Memory* %call1_4021a7, %struct.Memory** %MEMORY

  %loadMem2_4021a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4021a7 = load i64, i64* %3
  %call2_4021a7 = call %struct.Memory* @sub_40b5a0._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4021a7, %struct.Memory* %loadMem2_4021a7)
  store %struct.Memory* %call2_4021a7, %struct.Memory** %MEMORY

  ; Code: movl $0x4198e9, %esi	 RIP: 4021ac	 Bytes: 5
  %loadMem_4021ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ac = call %struct.Memory* @routine_movl__0x4198e9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ac)
  store %struct.Memory* %call_4021ac, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4021b1	 Bytes: 2
  %loadMem_4021b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b1 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b1)
  store %struct.Memory* %call_4021b1, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4021b3	 Bytes: 4
  %loadMem_4021b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b3 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b3)
  store %struct.Memory* %call_4021b3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021b7	 Bytes: 3
  %loadMem_4021b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b7)
  store %struct.Memory* %call_4021b7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc	 RIP: 4021ba	 Bytes: 5
  %loadMem1_4021ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4021ba = call %struct.Memory* @routine_callq_._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4021ba, i64 38022, i64 5, i64 5)
  store %struct.Memory* %call1_4021ba, %struct.Memory** %MEMORY

  %loadMem2_4021ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4021ba = load i64, i64* %3
  %call2_4021ba = call %struct.Memory* @sub_40b640._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4021ba, %struct.Memory* %loadMem2_4021ba)
  store %struct.Memory* %call2_4021ba, %struct.Memory** %MEMORY

  ; Code: movl $0x41990e, %esi	 RIP: 4021bf	 Bytes: 5
  %loadMem_4021bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021bf = call %struct.Memory* @routine_movl__0x41990e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021bf)
  store %struct.Memory* %call_4021bf, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4021c4	 Bytes: 2
  %loadMem_4021c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c4 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c4)
  store %struct.Memory* %call_4021c4, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4021c6	 Bytes: 4
  %loadMem_4021c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c6 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c6)
  store %struct.Memory* %call_4021c6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021ca	 Bytes: 3
  %loadMem_4021ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ca = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ca)
  store %struct.Memory* %call_4021ca, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc	 RIP: 4021cd	 Bytes: 5
  %loadMem1_4021cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4021cd = call %struct.Memory* @routine_callq_._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4021cd, i64 38163, i64 5, i64 5)
  store %struct.Memory* %call1_4021cd, %struct.Memory** %MEMORY

  %loadMem2_4021cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4021cd = load i64, i64* %3
  %call2_4021cd = call %struct.Memory* @sub_40b6e0._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4021cd, %struct.Memory* %loadMem2_4021cd)
  store %struct.Memory* %call2_4021cd, %struct.Memory** %MEMORY

  ; Code: movl $0x419927, %esi	 RIP: 4021d2	 Bytes: 5
  %loadMem_4021d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d2 = call %struct.Memory* @routine_movl__0x419927___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d2)
  store %struct.Memory* %call_4021d2, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4021d7	 Bytes: 2
  %loadMem_4021d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d7 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d7)
  store %struct.Memory* %call_4021d7, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4021d9	 Bytes: 4
  %loadMem_4021d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d9 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d9)
  store %struct.Memory* %call_4021d9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021dd	 Bytes: 3
  %loadMem_4021dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021dd = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021dd)
  store %struct.Memory* %call_4021dd, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc	 RIP: 4021e0	 Bytes: 5
  %loadMem1_4021e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4021e0 = call %struct.Memory* @routine_callq_._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4021e0, i64 38304, i64 5, i64 5)
  store %struct.Memory* %call1_4021e0, %struct.Memory** %MEMORY

  %loadMem2_4021e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4021e0 = load i64, i64* %3
  %call2_4021e0 = call %struct.Memory* @sub_40b780._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4021e0, %struct.Memory* %loadMem2_4021e0)
  store %struct.Memory* %call2_4021e0, %struct.Memory** %MEMORY

  ; Code: movl $0x41994a, %esi	 RIP: 4021e5	 Bytes: 5
  %loadMem_4021e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e5 = call %struct.Memory* @routine_movl__0x41994a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e5)
  store %struct.Memory* %call_4021e5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4021ea	 Bytes: 2
  %loadMem_4021ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ea = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ea)
  store %struct.Memory* %call_4021ea, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4021ec	 Bytes: 4
  %loadMem_4021ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ec = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ec)
  store %struct.Memory* %call_4021ec, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4021f0	 Bytes: 3
  %loadMem_4021f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f0)
  store %struct.Memory* %call_4021f0, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc	 RIP: 4021f3	 Bytes: 5
  %loadMem1_4021f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4021f3 = call %struct.Memory* @routine_callq_._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4021f3, i64 38445, i64 5, i64 5)
  store %struct.Memory* %call1_4021f3, %struct.Memory** %MEMORY

  %loadMem2_4021f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4021f3 = load i64, i64* %3
  %call2_4021f3 = call %struct.Memory* @sub_40b820._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4021f3, %struct.Memory* %loadMem2_4021f3)
  store %struct.Memory* %call2_4021f3, %struct.Memory** %MEMORY

  ; Code: movl $0x41996d, %esi	 RIP: 4021f8	 Bytes: 5
  %loadMem_4021f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f8 = call %struct.Memory* @routine_movl__0x41996d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f8)
  store %struct.Memory* %call_4021f8, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4021fd	 Bytes: 2
  %loadMem_4021fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fd = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fd)
  store %struct.Memory* %call_4021fd, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 4021ff	 Bytes: 4
  %loadMem_4021ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ff = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ff)
  store %struct.Memory* %call_4021ff, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402203	 Bytes: 3
  %loadMem_402203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402203 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402203)
  store %struct.Memory* %call_402203, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc	 RIP: 402206	 Bytes: 5
  %loadMem1_402206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402206 = call %struct.Memory* @routine_callq_._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402206, i64 38586, i64 5, i64 5)
  store %struct.Memory* %call1_402206, %struct.Memory** %MEMORY

  %loadMem2_402206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402206 = load i64, i64* %3
  %call2_402206 = call %struct.Memory* @sub_40b8c0._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402206, %struct.Memory* %loadMem2_402206)
  store %struct.Memory* %call2_402206, %struct.Memory** %MEMORY

  ; Code: movl $0x41998e, %esi	 RIP: 40220b	 Bytes: 5
  %loadMem_40220b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220b = call %struct.Memory* @routine_movl__0x41998e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220b)
  store %struct.Memory* %call_40220b, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402210	 Bytes: 2
  %loadMem_402210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402210 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402210)
  store %struct.Memory* %call_402210, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402212	 Bytes: 4
  %loadMem_402212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402212 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402212)
  store %struct.Memory* %call_402212, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402216	 Bytes: 3
  %loadMem_402216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402216 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402216)
  store %struct.Memory* %call_402216, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc	 RIP: 402219	 Bytes: 5
  %loadMem1_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402219 = call %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402219, i64 38727, i64 5, i64 5)
  store %struct.Memory* %call1_402219, %struct.Memory** %MEMORY

  %loadMem2_402219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402219 = load i64, i64* %3
  %call2_402219 = call %struct.Memory* @sub_40b960._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402219, %struct.Memory* %loadMem2_402219)
  store %struct.Memory* %call2_402219, %struct.Memory** %MEMORY

  ; Code: movl $0x4199a4, %esi	 RIP: 40221e	 Bytes: 5
  %loadMem_40221e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221e = call %struct.Memory* @routine_movl__0x4199a4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221e)
  store %struct.Memory* %call_40221e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402223	 Bytes: 2
  %loadMem_402223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402223 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402223)
  store %struct.Memory* %call_402223, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402225	 Bytes: 4
  %loadMem_402225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402225 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402225)
  store %struct.Memory* %call_402225, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402229	 Bytes: 3
  %loadMem_402229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402229 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402229)
  store %struct.Memory* %call_402229, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc	 RIP: 40222c	 Bytes: 5
  %loadMem1_40222c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40222c = call %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40222c, i64 38868, i64 5, i64 5)
  store %struct.Memory* %call1_40222c, %struct.Memory** %MEMORY

  %loadMem2_40222c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40222c = load i64, i64* %3
  %call2_40222c = call %struct.Memory* @sub_40ba00._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40222c, %struct.Memory* %loadMem2_40222c)
  store %struct.Memory* %call2_40222c, %struct.Memory** %MEMORY

  ; Code: movl $0x4199c3, %esi	 RIP: 402231	 Bytes: 5
  %loadMem_402231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402231 = call %struct.Memory* @routine_movl__0x4199c3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402231)
  store %struct.Memory* %call_402231, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402236	 Bytes: 2
  %loadMem_402236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402236 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402236)
  store %struct.Memory* %call_402236, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402238	 Bytes: 4
  %loadMem_402238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402238 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402238)
  store %struct.Memory* %call_402238, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40223c	 Bytes: 3
  %loadMem_40223c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223c)
  store %struct.Memory* %call_40223c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc	 RIP: 40223f	 Bytes: 5
  %loadMem1_40223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40223f = call %struct.Memory* @routine_callq_._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40223f, i64 39009, i64 5, i64 5)
  store %struct.Memory* %call1_40223f, %struct.Memory** %MEMORY

  %loadMem2_40223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40223f = load i64, i64* %3
  %call2_40223f = call %struct.Memory* @sub_40baa0._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40223f, %struct.Memory* %loadMem2_40223f)
  store %struct.Memory* %call2_40223f, %struct.Memory** %MEMORY

  ; Code: movl $0x4199d8, %esi	 RIP: 402244	 Bytes: 5
  %loadMem_402244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402244 = call %struct.Memory* @routine_movl__0x4199d8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402244)
  store %struct.Memory* %call_402244, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 402249	 Bytes: 2
  %loadMem_402249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402249 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402249)
  store %struct.Memory* %call_402249, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40224b	 Bytes: 4
  %loadMem_40224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224b)
  store %struct.Memory* %call_40224b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 40224f	 Bytes: 3
  %loadMem_40224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224f)
  store %struct.Memory* %call_40224f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc	 RIP: 402252	 Bytes: 5
  %loadMem1_402252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402252 = call %struct.Memory* @routine_callq_._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402252, i64 39150, i64 5, i64 5)
  store %struct.Memory* %call1_402252, %struct.Memory** %MEMORY

  %loadMem2_402252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402252 = load i64, i64* %3
  %call2_402252 = call %struct.Memory* @sub_40bb40._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402252, %struct.Memory* %loadMem2_402252)
  store %struct.Memory* %call2_402252, %struct.Memory** %MEMORY

  ; Code: movl $0x4199f6, %esi	 RIP: 402257	 Bytes: 5
  %loadMem_402257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402257 = call %struct.Memory* @routine_movl__0x4199f6___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402257)
  store %struct.Memory* %call_402257, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40225c	 Bytes: 2
  %loadMem_40225c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225c)
  store %struct.Memory* %call_40225c, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 40225e	 Bytes: 4
  %loadMem_40225e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225e = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225e)
  store %struct.Memory* %call_40225e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402262	 Bytes: 3
  %loadMem_402262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402262 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402262)
  store %struct.Memory* %call_402262, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc	 RIP: 402265	 Bytes: 5
  %loadMem1_402265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402265 = call %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402265, i64 39291, i64 5, i64 5)
  store %struct.Memory* %call1_402265, %struct.Memory** %MEMORY

  %loadMem2_402265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402265 = load i64, i64* %3
  %call2_402265 = call %struct.Memory* @sub_40bbe0._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402265, %struct.Memory* %loadMem2_402265)
  store %struct.Memory* %call2_402265, %struct.Memory** %MEMORY

  ; Code: movl $0x419a0c, %esi	 RIP: 40226a	 Bytes: 5
  %loadMem_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226a = call %struct.Memory* @routine_movl__0x419a0c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226a)
  store %struct.Memory* %call_40226a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 40226f	 Bytes: 2
  %loadMem_40226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226f = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226f)
  store %struct.Memory* %call_40226f, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 402271	 Bytes: 4
  %loadMem_402271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402271 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402271)
  store %struct.Memory* %call_402271, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 402275	 Bytes: 3
  %loadMem_402275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402275 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402275)
  store %struct.Memory* %call_402275, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc	 RIP: 402278	 Bytes: 5
  %loadMem1_402278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402278 = call %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402278, i64 39432, i64 5, i64 5)
  store %struct.Memory* %call1_402278, %struct.Memory** %MEMORY

  %loadMem2_402278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402278 = load i64, i64* %3
  %call2_402278 = call %struct.Memory* @sub_40bc80._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402278, %struct.Memory* %loadMem2_402278)
  store %struct.Memory* %call2_402278, %struct.Memory** %MEMORY

  ; Code: movsd 0x21fe03(%rip), %xmm0	 RIP: 40227d	 Bytes: 8
  %loadMem_40227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227d = call %struct.Memory* @routine_movsd_0x21fe03__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227d)
  store %struct.Memory* %call_40227d, %struct.Memory** %MEMORY

  ; Code: movsd 0x16793(%rip), %xmm1	 RIP: 402285	 Bytes: 8
  %loadMem_402285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402285 = call %struct.Memory* @routine_movsd_0x16793__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402285)
  store %struct.Memory* %call_402285, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm2	 RIP: 40228d	 Bytes: 3
  %loadMem_40228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228d = call %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228d)
  store %struct.Memory* %call_40228d, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm2	 RIP: 402290	 Bytes: 4
  %loadMem_402290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402290 = call %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402290)
  store %struct.Memory* %call_402290, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm2, %rax	 RIP: 402294	 Bytes: 5
  %loadMem_402294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402294 = call %struct.Memory* @routine_cvttsd2si__xmm2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402294)
  store %struct.Memory* %call_402294, %struct.Memory** %MEMORY

  ; Code: movq $0x8000000000000000, %rcx	 RIP: 402299	 Bytes: 10
  %loadMem_402299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402299 = call %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402299)
  store %struct.Memory* %call_402299, %struct.Memory** %MEMORY

  ; Code: xorq %rcx, %rax	 RIP: 4022a3	 Bytes: 3
  %loadMem_4022a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a3 = call %struct.Memory* @routine_xorq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a3)
  store %struct.Memory* %call_4022a3, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rcx	 RIP: 4022a6	 Bytes: 5
  %loadMem_4022a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a6 = call %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a6)
  store %struct.Memory* %call_4022a6, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4022ab	 Bytes: 4
  %loadMem_4022ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ab = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ab)
  store %struct.Memory* %call_4022ab, %struct.Memory** %MEMORY

  ; Code: cmovaq %rcx, %rax	 RIP: 4022af	 Bytes: 4
  %loadMem_4022af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022af = call %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022af)
  store %struct.Memory* %call_4022af, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4022b3	 Bytes: 4
  %loadMem_4022b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b3)
  store %struct.Memory* %call_4022b3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 4022b7	 Bytes: 4
  %loadMem_4022b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b7)
  store %struct.Memory* %call_4022b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4022bb	 Bytes: 3
  %loadMem_4022bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bb = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bb)
  store %struct.Memory* %call_4022bb, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPmmEvT_S1_T0_	 RIP: 4022be	 Bytes: 5
  %loadMem1_4022be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4022be = call %struct.Memory* @routine_callq_._Z4fillIPmmEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4022be, i64 39522, i64 5, i64 5)
  store %struct.Memory* %call1_4022be, %struct.Memory** %MEMORY

  %loadMem2_4022be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4022be = load i64, i64* %3
  %call2_4022be = call %struct.Memory* @sub_40bd20._Z4fillIPmmEvT_S1_T0_(%struct.State* %0, i64  %loadPC_4022be, %struct.Memory* %loadMem2_4022be)
  store %struct.Memory* %call2_4022be, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4022c3	 Bytes: 10
  %loadMem_4022c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c3 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c3)
  store %struct.Memory* %call_4022c3, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4022cd	 Bytes: 5
  %loadMem_4022cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cd = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cd)
  store %struct.Memory* %call_4022cd, %struct.Memory** %MEMORY

  ; Code: movq $0x4196a0, %rdx	 RIP: 4022d2	 Bytes: 10
  %loadMem_4022d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d2 = call %struct.Memory* @routine_movq__0x4196a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d2)
  store %struct.Memory* %call_4022d2, %struct.Memory** %MEMORY

  ; Code: movl 0x622080, %r9d	 RIP: 4022dc	 Bytes: 8
  %loadMem_4022dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022dc = call %struct.Memory* @routine_movl_0x622080___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022dc)
  store %struct.Memory* %call_4022dc, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x6220c0	 RIP: 4022e4	 Bytes: 8
  %loadMem_4022e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e4 = call %struct.Memory* @routine_movl__r9d__0x6220c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e4)
  store %struct.Memory* %call_4022e4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm10custom_twoImEEvPT_iPKc	 RIP: 4022ec	 Bytes: 5
  %loadMem1_4022ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4022ec = call %struct.Memory* @routine_callq_._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4022ec, i64 39540, i64 5, i64 5)
  store %struct.Memory* %call1_4022ec, %struct.Memory** %MEMORY

  %loadMem2_4022ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4022ec = load i64, i64* %3
  %call2_4022ec = call %struct.Memory* @sub_40bd60._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4022ec, %struct.Memory* %loadMem2_4022ec)
  store %struct.Memory* %call2_4022ec, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4022f1	 Bytes: 10
  %loadMem_4022f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f1 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f1)
  store %struct.Memory* %call_4022f1, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4022fb	 Bytes: 5
  %loadMem_4022fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fb = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fb)
  store %struct.Memory* %call_4022fb, %struct.Memory** %MEMORY

  ; Code: movq $0x4196b2, %rdx	 RIP: 402300	 Bytes: 10
  %loadMem_402300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402300 = call %struct.Memory* @routine_movq__0x4196b2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402300)
  store %struct.Memory* %call_402300, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc	 RIP: 40230a	 Bytes: 5
  %loadMem1_40230a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40230a = call %struct.Memory* @routine_callq_._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40230a, i64 39670, i64 5, i64 5)
  store %struct.Memory* %call1_40230a, %struct.Memory** %MEMORY

  %loadMem2_40230a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40230a = load i64, i64* %3
  %call2_40230a = call %struct.Memory* @sub_40be00._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40230a, %struct.Memory* %loadMem2_40230a)
  store %struct.Memory* %call2_40230a, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40230f	 Bytes: 10
  %loadMem_40230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230f = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230f)
  store %struct.Memory* %call_40230f, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402319	 Bytes: 5
  %loadMem_402319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402319 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402319)
  store %struct.Memory* %call_402319, %struct.Memory** %MEMORY

  ; Code: movq $0x4196c9, %rdx	 RIP: 40231e	 Bytes: 10
  %loadMem_40231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231e = call %struct.Memory* @routine_movq__0x4196c9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231e)
  store %struct.Memory* %call_40231e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc	 RIP: 402328	 Bytes: 5
  %loadMem1_402328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402328 = call %struct.Memory* @routine_callq_._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402328, i64 39800, i64 5, i64 5)
  store %struct.Memory* %call1_402328, %struct.Memory** %MEMORY

  %loadMem2_402328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402328 = load i64, i64* %3
  %call2_402328 = call %struct.Memory* @sub_40bea0._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402328, %struct.Memory* %loadMem2_402328)
  store %struct.Memory* %call2_402328, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40232d	 Bytes: 10
  %loadMem_40232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232d = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232d)
  store %struct.Memory* %call_40232d, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402337	 Bytes: 5
  %loadMem_402337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402337 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402337)
  store %struct.Memory* %call_402337, %struct.Memory** %MEMORY

  ; Code: movq $0x4196e5, %rdx	 RIP: 40233c	 Bytes: 10
  %loadMem_40233c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233c = call %struct.Memory* @routine_movq__0x4196e5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233c)
  store %struct.Memory* %call_40233c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc	 RIP: 402346	 Bytes: 5
  %loadMem1_402346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402346 = call %struct.Memory* @routine_callq_._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402346, i64 39930, i64 5, i64 5)
  store %struct.Memory* %call1_402346, %struct.Memory** %MEMORY

  %loadMem2_402346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402346 = load i64, i64* %3
  %call2_402346 = call %struct.Memory* @sub_40bf40._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402346, %struct.Memory* %loadMem2_402346)
  store %struct.Memory* %call2_402346, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40234b	 Bytes: 10
  %loadMem_40234b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234b = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234b)
  store %struct.Memory* %call_40234b, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402355	 Bytes: 5
  %loadMem_402355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402355 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402355)
  store %struct.Memory* %call_402355, %struct.Memory** %MEMORY

  ; Code: movq $0x419701, %rdx	 RIP: 40235a	 Bytes: 10
  %loadMem_40235a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235a = call %struct.Memory* @routine_movq__0x419701___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235a)
  store %struct.Memory* %call_40235a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc	 RIP: 402364	 Bytes: 5
  %loadMem1_402364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402364 = call %struct.Memory* @routine_callq_._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402364, i64 40060, i64 5, i64 5)
  store %struct.Memory* %call1_402364, %struct.Memory** %MEMORY

  %loadMem2_402364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402364 = load i64, i64* %3
  %call2_402364 = call %struct.Memory* @sub_40bfe0._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402364, %struct.Memory* %loadMem2_402364)
  store %struct.Memory* %call2_402364, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402369	 Bytes: 10
  %loadMem_402369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402369 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402369)
  store %struct.Memory* %call_402369, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402373	 Bytes: 5
  %loadMem_402373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402373 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402373)
  store %struct.Memory* %call_402373, %struct.Memory** %MEMORY

  ; Code: movq $0x41971b, %rdx	 RIP: 402378	 Bytes: 10
  %loadMem_402378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402378 = call %struct.Memory* @routine_movq__0x41971b___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402378)
  store %struct.Memory* %call_402378, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc	 RIP: 402382	 Bytes: 5
  %loadMem1_402382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402382 = call %struct.Memory* @routine_callq_._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402382, i64 40190, i64 5, i64 5)
  store %struct.Memory* %call1_402382, %struct.Memory** %MEMORY

  %loadMem2_402382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402382 = load i64, i64* %3
  %call2_402382 = call %struct.Memory* @sub_40c080._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402382, %struct.Memory* %loadMem2_402382)
  store %struct.Memory* %call2_402382, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402387	 Bytes: 10
  %loadMem_402387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402387 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402387)
  store %struct.Memory* %call_402387, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402391	 Bytes: 5
  %loadMem_402391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402391 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402391)
  store %struct.Memory* %call_402391, %struct.Memory** %MEMORY

  ; Code: movq $0x419732, %rdx	 RIP: 402396	 Bytes: 10
  %loadMem_402396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402396 = call %struct.Memory* @routine_movq__0x419732___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402396)
  store %struct.Memory* %call_402396, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc	 RIP: 4023a0	 Bytes: 5
  %loadMem1_4023a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4023a0 = call %struct.Memory* @routine_callq_._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4023a0, i64 40320, i64 5, i64 5)
  store %struct.Memory* %call1_4023a0, %struct.Memory** %MEMORY

  %loadMem2_4023a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4023a0 = load i64, i64* %3
  %call2_4023a0 = call %struct.Memory* @sub_40c120._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4023a0, %struct.Memory* %loadMem2_4023a0)
  store %struct.Memory* %call2_4023a0, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4023a5	 Bytes: 10
  %loadMem_4023a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a5 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a5)
  store %struct.Memory* %call_4023a5, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4023af	 Bytes: 5
  %loadMem_4023af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023af = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023af)
  store %struct.Memory* %call_4023af, %struct.Memory** %MEMORY

  ; Code: movq $0x41974b, %rdx	 RIP: 4023b4	 Bytes: 10
  %loadMem_4023b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b4 = call %struct.Memory* @routine_movq__0x41974b___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b4)
  store %struct.Memory* %call_4023b4, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc	 RIP: 4023be	 Bytes: 5
  %loadMem1_4023be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4023be = call %struct.Memory* @routine_callq_._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4023be, i64 40450, i64 5, i64 5)
  store %struct.Memory* %call1_4023be, %struct.Memory** %MEMORY

  %loadMem2_4023be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4023be = load i64, i64* %3
  %call2_4023be = call %struct.Memory* @sub_40c1c0._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4023be, %struct.Memory* %loadMem2_4023be)
  store %struct.Memory* %call2_4023be, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4023c3	 Bytes: 10
  %loadMem_4023c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c3 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c3)
  store %struct.Memory* %call_4023c3, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4023cd	 Bytes: 5
  %loadMem_4023cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cd = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cd)
  store %struct.Memory* %call_4023cd, %struct.Memory** %MEMORY

  ; Code: movq $0x419767, %rdx	 RIP: 4023d2	 Bytes: 10
  %loadMem_4023d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d2 = call %struct.Memory* @routine_movq__0x419767___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d2)
  store %struct.Memory* %call_4023d2, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc	 RIP: 4023dc	 Bytes: 5
  %loadMem1_4023dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4023dc = call %struct.Memory* @routine_callq_._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4023dc, i64 40580, i64 5, i64 5)
  store %struct.Memory* %call1_4023dc, %struct.Memory** %MEMORY

  %loadMem2_4023dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4023dc = load i64, i64* %3
  %call2_4023dc = call %struct.Memory* @sub_40c260._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4023dc, %struct.Memory* %loadMem2_4023dc)
  store %struct.Memory* %call2_4023dc, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4023e1	 Bytes: 10
  %loadMem_4023e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e1 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e1)
  store %struct.Memory* %call_4023e1, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4023eb	 Bytes: 5
  %loadMem_4023eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023eb = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023eb)
  store %struct.Memory* %call_4023eb, %struct.Memory** %MEMORY

  ; Code: movq $0x419787, %rdx	 RIP: 4023f0	 Bytes: 10
  %loadMem_4023f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f0 = call %struct.Memory* @routine_movq__0x419787___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f0)
  store %struct.Memory* %call_4023f0, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc	 RIP: 4023fa	 Bytes: 5
  %loadMem1_4023fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4023fa = call %struct.Memory* @routine_callq_._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4023fa, i64 40710, i64 5, i64 5)
  store %struct.Memory* %call1_4023fa, %struct.Memory** %MEMORY

  %loadMem2_4023fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4023fa = load i64, i64* %3
  %call2_4023fa = call %struct.Memory* @sub_40c300._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4023fa, %struct.Memory* %loadMem2_4023fa)
  store %struct.Memory* %call2_4023fa, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4023ff	 Bytes: 10
  %loadMem_4023ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ff = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ff)
  store %struct.Memory* %call_4023ff, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402409	 Bytes: 5
  %loadMem_402409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402409 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402409)
  store %struct.Memory* %call_402409, %struct.Memory** %MEMORY

  ; Code: movq $0x4197a4, %rdx	 RIP: 40240e	 Bytes: 10
  %loadMem_40240e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40240e = call %struct.Memory* @routine_movq__0x4197a4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40240e)
  store %struct.Memory* %call_40240e, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc	 RIP: 402418	 Bytes: 5
  %loadMem1_402418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402418 = call %struct.Memory* @routine_callq_._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402418, i64 40840, i64 5, i64 5)
  store %struct.Memory* %call1_402418, %struct.Memory** %MEMORY

  %loadMem2_402418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402418 = load i64, i64* %3
  %call2_402418 = call %struct.Memory* @sub_40c3a0._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402418, %struct.Memory* %loadMem2_402418)
  store %struct.Memory* %call2_402418, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40241d	 Bytes: 10
  %loadMem_40241d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241d = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241d)
  store %struct.Memory* %call_40241d, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402427	 Bytes: 5
  %loadMem_402427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402427 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402427)
  store %struct.Memory* %call_402427, %struct.Memory** %MEMORY

  ; Code: movq $0x4197ca, %rdx	 RIP: 40242c	 Bytes: 10
  %loadMem_40242c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242c = call %struct.Memory* @routine_movq__0x4197ca___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242c)
  store %struct.Memory* %call_40242c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc	 RIP: 402436	 Bytes: 5
  %loadMem1_402436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402436 = call %struct.Memory* @routine_callq_._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402436, i64 40970, i64 5, i64 5)
  store %struct.Memory* %call1_402436, %struct.Memory** %MEMORY

  %loadMem2_402436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402436 = load i64, i64* %3
  %call2_402436 = call %struct.Memory* @sub_40c440._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402436, %struct.Memory* %loadMem2_402436)
  store %struct.Memory* %call2_402436, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40243b	 Bytes: 10
  %loadMem_40243b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243b = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243b)
  store %struct.Memory* %call_40243b, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402445	 Bytes: 5
  %loadMem_402445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402445 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402445)
  store %struct.Memory* %call_402445, %struct.Memory** %MEMORY

  ; Code: movq $0x4197ed, %rdx	 RIP: 40244a	 Bytes: 10
  %loadMem_40244a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244a = call %struct.Memory* @routine_movq__0x4197ed___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244a)
  store %struct.Memory* %call_40244a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc	 RIP: 402454	 Bytes: 5
  %loadMem1_402454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402454 = call %struct.Memory* @routine_callq_._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402454, i64 41100, i64 5, i64 5)
  store %struct.Memory* %call1_402454, %struct.Memory** %MEMORY

  %loadMem2_402454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402454 = load i64, i64* %3
  %call2_402454 = call %struct.Memory* @sub_40c4e0._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402454, %struct.Memory* %loadMem2_402454)
  store %struct.Memory* %call2_402454, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402459	 Bytes: 10
  %loadMem_402459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402459 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402459)
  store %struct.Memory* %call_402459, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402463	 Bytes: 5
  %loadMem_402463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402463 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402463)
  store %struct.Memory* %call_402463, %struct.Memory** %MEMORY

  ; Code: movq $0x419804, %rdx	 RIP: 402468	 Bytes: 10
  %loadMem_402468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402468 = call %struct.Memory* @routine_movq__0x419804___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402468)
  store %struct.Memory* %call_402468, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc	 RIP: 402472	 Bytes: 5
  %loadMem1_402472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402472 = call %struct.Memory* @routine_callq_._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402472, i64 41230, i64 5, i64 5)
  store %struct.Memory* %call1_402472, %struct.Memory** %MEMORY

  %loadMem2_402472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402472 = load i64, i64* %3
  %call2_402472 = call %struct.Memory* @sub_40c580._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402472, %struct.Memory* %loadMem2_402472)
  store %struct.Memory* %call2_402472, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402477	 Bytes: 10
  %loadMem_402477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402477 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402477)
  store %struct.Memory* %call_402477, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402481	 Bytes: 5
  %loadMem_402481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402481 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402481)
  store %struct.Memory* %call_402481, %struct.Memory** %MEMORY

  ; Code: movq $0x41981a, %rdx	 RIP: 402486	 Bytes: 10
  %loadMem_402486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402486 = call %struct.Memory* @routine_movq__0x41981a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402486)
  store %struct.Memory* %call_402486, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc	 RIP: 402490	 Bytes: 5
  %loadMem1_402490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402490 = call %struct.Memory* @routine_callq_._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402490, i64 41360, i64 5, i64 5)
  store %struct.Memory* %call1_402490, %struct.Memory** %MEMORY

  %loadMem2_402490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402490 = load i64, i64* %3
  %call2_402490 = call %struct.Memory* @sub_40c620._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402490, %struct.Memory* %loadMem2_402490)
  store %struct.Memory* %call2_402490, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402495	 Bytes: 10
  %loadMem_402495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402495 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402495)
  store %struct.Memory* %call_402495, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40249f	 Bytes: 5
  %loadMem_40249f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249f = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249f)
  store %struct.Memory* %call_40249f, %struct.Memory** %MEMORY

  ; Code: movq $0x419831, %rdx	 RIP: 4024a4	 Bytes: 10
  %loadMem_4024a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a4 = call %struct.Memory* @routine_movq__0x419831___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a4)
  store %struct.Memory* %call_4024a4, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %r9d	 RIP: 4024ae	 Bytes: 6
  %loadMem_4024ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ae = call %struct.Memory* @routine_movl__0xa___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ae)
  store %struct.Memory* %call_4024ae, %struct.Memory** %MEMORY

  ; Code: movl 0x622080, %eax	 RIP: 4024b4	 Bytes: 7
  %loadMem_4024b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024b4 = call %struct.Memory* @routine_movl_0x622080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024b4)
  store %struct.Memory* %call_4024b4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x70(%rbp)	 RIP: 4024bb	 Bytes: 4
  %loadMem_4024bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bb = call %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bb)
  store %struct.Memory* %call_4024bb, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4024bf	 Bytes: 1
  %loadMem_4024bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024bf = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024bf)
  store %struct.Memory* %call_4024bf, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 4024c0	 Bytes: 3
  %loadMem_4024c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c0 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c0)
  store %struct.Memory* %call_4024c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6220c0	 RIP: 4024c3	 Bytes: 7
  %loadMem_4024c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024c3 = call %struct.Memory* @routine_movl__eax__0x6220c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024c3)
  store %struct.Memory* %call_4024c3, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 4024ca	 Bytes: 4
  %loadMem_4024ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ca = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ca)
  store %struct.Memory* %call_4024ca, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4024ce	 Bytes: 3
  %loadMem_4024ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024ce = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024ce)
  store %struct.Memory* %call_4024ce, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm19custom_constant_addImEEvPT_iPKc	 RIP: 4024d1	 Bytes: 5
  %loadMem1_4024d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4024d1 = call %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4024d1, i64 41455, i64 5, i64 5)
  store %struct.Memory* %call1_4024d1, %struct.Memory** %MEMORY

  %loadMem2_4024d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4024d1 = load i64, i64* %3
  %call2_4024d1 = call %struct.Memory* @sub_40c6c0._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4024d1, %struct.Memory* %loadMem2_4024d1)
  store %struct.Memory* %call2_4024d1, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4024d6	 Bytes: 10
  %loadMem_4024d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024d6 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024d6)
  store %struct.Memory* %call_4024d6, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4024e0	 Bytes: 5
  %loadMem_4024e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e0 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e0)
  store %struct.Memory* %call_4024e0, %struct.Memory** %MEMORY

  ; Code: movq $0x419847, %rdx	 RIP: 4024e5	 Bytes: 10
  %loadMem_4024e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024e5 = call %struct.Memory* @routine_movq__0x419847___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024e5)
  store %struct.Memory* %call_4024e5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc	 RIP: 4024ef	 Bytes: 5
  %loadMem1_4024ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4024ef = call %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4024ef, i64 41585, i64 5, i64 5)
  store %struct.Memory* %call1_4024ef, %struct.Memory** %MEMORY

  %loadMem2_4024ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4024ef = load i64, i64* %3
  %call2_4024ef = call %struct.Memory* @sub_40c760._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4024ef, %struct.Memory* %loadMem2_4024ef)
  store %struct.Memory* %call2_4024ef, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4024f4	 Bytes: 10
  %loadMem_4024f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024f4 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024f4)
  store %struct.Memory* %call_4024f4, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4024fe	 Bytes: 5
  %loadMem_4024fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024fe = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024fe)
  store %struct.Memory* %call_4024fe, %struct.Memory** %MEMORY

  ; Code: movq $0x419867, %rdx	 RIP: 402503	 Bytes: 10
  %loadMem_402503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402503 = call %struct.Memory* @routine_movq__0x419867___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402503)
  store %struct.Memory* %call_402503, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm19custom_constant_subImEEvPT_iPKc	 RIP: 40250d	 Bytes: 5
  %loadMem1_40250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40250d = call %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40250d, i64 41715, i64 5, i64 5)
  store %struct.Memory* %call1_40250d, %struct.Memory** %MEMORY

  %loadMem2_40250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40250d = load i64, i64* %3
  %call2_40250d = call %struct.Memory* @sub_40c800._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40250d, %struct.Memory* %loadMem2_40250d)
  store %struct.Memory* %call2_40250d, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402512	 Bytes: 10
  %loadMem_402512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402512 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402512)
  store %struct.Memory* %call_402512, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40251c	 Bytes: 5
  %loadMem_40251c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40251c = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40251c)
  store %struct.Memory* %call_40251c, %struct.Memory** %MEMORY

  ; Code: movq $0x419882, %rdx	 RIP: 402521	 Bytes: 10
  %loadMem_402521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402521 = call %struct.Memory* @routine_movq__0x419882___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402521)
  store %struct.Memory* %call_402521, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc	 RIP: 40252b	 Bytes: 5
  %loadMem1_40252b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40252b = call %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40252b, i64 41845, i64 5, i64 5)
  store %struct.Memory* %call1_40252b, %struct.Memory** %MEMORY

  %loadMem2_40252b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40252b = load i64, i64* %3
  %call2_40252b = call %struct.Memory* @sub_40c8a0._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40252b, %struct.Memory* %loadMem2_40252b)
  store %struct.Memory* %call2_40252b, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402530	 Bytes: 10
  %loadMem_402530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402530 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402530)
  store %struct.Memory* %call_402530, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40253a	 Bytes: 5
  %loadMem_40253a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253a = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253a)
  store %struct.Memory* %call_40253a, %struct.Memory** %MEMORY

  ; Code: movq $0x4198a7, %rdx	 RIP: 40253f	 Bytes: 10
  %loadMem_40253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40253f = call %struct.Memory* @routine_movq__0x4198a7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40253f)
  store %struct.Memory* %call_40253f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc	 RIP: 402549	 Bytes: 5
  %loadMem1_402549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402549 = call %struct.Memory* @routine_callq_._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402549, i64 41975, i64 5, i64 5)
  store %struct.Memory* %call1_402549, %struct.Memory** %MEMORY

  %loadMem2_402549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402549 = load i64, i64* %3
  %call2_402549 = call %struct.Memory* @sub_40c940._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402549, %struct.Memory* %loadMem2_402549)
  store %struct.Memory* %call2_402549, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40254e	 Bytes: 10
  %loadMem_40254e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40254e = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40254e)
  store %struct.Memory* %call_40254e, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402558	 Bytes: 5
  %loadMem_402558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402558 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402558)
  store %struct.Memory* %call_402558, %struct.Memory** %MEMORY

  ; Code: movq $0x4198c2, %rdx	 RIP: 40255d	 Bytes: 10
  %loadMem_40255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40255d = call %struct.Memory* @routine_movq__0x4198c2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40255d)
  store %struct.Memory* %call_40255d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc	 RIP: 402567	 Bytes: 5
  %loadMem1_402567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402567 = call %struct.Memory* @routine_callq_._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402567, i64 42105, i64 5, i64 5)
  store %struct.Memory* %call1_402567, %struct.Memory** %MEMORY

  %loadMem2_402567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402567 = load i64, i64* %3
  %call2_402567 = call %struct.Memory* @sub_40c9e0._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402567, %struct.Memory* %loadMem2_402567)
  store %struct.Memory* %call2_402567, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40256c	 Bytes: 10
  %loadMem_40256c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40256c = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40256c)
  store %struct.Memory* %call_40256c, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402576	 Bytes: 5
  %loadMem_402576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402576 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402576)
  store %struct.Memory* %call_402576, %struct.Memory** %MEMORY

  ; Code: movq $0x4198e8, %rdx	 RIP: 40257b	 Bytes: 10
  %loadMem_40257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40257b = call %struct.Memory* @routine_movq__0x4198e8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40257b)
  store %struct.Memory* %call_40257b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc	 RIP: 402585	 Bytes: 5
  %loadMem1_402585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402585 = call %struct.Memory* @routine_callq_._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402585, i64 42235, i64 5, i64 5)
  store %struct.Memory* %call1_402585, %struct.Memory** %MEMORY

  %loadMem2_402585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402585 = load i64, i64* %3
  %call2_402585 = call %struct.Memory* @sub_40ca80._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402585, %struct.Memory* %loadMem2_402585)
  store %struct.Memory* %call2_402585, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40258a	 Bytes: 10
  %loadMem_40258a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40258a = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40258a)
  store %struct.Memory* %call_40258a, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402594	 Bytes: 5
  %loadMem_402594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402594 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402594)
  store %struct.Memory* %call_402594, %struct.Memory** %MEMORY

  ; Code: movq $0x41990d, %rdx	 RIP: 402599	 Bytes: 10
  %loadMem_402599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402599 = call %struct.Memory* @routine_movq__0x41990d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402599)
  store %struct.Memory* %call_402599, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc	 RIP: 4025a3	 Bytes: 5
  %loadMem1_4025a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4025a3 = call %struct.Memory* @routine_callq_._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4025a3, i64 42365, i64 5, i64 5)
  store %struct.Memory* %call1_4025a3, %struct.Memory** %MEMORY

  %loadMem2_4025a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4025a3 = load i64, i64* %3
  %call2_4025a3 = call %struct.Memory* @sub_40cb20._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4025a3, %struct.Memory* %loadMem2_4025a3)
  store %struct.Memory* %call2_4025a3, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4025a8	 Bytes: 10
  %loadMem_4025a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025a8 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025a8)
  store %struct.Memory* %call_4025a8, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4025b2	 Bytes: 5
  %loadMem_4025b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b2 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b2)
  store %struct.Memory* %call_4025b2, %struct.Memory** %MEMORY

  ; Code: movq $0x419926, %rdx	 RIP: 4025b7	 Bytes: 10
  %loadMem_4025b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025b7 = call %struct.Memory* @routine_movq__0x419926___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025b7)
  store %struct.Memory* %call_4025b7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc	 RIP: 4025c1	 Bytes: 5
  %loadMem1_4025c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4025c1 = call %struct.Memory* @routine_callq_._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4025c1, i64 42495, i64 5, i64 5)
  store %struct.Memory* %call1_4025c1, %struct.Memory** %MEMORY

  %loadMem2_4025c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4025c1 = load i64, i64* %3
  %call2_4025c1 = call %struct.Memory* @sub_40cbc0._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4025c1, %struct.Memory* %loadMem2_4025c1)
  store %struct.Memory* %call2_4025c1, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4025c6	 Bytes: 10
  %loadMem_4025c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025c6 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025c6)
  store %struct.Memory* %call_4025c6, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4025d0	 Bytes: 5
  %loadMem_4025d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d0 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d0)
  store %struct.Memory* %call_4025d0, %struct.Memory** %MEMORY

  ; Code: movq $0x419949, %rdx	 RIP: 4025d5	 Bytes: 10
  %loadMem_4025d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025d5 = call %struct.Memory* @routine_movq__0x419949___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025d5)
  store %struct.Memory* %call_4025d5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc	 RIP: 4025df	 Bytes: 5
  %loadMem1_4025df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4025df = call %struct.Memory* @routine_callq_._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4025df, i64 42625, i64 5, i64 5)
  store %struct.Memory* %call1_4025df, %struct.Memory** %MEMORY

  %loadMem2_4025df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4025df = load i64, i64* %3
  %call2_4025df = call %struct.Memory* @sub_40cc60._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4025df, %struct.Memory* %loadMem2_4025df)
  store %struct.Memory* %call2_4025df, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 4025e4	 Bytes: 10
  %loadMem_4025e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025e4 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025e4)
  store %struct.Memory* %call_4025e4, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4025ee	 Bytes: 5
  %loadMem_4025ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025ee = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025ee)
  store %struct.Memory* %call_4025ee, %struct.Memory** %MEMORY

  ; Code: movq $0x41996c, %rdx	 RIP: 4025f3	 Bytes: 10
  %loadMem_4025f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4025f3 = call %struct.Memory* @routine_movq__0x41996c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4025f3)
  store %struct.Memory* %call_4025f3, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc	 RIP: 4025fd	 Bytes: 5
  %loadMem1_4025fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4025fd = call %struct.Memory* @routine_callq_._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4025fd, i64 42755, i64 5, i64 5)
  store %struct.Memory* %call1_4025fd, %struct.Memory** %MEMORY

  %loadMem2_4025fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4025fd = load i64, i64* %3
  %call2_4025fd = call %struct.Memory* @sub_40cd00._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4025fd, %struct.Memory* %loadMem2_4025fd)
  store %struct.Memory* %call2_4025fd, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402602	 Bytes: 10
  %loadMem_402602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402602 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402602)
  store %struct.Memory* %call_402602, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40260c	 Bytes: 5
  %loadMem_40260c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40260c = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40260c)
  store %struct.Memory* %call_40260c, %struct.Memory** %MEMORY

  ; Code: movq $0x41998d, %rdx	 RIP: 402611	 Bytes: 10
  %loadMem_402611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402611 = call %struct.Memory* @routine_movq__0x41998d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402611)
  store %struct.Memory* %call_402611, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm19custom_constant_andImEEvPT_iPKc	 RIP: 40261b	 Bytes: 5
  %loadMem1_40261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40261b = call %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40261b, i64 42885, i64 5, i64 5)
  store %struct.Memory* %call1_40261b, %struct.Memory** %MEMORY

  %loadMem2_40261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40261b = load i64, i64* %3
  %call2_40261b = call %struct.Memory* @sub_40cda0._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40261b, %struct.Memory* %loadMem2_40261b)
  store %struct.Memory* %call2_40261b, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402620	 Bytes: 10
  %loadMem_402620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402620 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402620)
  store %struct.Memory* %call_402620, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40262a	 Bytes: 5
  %loadMem_40262a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262a = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262a)
  store %struct.Memory* %call_40262a, %struct.Memory** %MEMORY

  ; Code: movq $0x4199a3, %rdx	 RIP: 40262f	 Bytes: 10
  %loadMem_40262f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40262f = call %struct.Memory* @routine_movq__0x4199a3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40262f)
  store %struct.Memory* %call_40262f, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc	 RIP: 402639	 Bytes: 5
  %loadMem1_402639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402639 = call %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402639, i64 43015, i64 5, i64 5)
  store %struct.Memory* %call1_402639, %struct.Memory** %MEMORY

  %loadMem2_402639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402639 = load i64, i64* %3
  %call2_402639 = call %struct.Memory* @sub_40ce40._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402639, %struct.Memory* %loadMem2_402639)
  store %struct.Memory* %call2_402639, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40263e	 Bytes: 10
  %loadMem_40263e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40263e = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40263e)
  store %struct.Memory* %call_40263e, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402648	 Bytes: 5
  %loadMem_402648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402648 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402648)
  store %struct.Memory* %call_402648, %struct.Memory** %MEMORY

  ; Code: movq $0x4199c2, %rdx	 RIP: 40264d	 Bytes: 10
  %loadMem_40264d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40264d = call %struct.Memory* @routine_movq__0x4199c2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40264d)
  store %struct.Memory* %call_40264d, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm18custom_constant_orImEEvPT_iPKc	 RIP: 402657	 Bytes: 5
  %loadMem1_402657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402657 = call %struct.Memory* @routine_callq_._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402657, i64 43145, i64 5, i64 5)
  store %struct.Memory* %call1_402657, %struct.Memory** %MEMORY

  %loadMem2_402657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402657 = load i64, i64* %3
  %call2_402657 = call %struct.Memory* @sub_40cee0._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402657, %struct.Memory* %loadMem2_402657)
  store %struct.Memory* %call2_402657, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40265c	 Bytes: 10
  %loadMem_40265c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40265c = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40265c)
  store %struct.Memory* %call_40265c, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402666	 Bytes: 5
  %loadMem_402666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402666 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402666)
  store %struct.Memory* %call_402666, %struct.Memory** %MEMORY

  ; Code: movq $0x4199d7, %rdx	 RIP: 40266b	 Bytes: 10
  %loadMem_40266b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40266b = call %struct.Memory* @routine_movq__0x4199d7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40266b)
  store %struct.Memory* %call_40266b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc	 RIP: 402675	 Bytes: 5
  %loadMem1_402675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402675 = call %struct.Memory* @routine_callq_._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402675, i64 43275, i64 5, i64 5)
  store %struct.Memory* %call1_402675, %struct.Memory** %MEMORY

  %loadMem2_402675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402675 = load i64, i64* %3
  %call2_402675 = call %struct.Memory* @sub_40cf80._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402675, %struct.Memory* %loadMem2_402675)
  store %struct.Memory* %call2_402675, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 40267a	 Bytes: 10
  %loadMem_40267a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40267a = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40267a)
  store %struct.Memory* %call_40267a, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402684	 Bytes: 5
  %loadMem_402684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402684 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402684)
  store %struct.Memory* %call_402684, %struct.Memory** %MEMORY

  ; Code: movq $0x4199f5, %rdx	 RIP: 402689	 Bytes: 10
  %loadMem_402689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402689 = call %struct.Memory* @routine_movq__0x4199f5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402689)
  store %struct.Memory* %call_402689, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc	 RIP: 402693	 Bytes: 5
  %loadMem1_402693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402693 = call %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402693, i64 43405, i64 5, i64 5)
  store %struct.Memory* %call1_402693, %struct.Memory** %MEMORY

  %loadMem2_402693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402693 = load i64, i64* %3
  %call2_402693 = call %struct.Memory* @sub_40d020._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402693, %struct.Memory* %loadMem2_402693)
  store %struct.Memory* %call2_402693, %struct.Memory** %MEMORY

  ; Code: movq $0x6397d0, %rdi	 RIP: 402698	 Bytes: 10
  %loadMem_402698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402698 = call %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402698)
  store %struct.Memory* %call_402698, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4026a2	 Bytes: 5
  %loadMem_4026a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a2 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a2)
  store %struct.Memory* %call_4026a2, %struct.Memory** %MEMORY

  ; Code: movq $0x419a0b, %rdx	 RIP: 4026a7	 Bytes: 10
  %loadMem_4026a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026a7 = call %struct.Memory* @routine_movq__0x419a0b___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026a7)
  store %struct.Memory* %call_4026a7, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc	 RIP: 4026b1	 Bytes: 5
  %loadMem1_4026b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4026b1 = call %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4026b1, i64 43535, i64 5, i64 5)
  store %struct.Memory* %call1_4026b1, %struct.Memory** %MEMORY

  %loadMem2_4026b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4026b1 = load i64, i64* %3
  %call2_4026b1 = call %struct.Memory* @sub_40d0c0._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4026b1, %struct.Memory* %loadMem2_4026b1)
  store %struct.Memory* %call2_4026b1, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rcx	 RIP: 4026b6	 Bytes: 10
  %loadMem_4026b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026b6 = call %struct.Memory* @routine_movq__0x631ad0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026b6)
  store %struct.Memory* %call_4026b6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4026c0	 Bytes: 3
  %loadMem_4026c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c0 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c0)
  store %struct.Memory* %call_4026c0, %struct.Memory** %MEMORY

  ; Code: addq $0x7d00, %rdx	 RIP: 4026c3	 Bytes: 7
  %loadMem_4026c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026c3 = call %struct.Memory* @routine_addq__0x7d00___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026c3)
  store %struct.Memory* %call_4026c3, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss 0x622088, %xmm0	 RIP: 4026ca	 Bytes: 9
  %loadMem_4026ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ca = call %struct.Memory* @routine_cvtsd2ss_0x622088___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ca)
  store %struct.Memory* %call_4026ca, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4026d3	 Bytes: 3
  %loadMem_4026d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d3 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d3)
  store %struct.Memory* %call_4026d3, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 4026d6	 Bytes: 3
  %loadMem_4026d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026d6 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026d6)
  store %struct.Memory* %call_4026d6, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPffEvT_S1_T0_	 RIP: 4026d9	 Bytes: 5
  %loadMem1_4026d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4026d9 = call %struct.Memory* @routine_callq_._Z4fillIPffEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4026d9, i64 43655, i64 5, i64 5)
  store %struct.Memory* %call1_4026d9, %struct.Memory** %MEMORY

  %loadMem2_4026d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4026d9 = load i64, i64* %3
  %call2_4026d9 = call %struct.Memory* @sub_40d160._Z4fillIPffEvT_S1_T0_(%struct.State* %0, i64  %loadPC_4026d9, %struct.Memory* %loadMem2_4026d9)
  store %struct.Memory* %call2_4026d9, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 4026de	 Bytes: 10
  %loadMem_4026de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026de = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026de)
  store %struct.Memory* %call_4026de, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4026e8	 Bytes: 5
  %loadMem_4026e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026e8 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026e8)
  store %struct.Memory* %call_4026e8, %struct.Memory** %MEMORY

  ; Code: movq $0x419a2a, %rdx	 RIP: 4026ed	 Bytes: 10
  %loadMem_4026ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026ed = call %struct.Memory* @routine_movq__0x419a2a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026ed)
  store %struct.Memory* %call_4026ed, %struct.Memory** %MEMORY

  ; Code: movl 0x622080, %eax	 RIP: 4026f7	 Bytes: 7
  %loadMem_4026f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026f7 = call %struct.Memory* @routine_movl_0x622080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026f7)
  store %struct.Memory* %call_4026f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6220c0	 RIP: 4026fe	 Bytes: 7
  %loadMem_4026fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4026fe = call %struct.Memory* @routine_movl__eax__0x6220c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4026fe)
  store %struct.Memory* %call_4026fe, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf10custom_twoIfEEvPT_iPKc	 RIP: 402705	 Bytes: 5
  %loadMem1_402705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402705 = call %struct.Memory* @routine_callq_._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402705, i64 43675, i64 5, i64 5)
  store %struct.Memory* %call1_402705, %struct.Memory** %MEMORY

  %loadMem2_402705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402705 = load i64, i64* %3
  %call2_402705 = call %struct.Memory* @sub_40d1a0._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402705, %struct.Memory* %loadMem2_402705)
  store %struct.Memory* %call2_402705, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 40270a	 Bytes: 10
  %loadMem_40270a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40270a = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40270a)
  store %struct.Memory* %call_40270a, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402714	 Bytes: 5
  %loadMem_402714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402714 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402714)
  store %struct.Memory* %call_402714, %struct.Memory** %MEMORY

  ; Code: movq $0x419a39, %rdx	 RIP: 402719	 Bytes: 10
  %loadMem_402719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402719 = call %struct.Memory* @routine_movq__0x419a39___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402719)
  store %struct.Memory* %call_402719, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc	 RIP: 402723	 Bytes: 5
  %loadMem1_402723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402723 = call %struct.Memory* @routine_callq_._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402723, i64 43805, i64 5, i64 5)
  store %struct.Memory* %call1_402723, %struct.Memory** %MEMORY

  %loadMem2_402723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402723 = load i64, i64* %3
  %call2_402723 = call %struct.Memory* @sub_40d240._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402723, %struct.Memory* %loadMem2_402723)
  store %struct.Memory* %call2_402723, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402728	 Bytes: 10
  %loadMem_402728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402728 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402728)
  store %struct.Memory* %call_402728, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402732	 Bytes: 5
  %loadMem_402732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402732 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402732)
  store %struct.Memory* %call_402732, %struct.Memory** %MEMORY

  ; Code: movq $0x419a4d, %rdx	 RIP: 402737	 Bytes: 10
  %loadMem_402737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402737 = call %struct.Memory* @routine_movq__0x419a4d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402737)
  store %struct.Memory* %call_402737, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc	 RIP: 402741	 Bytes: 5
  %loadMem1_402741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402741 = call %struct.Memory* @routine_callq_._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402741, i64 43935, i64 5, i64 5)
  store %struct.Memory* %call1_402741, %struct.Memory** %MEMORY

  %loadMem2_402741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402741 = load i64, i64* %3
  %call2_402741 = call %struct.Memory* @sub_40d2e0._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402741, %struct.Memory* %loadMem2_402741)
  store %struct.Memory* %call2_402741, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402746	 Bytes: 10
  %loadMem_402746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402746 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402746)
  store %struct.Memory* %call_402746, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402750	 Bytes: 5
  %loadMem_402750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402750 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402750)
  store %struct.Memory* %call_402750, %struct.Memory** %MEMORY

  ; Code: movq $0x419a66, %rdx	 RIP: 402755	 Bytes: 10
  %loadMem_402755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402755 = call %struct.Memory* @routine_movq__0x419a66___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402755)
  store %struct.Memory* %call_402755, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc	 RIP: 40275f	 Bytes: 5
  %loadMem1_40275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40275f = call %struct.Memory* @routine_callq_._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40275f, i64 44065, i64 5, i64 5)
  store %struct.Memory* %call1_40275f, %struct.Memory** %MEMORY

  %loadMem2_40275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40275f = load i64, i64* %3
  %call2_40275f = call %struct.Memory* @sub_40d380._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40275f, %struct.Memory* %loadMem2_40275f)
  store %struct.Memory* %call2_40275f, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402764	 Bytes: 10
  %loadMem_402764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402764 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402764)
  store %struct.Memory* %call_402764, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40276e	 Bytes: 5
  %loadMem_40276e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40276e = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40276e)
  store %struct.Memory* %call_40276e, %struct.Memory** %MEMORY

  ; Code: movq $0x419a7f, %rdx	 RIP: 402773	 Bytes: 10
  %loadMem_402773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402773 = call %struct.Memory* @routine_movq__0x419a7f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402773)
  store %struct.Memory* %call_402773, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc	 RIP: 40277d	 Bytes: 5
  %loadMem1_40277d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40277d = call %struct.Memory* @routine_callq_._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40277d, i64 44195, i64 5, i64 5)
  store %struct.Memory* %call1_40277d, %struct.Memory** %MEMORY

  %loadMem2_40277d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40277d = load i64, i64* %3
  %call2_40277d = call %struct.Memory* @sub_40d420._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40277d, %struct.Memory* %loadMem2_40277d)
  store %struct.Memory* %call2_40277d, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402782	 Bytes: 10
  %loadMem_402782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402782 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402782)
  store %struct.Memory* %call_402782, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40278c	 Bytes: 5
  %loadMem_40278c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40278c = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40278c)
  store %struct.Memory* %call_40278c, %struct.Memory** %MEMORY

  ; Code: movq $0x419a96, %rdx	 RIP: 402791	 Bytes: 10
  %loadMem_402791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402791 = call %struct.Memory* @routine_movq__0x419a96___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402791)
  store %struct.Memory* %call_402791, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 40279b	 Bytes: 5
  %loadMem_40279b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40279b = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40279b)
  store %struct.Memory* %call_40279b, %struct.Memory** %MEMORY

  ; Code: movl 0x622080, %r9d	 RIP: 4027a0	 Bytes: 8
  %loadMem_4027a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a0 = call %struct.Memory* @routine_movl_0x622080___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a0)
  store %struct.Memory* %call_4027a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 4027a8	 Bytes: 3
  %loadMem_4027a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027a8 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027a8)
  store %struct.Memory* %call_4027a8, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 4027ab	 Bytes: 3
  %loadMem_4027ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ab = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ab)
  store %struct.Memory* %call_4027ab, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x80(%rbp)	 RIP: 4027ae	 Bytes: 4
  %loadMem_4027ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ae = call %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ae)
  store %struct.Memory* %call_4027ae, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4027b2	 Bytes: 1
  %loadMem_4027b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b2)
  store %struct.Memory* %call_4027b2, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %r9d	 RIP: 4027b3	 Bytes: 4
  %loadMem_4027b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b3 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b3)
  store %struct.Memory* %call_4027b3, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 4027b7	 Bytes: 3
  %loadMem_4027b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027b7 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027b7)
  store %struct.Memory* %call_4027b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6220c0	 RIP: 4027ba	 Bytes: 7
  %loadMem_4027ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027ba = call %struct.Memory* @routine_movl__eax__0x6220c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027ba)
  store %struct.Memory* %call_4027ba, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 4027c1	 Bytes: 4
  %loadMem_4027c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c1 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c1)
  store %struct.Memory* %call_4027c1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4027c5	 Bytes: 3
  %loadMem_4027c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027c5 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027c5)
  store %struct.Memory* %call_4027c5, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc	 RIP: 4027c8	 Bytes: 5
  %loadMem1_4027c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4027c8 = call %struct.Memory* @routine_callq_._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4027c8, i64 44280, i64 5, i64 5)
  store %struct.Memory* %call1_4027c8, %struct.Memory** %MEMORY

  %loadMem2_4027c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4027c8 = load i64, i64* %3
  %call2_4027c8 = call %struct.Memory* @sub_40d4c0._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4027c8, %struct.Memory* %loadMem2_4027c8)
  store %struct.Memory* %call2_4027c8, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 4027cd	 Bytes: 10
  %loadMem_4027cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027cd = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027cd)
  store %struct.Memory* %call_4027cd, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4027d7	 Bytes: 5
  %loadMem_4027d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027d7 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027d7)
  store %struct.Memory* %call_4027d7, %struct.Memory** %MEMORY

  ; Code: movq $0x419aa9, %rdx	 RIP: 4027dc	 Bytes: 10
  %loadMem_4027dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027dc = call %struct.Memory* @routine_movq__0x419aa9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027dc)
  store %struct.Memory* %call_4027dc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc	 RIP: 4027e6	 Bytes: 5
  %loadMem1_4027e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4027e6 = call %struct.Memory* @routine_callq_._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4027e6, i64 44410, i64 5, i64 5)
  store %struct.Memory* %call1_4027e6, %struct.Memory** %MEMORY

  %loadMem2_4027e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4027e6 = load i64, i64* %3
  %call2_4027e6 = call %struct.Memory* @sub_40d560._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4027e6, %struct.Memory* %loadMem2_4027e6)
  store %struct.Memory* %call2_4027e6, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 4027eb	 Bytes: 10
  %loadMem_4027eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027eb = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027eb)
  store %struct.Memory* %call_4027eb, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4027f5	 Bytes: 5
  %loadMem_4027f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027f5 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027f5)
  store %struct.Memory* %call_4027f5, %struct.Memory** %MEMORY

  ; Code: movq $0x419ac6, %rdx	 RIP: 4027fa	 Bytes: 10
  %loadMem_4027fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4027fa = call %struct.Memory* @routine_movq__0x419ac6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4027fa)
  store %struct.Memory* %call_4027fa, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc	 RIP: 402804	 Bytes: 5
  %loadMem1_402804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402804 = call %struct.Memory* @routine_callq_._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402804, i64 44540, i64 5, i64 5)
  store %struct.Memory* %call1_402804, %struct.Memory** %MEMORY

  %loadMem2_402804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402804 = load i64, i64* %3
  %call2_402804 = call %struct.Memory* @sub_40d600._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402804, %struct.Memory* %loadMem2_402804)
  store %struct.Memory* %call2_402804, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402809	 Bytes: 10
  %loadMem_402809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402809 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402809)
  store %struct.Memory* %call_402809, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402813	 Bytes: 5
  %loadMem_402813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402813 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402813)
  store %struct.Memory* %call_402813, %struct.Memory** %MEMORY

  ; Code: movq $0x419ade, %rdx	 RIP: 402818	 Bytes: 10
  %loadMem_402818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402818 = call %struct.Memory* @routine_movq__0x419ade___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402818)
  store %struct.Memory* %call_402818, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc	 RIP: 402822	 Bytes: 5
  %loadMem1_402822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402822 = call %struct.Memory* @routine_callq_._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402822, i64 44670, i64 5, i64 5)
  store %struct.Memory* %call1_402822, %struct.Memory** %MEMORY

  %loadMem2_402822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402822 = load i64, i64* %3
  %call2_402822 = call %struct.Memory* @sub_40d6a0._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402822, %struct.Memory* %loadMem2_402822)
  store %struct.Memory* %call2_402822, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402827	 Bytes: 10
  %loadMem_402827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402827 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402827)
  store %struct.Memory* %call_402827, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402831	 Bytes: 5
  %loadMem_402831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402831 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402831)
  store %struct.Memory* %call_402831, %struct.Memory** %MEMORY

  ; Code: movq $0x419b00, %rdx	 RIP: 402836	 Bytes: 10
  %loadMem_402836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402836 = call %struct.Memory* @routine_movq__0x419b00___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402836)
  store %struct.Memory* %call_402836, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc	 RIP: 402840	 Bytes: 5
  %loadMem1_402840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402840 = call %struct.Memory* @routine_callq_._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402840, i64 44800, i64 5, i64 5)
  store %struct.Memory* %call1_402840, %struct.Memory** %MEMORY

  %loadMem2_402840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402840 = load i64, i64* %3
  %call2_402840 = call %struct.Memory* @sub_40d740._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402840, %struct.Memory* %loadMem2_402840)
  store %struct.Memory* %call2_402840, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402845	 Bytes: 10
  %loadMem_402845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402845 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402845)
  store %struct.Memory* %call_402845, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40284f	 Bytes: 5
  %loadMem_40284f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40284f = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40284f)
  store %struct.Memory* %call_40284f, %struct.Memory** %MEMORY

  ; Code: movq $0x419b18, %rdx	 RIP: 402854	 Bytes: 10
  %loadMem_402854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402854 = call %struct.Memory* @routine_movq__0x419b18___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402854)
  store %struct.Memory* %call_402854, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc	 RIP: 40285e	 Bytes: 5
  %loadMem1_40285e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40285e = call %struct.Memory* @routine_callq_._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40285e, i64 44930, i64 5, i64 5)
  store %struct.Memory* %call1_40285e, %struct.Memory** %MEMORY

  %loadMem2_40285e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40285e = load i64, i64* %3
  %call2_40285e = call %struct.Memory* @sub_40d7e0._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40285e, %struct.Memory* %loadMem2_40285e)
  store %struct.Memory* %call2_40285e, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402863	 Bytes: 10
  %loadMem_402863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402863 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402863)
  store %struct.Memory* %call_402863, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40286d	 Bytes: 5
  %loadMem_40286d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40286d = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40286d)
  store %struct.Memory* %call_40286d, %struct.Memory** %MEMORY

  ; Code: movq $0x419b3b, %rdx	 RIP: 402872	 Bytes: 10
  %loadMem_402872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402872 = call %struct.Memory* @routine_movq__0x419b3b___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402872)
  store %struct.Memory* %call_402872, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc	 RIP: 40287c	 Bytes: 5
  %loadMem1_40287c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40287c = call %struct.Memory* @routine_callq_._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40287c, i64 45060, i64 5, i64 5)
  store %struct.Memory* %call1_40287c, %struct.Memory** %MEMORY

  %loadMem2_40287c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40287c = load i64, i64* %3
  %call2_40287c = call %struct.Memory* @sub_40d880._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40287c, %struct.Memory* %loadMem2_40287c)
  store %struct.Memory* %call2_40287c, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 402881	 Bytes: 10
  %loadMem_402881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402881 = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402881)
  store %struct.Memory* %call_402881, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40288b	 Bytes: 5
  %loadMem_40288b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40288b = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40288b)
  store %struct.Memory* %call_40288b, %struct.Memory** %MEMORY

  ; Code: movq $0x419b5d, %rdx	 RIP: 402890	 Bytes: 10
  %loadMem_402890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402890 = call %struct.Memory* @routine_movq__0x419b5d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402890)
  store %struct.Memory* %call_402890, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc	 RIP: 40289a	 Bytes: 5
  %loadMem1_40289a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40289a = call %struct.Memory* @routine_callq_._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40289a, i64 45190, i64 5, i64 5)
  store %struct.Memory* %call1_40289a, %struct.Memory** %MEMORY

  %loadMem2_40289a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40289a = load i64, i64* %3
  %call2_40289a = call %struct.Memory* @sub_40d920._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_40289a, %struct.Memory* %loadMem2_40289a)
  store %struct.Memory* %call2_40289a, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 40289f	 Bytes: 10
  %loadMem_40289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40289f = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40289f)
  store %struct.Memory* %call_40289f, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4028a9	 Bytes: 5
  %loadMem_4028a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028a9 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028a9)
  store %struct.Memory* %call_4028a9, %struct.Memory** %MEMORY

  ; Code: movq $0x419b73, %rdx	 RIP: 4028ae	 Bytes: 10
  %loadMem_4028ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ae = call %struct.Memory* @routine_movq__0x419b73___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ae)
  store %struct.Memory* %call_4028ae, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc	 RIP: 4028b8	 Bytes: 5
  %loadMem1_4028b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4028b8 = call %struct.Memory* @routine_callq_._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4028b8, i64 45320, i64 5, i64 5)
  store %struct.Memory* %call1_4028b8, %struct.Memory** %MEMORY

  %loadMem2_4028b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4028b8 = load i64, i64* %3
  %call2_4028b8 = call %struct.Memory* @sub_40d9c0._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4028b8, %struct.Memory* %loadMem2_4028b8)
  store %struct.Memory* %call2_4028b8, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 4028bd	 Bytes: 10
  %loadMem_4028bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028bd = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028bd)
  store %struct.Memory* %call_4028bd, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4028c7	 Bytes: 5
  %loadMem_4028c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028c7 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028c7)
  store %struct.Memory* %call_4028c7, %struct.Memory** %MEMORY

  ; Code: movq $0x419b93, %rdx	 RIP: 4028cc	 Bytes: 10
  %loadMem_4028cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028cc = call %struct.Memory* @routine_movq__0x419b93___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028cc)
  store %struct.Memory* %call_4028cc, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc	 RIP: 4028d6	 Bytes: 5
  %loadMem1_4028d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4028d6 = call %struct.Memory* @routine_callq_._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4028d6, i64 45450, i64 5, i64 5)
  store %struct.Memory* %call1_4028d6, %struct.Memory** %MEMORY

  %loadMem2_4028d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4028d6 = load i64, i64* %3
  %call2_4028d6 = call %struct.Memory* @sub_40da60._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4028d6, %struct.Memory* %loadMem2_4028d6)
  store %struct.Memory* %call2_4028d6, %struct.Memory** %MEMORY

  ; Code: movq $0x631ad0, %rdi	 RIP: 4028db	 Bytes: 10
  %loadMem_4028db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028db = call %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028db)
  store %struct.Memory* %call_4028db, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4028e5	 Bytes: 5
  %loadMem_4028e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028e5 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028e5)
  store %struct.Memory* %call_4028e5, %struct.Memory** %MEMORY

  ; Code: movq $0x419bb3, %rdx	 RIP: 4028ea	 Bytes: 10
  %loadMem_4028ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028ea = call %struct.Memory* @routine_movq__0x419bb3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028ea)
  store %struct.Memory* %call_4028ea, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc	 RIP: 4028f4	 Bytes: 5
  %loadMem1_4028f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4028f4 = call %struct.Memory* @routine_callq_._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4028f4, i64 45580, i64 5, i64 5)
  store %struct.Memory* %call1_4028f4, %struct.Memory** %MEMORY

  %loadMem2_4028f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4028f4 = load i64, i64* %3
  %call2_4028f4 = call %struct.Memory* @sub_40db00._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4028f4, %struct.Memory* %loadMem2_4028f4)
  store %struct.Memory* %call2_4028f4, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rcx	 RIP: 4028f9	 Bytes: 10
  %loadMem_4028f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4028f9 = call %struct.Memory* @routine_movq__0x6220d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4028f9)
  store %struct.Memory* %call_4028f9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 402903	 Bytes: 3
  %loadMem_402903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402903 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402903)
  store %struct.Memory* %call_402903, %struct.Memory** %MEMORY

  ; Code: addq $0xfa00, %rdx	 RIP: 402906	 Bytes: 7
  %loadMem_402906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402906 = call %struct.Memory* @routine_addq__0xfa00___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402906)
  store %struct.Memory* %call_402906, %struct.Memory** %MEMORY

  ; Code: movsd 0x622088, %xmm0	 RIP: 40290d	 Bytes: 9
  %loadMem_40290d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40290d = call %struct.Memory* @routine_movsd_0x622088___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40290d)
  store %struct.Memory* %call_40290d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 402916	 Bytes: 3
  %loadMem_402916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402916 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402916)
  store %struct.Memory* %call_402916, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 402919	 Bytes: 3
  %loadMem_402919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402919 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402919)
  store %struct.Memory* %call_402919, %struct.Memory** %MEMORY

  ; Code: callq ._Z4fillIPddEvT_S1_T0_	 RIP: 40291c	 Bytes: 5
  %loadMem1_40291c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40291c = call %struct.Memory* @routine_callq_._Z4fillIPddEvT_S1_T0_(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40291c, i64 45700, i64 5, i64 5)
  store %struct.Memory* %call1_40291c, %struct.Memory** %MEMORY

  %loadMem2_40291c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40291c = load i64, i64* %3
  %call2_40291c = call %struct.Memory* @sub_40dba0._Z4fillIPddEvT_S1_T0_(%struct.State* %0, i64  %loadPC_40291c, %struct.Memory* %loadMem2_40291c)
  store %struct.Memory* %call2_40291c, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402921	 Bytes: 10
  %loadMem_402921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402921 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402921)
  store %struct.Memory* %call_402921, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 40292b	 Bytes: 5
  %loadMem_40292b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40292b = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40292b)
  store %struct.Memory* %call_40292b, %struct.Memory** %MEMORY

  ; Code: movq $0x419bd1, %rdx	 RIP: 402930	 Bytes: 10
  %loadMem_402930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402930 = call %struct.Memory* @routine_movq__0x419bd1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402930)
  store %struct.Memory* %call_402930, %struct.Memory** %MEMORY

  ; Code: movl 0x622080, %eax	 RIP: 40293a	 Bytes: 7
  %loadMem_40293a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40293a = call %struct.Memory* @routine_movl_0x622080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40293a)
  store %struct.Memory* %call_40293a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6220c0	 RIP: 402941	 Bytes: 7
  %loadMem_402941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402941 = call %struct.Memory* @routine_movl__eax__0x6220c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402941)
  store %struct.Memory* %call_402941, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId10custom_twoIdEEvPT_iPKc	 RIP: 402948	 Bytes: 5
  %loadMem1_402948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402948 = call %struct.Memory* @routine_callq_._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402948, i64 45720, i64 5, i64 5)
  store %struct.Memory* %call1_402948, %struct.Memory** %MEMORY

  %loadMem2_402948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402948 = load i64, i64* %3
  %call2_402948 = call %struct.Memory* @sub_40dbe0._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402948, %struct.Memory* %loadMem2_402948)
  store %struct.Memory* %call2_402948, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 40294d	 Bytes: 10
  %loadMem_40294d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40294d = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40294d)
  store %struct.Memory* %call_40294d, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402957	 Bytes: 5
  %loadMem_402957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402957 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402957)
  store %struct.Memory* %call_402957, %struct.Memory** %MEMORY

  ; Code: movq $0x419be1, %rdx	 RIP: 40295c	 Bytes: 10
  %loadMem_40295c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40295c = call %struct.Memory* @routine_movq__0x419be1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40295c)
  store %struct.Memory* %call_40295c, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc	 RIP: 402966	 Bytes: 5
  %loadMem1_402966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402966 = call %struct.Memory* @routine_callq_._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402966, i64 45850, i64 5, i64 5)
  store %struct.Memory* %call1_402966, %struct.Memory** %MEMORY

  %loadMem2_402966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402966 = load i64, i64* %3
  %call2_402966 = call %struct.Memory* @sub_40dc80._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402966, %struct.Memory* %loadMem2_402966)
  store %struct.Memory* %call2_402966, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 40296b	 Bytes: 10
  %loadMem_40296b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40296b = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40296b)
  store %struct.Memory* %call_40296b, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402975	 Bytes: 5
  %loadMem_402975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402975 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402975)
  store %struct.Memory* %call_402975, %struct.Memory** %MEMORY

  ; Code: movq $0x419bf6, %rdx	 RIP: 40297a	 Bytes: 10
  %loadMem_40297a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40297a = call %struct.Memory* @routine_movq__0x419bf6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40297a)
  store %struct.Memory* %call_40297a, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc	 RIP: 402984	 Bytes: 5
  %loadMem1_402984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402984 = call %struct.Memory* @routine_callq_._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402984, i64 45980, i64 5, i64 5)
  store %struct.Memory* %call1_402984, %struct.Memory** %MEMORY

  %loadMem2_402984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402984 = load i64, i64* %3
  %call2_402984 = call %struct.Memory* @sub_40dd20._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402984, %struct.Memory* %loadMem2_402984)
  store %struct.Memory* %call2_402984, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402989	 Bytes: 10
  %loadMem_402989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402989 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402989)
  store %struct.Memory* %call_402989, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402993	 Bytes: 5
  %loadMem_402993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402993 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402993)
  store %struct.Memory* %call_402993, %struct.Memory** %MEMORY

  ; Code: movq $0x419c10, %rdx	 RIP: 402998	 Bytes: 10
  %loadMem_402998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402998 = call %struct.Memory* @routine_movq__0x419c10___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402998)
  store %struct.Memory* %call_402998, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc	 RIP: 4029a2	 Bytes: 5
  %loadMem1_4029a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4029a2 = call %struct.Memory* @routine_callq_._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4029a2, i64 46110, i64 5, i64 5)
  store %struct.Memory* %call1_4029a2, %struct.Memory** %MEMORY

  %loadMem2_4029a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4029a2 = load i64, i64* %3
  %call2_4029a2 = call %struct.Memory* @sub_40ddc0._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4029a2, %struct.Memory* %loadMem2_4029a2)
  store %struct.Memory* %call2_4029a2, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 4029a7	 Bytes: 10
  %loadMem_4029a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029a7 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029a7)
  store %struct.Memory* %call_4029a7, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4029b1	 Bytes: 5
  %loadMem_4029b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b1 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b1)
  store %struct.Memory* %call_4029b1, %struct.Memory** %MEMORY

  ; Code: movq $0x419c2a, %rdx	 RIP: 4029b6	 Bytes: 10
  %loadMem_4029b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029b6 = call %struct.Memory* @routine_movq__0x419c2a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029b6)
  store %struct.Memory* %call_4029b6, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc	 RIP: 4029c0	 Bytes: 5
  %loadMem1_4029c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4029c0 = call %struct.Memory* @routine_callq_._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4029c0, i64 46240, i64 5, i64 5)
  store %struct.Memory* %call1_4029c0, %struct.Memory** %MEMORY

  %loadMem2_4029c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4029c0 = load i64, i64* %3
  %call2_4029c0 = call %struct.Memory* @sub_40de60._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_4029c0, %struct.Memory* %loadMem2_4029c0)
  store %struct.Memory* %call2_4029c0, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 4029c5	 Bytes: 10
  %loadMem_4029c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029c5 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029c5)
  store %struct.Memory* %call_4029c5, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 4029cf	 Bytes: 5
  %loadMem_4029cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029cf = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029cf)
  store %struct.Memory* %call_4029cf, %struct.Memory** %MEMORY

  ; Code: movq $0x419c42, %rdx	 RIP: 4029d4	 Bytes: 10
  %loadMem_4029d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029d4 = call %struct.Memory* @routine_movq__0x419c42___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029d4)
  store %struct.Memory* %call_4029d4, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 4029de	 Bytes: 5
  %loadMem_4029de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029de = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029de)
  store %struct.Memory* %call_4029de, %struct.Memory** %MEMORY

  ; Code: movl 0x622080, %r9d	 RIP: 4029e3	 Bytes: 8
  %loadMem_4029e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029e3 = call %struct.Memory* @routine_movl_0x622080___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029e3)
  store %struct.Memory* %call_4029e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 4029eb	 Bytes: 6
  %loadMem_4029eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029eb = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029eb)
  store %struct.Memory* %call_4029eb, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 4029f1	 Bytes: 3
  %loadMem_4029f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f1 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f1)
  store %struct.Memory* %call_4029f1, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x90(%rbp)	 RIP: 4029f4	 Bytes: 7
  %loadMem_4029f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029f4 = call %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029f4)
  store %struct.Memory* %call_4029f4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4029fb	 Bytes: 1
  %loadMem_4029fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029fb = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029fb)
  store %struct.Memory* %call_4029fb, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %r9d	 RIP: 4029fc	 Bytes: 7
  %loadMem_4029fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4029fc = call %struct.Memory* @routine_movl_MINUS0x84__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4029fc)
  store %struct.Memory* %call_4029fc, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 402a03	 Bytes: 3
  %loadMem_402a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a03 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a03)
  store %struct.Memory* %call_402a03, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6220c0	 RIP: 402a06	 Bytes: 7
  %loadMem_402a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a06 = call %struct.Memory* @routine_movl__eax__0x6220c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a06)
  store %struct.Memory* %call_402a06, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 402a0d	 Bytes: 7
  %loadMem_402a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a0d = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a0d)
  store %struct.Memory* %call_402a0d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 402a14	 Bytes: 3
  %loadMem_402a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a14 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a14)
  store %struct.Memory* %call_402a14, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId19custom_constant_addIdEEvPT_iPKc	 RIP: 402a17	 Bytes: 5
  %loadMem1_402a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402a17 = call %struct.Memory* @routine_callq_._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402a17, i64 46313, i64 5, i64 5)
  store %struct.Memory* %call1_402a17, %struct.Memory** %MEMORY

  %loadMem2_402a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402a17 = load i64, i64* %3
  %call2_402a17 = call %struct.Memory* @sub_40df00._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402a17, %struct.Memory* %loadMem2_402a17)
  store %struct.Memory* %call2_402a17, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402a1c	 Bytes: 10
  %loadMem_402a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a1c = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a1c)
  store %struct.Memory* %call_402a1c, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402a26	 Bytes: 5
  %loadMem_402a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a26 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a26)
  store %struct.Memory* %call_402a26, %struct.Memory** %MEMORY

  ; Code: movq $0x419c56, %rdx	 RIP: 402a2b	 Bytes: 10
  %loadMem_402a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a2b = call %struct.Memory* @routine_movq__0x419c56___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a2b)
  store %struct.Memory* %call_402a2b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc	 RIP: 402a35	 Bytes: 5
  %loadMem1_402a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402a35 = call %struct.Memory* @routine_callq_._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402a35, i64 46443, i64 5, i64 5)
  store %struct.Memory* %call1_402a35, %struct.Memory** %MEMORY

  %loadMem2_402a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402a35 = load i64, i64* %3
  %call2_402a35 = call %struct.Memory* @sub_40dfa0._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402a35, %struct.Memory* %loadMem2_402a35)
  store %struct.Memory* %call2_402a35, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402a3a	 Bytes: 10
  %loadMem_402a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a3a = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a3a)
  store %struct.Memory* %call_402a3a, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402a44	 Bytes: 5
  %loadMem_402a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a44 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a44)
  store %struct.Memory* %call_402a44, %struct.Memory** %MEMORY

  ; Code: movq $0x419c74, %rdx	 RIP: 402a49	 Bytes: 10
  %loadMem_402a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a49 = call %struct.Memory* @routine_movq__0x419c74___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a49)
  store %struct.Memory* %call_402a49, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId19custom_constant_subIdEEvPT_iPKc	 RIP: 402a53	 Bytes: 5
  %loadMem1_402a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402a53 = call %struct.Memory* @routine_callq_._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402a53, i64 46573, i64 5, i64 5)
  store %struct.Memory* %call1_402a53, %struct.Memory** %MEMORY

  %loadMem2_402a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402a53 = load i64, i64* %3
  %call2_402a53 = call %struct.Memory* @sub_40e040._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402a53, %struct.Memory* %loadMem2_402a53)
  store %struct.Memory* %call2_402a53, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402a58	 Bytes: 10
  %loadMem_402a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a58 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a58)
  store %struct.Memory* %call_402a58, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402a62	 Bytes: 5
  %loadMem_402a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a62 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a62)
  store %struct.Memory* %call_402a62, %struct.Memory** %MEMORY

  ; Code: movq $0x419c8d, %rdx	 RIP: 402a67	 Bytes: 10
  %loadMem_402a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a67 = call %struct.Memory* @routine_movq__0x419c8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a67)
  store %struct.Memory* %call_402a67, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc	 RIP: 402a71	 Bytes: 5
  %loadMem1_402a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402a71 = call %struct.Memory* @routine_callq_._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402a71, i64 46703, i64 5, i64 5)
  store %struct.Memory* %call1_402a71, %struct.Memory** %MEMORY

  %loadMem2_402a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402a71 = load i64, i64* %3
  %call2_402a71 = call %struct.Memory* @sub_40e0e0._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402a71, %struct.Memory* %loadMem2_402a71)
  store %struct.Memory* %call2_402a71, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402a76	 Bytes: 10
  %loadMem_402a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a76 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a76)
  store %struct.Memory* %call_402a76, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402a80	 Bytes: 5
  %loadMem_402a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a80 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a80)
  store %struct.Memory* %call_402a80, %struct.Memory** %MEMORY

  ; Code: movq $0x419cb0, %rdx	 RIP: 402a85	 Bytes: 10
  %loadMem_402a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a85 = call %struct.Memory* @routine_movq__0x419cb0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a85)
  store %struct.Memory* %call_402a85, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc	 RIP: 402a8f	 Bytes: 5
  %loadMem1_402a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402a8f = call %struct.Memory* @routine_callq_._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402a8f, i64 46833, i64 5, i64 5)
  store %struct.Memory* %call1_402a8f, %struct.Memory** %MEMORY

  %loadMem2_402a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402a8f = load i64, i64* %3
  %call2_402a8f = call %struct.Memory* @sub_40e180._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402a8f, %struct.Memory* %loadMem2_402a8f)
  store %struct.Memory* %call2_402a8f, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402a94	 Bytes: 10
  %loadMem_402a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a94 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a94)
  store %struct.Memory* %call_402a94, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402a9e	 Bytes: 5
  %loadMem_402a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402a9e = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402a9e)
  store %struct.Memory* %call_402a9e, %struct.Memory** %MEMORY

  ; Code: movq $0x419cc9, %rdx	 RIP: 402aa3	 Bytes: 10
  %loadMem_402aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aa3 = call %struct.Memory* @routine_movq__0x419cc9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aa3)
  store %struct.Memory* %call_402aa3, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc	 RIP: 402aad	 Bytes: 5
  %loadMem1_402aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402aad = call %struct.Memory* @routine_callq_._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402aad, i64 46963, i64 5, i64 5)
  store %struct.Memory* %call1_402aad, %struct.Memory** %MEMORY

  %loadMem2_402aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402aad = load i64, i64* %3
  %call2_402aad = call %struct.Memory* @sub_40e220._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402aad, %struct.Memory* %loadMem2_402aad)
  store %struct.Memory* %call2_402aad, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402ab2	 Bytes: 10
  %loadMem_402ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ab2 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ab2)
  store %struct.Memory* %call_402ab2, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402abc	 Bytes: 5
  %loadMem_402abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402abc = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402abc)
  store %struct.Memory* %call_402abc, %struct.Memory** %MEMORY

  ; Code: movq $0x419ced, %rdx	 RIP: 402ac1	 Bytes: 10
  %loadMem_402ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ac1 = call %struct.Memory* @routine_movq__0x419ced___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ac1)
  store %struct.Memory* %call_402ac1, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc	 RIP: 402acb	 Bytes: 5
  %loadMem1_402acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402acb = call %struct.Memory* @routine_callq_._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402acb, i64 47093, i64 5, i64 5)
  store %struct.Memory* %call1_402acb, %struct.Memory** %MEMORY

  %loadMem2_402acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402acb = load i64, i64* %3
  %call2_402acb = call %struct.Memory* @sub_40e2c0._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402acb, %struct.Memory* %loadMem2_402acb)
  store %struct.Memory* %call2_402acb, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402ad0	 Bytes: 10
  %loadMem_402ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ad0 = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ad0)
  store %struct.Memory* %call_402ad0, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402ada	 Bytes: 5
  %loadMem_402ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402ada = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402ada)
  store %struct.Memory* %call_402ada, %struct.Memory** %MEMORY

  ; Code: movq $0x419d10, %rdx	 RIP: 402adf	 Bytes: 10
  %loadMem_402adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402adf = call %struct.Memory* @routine_movq__0x419d10___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402adf)
  store %struct.Memory* %call_402adf, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc	 RIP: 402ae9	 Bytes: 5
  %loadMem1_402ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402ae9 = call %struct.Memory* @routine_callq_._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402ae9, i64 47223, i64 5, i64 5)
  store %struct.Memory* %call1_402ae9, %struct.Memory** %MEMORY

  %loadMem2_402ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402ae9 = load i64, i64* %3
  %call2_402ae9 = call %struct.Memory* @sub_40e360._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402ae9, %struct.Memory* %loadMem2_402ae9)
  store %struct.Memory* %call2_402ae9, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402aee	 Bytes: 10
  %loadMem_402aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402aee = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402aee)
  store %struct.Memory* %call_402aee, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402af8	 Bytes: 5
  %loadMem_402af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402af8 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402af8)
  store %struct.Memory* %call_402af8, %struct.Memory** %MEMORY

  ; Code: movq $0x419d27, %rdx	 RIP: 402afd	 Bytes: 10
  %loadMem_402afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402afd = call %struct.Memory* @routine_movq__0x419d27___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402afd)
  store %struct.Memory* %call_402afd, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc	 RIP: 402b07	 Bytes: 5
  %loadMem1_402b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402b07 = call %struct.Memory* @routine_callq_._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402b07, i64 47353, i64 5, i64 5)
  store %struct.Memory* %call1_402b07, %struct.Memory** %MEMORY

  %loadMem2_402b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402b07 = load i64, i64* %3
  %call2_402b07 = call %struct.Memory* @sub_40e400._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402b07, %struct.Memory* %loadMem2_402b07)
  store %struct.Memory* %call2_402b07, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402b0c	 Bytes: 10
  %loadMem_402b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b0c = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b0c)
  store %struct.Memory* %call_402b0c, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402b16	 Bytes: 5
  %loadMem_402b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b16 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b16)
  store %struct.Memory* %call_402b16, %struct.Memory** %MEMORY

  ; Code: movq $0x419d48, %rdx	 RIP: 402b1b	 Bytes: 10
  %loadMem_402b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b1b = call %struct.Memory* @routine_movq__0x419d48___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b1b)
  store %struct.Memory* %call_402b1b, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc	 RIP: 402b25	 Bytes: 5
  %loadMem1_402b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402b25 = call %struct.Memory* @routine_callq_._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402b25, i64 47483, i64 5, i64 5)
  store %struct.Memory* %call1_402b25, %struct.Memory** %MEMORY

  %loadMem2_402b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402b25 = load i64, i64* %3
  %call2_402b25 = call %struct.Memory* @sub_40e4a0._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402b25, %struct.Memory* %loadMem2_402b25)
  store %struct.Memory* %call2_402b25, %struct.Memory** %MEMORY

  ; Code: movq $0x6220d0, %rdi	 RIP: 402b2a	 Bytes: 10
  %loadMem_402b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b2a = call %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b2a)
  store %struct.Memory* %call_402b2a, %struct.Memory** %MEMORY

  ; Code: movl $0x1f40, %esi	 RIP: 402b34	 Bytes: 5
  %loadMem_402b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b34 = call %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b34)
  store %struct.Memory* %call_402b34, %struct.Memory** %MEMORY

  ; Code: movq $0x419d69, %rdx	 RIP: 402b39	 Bytes: 10
  %loadMem_402b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b39 = call %struct.Memory* @routine_movq__0x419d69___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b39)
  store %struct.Memory* %call_402b39, %struct.Memory** %MEMORY

  ; Code: callq ._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc	 RIP: 402b43	 Bytes: 5
  %loadMem1_402b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_402b43 = call %struct.Memory* @routine_callq_._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_402b43, i64 47613, i64 5, i64 5)
  store %struct.Memory* %call1_402b43, %struct.Memory** %MEMORY

  %loadMem2_402b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402b43 = load i64, i64* %3
  %call2_402b43 = call %struct.Memory* @sub_40e540._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* %0, i64  %loadPC_402b43, %struct.Memory* %loadMem2_402b43)
  store %struct.Memory* %call2_402b43, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 402b48	 Bytes: 2
  %loadMem_402b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b48 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b48)
  store %struct.Memory* %call_402b48, %struct.Memory** %MEMORY

  ; Code: addq $0x90, %rsp	 RIP: 402b4a	 Bytes: 7
  %loadMem_402b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b4a = call %struct.Memory* @routine_addq__0x90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b4a)
  store %struct.Memory* %call_402b4a, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 402b51	 Bytes: 1
  %loadMem_402b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b51 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b51)
  store %struct.Memory* %call_402b51, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 402b52	 Bytes: 1
  %loadMem_402b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402b52 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402b52)
  store %struct.Memory* %call_402b52, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_402b52
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 144)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %2, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %19 = select i1 %16, i64 %3, i64 %4
  store i64 %19, i64* %18, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jle_.L_400f17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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


define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_callq_.atoi_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__0x622080(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6430848, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_400f37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.atof_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__0x622088(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 6430856, i8* %8)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x6397d0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6526928)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
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

define %struct.Memory* @routine_addq__0xfa00___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 64000)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I3MVnI7vec64_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x41DFFFFFFFC00000
  %10 = fptosi double %7 to i32
  %11 = zext i32 %10 to i64
  %12 = select i1 %9, i64 2147483648, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si_0x221135__rip____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2232637
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I3MVnI7vec64_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x672210___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 6758928)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl__r8b___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x674150___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 6766928)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_._Z4fillIPaaEvT_S1_T0_(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x221103__rip____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2232585
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__0x22113d__rip_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2232643
  %11 = load i32, i32* %EDX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 6
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__0x418c23___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4295715)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1f40___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 8000)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r9d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c34___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295732)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c4a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295754)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c65___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295781)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c80___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295808)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c99___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295833)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418caf___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295855)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418cc7___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295879)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418ce2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295906)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d01___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295937)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d1d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295965)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d42___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296002)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d64___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296036)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d7a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296058)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d8f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296079)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x220fd1__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2232280
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1717986919)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %10 [
    i6 0, label %37
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = lshr i64 %3, 63
  %9 = trunc i64 %8 to i8
  br label %16

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 63
  %12 = add  i64 %11, -1
  %13 = lshr i64 %3, %12
  %14 = icmp ne i8 0, 0
  %15 = zext i1 %14 to i8
  br label %16

; <label>:16:                                     ; preds = %10, %7
  %17 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %18 = phi i64 [ %13, %10 ], [ %3, %7 ]
  %19 = phi i8 [ %15, %10 ], [ %9, %7 ]
  %20 = trunc i64 %18 to i8
  %21 = and i8 %20, 1
  %22 = lshr i64 %18, 1
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %21, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %25 = trunc i64 %22 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #22
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %24, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %17, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %33 = icmp eq i64 %22, 0
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %19, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %16, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 63)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %8 [
    i6 0, label %37
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  br label %14

; <label>:8:                                      ; preds = %5
  %9 = and i64 %4, 63
  %10 = add  i64 %9, -1
  %11 = ashr i64 %3, %10
  %12 = icmp ne i8 0, 0
  %13 = zext i1 %12 to i8
  br label %14

; <label>:14:                                     ; preds = %8, %7
  %15 = phi i8 [ 0, %7 ], [ 0, %8 ]
  %16 = phi i64 [ %3, %7 ], [ %11, %8 ]
  %17 = phi i8 [ 0, %7 ], [ %13, %8 ]
  %18 = trunc i64 %16 to i8
  %19 = and i8 %18, 1
  %20 = ashr i64 %16, 1
  store i64 %20, i64* %2, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %19, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %23 = trunc i64 %20 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #22
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %22, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %15, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %31 = icmp eq i64 %20, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %34 = lshr i64 %20, 63
  %35 = trunc i64 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %14, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarq__0x22___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 34)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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

define %struct.Memory* @routine_addl__esi___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r9d__0x220ff0__rip_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2232311
  %11 = load i32, i32* %R9D
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 7
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__0x418da5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296101)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418dba___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296122)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418dd9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296153)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418df3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296179)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e17___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296215)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e31___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296241)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e56___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296278)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e7a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296314)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e92___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296338)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418eb4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296372)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418ed6___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296406)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418ef6___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296438)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f0b___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296459)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f29___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296489)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f3d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296509)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f5a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296538)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f6f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296559)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cvttsd2si_0x220e6d__rip____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231925
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I3MVnI7vec64_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x6702d0___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 6750928)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r9d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__sil___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %SIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__r8b___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_._Z4fillIPhhEvT_S1_T0_(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_0x220e3e__rip____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231876
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__0x220e78__rip_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231934
  %11 = load i32, i32* %EDX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 6
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__0x418c22___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4295714)
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_callq_._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c33___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295731)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c49___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295753)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c64___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295780)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c7f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295807)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418c98___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295832)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418cae___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295854)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418cc6___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295878)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418ce1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295905)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d00___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295936)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d1c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4295964)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d41___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296001)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d63___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296035)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d79___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296057)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418d8e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296078)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_0x220d16__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2231581
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_movl__r9d__0x220d35__rip_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231612
  %11 = load i32, i32* %R9D
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 7
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__0x418da4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296100)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418db9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296121)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418dd8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296152)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418df2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296178)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e16___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296214)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e30___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296240)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e55___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296277)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e79___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296313)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418e91___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296337)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418eb3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296371)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418ed5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296405)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418ef5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296437)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f0a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296458)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f28___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296488)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f3c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296508)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f59___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296537)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f6e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296558)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cvttsd2si_0x220bb2__rip____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231226
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I3MVnI7vec64_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x66c450___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 6734928)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__si___r10w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10W = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %SI
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R10W, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 16
  %7 = ashr exact i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl__r10w___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i16, i16* %R10W
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x6702d0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 6750928)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_._Z4fillIPssEvT_S1_T0_(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_0x220b82__rip____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231176
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__0x220bbc__rip_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2231234
  %11 = load i32, i32* %EDX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 6
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__0x418f8d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4296589)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418f9f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296607)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418fb6___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296630)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418fd2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296658)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x418fee___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296686)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x419008___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296712)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x41901f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296735)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x419038___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296760)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x419054___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296788)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x419074___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296820)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x419091___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296849)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_callq_._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x4190b7___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4296887)
  ret %struct.Memory* %11
}













