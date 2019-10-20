; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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
%union.anon = type { i64 }
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

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @atof(i64)

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_402b60._Z4fillIPaaEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402ba0._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402c40._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402ce0._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402d80._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402e20._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402ec0._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402f60._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403000._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4030a0._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403140._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4031e0._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403280._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403320._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4033c0._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403460._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403500._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4035a0._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403640._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4036e0._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403780._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403820._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4038c0._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403960._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403a00._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403aa0._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403b40._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403be0._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403c80._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403d20._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403dc0._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403e60._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403f00._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403fa0._Z4fillIPhhEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403fe0._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404080._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404120._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4041c0._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404260._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404300._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4043a0._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404440._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4044e0._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404580._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404620._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4046c0._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404760._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404800._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4048a0._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404940._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4049e0._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404a80._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404b20._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404bc0._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404c60._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404d00._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404da0._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404e40._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ee0._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404f80._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405020._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4050c0._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405160._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405200._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4052a0._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405340._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4053e0._Z4fillIPssEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405420._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4054d0._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405580._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405630._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4056e0._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405790._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405840._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4058f0._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4059a0._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405a50._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405b00._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405bb0._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405c60._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405d10._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405dc0._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405e70._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405f20._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405fd0._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406080._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406130._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4061e0._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406290._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406340._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4063f0._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4064a0._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406550._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406600._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4066b0._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406760._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406810._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4068c0._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406970._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406a20._Z4fillIPttEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406a60._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406b10._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406bc0._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406c70._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406d20._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406dd0._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406e80._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406f30._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406fe0._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407090._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407140._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4071f0._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4072a0._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407350._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407400._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4074b0._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407560._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407610._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4076c0._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407770._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407820._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4078d0._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407980._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407a30._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407ae0._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407b90._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407c40._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407cf0._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407da0._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e50._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407f00._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407fb0._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408060._Z4fillIPiiEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4080a0._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408140._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4081e0._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408280._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408320._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4083c0._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408460._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408500._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4085a0._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408640._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4086e0._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408780._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408820._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4088c0._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408960._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408a00._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408aa0._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408b40._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408be0._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408c80._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408d20._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408dc0._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e60._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408f00._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408fa0._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409040._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4090e0._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409180._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409220._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4092c0._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409360._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409400._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4094a0._Z4fillIPjjEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4094e0._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409580._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409620._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4096c0._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409760._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409800._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098a0._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409940._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4099e0._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409a80._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409b20._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409bc0._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409c60._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409d00._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409da0._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409e40._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409ee0._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409f80._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a020._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a0c0._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a160._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a200._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a2a0._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a340._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a3e0._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a480._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a520._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a5c0._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a660._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a700._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a7a0._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a840._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a8e0._Z4fillIPllEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a920._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a9c0._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aa60._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ab00._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aba0._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ac40._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ace0._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ad80._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ae20._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aec0._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40af60._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b000._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b0a0._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b140._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b1e0._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b280._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b320._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b3c0._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b460._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b500._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b5a0._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b640._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b6e0._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b780._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b820._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b8c0._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b960._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ba00._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40baa0._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bb40._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bbe0._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bc80._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bd20._Z4fillIPmmEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bd60._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40be00._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bea0._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bf40._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bfe0._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c080._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c120._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c1c0._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c260._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c300._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c3a0._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c440._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c4e0._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c580._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c620._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c6c0._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c760._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c800._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c8a0._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c940._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c9e0._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ca80._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cb20._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cbc0._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cc60._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cd00._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cda0._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ce40._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cee0._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cf80._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d020._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d0c0._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d160._Z4fillIPffEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d1a0._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d240._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d2e0._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d380._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d420._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d4c0._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d560._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d600._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d6a0._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d740._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d7e0._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d880._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d920._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d9c0._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40da60._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40db00._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dba0._Z4fillIPddEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dbe0._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dc80._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd20._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ddc0._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40de60._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40df00._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dfa0._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e040._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e0e0._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e180._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e220._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e2c0._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e360._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e400._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e4a0._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e540._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -152
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 144
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = add i64 %7, -12
  %41 = add i64 %10, 17
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i32, i32* %EDI.i, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %RSI.i3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i3626, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, -1
  %63 = icmp eq i32 %61, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %14, align 1
  %65 = and i32 %62, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  %70 = xor i32 %62, %61
  %71 = lshr i32 %70, 4
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %27, align 1
  %74 = icmp eq i32 %62, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %30, align 1
  %76 = lshr i32 %62, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %33, align 1
  %78 = lshr i32 %61, 31
  %79 = xor i32 %76, %78
  %80 = add nuw nsw i32 %79, %78
  %81 = icmp eq i32 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %39, align 1
  %83 = icmp ne i8 %77, 0
  %84 = xor i1 %83, %81
  %85 = or i1 %74, %84
  %.v = select i1 %85, i64 30, i64 10
  %86 = add i64 %58, %.v
  store i64 %86, i64* %3, align 8
  br i1 %85, label %block_.L_400f17, label %block_400f03

block_400f03:                                     ; preds = %entry
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i3647 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %88 = add i64 %56, -16
  %89 = add i64 %86, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RAX.i3647, align 8
  %RDI.i3645 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %92 = add i64 %91, 8
  %93 = add i64 %86, 8
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RDI.i3645, align 8
  %96 = add i64 %86, -2051
  %97 = add i64 %86, 13
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %6, align 8
  store i64 %96, i64* %3, align 8
  %101 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %2)
  %EAX.i3639 = bitcast %union.anon* %87 to i32*
  %102 = load i32, i32* %EAX.i3639, align 4
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 7
  store i64 %104, i64* %3, align 8
  store i32 %102, i32* inttoptr (i64 6430848 to i32*), align 128
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f17

block_.L_400f17:                                  ; preds = %block_400f03, %entry
  %105 = phi i64 [ %86, %entry ], [ %104, %block_400f03 ]
  %106 = phi i64 [ %56, %entry ], [ %.pre, %block_400f03 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %101, %block_400f03 ]
  %107 = add i64 %106, -8
  %108 = add i64 %105, 4
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, -2
  %112 = icmp ult i32 %110, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = and i32 %111, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i32 %111, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %27, align 1
  %123 = icmp eq i32 %111, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %30, align 1
  %125 = lshr i32 %111, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %33, align 1
  %127 = lshr i32 %110, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %39, align 1
  %132 = icmp ne i8 %126, 0
  %133 = xor i1 %132, %130
  %134 = or i1 %123, %133
  %.v18 = select i1 %134, i64 32, i64 10
  %135 = add i64 %105, %.v18
  store i64 %135, i64* %3, align 8
  br i1 %134, label %block_.L_400f17.block_.L_400f37_crit_edge, label %block_400f21

block_.L_400f17.block_.L_400f37_crit_edge:        ; preds = %block_.L_400f17
  %.pre16 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  br label %block_.L_400f37

block_400f21:                                     ; preds = %block_.L_400f17
  %RAX.i3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %136 = add i64 %106, -16
  %137 = add i64 %135, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RAX.i3633, align 8
  %RDI.i3631 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %140 = add i64 %139, 16
  %141 = add i64 %135, 8
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %RDI.i3631, align 8
  %144 = add i64 %135, -2193
  %145 = add i64 %135, 13
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %6, align 8
  store i64 %144, i64* %3, align 8
  %149 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %MEMORY.0)
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 9
  store i64 %151, i64* %3, align 8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %153 = load i64, i64* %152, align 1
  store i64 %153, i64* inttoptr (i64 6430856 to i64*), align 8
  %.pre2 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f37

block_.L_400f37:                                  ; preds = %block_.L_400f17.block_.L_400f37_crit_edge, %block_400f21
  %RDI.i3611.pre-phi = phi i64* [ %.pre16, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %RDI.i3631, %block_400f21 ]
  %154 = phi i64 [ %106, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %.pre2, %block_400f21 ]
  %155 = phi i64 [ %135, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %151, %block_400f21 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %149, %block_400f21 ]
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i3622 = getelementptr inbounds %union.anon, %union.anon* %156, i64 0, i32 0
  store i64 6526928, i64* %RAX.i3622, align 8
  %RCX.i3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 6590928, i64* %RCX.i3620, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %RDX.i3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %157 = add i64 %155, 2232657
  %158 = add i64 %155, 28
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to double*
  %160 = load double, double* %159, align 8
  %161 = tail call double @llvm.trunc.f64(double %160)
  %162 = tail call double @llvm.fabs.f64(double %161)
  %163 = fcmp ogt double %162, 0x41DFFFFFFFC00000
  %164 = fptosi double %161 to i32
  %165 = zext i32 %164 to i64
  %166 = select i1 %163, i64 2147483648, i64 %165
  store i64 6758928, i64* %RDI.i3611.pre-phi, align 8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i3608 = bitcast %union.anon* %167 to i8*
  %168 = trunc i64 %166 to i8
  store i8 %168, i8* %R8B.i3608, align 1
  %sext = shl i64 %166, 56
  %169 = ashr exact i64 %sext, 56
  %170 = and i64 %169, 4294967295
  store i64 %170, i64* %RDX.i3615, align 8
  store i64 6766928, i64* %RSI.i3626, align 8
  %171 = add i64 %154, -24
  %172 = add i64 %155, 51
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  store i64 6758928, i64* %173, align 8
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -32
  %176 = load i64, i64* %RAX.i3622, align 8
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, 4
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179, align 8
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -40
  %182 = load i64, i64* %RCX.i3620, align 8
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %181 to i64*
  store i64 %182, i64* %185, align 8
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 7150
  %188 = add i64 %186, 5
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %6, align 8
  store i64 %187, i64* %3, align 8
  %call2_400f72 = tail call %struct.Memory* @sub_402b60._Z4fillIPaaEvT_S1_T0_(%struct.State* nonnull %0, i64 %187, %struct.Memory* %MEMORY.1)
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 2232585
  %194 = add i64 %192, 6
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = add i64 %192, 2232649
  %198 = add i64 %192, 12
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  store i32 %196, i32* %199, align 4
  %200 = load i64, i64* %3, align 8
  store i64 4295715, i64* %RDX.i3615, align 8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i3585 = bitcast %union.anon* %201 to i32*
  %202 = getelementptr inbounds %union.anon, %union.anon* %201, i64 0, i32 0
  store i64 8000, i64* %202, align 8
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -24
  %205 = add i64 %200, 15
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  %208 = add i64 %203, -44
  %209 = add i64 %200, 22
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 8000, i32* %210, align 4
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 7175
  %213 = add i64 %211, 5
  %214 = load i64, i64* %6, align 8
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %6, align 8
  store i64 %212, i64* %3, align 8
  %call2_400f99 = tail call %struct.Memory* @sub_402ba0._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %212, %struct.Memory* %call2_400f72)
  %217 = load i64, i64* %3, align 8
  store i64 4295732, i64* %RSI.i3626, align 8
  store i64 4295732, i64* %RDX.i3615, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -24
  %220 = add i64 %217, 11
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i64*
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %RDI.i3611.pre-phi, align 8
  %223 = add i64 %218, -44
  %224 = add i64 %217, 14
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RSI.i3626, align 8
  %228 = add i64 %217, 7330
  %229 = add i64 %217, 19
  %230 = load i64, i64* %6, align 8
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %229, i64* %232, align 8
  store i64 %231, i64* %6, align 8
  store i64 %228, i64* %3, align 8
  %call2_400fac = tail call %struct.Memory* @sub_402c40._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %228, %struct.Memory* %call2_400f99)
  %233 = load i64, i64* %3, align 8
  store i64 4295754, i64* %RSI.i3626, align 8
  store i64 4295754, i64* %RDX.i3615, align 8
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -24
  %236 = add i64 %233, 11
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RDI.i3611.pre-phi, align 8
  %239 = add i64 %234, -44
  %240 = add i64 %233, 14
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RSI.i3626, align 8
  %244 = add i64 %233, 7471
  %245 = add i64 %233, 19
  %246 = load i64, i64* %6, align 8
  %247 = add i64 %246, -8
  %248 = inttoptr i64 %247 to i64*
  store i64 %245, i64* %248, align 8
  store i64 %247, i64* %6, align 8
  store i64 %244, i64* %3, align 8
  %call2_400fbf = tail call %struct.Memory* @sub_402ce0._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %244, %struct.Memory* %call2_400fac)
  %249 = load i64, i64* %3, align 8
  store i64 4295781, i64* %RSI.i3626, align 8
  store i64 4295781, i64* %RDX.i3615, align 8
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -24
  %252 = add i64 %249, 11
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RDI.i3611.pre-phi, align 8
  %255 = add i64 %250, -44
  %256 = add i64 %249, 14
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RSI.i3626, align 8
  %260 = add i64 %249, 7612
  %261 = add i64 %249, 19
  %262 = load i64, i64* %6, align 8
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %6, align 8
  store i64 %260, i64* %3, align 8
  %call2_400fd2 = tail call %struct.Memory* @sub_402d80._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %260, %struct.Memory* %call2_400fbf)
  %265 = load i64, i64* %3, align 8
  store i64 4295808, i64* %RSI.i3626, align 8
  store i64 4295808, i64* %RDX.i3615, align 8
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -24
  %268 = add i64 %265, 11
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RDI.i3611.pre-phi, align 8
  %271 = add i64 %266, -44
  %272 = add i64 %265, 14
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RSI.i3626, align 8
  %276 = add i64 %265, 7753
  %277 = add i64 %265, 19
  %278 = load i64, i64* %6, align 8
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %6, align 8
  store i64 %276, i64* %3, align 8
  %call2_400fe5 = tail call %struct.Memory* @sub_402e20._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %276, %struct.Memory* %call2_400fd2)
  %281 = load i64, i64* %3, align 8
  store i64 4295833, i64* %RSI.i3626, align 8
  store i64 4295833, i64* %RDX.i3615, align 8
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -24
  %284 = add i64 %281, 11
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDI.i3611.pre-phi, align 8
  %287 = add i64 %282, -44
  %288 = add i64 %281, 14
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RSI.i3626, align 8
  %292 = add i64 %281, 7894
  %293 = add i64 %281, 19
  %294 = load i64, i64* %6, align 8
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %6, align 8
  store i64 %292, i64* %3, align 8
  %call2_400ff8 = tail call %struct.Memory* @sub_402ec0._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %292, %struct.Memory* %call2_400fe5)
  %297 = load i64, i64* %3, align 8
  store i64 4295855, i64* %RSI.i3626, align 8
  store i64 4295855, i64* %RDX.i3615, align 8
  %298 = load i64, i64* %RBP.i, align 8
  %299 = add i64 %298, -24
  %300 = add i64 %297, 11
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RDI.i3611.pre-phi, align 8
  %303 = add i64 %298, -44
  %304 = add i64 %297, 14
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RSI.i3626, align 8
  %308 = add i64 %297, 8035
  %309 = add i64 %297, 19
  %310 = load i64, i64* %6, align 8
  %311 = add i64 %310, -8
  %312 = inttoptr i64 %311 to i64*
  store i64 %309, i64* %312, align 8
  store i64 %311, i64* %6, align 8
  store i64 %308, i64* %3, align 8
  %call2_40100b = tail call %struct.Memory* @sub_402f60._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %308, %struct.Memory* %call2_400ff8)
  %313 = load i64, i64* %3, align 8
  store i64 4295879, i64* %RSI.i3626, align 8
  store i64 4295879, i64* %RDX.i3615, align 8
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -24
  %316 = add i64 %313, 11
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %RDI.i3611.pre-phi, align 8
  %319 = add i64 %314, -44
  %320 = add i64 %313, 14
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RSI.i3626, align 8
  %324 = add i64 %313, 8176
  %325 = add i64 %313, 19
  %326 = load i64, i64* %6, align 8
  %327 = add i64 %326, -8
  %328 = inttoptr i64 %327 to i64*
  store i64 %325, i64* %328, align 8
  store i64 %327, i64* %6, align 8
  store i64 %324, i64* %3, align 8
  %call2_40101e = tail call %struct.Memory* @sub_403000._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %324, %struct.Memory* %call2_40100b)
  %329 = load i64, i64* %3, align 8
  store i64 4295906, i64* %RSI.i3626, align 8
  store i64 4295906, i64* %RDX.i3615, align 8
  %330 = load i64, i64* %RBP.i, align 8
  %331 = add i64 %330, -24
  %332 = add i64 %329, 11
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RDI.i3611.pre-phi, align 8
  %335 = add i64 %330, -44
  %336 = add i64 %329, 14
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i32*
  %338 = load i32, i32* %337, align 4
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RSI.i3626, align 8
  %340 = add i64 %329, 8317
  %341 = add i64 %329, 19
  %342 = load i64, i64* %6, align 8
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %341, i64* %344, align 8
  store i64 %343, i64* %6, align 8
  store i64 %340, i64* %3, align 8
  %call2_401031 = tail call %struct.Memory* @sub_4030a0._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %340, %struct.Memory* %call2_40101e)
  %345 = load i64, i64* %3, align 8
  store i64 4295937, i64* %RSI.i3626, align 8
  store i64 4295937, i64* %RDX.i3615, align 8
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -24
  %348 = add i64 %345, 11
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RDI.i3611.pre-phi, align 8
  %351 = add i64 %346, -44
  %352 = add i64 %345, 14
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RSI.i3626, align 8
  %356 = add i64 %345, 8458
  %357 = add i64 %345, 19
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %call2_401044 = tail call %struct.Memory* @sub_403140._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %356, %struct.Memory* %call2_401031)
  %361 = load i64, i64* %3, align 8
  store i64 4295965, i64* %RSI.i3626, align 8
  store i64 4295965, i64* %RDX.i3615, align 8
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -24
  %364 = add i64 %361, 11
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RDI.i3611.pre-phi, align 8
  %367 = add i64 %362, -44
  %368 = add i64 %361, 14
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RSI.i3626, align 8
  %372 = add i64 %361, 8599
  %373 = add i64 %361, 19
  %374 = load i64, i64* %6, align 8
  %375 = add i64 %374, -8
  %376 = inttoptr i64 %375 to i64*
  store i64 %373, i64* %376, align 8
  store i64 %375, i64* %6, align 8
  store i64 %372, i64* %3, align 8
  %call2_401057 = tail call %struct.Memory* @sub_4031e0._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %372, %struct.Memory* %call2_401044)
  %377 = load i64, i64* %3, align 8
  store i64 4296002, i64* %RSI.i3626, align 8
  store i64 4296002, i64* %RDX.i3615, align 8
  %378 = load i64, i64* %RBP.i, align 8
  %379 = add i64 %378, -24
  %380 = add i64 %377, 11
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RDI.i3611.pre-phi, align 8
  %383 = add i64 %378, -44
  %384 = add i64 %377, 14
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RSI.i3626, align 8
  %388 = add i64 %377, 8740
  %389 = add i64 %377, 19
  %390 = load i64, i64* %6, align 8
  %391 = add i64 %390, -8
  %392 = inttoptr i64 %391 to i64*
  store i64 %389, i64* %392, align 8
  store i64 %391, i64* %6, align 8
  store i64 %388, i64* %3, align 8
  %call2_40106a = tail call %struct.Memory* @sub_403280._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %388, %struct.Memory* %call2_401057)
  %393 = load i64, i64* %3, align 8
  store i64 4296036, i64* %RSI.i3626, align 8
  store i64 4296036, i64* %RDX.i3615, align 8
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -24
  %396 = add i64 %393, 11
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RDI.i3611.pre-phi, align 8
  %399 = add i64 %394, -44
  %400 = add i64 %393, 14
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RSI.i3626, align 8
  %404 = add i64 %393, 8881
  %405 = add i64 %393, 19
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %6, align 8
  store i64 %404, i64* %3, align 8
  %call2_40107d = tail call %struct.Memory* @sub_403320._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %404, %struct.Memory* %call2_40106a)
  %409 = load i64, i64* %3, align 8
  store i64 4296058, i64* %RSI.i3626, align 8
  store i64 4296058, i64* %RDX.i3615, align 8
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -24
  %412 = add i64 %409, 11
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RDI.i3611.pre-phi, align 8
  %415 = add i64 %410, -44
  %416 = add i64 %409, 14
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RSI.i3626, align 8
  %420 = add i64 %409, 9022
  %421 = add i64 %409, 19
  %422 = load i64, i64* %6, align 8
  %423 = add i64 %422, -8
  %424 = inttoptr i64 %423 to i64*
  store i64 %421, i64* %424, align 8
  store i64 %423, i64* %6, align 8
  store i64 %420, i64* %3, align 8
  %call2_401090 = tail call %struct.Memory* @sub_4033c0._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %420, %struct.Memory* %call2_40107d)
  %425 = load i64, i64* %3, align 8
  store i64 4296079, i64* %RSI.i3626, align 8
  store i64 4296079, i64* %RDX.i3615, align 8
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -24
  %428 = add i64 %425, 11
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RDI.i3611.pre-phi, align 8
  %431 = add i64 %426, -44
  %432 = add i64 %425, 14
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RSI.i3626, align 8
  %436 = add i64 %425, 9163
  %437 = add i64 %425, 19
  %438 = load i64, i64* %6, align 8
  %439 = add i64 %438, -8
  %440 = inttoptr i64 %439 to i64*
  store i64 %437, i64* %440, align 8
  store i64 %439, i64* %6, align 8
  store i64 %436, i64* %3, align 8
  %call2_4010a3 = tail call %struct.Memory* @sub_403460._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %436, %struct.Memory* %call2_401090)
  %441 = load i64, i64* %3, align 8
  %442 = add i64 %441, 2232280
  %443 = add i64 %441, 7
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = mul nsw i64 %446, 1717986919
  %448 = lshr i64 %447, 63
  store i64 %448, i64* %RCX.i3620, align 8
  %449 = trunc i64 %448 to i32
  %450 = ashr i64 %447, 34
  store i64 %450, i64* %RAX.i3622, align 8
  %451 = trunc i64 %450 to i32
  %EAX.i3390 = bitcast %union.anon* %156 to i32*
  %452 = add i32 %449, %451
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %202, align 8
  %454 = icmp ult i32 %452, %451
  %455 = icmp ult i32 %452, %449
  %456 = or i1 %454, %455
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %14, align 1
  %458 = and i32 %452, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %21, align 1
  %463 = trunc i64 %450 to i32
  %464 = xor i32 %463, %452
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %27, align 1
  %468 = icmp eq i32 %452, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %30, align 1
  %470 = lshr i32 %452, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %33, align 1
  %472 = lshr i64 %450, 31
  %473 = trunc i64 %472 to i32
  %474 = and i32 %473, 1
  %475 = xor i32 %470, %474
  %476 = add nuw nsw i32 %475, %470
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %39, align 1
  %479 = add i64 %441, 2232344
  %480 = add i64 %441, 40
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  store i32 %452, i32* %481, align 4
  %482 = load i64, i64* %3, align 8
  store i64 4296101, i64* %RSI.i3626, align 8
  store i64 4296101, i64* %RDX.i3615, align 8
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -24
  %485 = add i64 %482, 11
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RDI.i3611.pre-phi, align 8
  %488 = add i64 %483, -44
  %489 = add i64 %482, 14
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RSI.i3626, align 8
  %493 = add i64 %482, 9264
  %494 = add i64 %482, 19
  %495 = load i64, i64* %6, align 8
  %496 = add i64 %495, -8
  %497 = inttoptr i64 %496 to i64*
  store i64 %494, i64* %497, align 8
  store i64 %496, i64* %6, align 8
  store i64 %493, i64* %3, align 8
  %call2_4010de = tail call %struct.Memory* @sub_403500._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %493, %struct.Memory* %call2_4010a3)
  %498 = load i64, i64* %3, align 8
  store i64 4296122, i64* %RSI.i3626, align 8
  store i64 4296122, i64* %RDX.i3615, align 8
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -24
  %501 = add i64 %498, 11
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i64*
  %503 = load i64, i64* %502, align 8
  store i64 %503, i64* %RDI.i3611.pre-phi, align 8
  %504 = add i64 %499, -44
  %505 = add i64 %498, 14
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RSI.i3626, align 8
  %509 = add i64 %498, 9405
  %510 = add i64 %498, 19
  %511 = load i64, i64* %6, align 8
  %512 = add i64 %511, -8
  %513 = inttoptr i64 %512 to i64*
  store i64 %510, i64* %513, align 8
  store i64 %512, i64* %6, align 8
  store i64 %509, i64* %3, align 8
  %call2_4010f1 = tail call %struct.Memory* @sub_4035a0._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %509, %struct.Memory* %call2_4010de)
  %514 = load i64, i64* %3, align 8
  store i64 4296153, i64* %RSI.i3626, align 8
  store i64 4296153, i64* %RDX.i3615, align 8
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -24
  %517 = add i64 %514, 11
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RDI.i3611.pre-phi, align 8
  %520 = add i64 %515, -44
  %521 = add i64 %514, 14
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RSI.i3626, align 8
  %525 = add i64 %514, 9546
  %526 = add i64 %514, 19
  %527 = load i64, i64* %6, align 8
  %528 = add i64 %527, -8
  %529 = inttoptr i64 %528 to i64*
  store i64 %526, i64* %529, align 8
  store i64 %528, i64* %6, align 8
  store i64 %525, i64* %3, align 8
  %call2_401104 = tail call %struct.Memory* @sub_403640._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %525, %struct.Memory* %call2_4010f1)
  %530 = load i64, i64* %3, align 8
  store i64 4296179, i64* %RSI.i3626, align 8
  store i64 4296179, i64* %RDX.i3615, align 8
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -24
  %533 = add i64 %530, 11
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RDI.i3611.pre-phi, align 8
  %536 = add i64 %531, -44
  %537 = add i64 %530, 14
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RSI.i3626, align 8
  %541 = add i64 %530, 9687
  %542 = add i64 %530, 19
  %543 = load i64, i64* %6, align 8
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %542, i64* %545, align 8
  store i64 %544, i64* %6, align 8
  store i64 %541, i64* %3, align 8
  %call2_401117 = tail call %struct.Memory* @sub_4036e0._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %541, %struct.Memory* %call2_401104)
  %546 = load i64, i64* %3, align 8
  store i64 4296215, i64* %RSI.i3626, align 8
  store i64 4296215, i64* %RDX.i3615, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -24
  %549 = add i64 %546, 11
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RDI.i3611.pre-phi, align 8
  %552 = add i64 %547, -44
  %553 = add i64 %546, 14
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RSI.i3626, align 8
  %557 = add i64 %546, 9828
  %558 = add i64 %546, 19
  %559 = load i64, i64* %6, align 8
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %558, i64* %561, align 8
  store i64 %560, i64* %6, align 8
  store i64 %557, i64* %3, align 8
  %call2_40112a = tail call %struct.Memory* @sub_403780._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %557, %struct.Memory* %call2_401117)
  %562 = load i64, i64* %3, align 8
  store i64 4296241, i64* %RSI.i3626, align 8
  store i64 4296241, i64* %RDX.i3615, align 8
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -24
  %565 = add i64 %562, 11
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RDI.i3611.pre-phi, align 8
  %568 = add i64 %563, -44
  %569 = add i64 %562, 14
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RSI.i3626, align 8
  %573 = add i64 %562, 9969
  %574 = add i64 %562, 19
  %575 = load i64, i64* %6, align 8
  %576 = add i64 %575, -8
  %577 = inttoptr i64 %576 to i64*
  store i64 %574, i64* %577, align 8
  store i64 %576, i64* %6, align 8
  store i64 %573, i64* %3, align 8
  %call2_40113d = tail call %struct.Memory* @sub_403820._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %573, %struct.Memory* %call2_40112a)
  %578 = load i64, i64* %3, align 8
  store i64 4296278, i64* %RSI.i3626, align 8
  store i64 4296278, i64* %RDX.i3615, align 8
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -24
  %581 = add i64 %578, 11
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RDI.i3611.pre-phi, align 8
  %584 = add i64 %579, -44
  %585 = add i64 %578, 14
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RSI.i3626, align 8
  %589 = add i64 %578, 10110
  %590 = add i64 %578, 19
  %591 = load i64, i64* %6, align 8
  %592 = add i64 %591, -8
  %593 = inttoptr i64 %592 to i64*
  store i64 %590, i64* %593, align 8
  store i64 %592, i64* %6, align 8
  store i64 %589, i64* %3, align 8
  %call2_401150 = tail call %struct.Memory* @sub_4038c0._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* nonnull %0, i64 %589, %struct.Memory* %call2_40113d)
  %594 = load i64, i64* %3, align 8
  store i64 4296314, i64* %RSI.i3626, align 8
  store i64 4296314, i64* %RDX.i3615, align 8
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -24
  %597 = add i64 %594, 11
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %RDI.i3611.pre-phi, align 8
  %600 = add i64 %595, -44
  %601 = add i64 %594, 14
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RSI.i3626, align 8
  %605 = add i64 %594, 10251
  %606 = add i64 %594, 19
  %607 = load i64, i64* %6, align 8
  %608 = add i64 %607, -8
  %609 = inttoptr i64 %608 to i64*
  store i64 %606, i64* %609, align 8
  store i64 %608, i64* %6, align 8
  store i64 %605, i64* %3, align 8
  %call2_401163 = tail call %struct.Memory* @sub_403960._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %605, %struct.Memory* %call2_401150)
  %610 = load i64, i64* %3, align 8
  store i64 4296338, i64* %RSI.i3626, align 8
  store i64 4296338, i64* %RDX.i3615, align 8
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -24
  %613 = add i64 %610, 11
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RDI.i3611.pre-phi, align 8
  %616 = add i64 %611, -44
  %617 = add i64 %610, 14
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RSI.i3626, align 8
  %621 = add i64 %610, 10392
  %622 = add i64 %610, 19
  %623 = load i64, i64* %6, align 8
  %624 = add i64 %623, -8
  %625 = inttoptr i64 %624 to i64*
  store i64 %622, i64* %625, align 8
  store i64 %624, i64* %6, align 8
  store i64 %621, i64* %3, align 8
  %call2_401176 = tail call %struct.Memory* @sub_403a00._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %621, %struct.Memory* %call2_401163)
  %626 = load i64, i64* %3, align 8
  store i64 4296372, i64* %RSI.i3626, align 8
  store i64 4296372, i64* %RDX.i3615, align 8
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -24
  %629 = add i64 %626, 11
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RDI.i3611.pre-phi, align 8
  %632 = add i64 %627, -44
  %633 = add i64 %626, 14
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RSI.i3626, align 8
  %637 = add i64 %626, 10533
  %638 = add i64 %626, 19
  %639 = load i64, i64* %6, align 8
  %640 = add i64 %639, -8
  %641 = inttoptr i64 %640 to i64*
  store i64 %638, i64* %641, align 8
  store i64 %640, i64* %6, align 8
  store i64 %637, i64* %3, align 8
  %call2_401189 = tail call %struct.Memory* @sub_403aa0._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* nonnull %0, i64 %637, %struct.Memory* %call2_401176)
  %642 = load i64, i64* %3, align 8
  store i64 4296406, i64* %RSI.i3626, align 8
  store i64 4296406, i64* %RDX.i3615, align 8
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -24
  %645 = add i64 %642, 11
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  store i64 %647, i64* %RDI.i3611.pre-phi, align 8
  %648 = add i64 %643, -44
  %649 = add i64 %642, 14
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RSI.i3626, align 8
  %653 = add i64 %642, 10674
  %654 = add i64 %642, 19
  %655 = load i64, i64* %6, align 8
  %656 = add i64 %655, -8
  %657 = inttoptr i64 %656 to i64*
  store i64 %654, i64* %657, align 8
  store i64 %656, i64* %6, align 8
  store i64 %653, i64* %3, align 8
  %call2_40119c = tail call %struct.Memory* @sub_403b40._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %653, %struct.Memory* %call2_401189)
  %658 = load i64, i64* %3, align 8
  store i64 4296438, i64* %RSI.i3626, align 8
  store i64 4296438, i64* %RDX.i3615, align 8
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -24
  %661 = add i64 %658, 11
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RDI.i3611.pre-phi, align 8
  %664 = add i64 %659, -44
  %665 = add i64 %658, 14
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RSI.i3626, align 8
  %669 = add i64 %658, 10815
  %670 = add i64 %658, 19
  %671 = load i64, i64* %6, align 8
  %672 = add i64 %671, -8
  %673 = inttoptr i64 %672 to i64*
  store i64 %670, i64* %673, align 8
  store i64 %672, i64* %6, align 8
  store i64 %669, i64* %3, align 8
  %call2_4011af = tail call %struct.Memory* @sub_403be0._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %669, %struct.Memory* %call2_40119c)
  %674 = load i64, i64* %3, align 8
  store i64 4296459, i64* %RSI.i3626, align 8
  store i64 4296459, i64* %RDX.i3615, align 8
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -24
  %677 = add i64 %674, 11
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RDI.i3611.pre-phi, align 8
  %680 = add i64 %675, -44
  %681 = add i64 %674, 14
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RSI.i3626, align 8
  %685 = add i64 %674, 10956
  %686 = add i64 %674, 19
  %687 = load i64, i64* %6, align 8
  %688 = add i64 %687, -8
  %689 = inttoptr i64 %688 to i64*
  store i64 %686, i64* %689, align 8
  store i64 %688, i64* %6, align 8
  store i64 %685, i64* %3, align 8
  %call2_4011c2 = tail call %struct.Memory* @sub_403c80._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %685, %struct.Memory* %call2_4011af)
  %690 = load i64, i64* %3, align 8
  store i64 4296489, i64* %RSI.i3626, align 8
  store i64 4296489, i64* %RDX.i3615, align 8
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -24
  %693 = add i64 %690, 11
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %RDI.i3611.pre-phi, align 8
  %696 = add i64 %691, -44
  %697 = add i64 %690, 14
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RSI.i3626, align 8
  %701 = add i64 %690, 11097
  %702 = add i64 %690, 19
  %703 = load i64, i64* %6, align 8
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %702, i64* %705, align 8
  store i64 %704, i64* %6, align 8
  store i64 %701, i64* %3, align 8
  %call2_4011d5 = tail call %struct.Memory* @sub_403d20._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %701, %struct.Memory* %call2_4011c2)
  %706 = load i64, i64* %3, align 8
  store i64 4296509, i64* %RSI.i3626, align 8
  store i64 4296509, i64* %RDX.i3615, align 8
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -24
  %709 = add i64 %706, 11
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %RDI.i3611.pre-phi, align 8
  %712 = add i64 %707, -44
  %713 = add i64 %706, 14
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RSI.i3626, align 8
  %717 = add i64 %706, 11238
  %718 = add i64 %706, 19
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %718, i64* %721, align 8
  store i64 %720, i64* %6, align 8
  store i64 %717, i64* %3, align 8
  %call2_4011e8 = tail call %struct.Memory* @sub_403dc0._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %717, %struct.Memory* %call2_4011d5)
  %722 = load i64, i64* %3, align 8
  store i64 4296538, i64* %RSI.i3626, align 8
  store i64 4296538, i64* %RDX.i3615, align 8
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -24
  %725 = add i64 %722, 11
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RDI.i3611.pre-phi, align 8
  %728 = add i64 %723, -44
  %729 = add i64 %722, 14
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RSI.i3626, align 8
  %733 = add i64 %722, 11379
  %734 = add i64 %722, 19
  %735 = load i64, i64* %6, align 8
  %736 = add i64 %735, -8
  %737 = inttoptr i64 %736 to i64*
  store i64 %734, i64* %737, align 8
  store i64 %736, i64* %6, align 8
  store i64 %733, i64* %3, align 8
  %call2_4011fb = tail call %struct.Memory* @sub_403e60._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %733, %struct.Memory* %call2_4011e8)
  %738 = load i64, i64* %3, align 8
  store i64 4296559, i64* %RSI.i3626, align 8
  store i64 4296559, i64* %RDX.i3615, align 8
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -24
  %741 = add i64 %738, 11
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RDI.i3611.pre-phi, align 8
  %744 = add i64 %739, -44
  %745 = add i64 %738, 14
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RSI.i3626, align 8
  %749 = add i64 %738, 11520
  %750 = add i64 %738, 19
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_40120e = tail call %struct.Memory* @sub_403f00._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %749, %struct.Memory* %call2_4011fb)
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 2231925
  %756 = add i64 %754, 8
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to double*
  %758 = load double, double* %757, align 8
  %759 = tail call double @llvm.trunc.f64(double %758)
  %760 = tail call double @llvm.fabs.f64(double %759)
  %761 = fcmp ogt double %760, 0x41DFFFFFFFC00000
  %762 = fptosi double %759 to i32
  %763 = zext i32 %762 to i64
  %764 = select i1 %761, i64 2147483648, i64 %763
  store i64 6750928, i64* %202, align 8
  store i64 6750928, i64* %RAX.i3622, align 8
  %765 = trunc i64 %764 to i8
  store i8 %765, i8* %R8B.i3608, align 1
  %766 = and i64 %764, 255
  store i64 %766, i64* %RDX.i3615, align 8
  store i64 6758928, i64* %RSI.i3626, align 8
  store i64 6750928, i64* %RDI.i3611.pre-phi, align 8
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -56
  %769 = add i64 %754, 36
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i64*
  store i64 6750928, i64* %770, align 8
  %771 = load i64, i64* %3, align 8
  %772 = add i64 %771, 11625
  %773 = add i64 %771, 5
  %774 = load i64, i64* %6, align 8
  %775 = add i64 %774, -8
  %776 = inttoptr i64 %775 to i64*
  store i64 %773, i64* %776, align 8
  store i64 %775, i64* %6, align 8
  store i64 %772, i64* %3, align 8
  %call2_401237 = tail call %struct.Memory* @sub_403fa0._Z4fillIPhhEvT_S1_T0_(%struct.State* nonnull %0, i64 %772, %struct.Memory* %call2_40120e)
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, 2231876
  %779 = add i64 %777, 6
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = add i64 %777, 2231940
  %783 = add i64 %777, 12
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  store i32 %781, i32* %784, align 4
  %785 = load i64, i64* %3, align 8
  store i64 4295714, i64* %RDX.i3615, align 8
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -56
  %788 = add i64 %785, 9
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RDI.i3611.pre-phi, align 8
  %791 = add i64 %786, -44
  %792 = add i64 %785, 12
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RSI.i3626, align 8
  %796 = add i64 %785, 11672
  %797 = add i64 %785, 17
  %798 = load i64, i64* %6, align 8
  %799 = add i64 %798, -8
  %800 = inttoptr i64 %799 to i64*
  store i64 %797, i64* %800, align 8
  store i64 %799, i64* %6, align 8
  store i64 %796, i64* %3, align 8
  %call2_401254 = tail call %struct.Memory* @sub_403fe0._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %796, %struct.Memory* %call2_401237)
  %801 = load i64, i64* %3, align 8
  store i64 4295731, i64* %RSI.i3626, align 8
  store i64 4295731, i64* %RDX.i3615, align 8
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -56
  %804 = add i64 %801, 11
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RDI.i3611.pre-phi, align 8
  %807 = add i64 %802, -44
  %808 = add i64 %801, 14
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RSI.i3626, align 8
  %812 = add i64 %801, 11815
  %813 = add i64 %801, 19
  %814 = load i64, i64* %6, align 8
  %815 = add i64 %814, -8
  %816 = inttoptr i64 %815 to i64*
  store i64 %813, i64* %816, align 8
  store i64 %815, i64* %6, align 8
  store i64 %812, i64* %3, align 8
  %call2_401267 = tail call %struct.Memory* @sub_404080._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %812, %struct.Memory* %call2_401254)
  %817 = load i64, i64* %3, align 8
  store i64 4295753, i64* %RSI.i3626, align 8
  store i64 4295753, i64* %RDX.i3615, align 8
  %818 = load i64, i64* %RBP.i, align 8
  %819 = add i64 %818, -56
  %820 = add i64 %817, 11
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i64*
  %822 = load i64, i64* %821, align 8
  store i64 %822, i64* %RDI.i3611.pre-phi, align 8
  %823 = add i64 %818, -44
  %824 = add i64 %817, 14
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RSI.i3626, align 8
  %828 = add i64 %817, 11956
  %829 = add i64 %817, 19
  %830 = load i64, i64* %6, align 8
  %831 = add i64 %830, -8
  %832 = inttoptr i64 %831 to i64*
  store i64 %829, i64* %832, align 8
  store i64 %831, i64* %6, align 8
  store i64 %828, i64* %3, align 8
  %call2_40127a = tail call %struct.Memory* @sub_404120._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %828, %struct.Memory* %call2_401267)
  %833 = load i64, i64* %3, align 8
  store i64 4295780, i64* %RSI.i3626, align 8
  store i64 4295780, i64* %RDX.i3615, align 8
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -56
  %836 = add i64 %833, 11
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %RDI.i3611.pre-phi, align 8
  %839 = add i64 %834, -44
  %840 = add i64 %833, 14
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RSI.i3626, align 8
  %844 = add i64 %833, 12097
  %845 = add i64 %833, 19
  %846 = load i64, i64* %6, align 8
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %845, i64* %848, align 8
  store i64 %847, i64* %6, align 8
  store i64 %844, i64* %3, align 8
  %call2_40128d = tail call %struct.Memory* @sub_4041c0._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %844, %struct.Memory* %call2_40127a)
  %849 = load i64, i64* %3, align 8
  store i64 4295807, i64* %RSI.i3626, align 8
  store i64 4295807, i64* %RDX.i3615, align 8
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -56
  %852 = add i64 %849, 11
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RDI.i3611.pre-phi, align 8
  %855 = add i64 %850, -44
  %856 = add i64 %849, 14
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RSI.i3626, align 8
  %860 = add i64 %849, 12238
  %861 = add i64 %849, 19
  %862 = load i64, i64* %6, align 8
  %863 = add i64 %862, -8
  %864 = inttoptr i64 %863 to i64*
  store i64 %861, i64* %864, align 8
  store i64 %863, i64* %6, align 8
  store i64 %860, i64* %3, align 8
  %call2_4012a0 = tail call %struct.Memory* @sub_404260._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %860, %struct.Memory* %call2_40128d)
  %865 = load i64, i64* %3, align 8
  store i64 4295832, i64* %RSI.i3626, align 8
  store i64 4295832, i64* %RDX.i3615, align 8
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -56
  %868 = add i64 %865, 11
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %RDI.i3611.pre-phi, align 8
  %871 = add i64 %866, -44
  %872 = add i64 %865, 14
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RSI.i3626, align 8
  %876 = add i64 %865, 12379
  %877 = add i64 %865, 19
  %878 = load i64, i64* %6, align 8
  %879 = add i64 %878, -8
  %880 = inttoptr i64 %879 to i64*
  store i64 %877, i64* %880, align 8
  store i64 %879, i64* %6, align 8
  store i64 %876, i64* %3, align 8
  %call2_4012b3 = tail call %struct.Memory* @sub_404300._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %876, %struct.Memory* %call2_4012a0)
  %881 = load i64, i64* %3, align 8
  store i64 4295854, i64* %RSI.i3626, align 8
  store i64 4295854, i64* %RDX.i3615, align 8
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -56
  %884 = add i64 %881, 11
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RDI.i3611.pre-phi, align 8
  %887 = add i64 %882, -44
  %888 = add i64 %881, 14
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RSI.i3626, align 8
  %892 = add i64 %881, 12520
  %893 = add i64 %881, 19
  %894 = load i64, i64* %6, align 8
  %895 = add i64 %894, -8
  %896 = inttoptr i64 %895 to i64*
  store i64 %893, i64* %896, align 8
  store i64 %895, i64* %6, align 8
  store i64 %892, i64* %3, align 8
  %call2_4012c6 = tail call %struct.Memory* @sub_4043a0._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %892, %struct.Memory* %call2_4012b3)
  %897 = load i64, i64* %3, align 8
  store i64 4295878, i64* %RSI.i3626, align 8
  store i64 4295878, i64* %RDX.i3615, align 8
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -56
  %900 = add i64 %897, 11
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RDI.i3611.pre-phi, align 8
  %903 = add i64 %898, -44
  %904 = add i64 %897, 14
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RSI.i3626, align 8
  %908 = add i64 %897, 12661
  %909 = add i64 %897, 19
  %910 = load i64, i64* %6, align 8
  %911 = add i64 %910, -8
  %912 = inttoptr i64 %911 to i64*
  store i64 %909, i64* %912, align 8
  store i64 %911, i64* %6, align 8
  store i64 %908, i64* %3, align 8
  %call2_4012d9 = tail call %struct.Memory* @sub_404440._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %908, %struct.Memory* %call2_4012c6)
  %913 = load i64, i64* %3, align 8
  store i64 4295905, i64* %RSI.i3626, align 8
  store i64 4295905, i64* %RDX.i3615, align 8
  %914 = load i64, i64* %RBP.i, align 8
  %915 = add i64 %914, -56
  %916 = add i64 %913, 11
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RDI.i3611.pre-phi, align 8
  %919 = add i64 %914, -44
  %920 = add i64 %913, 14
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RSI.i3626, align 8
  %924 = add i64 %913, 12802
  %925 = add i64 %913, 19
  %926 = load i64, i64* %6, align 8
  %927 = add i64 %926, -8
  %928 = inttoptr i64 %927 to i64*
  store i64 %925, i64* %928, align 8
  store i64 %927, i64* %6, align 8
  store i64 %924, i64* %3, align 8
  %call2_4012ec = tail call %struct.Memory* @sub_4044e0._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %924, %struct.Memory* %call2_4012d9)
  %929 = load i64, i64* %3, align 8
  store i64 4295936, i64* %RSI.i3626, align 8
  store i64 4295936, i64* %RDX.i3615, align 8
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -56
  %932 = add i64 %929, 11
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RDI.i3611.pre-phi, align 8
  %935 = add i64 %930, -44
  %936 = add i64 %929, 14
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RSI.i3626, align 8
  %940 = add i64 %929, 12943
  %941 = add i64 %929, 19
  %942 = load i64, i64* %6, align 8
  %943 = add i64 %942, -8
  %944 = inttoptr i64 %943 to i64*
  store i64 %941, i64* %944, align 8
  store i64 %943, i64* %6, align 8
  store i64 %940, i64* %3, align 8
  %call2_4012ff = tail call %struct.Memory* @sub_404580._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %940, %struct.Memory* %call2_4012ec)
  %945 = load i64, i64* %3, align 8
  store i64 4295964, i64* %RSI.i3626, align 8
  store i64 4295964, i64* %RDX.i3615, align 8
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -56
  %948 = add i64 %945, 11
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RDI.i3611.pre-phi, align 8
  %951 = add i64 %946, -44
  %952 = add i64 %945, 14
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RSI.i3626, align 8
  %956 = add i64 %945, 13084
  %957 = add i64 %945, 19
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, -8
  %960 = inttoptr i64 %959 to i64*
  store i64 %957, i64* %960, align 8
  store i64 %959, i64* %6, align 8
  store i64 %956, i64* %3, align 8
  %call2_401312 = tail call %struct.Memory* @sub_404620._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %956, %struct.Memory* %call2_4012ff)
  %961 = load i64, i64* %3, align 8
  store i64 4296001, i64* %RSI.i3626, align 8
  store i64 4296001, i64* %RDX.i3615, align 8
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -56
  %964 = add i64 %961, 11
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %RDI.i3611.pre-phi, align 8
  %967 = add i64 %962, -44
  %968 = add i64 %961, 14
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = zext i32 %970 to i64
  store i64 %971, i64* %RSI.i3626, align 8
  %972 = add i64 %961, 13225
  %973 = add i64 %961, 19
  %974 = load i64, i64* %6, align 8
  %975 = add i64 %974, -8
  %976 = inttoptr i64 %975 to i64*
  store i64 %973, i64* %976, align 8
  store i64 %975, i64* %6, align 8
  store i64 %972, i64* %3, align 8
  %call2_401325 = tail call %struct.Memory* @sub_4046c0._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %972, %struct.Memory* %call2_401312)
  %977 = load i64, i64* %3, align 8
  store i64 4296035, i64* %RSI.i3626, align 8
  store i64 4296035, i64* %RDX.i3615, align 8
  %978 = load i64, i64* %RBP.i, align 8
  %979 = add i64 %978, -56
  %980 = add i64 %977, 11
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RDI.i3611.pre-phi, align 8
  %983 = add i64 %978, -44
  %984 = add i64 %977, 14
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = zext i32 %986 to i64
  store i64 %987, i64* %RSI.i3626, align 8
  %988 = add i64 %977, 13366
  %989 = add i64 %977, 19
  %990 = load i64, i64* %6, align 8
  %991 = add i64 %990, -8
  %992 = inttoptr i64 %991 to i64*
  store i64 %989, i64* %992, align 8
  store i64 %991, i64* %6, align 8
  store i64 %988, i64* %3, align 8
  %call2_401338 = tail call %struct.Memory* @sub_404760._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %988, %struct.Memory* %call2_401325)
  %993 = load i64, i64* %3, align 8
  store i64 4296057, i64* %RSI.i3626, align 8
  store i64 4296057, i64* %RDX.i3615, align 8
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -56
  %996 = add i64 %993, 11
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  %998 = load i64, i64* %997, align 8
  store i64 %998, i64* %RDI.i3611.pre-phi, align 8
  %999 = add i64 %994, -44
  %1000 = add i64 %993, 14
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RSI.i3626, align 8
  %1004 = add i64 %993, 13507
  %1005 = add i64 %993, 19
  %1006 = load i64, i64* %6, align 8
  %1007 = add i64 %1006, -8
  %1008 = inttoptr i64 %1007 to i64*
  store i64 %1005, i64* %1008, align 8
  store i64 %1007, i64* %6, align 8
  store i64 %1004, i64* %3, align 8
  %call2_40134b = tail call %struct.Memory* @sub_404800._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1004, %struct.Memory* %call2_401338)
  %1009 = load i64, i64* %3, align 8
  store i64 4296078, i64* %RSI.i3626, align 8
  store i64 4296078, i64* %RDX.i3615, align 8
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -56
  %1012 = add i64 %1009, 11
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RDI.i3611.pre-phi, align 8
  %1015 = add i64 %1010, -44
  %1016 = add i64 %1009, 14
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RSI.i3626, align 8
  %1020 = add i64 %1009, 13648
  %1021 = add i64 %1009, 19
  %1022 = load i64, i64* %6, align 8
  %1023 = add i64 %1022, -8
  %1024 = inttoptr i64 %1023 to i64*
  store i64 %1021, i64* %1024, align 8
  store i64 %1023, i64* %6, align 8
  store i64 %1020, i64* %3, align 8
  %call2_40135e = tail call %struct.Memory* @sub_4048a0._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1020, %struct.Memory* %call2_40134b)
  %1025 = load i64, i64* %3, align 8
  %1026 = add i64 %1025, 2231581
  %1027 = add i64 %1025, 7
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = mul nsw i64 %1030, 1717986919
  %1032 = lshr i64 %1031, 63
  store i64 %1032, i64* %RCX.i3620, align 8
  %1033 = trunc i64 %1032 to i32
  %1034 = ashr i64 %1031, 34
  store i64 %1034, i64* %RAX.i3622, align 8
  %1035 = trunc i64 %1034 to i32
  %1036 = add i32 %1033, %1035
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %202, align 8
  %1038 = icmp ult i32 %1036, %1035
  %1039 = icmp ult i32 %1036, %1033
  %1040 = or i1 %1038, %1039
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %14, align 1
  %1042 = and i32 %1036, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %21, align 1
  %1047 = trunc i64 %1034 to i32
  %1048 = xor i32 %1047, %1036
  %1049 = lshr i32 %1048, 4
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  store i8 %1051, i8* %27, align 1
  %1052 = icmp eq i32 %1036, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %30, align 1
  %1054 = lshr i32 %1036, 31
  %1055 = trunc i32 %1054 to i8
  store i8 %1055, i8* %33, align 1
  %1056 = lshr i64 %1034, 31
  %1057 = trunc i64 %1056 to i32
  %1058 = and i32 %1057, 1
  %1059 = xor i32 %1054, %1058
  %1060 = add nuw nsw i32 %1059, %1054
  %1061 = icmp eq i32 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %39, align 1
  %1063 = add i64 %1025, 2231645
  %1064 = add i64 %1025, 40
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  store i32 %1036, i32* %1065, align 4
  %1066 = load i64, i64* %3, align 8
  store i64 4296100, i64* %RSI.i3626, align 8
  store i64 4296100, i64* %RDX.i3615, align 8
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -56
  %1069 = add i64 %1066, 11
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i64 %1071, i64* %RDI.i3611.pre-phi, align 8
  %1072 = add i64 %1067, -44
  %1073 = add i64 %1066, 14
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RSI.i3626, align 8
  %1077 = add i64 %1066, 13749
  %1078 = add i64 %1066, 19
  %1079 = load i64, i64* %6, align 8
  %1080 = add i64 %1079, -8
  %1081 = inttoptr i64 %1080 to i64*
  store i64 %1078, i64* %1081, align 8
  store i64 %1080, i64* %6, align 8
  store i64 %1077, i64* %3, align 8
  %call2_401399 = tail call %struct.Memory* @sub_404940._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1077, %struct.Memory* %call2_40135e)
  %1082 = load i64, i64* %3, align 8
  store i64 4296121, i64* %RSI.i3626, align 8
  store i64 4296121, i64* %RDX.i3615, align 8
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -56
  %1085 = add i64 %1082, 11
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RDI.i3611.pre-phi, align 8
  %1088 = add i64 %1083, -44
  %1089 = add i64 %1082, 14
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RSI.i3626, align 8
  %1093 = add i64 %1082, 13890
  %1094 = add i64 %1082, 19
  %1095 = load i64, i64* %6, align 8
  %1096 = add i64 %1095, -8
  %1097 = inttoptr i64 %1096 to i64*
  store i64 %1094, i64* %1097, align 8
  store i64 %1096, i64* %6, align 8
  store i64 %1093, i64* %3, align 8
  %call2_4013ac = tail call %struct.Memory* @sub_4049e0._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1093, %struct.Memory* %call2_401399)
  %1098 = load i64, i64* %3, align 8
  store i64 4296152, i64* %RSI.i3626, align 8
  store i64 4296152, i64* %RDX.i3615, align 8
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -56
  %1101 = add i64 %1098, 11
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %RDI.i3611.pre-phi, align 8
  %1104 = add i64 %1099, -44
  %1105 = add i64 %1098, 14
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RSI.i3626, align 8
  %1109 = add i64 %1098, 14031
  %1110 = add i64 %1098, 19
  %1111 = load i64, i64* %6, align 8
  %1112 = add i64 %1111, -8
  %1113 = inttoptr i64 %1112 to i64*
  store i64 %1110, i64* %1113, align 8
  store i64 %1112, i64* %6, align 8
  store i64 %1109, i64* %3, align 8
  %call2_4013bf = tail call %struct.Memory* @sub_404a80._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1109, %struct.Memory* %call2_4013ac)
  %1114 = load i64, i64* %3, align 8
  store i64 4296178, i64* %RSI.i3626, align 8
  store i64 4296178, i64* %RDX.i3615, align 8
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -56
  %1117 = add i64 %1114, 11
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RDI.i3611.pre-phi, align 8
  %1120 = add i64 %1115, -44
  %1121 = add i64 %1114, 14
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RSI.i3626, align 8
  %1125 = add i64 %1114, 14172
  %1126 = add i64 %1114, 19
  %1127 = load i64, i64* %6, align 8
  %1128 = add i64 %1127, -8
  %1129 = inttoptr i64 %1128 to i64*
  store i64 %1126, i64* %1129, align 8
  store i64 %1128, i64* %6, align 8
  store i64 %1125, i64* %3, align 8
  %call2_4013d2 = tail call %struct.Memory* @sub_404b20._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1125, %struct.Memory* %call2_4013bf)
  %1130 = load i64, i64* %3, align 8
  store i64 4296214, i64* %RSI.i3626, align 8
  store i64 4296214, i64* %RDX.i3615, align 8
  %1131 = load i64, i64* %RBP.i, align 8
  %1132 = add i64 %1131, -56
  %1133 = add i64 %1130, 11
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i64 %1135, i64* %RDI.i3611.pre-phi, align 8
  %1136 = add i64 %1131, -44
  %1137 = add i64 %1130, 14
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RSI.i3626, align 8
  %1141 = add i64 %1130, 14313
  %1142 = add i64 %1130, 19
  %1143 = load i64, i64* %6, align 8
  %1144 = add i64 %1143, -8
  %1145 = inttoptr i64 %1144 to i64*
  store i64 %1142, i64* %1145, align 8
  store i64 %1144, i64* %6, align 8
  store i64 %1141, i64* %3, align 8
  %call2_4013e5 = tail call %struct.Memory* @sub_404bc0._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1141, %struct.Memory* %call2_4013d2)
  %1146 = load i64, i64* %3, align 8
  store i64 4296240, i64* %RSI.i3626, align 8
  store i64 4296240, i64* %RDX.i3615, align 8
  %1147 = load i64, i64* %RBP.i, align 8
  %1148 = add i64 %1147, -56
  %1149 = add i64 %1146, 11
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RDI.i3611.pre-phi, align 8
  %1152 = add i64 %1147, -44
  %1153 = add i64 %1146, 14
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RSI.i3626, align 8
  %1157 = add i64 %1146, 14454
  %1158 = add i64 %1146, 19
  %1159 = load i64, i64* %6, align 8
  %1160 = add i64 %1159, -8
  %1161 = inttoptr i64 %1160 to i64*
  store i64 %1158, i64* %1161, align 8
  store i64 %1160, i64* %6, align 8
  store i64 %1157, i64* %3, align 8
  %call2_4013f8 = tail call %struct.Memory* @sub_404c60._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1157, %struct.Memory* %call2_4013e5)
  %1162 = load i64, i64* %3, align 8
  store i64 4296277, i64* %RSI.i3626, align 8
  store i64 4296277, i64* %RDX.i3615, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -56
  %1165 = add i64 %1162, 11
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i64*
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %RDI.i3611.pre-phi, align 8
  %1168 = add i64 %1163, -44
  %1169 = add i64 %1162, 14
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RSI.i3626, align 8
  %1173 = add i64 %1162, 14595
  %1174 = add i64 %1162, 19
  %1175 = load i64, i64* %6, align 8
  %1176 = add i64 %1175, -8
  %1177 = inttoptr i64 %1176 to i64*
  store i64 %1174, i64* %1177, align 8
  store i64 %1176, i64* %6, align 8
  store i64 %1173, i64* %3, align 8
  %call2_40140b = tail call %struct.Memory* @sub_404d00._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1173, %struct.Memory* %call2_4013f8)
  %1178 = load i64, i64* %3, align 8
  store i64 4296313, i64* %RSI.i3626, align 8
  store i64 4296313, i64* %RDX.i3615, align 8
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -56
  %1181 = add i64 %1178, 11
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RDI.i3611.pre-phi, align 8
  %1184 = add i64 %1179, -44
  %1185 = add i64 %1178, 14
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RSI.i3626, align 8
  %1189 = add i64 %1178, 14736
  %1190 = add i64 %1178, 19
  %1191 = load i64, i64* %6, align 8
  %1192 = add i64 %1191, -8
  %1193 = inttoptr i64 %1192 to i64*
  store i64 %1190, i64* %1193, align 8
  store i64 %1192, i64* %6, align 8
  store i64 %1189, i64* %3, align 8
  %call2_40141e = tail call %struct.Memory* @sub_404da0._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1189, %struct.Memory* %call2_40140b)
  %1194 = load i64, i64* %3, align 8
  store i64 4296337, i64* %RSI.i3626, align 8
  store i64 4296337, i64* %RDX.i3615, align 8
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -56
  %1197 = add i64 %1194, 11
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %RDI.i3611.pre-phi, align 8
  %1200 = add i64 %1195, -44
  %1201 = add i64 %1194, 14
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RSI.i3626, align 8
  %1205 = add i64 %1194, 14877
  %1206 = add i64 %1194, 19
  %1207 = load i64, i64* %6, align 8
  %1208 = add i64 %1207, -8
  %1209 = inttoptr i64 %1208 to i64*
  store i64 %1206, i64* %1209, align 8
  store i64 %1208, i64* %6, align 8
  store i64 %1205, i64* %3, align 8
  %call2_401431 = tail call %struct.Memory* @sub_404e40._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1205, %struct.Memory* %call2_40141e)
  %1210 = load i64, i64* %3, align 8
  store i64 4296371, i64* %RSI.i3626, align 8
  store i64 4296371, i64* %RDX.i3615, align 8
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -56
  %1213 = add i64 %1210, 11
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RDI.i3611.pre-phi, align 8
  %1216 = add i64 %1211, -44
  %1217 = add i64 %1210, 14
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RSI.i3626, align 8
  %1221 = add i64 %1210, 15018
  %1222 = add i64 %1210, 19
  %1223 = load i64, i64* %6, align 8
  %1224 = add i64 %1223, -8
  %1225 = inttoptr i64 %1224 to i64*
  store i64 %1222, i64* %1225, align 8
  store i64 %1224, i64* %6, align 8
  store i64 %1221, i64* %3, align 8
  %call2_401444 = tail call %struct.Memory* @sub_404ee0._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1221, %struct.Memory* %call2_401431)
  %1226 = load i64, i64* %3, align 8
  store i64 4296405, i64* %RSI.i3626, align 8
  store i64 4296405, i64* %RDX.i3615, align 8
  %1227 = load i64, i64* %RBP.i, align 8
  %1228 = add i64 %1227, -56
  %1229 = add i64 %1226, 11
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i64*
  %1231 = load i64, i64* %1230, align 8
  store i64 %1231, i64* %RDI.i3611.pre-phi, align 8
  %1232 = add i64 %1227, -44
  %1233 = add i64 %1226, 14
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RSI.i3626, align 8
  %1237 = add i64 %1226, 15159
  %1238 = add i64 %1226, 19
  %1239 = load i64, i64* %6, align 8
  %1240 = add i64 %1239, -8
  %1241 = inttoptr i64 %1240 to i64*
  store i64 %1238, i64* %1241, align 8
  store i64 %1240, i64* %6, align 8
  store i64 %1237, i64* %3, align 8
  %call2_401457 = tail call %struct.Memory* @sub_404f80._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1237, %struct.Memory* %call2_401444)
  %1242 = load i64, i64* %3, align 8
  store i64 4296437, i64* %RSI.i3626, align 8
  store i64 4296437, i64* %RDX.i3615, align 8
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -56
  %1245 = add i64 %1242, 11
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i64*
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %RDI.i3611.pre-phi, align 8
  %1248 = add i64 %1243, -44
  %1249 = add i64 %1242, 14
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RSI.i3626, align 8
  %1253 = add i64 %1242, 15300
  %1254 = add i64 %1242, 19
  %1255 = load i64, i64* %6, align 8
  %1256 = add i64 %1255, -8
  %1257 = inttoptr i64 %1256 to i64*
  store i64 %1254, i64* %1257, align 8
  store i64 %1256, i64* %6, align 8
  store i64 %1253, i64* %3, align 8
  %call2_40146a = tail call %struct.Memory* @sub_405020._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1253, %struct.Memory* %call2_401457)
  %1258 = load i64, i64* %3, align 8
  store i64 4296458, i64* %RSI.i3626, align 8
  store i64 4296458, i64* %RDX.i3615, align 8
  %1259 = load i64, i64* %RBP.i, align 8
  %1260 = add i64 %1259, -56
  %1261 = add i64 %1258, 11
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %RDI.i3611.pre-phi, align 8
  %1264 = add i64 %1259, -44
  %1265 = add i64 %1258, 14
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  %1267 = load i32, i32* %1266, align 4
  %1268 = zext i32 %1267 to i64
  store i64 %1268, i64* %RSI.i3626, align 8
  %1269 = add i64 %1258, 15441
  %1270 = add i64 %1258, 19
  %1271 = load i64, i64* %6, align 8
  %1272 = add i64 %1271, -8
  %1273 = inttoptr i64 %1272 to i64*
  store i64 %1270, i64* %1273, align 8
  store i64 %1272, i64* %6, align 8
  store i64 %1269, i64* %3, align 8
  %call2_40147d = tail call %struct.Memory* @sub_4050c0._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1269, %struct.Memory* %call2_40146a)
  %1274 = load i64, i64* %3, align 8
  store i64 4296488, i64* %RSI.i3626, align 8
  store i64 4296488, i64* %RDX.i3615, align 8
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -56
  %1277 = add i64 %1274, 11
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i64*
  %1279 = load i64, i64* %1278, align 8
  store i64 %1279, i64* %RDI.i3611.pre-phi, align 8
  %1280 = add i64 %1275, -44
  %1281 = add i64 %1274, 14
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RSI.i3626, align 8
  %1285 = add i64 %1274, 15582
  %1286 = add i64 %1274, 19
  %1287 = load i64, i64* %6, align 8
  %1288 = add i64 %1287, -8
  %1289 = inttoptr i64 %1288 to i64*
  store i64 %1286, i64* %1289, align 8
  store i64 %1288, i64* %6, align 8
  store i64 %1285, i64* %3, align 8
  %call2_401490 = tail call %struct.Memory* @sub_405160._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1285, %struct.Memory* %call2_40147d)
  %1290 = load i64, i64* %3, align 8
  store i64 4296508, i64* %RSI.i3626, align 8
  store i64 4296508, i64* %RDX.i3615, align 8
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -56
  %1293 = add i64 %1290, 11
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RDI.i3611.pre-phi, align 8
  %1296 = add i64 %1291, -44
  %1297 = add i64 %1290, 14
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RSI.i3626, align 8
  %1301 = add i64 %1290, 15723
  %1302 = add i64 %1290, 19
  %1303 = load i64, i64* %6, align 8
  %1304 = add i64 %1303, -8
  %1305 = inttoptr i64 %1304 to i64*
  store i64 %1302, i64* %1305, align 8
  store i64 %1304, i64* %6, align 8
  store i64 %1301, i64* %3, align 8
  %call2_4014a3 = tail call %struct.Memory* @sub_405200._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1301, %struct.Memory* %call2_401490)
  %1306 = load i64, i64* %3, align 8
  store i64 4296537, i64* %RSI.i3626, align 8
  store i64 4296537, i64* %RDX.i3615, align 8
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -56
  %1309 = add i64 %1306, 11
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %RDI.i3611.pre-phi, align 8
  %1312 = add i64 %1307, -44
  %1313 = add i64 %1306, 14
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i32*
  %1315 = load i32, i32* %1314, align 4
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RSI.i3626, align 8
  %1317 = add i64 %1306, 15864
  %1318 = add i64 %1306, 19
  %1319 = load i64, i64* %6, align 8
  %1320 = add i64 %1319, -8
  %1321 = inttoptr i64 %1320 to i64*
  store i64 %1318, i64* %1321, align 8
  store i64 %1320, i64* %6, align 8
  store i64 %1317, i64* %3, align 8
  %call2_4014b6 = tail call %struct.Memory* @sub_4052a0._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1317, %struct.Memory* %call2_4014a3)
  %1322 = load i64, i64* %3, align 8
  store i64 4296558, i64* %RSI.i3626, align 8
  store i64 4296558, i64* %RDX.i3615, align 8
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -56
  %1325 = add i64 %1322, 11
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RDI.i3611.pre-phi, align 8
  %1328 = add i64 %1323, -44
  %1329 = add i64 %1322, 14
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RSI.i3626, align 8
  %1333 = add i64 %1322, 16005
  %1334 = add i64 %1322, 19
  %1335 = load i64, i64* %6, align 8
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1334, i64* %1337, align 8
  store i64 %1336, i64* %6, align 8
  store i64 %1333, i64* %3, align 8
  %call2_4014c9 = tail call %struct.Memory* @sub_405340._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1333, %struct.Memory* %call2_4014b6)
  %1338 = load i64, i64* %3, align 8
  %1339 = add i64 %1338, 2231226
  %1340 = add i64 %1338, 8
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to double*
  %1342 = load double, double* %1341, align 8
  %1343 = tail call double @llvm.trunc.f64(double %1342)
  %1344 = tail call double @llvm.fabs.f64(double %1343)
  %1345 = fcmp ogt double %1344, 0x41DFFFFFFFC00000
  %1346 = fptosi double %1343 to i32
  %1347 = zext i32 %1346 to i64
  %1348 = select i1 %1345, i64 2147483648, i64 %1347
  store i64 6734928, i64* %202, align 8
  store i64 6734928, i64* %RAX.i3622, align 8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i2745 = bitcast %union.anon* %1349 to i16*
  %1350 = trunc i64 %1348 to i16
  store i16 %1350, i16* %R10W.i2745, align 2
  %sext17 = shl i64 %1348, 48
  %1351 = ashr exact i64 %sext17, 48
  %1352 = and i64 %1351, 4294967295
  store i64 %1352, i64* %RDX.i3615, align 8
  store i64 6750928, i64* %RSI.i3626, align 8
  store i64 6734928, i64* %RDI.i3611.pre-phi, align 8
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -64
  %1355 = add i64 %1338, 37
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  store i64 6734928, i64* %1356, align 8
  %1357 = load i64, i64* %3, align 8
  %1358 = add i64 %1357, 16109
  %1359 = add i64 %1357, 5
  %1360 = load i64, i64* %6, align 8
  %1361 = add i64 %1360, -8
  %1362 = inttoptr i64 %1361 to i64*
  store i64 %1359, i64* %1362, align 8
  store i64 %1361, i64* %6, align 8
  store i64 %1358, i64* %3, align 8
  %call2_4014f3 = tail call %struct.Memory* @sub_4053e0._Z4fillIPssEvT_S1_T0_(%struct.State* nonnull %0, i64 %1358, %struct.Memory* %call2_4014c9)
  %1363 = load i64, i64* %3, align 8
  %1364 = add i64 %1363, 2231176
  %1365 = add i64 %1363, 6
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = add i64 %1363, 2231240
  %1369 = add i64 %1363, 12
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  store i32 %1367, i32* %1370, align 4
  %1371 = load i64, i64* %3, align 8
  store i64 4296589, i64* %RDX.i3615, align 8
  %1372 = load i64, i64* %RBP.i, align 8
  %1373 = add i64 %1372, -64
  %1374 = add i64 %1371, 9
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i64*
  %1376 = load i64, i64* %1375, align 8
  store i64 %1376, i64* %RDI.i3611.pre-phi, align 8
  %1377 = add i64 %1372, -44
  %1378 = add i64 %1371, 12
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RSI.i3626, align 8
  %1382 = add i64 %1371, 16156
  %1383 = add i64 %1371, 17
  %1384 = load i64, i64* %6, align 8
  %1385 = add i64 %1384, -8
  %1386 = inttoptr i64 %1385 to i64*
  store i64 %1383, i64* %1386, align 8
  store i64 %1385, i64* %6, align 8
  store i64 %1382, i64* %3, align 8
  %call2_401510 = tail call %struct.Memory* @sub_405420._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1382, %struct.Memory* %call2_4014f3)
  %1387 = load i64, i64* %3, align 8
  store i64 4296607, i64* %RSI.i3626, align 8
  store i64 4296607, i64* %RDX.i3615, align 8
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -64
  %1390 = add i64 %1387, 11
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RDI.i3611.pre-phi, align 8
  %1393 = add i64 %1388, -44
  %1394 = add i64 %1387, 14
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i32*
  %1396 = load i32, i32* %1395, align 4
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RSI.i3626, align 8
  %1398 = add i64 %1387, 16315
  %1399 = add i64 %1387, 19
  %1400 = load i64, i64* %6, align 8
  %1401 = add i64 %1400, -8
  %1402 = inttoptr i64 %1401 to i64*
  store i64 %1399, i64* %1402, align 8
  store i64 %1401, i64* %6, align 8
  store i64 %1398, i64* %3, align 8
  %call2_401523 = tail call %struct.Memory* @sub_4054d0._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1398, %struct.Memory* %call2_401510)
  %1403 = load i64, i64* %3, align 8
  store i64 4296630, i64* %RSI.i3626, align 8
  store i64 4296630, i64* %RDX.i3615, align 8
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -64
  %1406 = add i64 %1403, 11
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i64*
  %1408 = load i64, i64* %1407, align 8
  store i64 %1408, i64* %RDI.i3611.pre-phi, align 8
  %1409 = add i64 %1404, -44
  %1410 = add i64 %1403, 14
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RSI.i3626, align 8
  %1414 = add i64 %1403, 16472
  %1415 = add i64 %1403, 19
  %1416 = load i64, i64* %6, align 8
  %1417 = add i64 %1416, -8
  %1418 = inttoptr i64 %1417 to i64*
  store i64 %1415, i64* %1418, align 8
  store i64 %1417, i64* %6, align 8
  store i64 %1414, i64* %3, align 8
  %call2_401536 = tail call %struct.Memory* @sub_405580._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1414, %struct.Memory* %call2_401523)
  %1419 = load i64, i64* %3, align 8
  store i64 4296658, i64* %RSI.i3626, align 8
  store i64 4296658, i64* %RDX.i3615, align 8
  %1420 = load i64, i64* %RBP.i, align 8
  %1421 = add i64 %1420, -64
  %1422 = add i64 %1419, 11
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i64*
  %1424 = load i64, i64* %1423, align 8
  store i64 %1424, i64* %RDI.i3611.pre-phi, align 8
  %1425 = add i64 %1420, -44
  %1426 = add i64 %1419, 14
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RSI.i3626, align 8
  %1430 = add i64 %1419, 16629
  %1431 = add i64 %1419, 19
  %1432 = load i64, i64* %6, align 8
  %1433 = add i64 %1432, -8
  %1434 = inttoptr i64 %1433 to i64*
  store i64 %1431, i64* %1434, align 8
  store i64 %1433, i64* %6, align 8
  store i64 %1430, i64* %3, align 8
  %call2_401549 = tail call %struct.Memory* @sub_405630._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1430, %struct.Memory* %call2_401536)
  %1435 = load i64, i64* %3, align 8
  store i64 4296686, i64* %RSI.i3626, align 8
  store i64 4296686, i64* %RDX.i3615, align 8
  %1436 = load i64, i64* %RBP.i, align 8
  %1437 = add i64 %1436, -64
  %1438 = add i64 %1435, 11
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i64*
  %1440 = load i64, i64* %1439, align 8
  store i64 %1440, i64* %RDI.i3611.pre-phi, align 8
  %1441 = add i64 %1436, -44
  %1442 = add i64 %1435, 14
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RSI.i3626, align 8
  %1446 = add i64 %1435, 16786
  %1447 = add i64 %1435, 19
  %1448 = load i64, i64* %6, align 8
  %1449 = add i64 %1448, -8
  %1450 = inttoptr i64 %1449 to i64*
  store i64 %1447, i64* %1450, align 8
  store i64 %1449, i64* %6, align 8
  store i64 %1446, i64* %3, align 8
  %call2_40155c = tail call %struct.Memory* @sub_4056e0._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1446, %struct.Memory* %call2_401549)
  %1451 = load i64, i64* %3, align 8
  store i64 4296712, i64* %RSI.i3626, align 8
  store i64 4296712, i64* %RDX.i3615, align 8
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -64
  %1454 = add i64 %1451, 11
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i64 %1456, i64* %RDI.i3611.pre-phi, align 8
  %1457 = add i64 %1452, -44
  %1458 = add i64 %1451, 14
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i32*
  %1460 = load i32, i32* %1459, align 4
  %1461 = zext i32 %1460 to i64
  store i64 %1461, i64* %RSI.i3626, align 8
  %1462 = add i64 %1451, 16943
  %1463 = add i64 %1451, 19
  %1464 = load i64, i64* %6, align 8
  %1465 = add i64 %1464, -8
  %1466 = inttoptr i64 %1465 to i64*
  store i64 %1463, i64* %1466, align 8
  store i64 %1465, i64* %6, align 8
  store i64 %1462, i64* %3, align 8
  %call2_40156f = tail call %struct.Memory* @sub_405790._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1462, %struct.Memory* %call2_40155c)
  %1467 = load i64, i64* %3, align 8
  store i64 4296735, i64* %RSI.i3626, align 8
  store i64 4296735, i64* %RDX.i3615, align 8
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -64
  %1470 = add i64 %1467, 11
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i64*
  %1472 = load i64, i64* %1471, align 8
  store i64 %1472, i64* %RDI.i3611.pre-phi, align 8
  %1473 = add i64 %1468, -44
  %1474 = add i64 %1467, 14
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %RSI.i3626, align 8
  %1478 = add i64 %1467, 17100
  %1479 = add i64 %1467, 19
  %1480 = load i64, i64* %6, align 8
  %1481 = add i64 %1480, -8
  %1482 = inttoptr i64 %1481 to i64*
  store i64 %1479, i64* %1482, align 8
  store i64 %1481, i64* %6, align 8
  store i64 %1478, i64* %3, align 8
  %call2_401582 = tail call %struct.Memory* @sub_405840._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1478, %struct.Memory* %call2_40156f)
  %1483 = load i64, i64* %3, align 8
  store i64 4296760, i64* %RSI.i3626, align 8
  store i64 4296760, i64* %RDX.i3615, align 8
  %1484 = load i64, i64* %RBP.i, align 8
  %1485 = add i64 %1484, -64
  %1486 = add i64 %1483, 11
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %RDI.i3611.pre-phi, align 8
  %1489 = add i64 %1484, -44
  %1490 = add i64 %1483, 14
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RSI.i3626, align 8
  %1494 = add i64 %1483, 17257
  %1495 = add i64 %1483, 19
  %1496 = load i64, i64* %6, align 8
  %1497 = add i64 %1496, -8
  %1498 = inttoptr i64 %1497 to i64*
  store i64 %1495, i64* %1498, align 8
  store i64 %1497, i64* %6, align 8
  store i64 %1494, i64* %3, align 8
  %call2_401595 = tail call %struct.Memory* @sub_4058f0._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1494, %struct.Memory* %call2_401582)
  %1499 = load i64, i64* %3, align 8
  store i64 4296788, i64* %RSI.i3626, align 8
  store i64 4296788, i64* %RDX.i3615, align 8
  %1500 = load i64, i64* %RBP.i, align 8
  %1501 = add i64 %1500, -64
  %1502 = add i64 %1499, 11
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RDI.i3611.pre-phi, align 8
  %1505 = add i64 %1500, -44
  %1506 = add i64 %1499, 14
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RSI.i3626, align 8
  %1510 = add i64 %1499, 17414
  %1511 = add i64 %1499, 19
  %1512 = load i64, i64* %6, align 8
  %1513 = add i64 %1512, -8
  %1514 = inttoptr i64 %1513 to i64*
  store i64 %1511, i64* %1514, align 8
  store i64 %1513, i64* %6, align 8
  store i64 %1510, i64* %3, align 8
  %call2_4015a8 = tail call %struct.Memory* @sub_4059a0._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1510, %struct.Memory* %call2_401595)
  %1515 = load i64, i64* %3, align 8
  store i64 4296820, i64* %RSI.i3626, align 8
  store i64 4296820, i64* %RDX.i3615, align 8
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -64
  %1518 = add i64 %1515, 11
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i64*
  %1520 = load i64, i64* %1519, align 8
  store i64 %1520, i64* %RDI.i3611.pre-phi, align 8
  %1521 = add i64 %1516, -44
  %1522 = add i64 %1515, 14
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RSI.i3626, align 8
  %1526 = add i64 %1515, 17571
  %1527 = add i64 %1515, 19
  %1528 = load i64, i64* %6, align 8
  %1529 = add i64 %1528, -8
  %1530 = inttoptr i64 %1529 to i64*
  store i64 %1527, i64* %1530, align 8
  store i64 %1529, i64* %6, align 8
  store i64 %1526, i64* %3, align 8
  %call2_4015bb = tail call %struct.Memory* @sub_405a50._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1526, %struct.Memory* %call2_4015a8)
  %1531 = load i64, i64* %3, align 8
  store i64 4296849, i64* %RSI.i3626, align 8
  store i64 4296849, i64* %RDX.i3615, align 8
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -64
  %1534 = add i64 %1531, 11
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %RDI.i3611.pre-phi, align 8
  %1537 = add i64 %1532, -44
  %1538 = add i64 %1531, 14
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i32*
  %1540 = load i32, i32* %1539, align 4
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RSI.i3626, align 8
  %1542 = add i64 %1531, 17728
  %1543 = add i64 %1531, 19
  %1544 = load i64, i64* %6, align 8
  %1545 = add i64 %1544, -8
  %1546 = inttoptr i64 %1545 to i64*
  store i64 %1543, i64* %1546, align 8
  store i64 %1545, i64* %6, align 8
  store i64 %1542, i64* %3, align 8
  %call2_4015ce = tail call %struct.Memory* @sub_405b00._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1542, %struct.Memory* %call2_4015bb)
  %1547 = load i64, i64* %3, align 8
  store i64 4296887, i64* %RSI.i3626, align 8
  store i64 4296887, i64* %RDX.i3615, align 8
  %1548 = load i64, i64* %RBP.i, align 8
  %1549 = add i64 %1548, -64
  %1550 = add i64 %1547, 11
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RDI.i3611.pre-phi, align 8
  %1553 = add i64 %1548, -44
  %1554 = add i64 %1547, 14
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RSI.i3626, align 8
  %1558 = add i64 %1547, 17885
  %1559 = add i64 %1547, 19
  %1560 = load i64, i64* %6, align 8
  %1561 = add i64 %1560, -8
  %1562 = inttoptr i64 %1561 to i64*
  store i64 %1559, i64* %1562, align 8
  store i64 %1561, i64* %6, align 8
  store i64 %1558, i64* %3, align 8
  %call2_4015e1 = tail call %struct.Memory* @sub_405bb0._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1558, %struct.Memory* %call2_4015ce)
  %1563 = load i64, i64* %3, align 8
  store i64 4296922, i64* %RSI.i3626, align 8
  store i64 4296922, i64* %RDX.i3615, align 8
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -64
  %1566 = add i64 %1563, 11
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i64*
  %1568 = load i64, i64* %1567, align 8
  store i64 %1568, i64* %RDI.i3611.pre-phi, align 8
  %1569 = add i64 %1564, -44
  %1570 = add i64 %1563, 14
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RSI.i3626, align 8
  %1574 = add i64 %1563, 18042
  %1575 = add i64 %1563, 19
  %1576 = load i64, i64* %6, align 8
  %1577 = add i64 %1576, -8
  %1578 = inttoptr i64 %1577 to i64*
  store i64 %1575, i64* %1578, align 8
  store i64 %1577, i64* %6, align 8
  store i64 %1574, i64* %3, align 8
  %call2_4015f4 = tail call %struct.Memory* @sub_405c60._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1574, %struct.Memory* %call2_4015e1)
  %1579 = load i64, i64* %3, align 8
  store i64 4296945, i64* %RSI.i3626, align 8
  store i64 4296945, i64* %RDX.i3615, align 8
  %1580 = load i64, i64* %RBP.i, align 8
  %1581 = add i64 %1580, -64
  %1582 = add i64 %1579, 11
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i64*
  %1584 = load i64, i64* %1583, align 8
  store i64 %1584, i64* %RDI.i3611.pre-phi, align 8
  %1585 = add i64 %1580, -44
  %1586 = add i64 %1579, 14
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RSI.i3626, align 8
  %1590 = add i64 %1579, 18199
  %1591 = add i64 %1579, 19
  %1592 = load i64, i64* %6, align 8
  %1593 = add i64 %1592, -8
  %1594 = inttoptr i64 %1593 to i64*
  store i64 %1591, i64* %1594, align 8
  store i64 %1593, i64* %6, align 8
  store i64 %1590, i64* %3, align 8
  %call2_401607 = tail call %struct.Memory* @sub_405d10._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1590, %struct.Memory* %call2_4015f4)
  %1595 = load i64, i64* %3, align 8
  store i64 4296967, i64* %RSI.i3626, align 8
  store i64 4296967, i64* %RDX.i3615, align 8
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -64
  %1598 = add i64 %1595, 11
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i64*
  %1600 = load i64, i64* %1599, align 8
  store i64 %1600, i64* %RDI.i3611.pre-phi, align 8
  %1601 = add i64 %1596, -44
  %1602 = add i64 %1595, 14
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RSI.i3626, align 8
  %1606 = add i64 %1595, 18356
  %1607 = add i64 %1595, 19
  %1608 = load i64, i64* %6, align 8
  %1609 = add i64 %1608, -8
  %1610 = inttoptr i64 %1609 to i64*
  store i64 %1607, i64* %1610, align 8
  store i64 %1609, i64* %6, align 8
  store i64 %1606, i64* %3, align 8
  %call2_40161a = tail call %struct.Memory* @sub_405dc0._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1606, %struct.Memory* %call2_401607)
  %1611 = load i64, i64* %3, align 8
  %1612 = add i64 %1611, 2230881
  %1613 = add i64 %1611, 7
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i32*
  %1615 = load i32, i32* %1614, align 4
  %1616 = sext i32 %1615 to i64
  %1617 = mul nsw i64 %1616, 1717986919
  %1618 = lshr i64 %1617, 63
  store i64 %1618, i64* %RCX.i3620, align 8
  %1619 = trunc i64 %1618 to i32
  %1620 = ashr i64 %1617, 34
  store i64 %1620, i64* %RAX.i3622, align 8
  %1621 = trunc i64 %1620 to i32
  %1622 = add i32 %1619, %1621
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %202, align 8
  %1624 = icmp ult i32 %1622, %1621
  %1625 = icmp ult i32 %1622, %1619
  %1626 = or i1 %1624, %1625
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %14, align 1
  %1628 = and i32 %1622, 255
  %1629 = tail call i32 @llvm.ctpop.i32(i32 %1628)
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  %1632 = xor i8 %1631, 1
  store i8 %1632, i8* %21, align 1
  %1633 = trunc i64 %1620 to i32
  %1634 = xor i32 %1633, %1622
  %1635 = lshr i32 %1634, 4
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %27, align 1
  %1638 = icmp eq i32 %1622, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %30, align 1
  %1640 = lshr i32 %1622, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %33, align 1
  %1642 = lshr i64 %1620, 31
  %1643 = trunc i64 %1642 to i32
  %1644 = and i32 %1643, 1
  %1645 = xor i32 %1640, %1644
  %1646 = add nuw nsw i32 %1645, %1640
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %39, align 1
  %1649 = add i64 %1611, 2230945
  %1650 = add i64 %1611, 40
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  store i32 %1622, i32* %1651, align 4
  %1652 = load i64, i64* %3, align 8
  store i64 4296990, i64* %RSI.i3626, align 8
  store i64 4296990, i64* %RDX.i3615, align 8
  %1653 = load i64, i64* %RBP.i, align 8
  %1654 = add i64 %1653, -64
  %1655 = add i64 %1652, 11
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i64*
  %1657 = load i64, i64* %1656, align 8
  store i64 %1657, i64* %RDI.i3611.pre-phi, align 8
  %1658 = add i64 %1653, -44
  %1659 = add i64 %1652, 14
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RSI.i3626, align 8
  %1663 = add i64 %1652, 18473
  %1664 = add i64 %1652, 19
  %1665 = load i64, i64* %6, align 8
  %1666 = add i64 %1665, -8
  %1667 = inttoptr i64 %1666 to i64*
  store i64 %1664, i64* %1667, align 8
  store i64 %1666, i64* %6, align 8
  store i64 %1663, i64* %3, align 8
  %call2_401655 = tail call %struct.Memory* @sub_405e70._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1663, %struct.Memory* %call2_40161a)
  %1668 = load i64, i64* %3, align 8
  store i64 4297012, i64* %RSI.i3626, align 8
  store i64 4297012, i64* %RDX.i3615, align 8
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -64
  %1671 = add i64 %1668, 11
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i64*
  %1673 = load i64, i64* %1672, align 8
  store i64 %1673, i64* %RDI.i3611.pre-phi, align 8
  %1674 = add i64 %1669, -44
  %1675 = add i64 %1668, 14
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RSI.i3626, align 8
  %1679 = add i64 %1668, 18630
  %1680 = add i64 %1668, 19
  %1681 = load i64, i64* %6, align 8
  %1682 = add i64 %1681, -8
  %1683 = inttoptr i64 %1682 to i64*
  store i64 %1680, i64* %1683, align 8
  store i64 %1682, i64* %6, align 8
  store i64 %1679, i64* %3, align 8
  %call2_401668 = tail call %struct.Memory* @sub_405f20._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1679, %struct.Memory* %call2_401655)
  %1684 = load i64, i64* %3, align 8
  store i64 4297044, i64* %RSI.i3626, align 8
  store i64 4297044, i64* %RDX.i3615, align 8
  %1685 = load i64, i64* %RBP.i, align 8
  %1686 = add i64 %1685, -64
  %1687 = add i64 %1684, 11
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RDI.i3611.pre-phi, align 8
  %1690 = add i64 %1685, -44
  %1691 = add i64 %1684, 14
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RSI.i3626, align 8
  %1695 = add i64 %1684, 18787
  %1696 = add i64 %1684, 19
  %1697 = load i64, i64* %6, align 8
  %1698 = add i64 %1697, -8
  %1699 = inttoptr i64 %1698 to i64*
  store i64 %1696, i64* %1699, align 8
  store i64 %1698, i64* %6, align 8
  store i64 %1695, i64* %3, align 8
  %call2_40167b = tail call %struct.Memory* @sub_405fd0._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1695, %struct.Memory* %call2_401668)
  %1700 = load i64, i64* %3, align 8
  store i64 4297071, i64* %RSI.i3626, align 8
  store i64 4297071, i64* %RDX.i3615, align 8
  %1701 = load i64, i64* %RBP.i, align 8
  %1702 = add i64 %1701, -64
  %1703 = add i64 %1700, 11
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i64*
  %1705 = load i64, i64* %1704, align 8
  store i64 %1705, i64* %RDI.i3611.pre-phi, align 8
  %1706 = add i64 %1701, -44
  %1707 = add i64 %1700, 14
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RSI.i3626, align 8
  %1711 = add i64 %1700, 18944
  %1712 = add i64 %1700, 19
  %1713 = load i64, i64* %6, align 8
  %1714 = add i64 %1713, -8
  %1715 = inttoptr i64 %1714 to i64*
  store i64 %1712, i64* %1715, align 8
  store i64 %1714, i64* %6, align 8
  store i64 %1711, i64* %3, align 8
  %call2_40168e = tail call %struct.Memory* @sub_406080._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1711, %struct.Memory* %call2_40167b)
  %1716 = load i64, i64* %3, align 8
  store i64 4297108, i64* %RSI.i3626, align 8
  store i64 4297108, i64* %RDX.i3615, align 8
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -64
  %1719 = add i64 %1716, 11
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i64*
  %1721 = load i64, i64* %1720, align 8
  store i64 %1721, i64* %RDI.i3611.pre-phi, align 8
  %1722 = add i64 %1717, -44
  %1723 = add i64 %1716, 14
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = zext i32 %1725 to i64
  store i64 %1726, i64* %RSI.i3626, align 8
  %1727 = add i64 %1716, 19101
  %1728 = add i64 %1716, 19
  %1729 = load i64, i64* %6, align 8
  %1730 = add i64 %1729, -8
  %1731 = inttoptr i64 %1730 to i64*
  store i64 %1728, i64* %1731, align 8
  store i64 %1730, i64* %6, align 8
  store i64 %1727, i64* %3, align 8
  %call2_4016a1 = tail call %struct.Memory* @sub_406130._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1727, %struct.Memory* %call2_40168e)
  %1732 = load i64, i64* %3, align 8
  store i64 4297135, i64* %RSI.i3626, align 8
  store i64 4297135, i64* %RDX.i3615, align 8
  %1733 = load i64, i64* %RBP.i, align 8
  %1734 = add i64 %1733, -64
  %1735 = add i64 %1732, 11
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i64*
  %1737 = load i64, i64* %1736, align 8
  store i64 %1737, i64* %RDI.i3611.pre-phi, align 8
  %1738 = add i64 %1733, -44
  %1739 = add i64 %1732, 14
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to i32*
  %1741 = load i32, i32* %1740, align 4
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RSI.i3626, align 8
  %1743 = add i64 %1732, 19258
  %1744 = add i64 %1732, 19
  %1745 = load i64, i64* %6, align 8
  %1746 = add i64 %1745, -8
  %1747 = inttoptr i64 %1746 to i64*
  store i64 %1744, i64* %1747, align 8
  store i64 %1746, i64* %6, align 8
  store i64 %1743, i64* %3, align 8
  %call2_4016b4 = tail call %struct.Memory* @sub_4061e0._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1743, %struct.Memory* %call2_4016a1)
  %1748 = load i64, i64* %3, align 8
  store i64 4297173, i64* %RSI.i3626, align 8
  store i64 4297173, i64* %RDX.i3615, align 8
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -64
  %1751 = add i64 %1748, 11
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i64*
  %1753 = load i64, i64* %1752, align 8
  store i64 %1753, i64* %RDI.i3611.pre-phi, align 8
  %1754 = add i64 %1749, -44
  %1755 = add i64 %1748, 14
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RSI.i3626, align 8
  %1759 = add i64 %1748, 19415
  %1760 = add i64 %1748, 19
  %1761 = load i64, i64* %6, align 8
  %1762 = add i64 %1761, -8
  %1763 = inttoptr i64 %1762 to i64*
  store i64 %1760, i64* %1763, align 8
  store i64 %1762, i64* %6, align 8
  store i64 %1759, i64* %3, align 8
  %call2_4016c7 = tail call %struct.Memory* @sub_406290._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1759, %struct.Memory* %call2_4016b4)
  %1764 = load i64, i64* %3, align 8
  store i64 4297210, i64* %RSI.i3626, align 8
  store i64 4297210, i64* %RDX.i3615, align 8
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -64
  %1767 = add i64 %1764, 11
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i64*
  %1769 = load i64, i64* %1768, align 8
  store i64 %1769, i64* %RDI.i3611.pre-phi, align 8
  %1770 = add i64 %1765, -44
  %1771 = add i64 %1764, 14
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = zext i32 %1773 to i64
  store i64 %1774, i64* %RSI.i3626, align 8
  %1775 = add i64 %1764, 19572
  %1776 = add i64 %1764, 19
  %1777 = load i64, i64* %6, align 8
  %1778 = add i64 %1777, -8
  %1779 = inttoptr i64 %1778 to i64*
  store i64 %1776, i64* %1779, align 8
  store i64 %1778, i64* %6, align 8
  store i64 %1775, i64* %3, align 8
  %call2_4016da = tail call %struct.Memory* @sub_406340._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1775, %struct.Memory* %call2_4016c7)
  %1780 = load i64, i64* %3, align 8
  store i64 4297235, i64* %RSI.i3626, align 8
  store i64 4297235, i64* %RDX.i3615, align 8
  %1781 = load i64, i64* %RBP.i, align 8
  %1782 = add i64 %1781, -64
  %1783 = add i64 %1780, 11
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i64*
  %1785 = load i64, i64* %1784, align 8
  store i64 %1785, i64* %RDI.i3611.pre-phi, align 8
  %1786 = add i64 %1781, -44
  %1787 = add i64 %1780, 14
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RSI.i3626, align 8
  %1791 = add i64 %1780, 19729
  %1792 = add i64 %1780, 19
  %1793 = load i64, i64* %6, align 8
  %1794 = add i64 %1793, -8
  %1795 = inttoptr i64 %1794 to i64*
  store i64 %1792, i64* %1795, align 8
  store i64 %1794, i64* %6, align 8
  store i64 %1791, i64* %3, align 8
  %call2_4016ed = tail call %struct.Memory* @sub_4063f0._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1791, %struct.Memory* %call2_4016da)
  %1796 = load i64, i64* %3, align 8
  store i64 4297270, i64* %RSI.i3626, align 8
  store i64 4297270, i64* %RDX.i3615, align 8
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -64
  %1799 = add i64 %1796, 11
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i64*
  %1801 = load i64, i64* %1800, align 8
  store i64 %1801, i64* %RDI.i3611.pre-phi, align 8
  %1802 = add i64 %1797, -44
  %1803 = add i64 %1796, 14
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RSI.i3626, align 8
  %1807 = add i64 %1796, 19886
  %1808 = add i64 %1796, 19
  %1809 = load i64, i64* %6, align 8
  %1810 = add i64 %1809, -8
  %1811 = inttoptr i64 %1810 to i64*
  store i64 %1808, i64* %1811, align 8
  store i64 %1810, i64* %6, align 8
  store i64 %1807, i64* %3, align 8
  %call2_401700 = tail call %struct.Memory* @sub_4064a0._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1807, %struct.Memory* %call2_4016ed)
  %1812 = load i64, i64* %3, align 8
  store i64 4297305, i64* %RSI.i3626, align 8
  store i64 4297305, i64* %RDX.i3615, align 8
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -64
  %1815 = add i64 %1812, 11
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %RDI.i3611.pre-phi, align 8
  %1818 = add i64 %1813, -44
  %1819 = add i64 %1812, 14
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = zext i32 %1821 to i64
  store i64 %1822, i64* %RSI.i3626, align 8
  %1823 = add i64 %1812, 20043
  %1824 = add i64 %1812, 19
  %1825 = load i64, i64* %6, align 8
  %1826 = add i64 %1825, -8
  %1827 = inttoptr i64 %1826 to i64*
  store i64 %1824, i64* %1827, align 8
  store i64 %1826, i64* %6, align 8
  store i64 %1823, i64* %3, align 8
  %call2_401713 = tail call %struct.Memory* @sub_406550._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1823, %struct.Memory* %call2_401700)
  %1828 = load i64, i64* %3, align 8
  store i64 4297338, i64* %RSI.i3626, align 8
  store i64 4297338, i64* %RDX.i3615, align 8
  %1829 = load i64, i64* %RBP.i, align 8
  %1830 = add i64 %1829, -64
  %1831 = add i64 %1828, 11
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i64*
  %1833 = load i64, i64* %1832, align 8
  store i64 %1833, i64* %RDI.i3611.pre-phi, align 8
  %1834 = add i64 %1829, -44
  %1835 = add i64 %1828, 14
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = zext i32 %1837 to i64
  store i64 %1838, i64* %RSI.i3626, align 8
  %1839 = add i64 %1828, 20200
  %1840 = add i64 %1828, 19
  %1841 = load i64, i64* %6, align 8
  %1842 = add i64 %1841, -8
  %1843 = inttoptr i64 %1842 to i64*
  store i64 %1840, i64* %1843, align 8
  store i64 %1842, i64* %6, align 8
  store i64 %1839, i64* %3, align 8
  %call2_401726 = tail call %struct.Memory* @sub_406600._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1839, %struct.Memory* %call2_401713)
  %1844 = load i64, i64* %3, align 8
  store i64 4297360, i64* %RSI.i3626, align 8
  store i64 4297360, i64* %RDX.i3615, align 8
  %1845 = load i64, i64* %RBP.i, align 8
  %1846 = add i64 %1845, -64
  %1847 = add i64 %1844, 11
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %RDI.i3611.pre-phi, align 8
  %1850 = add i64 %1845, -44
  %1851 = add i64 %1844, 14
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RSI.i3626, align 8
  %1855 = add i64 %1844, 20357
  %1856 = add i64 %1844, 19
  %1857 = load i64, i64* %6, align 8
  %1858 = add i64 %1857, -8
  %1859 = inttoptr i64 %1858 to i64*
  store i64 %1856, i64* %1859, align 8
  store i64 %1858, i64* %6, align 8
  store i64 %1855, i64* %3, align 8
  %call2_401739 = tail call %struct.Memory* @sub_4066b0._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1855, %struct.Memory* %call2_401726)
  %1860 = load i64, i64* %3, align 8
  store i64 4297391, i64* %RSI.i3626, align 8
  store i64 4297391, i64* %RDX.i3615, align 8
  %1861 = load i64, i64* %RBP.i, align 8
  %1862 = add i64 %1861, -64
  %1863 = add i64 %1860, 11
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i64*
  %1865 = load i64, i64* %1864, align 8
  store i64 %1865, i64* %RDI.i3611.pre-phi, align 8
  %1866 = add i64 %1861, -44
  %1867 = add i64 %1860, 14
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RSI.i3626, align 8
  %1871 = add i64 %1860, 20514
  %1872 = add i64 %1860, 19
  %1873 = load i64, i64* %6, align 8
  %1874 = add i64 %1873, -8
  %1875 = inttoptr i64 %1874 to i64*
  store i64 %1872, i64* %1875, align 8
  store i64 %1874, i64* %6, align 8
  store i64 %1871, i64* %3, align 8
  %call2_40174c = tail call %struct.Memory* @sub_406760._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1871, %struct.Memory* %call2_401739)
  %1876 = load i64, i64* %3, align 8
  store i64 4297412, i64* %RSI.i3626, align 8
  store i64 4297412, i64* %RDX.i3615, align 8
  %1877 = load i64, i64* %RBP.i, align 8
  %1878 = add i64 %1877, -64
  %1879 = add i64 %1876, 11
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i64*
  %1881 = load i64, i64* %1880, align 8
  store i64 %1881, i64* %RDI.i3611.pre-phi, align 8
  %1882 = add i64 %1877, -44
  %1883 = add i64 %1876, 14
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RSI.i3626, align 8
  %1887 = add i64 %1876, 20671
  %1888 = add i64 %1876, 19
  %1889 = load i64, i64* %6, align 8
  %1890 = add i64 %1889, -8
  %1891 = inttoptr i64 %1890 to i64*
  store i64 %1888, i64* %1891, align 8
  store i64 %1890, i64* %6, align 8
  store i64 %1887, i64* %3, align 8
  %call2_40175f = tail call %struct.Memory* @sub_406810._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1887, %struct.Memory* %call2_40174c)
  %1892 = load i64, i64* %3, align 8
  store i64 4297442, i64* %RSI.i3626, align 8
  store i64 4297442, i64* %RDX.i3615, align 8
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -64
  %1895 = add i64 %1892, 11
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i64*
  %1897 = load i64, i64* %1896, align 8
  store i64 %1897, i64* %RDI.i3611.pre-phi, align 8
  %1898 = add i64 %1893, -44
  %1899 = add i64 %1892, 14
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = zext i32 %1901 to i64
  store i64 %1902, i64* %RSI.i3626, align 8
  %1903 = add i64 %1892, 20828
  %1904 = add i64 %1892, 19
  %1905 = load i64, i64* %6, align 8
  %1906 = add i64 %1905, -8
  %1907 = inttoptr i64 %1906 to i64*
  store i64 %1904, i64* %1907, align 8
  store i64 %1906, i64* %6, align 8
  store i64 %1903, i64* %3, align 8
  %call2_401772 = tail call %struct.Memory* @sub_4068c0._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1903, %struct.Memory* %call2_40175f)
  %1908 = load i64, i64* %3, align 8
  store i64 4297464, i64* %RSI.i3626, align 8
  store i64 4297464, i64* %RDX.i3615, align 8
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -64
  %1911 = add i64 %1908, 11
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i64*
  %1913 = load i64, i64* %1912, align 8
  store i64 %1913, i64* %RDI.i3611.pre-phi, align 8
  %1914 = add i64 %1909, -44
  %1915 = add i64 %1908, 14
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  %1917 = load i32, i32* %1916, align 4
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RSI.i3626, align 8
  %1919 = add i64 %1908, 20985
  %1920 = add i64 %1908, 19
  %1921 = load i64, i64* %6, align 8
  %1922 = add i64 %1921, -8
  %1923 = inttoptr i64 %1922 to i64*
  store i64 %1920, i64* %1923, align 8
  store i64 %1922, i64* %6, align 8
  store i64 %1919, i64* %3, align 8
  %call2_401785 = tail call %struct.Memory* @sub_406970._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1919, %struct.Memory* %call2_401772)
  %1924 = load i64, i64* %3, align 8
  %1925 = add i64 %1924, 2230526
  %1926 = add i64 %1924, 8
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to double*
  %1928 = load double, double* %1927, align 8
  %1929 = tail call double @llvm.trunc.f64(double %1928)
  %1930 = tail call double @llvm.fabs.f64(double %1929)
  %1931 = fcmp ogt double %1930, 0x41DFFFFFFFC00000
  %1932 = fptosi double %1929 to i32
  %1933 = zext i32 %1932 to i64
  %1934 = select i1 %1931, i64 2147483648, i64 %1933
  store i64 6718928, i64* %202, align 8
  store i64 6718928, i64* %RAX.i3622, align 8
  %1935 = trunc i64 %1934 to i16
  store i16 %1935, i16* %R10W.i2745, align 2
  %1936 = and i64 %1934, 65535
  store i64 %1936, i64* %RDX.i3615, align 8
  store i64 6734928, i64* %RSI.i3626, align 8
  store i64 6718928, i64* %RDI.i3611.pre-phi, align 8
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -72
  %1939 = add i64 %1924, 37
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i64*
  store i64 6718928, i64* %1940, align 8
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 21105
  %1943 = add i64 %1941, 5
  %1944 = load i64, i64* %6, align 8
  %1945 = add i64 %1944, -8
  %1946 = inttoptr i64 %1945 to i64*
  store i64 %1943, i64* %1946, align 8
  store i64 %1945, i64* %6, align 8
  store i64 %1942, i64* %3, align 8
  %call2_4017af = tail call %struct.Memory* @sub_406a20._Z4fillIPttEvT_S1_T0_(%struct.State* nonnull %0, i64 %1942, %struct.Memory* %call2_401785)
  %1947 = load i64, i64* %3, align 8
  %1948 = add i64 %1947, 2230476
  %1949 = add i64 %1947, 6
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = add i64 %1947, 2230540
  %1953 = add i64 %1947, 12
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  store i32 %1951, i32* %1954, align 4
  %1955 = load i64, i64* %3, align 8
  store i64 4296588, i64* %RDX.i3615, align 8
  %1956 = load i64, i64* %RBP.i, align 8
  %1957 = add i64 %1956, -72
  %1958 = add i64 %1955, 9
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %RDI.i3611.pre-phi, align 8
  %1961 = add i64 %1956, -44
  %1962 = add i64 %1955, 12
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  %1964 = load i32, i32* %1963, align 4
  %1965 = zext i32 %1964 to i64
  store i64 %1965, i64* %RSI.i3626, align 8
  %1966 = add i64 %1955, 21152
  %1967 = add i64 %1955, 17
  %1968 = load i64, i64* %6, align 8
  %1969 = add i64 %1968, -8
  %1970 = inttoptr i64 %1969 to i64*
  store i64 %1967, i64* %1970, align 8
  store i64 %1969, i64* %6, align 8
  store i64 %1966, i64* %3, align 8
  %call2_4017cc = tail call %struct.Memory* @sub_406a60._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* nonnull %0, i64 %1966, %struct.Memory* %call2_4017af)
  %1971 = load i64, i64* %3, align 8
  store i64 4296606, i64* %RSI.i3626, align 8
  store i64 4296606, i64* %RDX.i3615, align 8
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -72
  %1974 = add i64 %1971, 11
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i64*
  %1976 = load i64, i64* %1975, align 8
  store i64 %1976, i64* %RDI.i3611.pre-phi, align 8
  %1977 = add i64 %1972, -44
  %1978 = add i64 %1971, 14
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RSI.i3626, align 8
  %1982 = add i64 %1971, 21311
  %1983 = add i64 %1971, 19
  %1984 = load i64, i64* %6, align 8
  %1985 = add i64 %1984, -8
  %1986 = inttoptr i64 %1985 to i64*
  store i64 %1983, i64* %1986, align 8
  store i64 %1985, i64* %6, align 8
  store i64 %1982, i64* %3, align 8
  %call2_4017df = tail call %struct.Memory* @sub_406b10._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %1982, %struct.Memory* %call2_4017cc)
  %1987 = load i64, i64* %3, align 8
  store i64 4296629, i64* %RSI.i3626, align 8
  store i64 4296629, i64* %RDX.i3615, align 8
  %1988 = load i64, i64* %RBP.i, align 8
  %1989 = add i64 %1988, -72
  %1990 = add i64 %1987, 11
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i64*
  %1992 = load i64, i64* %1991, align 8
  store i64 %1992, i64* %RDI.i3611.pre-phi, align 8
  %1993 = add i64 %1988, -44
  %1994 = add i64 %1987, 14
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  %1997 = zext i32 %1996 to i64
  store i64 %1997, i64* %RSI.i3626, align 8
  %1998 = add i64 %1987, 21468
  %1999 = add i64 %1987, 19
  %2000 = load i64, i64* %6, align 8
  %2001 = add i64 %2000, -8
  %2002 = inttoptr i64 %2001 to i64*
  store i64 %1999, i64* %2002, align 8
  store i64 %2001, i64* %6, align 8
  store i64 %1998, i64* %3, align 8
  %call2_4017f2 = tail call %struct.Memory* @sub_406bc0._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %1998, %struct.Memory* %call2_4017df)
  %2003 = load i64, i64* %3, align 8
  store i64 4296657, i64* %RSI.i3626, align 8
  store i64 4296657, i64* %RDX.i3615, align 8
  %2004 = load i64, i64* %RBP.i, align 8
  %2005 = add i64 %2004, -72
  %2006 = add i64 %2003, 11
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i64*
  %2008 = load i64, i64* %2007, align 8
  store i64 %2008, i64* %RDI.i3611.pre-phi, align 8
  %2009 = add i64 %2004, -44
  %2010 = add i64 %2003, 14
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RSI.i3626, align 8
  %2014 = add i64 %2003, 21625
  %2015 = add i64 %2003, 19
  %2016 = load i64, i64* %6, align 8
  %2017 = add i64 %2016, -8
  %2018 = inttoptr i64 %2017 to i64*
  store i64 %2015, i64* %2018, align 8
  store i64 %2017, i64* %6, align 8
  store i64 %2014, i64* %3, align 8
  %call2_401805 = tail call %struct.Memory* @sub_406c70._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2014, %struct.Memory* %call2_4017f2)
  %2019 = load i64, i64* %3, align 8
  store i64 4296685, i64* %RSI.i3626, align 8
  store i64 4296685, i64* %RDX.i3615, align 8
  %2020 = load i64, i64* %RBP.i, align 8
  %2021 = add i64 %2020, -72
  %2022 = add i64 %2019, 11
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i64*
  %2024 = load i64, i64* %2023, align 8
  store i64 %2024, i64* %RDI.i3611.pre-phi, align 8
  %2025 = add i64 %2020, -44
  %2026 = add i64 %2019, 14
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RSI.i3626, align 8
  %2030 = add i64 %2019, 21782
  %2031 = add i64 %2019, 19
  %2032 = load i64, i64* %6, align 8
  %2033 = add i64 %2032, -8
  %2034 = inttoptr i64 %2033 to i64*
  store i64 %2031, i64* %2034, align 8
  store i64 %2033, i64* %6, align 8
  store i64 %2030, i64* %3, align 8
  %call2_401818 = tail call %struct.Memory* @sub_406d20._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2030, %struct.Memory* %call2_401805)
  %2035 = load i64, i64* %3, align 8
  store i64 4296711, i64* %RSI.i3626, align 8
  store i64 4296711, i64* %RDX.i3615, align 8
  %2036 = load i64, i64* %RBP.i, align 8
  %2037 = add i64 %2036, -72
  %2038 = add i64 %2035, 11
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i64*
  %2040 = load i64, i64* %2039, align 8
  store i64 %2040, i64* %RDI.i3611.pre-phi, align 8
  %2041 = add i64 %2036, -44
  %2042 = add i64 %2035, 14
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i32*
  %2044 = load i32, i32* %2043, align 4
  %2045 = zext i32 %2044 to i64
  store i64 %2045, i64* %RSI.i3626, align 8
  %2046 = add i64 %2035, 21939
  %2047 = add i64 %2035, 19
  %2048 = load i64, i64* %6, align 8
  %2049 = add i64 %2048, -8
  %2050 = inttoptr i64 %2049 to i64*
  store i64 %2047, i64* %2050, align 8
  store i64 %2049, i64* %6, align 8
  store i64 %2046, i64* %3, align 8
  %call2_40182b = tail call %struct.Memory* @sub_406dd0._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2046, %struct.Memory* %call2_401818)
  %2051 = load i64, i64* %3, align 8
  store i64 4296734, i64* %RSI.i3626, align 8
  store i64 4296734, i64* %RDX.i3615, align 8
  %2052 = load i64, i64* %RBP.i, align 8
  %2053 = add i64 %2052, -72
  %2054 = add i64 %2051, 11
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i64*
  %2056 = load i64, i64* %2055, align 8
  store i64 %2056, i64* %RDI.i3611.pre-phi, align 8
  %2057 = add i64 %2052, -44
  %2058 = add i64 %2051, 14
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %RSI.i3626, align 8
  %2062 = add i64 %2051, 22096
  %2063 = add i64 %2051, 19
  %2064 = load i64, i64* %6, align 8
  %2065 = add i64 %2064, -8
  %2066 = inttoptr i64 %2065 to i64*
  store i64 %2063, i64* %2066, align 8
  store i64 %2065, i64* %6, align 8
  store i64 %2062, i64* %3, align 8
  %call2_40183e = tail call %struct.Memory* @sub_406e80._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2062, %struct.Memory* %call2_40182b)
  %2067 = load i64, i64* %3, align 8
  store i64 4296759, i64* %RSI.i3626, align 8
  store i64 4296759, i64* %RDX.i3615, align 8
  %2068 = load i64, i64* %RBP.i, align 8
  %2069 = add i64 %2068, -72
  %2070 = add i64 %2067, 11
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i64*
  %2072 = load i64, i64* %2071, align 8
  store i64 %2072, i64* %RDI.i3611.pre-phi, align 8
  %2073 = add i64 %2068, -44
  %2074 = add i64 %2067, 14
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RSI.i3626, align 8
  %2078 = add i64 %2067, 22253
  %2079 = add i64 %2067, 19
  %2080 = load i64, i64* %6, align 8
  %2081 = add i64 %2080, -8
  %2082 = inttoptr i64 %2081 to i64*
  store i64 %2079, i64* %2082, align 8
  store i64 %2081, i64* %6, align 8
  store i64 %2078, i64* %3, align 8
  %call2_401851 = tail call %struct.Memory* @sub_406f30._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2078, %struct.Memory* %call2_40183e)
  %2083 = load i64, i64* %3, align 8
  store i64 4296787, i64* %RSI.i3626, align 8
  store i64 4296787, i64* %RDX.i3615, align 8
  %2084 = load i64, i64* %RBP.i, align 8
  %2085 = add i64 %2084, -72
  %2086 = add i64 %2083, 11
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i64*
  %2088 = load i64, i64* %2087, align 8
  store i64 %2088, i64* %RDI.i3611.pre-phi, align 8
  %2089 = add i64 %2084, -44
  %2090 = add i64 %2083, 14
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RSI.i3626, align 8
  %2094 = add i64 %2083, 22410
  %2095 = add i64 %2083, 19
  %2096 = load i64, i64* %6, align 8
  %2097 = add i64 %2096, -8
  %2098 = inttoptr i64 %2097 to i64*
  store i64 %2095, i64* %2098, align 8
  store i64 %2097, i64* %6, align 8
  store i64 %2094, i64* %3, align 8
  %call2_401864 = tail call %struct.Memory* @sub_406fe0._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2094, %struct.Memory* %call2_401851)
  %2099 = load i64, i64* %3, align 8
  store i64 4296819, i64* %RSI.i3626, align 8
  store i64 4296819, i64* %RDX.i3615, align 8
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -72
  %2102 = add i64 %2099, 11
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i64*
  %2104 = load i64, i64* %2103, align 8
  store i64 %2104, i64* %RDI.i3611.pre-phi, align 8
  %2105 = add i64 %2100, -44
  %2106 = add i64 %2099, 14
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RSI.i3626, align 8
  %2110 = add i64 %2099, 22567
  %2111 = add i64 %2099, 19
  %2112 = load i64, i64* %6, align 8
  %2113 = add i64 %2112, -8
  %2114 = inttoptr i64 %2113 to i64*
  store i64 %2111, i64* %2114, align 8
  store i64 %2113, i64* %6, align 8
  store i64 %2110, i64* %3, align 8
  %call2_401877 = tail call %struct.Memory* @sub_407090._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2110, %struct.Memory* %call2_401864)
  %2115 = load i64, i64* %3, align 8
  store i64 4296848, i64* %RSI.i3626, align 8
  store i64 4296848, i64* %RDX.i3615, align 8
  %2116 = load i64, i64* %RBP.i, align 8
  %2117 = add i64 %2116, -72
  %2118 = add i64 %2115, 11
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i64*
  %2120 = load i64, i64* %2119, align 8
  store i64 %2120, i64* %RDI.i3611.pre-phi, align 8
  %2121 = add i64 %2116, -44
  %2122 = add i64 %2115, 14
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RSI.i3626, align 8
  %2126 = add i64 %2115, 22724
  %2127 = add i64 %2115, 19
  %2128 = load i64, i64* %6, align 8
  %2129 = add i64 %2128, -8
  %2130 = inttoptr i64 %2129 to i64*
  store i64 %2127, i64* %2130, align 8
  store i64 %2129, i64* %6, align 8
  store i64 %2126, i64* %3, align 8
  %call2_40188a = tail call %struct.Memory* @sub_407140._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2126, %struct.Memory* %call2_401877)
  %2131 = load i64, i64* %3, align 8
  store i64 4296886, i64* %RSI.i3626, align 8
  store i64 4296886, i64* %RDX.i3615, align 8
  %2132 = load i64, i64* %RBP.i, align 8
  %2133 = add i64 %2132, -72
  %2134 = add i64 %2131, 11
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %RDI.i3611.pre-phi, align 8
  %2137 = add i64 %2132, -44
  %2138 = add i64 %2131, 14
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = zext i32 %2140 to i64
  store i64 %2141, i64* %RSI.i3626, align 8
  %2142 = add i64 %2131, 22881
  %2143 = add i64 %2131, 19
  %2144 = load i64, i64* %6, align 8
  %2145 = add i64 %2144, -8
  %2146 = inttoptr i64 %2145 to i64*
  store i64 %2143, i64* %2146, align 8
  store i64 %2145, i64* %6, align 8
  store i64 %2142, i64* %3, align 8
  %call2_40189d = tail call %struct.Memory* @sub_4071f0._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2142, %struct.Memory* %call2_40188a)
  %2147 = load i64, i64* %3, align 8
  store i64 4296921, i64* %RSI.i3626, align 8
  store i64 4296921, i64* %RDX.i3615, align 8
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -72
  %2150 = add i64 %2147, 11
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i64*
  %2152 = load i64, i64* %2151, align 8
  store i64 %2152, i64* %RDI.i3611.pre-phi, align 8
  %2153 = add i64 %2148, -44
  %2154 = add i64 %2147, 14
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RSI.i3626, align 8
  %2158 = add i64 %2147, 23038
  %2159 = add i64 %2147, 19
  %2160 = load i64, i64* %6, align 8
  %2161 = add i64 %2160, -8
  %2162 = inttoptr i64 %2161 to i64*
  store i64 %2159, i64* %2162, align 8
  store i64 %2161, i64* %6, align 8
  store i64 %2158, i64* %3, align 8
  %call2_4018b0 = tail call %struct.Memory* @sub_4072a0._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2158, %struct.Memory* %call2_40189d)
  %2163 = load i64, i64* %3, align 8
  store i64 4296944, i64* %RSI.i3626, align 8
  store i64 4296944, i64* %RDX.i3615, align 8
  %2164 = load i64, i64* %RBP.i, align 8
  %2165 = add i64 %2164, -72
  %2166 = add i64 %2163, 11
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %RDI.i3611.pre-phi, align 8
  %2169 = add i64 %2164, -44
  %2170 = add i64 %2163, 14
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = zext i32 %2172 to i64
  store i64 %2173, i64* %RSI.i3626, align 8
  %2174 = add i64 %2163, 23195
  %2175 = add i64 %2163, 19
  %2176 = load i64, i64* %6, align 8
  %2177 = add i64 %2176, -8
  %2178 = inttoptr i64 %2177 to i64*
  store i64 %2175, i64* %2178, align 8
  store i64 %2177, i64* %6, align 8
  store i64 %2174, i64* %3, align 8
  %call2_4018c3 = tail call %struct.Memory* @sub_407350._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2174, %struct.Memory* %call2_4018b0)
  %2179 = load i64, i64* %3, align 8
  store i64 4296966, i64* %RSI.i3626, align 8
  store i64 4296966, i64* %RDX.i3615, align 8
  %2180 = load i64, i64* %RBP.i, align 8
  %2181 = add i64 %2180, -72
  %2182 = add i64 %2179, 11
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183, align 8
  store i64 %2184, i64* %RDI.i3611.pre-phi, align 8
  %2185 = add i64 %2180, -44
  %2186 = add i64 %2179, 14
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i32*
  %2188 = load i32, i32* %2187, align 4
  %2189 = zext i32 %2188 to i64
  store i64 %2189, i64* %RSI.i3626, align 8
  %2190 = add i64 %2179, 23352
  %2191 = add i64 %2179, 19
  %2192 = load i64, i64* %6, align 8
  %2193 = add i64 %2192, -8
  %2194 = inttoptr i64 %2193 to i64*
  store i64 %2191, i64* %2194, align 8
  store i64 %2193, i64* %6, align 8
  store i64 %2190, i64* %3, align 8
  %call2_4018d6 = tail call %struct.Memory* @sub_407400._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2190, %struct.Memory* %call2_4018c3)
  %2195 = load i64, i64* %3, align 8
  %2196 = add i64 %2195, 2230181
  %2197 = add i64 %2195, 7
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = sext i32 %2199 to i64
  %2201 = mul nsw i64 %2200, 1717986919
  %2202 = lshr i64 %2201, 63
  store i64 %2202, i64* %RCX.i3620, align 8
  %2203 = trunc i64 %2202 to i32
  %2204 = ashr i64 %2201, 34
  store i64 %2204, i64* %RAX.i3622, align 8
  %2205 = trunc i64 %2204 to i32
  %2206 = add i32 %2203, %2205
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %202, align 8
  %2208 = icmp ult i32 %2206, %2205
  %2209 = icmp ult i32 %2206, %2203
  %2210 = or i1 %2208, %2209
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %14, align 1
  %2212 = and i32 %2206, 255
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %21, align 1
  %2217 = trunc i64 %2204 to i32
  %2218 = xor i32 %2217, %2206
  %2219 = lshr i32 %2218, 4
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %27, align 1
  %2222 = icmp eq i32 %2206, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %30, align 1
  %2224 = lshr i32 %2206, 31
  %2225 = trunc i32 %2224 to i8
  store i8 %2225, i8* %33, align 1
  %2226 = lshr i64 %2204, 31
  %2227 = trunc i64 %2226 to i32
  %2228 = and i32 %2227, 1
  %2229 = xor i32 %2224, %2228
  %2230 = add nuw nsw i32 %2229, %2224
  %2231 = icmp eq i32 %2230, 2
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %39, align 1
  %2233 = add i64 %2195, 2230245
  %2234 = add i64 %2195, 40
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  store i32 %2206, i32* %2235, align 4
  %2236 = load i64, i64* %3, align 8
  store i64 4296989, i64* %RSI.i3626, align 8
  store i64 4296989, i64* %RDX.i3615, align 8
  %2237 = load i64, i64* %RBP.i, align 8
  %2238 = add i64 %2237, -72
  %2239 = add i64 %2236, 11
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i64*
  %2241 = load i64, i64* %2240, align 8
  store i64 %2241, i64* %RDI.i3611.pre-phi, align 8
  %2242 = add i64 %2237, -44
  %2243 = add i64 %2236, 14
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2242 to i32*
  %2245 = load i32, i32* %2244, align 4
  %2246 = zext i32 %2245 to i64
  store i64 %2246, i64* %RSI.i3626, align 8
  %2247 = add i64 %2236, 23469
  %2248 = add i64 %2236, 19
  %2249 = load i64, i64* %6, align 8
  %2250 = add i64 %2249, -8
  %2251 = inttoptr i64 %2250 to i64*
  store i64 %2248, i64* %2251, align 8
  store i64 %2250, i64* %6, align 8
  store i64 %2247, i64* %3, align 8
  %call2_401911 = tail call %struct.Memory* @sub_4074b0._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2247, %struct.Memory* %call2_4018d6)
  %2252 = load i64, i64* %3, align 8
  store i64 4297011, i64* %RSI.i3626, align 8
  store i64 4297011, i64* %RDX.i3615, align 8
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -72
  %2255 = add i64 %2252, 11
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i64*
  %2257 = load i64, i64* %2256, align 8
  store i64 %2257, i64* %RDI.i3611.pre-phi, align 8
  %2258 = add i64 %2253, -44
  %2259 = add i64 %2252, 14
  store i64 %2259, i64* %3, align 8
  %2260 = inttoptr i64 %2258 to i32*
  %2261 = load i32, i32* %2260, align 4
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %RSI.i3626, align 8
  %2263 = add i64 %2252, 23626
  %2264 = add i64 %2252, 19
  %2265 = load i64, i64* %6, align 8
  %2266 = add i64 %2265, -8
  %2267 = inttoptr i64 %2266 to i64*
  store i64 %2264, i64* %2267, align 8
  store i64 %2266, i64* %6, align 8
  store i64 %2263, i64* %3, align 8
  %call2_401924 = tail call %struct.Memory* @sub_407560._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2263, %struct.Memory* %call2_401911)
  %2268 = load i64, i64* %3, align 8
  store i64 4297043, i64* %RSI.i3626, align 8
  store i64 4297043, i64* %RDX.i3615, align 8
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -72
  %2271 = add i64 %2268, 11
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i64*
  %2273 = load i64, i64* %2272, align 8
  store i64 %2273, i64* %RDI.i3611.pre-phi, align 8
  %2274 = add i64 %2269, -44
  %2275 = add i64 %2268, 14
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = zext i32 %2277 to i64
  store i64 %2278, i64* %RSI.i3626, align 8
  %2279 = add i64 %2268, 23783
  %2280 = add i64 %2268, 19
  %2281 = load i64, i64* %6, align 8
  %2282 = add i64 %2281, -8
  %2283 = inttoptr i64 %2282 to i64*
  store i64 %2280, i64* %2283, align 8
  store i64 %2282, i64* %6, align 8
  store i64 %2279, i64* %3, align 8
  %call2_401937 = tail call %struct.Memory* @sub_407610._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2279, %struct.Memory* %call2_401924)
  %2284 = load i64, i64* %3, align 8
  store i64 4297070, i64* %RSI.i3626, align 8
  store i64 4297070, i64* %RDX.i3615, align 8
  %2285 = load i64, i64* %RBP.i, align 8
  %2286 = add i64 %2285, -72
  %2287 = add i64 %2284, 11
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i64*
  %2289 = load i64, i64* %2288, align 8
  store i64 %2289, i64* %RDI.i3611.pre-phi, align 8
  %2290 = add i64 %2285, -44
  %2291 = add i64 %2284, 14
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RSI.i3626, align 8
  %2295 = add i64 %2284, 23940
  %2296 = add i64 %2284, 19
  %2297 = load i64, i64* %6, align 8
  %2298 = add i64 %2297, -8
  %2299 = inttoptr i64 %2298 to i64*
  store i64 %2296, i64* %2299, align 8
  store i64 %2298, i64* %6, align 8
  store i64 %2295, i64* %3, align 8
  %call2_40194a = tail call %struct.Memory* @sub_4076c0._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2295, %struct.Memory* %call2_401937)
  %2300 = load i64, i64* %3, align 8
  store i64 4297107, i64* %RSI.i3626, align 8
  store i64 4297107, i64* %RDX.i3615, align 8
  %2301 = load i64, i64* %RBP.i, align 8
  %2302 = add i64 %2301, -72
  %2303 = add i64 %2300, 11
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i64*
  %2305 = load i64, i64* %2304, align 8
  store i64 %2305, i64* %RDI.i3611.pre-phi, align 8
  %2306 = add i64 %2301, -44
  %2307 = add i64 %2300, 14
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i32*
  %2309 = load i32, i32* %2308, align 4
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RSI.i3626, align 8
  %2311 = add i64 %2300, 24097
  %2312 = add i64 %2300, 19
  %2313 = load i64, i64* %6, align 8
  %2314 = add i64 %2313, -8
  %2315 = inttoptr i64 %2314 to i64*
  store i64 %2312, i64* %2315, align 8
  store i64 %2314, i64* %6, align 8
  store i64 %2311, i64* %3, align 8
  %call2_40195d = tail call %struct.Memory* @sub_407770._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2311, %struct.Memory* %call2_40194a)
  %2316 = load i64, i64* %3, align 8
  store i64 4297134, i64* %RSI.i3626, align 8
  store i64 4297134, i64* %RDX.i3615, align 8
  %2317 = load i64, i64* %RBP.i, align 8
  %2318 = add i64 %2317, -72
  %2319 = add i64 %2316, 11
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to i64*
  %2321 = load i64, i64* %2320, align 8
  store i64 %2321, i64* %RDI.i3611.pre-phi, align 8
  %2322 = add i64 %2317, -44
  %2323 = add i64 %2316, 14
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RSI.i3626, align 8
  %2327 = add i64 %2316, 24254
  %2328 = add i64 %2316, 19
  %2329 = load i64, i64* %6, align 8
  %2330 = add i64 %2329, -8
  %2331 = inttoptr i64 %2330 to i64*
  store i64 %2328, i64* %2331, align 8
  store i64 %2330, i64* %6, align 8
  store i64 %2327, i64* %3, align 8
  %call2_401970 = tail call %struct.Memory* @sub_407820._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2327, %struct.Memory* %call2_40195d)
  %2332 = load i64, i64* %3, align 8
  store i64 4297172, i64* %RSI.i3626, align 8
  store i64 4297172, i64* %RDX.i3615, align 8
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -72
  %2335 = add i64 %2332, 11
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %RDI.i3611.pre-phi, align 8
  %2338 = add i64 %2333, -44
  %2339 = add i64 %2332, 14
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i32*
  %2341 = load i32, i32* %2340, align 4
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RSI.i3626, align 8
  %2343 = add i64 %2332, 24411
  %2344 = add i64 %2332, 19
  %2345 = load i64, i64* %6, align 8
  %2346 = add i64 %2345, -8
  %2347 = inttoptr i64 %2346 to i64*
  store i64 %2344, i64* %2347, align 8
  store i64 %2346, i64* %6, align 8
  store i64 %2343, i64* %3, align 8
  %call2_401983 = tail call %struct.Memory* @sub_4078d0._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2343, %struct.Memory* %call2_401970)
  %2348 = load i64, i64* %3, align 8
  store i64 4297209, i64* %RSI.i3626, align 8
  store i64 4297209, i64* %RDX.i3615, align 8
  %2349 = load i64, i64* %RBP.i, align 8
  %2350 = add i64 %2349, -72
  %2351 = add i64 %2348, 11
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2350 to i64*
  %2353 = load i64, i64* %2352, align 8
  store i64 %2353, i64* %RDI.i3611.pre-phi, align 8
  %2354 = add i64 %2349, -44
  %2355 = add i64 %2348, 14
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = zext i32 %2357 to i64
  store i64 %2358, i64* %RSI.i3626, align 8
  %2359 = add i64 %2348, 24568
  %2360 = add i64 %2348, 19
  %2361 = load i64, i64* %6, align 8
  %2362 = add i64 %2361, -8
  %2363 = inttoptr i64 %2362 to i64*
  store i64 %2360, i64* %2363, align 8
  store i64 %2362, i64* %6, align 8
  store i64 %2359, i64* %3, align 8
  %call2_401996 = tail call %struct.Memory* @sub_407980._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2359, %struct.Memory* %call2_401983)
  %2364 = load i64, i64* %3, align 8
  store i64 4297234, i64* %RSI.i3626, align 8
  store i64 4297234, i64* %RDX.i3615, align 8
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -72
  %2367 = add i64 %2364, 11
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i64*
  %2369 = load i64, i64* %2368, align 8
  store i64 %2369, i64* %RDI.i3611.pre-phi, align 8
  %2370 = add i64 %2365, -44
  %2371 = add i64 %2364, 14
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RSI.i3626, align 8
  %2375 = add i64 %2364, 24725
  %2376 = add i64 %2364, 19
  %2377 = load i64, i64* %6, align 8
  %2378 = add i64 %2377, -8
  %2379 = inttoptr i64 %2378 to i64*
  store i64 %2376, i64* %2379, align 8
  store i64 %2378, i64* %6, align 8
  store i64 %2375, i64* %3, align 8
  %call2_4019a9 = tail call %struct.Memory* @sub_407a30._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2375, %struct.Memory* %call2_401996)
  %2380 = load i64, i64* %3, align 8
  store i64 4297269, i64* %RSI.i3626, align 8
  store i64 4297269, i64* %RDX.i3615, align 8
  %2381 = load i64, i64* %RBP.i, align 8
  %2382 = add i64 %2381, -72
  %2383 = add i64 %2380, 11
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i64*
  %2385 = load i64, i64* %2384, align 8
  store i64 %2385, i64* %RDI.i3611.pre-phi, align 8
  %2386 = add i64 %2381, -44
  %2387 = add i64 %2380, 14
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RSI.i3626, align 8
  %2391 = add i64 %2380, 24882
  %2392 = add i64 %2380, 19
  %2393 = load i64, i64* %6, align 8
  %2394 = add i64 %2393, -8
  %2395 = inttoptr i64 %2394 to i64*
  store i64 %2392, i64* %2395, align 8
  store i64 %2394, i64* %6, align 8
  store i64 %2391, i64* %3, align 8
  %call2_4019bc = tail call %struct.Memory* @sub_407ae0._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2391, %struct.Memory* %call2_4019a9)
  %2396 = load i64, i64* %3, align 8
  store i64 4297304, i64* %RSI.i3626, align 8
  store i64 4297304, i64* %RDX.i3615, align 8
  %2397 = load i64, i64* %RBP.i, align 8
  %2398 = add i64 %2397, -72
  %2399 = add i64 %2396, 11
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i64*
  %2401 = load i64, i64* %2400, align 8
  store i64 %2401, i64* %RDI.i3611.pre-phi, align 8
  %2402 = add i64 %2397, -44
  %2403 = add i64 %2396, 14
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i32*
  %2405 = load i32, i32* %2404, align 4
  %2406 = zext i32 %2405 to i64
  store i64 %2406, i64* %RSI.i3626, align 8
  %2407 = add i64 %2396, 25039
  %2408 = add i64 %2396, 19
  %2409 = load i64, i64* %6, align 8
  %2410 = add i64 %2409, -8
  %2411 = inttoptr i64 %2410 to i64*
  store i64 %2408, i64* %2411, align 8
  store i64 %2410, i64* %6, align 8
  store i64 %2407, i64* %3, align 8
  %call2_4019cf = tail call %struct.Memory* @sub_407b90._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2407, %struct.Memory* %call2_4019bc)
  %2412 = load i64, i64* %3, align 8
  store i64 4297337, i64* %RSI.i3626, align 8
  store i64 4297337, i64* %RDX.i3615, align 8
  %2413 = load i64, i64* %RBP.i, align 8
  %2414 = add i64 %2413, -72
  %2415 = add i64 %2412, 11
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i64*
  %2417 = load i64, i64* %2416, align 8
  store i64 %2417, i64* %RDI.i3611.pre-phi, align 8
  %2418 = add i64 %2413, -44
  %2419 = add i64 %2412, 14
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i32*
  %2421 = load i32, i32* %2420, align 4
  %2422 = zext i32 %2421 to i64
  store i64 %2422, i64* %RSI.i3626, align 8
  %2423 = add i64 %2412, 25196
  %2424 = add i64 %2412, 19
  %2425 = load i64, i64* %6, align 8
  %2426 = add i64 %2425, -8
  %2427 = inttoptr i64 %2426 to i64*
  store i64 %2424, i64* %2427, align 8
  store i64 %2426, i64* %6, align 8
  store i64 %2423, i64* %3, align 8
  %call2_4019e2 = tail call %struct.Memory* @sub_407c40._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2423, %struct.Memory* %call2_4019cf)
  %2428 = load i64, i64* %3, align 8
  store i64 4297359, i64* %RSI.i3626, align 8
  store i64 4297359, i64* %RDX.i3615, align 8
  %2429 = load i64, i64* %RBP.i, align 8
  %2430 = add i64 %2429, -72
  %2431 = add i64 %2428, 11
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i64*
  %2433 = load i64, i64* %2432, align 8
  store i64 %2433, i64* %RDI.i3611.pre-phi, align 8
  %2434 = add i64 %2429, -44
  %2435 = add i64 %2428, 14
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i32*
  %2437 = load i32, i32* %2436, align 4
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RSI.i3626, align 8
  %2439 = add i64 %2428, 25353
  %2440 = add i64 %2428, 19
  %2441 = load i64, i64* %6, align 8
  %2442 = add i64 %2441, -8
  %2443 = inttoptr i64 %2442 to i64*
  store i64 %2440, i64* %2443, align 8
  store i64 %2442, i64* %6, align 8
  store i64 %2439, i64* %3, align 8
  %call2_4019f5 = tail call %struct.Memory* @sub_407cf0._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2439, %struct.Memory* %call2_4019e2)
  %2444 = load i64, i64* %3, align 8
  store i64 4297390, i64* %RSI.i3626, align 8
  store i64 4297390, i64* %RDX.i3615, align 8
  %2445 = load i64, i64* %RBP.i, align 8
  %2446 = add i64 %2445, -72
  %2447 = add i64 %2444, 11
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i64*
  %2449 = load i64, i64* %2448, align 8
  store i64 %2449, i64* %RDI.i3611.pre-phi, align 8
  %2450 = add i64 %2445, -44
  %2451 = add i64 %2444, 14
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RSI.i3626, align 8
  %2455 = add i64 %2444, 25510
  %2456 = add i64 %2444, 19
  %2457 = load i64, i64* %6, align 8
  %2458 = add i64 %2457, -8
  %2459 = inttoptr i64 %2458 to i64*
  store i64 %2456, i64* %2459, align 8
  store i64 %2458, i64* %6, align 8
  store i64 %2455, i64* %3, align 8
  %call2_401a08 = tail call %struct.Memory* @sub_407da0._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2455, %struct.Memory* %call2_4019f5)
  %2460 = load i64, i64* %3, align 8
  store i64 4297411, i64* %RSI.i3626, align 8
  store i64 4297411, i64* %RDX.i3615, align 8
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -72
  %2463 = add i64 %2460, 11
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i64*
  %2465 = load i64, i64* %2464, align 8
  store i64 %2465, i64* %RDI.i3611.pre-phi, align 8
  %2466 = add i64 %2461, -44
  %2467 = add i64 %2460, 14
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RSI.i3626, align 8
  %2471 = add i64 %2460, 25667
  %2472 = add i64 %2460, 19
  %2473 = load i64, i64* %6, align 8
  %2474 = add i64 %2473, -8
  %2475 = inttoptr i64 %2474 to i64*
  store i64 %2472, i64* %2475, align 8
  store i64 %2474, i64* %6, align 8
  store i64 %2471, i64* %3, align 8
  %call2_401a1b = tail call %struct.Memory* @sub_407e50._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2471, %struct.Memory* %call2_401a08)
  %2476 = load i64, i64* %3, align 8
  store i64 4297441, i64* %RSI.i3626, align 8
  store i64 4297441, i64* %RDX.i3615, align 8
  %2477 = load i64, i64* %RBP.i, align 8
  %2478 = add i64 %2477, -72
  %2479 = add i64 %2476, 11
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i64*
  %2481 = load i64, i64* %2480, align 8
  store i64 %2481, i64* %RDI.i3611.pre-phi, align 8
  %2482 = add i64 %2477, -44
  %2483 = add i64 %2476, 14
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RSI.i3626, align 8
  %2487 = add i64 %2476, 25824
  %2488 = add i64 %2476, 19
  %2489 = load i64, i64* %6, align 8
  %2490 = add i64 %2489, -8
  %2491 = inttoptr i64 %2490 to i64*
  store i64 %2488, i64* %2491, align 8
  store i64 %2490, i64* %6, align 8
  store i64 %2487, i64* %3, align 8
  %call2_401a2e = tail call %struct.Memory* @sub_407f00._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2487, %struct.Memory* %call2_401a1b)
  %2492 = load i64, i64* %3, align 8
  store i64 4297463, i64* %RSI.i3626, align 8
  store i64 4297463, i64* %RDX.i3615, align 8
  %2493 = load i64, i64* %RBP.i, align 8
  %2494 = add i64 %2493, -72
  %2495 = add i64 %2492, 11
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i64*
  %2497 = load i64, i64* %2496, align 8
  store i64 %2497, i64* %RDI.i3611.pre-phi, align 8
  %2498 = add i64 %2493, -44
  %2499 = add i64 %2492, 14
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i32*
  %2501 = load i32, i32* %2500, align 4
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RSI.i3626, align 8
  %2503 = add i64 %2492, 25981
  %2504 = add i64 %2492, 19
  %2505 = load i64, i64* %6, align 8
  %2506 = add i64 %2505, -8
  %2507 = inttoptr i64 %2506 to i64*
  store i64 %2504, i64* %2507, align 8
  store i64 %2506, i64* %6, align 8
  store i64 %2503, i64* %3, align 8
  %call2_401a41 = tail call %struct.Memory* @sub_407fb0._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2503, %struct.Memory* %call2_401a2e)
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2509 = bitcast [32 x %union.VectorReg]* %2508 to i8*
  %2510 = load i64, i64* %3, align 8
  %2511 = add i64 %2510, 2229826
  %2512 = add i64 %2510, 8
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i64*
  %2514 = load i64, i64* %2513, align 8
  %2515 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2508, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2514, i64* %2515, align 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2517 = bitcast i64* %2516 to double*
  store double 0.000000e+00, double* %2517, align 1
  %2518 = bitcast i64 %2514 to double
  %2519 = tail call double @llvm.trunc.f64(double %2518)
  %2520 = tail call double @llvm.fabs.f64(double %2519)
  %2521 = fcmp ogt double %2520, 0x41DFFFFFFFC00000
  %2522 = fptosi double %2519 to i32
  %2523 = zext i32 %2522 to i64
  %2524 = select i1 %2521, i64 2147483648, i64 %2523
  store i64 %2524, i64* %RDX.i3615, align 8
  store i64 6686928, i64* %RAX.i3622, align 8
  store i64 6718928, i64* %RSI.i3626, align 8
  store i64 6686928, i64* %RDI.i3611.pre-phi, align 8
  %2525 = load i64, i64* %RBP.i, align 8
  %2526 = add i64 %2525, -80
  %2527 = add i64 %2510, 31
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i64*
  store i64 6686928, i64* %2528, align 8
  %2529 = load i64, i64* %3, align 8
  %2530 = add i64 %2529, 26107
  %2531 = add i64 %2529, 5
  %2532 = load i64, i64* %6, align 8
  %2533 = add i64 %2532, -8
  %2534 = inttoptr i64 %2533 to i64*
  store i64 %2531, i64* %2534, align 8
  store i64 %2533, i64* %6, align 8
  store i64 %2530, i64* %3, align 8
  %call2_401a65 = tail call %struct.Memory* @sub_408060._Z4fillIPiiEvT_S1_T0_(%struct.State* nonnull %0, i64 %2530, %struct.Memory* %call2_401a41)
  %2535 = load i64, i64* %3, align 8
  %2536 = add i64 %2535, 2229782
  %2537 = add i64 %2535, 6
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = add i64 %2535, 2229846
  %2541 = add i64 %2535, 12
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  store i32 %2539, i32* %2542, align 4
  %2543 = load i64, i64* %3, align 8
  store i64 4297495, i64* %RDX.i3615, align 8
  %2544 = load i64, i64* %RBP.i, align 8
  %2545 = add i64 %2544, -80
  %2546 = add i64 %2543, 9
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i64*
  %2548 = load i64, i64* %2547, align 8
  store i64 %2548, i64* %RDI.i3611.pre-phi, align 8
  %2549 = add i64 %2544, -44
  %2550 = add i64 %2543, 12
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %RSI.i3626, align 8
  %2554 = add i64 %2543, 26154
  %2555 = add i64 %2543, 17
  %2556 = load i64, i64* %6, align 8
  %2557 = add i64 %2556, -8
  %2558 = inttoptr i64 %2557 to i64*
  store i64 %2555, i64* %2558, align 8
  store i64 %2557, i64* %6, align 8
  store i64 %2554, i64* %3, align 8
  %call2_401a82 = tail call %struct.Memory* @sub_4080a0._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2554, %struct.Memory* %call2_401a65)
  %2559 = load i64, i64* %3, align 8
  store i64 4297513, i64* %RSI.i3626, align 8
  store i64 4297513, i64* %RDX.i3615, align 8
  %2560 = load i64, i64* %RBP.i, align 8
  %2561 = add i64 %2560, -80
  %2562 = add i64 %2559, 11
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i64*
  %2564 = load i64, i64* %2563, align 8
  store i64 %2564, i64* %RDI.i3611.pre-phi, align 8
  %2565 = add i64 %2560, -44
  %2566 = add i64 %2559, 14
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i32*
  %2568 = load i32, i32* %2567, align 4
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RSI.i3626, align 8
  %2570 = add i64 %2559, 26297
  %2571 = add i64 %2559, 19
  %2572 = load i64, i64* %6, align 8
  %2573 = add i64 %2572, -8
  %2574 = inttoptr i64 %2573 to i64*
  store i64 %2571, i64* %2574, align 8
  store i64 %2573, i64* %6, align 8
  store i64 %2570, i64* %3, align 8
  %call2_401a95 = tail call %struct.Memory* @sub_408140._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2570, %struct.Memory* %call2_401a82)
  %2575 = load i64, i64* %3, align 8
  store i64 4297536, i64* %RSI.i3626, align 8
  store i64 4297536, i64* %RDX.i3615, align 8
  %2576 = load i64, i64* %RBP.i, align 8
  %2577 = add i64 %2576, -80
  %2578 = add i64 %2575, 11
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i64*
  %2580 = load i64, i64* %2579, align 8
  store i64 %2580, i64* %RDI.i3611.pre-phi, align 8
  %2581 = add i64 %2576, -44
  %2582 = add i64 %2575, 14
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i32*
  %2584 = load i32, i32* %2583, align 4
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RSI.i3626, align 8
  %2586 = add i64 %2575, 26438
  %2587 = add i64 %2575, 19
  %2588 = load i64, i64* %6, align 8
  %2589 = add i64 %2588, -8
  %2590 = inttoptr i64 %2589 to i64*
  store i64 %2587, i64* %2590, align 8
  store i64 %2589, i64* %6, align 8
  store i64 %2586, i64* %3, align 8
  %call2_401aa8 = tail call %struct.Memory* @sub_4081e0._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2586, %struct.Memory* %call2_401a95)
  %2591 = load i64, i64* %3, align 8
  store i64 4297564, i64* %RSI.i3626, align 8
  store i64 4297564, i64* %RDX.i3615, align 8
  %2592 = load i64, i64* %RBP.i, align 8
  %2593 = add i64 %2592, -80
  %2594 = add i64 %2591, 11
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i64*
  %2596 = load i64, i64* %2595, align 8
  store i64 %2596, i64* %RDI.i3611.pre-phi, align 8
  %2597 = add i64 %2592, -44
  %2598 = add i64 %2591, 14
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i32*
  %2600 = load i32, i32* %2599, align 4
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RSI.i3626, align 8
  %2602 = add i64 %2591, 26579
  %2603 = add i64 %2591, 19
  %2604 = load i64, i64* %6, align 8
  %2605 = add i64 %2604, -8
  %2606 = inttoptr i64 %2605 to i64*
  store i64 %2603, i64* %2606, align 8
  store i64 %2605, i64* %6, align 8
  store i64 %2602, i64* %3, align 8
  %call2_401abb = tail call %struct.Memory* @sub_408280._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2602, %struct.Memory* %call2_401aa8)
  %2607 = load i64, i64* %3, align 8
  store i64 4297592, i64* %RSI.i3626, align 8
  store i64 4297592, i64* %RDX.i3615, align 8
  %2608 = load i64, i64* %RBP.i, align 8
  %2609 = add i64 %2608, -80
  %2610 = add i64 %2607, 11
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %RDI.i3611.pre-phi, align 8
  %2613 = add i64 %2608, -44
  %2614 = add i64 %2607, 14
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RSI.i3626, align 8
  %2618 = add i64 %2607, 26720
  %2619 = add i64 %2607, 19
  %2620 = load i64, i64* %6, align 8
  %2621 = add i64 %2620, -8
  %2622 = inttoptr i64 %2621 to i64*
  store i64 %2619, i64* %2622, align 8
  store i64 %2621, i64* %6, align 8
  store i64 %2618, i64* %3, align 8
  %call2_401ace = tail call %struct.Memory* @sub_408320._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2618, %struct.Memory* %call2_401abb)
  %2623 = load i64, i64* %3, align 8
  store i64 4297618, i64* %RSI.i3626, align 8
  store i64 4297618, i64* %RDX.i3615, align 8
  %2624 = load i64, i64* %RBP.i, align 8
  %2625 = add i64 %2624, -80
  %2626 = add i64 %2623, 11
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i64*
  %2628 = load i64, i64* %2627, align 8
  store i64 %2628, i64* %RDI.i3611.pre-phi, align 8
  %2629 = add i64 %2624, -44
  %2630 = add i64 %2623, 14
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RSI.i3626, align 8
  %2634 = add i64 %2623, 26861
  %2635 = add i64 %2623, 19
  %2636 = load i64, i64* %6, align 8
  %2637 = add i64 %2636, -8
  %2638 = inttoptr i64 %2637 to i64*
  store i64 %2635, i64* %2638, align 8
  store i64 %2637, i64* %6, align 8
  store i64 %2634, i64* %3, align 8
  %call2_401ae1 = tail call %struct.Memory* @sub_4083c0._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2634, %struct.Memory* %call2_401ace)
  %2639 = load i64, i64* %3, align 8
  store i64 4297641, i64* %RSI.i3626, align 8
  store i64 4297641, i64* %RDX.i3615, align 8
  %2640 = load i64, i64* %RBP.i, align 8
  %2641 = add i64 %2640, -80
  %2642 = add i64 %2639, 11
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i64*
  %2644 = load i64, i64* %2643, align 8
  store i64 %2644, i64* %RDI.i3611.pre-phi, align 8
  %2645 = add i64 %2640, -44
  %2646 = add i64 %2639, 14
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i32*
  %2648 = load i32, i32* %2647, align 4
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RSI.i3626, align 8
  %2650 = add i64 %2639, 27002
  %2651 = add i64 %2639, 19
  %2652 = load i64, i64* %6, align 8
  %2653 = add i64 %2652, -8
  %2654 = inttoptr i64 %2653 to i64*
  store i64 %2651, i64* %2654, align 8
  store i64 %2653, i64* %6, align 8
  store i64 %2650, i64* %3, align 8
  %call2_401af4 = tail call %struct.Memory* @sub_408460._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2650, %struct.Memory* %call2_401ae1)
  %2655 = load i64, i64* %3, align 8
  store i64 4297666, i64* %RSI.i3626, align 8
  store i64 4297666, i64* %RDX.i3615, align 8
  %2656 = load i64, i64* %RBP.i, align 8
  %2657 = add i64 %2656, -80
  %2658 = add i64 %2655, 11
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  store i64 %2660, i64* %RDI.i3611.pre-phi, align 8
  %2661 = add i64 %2656, -44
  %2662 = add i64 %2655, 14
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = zext i32 %2664 to i64
  store i64 %2665, i64* %RSI.i3626, align 8
  %2666 = add i64 %2655, 27143
  %2667 = add i64 %2655, 19
  %2668 = load i64, i64* %6, align 8
  %2669 = add i64 %2668, -8
  %2670 = inttoptr i64 %2669 to i64*
  store i64 %2667, i64* %2670, align 8
  store i64 %2669, i64* %6, align 8
  store i64 %2666, i64* %3, align 8
  %call2_401b07 = tail call %struct.Memory* @sub_408500._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2666, %struct.Memory* %call2_401af4)
  %2671 = load i64, i64* %3, align 8
  store i64 4297694, i64* %RSI.i3626, align 8
  store i64 4297694, i64* %RDX.i3615, align 8
  %2672 = load i64, i64* %RBP.i, align 8
  %2673 = add i64 %2672, -80
  %2674 = add i64 %2671, 11
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i64*
  %2676 = load i64, i64* %2675, align 8
  store i64 %2676, i64* %RDI.i3611.pre-phi, align 8
  %2677 = add i64 %2672, -44
  %2678 = add i64 %2671, 14
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %RSI.i3626, align 8
  %2682 = add i64 %2671, 27284
  %2683 = add i64 %2671, 19
  %2684 = load i64, i64* %6, align 8
  %2685 = add i64 %2684, -8
  %2686 = inttoptr i64 %2685 to i64*
  store i64 %2683, i64* %2686, align 8
  store i64 %2685, i64* %6, align 8
  store i64 %2682, i64* %3, align 8
  %call2_401b1a = tail call %struct.Memory* @sub_4085a0._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2682, %struct.Memory* %call2_401b07)
  %2687 = load i64, i64* %3, align 8
  store i64 4297726, i64* %RSI.i3626, align 8
  store i64 4297726, i64* %RDX.i3615, align 8
  %2688 = load i64, i64* %RBP.i, align 8
  %2689 = add i64 %2688, -80
  %2690 = add i64 %2687, 11
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2689 to i64*
  %2692 = load i64, i64* %2691, align 8
  store i64 %2692, i64* %RDI.i3611.pre-phi, align 8
  %2693 = add i64 %2688, -44
  %2694 = add i64 %2687, 14
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i32*
  %2696 = load i32, i32* %2695, align 4
  %2697 = zext i32 %2696 to i64
  store i64 %2697, i64* %RSI.i3626, align 8
  %2698 = add i64 %2687, 27425
  %2699 = add i64 %2687, 19
  %2700 = load i64, i64* %6, align 8
  %2701 = add i64 %2700, -8
  %2702 = inttoptr i64 %2701 to i64*
  store i64 %2699, i64* %2702, align 8
  store i64 %2701, i64* %6, align 8
  store i64 %2698, i64* %3, align 8
  %call2_401b2d = tail call %struct.Memory* @sub_408640._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2698, %struct.Memory* %call2_401b1a)
  %2703 = load i64, i64* %3, align 8
  store i64 4297755, i64* %RSI.i3626, align 8
  store i64 4297755, i64* %RDX.i3615, align 8
  %2704 = load i64, i64* %RBP.i, align 8
  %2705 = add i64 %2704, -80
  %2706 = add i64 %2703, 11
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RDI.i3611.pre-phi, align 8
  %2709 = add i64 %2704, -44
  %2710 = add i64 %2703, 14
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RSI.i3626, align 8
  %2714 = add i64 %2703, 27566
  %2715 = add i64 %2703, 19
  %2716 = load i64, i64* %6, align 8
  %2717 = add i64 %2716, -8
  %2718 = inttoptr i64 %2717 to i64*
  store i64 %2715, i64* %2718, align 8
  store i64 %2717, i64* %6, align 8
  store i64 %2714, i64* %3, align 8
  %call2_401b40 = tail call %struct.Memory* @sub_4086e0._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2714, %struct.Memory* %call2_401b2d)
  %2719 = load i64, i64* %3, align 8
  store i64 4297793, i64* %RSI.i3626, align 8
  store i64 4297793, i64* %RDX.i3615, align 8
  %2720 = load i64, i64* %RBP.i, align 8
  %2721 = add i64 %2720, -80
  %2722 = add i64 %2719, 11
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i64*
  %2724 = load i64, i64* %2723, align 8
  store i64 %2724, i64* %RDI.i3611.pre-phi, align 8
  %2725 = add i64 %2720, -44
  %2726 = add i64 %2719, 14
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RSI.i3626, align 8
  %2730 = add i64 %2719, 27707
  %2731 = add i64 %2719, 19
  %2732 = load i64, i64* %6, align 8
  %2733 = add i64 %2732, -8
  %2734 = inttoptr i64 %2733 to i64*
  store i64 %2731, i64* %2734, align 8
  store i64 %2733, i64* %6, align 8
  store i64 %2730, i64* %3, align 8
  %call2_401b53 = tail call %struct.Memory* @sub_408780._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2730, %struct.Memory* %call2_401b40)
  %2735 = load i64, i64* %3, align 8
  store i64 4297828, i64* %RSI.i3626, align 8
  store i64 4297828, i64* %RDX.i3615, align 8
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -80
  %2738 = add i64 %2735, 11
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i64*
  %2740 = load i64, i64* %2739, align 8
  store i64 %2740, i64* %RDI.i3611.pre-phi, align 8
  %2741 = add i64 %2736, -44
  %2742 = add i64 %2735, 14
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i32*
  %2744 = load i32, i32* %2743, align 4
  %2745 = zext i32 %2744 to i64
  store i64 %2745, i64* %RSI.i3626, align 8
  %2746 = add i64 %2735, 27848
  %2747 = add i64 %2735, 19
  %2748 = load i64, i64* %6, align 8
  %2749 = add i64 %2748, -8
  %2750 = inttoptr i64 %2749 to i64*
  store i64 %2747, i64* %2750, align 8
  store i64 %2749, i64* %6, align 8
  store i64 %2746, i64* %3, align 8
  %call2_401b66 = tail call %struct.Memory* @sub_408820._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2746, %struct.Memory* %call2_401b53)
  %2751 = load i64, i64* %3, align 8
  store i64 4297851, i64* %RSI.i3626, align 8
  store i64 4297851, i64* %RDX.i3615, align 8
  %2752 = load i64, i64* %RBP.i, align 8
  %2753 = add i64 %2752, -80
  %2754 = add i64 %2751, 11
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RDI.i3611.pre-phi, align 8
  %2757 = add i64 %2752, -44
  %2758 = add i64 %2751, 14
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i32*
  %2760 = load i32, i32* %2759, align 4
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RSI.i3626, align 8
  %2762 = add i64 %2751, 27989
  %2763 = add i64 %2751, 19
  %2764 = load i64, i64* %6, align 8
  %2765 = add i64 %2764, -8
  %2766 = inttoptr i64 %2765 to i64*
  store i64 %2763, i64* %2766, align 8
  store i64 %2765, i64* %6, align 8
  store i64 %2762, i64* %3, align 8
  %call2_401b79 = tail call %struct.Memory* @sub_4088c0._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2762, %struct.Memory* %call2_401b66)
  %2767 = load i64, i64* %3, align 8
  store i64 4297873, i64* %RSI.i3626, align 8
  store i64 4297873, i64* %RDX.i3615, align 8
  %2768 = load i64, i64* %RBP.i, align 8
  %2769 = add i64 %2768, -80
  %2770 = add i64 %2767, 11
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i64*
  %2772 = load i64, i64* %2771, align 8
  store i64 %2772, i64* %RDI.i3611.pre-phi, align 8
  %2773 = add i64 %2768, -44
  %2774 = add i64 %2767, 14
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2773 to i32*
  %2776 = load i32, i32* %2775, align 4
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RSI.i3626, align 8
  %2778 = add i64 %2767, 28130
  %2779 = add i64 %2767, 19
  %2780 = load i64, i64* %6, align 8
  %2781 = add i64 %2780, -8
  %2782 = inttoptr i64 %2781 to i64*
  store i64 %2779, i64* %2782, align 8
  store i64 %2781, i64* %6, align 8
  store i64 %2778, i64* %3, align 8
  %call2_401b8c = tail call %struct.Memory* @sub_408960._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2778, %struct.Memory* %call2_401b79)
  %2783 = load i64, i64* %3, align 8
  %2784 = add i64 %2783, 2229487
  %2785 = add i64 %2783, 7
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = sext i32 %2787 to i64
  %2789 = mul nsw i64 %2788, 1717986919
  %2790 = lshr i64 %2789, 63
  store i64 %2790, i64* %RCX.i3620, align 8
  %2791 = trunc i64 %2790 to i32
  %2792 = ashr i64 %2789, 34
  store i64 %2792, i64* %RAX.i3622, align 8
  %2793 = trunc i64 %2792 to i32
  %2794 = add i32 %2791, %2793
  %2795 = zext i32 %2794 to i64
  store i64 %2795, i64* %202, align 8
  %2796 = icmp ult i32 %2794, %2793
  %2797 = icmp ult i32 %2794, %2791
  %2798 = or i1 %2796, %2797
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %14, align 1
  %2800 = and i32 %2794, 255
  %2801 = tail call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  store i8 %2804, i8* %21, align 1
  %2805 = trunc i64 %2792 to i32
  %2806 = xor i32 %2805, %2794
  %2807 = lshr i32 %2806, 4
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %27, align 1
  %2810 = icmp eq i32 %2794, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %30, align 1
  %2812 = lshr i32 %2794, 31
  %2813 = trunc i32 %2812 to i8
  store i8 %2813, i8* %33, align 1
  %2814 = lshr i64 %2792, 31
  %2815 = trunc i64 %2814 to i32
  %2816 = and i32 %2815, 1
  %2817 = xor i32 %2812, %2816
  %2818 = add nuw nsw i32 %2817, %2812
  %2819 = icmp eq i32 %2818, 2
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %39, align 1
  %2821 = add i64 %2783, 2229551
  %2822 = add i64 %2783, 40
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2821 to i32*
  store i32 %2794, i32* %2823, align 4
  %2824 = load i64, i64* %3, align 8
  store i64 4297896, i64* %RSI.i3626, align 8
  store i64 4297896, i64* %RDX.i3615, align 8
  %2825 = load i64, i64* %RBP.i, align 8
  %2826 = add i64 %2825, -80
  %2827 = add i64 %2824, 11
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i64*
  %2829 = load i64, i64* %2828, align 8
  store i64 %2829, i64* %RDI.i3611.pre-phi, align 8
  %2830 = add i64 %2825, -44
  %2831 = add i64 %2824, 14
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i32*
  %2833 = load i32, i32* %2832, align 4
  %2834 = zext i32 %2833 to i64
  store i64 %2834, i64* %RSI.i3626, align 8
  %2835 = add i64 %2824, 28231
  %2836 = add i64 %2824, 19
  %2837 = load i64, i64* %6, align 8
  %2838 = add i64 %2837, -8
  %2839 = inttoptr i64 %2838 to i64*
  store i64 %2836, i64* %2839, align 8
  store i64 %2838, i64* %6, align 8
  store i64 %2835, i64* %3, align 8
  %call2_401bc7 = tail call %struct.Memory* @sub_408a00._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2835, %struct.Memory* %call2_401b8c)
  %2840 = load i64, i64* %3, align 8
  store i64 4297918, i64* %RSI.i3626, align 8
  store i64 4297918, i64* %RDX.i3615, align 8
  %2841 = load i64, i64* %RBP.i, align 8
  %2842 = add i64 %2841, -80
  %2843 = add i64 %2840, 11
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i64*
  %2845 = load i64, i64* %2844, align 8
  store i64 %2845, i64* %RDI.i3611.pre-phi, align 8
  %2846 = add i64 %2841, -44
  %2847 = add i64 %2840, 14
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = zext i32 %2849 to i64
  store i64 %2850, i64* %RSI.i3626, align 8
  %2851 = add i64 %2840, 28372
  %2852 = add i64 %2840, 19
  %2853 = load i64, i64* %6, align 8
  %2854 = add i64 %2853, -8
  %2855 = inttoptr i64 %2854 to i64*
  store i64 %2852, i64* %2855, align 8
  store i64 %2854, i64* %6, align 8
  store i64 %2851, i64* %3, align 8
  %call2_401bda = tail call %struct.Memory* @sub_408aa0._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2851, %struct.Memory* %call2_401bc7)
  %2856 = load i64, i64* %3, align 8
  store i64 4297950, i64* %RSI.i3626, align 8
  store i64 4297950, i64* %RDX.i3615, align 8
  %2857 = load i64, i64* %RBP.i, align 8
  %2858 = add i64 %2857, -80
  %2859 = add i64 %2856, 11
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i64*
  %2861 = load i64, i64* %2860, align 8
  store i64 %2861, i64* %RDI.i3611.pre-phi, align 8
  %2862 = add i64 %2857, -44
  %2863 = add i64 %2856, 14
  store i64 %2863, i64* %3, align 8
  %2864 = inttoptr i64 %2862 to i32*
  %2865 = load i32, i32* %2864, align 4
  %2866 = zext i32 %2865 to i64
  store i64 %2866, i64* %RSI.i3626, align 8
  %2867 = add i64 %2856, 28513
  %2868 = add i64 %2856, 19
  %2869 = load i64, i64* %6, align 8
  %2870 = add i64 %2869, -8
  %2871 = inttoptr i64 %2870 to i64*
  store i64 %2868, i64* %2871, align 8
  store i64 %2870, i64* %6, align 8
  store i64 %2867, i64* %3, align 8
  %call2_401bed = tail call %struct.Memory* @sub_408b40._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2867, %struct.Memory* %call2_401bda)
  %2872 = load i64, i64* %3, align 8
  store i64 4297977, i64* %RSI.i3626, align 8
  store i64 4297977, i64* %RDX.i3615, align 8
  %2873 = load i64, i64* %RBP.i, align 8
  %2874 = add i64 %2873, -80
  %2875 = add i64 %2872, 11
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  %2877 = load i64, i64* %2876, align 8
  store i64 %2877, i64* %RDI.i3611.pre-phi, align 8
  %2878 = add i64 %2873, -44
  %2879 = add i64 %2872, 14
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RSI.i3626, align 8
  %2883 = add i64 %2872, 28654
  %2884 = add i64 %2872, 19
  %2885 = load i64, i64* %6, align 8
  %2886 = add i64 %2885, -8
  %2887 = inttoptr i64 %2886 to i64*
  store i64 %2884, i64* %2887, align 8
  store i64 %2886, i64* %6, align 8
  store i64 %2883, i64* %3, align 8
  %call2_401c00 = tail call %struct.Memory* @sub_408be0._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2883, %struct.Memory* %call2_401bed)
  %2888 = load i64, i64* %3, align 8
  store i64 4298014, i64* %RSI.i3626, align 8
  store i64 4298014, i64* %RDX.i3615, align 8
  %2889 = load i64, i64* %RBP.i, align 8
  %2890 = add i64 %2889, -80
  %2891 = add i64 %2888, 11
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i64*
  %2893 = load i64, i64* %2892, align 8
  store i64 %2893, i64* %RDI.i3611.pre-phi, align 8
  %2894 = add i64 %2889, -44
  %2895 = add i64 %2888, 14
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i32*
  %2897 = load i32, i32* %2896, align 4
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RSI.i3626, align 8
  %2899 = add i64 %2888, 28795
  %2900 = add i64 %2888, 19
  %2901 = load i64, i64* %6, align 8
  %2902 = add i64 %2901, -8
  %2903 = inttoptr i64 %2902 to i64*
  store i64 %2900, i64* %2903, align 8
  store i64 %2902, i64* %6, align 8
  store i64 %2899, i64* %3, align 8
  %call2_401c13 = tail call %struct.Memory* @sub_408c80._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2899, %struct.Memory* %call2_401c00)
  %2904 = load i64, i64* %3, align 8
  store i64 4298041, i64* %RSI.i3626, align 8
  store i64 4298041, i64* %RDX.i3615, align 8
  %2905 = load i64, i64* %RBP.i, align 8
  %2906 = add i64 %2905, -80
  %2907 = add i64 %2904, 11
  store i64 %2907, i64* %3, align 8
  %2908 = inttoptr i64 %2906 to i64*
  %2909 = load i64, i64* %2908, align 8
  store i64 %2909, i64* %RDI.i3611.pre-phi, align 8
  %2910 = add i64 %2905, -44
  %2911 = add i64 %2904, 14
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = zext i32 %2913 to i64
  store i64 %2914, i64* %RSI.i3626, align 8
  %2915 = add i64 %2904, 28936
  %2916 = add i64 %2904, 19
  %2917 = load i64, i64* %6, align 8
  %2918 = add i64 %2917, -8
  %2919 = inttoptr i64 %2918 to i64*
  store i64 %2916, i64* %2919, align 8
  store i64 %2918, i64* %6, align 8
  store i64 %2915, i64* %3, align 8
  %call2_401c26 = tail call %struct.Memory* @sub_408d20._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2915, %struct.Memory* %call2_401c13)
  %2920 = load i64, i64* %3, align 8
  store i64 4298079, i64* %RSI.i3626, align 8
  store i64 4298079, i64* %RDX.i3615, align 8
  %2921 = load i64, i64* %RBP.i, align 8
  %2922 = add i64 %2921, -80
  %2923 = add i64 %2920, 11
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i64*
  %2925 = load i64, i64* %2924, align 8
  store i64 %2925, i64* %RDI.i3611.pre-phi, align 8
  %2926 = add i64 %2921, -44
  %2927 = add i64 %2920, 14
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  %2929 = load i32, i32* %2928, align 4
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RSI.i3626, align 8
  %2931 = add i64 %2920, 29077
  %2932 = add i64 %2920, 19
  %2933 = load i64, i64* %6, align 8
  %2934 = add i64 %2933, -8
  %2935 = inttoptr i64 %2934 to i64*
  store i64 %2932, i64* %2935, align 8
  store i64 %2934, i64* %6, align 8
  store i64 %2931, i64* %3, align 8
  %call2_401c39 = tail call %struct.Memory* @sub_408dc0._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2931, %struct.Memory* %call2_401c26)
  %2936 = load i64, i64* %3, align 8
  store i64 4298116, i64* %RSI.i3626, align 8
  store i64 4298116, i64* %RDX.i3615, align 8
  %2937 = load i64, i64* %RBP.i, align 8
  %2938 = add i64 %2937, -80
  %2939 = add i64 %2936, 11
  store i64 %2939, i64* %3, align 8
  %2940 = inttoptr i64 %2938 to i64*
  %2941 = load i64, i64* %2940, align 8
  store i64 %2941, i64* %RDI.i3611.pre-phi, align 8
  %2942 = add i64 %2937, -44
  %2943 = add i64 %2936, 14
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = zext i32 %2945 to i64
  store i64 %2946, i64* %RSI.i3626, align 8
  %2947 = add i64 %2936, 29218
  %2948 = add i64 %2936, 19
  %2949 = load i64, i64* %6, align 8
  %2950 = add i64 %2949, -8
  %2951 = inttoptr i64 %2950 to i64*
  store i64 %2948, i64* %2951, align 8
  store i64 %2950, i64* %6, align 8
  store i64 %2947, i64* %3, align 8
  %call2_401c4c = tail call %struct.Memory* @sub_408e60._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2947, %struct.Memory* %call2_401c39)
  %2952 = load i64, i64* %3, align 8
  store i64 4298141, i64* %RSI.i3626, align 8
  store i64 4298141, i64* %RDX.i3615, align 8
  %2953 = load i64, i64* %RBP.i, align 8
  %2954 = add i64 %2953, -80
  %2955 = add i64 %2952, 11
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i64*
  %2957 = load i64, i64* %2956, align 8
  store i64 %2957, i64* %RDI.i3611.pre-phi, align 8
  %2958 = add i64 %2953, -44
  %2959 = add i64 %2952, 14
  store i64 %2959, i64* %3, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RSI.i3626, align 8
  %2963 = add i64 %2952, 29359
  %2964 = add i64 %2952, 19
  %2965 = load i64, i64* %6, align 8
  %2966 = add i64 %2965, -8
  %2967 = inttoptr i64 %2966 to i64*
  store i64 %2964, i64* %2967, align 8
  store i64 %2966, i64* %6, align 8
  store i64 %2963, i64* %3, align 8
  %call2_401c5f = tail call %struct.Memory* @sub_408f00._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2963, %struct.Memory* %call2_401c4c)
  %2968 = load i64, i64* %3, align 8
  store i64 4298176, i64* %RSI.i3626, align 8
  store i64 4298176, i64* %RDX.i3615, align 8
  %2969 = load i64, i64* %RBP.i, align 8
  %2970 = add i64 %2969, -80
  %2971 = add i64 %2968, 11
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i64*
  %2973 = load i64, i64* %2972, align 8
  store i64 %2973, i64* %RDI.i3611.pre-phi, align 8
  %2974 = add i64 %2969, -44
  %2975 = add i64 %2968, 14
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i32*
  %2977 = load i32, i32* %2976, align 4
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RSI.i3626, align 8
  %2979 = add i64 %2968, 29500
  %2980 = add i64 %2968, 19
  %2981 = load i64, i64* %6, align 8
  %2982 = add i64 %2981, -8
  %2983 = inttoptr i64 %2982 to i64*
  store i64 %2980, i64* %2983, align 8
  store i64 %2982, i64* %6, align 8
  store i64 %2979, i64* %3, align 8
  %call2_401c72 = tail call %struct.Memory* @sub_408fa0._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2979, %struct.Memory* %call2_401c5f)
  %2984 = load i64, i64* %3, align 8
  store i64 4298211, i64* %RSI.i3626, align 8
  store i64 4298211, i64* %RDX.i3615, align 8
  %2985 = load i64, i64* %RBP.i, align 8
  %2986 = add i64 %2985, -80
  %2987 = add i64 %2984, 11
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i64*
  %2989 = load i64, i64* %2988, align 8
  store i64 %2989, i64* %RDI.i3611.pre-phi, align 8
  %2990 = add i64 %2985, -44
  %2991 = add i64 %2984, 14
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RSI.i3626, align 8
  %2995 = add i64 %2984, 29641
  %2996 = add i64 %2984, 19
  %2997 = load i64, i64* %6, align 8
  %2998 = add i64 %2997, -8
  %2999 = inttoptr i64 %2998 to i64*
  store i64 %2996, i64* %2999, align 8
  store i64 %2998, i64* %6, align 8
  store i64 %2995, i64* %3, align 8
  %call2_401c85 = tail call %struct.Memory* @sub_409040._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2995, %struct.Memory* %call2_401c72)
  %3000 = load i64, i64* %3, align 8
  store i64 4298244, i64* %RSI.i3626, align 8
  store i64 4298244, i64* %RDX.i3615, align 8
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = add i64 %3001, -80
  %3003 = add i64 %3000, 11
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i64*
  %3005 = load i64, i64* %3004, align 8
  store i64 %3005, i64* %RDI.i3611.pre-phi, align 8
  %3006 = add i64 %3001, -44
  %3007 = add i64 %3000, 14
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3006 to i32*
  %3009 = load i32, i32* %3008, align 4
  %3010 = zext i32 %3009 to i64
  store i64 %3010, i64* %RSI.i3626, align 8
  %3011 = add i64 %3000, 29782
  %3012 = add i64 %3000, 19
  %3013 = load i64, i64* %6, align 8
  %3014 = add i64 %3013, -8
  %3015 = inttoptr i64 %3014 to i64*
  store i64 %3012, i64* %3015, align 8
  store i64 %3014, i64* %6, align 8
  store i64 %3011, i64* %3, align 8
  %call2_401c98 = tail call %struct.Memory* @sub_4090e0._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3011, %struct.Memory* %call2_401c85)
  %3016 = load i64, i64* %3, align 8
  store i64 4298266, i64* %RSI.i3626, align 8
  store i64 4298266, i64* %RDX.i3615, align 8
  %3017 = load i64, i64* %RBP.i, align 8
  %3018 = add i64 %3017, -80
  %3019 = add i64 %3016, 11
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i64*
  %3021 = load i64, i64* %3020, align 8
  store i64 %3021, i64* %RDI.i3611.pre-phi, align 8
  %3022 = add i64 %3017, -44
  %3023 = add i64 %3016, 14
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RSI.i3626, align 8
  %3027 = add i64 %3016, 29923
  %3028 = add i64 %3016, 19
  %3029 = load i64, i64* %6, align 8
  %3030 = add i64 %3029, -8
  %3031 = inttoptr i64 %3030 to i64*
  store i64 %3028, i64* %3031, align 8
  store i64 %3030, i64* %6, align 8
  store i64 %3027, i64* %3, align 8
  %call2_401cab = tail call %struct.Memory* @sub_409180._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3027, %struct.Memory* %call2_401c98)
  %3032 = load i64, i64* %3, align 8
  store i64 4298297, i64* %RSI.i3626, align 8
  store i64 4298297, i64* %RDX.i3615, align 8
  %3033 = load i64, i64* %RBP.i, align 8
  %3034 = add i64 %3033, -80
  %3035 = add i64 %3032, 11
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i64*
  %3037 = load i64, i64* %3036, align 8
  store i64 %3037, i64* %RDI.i3611.pre-phi, align 8
  %3038 = add i64 %3033, -44
  %3039 = add i64 %3032, 14
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i32*
  %3041 = load i32, i32* %3040, align 4
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RSI.i3626, align 8
  %3043 = add i64 %3032, 30064
  %3044 = add i64 %3032, 19
  %3045 = load i64, i64* %6, align 8
  %3046 = add i64 %3045, -8
  %3047 = inttoptr i64 %3046 to i64*
  store i64 %3044, i64* %3047, align 8
  store i64 %3046, i64* %6, align 8
  store i64 %3043, i64* %3, align 8
  %call2_401cbe = tail call %struct.Memory* @sub_409220._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3043, %struct.Memory* %call2_401cab)
  %3048 = load i64, i64* %3, align 8
  store i64 4298318, i64* %RSI.i3626, align 8
  store i64 4298318, i64* %RDX.i3615, align 8
  %3049 = load i64, i64* %RBP.i, align 8
  %3050 = add i64 %3049, -80
  %3051 = add i64 %3048, 11
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3050 to i64*
  %3053 = load i64, i64* %3052, align 8
  store i64 %3053, i64* %RDI.i3611.pre-phi, align 8
  %3054 = add i64 %3049, -44
  %3055 = add i64 %3048, 14
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3054 to i32*
  %3057 = load i32, i32* %3056, align 4
  %3058 = zext i32 %3057 to i64
  store i64 %3058, i64* %RSI.i3626, align 8
  %3059 = add i64 %3048, 30205
  %3060 = add i64 %3048, 19
  %3061 = load i64, i64* %6, align 8
  %3062 = add i64 %3061, -8
  %3063 = inttoptr i64 %3062 to i64*
  store i64 %3060, i64* %3063, align 8
  store i64 %3062, i64* %6, align 8
  store i64 %3059, i64* %3, align 8
  %call2_401cd1 = tail call %struct.Memory* @sub_4092c0._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3059, %struct.Memory* %call2_401cbe)
  %3064 = load i64, i64* %3, align 8
  store i64 4298348, i64* %RSI.i3626, align 8
  store i64 4298348, i64* %RDX.i3615, align 8
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -80
  %3067 = add i64 %3064, 11
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i64*
  %3069 = load i64, i64* %3068, align 8
  store i64 %3069, i64* %RDI.i3611.pre-phi, align 8
  %3070 = add i64 %3065, -44
  %3071 = add i64 %3064, 14
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i32*
  %3073 = load i32, i32* %3072, align 4
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RSI.i3626, align 8
  %3075 = add i64 %3064, 30346
  %3076 = add i64 %3064, 19
  %3077 = load i64, i64* %6, align 8
  %3078 = add i64 %3077, -8
  %3079 = inttoptr i64 %3078 to i64*
  store i64 %3076, i64* %3079, align 8
  store i64 %3078, i64* %6, align 8
  store i64 %3075, i64* %3, align 8
  %call2_401ce4 = tail call %struct.Memory* @sub_409360._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3075, %struct.Memory* %call2_401cd1)
  %3080 = load i64, i64* %3, align 8
  store i64 4298370, i64* %RSI.i3626, align 8
  store i64 4298370, i64* %RDX.i3615, align 8
  %3081 = load i64, i64* %RBP.i, align 8
  %3082 = add i64 %3081, -80
  %3083 = add i64 %3080, 11
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i64*
  %3085 = load i64, i64* %3084, align 8
  store i64 %3085, i64* %RDI.i3611.pre-phi, align 8
  %3086 = add i64 %3081, -44
  %3087 = add i64 %3080, 14
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i32*
  %3089 = load i32, i32* %3088, align 4
  %3090 = zext i32 %3089 to i64
  store i64 %3090, i64* %RSI.i3626, align 8
  %3091 = add i64 %3080, 30487
  %3092 = add i64 %3080, 19
  %3093 = load i64, i64* %6, align 8
  %3094 = add i64 %3093, -8
  %3095 = inttoptr i64 %3094 to i64*
  store i64 %3092, i64* %3095, align 8
  store i64 %3094, i64* %6, align 8
  store i64 %3091, i64* %3, align 8
  %call2_401cf7 = tail call %struct.Memory* @sub_409400._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3091, %struct.Memory* %call2_401ce4)
  %3096 = load i64, i64* %3, align 8
  %3097 = add i64 %3096, 2229132
  %3098 = add i64 %3096, 9
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to double*
  %3100 = load double, double* %3099, align 8
  %3101 = tail call double @llvm.trunc.f64(double %3100)
  %3102 = tail call double @llvm.fabs.f64(double %3101)
  %3103 = fcmp ogt double %3102, 0x43E0000000000000
  %3104 = fptosi double %3101 to i64
  %3105 = trunc i64 %3104 to i32
  %3106 = select i1 %3103, i32 0, i32 %3105
  store i64 6654928, i64* %RAX.i3622, align 8
  store i64 6686928, i64* %202, align 8
  store i64 6686928, i64* %RCX.i3620, align 8
  store i64 6654928, i64* %RDI.i3611.pre-phi, align 8
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -84
  %3109 = add i64 %3096, 35
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  store i32 %3106, i32* %3110, align 4
  %3111 = load i64, i64* %RCX.i3620, align 8
  %3112 = load i64, i64* %3, align 8
  store i64 %3111, i64* %RSI.i3626, align 8
  %3113 = load i64, i64* %RBP.i, align 8
  %3114 = add i64 %3113, -84
  %3115 = add i64 %3112, 6
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i32*
  %3117 = load i32, i32* %3116, align 4
  %3118 = zext i32 %3117 to i64
  store i64 %3118, i64* %RDX.i3615, align 8
  %3119 = add i64 %3113, -96
  %3120 = load i64, i64* %RAX.i3622, align 8
  %3121 = add i64 %3112, 10
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3119 to i64*
  store i64 %3120, i64* %3122, align 8
  %3123 = load i64, i64* %3, align 8
  %3124 = add i64 %3123, 30583
  %3125 = add i64 %3123, 5
  %3126 = load i64, i64* %6, align 8
  %3127 = add i64 %3126, -8
  %3128 = inttoptr i64 %3127 to i64*
  store i64 %3125, i64* %3128, align 8
  store i64 %3127, i64* %6, align 8
  store i64 %3124, i64* %3, align 8
  %call2_401d29 = tail call %struct.Memory* @sub_4094a0._Z4fillIPjjEvT_S1_T0_(%struct.State* nonnull %0, i64 %3124, %struct.Memory* %call2_401cf7)
  %3129 = load i64, i64* %3, align 8
  %3130 = add i64 %3129, 2229074
  %3131 = add i64 %3129, 6
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = add i64 %3129, 2229138
  %3135 = add i64 %3129, 12
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i32*
  store i32 %3133, i32* %3136, align 4
  %3137 = load i64, i64* %3, align 8
  store i64 4297494, i64* %RDX.i3615, align 8
  %3138 = load i64, i64* %RBP.i, align 8
  %3139 = add i64 %3138, -96
  %3140 = add i64 %3137, 9
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i64*
  %3142 = load i64, i64* %3141, align 8
  store i64 %3142, i64* %RDI.i3611.pre-phi, align 8
  %3143 = add i64 %3138, -44
  %3144 = add i64 %3137, 12
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to i32*
  %3146 = load i32, i32* %3145, align 4
  %3147 = zext i32 %3146 to i64
  store i64 %3147, i64* %RSI.i3626, align 8
  %3148 = add i64 %3137, 30630
  %3149 = add i64 %3137, 17
  %3150 = load i64, i64* %6, align 8
  %3151 = add i64 %3150, -8
  %3152 = inttoptr i64 %3151 to i64*
  store i64 %3149, i64* %3152, align 8
  store i64 %3151, i64* %6, align 8
  store i64 %3148, i64* %3, align 8
  %call2_401d46 = tail call %struct.Memory* @sub_4094e0._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3148, %struct.Memory* %call2_401d29)
  %3153 = load i64, i64* %3, align 8
  store i64 4297512, i64* %RSI.i3626, align 8
  store i64 4297512, i64* %RDX.i3615, align 8
  %3154 = load i64, i64* %RBP.i, align 8
  %3155 = add i64 %3154, -96
  %3156 = add i64 %3153, 11
  store i64 %3156, i64* %3, align 8
  %3157 = inttoptr i64 %3155 to i64*
  %3158 = load i64, i64* %3157, align 8
  store i64 %3158, i64* %RDI.i3611.pre-phi, align 8
  %3159 = add i64 %3154, -44
  %3160 = add i64 %3153, 14
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i32*
  %3162 = load i32, i32* %3161, align 4
  %3163 = zext i32 %3162 to i64
  store i64 %3163, i64* %RSI.i3626, align 8
  %3164 = add i64 %3153, 30773
  %3165 = add i64 %3153, 19
  %3166 = load i64, i64* %6, align 8
  %3167 = add i64 %3166, -8
  %3168 = inttoptr i64 %3167 to i64*
  store i64 %3165, i64* %3168, align 8
  store i64 %3167, i64* %6, align 8
  store i64 %3164, i64* %3, align 8
  %call2_401d59 = tail call %struct.Memory* @sub_409580._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3164, %struct.Memory* %call2_401d46)
  %3169 = load i64, i64* %3, align 8
  store i64 4297535, i64* %RSI.i3626, align 8
  store i64 4297535, i64* %RDX.i3615, align 8
  %3170 = load i64, i64* %RBP.i, align 8
  %3171 = add i64 %3170, -96
  %3172 = add i64 %3169, 11
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i64*
  %3174 = load i64, i64* %3173, align 8
  store i64 %3174, i64* %RDI.i3611.pre-phi, align 8
  %3175 = add i64 %3170, -44
  %3176 = add i64 %3169, 14
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to i32*
  %3178 = load i32, i32* %3177, align 4
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RSI.i3626, align 8
  %3180 = add i64 %3169, 30914
  %3181 = add i64 %3169, 19
  %3182 = load i64, i64* %6, align 8
  %3183 = add i64 %3182, -8
  %3184 = inttoptr i64 %3183 to i64*
  store i64 %3181, i64* %3184, align 8
  store i64 %3183, i64* %6, align 8
  store i64 %3180, i64* %3, align 8
  %call2_401d6c = tail call %struct.Memory* @sub_409620._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3180, %struct.Memory* %call2_401d59)
  %3185 = load i64, i64* %3, align 8
  store i64 4297563, i64* %RSI.i3626, align 8
  store i64 4297563, i64* %RDX.i3615, align 8
  %3186 = load i64, i64* %RBP.i, align 8
  %3187 = add i64 %3186, -96
  %3188 = add i64 %3185, 11
  store i64 %3188, i64* %3, align 8
  %3189 = inttoptr i64 %3187 to i64*
  %3190 = load i64, i64* %3189, align 8
  store i64 %3190, i64* %RDI.i3611.pre-phi, align 8
  %3191 = add i64 %3186, -44
  %3192 = add i64 %3185, 14
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3191 to i32*
  %3194 = load i32, i32* %3193, align 4
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RSI.i3626, align 8
  %3196 = add i64 %3185, 31055
  %3197 = add i64 %3185, 19
  %3198 = load i64, i64* %6, align 8
  %3199 = add i64 %3198, -8
  %3200 = inttoptr i64 %3199 to i64*
  store i64 %3197, i64* %3200, align 8
  store i64 %3199, i64* %6, align 8
  store i64 %3196, i64* %3, align 8
  %call2_401d7f = tail call %struct.Memory* @sub_4096c0._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3196, %struct.Memory* %call2_401d6c)
  %3201 = load i64, i64* %3, align 8
  store i64 4297591, i64* %RSI.i3626, align 8
  store i64 4297591, i64* %RDX.i3615, align 8
  %3202 = load i64, i64* %RBP.i, align 8
  %3203 = add i64 %3202, -96
  %3204 = add i64 %3201, 11
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i64*
  %3206 = load i64, i64* %3205, align 8
  store i64 %3206, i64* %RDI.i3611.pre-phi, align 8
  %3207 = add i64 %3202, -44
  %3208 = add i64 %3201, 14
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RSI.i3626, align 8
  %3212 = add i64 %3201, 31196
  %3213 = add i64 %3201, 19
  %3214 = load i64, i64* %6, align 8
  %3215 = add i64 %3214, -8
  %3216 = inttoptr i64 %3215 to i64*
  store i64 %3213, i64* %3216, align 8
  store i64 %3215, i64* %6, align 8
  store i64 %3212, i64* %3, align 8
  %call2_401d92 = tail call %struct.Memory* @sub_409760._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3212, %struct.Memory* %call2_401d7f)
  %3217 = load i64, i64* %3, align 8
  store i64 4297617, i64* %RSI.i3626, align 8
  store i64 4297617, i64* %RDX.i3615, align 8
  %3218 = load i64, i64* %RBP.i, align 8
  %3219 = add i64 %3218, -96
  %3220 = add i64 %3217, 11
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i64*
  %3222 = load i64, i64* %3221, align 8
  store i64 %3222, i64* %RDI.i3611.pre-phi, align 8
  %3223 = add i64 %3218, -44
  %3224 = add i64 %3217, 14
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RSI.i3626, align 8
  %3228 = add i64 %3217, 31337
  %3229 = add i64 %3217, 19
  %3230 = load i64, i64* %6, align 8
  %3231 = add i64 %3230, -8
  %3232 = inttoptr i64 %3231 to i64*
  store i64 %3229, i64* %3232, align 8
  store i64 %3231, i64* %6, align 8
  store i64 %3228, i64* %3, align 8
  %call2_401da5 = tail call %struct.Memory* @sub_409800._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3228, %struct.Memory* %call2_401d92)
  %3233 = load i64, i64* %3, align 8
  store i64 4297640, i64* %RSI.i3626, align 8
  store i64 4297640, i64* %RDX.i3615, align 8
  %3234 = load i64, i64* %RBP.i, align 8
  %3235 = add i64 %3234, -96
  %3236 = add i64 %3233, 11
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i64*
  %3238 = load i64, i64* %3237, align 8
  store i64 %3238, i64* %RDI.i3611.pre-phi, align 8
  %3239 = add i64 %3234, -44
  %3240 = add i64 %3233, 14
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  %3242 = load i32, i32* %3241, align 4
  %3243 = zext i32 %3242 to i64
  store i64 %3243, i64* %RSI.i3626, align 8
  %3244 = add i64 %3233, 31478
  %3245 = add i64 %3233, 19
  %3246 = load i64, i64* %6, align 8
  %3247 = add i64 %3246, -8
  %3248 = inttoptr i64 %3247 to i64*
  store i64 %3245, i64* %3248, align 8
  store i64 %3247, i64* %6, align 8
  store i64 %3244, i64* %3, align 8
  %call2_401db8 = tail call %struct.Memory* @sub_4098a0._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3244, %struct.Memory* %call2_401da5)
  %3249 = load i64, i64* %3, align 8
  store i64 4297665, i64* %RSI.i3626, align 8
  store i64 4297665, i64* %RDX.i3615, align 8
  %3250 = load i64, i64* %RBP.i, align 8
  %3251 = add i64 %3250, -96
  %3252 = add i64 %3249, 11
  store i64 %3252, i64* %3, align 8
  %3253 = inttoptr i64 %3251 to i64*
  %3254 = load i64, i64* %3253, align 8
  store i64 %3254, i64* %RDI.i3611.pre-phi, align 8
  %3255 = add i64 %3250, -44
  %3256 = add i64 %3249, 14
  store i64 %3256, i64* %3, align 8
  %3257 = inttoptr i64 %3255 to i32*
  %3258 = load i32, i32* %3257, align 4
  %3259 = zext i32 %3258 to i64
  store i64 %3259, i64* %RSI.i3626, align 8
  %3260 = add i64 %3249, 31619
  %3261 = add i64 %3249, 19
  %3262 = load i64, i64* %6, align 8
  %3263 = add i64 %3262, -8
  %3264 = inttoptr i64 %3263 to i64*
  store i64 %3261, i64* %3264, align 8
  store i64 %3263, i64* %6, align 8
  store i64 %3260, i64* %3, align 8
  %call2_401dcb = tail call %struct.Memory* @sub_409940._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3260, %struct.Memory* %call2_401db8)
  %3265 = load i64, i64* %3, align 8
  store i64 4297693, i64* %RSI.i3626, align 8
  store i64 4297693, i64* %RDX.i3615, align 8
  %3266 = load i64, i64* %RBP.i, align 8
  %3267 = add i64 %3266, -96
  %3268 = add i64 %3265, 11
  store i64 %3268, i64* %3, align 8
  %3269 = inttoptr i64 %3267 to i64*
  %3270 = load i64, i64* %3269, align 8
  store i64 %3270, i64* %RDI.i3611.pre-phi, align 8
  %3271 = add i64 %3266, -44
  %3272 = add i64 %3265, 14
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i32*
  %3274 = load i32, i32* %3273, align 4
  %3275 = zext i32 %3274 to i64
  store i64 %3275, i64* %RSI.i3626, align 8
  %3276 = add i64 %3265, 31760
  %3277 = add i64 %3265, 19
  %3278 = load i64, i64* %6, align 8
  %3279 = add i64 %3278, -8
  %3280 = inttoptr i64 %3279 to i64*
  store i64 %3277, i64* %3280, align 8
  store i64 %3279, i64* %6, align 8
  store i64 %3276, i64* %3, align 8
  %call2_401dde = tail call %struct.Memory* @sub_4099e0._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3276, %struct.Memory* %call2_401dcb)
  %3281 = load i64, i64* %3, align 8
  store i64 4297725, i64* %RSI.i3626, align 8
  store i64 4297725, i64* %RDX.i3615, align 8
  %3282 = load i64, i64* %RBP.i, align 8
  %3283 = add i64 %3282, -96
  %3284 = add i64 %3281, 11
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i64*
  %3286 = load i64, i64* %3285, align 8
  store i64 %3286, i64* %RDI.i3611.pre-phi, align 8
  %3287 = add i64 %3282, -44
  %3288 = add i64 %3281, 14
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i32*
  %3290 = load i32, i32* %3289, align 4
  %3291 = zext i32 %3290 to i64
  store i64 %3291, i64* %RSI.i3626, align 8
  %3292 = add i64 %3281, 31901
  %3293 = add i64 %3281, 19
  %3294 = load i64, i64* %6, align 8
  %3295 = add i64 %3294, -8
  %3296 = inttoptr i64 %3295 to i64*
  store i64 %3293, i64* %3296, align 8
  store i64 %3295, i64* %6, align 8
  store i64 %3292, i64* %3, align 8
  %call2_401df1 = tail call %struct.Memory* @sub_409a80._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3292, %struct.Memory* %call2_401dde)
  %3297 = load i64, i64* %3, align 8
  store i64 4297754, i64* %RSI.i3626, align 8
  store i64 4297754, i64* %RDX.i3615, align 8
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -96
  %3300 = add i64 %3297, 11
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i64*
  %3302 = load i64, i64* %3301, align 8
  store i64 %3302, i64* %RDI.i3611.pre-phi, align 8
  %3303 = add i64 %3298, -44
  %3304 = add i64 %3297, 14
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = zext i32 %3306 to i64
  store i64 %3307, i64* %RSI.i3626, align 8
  %3308 = add i64 %3297, 32042
  %3309 = add i64 %3297, 19
  %3310 = load i64, i64* %6, align 8
  %3311 = add i64 %3310, -8
  %3312 = inttoptr i64 %3311 to i64*
  store i64 %3309, i64* %3312, align 8
  store i64 %3311, i64* %6, align 8
  store i64 %3308, i64* %3, align 8
  %call2_401e04 = tail call %struct.Memory* @sub_409b20._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3308, %struct.Memory* %call2_401df1)
  %3313 = load i64, i64* %3, align 8
  store i64 4297792, i64* %RSI.i3626, align 8
  store i64 4297792, i64* %RDX.i3615, align 8
  %3314 = load i64, i64* %RBP.i, align 8
  %3315 = add i64 %3314, -96
  %3316 = add i64 %3313, 11
  store i64 %3316, i64* %3, align 8
  %3317 = inttoptr i64 %3315 to i64*
  %3318 = load i64, i64* %3317, align 8
  store i64 %3318, i64* %RDI.i3611.pre-phi, align 8
  %3319 = add i64 %3314, -44
  %3320 = add i64 %3313, 14
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  %3322 = load i32, i32* %3321, align 4
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RSI.i3626, align 8
  %3324 = add i64 %3313, 32183
  %3325 = add i64 %3313, 19
  %3326 = load i64, i64* %6, align 8
  %3327 = add i64 %3326, -8
  %3328 = inttoptr i64 %3327 to i64*
  store i64 %3325, i64* %3328, align 8
  store i64 %3327, i64* %6, align 8
  store i64 %3324, i64* %3, align 8
  %call2_401e17 = tail call %struct.Memory* @sub_409bc0._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3324, %struct.Memory* %call2_401e04)
  %3329 = load i64, i64* %3, align 8
  store i64 4297827, i64* %RSI.i3626, align 8
  store i64 4297827, i64* %RDX.i3615, align 8
  %3330 = load i64, i64* %RBP.i, align 8
  %3331 = add i64 %3330, -96
  %3332 = add i64 %3329, 11
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i64*
  %3334 = load i64, i64* %3333, align 8
  store i64 %3334, i64* %RDI.i3611.pre-phi, align 8
  %3335 = add i64 %3330, -44
  %3336 = add i64 %3329, 14
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RSI.i3626, align 8
  %3340 = add i64 %3329, 32324
  %3341 = add i64 %3329, 19
  %3342 = load i64, i64* %6, align 8
  %3343 = add i64 %3342, -8
  %3344 = inttoptr i64 %3343 to i64*
  store i64 %3341, i64* %3344, align 8
  store i64 %3343, i64* %6, align 8
  store i64 %3340, i64* %3, align 8
  %call2_401e2a = tail call %struct.Memory* @sub_409c60._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3340, %struct.Memory* %call2_401e17)
  %3345 = load i64, i64* %3, align 8
  store i64 4297850, i64* %RSI.i3626, align 8
  store i64 4297850, i64* %RDX.i3615, align 8
  %3346 = load i64, i64* %RBP.i, align 8
  %3347 = add i64 %3346, -96
  %3348 = add i64 %3345, 11
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i64*
  %3350 = load i64, i64* %3349, align 8
  store i64 %3350, i64* %RDI.i3611.pre-phi, align 8
  %3351 = add i64 %3346, -44
  %3352 = add i64 %3345, 14
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = zext i32 %3354 to i64
  store i64 %3355, i64* %RSI.i3626, align 8
  %3356 = add i64 %3345, 32465
  %3357 = add i64 %3345, 19
  %3358 = load i64, i64* %6, align 8
  %3359 = add i64 %3358, -8
  %3360 = inttoptr i64 %3359 to i64*
  store i64 %3357, i64* %3360, align 8
  store i64 %3359, i64* %6, align 8
  store i64 %3356, i64* %3, align 8
  %call2_401e3d = tail call %struct.Memory* @sub_409d00._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3356, %struct.Memory* %call2_401e2a)
  %3361 = load i64, i64* %3, align 8
  store i64 4297872, i64* %RSI.i3626, align 8
  store i64 4297872, i64* %RDX.i3615, align 8
  %3362 = load i64, i64* %RBP.i, align 8
  %3363 = add i64 %3362, -96
  %3364 = add i64 %3361, 11
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i64*
  %3366 = load i64, i64* %3365, align 8
  store i64 %3366, i64* %RDI.i3611.pre-phi, align 8
  %3367 = add i64 %3362, -44
  %3368 = add i64 %3361, 14
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RSI.i3626, align 8
  %3372 = add i64 %3361, 32606
  %3373 = add i64 %3361, 19
  %3374 = load i64, i64* %6, align 8
  %3375 = add i64 %3374, -8
  %3376 = inttoptr i64 %3375 to i64*
  store i64 %3373, i64* %3376, align 8
  store i64 %3375, i64* %6, align 8
  store i64 %3372, i64* %3, align 8
  %call2_401e50 = tail call %struct.Memory* @sub_409da0._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3372, %struct.Memory* %call2_401e3d)
  %3377 = load i64, i64* %3, align 8
  %3378 = add i64 %3377, 2228779
  %3379 = add i64 %3377, 7
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i32*
  %3381 = load i32, i32* %3380, align 4
  %3382 = sext i32 %3381 to i64
  %3383 = mul nsw i64 %3382, 1717986919
  %3384 = lshr i64 %3383, 63
  store i64 %3384, i64* %RCX.i3620, align 8
  %3385 = trunc i64 %3384 to i32
  %3386 = ashr i64 %3383, 34
  store i64 %3386, i64* %RAX.i3622, align 8
  %3387 = trunc i64 %3386 to i32
  %3388 = add i32 %3385, %3387
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %202, align 8
  %3390 = icmp ult i32 %3388, %3387
  %3391 = icmp ult i32 %3388, %3385
  %3392 = or i1 %3390, %3391
  %3393 = zext i1 %3392 to i8
  store i8 %3393, i8* %14, align 1
  %3394 = and i32 %3388, 255
  %3395 = tail call i32 @llvm.ctpop.i32(i32 %3394)
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  %3398 = xor i8 %3397, 1
  store i8 %3398, i8* %21, align 1
  %3399 = trunc i64 %3386 to i32
  %3400 = xor i32 %3399, %3388
  %3401 = lshr i32 %3400, 4
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  store i8 %3403, i8* %27, align 1
  %3404 = icmp eq i32 %3388, 0
  %3405 = zext i1 %3404 to i8
  store i8 %3405, i8* %30, align 1
  %3406 = lshr i32 %3388, 31
  %3407 = trunc i32 %3406 to i8
  store i8 %3407, i8* %33, align 1
  %3408 = lshr i64 %3386, 31
  %3409 = trunc i64 %3408 to i32
  %3410 = and i32 %3409, 1
  %3411 = xor i32 %3406, %3410
  %3412 = add nuw nsw i32 %3411, %3406
  %3413 = icmp eq i32 %3412, 2
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %39, align 1
  %3415 = add i64 %3377, 2228843
  %3416 = add i64 %3377, 40
  store i64 %3416, i64* %3, align 8
  %3417 = inttoptr i64 %3415 to i32*
  store i32 %3388, i32* %3417, align 4
  %3418 = load i64, i64* %3, align 8
  store i64 4297895, i64* %RSI.i3626, align 8
  store i64 4297895, i64* %RDX.i3615, align 8
  %3419 = load i64, i64* %RBP.i, align 8
  %3420 = add i64 %3419, -96
  %3421 = add i64 %3418, 11
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i64*
  %3423 = load i64, i64* %3422, align 8
  store i64 %3423, i64* %RDI.i3611.pre-phi, align 8
  %3424 = add i64 %3419, -44
  %3425 = add i64 %3418, 14
  store i64 %3425, i64* %3, align 8
  %3426 = inttoptr i64 %3424 to i32*
  %3427 = load i32, i32* %3426, align 4
  %3428 = zext i32 %3427 to i64
  store i64 %3428, i64* %RSI.i3626, align 8
  %3429 = add i64 %3418, 32707
  %3430 = add i64 %3418, 19
  %3431 = load i64, i64* %6, align 8
  %3432 = add i64 %3431, -8
  %3433 = inttoptr i64 %3432 to i64*
  store i64 %3430, i64* %3433, align 8
  store i64 %3432, i64* %6, align 8
  store i64 %3429, i64* %3, align 8
  %call2_401e8b = tail call %struct.Memory* @sub_409e40._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3429, %struct.Memory* %call2_401e50)
  %3434 = load i64, i64* %3, align 8
  store i64 4297917, i64* %RSI.i3626, align 8
  store i64 4297917, i64* %RDX.i3615, align 8
  %3435 = load i64, i64* %RBP.i, align 8
  %3436 = add i64 %3435, -96
  %3437 = add i64 %3434, 11
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i64*
  %3439 = load i64, i64* %3438, align 8
  store i64 %3439, i64* %RDI.i3611.pre-phi, align 8
  %3440 = add i64 %3435, -44
  %3441 = add i64 %3434, 14
  store i64 %3441, i64* %3, align 8
  %3442 = inttoptr i64 %3440 to i32*
  %3443 = load i32, i32* %3442, align 4
  %3444 = zext i32 %3443 to i64
  store i64 %3444, i64* %RSI.i3626, align 8
  %3445 = add i64 %3434, 32848
  %3446 = add i64 %3434, 19
  %3447 = load i64, i64* %6, align 8
  %3448 = add i64 %3447, -8
  %3449 = inttoptr i64 %3448 to i64*
  store i64 %3446, i64* %3449, align 8
  store i64 %3448, i64* %6, align 8
  store i64 %3445, i64* %3, align 8
  %call2_401e9e = tail call %struct.Memory* @sub_409ee0._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3445, %struct.Memory* %call2_401e8b)
  %3450 = load i64, i64* %3, align 8
  store i64 4297949, i64* %RSI.i3626, align 8
  store i64 4297949, i64* %RDX.i3615, align 8
  %3451 = load i64, i64* %RBP.i, align 8
  %3452 = add i64 %3451, -96
  %3453 = add i64 %3450, 11
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i64*
  %3455 = load i64, i64* %3454, align 8
  store i64 %3455, i64* %RDI.i3611.pre-phi, align 8
  %3456 = add i64 %3451, -44
  %3457 = add i64 %3450, 14
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i32*
  %3459 = load i32, i32* %3458, align 4
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RSI.i3626, align 8
  %3461 = add i64 %3450, 32989
  %3462 = add i64 %3450, 19
  %3463 = load i64, i64* %6, align 8
  %3464 = add i64 %3463, -8
  %3465 = inttoptr i64 %3464 to i64*
  store i64 %3462, i64* %3465, align 8
  store i64 %3464, i64* %6, align 8
  store i64 %3461, i64* %3, align 8
  %call2_401eb1 = tail call %struct.Memory* @sub_409f80._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3461, %struct.Memory* %call2_401e9e)
  %3466 = load i64, i64* %3, align 8
  store i64 4297976, i64* %RSI.i3626, align 8
  store i64 4297976, i64* %RDX.i3615, align 8
  %3467 = load i64, i64* %RBP.i, align 8
  %3468 = add i64 %3467, -96
  %3469 = add i64 %3466, 11
  store i64 %3469, i64* %3, align 8
  %3470 = inttoptr i64 %3468 to i64*
  %3471 = load i64, i64* %3470, align 8
  store i64 %3471, i64* %RDI.i3611.pre-phi, align 8
  %3472 = add i64 %3467, -44
  %3473 = add i64 %3466, 14
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i32*
  %3475 = load i32, i32* %3474, align 4
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RSI.i3626, align 8
  %3477 = add i64 %3466, 33130
  %3478 = add i64 %3466, 19
  %3479 = load i64, i64* %6, align 8
  %3480 = add i64 %3479, -8
  %3481 = inttoptr i64 %3480 to i64*
  store i64 %3478, i64* %3481, align 8
  store i64 %3480, i64* %6, align 8
  store i64 %3477, i64* %3, align 8
  %call2_401ec4 = tail call %struct.Memory* @sub_40a020._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3477, %struct.Memory* %call2_401eb1)
  %3482 = load i64, i64* %3, align 8
  store i64 4298013, i64* %RSI.i3626, align 8
  store i64 4298013, i64* %RDX.i3615, align 8
  %3483 = load i64, i64* %RBP.i, align 8
  %3484 = add i64 %3483, -96
  %3485 = add i64 %3482, 11
  store i64 %3485, i64* %3, align 8
  %3486 = inttoptr i64 %3484 to i64*
  %3487 = load i64, i64* %3486, align 8
  store i64 %3487, i64* %RDI.i3611.pre-phi, align 8
  %3488 = add i64 %3483, -44
  %3489 = add i64 %3482, 14
  store i64 %3489, i64* %3, align 8
  %3490 = inttoptr i64 %3488 to i32*
  %3491 = load i32, i32* %3490, align 4
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RSI.i3626, align 8
  %3493 = add i64 %3482, 33271
  %3494 = add i64 %3482, 19
  %3495 = load i64, i64* %6, align 8
  %3496 = add i64 %3495, -8
  %3497 = inttoptr i64 %3496 to i64*
  store i64 %3494, i64* %3497, align 8
  store i64 %3496, i64* %6, align 8
  store i64 %3493, i64* %3, align 8
  %call2_401ed7 = tail call %struct.Memory* @sub_40a0c0._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3493, %struct.Memory* %call2_401ec4)
  %3498 = load i64, i64* %3, align 8
  store i64 4298040, i64* %RSI.i3626, align 8
  store i64 4298040, i64* %RDX.i3615, align 8
  %3499 = load i64, i64* %RBP.i, align 8
  %3500 = add i64 %3499, -96
  %3501 = add i64 %3498, 11
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i64*
  %3503 = load i64, i64* %3502, align 8
  store i64 %3503, i64* %RDI.i3611.pre-phi, align 8
  %3504 = add i64 %3499, -44
  %3505 = add i64 %3498, 14
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3504 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = zext i32 %3507 to i64
  store i64 %3508, i64* %RSI.i3626, align 8
  %3509 = add i64 %3498, 33412
  %3510 = add i64 %3498, 19
  %3511 = load i64, i64* %6, align 8
  %3512 = add i64 %3511, -8
  %3513 = inttoptr i64 %3512 to i64*
  store i64 %3510, i64* %3513, align 8
  store i64 %3512, i64* %6, align 8
  store i64 %3509, i64* %3, align 8
  %call2_401eea = tail call %struct.Memory* @sub_40a160._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3509, %struct.Memory* %call2_401ed7)
  %3514 = load i64, i64* %3, align 8
  store i64 4298078, i64* %RSI.i3626, align 8
  store i64 4298078, i64* %RDX.i3615, align 8
  %3515 = load i64, i64* %RBP.i, align 8
  %3516 = add i64 %3515, -96
  %3517 = add i64 %3514, 11
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3516 to i64*
  %3519 = load i64, i64* %3518, align 8
  store i64 %3519, i64* %RDI.i3611.pre-phi, align 8
  %3520 = add i64 %3515, -44
  %3521 = add i64 %3514, 14
  store i64 %3521, i64* %3, align 8
  %3522 = inttoptr i64 %3520 to i32*
  %3523 = load i32, i32* %3522, align 4
  %3524 = zext i32 %3523 to i64
  store i64 %3524, i64* %RSI.i3626, align 8
  %3525 = add i64 %3514, 33553
  %3526 = add i64 %3514, 19
  %3527 = load i64, i64* %6, align 8
  %3528 = add i64 %3527, -8
  %3529 = inttoptr i64 %3528 to i64*
  store i64 %3526, i64* %3529, align 8
  store i64 %3528, i64* %6, align 8
  store i64 %3525, i64* %3, align 8
  %call2_401efd = tail call %struct.Memory* @sub_40a200._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3525, %struct.Memory* %call2_401eea)
  %3530 = load i64, i64* %3, align 8
  store i64 4298115, i64* %RSI.i3626, align 8
  store i64 4298115, i64* %RDX.i3615, align 8
  %3531 = load i64, i64* %RBP.i, align 8
  %3532 = add i64 %3531, -96
  %3533 = add i64 %3530, 11
  store i64 %3533, i64* %3, align 8
  %3534 = inttoptr i64 %3532 to i64*
  %3535 = load i64, i64* %3534, align 8
  store i64 %3535, i64* %RDI.i3611.pre-phi, align 8
  %3536 = add i64 %3531, -44
  %3537 = add i64 %3530, 14
  store i64 %3537, i64* %3, align 8
  %3538 = inttoptr i64 %3536 to i32*
  %3539 = load i32, i32* %3538, align 4
  %3540 = zext i32 %3539 to i64
  store i64 %3540, i64* %RSI.i3626, align 8
  %3541 = add i64 %3530, 33694
  %3542 = add i64 %3530, 19
  %3543 = load i64, i64* %6, align 8
  %3544 = add i64 %3543, -8
  %3545 = inttoptr i64 %3544 to i64*
  store i64 %3542, i64* %3545, align 8
  store i64 %3544, i64* %6, align 8
  store i64 %3541, i64* %3, align 8
  %call2_401f10 = tail call %struct.Memory* @sub_40a2a0._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3541, %struct.Memory* %call2_401efd)
  %3546 = load i64, i64* %3, align 8
  store i64 4298140, i64* %RSI.i3626, align 8
  store i64 4298140, i64* %RDX.i3615, align 8
  %3547 = load i64, i64* %RBP.i, align 8
  %3548 = add i64 %3547, -96
  %3549 = add i64 %3546, 11
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i64*
  %3551 = load i64, i64* %3550, align 8
  store i64 %3551, i64* %RDI.i3611.pre-phi, align 8
  %3552 = add i64 %3547, -44
  %3553 = add i64 %3546, 14
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i32*
  %3555 = load i32, i32* %3554, align 4
  %3556 = zext i32 %3555 to i64
  store i64 %3556, i64* %RSI.i3626, align 8
  %3557 = add i64 %3546, 33835
  %3558 = add i64 %3546, 19
  %3559 = load i64, i64* %6, align 8
  %3560 = add i64 %3559, -8
  %3561 = inttoptr i64 %3560 to i64*
  store i64 %3558, i64* %3561, align 8
  store i64 %3560, i64* %6, align 8
  store i64 %3557, i64* %3, align 8
  %call2_401f23 = tail call %struct.Memory* @sub_40a340._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3557, %struct.Memory* %call2_401f10)
  %3562 = load i64, i64* %3, align 8
  store i64 4298175, i64* %RSI.i3626, align 8
  store i64 4298175, i64* %RDX.i3615, align 8
  %3563 = load i64, i64* %RBP.i, align 8
  %3564 = add i64 %3563, -96
  %3565 = add i64 %3562, 11
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i64*
  %3567 = load i64, i64* %3566, align 8
  store i64 %3567, i64* %RDI.i3611.pre-phi, align 8
  %3568 = add i64 %3563, -44
  %3569 = add i64 %3562, 14
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i32*
  %3571 = load i32, i32* %3570, align 4
  %3572 = zext i32 %3571 to i64
  store i64 %3572, i64* %RSI.i3626, align 8
  %3573 = add i64 %3562, 33976
  %3574 = add i64 %3562, 19
  %3575 = load i64, i64* %6, align 8
  %3576 = add i64 %3575, -8
  %3577 = inttoptr i64 %3576 to i64*
  store i64 %3574, i64* %3577, align 8
  store i64 %3576, i64* %6, align 8
  store i64 %3573, i64* %3, align 8
  %call2_401f36 = tail call %struct.Memory* @sub_40a3e0._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3573, %struct.Memory* %call2_401f23)
  %3578 = load i64, i64* %3, align 8
  store i64 4298210, i64* %RSI.i3626, align 8
  store i64 4298210, i64* %RDX.i3615, align 8
  %3579 = load i64, i64* %RBP.i, align 8
  %3580 = add i64 %3579, -96
  %3581 = add i64 %3578, 11
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i64*
  %3583 = load i64, i64* %3582, align 8
  store i64 %3583, i64* %RDI.i3611.pre-phi, align 8
  %3584 = add i64 %3579, -44
  %3585 = add i64 %3578, 14
  store i64 %3585, i64* %3, align 8
  %3586 = inttoptr i64 %3584 to i32*
  %3587 = load i32, i32* %3586, align 4
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RSI.i3626, align 8
  %3589 = add i64 %3578, 34117
  %3590 = add i64 %3578, 19
  %3591 = load i64, i64* %6, align 8
  %3592 = add i64 %3591, -8
  %3593 = inttoptr i64 %3592 to i64*
  store i64 %3590, i64* %3593, align 8
  store i64 %3592, i64* %6, align 8
  store i64 %3589, i64* %3, align 8
  %call2_401f49 = tail call %struct.Memory* @sub_40a480._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3589, %struct.Memory* %call2_401f36)
  %3594 = load i64, i64* %3, align 8
  store i64 4298243, i64* %RSI.i3626, align 8
  store i64 4298243, i64* %RDX.i3615, align 8
  %3595 = load i64, i64* %RBP.i, align 8
  %3596 = add i64 %3595, -96
  %3597 = add i64 %3594, 11
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i64*
  %3599 = load i64, i64* %3598, align 8
  store i64 %3599, i64* %RDI.i3611.pre-phi, align 8
  %3600 = add i64 %3595, -44
  %3601 = add i64 %3594, 14
  store i64 %3601, i64* %3, align 8
  %3602 = inttoptr i64 %3600 to i32*
  %3603 = load i32, i32* %3602, align 4
  %3604 = zext i32 %3603 to i64
  store i64 %3604, i64* %RSI.i3626, align 8
  %3605 = add i64 %3594, 34258
  %3606 = add i64 %3594, 19
  %3607 = load i64, i64* %6, align 8
  %3608 = add i64 %3607, -8
  %3609 = inttoptr i64 %3608 to i64*
  store i64 %3606, i64* %3609, align 8
  store i64 %3608, i64* %6, align 8
  store i64 %3605, i64* %3, align 8
  %call2_401f5c = tail call %struct.Memory* @sub_40a520._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3605, %struct.Memory* %call2_401f49)
  %3610 = load i64, i64* %3, align 8
  store i64 4298265, i64* %RSI.i3626, align 8
  store i64 4298265, i64* %RDX.i3615, align 8
  %3611 = load i64, i64* %RBP.i, align 8
  %3612 = add i64 %3611, -96
  %3613 = add i64 %3610, 11
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3612 to i64*
  %3615 = load i64, i64* %3614, align 8
  store i64 %3615, i64* %RDI.i3611.pre-phi, align 8
  %3616 = add i64 %3611, -44
  %3617 = add i64 %3610, 14
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to i32*
  %3619 = load i32, i32* %3618, align 4
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RSI.i3626, align 8
  %3621 = add i64 %3610, 34399
  %3622 = add i64 %3610, 19
  %3623 = load i64, i64* %6, align 8
  %3624 = add i64 %3623, -8
  %3625 = inttoptr i64 %3624 to i64*
  store i64 %3622, i64* %3625, align 8
  store i64 %3624, i64* %6, align 8
  store i64 %3621, i64* %3, align 8
  %call2_401f6f = tail call %struct.Memory* @sub_40a5c0._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3621, %struct.Memory* %call2_401f5c)
  %3626 = load i64, i64* %3, align 8
  store i64 4298296, i64* %RSI.i3626, align 8
  store i64 4298296, i64* %RDX.i3615, align 8
  %3627 = load i64, i64* %RBP.i, align 8
  %3628 = add i64 %3627, -96
  %3629 = add i64 %3626, 11
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3628 to i64*
  %3631 = load i64, i64* %3630, align 8
  store i64 %3631, i64* %RDI.i3611.pre-phi, align 8
  %3632 = add i64 %3627, -44
  %3633 = add i64 %3626, 14
  store i64 %3633, i64* %3, align 8
  %3634 = inttoptr i64 %3632 to i32*
  %3635 = load i32, i32* %3634, align 4
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RSI.i3626, align 8
  %3637 = add i64 %3626, 34540
  %3638 = add i64 %3626, 19
  %3639 = load i64, i64* %6, align 8
  %3640 = add i64 %3639, -8
  %3641 = inttoptr i64 %3640 to i64*
  store i64 %3638, i64* %3641, align 8
  store i64 %3640, i64* %6, align 8
  store i64 %3637, i64* %3, align 8
  %call2_401f82 = tail call %struct.Memory* @sub_40a660._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3637, %struct.Memory* %call2_401f6f)
  %3642 = load i64, i64* %3, align 8
  store i64 4298317, i64* %RSI.i3626, align 8
  store i64 4298317, i64* %RDX.i3615, align 8
  %3643 = load i64, i64* %RBP.i, align 8
  %3644 = add i64 %3643, -96
  %3645 = add i64 %3642, 11
  store i64 %3645, i64* %3, align 8
  %3646 = inttoptr i64 %3644 to i64*
  %3647 = load i64, i64* %3646, align 8
  store i64 %3647, i64* %RDI.i3611.pre-phi, align 8
  %3648 = add i64 %3643, -44
  %3649 = add i64 %3642, 14
  store i64 %3649, i64* %3, align 8
  %3650 = inttoptr i64 %3648 to i32*
  %3651 = load i32, i32* %3650, align 4
  %3652 = zext i32 %3651 to i64
  store i64 %3652, i64* %RSI.i3626, align 8
  %3653 = add i64 %3642, 34681
  %3654 = add i64 %3642, 19
  %3655 = load i64, i64* %6, align 8
  %3656 = add i64 %3655, -8
  %3657 = inttoptr i64 %3656 to i64*
  store i64 %3654, i64* %3657, align 8
  store i64 %3656, i64* %6, align 8
  store i64 %3653, i64* %3, align 8
  %call2_401f95 = tail call %struct.Memory* @sub_40a700._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3653, %struct.Memory* %call2_401f82)
  %3658 = load i64, i64* %3, align 8
  store i64 4298347, i64* %RSI.i3626, align 8
  store i64 4298347, i64* %RDX.i3615, align 8
  %3659 = load i64, i64* %RBP.i, align 8
  %3660 = add i64 %3659, -96
  %3661 = add i64 %3658, 11
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3660 to i64*
  %3663 = load i64, i64* %3662, align 8
  store i64 %3663, i64* %RDI.i3611.pre-phi, align 8
  %3664 = add i64 %3659, -44
  %3665 = add i64 %3658, 14
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = zext i32 %3667 to i64
  store i64 %3668, i64* %RSI.i3626, align 8
  %3669 = add i64 %3658, 34822
  %3670 = add i64 %3658, 19
  %3671 = load i64, i64* %6, align 8
  %3672 = add i64 %3671, -8
  %3673 = inttoptr i64 %3672 to i64*
  store i64 %3670, i64* %3673, align 8
  store i64 %3672, i64* %6, align 8
  store i64 %3669, i64* %3, align 8
  %call2_401fa8 = tail call %struct.Memory* @sub_40a7a0._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3669, %struct.Memory* %call2_401f95)
  %3674 = load i64, i64* %3, align 8
  store i64 4298369, i64* %RSI.i3626, align 8
  store i64 4298369, i64* %RDX.i3615, align 8
  %3675 = load i64, i64* %RBP.i, align 8
  %3676 = add i64 %3675, -96
  %3677 = add i64 %3674, 11
  store i64 %3677, i64* %3, align 8
  %3678 = inttoptr i64 %3676 to i64*
  %3679 = load i64, i64* %3678, align 8
  store i64 %3679, i64* %RDI.i3611.pre-phi, align 8
  %3680 = add i64 %3675, -44
  %3681 = add i64 %3674, 14
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  %3683 = load i32, i32* %3682, align 4
  %3684 = zext i32 %3683 to i64
  store i64 %3684, i64* %RSI.i3626, align 8
  %3685 = add i64 %3674, 34963
  %3686 = add i64 %3674, 19
  %3687 = load i64, i64* %6, align 8
  %3688 = add i64 %3687, -8
  %3689 = inttoptr i64 %3688 to i64*
  store i64 %3686, i64* %3689, align 8
  store i64 %3688, i64* %6, align 8
  store i64 %3685, i64* %3, align 8
  %call2_401fbb = tail call %struct.Memory* @sub_40a840._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3685, %struct.Memory* %call2_401fa8)
  %3690 = load i64, i64* %3, align 8
  %3691 = add i64 %3690, 2228424
  %3692 = add i64 %3690, 8
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3691 to i64*
  %3694 = load i64, i64* %3693, align 8
  store i64 %3694, i64* %2515, align 1
  store double 0.000000e+00, double* %2517, align 1
  %.cast = bitcast i64 %3694 to double
  %3695 = tail call double @llvm.trunc.f64(double %.cast)
  %3696 = tail call double @llvm.fabs.f64(double %3695)
  %3697 = fcmp ogt double %3696, 0x43E0000000000000
  %3698 = fptosi double %3695 to i64
  %3699 = select i1 %3697, i64 -9223372036854775808, i64 %3698
  store i64 %3699, i64* %RDX.i3615, align 8
  store i64 6590928, i64* %RAX.i3622, align 8
  store i64 6654928, i64* %RSI.i3626, align 8
  store i64 6590928, i64* %RDI.i3611.pre-phi, align 8
  %3700 = load i64, i64* %RBP.i, align 8
  %3701 = add i64 %3700, -104
  %3702 = add i64 %3690, 32
  store i64 %3702, i64* %3, align 8
  %3703 = inttoptr i64 %3701 to i64*
  store i64 6590928, i64* %3703, align 8
  %3704 = load i64, i64* %3, align 8
  %3705 = add i64 %3704, 35072
  %3706 = add i64 %3704, 5
  %3707 = load i64, i64* %6, align 8
  %3708 = add i64 %3707, -8
  %3709 = inttoptr i64 %3708 to i64*
  store i64 %3706, i64* %3709, align 8
  store i64 %3708, i64* %6, align 8
  store i64 %3705, i64* %3, align 8
  %call2_401fe0 = tail call %struct.Memory* @sub_40a8e0._Z4fillIPllEvT_S1_T0_(%struct.State* nonnull %0, i64 %3705, %struct.Memory* %call2_401fbb)
  %3710 = load i64, i64* %3, align 8
  %3711 = add i64 %3710, 2228379
  %3712 = add i64 %3710, 7
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3711 to i32*
  %3714 = load i32, i32* %3713, align 4
  %3715 = add i64 %3710, 2228443
  %3716 = add i64 %3710, 14
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i32*
  store i32 %3714, i32* %3717, align 4
  %3718 = load i64, i64* %3, align 8
  store i64 4298401, i64* %202, align 8
  store i64 4298401, i64* %RDX.i3615, align 8
  %3719 = load i64, i64* %RBP.i, align 8
  %3720 = add i64 %3719, -104
  %3721 = add i64 %3718, 13
  store i64 %3721, i64* %3, align 8
  %3722 = inttoptr i64 %3720 to i64*
  %3723 = load i64, i64* %3722, align 8
  store i64 %3723, i64* %RDI.i3611.pre-phi, align 8
  %3724 = add i64 %3719, -44
  %3725 = add i64 %3718, 16
  store i64 %3725, i64* %3, align 8
  %3726 = inttoptr i64 %3724 to i32*
  %3727 = load i32, i32* %3726, align 4
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RSI.i3626, align 8
  %3729 = add i64 %3718, 35117
  %3730 = add i64 %3718, 21
  %3731 = load i64, i64* %6, align 8
  %3732 = add i64 %3731, -8
  %3733 = inttoptr i64 %3732 to i64*
  store i64 %3730, i64* %3733, align 8
  store i64 %3732, i64* %6, align 8
  store i64 %3729, i64* %3, align 8
  %call2_402003 = tail call %struct.Memory* @sub_40a920._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3729, %struct.Memory* %call2_401fe0)
  %3734 = load i64, i64* %3, align 8
  store i64 4298419, i64* %RSI.i3626, align 8
  store i64 4298419, i64* %RDX.i3615, align 8
  %3735 = load i64, i64* %RBP.i, align 8
  %3736 = add i64 %3735, -104
  %3737 = add i64 %3734, 11
  store i64 %3737, i64* %3, align 8
  %3738 = inttoptr i64 %3736 to i64*
  %3739 = load i64, i64* %3738, align 8
  store i64 %3739, i64* %RDI.i3611.pre-phi, align 8
  %3740 = add i64 %3735, -44
  %3741 = add i64 %3734, 14
  store i64 %3741, i64* %3, align 8
  %3742 = inttoptr i64 %3740 to i32*
  %3743 = load i32, i32* %3742, align 4
  %3744 = zext i32 %3743 to i64
  store i64 %3744, i64* %RSI.i3626, align 8
  %3745 = add i64 %3734, 35256
  %3746 = add i64 %3734, 19
  %3747 = load i64, i64* %6, align 8
  %3748 = add i64 %3747, -8
  %3749 = inttoptr i64 %3748 to i64*
  store i64 %3746, i64* %3749, align 8
  store i64 %3748, i64* %6, align 8
  store i64 %3745, i64* %3, align 8
  %call2_402016 = tail call %struct.Memory* @sub_40a9c0._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3745, %struct.Memory* %call2_402003)
  %3750 = load i64, i64* %3, align 8
  store i64 4298442, i64* %RSI.i3626, align 8
  store i64 4298442, i64* %RDX.i3615, align 8
  %3751 = load i64, i64* %RBP.i, align 8
  %3752 = add i64 %3751, -104
  %3753 = add i64 %3750, 11
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i64*
  %3755 = load i64, i64* %3754, align 8
  store i64 %3755, i64* %RDI.i3611.pre-phi, align 8
  %3756 = add i64 %3751, -44
  %3757 = add i64 %3750, 14
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i32*
  %3759 = load i32, i32* %3758, align 4
  %3760 = zext i32 %3759 to i64
  store i64 %3760, i64* %RSI.i3626, align 8
  %3761 = add i64 %3750, 35397
  %3762 = add i64 %3750, 19
  %3763 = load i64, i64* %6, align 8
  %3764 = add i64 %3763, -8
  %3765 = inttoptr i64 %3764 to i64*
  store i64 %3762, i64* %3765, align 8
  store i64 %3764, i64* %6, align 8
  store i64 %3761, i64* %3, align 8
  %call2_402029 = tail call %struct.Memory* @sub_40aa60._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3761, %struct.Memory* %call2_402016)
  %3766 = load i64, i64* %3, align 8
  store i64 4298470, i64* %RSI.i3626, align 8
  store i64 4298470, i64* %RDX.i3615, align 8
  %3767 = load i64, i64* %RBP.i, align 8
  %3768 = add i64 %3767, -104
  %3769 = add i64 %3766, 11
  store i64 %3769, i64* %3, align 8
  %3770 = inttoptr i64 %3768 to i64*
  %3771 = load i64, i64* %3770, align 8
  store i64 %3771, i64* %RDI.i3611.pre-phi, align 8
  %3772 = add i64 %3767, -44
  %3773 = add i64 %3766, 14
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i32*
  %3775 = load i32, i32* %3774, align 4
  %3776 = zext i32 %3775 to i64
  store i64 %3776, i64* %RSI.i3626, align 8
  %3777 = add i64 %3766, 35538
  %3778 = add i64 %3766, 19
  %3779 = load i64, i64* %6, align 8
  %3780 = add i64 %3779, -8
  %3781 = inttoptr i64 %3780 to i64*
  store i64 %3778, i64* %3781, align 8
  store i64 %3780, i64* %6, align 8
  store i64 %3777, i64* %3, align 8
  %call2_40203c = tail call %struct.Memory* @sub_40ab00._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3777, %struct.Memory* %call2_402029)
  %3782 = load i64, i64* %3, align 8
  store i64 4298498, i64* %RSI.i3626, align 8
  store i64 4298498, i64* %RDX.i3615, align 8
  %3783 = load i64, i64* %RBP.i, align 8
  %3784 = add i64 %3783, -104
  %3785 = add i64 %3782, 11
  store i64 %3785, i64* %3, align 8
  %3786 = inttoptr i64 %3784 to i64*
  %3787 = load i64, i64* %3786, align 8
  store i64 %3787, i64* %RDI.i3611.pre-phi, align 8
  %3788 = add i64 %3783, -44
  %3789 = add i64 %3782, 14
  store i64 %3789, i64* %3, align 8
  %3790 = inttoptr i64 %3788 to i32*
  %3791 = load i32, i32* %3790, align 4
  %3792 = zext i32 %3791 to i64
  store i64 %3792, i64* %RSI.i3626, align 8
  %3793 = add i64 %3782, 35679
  %3794 = add i64 %3782, 19
  %3795 = load i64, i64* %6, align 8
  %3796 = add i64 %3795, -8
  %3797 = inttoptr i64 %3796 to i64*
  store i64 %3794, i64* %3797, align 8
  store i64 %3796, i64* %6, align 8
  store i64 %3793, i64* %3, align 8
  %call2_40204f = tail call %struct.Memory* @sub_40aba0._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3793, %struct.Memory* %call2_40203c)
  %3798 = load i64, i64* %3, align 8
  store i64 4298524, i64* %RSI.i3626, align 8
  store i64 4298524, i64* %RDX.i3615, align 8
  %3799 = load i64, i64* %RBP.i, align 8
  %3800 = add i64 %3799, -104
  %3801 = add i64 %3798, 11
  store i64 %3801, i64* %3, align 8
  %3802 = inttoptr i64 %3800 to i64*
  %3803 = load i64, i64* %3802, align 8
  store i64 %3803, i64* %RDI.i3611.pre-phi, align 8
  %3804 = add i64 %3799, -44
  %3805 = add i64 %3798, 14
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3804 to i32*
  %3807 = load i32, i32* %3806, align 4
  %3808 = zext i32 %3807 to i64
  store i64 %3808, i64* %RSI.i3626, align 8
  %3809 = add i64 %3798, 35820
  %3810 = add i64 %3798, 19
  %3811 = load i64, i64* %6, align 8
  %3812 = add i64 %3811, -8
  %3813 = inttoptr i64 %3812 to i64*
  store i64 %3810, i64* %3813, align 8
  store i64 %3812, i64* %6, align 8
  store i64 %3809, i64* %3, align 8
  %call2_402062 = tail call %struct.Memory* @sub_40ac40._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3809, %struct.Memory* %call2_40204f)
  %3814 = load i64, i64* %3, align 8
  store i64 4298547, i64* %RSI.i3626, align 8
  store i64 4298547, i64* %RDX.i3615, align 8
  %3815 = load i64, i64* %RBP.i, align 8
  %3816 = add i64 %3815, -104
  %3817 = add i64 %3814, 11
  store i64 %3817, i64* %3, align 8
  %3818 = inttoptr i64 %3816 to i64*
  %3819 = load i64, i64* %3818, align 8
  store i64 %3819, i64* %RDI.i3611.pre-phi, align 8
  %3820 = add i64 %3815, -44
  %3821 = add i64 %3814, 14
  store i64 %3821, i64* %3, align 8
  %3822 = inttoptr i64 %3820 to i32*
  %3823 = load i32, i32* %3822, align 4
  %3824 = zext i32 %3823 to i64
  store i64 %3824, i64* %RSI.i3626, align 8
  %3825 = add i64 %3814, 35961
  %3826 = add i64 %3814, 19
  %3827 = load i64, i64* %6, align 8
  %3828 = add i64 %3827, -8
  %3829 = inttoptr i64 %3828 to i64*
  store i64 %3826, i64* %3829, align 8
  store i64 %3828, i64* %6, align 8
  store i64 %3825, i64* %3, align 8
  %call2_402075 = tail call %struct.Memory* @sub_40ace0._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3825, %struct.Memory* %call2_402062)
  %3830 = load i64, i64* %3, align 8
  store i64 4298572, i64* %RSI.i3626, align 8
  store i64 4298572, i64* %RDX.i3615, align 8
  %3831 = load i64, i64* %RBP.i, align 8
  %3832 = add i64 %3831, -104
  %3833 = add i64 %3830, 11
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i64*
  %3835 = load i64, i64* %3834, align 8
  store i64 %3835, i64* %RDI.i3611.pre-phi, align 8
  %3836 = add i64 %3831, -44
  %3837 = add i64 %3830, 14
  store i64 %3837, i64* %3, align 8
  %3838 = inttoptr i64 %3836 to i32*
  %3839 = load i32, i32* %3838, align 4
  %3840 = zext i32 %3839 to i64
  store i64 %3840, i64* %RSI.i3626, align 8
  %3841 = add i64 %3830, 36102
  %3842 = add i64 %3830, 19
  %3843 = load i64, i64* %6, align 8
  %3844 = add i64 %3843, -8
  %3845 = inttoptr i64 %3844 to i64*
  store i64 %3842, i64* %3845, align 8
  store i64 %3844, i64* %6, align 8
  store i64 %3841, i64* %3, align 8
  %call2_402088 = tail call %struct.Memory* @sub_40ad80._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3841, %struct.Memory* %call2_402075)
  %3846 = load i64, i64* %3, align 8
  store i64 4298600, i64* %RSI.i3626, align 8
  store i64 4298600, i64* %RDX.i3615, align 8
  %3847 = load i64, i64* %RBP.i, align 8
  %3848 = add i64 %3847, -104
  %3849 = add i64 %3846, 11
  store i64 %3849, i64* %3, align 8
  %3850 = inttoptr i64 %3848 to i64*
  %3851 = load i64, i64* %3850, align 8
  store i64 %3851, i64* %RDI.i3611.pre-phi, align 8
  %3852 = add i64 %3847, -44
  %3853 = add i64 %3846, 14
  store i64 %3853, i64* %3, align 8
  %3854 = inttoptr i64 %3852 to i32*
  %3855 = load i32, i32* %3854, align 4
  %3856 = zext i32 %3855 to i64
  store i64 %3856, i64* %RSI.i3626, align 8
  %3857 = add i64 %3846, 36243
  %3858 = add i64 %3846, 19
  %3859 = load i64, i64* %6, align 8
  %3860 = add i64 %3859, -8
  %3861 = inttoptr i64 %3860 to i64*
  store i64 %3858, i64* %3861, align 8
  store i64 %3860, i64* %6, align 8
  store i64 %3857, i64* %3, align 8
  %call2_40209b = tail call %struct.Memory* @sub_40ae20._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3857, %struct.Memory* %call2_402088)
  %3862 = load i64, i64* %3, align 8
  store i64 4298632, i64* %RSI.i3626, align 8
  store i64 4298632, i64* %RDX.i3615, align 8
  %3863 = load i64, i64* %RBP.i, align 8
  %3864 = add i64 %3863, -104
  %3865 = add i64 %3862, 11
  store i64 %3865, i64* %3, align 8
  %3866 = inttoptr i64 %3864 to i64*
  %3867 = load i64, i64* %3866, align 8
  store i64 %3867, i64* %RDI.i3611.pre-phi, align 8
  %3868 = add i64 %3863, -44
  %3869 = add i64 %3862, 14
  store i64 %3869, i64* %3, align 8
  %3870 = inttoptr i64 %3868 to i32*
  %3871 = load i32, i32* %3870, align 4
  %3872 = zext i32 %3871 to i64
  store i64 %3872, i64* %RSI.i3626, align 8
  %3873 = add i64 %3862, 36384
  %3874 = add i64 %3862, 19
  %3875 = load i64, i64* %6, align 8
  %3876 = add i64 %3875, -8
  %3877 = inttoptr i64 %3876 to i64*
  store i64 %3874, i64* %3877, align 8
  store i64 %3876, i64* %6, align 8
  store i64 %3873, i64* %3, align 8
  %call2_4020ae = tail call %struct.Memory* @sub_40aec0._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3873, %struct.Memory* %call2_40209b)
  %3878 = load i64, i64* %3, align 8
  store i64 4298661, i64* %RSI.i3626, align 8
  store i64 4298661, i64* %RDX.i3615, align 8
  %3879 = load i64, i64* %RBP.i, align 8
  %3880 = add i64 %3879, -104
  %3881 = add i64 %3878, 11
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i64*
  %3883 = load i64, i64* %3882, align 8
  store i64 %3883, i64* %RDI.i3611.pre-phi, align 8
  %3884 = add i64 %3879, -44
  %3885 = add i64 %3878, 14
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i32*
  %3887 = load i32, i32* %3886, align 4
  %3888 = zext i32 %3887 to i64
  store i64 %3888, i64* %RSI.i3626, align 8
  %3889 = add i64 %3878, 36525
  %3890 = add i64 %3878, 19
  %3891 = load i64, i64* %6, align 8
  %3892 = add i64 %3891, -8
  %3893 = inttoptr i64 %3892 to i64*
  store i64 %3890, i64* %3893, align 8
  store i64 %3892, i64* %6, align 8
  store i64 %3889, i64* %3, align 8
  %call2_4020c1 = tail call %struct.Memory* @sub_40af60._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3889, %struct.Memory* %call2_4020ae)
  %3894 = load i64, i64* %3, align 8
  store i64 4298699, i64* %RSI.i3626, align 8
  store i64 4298699, i64* %RDX.i3615, align 8
  %3895 = load i64, i64* %RBP.i, align 8
  %3896 = add i64 %3895, -104
  %3897 = add i64 %3894, 11
  store i64 %3897, i64* %3, align 8
  %3898 = inttoptr i64 %3896 to i64*
  %3899 = load i64, i64* %3898, align 8
  store i64 %3899, i64* %RDI.i3611.pre-phi, align 8
  %3900 = add i64 %3895, -44
  %3901 = add i64 %3894, 14
  store i64 %3901, i64* %3, align 8
  %3902 = inttoptr i64 %3900 to i32*
  %3903 = load i32, i32* %3902, align 4
  %3904 = zext i32 %3903 to i64
  store i64 %3904, i64* %RSI.i3626, align 8
  %3905 = add i64 %3894, 36666
  %3906 = add i64 %3894, 19
  %3907 = load i64, i64* %6, align 8
  %3908 = add i64 %3907, -8
  %3909 = inttoptr i64 %3908 to i64*
  store i64 %3906, i64* %3909, align 8
  store i64 %3908, i64* %6, align 8
  store i64 %3905, i64* %3, align 8
  %call2_4020d4 = tail call %struct.Memory* @sub_40b000._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3905, %struct.Memory* %call2_4020c1)
  %3910 = load i64, i64* %3, align 8
  store i64 4298734, i64* %RSI.i3626, align 8
  store i64 4298734, i64* %RDX.i3615, align 8
  %3911 = load i64, i64* %RBP.i, align 8
  %3912 = add i64 %3911, -104
  %3913 = add i64 %3910, 11
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i64*
  %3915 = load i64, i64* %3914, align 8
  store i64 %3915, i64* %RDI.i3611.pre-phi, align 8
  %3916 = add i64 %3911, -44
  %3917 = add i64 %3910, 14
  store i64 %3917, i64* %3, align 8
  %3918 = inttoptr i64 %3916 to i32*
  %3919 = load i32, i32* %3918, align 4
  %3920 = zext i32 %3919 to i64
  store i64 %3920, i64* %RSI.i3626, align 8
  %3921 = add i64 %3910, 36807
  %3922 = add i64 %3910, 19
  %3923 = load i64, i64* %6, align 8
  %3924 = add i64 %3923, -8
  %3925 = inttoptr i64 %3924 to i64*
  store i64 %3922, i64* %3925, align 8
  store i64 %3924, i64* %6, align 8
  store i64 %3921, i64* %3, align 8
  %call2_4020e7 = tail call %struct.Memory* @sub_40b0a0._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3921, %struct.Memory* %call2_4020d4)
  %3926 = load i64, i64* %3, align 8
  store i64 4298757, i64* %RSI.i3626, align 8
  store i64 4298757, i64* %RDX.i3615, align 8
  %3927 = load i64, i64* %RBP.i, align 8
  %3928 = add i64 %3927, -104
  %3929 = add i64 %3926, 11
  store i64 %3929, i64* %3, align 8
  %3930 = inttoptr i64 %3928 to i64*
  %3931 = load i64, i64* %3930, align 8
  store i64 %3931, i64* %RDI.i3611.pre-phi, align 8
  %3932 = add i64 %3927, -44
  %3933 = add i64 %3926, 14
  store i64 %3933, i64* %3, align 8
  %3934 = inttoptr i64 %3932 to i32*
  %3935 = load i32, i32* %3934, align 4
  %3936 = zext i32 %3935 to i64
  store i64 %3936, i64* %RSI.i3626, align 8
  %3937 = add i64 %3926, 36948
  %3938 = add i64 %3926, 19
  %3939 = load i64, i64* %6, align 8
  %3940 = add i64 %3939, -8
  %3941 = inttoptr i64 %3940 to i64*
  store i64 %3938, i64* %3941, align 8
  store i64 %3940, i64* %6, align 8
  store i64 %3937, i64* %3, align 8
  %call2_4020fa = tail call %struct.Memory* @sub_40b140._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3937, %struct.Memory* %call2_4020e7)
  %3942 = load i64, i64* %3, align 8
  store i64 4298779, i64* %RSI.i3626, align 8
  store i64 4298779, i64* %RDX.i3615, align 8
  %3943 = load i64, i64* %RBP.i, align 8
  %3944 = add i64 %3943, -104
  %3945 = add i64 %3942, 11
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i64*
  %3947 = load i64, i64* %3946, align 8
  store i64 %3947, i64* %RDI.i3611.pre-phi, align 8
  %3948 = add i64 %3943, -44
  %3949 = add i64 %3942, 14
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3948 to i32*
  %3951 = load i32, i32* %3950, align 4
  %3952 = zext i32 %3951 to i64
  store i64 %3952, i64* %RSI.i3626, align 8
  %3953 = add i64 %3942, 37089
  %3954 = add i64 %3942, 19
  %3955 = load i64, i64* %6, align 8
  %3956 = add i64 %3955, -8
  %3957 = inttoptr i64 %3956 to i64*
  store i64 %3954, i64* %3957, align 8
  store i64 %3956, i64* %6, align 8
  store i64 %3953, i64* %3, align 8
  %call2_40210d = tail call %struct.Memory* @sub_40b1e0._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3953, %struct.Memory* %call2_4020fa)
  %3958 = load i64, i64* %3, align 8
  %3959 = add i64 %3958, 2228078
  %3960 = add i64 %3958, 7
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i32*
  %3962 = load i32, i32* %3961, align 4
  %3963 = sext i32 %3962 to i64
  %3964 = mul nsw i64 %3963, 1717986919
  %3965 = lshr i64 %3964, 63
  store i64 %3965, i64* %RCX.i3620, align 8
  %3966 = trunc i64 %3965 to i32
  %3967 = ashr i64 %3964, 34
  store i64 %3967, i64* %RAX.i3622, align 8
  %3968 = trunc i64 %3967 to i32
  %3969 = add i32 %3966, %3968
  %3970 = zext i32 %3969 to i64
  store i64 %3970, i64* %202, align 8
  %3971 = icmp ult i32 %3969, %3968
  %3972 = icmp ult i32 %3969, %3966
  %3973 = or i1 %3971, %3972
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %14, align 1
  %3975 = and i32 %3969, 255
  %3976 = tail call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  store i8 %3979, i8* %21, align 1
  %3980 = trunc i64 %3967 to i32
  %3981 = xor i32 %3980, %3969
  %3982 = lshr i32 %3981, 4
  %3983 = trunc i32 %3982 to i8
  %3984 = and i8 %3983, 1
  store i8 %3984, i8* %27, align 1
  %3985 = icmp eq i32 %3969, 0
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %30, align 1
  %3987 = lshr i32 %3969, 31
  %3988 = trunc i32 %3987 to i8
  store i8 %3988, i8* %33, align 1
  %3989 = lshr i64 %3967, 31
  %3990 = trunc i64 %3989 to i32
  %3991 = and i32 %3990, 1
  %3992 = xor i32 %3987, %3991
  %3993 = add nuw nsw i32 %3992, %3987
  %3994 = icmp eq i32 %3993, 2
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %39, align 1
  %3996 = add i64 %3958, 2228142
  %3997 = add i64 %3958, 40
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  store i32 %3969, i32* %3998, align 4
  %3999 = load i64, i64* %3, align 8
  store i64 4298802, i64* %RSI.i3626, align 8
  store i64 4298802, i64* %RDX.i3615, align 8
  %4000 = load i64, i64* %RBP.i, align 8
  %4001 = add i64 %4000, -104
  %4002 = add i64 %3999, 11
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4001 to i64*
  %4004 = load i64, i64* %4003, align 8
  store i64 %4004, i64* %RDI.i3611.pre-phi, align 8
  %4005 = add i64 %4000, -44
  %4006 = add i64 %3999, 14
  store i64 %4006, i64* %3, align 8
  %4007 = inttoptr i64 %4005 to i32*
  %4008 = load i32, i32* %4007, align 4
  %4009 = zext i32 %4008 to i64
  store i64 %4009, i64* %RSI.i3626, align 8
  %4010 = add i64 %3999, 37190
  %4011 = add i64 %3999, 19
  %4012 = load i64, i64* %6, align 8
  %4013 = add i64 %4012, -8
  %4014 = inttoptr i64 %4013 to i64*
  store i64 %4011, i64* %4014, align 8
  store i64 %4013, i64* %6, align 8
  store i64 %4010, i64* %3, align 8
  %call2_402148 = tail call %struct.Memory* @sub_40b280._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4010, %struct.Memory* %call2_40210d)
  %4015 = load i64, i64* %3, align 8
  store i64 4298824, i64* %RSI.i3626, align 8
  store i64 4298824, i64* %RDX.i3615, align 8
  %4016 = load i64, i64* %RBP.i, align 8
  %4017 = add i64 %4016, -104
  %4018 = add i64 %4015, 11
  store i64 %4018, i64* %3, align 8
  %4019 = inttoptr i64 %4017 to i64*
  %4020 = load i64, i64* %4019, align 8
  store i64 %4020, i64* %RDI.i3611.pre-phi, align 8
  %4021 = add i64 %4016, -44
  %4022 = add i64 %4015, 14
  store i64 %4022, i64* %3, align 8
  %4023 = inttoptr i64 %4021 to i32*
  %4024 = load i32, i32* %4023, align 4
  %4025 = zext i32 %4024 to i64
  store i64 %4025, i64* %RSI.i3626, align 8
  %4026 = add i64 %4015, 37331
  %4027 = add i64 %4015, 19
  %4028 = load i64, i64* %6, align 8
  %4029 = add i64 %4028, -8
  %4030 = inttoptr i64 %4029 to i64*
  store i64 %4027, i64* %4030, align 8
  store i64 %4029, i64* %6, align 8
  store i64 %4026, i64* %3, align 8
  %call2_40215b = tail call %struct.Memory* @sub_40b320._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4026, %struct.Memory* %call2_402148)
  %4031 = load i64, i64* %3, align 8
  store i64 4298856, i64* %RSI.i3626, align 8
  store i64 4298856, i64* %RDX.i3615, align 8
  %4032 = load i64, i64* %RBP.i, align 8
  %4033 = add i64 %4032, -104
  %4034 = add i64 %4031, 11
  store i64 %4034, i64* %3, align 8
  %4035 = inttoptr i64 %4033 to i64*
  %4036 = load i64, i64* %4035, align 8
  store i64 %4036, i64* %RDI.i3611.pre-phi, align 8
  %4037 = add i64 %4032, -44
  %4038 = add i64 %4031, 14
  store i64 %4038, i64* %3, align 8
  %4039 = inttoptr i64 %4037 to i32*
  %4040 = load i32, i32* %4039, align 4
  %4041 = zext i32 %4040 to i64
  store i64 %4041, i64* %RSI.i3626, align 8
  %4042 = add i64 %4031, 37472
  %4043 = add i64 %4031, 19
  %4044 = load i64, i64* %6, align 8
  %4045 = add i64 %4044, -8
  %4046 = inttoptr i64 %4045 to i64*
  store i64 %4043, i64* %4046, align 8
  store i64 %4045, i64* %6, align 8
  store i64 %4042, i64* %3, align 8
  %call2_40216e = tail call %struct.Memory* @sub_40b3c0._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4042, %struct.Memory* %call2_40215b)
  %4047 = load i64, i64* %3, align 8
  store i64 4298883, i64* %RSI.i3626, align 8
  store i64 4298883, i64* %RDX.i3615, align 8
  %4048 = load i64, i64* %RBP.i, align 8
  %4049 = add i64 %4048, -104
  %4050 = add i64 %4047, 11
  store i64 %4050, i64* %3, align 8
  %4051 = inttoptr i64 %4049 to i64*
  %4052 = load i64, i64* %4051, align 8
  store i64 %4052, i64* %RDI.i3611.pre-phi, align 8
  %4053 = add i64 %4048, -44
  %4054 = add i64 %4047, 14
  store i64 %4054, i64* %3, align 8
  %4055 = inttoptr i64 %4053 to i32*
  %4056 = load i32, i32* %4055, align 4
  %4057 = zext i32 %4056 to i64
  store i64 %4057, i64* %RSI.i3626, align 8
  %4058 = add i64 %4047, 37613
  %4059 = add i64 %4047, 19
  %4060 = load i64, i64* %6, align 8
  %4061 = add i64 %4060, -8
  %4062 = inttoptr i64 %4061 to i64*
  store i64 %4059, i64* %4062, align 8
  store i64 %4061, i64* %6, align 8
  store i64 %4058, i64* %3, align 8
  %call2_402181 = tail call %struct.Memory* @sub_40b460._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4058, %struct.Memory* %call2_40216e)
  %4063 = load i64, i64* %3, align 8
  store i64 4298920, i64* %RSI.i3626, align 8
  store i64 4298920, i64* %RDX.i3615, align 8
  %4064 = load i64, i64* %RBP.i, align 8
  %4065 = add i64 %4064, -104
  %4066 = add i64 %4063, 11
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4065 to i64*
  %4068 = load i64, i64* %4067, align 8
  store i64 %4068, i64* %RDI.i3611.pre-phi, align 8
  %4069 = add i64 %4064, -44
  %4070 = add i64 %4063, 14
  store i64 %4070, i64* %3, align 8
  %4071 = inttoptr i64 %4069 to i32*
  %4072 = load i32, i32* %4071, align 4
  %4073 = zext i32 %4072 to i64
  store i64 %4073, i64* %RSI.i3626, align 8
  %4074 = add i64 %4063, 37754
  %4075 = add i64 %4063, 19
  %4076 = load i64, i64* %6, align 8
  %4077 = add i64 %4076, -8
  %4078 = inttoptr i64 %4077 to i64*
  store i64 %4075, i64* %4078, align 8
  store i64 %4077, i64* %6, align 8
  store i64 %4074, i64* %3, align 8
  %call2_402194 = tail call %struct.Memory* @sub_40b500._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4074, %struct.Memory* %call2_402181)
  %4079 = load i64, i64* %3, align 8
  store i64 4298947, i64* %RSI.i3626, align 8
  store i64 4298947, i64* %RDX.i3615, align 8
  %4080 = load i64, i64* %RBP.i, align 8
  %4081 = add i64 %4080, -104
  %4082 = add i64 %4079, 11
  store i64 %4082, i64* %3, align 8
  %4083 = inttoptr i64 %4081 to i64*
  %4084 = load i64, i64* %4083, align 8
  store i64 %4084, i64* %RDI.i3611.pre-phi, align 8
  %4085 = add i64 %4080, -44
  %4086 = add i64 %4079, 14
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = zext i32 %4088 to i64
  store i64 %4089, i64* %RSI.i3626, align 8
  %4090 = add i64 %4079, 37895
  %4091 = add i64 %4079, 19
  %4092 = load i64, i64* %6, align 8
  %4093 = add i64 %4092, -8
  %4094 = inttoptr i64 %4093 to i64*
  store i64 %4091, i64* %4094, align 8
  store i64 %4093, i64* %6, align 8
  store i64 %4090, i64* %3, align 8
  %call2_4021a7 = tail call %struct.Memory* @sub_40b5a0._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4090, %struct.Memory* %call2_402194)
  %4095 = load i64, i64* %3, align 8
  store i64 4298985, i64* %RSI.i3626, align 8
  store i64 4298985, i64* %RDX.i3615, align 8
  %4096 = load i64, i64* %RBP.i, align 8
  %4097 = add i64 %4096, -104
  %4098 = add i64 %4095, 11
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i64*
  %4100 = load i64, i64* %4099, align 8
  store i64 %4100, i64* %RDI.i3611.pre-phi, align 8
  %4101 = add i64 %4096, -44
  %4102 = add i64 %4095, 14
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RSI.i3626, align 8
  %4106 = add i64 %4095, 38036
  %4107 = add i64 %4095, 19
  %4108 = load i64, i64* %6, align 8
  %4109 = add i64 %4108, -8
  %4110 = inttoptr i64 %4109 to i64*
  store i64 %4107, i64* %4110, align 8
  store i64 %4109, i64* %6, align 8
  store i64 %4106, i64* %3, align 8
  %call2_4021ba = tail call %struct.Memory* @sub_40b640._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4106, %struct.Memory* %call2_4021a7)
  %4111 = load i64, i64* %3, align 8
  store i64 4299022, i64* %RSI.i3626, align 8
  store i64 4299022, i64* %RDX.i3615, align 8
  %4112 = load i64, i64* %RBP.i, align 8
  %4113 = add i64 %4112, -104
  %4114 = add i64 %4111, 11
  store i64 %4114, i64* %3, align 8
  %4115 = inttoptr i64 %4113 to i64*
  %4116 = load i64, i64* %4115, align 8
  store i64 %4116, i64* %RDI.i3611.pre-phi, align 8
  %4117 = add i64 %4112, -44
  %4118 = add i64 %4111, 14
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i32*
  %4120 = load i32, i32* %4119, align 4
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RSI.i3626, align 8
  %4122 = add i64 %4111, 38177
  %4123 = add i64 %4111, 19
  %4124 = load i64, i64* %6, align 8
  %4125 = add i64 %4124, -8
  %4126 = inttoptr i64 %4125 to i64*
  store i64 %4123, i64* %4126, align 8
  store i64 %4125, i64* %6, align 8
  store i64 %4122, i64* %3, align 8
  %call2_4021cd = tail call %struct.Memory* @sub_40b6e0._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4122, %struct.Memory* %call2_4021ba)
  %4127 = load i64, i64* %3, align 8
  store i64 4299047, i64* %RSI.i3626, align 8
  store i64 4299047, i64* %RDX.i3615, align 8
  %4128 = load i64, i64* %RBP.i, align 8
  %4129 = add i64 %4128, -104
  %4130 = add i64 %4127, 11
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i64*
  %4132 = load i64, i64* %4131, align 8
  store i64 %4132, i64* %RDI.i3611.pre-phi, align 8
  %4133 = add i64 %4128, -44
  %4134 = add i64 %4127, 14
  store i64 %4134, i64* %3, align 8
  %4135 = inttoptr i64 %4133 to i32*
  %4136 = load i32, i32* %4135, align 4
  %4137 = zext i32 %4136 to i64
  store i64 %4137, i64* %RSI.i3626, align 8
  %4138 = add i64 %4127, 38318
  %4139 = add i64 %4127, 19
  %4140 = load i64, i64* %6, align 8
  %4141 = add i64 %4140, -8
  %4142 = inttoptr i64 %4141 to i64*
  store i64 %4139, i64* %4142, align 8
  store i64 %4141, i64* %6, align 8
  store i64 %4138, i64* %3, align 8
  %call2_4021e0 = tail call %struct.Memory* @sub_40b780._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4138, %struct.Memory* %call2_4021cd)
  %4143 = load i64, i64* %3, align 8
  store i64 4299082, i64* %RSI.i3626, align 8
  store i64 4299082, i64* %RDX.i3615, align 8
  %4144 = load i64, i64* %RBP.i, align 8
  %4145 = add i64 %4144, -104
  %4146 = add i64 %4143, 11
  store i64 %4146, i64* %3, align 8
  %4147 = inttoptr i64 %4145 to i64*
  %4148 = load i64, i64* %4147, align 8
  store i64 %4148, i64* %RDI.i3611.pre-phi, align 8
  %4149 = add i64 %4144, -44
  %4150 = add i64 %4143, 14
  store i64 %4150, i64* %3, align 8
  %4151 = inttoptr i64 %4149 to i32*
  %4152 = load i32, i32* %4151, align 4
  %4153 = zext i32 %4152 to i64
  store i64 %4153, i64* %RSI.i3626, align 8
  %4154 = add i64 %4143, 38459
  %4155 = add i64 %4143, 19
  %4156 = load i64, i64* %6, align 8
  %4157 = add i64 %4156, -8
  %4158 = inttoptr i64 %4157 to i64*
  store i64 %4155, i64* %4158, align 8
  store i64 %4157, i64* %6, align 8
  store i64 %4154, i64* %3, align 8
  %call2_4021f3 = tail call %struct.Memory* @sub_40b820._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4154, %struct.Memory* %call2_4021e0)
  %4159 = load i64, i64* %3, align 8
  store i64 4299117, i64* %RSI.i3626, align 8
  store i64 4299117, i64* %RDX.i3615, align 8
  %4160 = load i64, i64* %RBP.i, align 8
  %4161 = add i64 %4160, -104
  %4162 = add i64 %4159, 11
  store i64 %4162, i64* %3, align 8
  %4163 = inttoptr i64 %4161 to i64*
  %4164 = load i64, i64* %4163, align 8
  store i64 %4164, i64* %RDI.i3611.pre-phi, align 8
  %4165 = add i64 %4160, -44
  %4166 = add i64 %4159, 14
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4165 to i32*
  %4168 = load i32, i32* %4167, align 4
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %RSI.i3626, align 8
  %4170 = add i64 %4159, 38600
  %4171 = add i64 %4159, 19
  %4172 = load i64, i64* %6, align 8
  %4173 = add i64 %4172, -8
  %4174 = inttoptr i64 %4173 to i64*
  store i64 %4171, i64* %4174, align 8
  store i64 %4173, i64* %6, align 8
  store i64 %4170, i64* %3, align 8
  %call2_402206 = tail call %struct.Memory* @sub_40b8c0._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4170, %struct.Memory* %call2_4021f3)
  %4175 = load i64, i64* %3, align 8
  store i64 4299150, i64* %RSI.i3626, align 8
  store i64 4299150, i64* %RDX.i3615, align 8
  %4176 = load i64, i64* %RBP.i, align 8
  %4177 = add i64 %4176, -104
  %4178 = add i64 %4175, 11
  store i64 %4178, i64* %3, align 8
  %4179 = inttoptr i64 %4177 to i64*
  %4180 = load i64, i64* %4179, align 8
  store i64 %4180, i64* %RDI.i3611.pre-phi, align 8
  %4181 = add i64 %4176, -44
  %4182 = add i64 %4175, 14
  store i64 %4182, i64* %3, align 8
  %4183 = inttoptr i64 %4181 to i32*
  %4184 = load i32, i32* %4183, align 4
  %4185 = zext i32 %4184 to i64
  store i64 %4185, i64* %RSI.i3626, align 8
  %4186 = add i64 %4175, 38741
  %4187 = add i64 %4175, 19
  %4188 = load i64, i64* %6, align 8
  %4189 = add i64 %4188, -8
  %4190 = inttoptr i64 %4189 to i64*
  store i64 %4187, i64* %4190, align 8
  store i64 %4189, i64* %6, align 8
  store i64 %4186, i64* %3, align 8
  %call2_402219 = tail call %struct.Memory* @sub_40b960._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4186, %struct.Memory* %call2_402206)
  %4191 = load i64, i64* %3, align 8
  store i64 4299172, i64* %RSI.i3626, align 8
  store i64 4299172, i64* %RDX.i3615, align 8
  %4192 = load i64, i64* %RBP.i, align 8
  %4193 = add i64 %4192, -104
  %4194 = add i64 %4191, 11
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i64*
  %4196 = load i64, i64* %4195, align 8
  store i64 %4196, i64* %RDI.i3611.pre-phi, align 8
  %4197 = add i64 %4192, -44
  %4198 = add i64 %4191, 14
  store i64 %4198, i64* %3, align 8
  %4199 = inttoptr i64 %4197 to i32*
  %4200 = load i32, i32* %4199, align 4
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %RSI.i3626, align 8
  %4202 = add i64 %4191, 38882
  %4203 = add i64 %4191, 19
  %4204 = load i64, i64* %6, align 8
  %4205 = add i64 %4204, -8
  %4206 = inttoptr i64 %4205 to i64*
  store i64 %4203, i64* %4206, align 8
  store i64 %4205, i64* %6, align 8
  store i64 %4202, i64* %3, align 8
  %call2_40222c = tail call %struct.Memory* @sub_40ba00._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4202, %struct.Memory* %call2_402219)
  %4207 = load i64, i64* %3, align 8
  store i64 4299203, i64* %RSI.i3626, align 8
  store i64 4299203, i64* %RDX.i3615, align 8
  %4208 = load i64, i64* %RBP.i, align 8
  %4209 = add i64 %4208, -104
  %4210 = add i64 %4207, 11
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to i64*
  %4212 = load i64, i64* %4211, align 8
  store i64 %4212, i64* %RDI.i3611.pre-phi, align 8
  %4213 = add i64 %4208, -44
  %4214 = add i64 %4207, 14
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = zext i32 %4216 to i64
  store i64 %4217, i64* %RSI.i3626, align 8
  %4218 = add i64 %4207, 39023
  %4219 = add i64 %4207, 19
  %4220 = load i64, i64* %6, align 8
  %4221 = add i64 %4220, -8
  %4222 = inttoptr i64 %4221 to i64*
  store i64 %4219, i64* %4222, align 8
  store i64 %4221, i64* %6, align 8
  store i64 %4218, i64* %3, align 8
  %call2_40223f = tail call %struct.Memory* @sub_40baa0._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4218, %struct.Memory* %call2_40222c)
  %4223 = load i64, i64* %3, align 8
  store i64 4299224, i64* %RSI.i3626, align 8
  store i64 4299224, i64* %RDX.i3615, align 8
  %4224 = load i64, i64* %RBP.i, align 8
  %4225 = add i64 %4224, -104
  %4226 = add i64 %4223, 11
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i64*
  %4228 = load i64, i64* %4227, align 8
  store i64 %4228, i64* %RDI.i3611.pre-phi, align 8
  %4229 = add i64 %4224, -44
  %4230 = add i64 %4223, 14
  store i64 %4230, i64* %3, align 8
  %4231 = inttoptr i64 %4229 to i32*
  %4232 = load i32, i32* %4231, align 4
  %4233 = zext i32 %4232 to i64
  store i64 %4233, i64* %RSI.i3626, align 8
  %4234 = add i64 %4223, 39164
  %4235 = add i64 %4223, 19
  %4236 = load i64, i64* %6, align 8
  %4237 = add i64 %4236, -8
  %4238 = inttoptr i64 %4237 to i64*
  store i64 %4235, i64* %4238, align 8
  store i64 %4237, i64* %6, align 8
  store i64 %4234, i64* %3, align 8
  %call2_402252 = tail call %struct.Memory* @sub_40bb40._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4234, %struct.Memory* %call2_40223f)
  %4239 = load i64, i64* %3, align 8
  store i64 4299254, i64* %RSI.i3626, align 8
  store i64 4299254, i64* %RDX.i3615, align 8
  %4240 = load i64, i64* %RBP.i, align 8
  %4241 = add i64 %4240, -104
  %4242 = add i64 %4239, 11
  store i64 %4242, i64* %3, align 8
  %4243 = inttoptr i64 %4241 to i64*
  %4244 = load i64, i64* %4243, align 8
  store i64 %4244, i64* %RDI.i3611.pre-phi, align 8
  %4245 = add i64 %4240, -44
  %4246 = add i64 %4239, 14
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i32*
  %4248 = load i32, i32* %4247, align 4
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RSI.i3626, align 8
  %4250 = add i64 %4239, 39305
  %4251 = add i64 %4239, 19
  %4252 = load i64, i64* %6, align 8
  %4253 = add i64 %4252, -8
  %4254 = inttoptr i64 %4253 to i64*
  store i64 %4251, i64* %4254, align 8
  store i64 %4253, i64* %6, align 8
  store i64 %4250, i64* %3, align 8
  %call2_402265 = tail call %struct.Memory* @sub_40bbe0._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4250, %struct.Memory* %call2_402252)
  %4255 = load i64, i64* %3, align 8
  store i64 4299276, i64* %RSI.i3626, align 8
  store i64 4299276, i64* %RDX.i3615, align 8
  %4256 = load i64, i64* %RBP.i, align 8
  %4257 = add i64 %4256, -104
  %4258 = add i64 %4255, 11
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i64*
  %4260 = load i64, i64* %4259, align 8
  store i64 %4260, i64* %RDI.i3611.pre-phi, align 8
  %4261 = add i64 %4256, -44
  %4262 = add i64 %4255, 14
  store i64 %4262, i64* %3, align 8
  %4263 = inttoptr i64 %4261 to i32*
  %4264 = load i32, i32* %4263, align 4
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RSI.i3626, align 8
  %4266 = add i64 %4255, 39446
  %4267 = add i64 %4255, 19
  %4268 = load i64, i64* %6, align 8
  %4269 = add i64 %4268, -8
  %4270 = inttoptr i64 %4269 to i64*
  store i64 %4267, i64* %4270, align 8
  store i64 %4269, i64* %6, align 8
  store i64 %4266, i64* %3, align 8
  %call2_402278 = tail call %struct.Memory* @sub_40bc80._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4266, %struct.Memory* %call2_402265)
  %4271 = load i64, i64* %3, align 8
  %4272 = add i64 %4271, 2227723
  %4273 = add i64 %4271, 8
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i64*
  %4275 = load i64, i64* %4274, align 8
  store i64 %4275, i64* %2515, align 1
  store double 0.000000e+00, double* %2517, align 1
  %4276 = add i64 %4271, 92067
  %4277 = add i64 %4271, 16
  store i64 %4277, i64* %3, align 8
  %4278 = inttoptr i64 %4276 to i64*
  %4279 = load i64, i64* %4278, align 8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %4279, i64* %4280, align 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %4282 = bitcast i64* %4281 to double*
  store double 0.000000e+00, double* %4282, align 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4284 = bitcast %union.VectorReg* %4283 to i8*
  %4285 = bitcast [32 x %union.VectorReg]* %2508 to <2 x i32>*
  %4286 = bitcast i64 %4275 to <2 x i32>
  %4287 = bitcast i64* %2516 to <2 x i32>*
  %4288 = extractelement <2 x i32> %4286, i32 0
  %4289 = bitcast %union.VectorReg* %4283 to i32*
  store i32 %4288, i32* %4289, align 1
  %4290 = extractelement <2 x i32> %4286, i32 1
  %4291 = getelementptr inbounds i8, i8* %4284, i64 4
  %4292 = bitcast i8* %4291 to i32*
  store i32 %4290, i32* %4292, align 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %4294 = bitcast i64* %4293 to i32*
  store i32 0, i32* %4294, align 1
  %4295 = getelementptr inbounds i8, i8* %4284, i64 12
  %4296 = bitcast i8* %4295 to i32*
  store i32 0, i32* %4296, align 1
  %4297 = bitcast %union.VectorReg* %4283 to double*
  %4298 = load double, double* %4297, align 1
  %4299 = bitcast i64 %4279 to double
  %4300 = fsub double %4298, %4299
  store double %4300, double* %4297, align 1
  %4301 = tail call double @llvm.trunc.f64(double %4300)
  %4302 = tail call double @llvm.fabs.f64(double %4301)
  %4303 = fcmp ogt double %4302, 0x43E0000000000000
  %4304 = fptosi double %4301 to i64
  %4305 = select i1 %4303, i64 -9223372036854775808, i64 %4304
  %4306 = xor i64 %4305, -9223372036854775808
  store i64 %4306, i64* %RAX.i3622, align 8
  store i8 0, i8* %14, align 1
  %4307 = trunc i64 %4305 to i32
  %4308 = and i32 %4307, 255
  %4309 = tail call i32 @llvm.ctpop.i32(i32 %4308)
  %4310 = trunc i32 %4309 to i8
  %4311 = and i8 %4310, 1
  %4312 = xor i8 %4311, 1
  store i8 %4312, i8* %21, align 1
  %4313 = icmp eq i64 %4306, 0
  %4314 = zext i1 %4313 to i8
  store i8 %4314, i8* %30, align 1
  %4315 = lshr i64 %4306, 63
  %4316 = trunc i64 %4315 to i8
  store i8 %4316, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4317 = bitcast i64 %4275 to double
  %4318 = tail call double @llvm.trunc.f64(double %4317)
  %4319 = tail call double @llvm.fabs.f64(double %4318)
  %4320 = fcmp ogt double %4319, 0x43E0000000000000
  %4321 = fptosi double %4318 to i64
  %4322 = select i1 %4320, i64 -9223372036854775808, i64 %4321
  store i64 %4322, i64* %RCX.i3620, align 8
  %4323 = add i64 %4271, 50
  store i64 %4323, i64* %3, align 8
  %4324 = fcmp uno double %4299, %4317
  br i1 %4324, label %4325, label %4335

; <label>:4325:                                   ; preds = %block_.L_400f37
  %4326 = fadd double %4299, %4317
  %4327 = bitcast double %4326 to i64
  %4328 = and i64 %4327, 9221120237041090560
  %4329 = icmp eq i64 %4328, 9218868437227405312
  %4330 = and i64 %4327, 2251799813685247
  %4331 = icmp ne i64 %4330, 0
  %4332 = and i1 %4329, %4331
  br i1 %4332, label %4333, label %4341

; <label>:4333:                                   ; preds = %4325
  %4334 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4323, %struct.Memory* %call2_402278)
  %.pre3 = load i64, i64* %RCX.i3620, align 8
  %.pre4 = load i64, i64* %3, align 8
  %.pre5 = load i8, i8* %14, align 1
  %.pre6 = load i8, i8* %30, align 1
  %.pre7 = load i64, i64* %RAX.i3622, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4335:                                   ; preds = %block_.L_400f37
  %4336 = fcmp ogt double %4299, %4317
  br i1 %4336, label %4341, label %4337

; <label>:4337:                                   ; preds = %4335
  %4338 = fcmp olt double %4299, %4317
  br i1 %4338, label %4341, label %4339

; <label>:4339:                                   ; preds = %4337
  %4340 = fcmp oeq double %4299, %4317
  br i1 %4340, label %4341, label %4345

; <label>:4341:                                   ; preds = %4339, %4337, %4335, %4325
  %4342 = phi i8 [ 0, %4335 ], [ 0, %4337 ], [ 1, %4339 ], [ 1, %4325 ]
  %4343 = phi i8 [ 0, %4335 ], [ 0, %4337 ], [ 0, %4339 ], [ 1, %4325 ]
  %4344 = phi i8 [ 0, %4335 ], [ 1, %4337 ], [ 0, %4339 ], [ 1, %4325 ]
  store i8 %4342, i8* %30, align 1
  store i8 %4343, i8* %21, align 1
  store i8 %4344, i8* %14, align 1
  br label %4345

; <label>:4345:                                   ; preds = %4341, %4339
  %4346 = phi i8 [ %4342, %4341 ], [ %4314, %4339 ]
  %4347 = phi i8 [ %4344, %4341 ], [ 0, %4339 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4345, %4333
  %4348 = phi i64 [ %.pre7, %4333 ], [ %4306, %4345 ]
  %4349 = phi i8 [ %.pre6, %4333 ], [ %4346, %4345 ]
  %4350 = phi i8 [ %.pre5, %4333 ], [ %4347, %4345 ]
  %4351 = phi i64 [ %.pre4, %4333 ], [ %4323, %4345 ]
  %4352 = phi i64 [ %.pre3, %4333 ], [ %4322, %4345 ]
  %4353 = phi %struct.Memory* [ %4334, %4333 ], [ %call2_402278, %4345 ]
  %4354 = or i8 %4349, %4350
  %4355 = icmp eq i8 %4354, 0
  %4356 = select i1 %4355, i64 %4352, i64 %4348
  store i64 %4356, i64* %RAX.i3622, align 8
  %4357 = load i64, i64* %RBP.i, align 8
  %4358 = add i64 %4357, -32
  %4359 = add i64 %4351, 8
  store i64 %4359, i64* %3, align 8
  %4360 = inttoptr i64 %4358 to i64*
  %4361 = load i64, i64* %4360, align 8
  store i64 %4361, i64* %RDI.i3611.pre-phi, align 8
  %4362 = add i64 %4357, -40
  %4363 = add i64 %4351, 12
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i64*
  %4365 = load i64, i64* %4364, align 8
  store i64 %4365, i64* %RSI.i3626, align 8
  store i64 %4356, i64* %RDX.i3615, align 8
  %4366 = add i64 %4351, 39537
  %4367 = add i64 %4351, 20
  %4368 = load i64, i64* %6, align 8
  %4369 = add i64 %4368, -8
  %4370 = inttoptr i64 %4369 to i64*
  store i64 %4367, i64* %4370, align 8
  store i64 %4369, i64* %6, align 8
  store i64 %4366, i64* %3, align 8
  %call2_4022be = tail call %struct.Memory* @sub_40bd20._Z4fillIPmmEvT_S1_T0_(%struct.State* nonnull %0, i64 %4366, %struct.Memory* %4353)
  %4371 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298400, i64* %RDX.i3615, align 8
  %4372 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4373 = zext i32 %4372 to i64
  store i64 %4373, i64* %202, align 8
  store i32 %4372, i32* inttoptr (i64 6430912 to i32*), align 64
  %4374 = add i64 %4371, 39581
  %4375 = add i64 %4371, 46
  %4376 = load i64, i64* %6, align 8
  %4377 = add i64 %4376, -8
  %4378 = inttoptr i64 %4377 to i64*
  store i64 %4375, i64* %4378, align 8
  store i64 %4377, i64* %6, align 8
  store i64 %4374, i64* %3, align 8
  %call2_4022ec = tail call %struct.Memory* @sub_40bd60._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4374, %struct.Memory* %call2_4022be)
  %4379 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298418, i64* %RDX.i3615, align 8
  %4380 = add i64 %4379, 39695
  %4381 = add i64 %4379, 30
  %4382 = load i64, i64* %6, align 8
  %4383 = add i64 %4382, -8
  %4384 = inttoptr i64 %4383 to i64*
  store i64 %4381, i64* %4384, align 8
  store i64 %4383, i64* %6, align 8
  store i64 %4380, i64* %3, align 8
  %call2_40230a = tail call %struct.Memory* @sub_40be00._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4380, %struct.Memory* %call2_4022ec)
  %4385 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298441, i64* %RDX.i3615, align 8
  %4386 = add i64 %4385, 39825
  %4387 = add i64 %4385, 30
  %4388 = load i64, i64* %6, align 8
  %4389 = add i64 %4388, -8
  %4390 = inttoptr i64 %4389 to i64*
  store i64 %4387, i64* %4390, align 8
  store i64 %4389, i64* %6, align 8
  store i64 %4386, i64* %3, align 8
  %call2_402328 = tail call %struct.Memory* @sub_40bea0._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4386, %struct.Memory* %call2_40230a)
  %4391 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298469, i64* %RDX.i3615, align 8
  %4392 = add i64 %4391, 39955
  %4393 = add i64 %4391, 30
  %4394 = load i64, i64* %6, align 8
  %4395 = add i64 %4394, -8
  %4396 = inttoptr i64 %4395 to i64*
  store i64 %4393, i64* %4396, align 8
  store i64 %4395, i64* %6, align 8
  store i64 %4392, i64* %3, align 8
  %call2_402346 = tail call %struct.Memory* @sub_40bf40._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4392, %struct.Memory* %call2_402328)
  %4397 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298497, i64* %RDX.i3615, align 8
  %4398 = add i64 %4397, 40085
  %4399 = add i64 %4397, 30
  %4400 = load i64, i64* %6, align 8
  %4401 = add i64 %4400, -8
  %4402 = inttoptr i64 %4401 to i64*
  store i64 %4399, i64* %4402, align 8
  store i64 %4401, i64* %6, align 8
  store i64 %4398, i64* %3, align 8
  %call2_402364 = tail call %struct.Memory* @sub_40bfe0._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4398, %struct.Memory* %call2_402346)
  %4403 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298523, i64* %RDX.i3615, align 8
  %4404 = add i64 %4403, 40215
  %4405 = add i64 %4403, 30
  %4406 = load i64, i64* %6, align 8
  %4407 = add i64 %4406, -8
  %4408 = inttoptr i64 %4407 to i64*
  store i64 %4405, i64* %4408, align 8
  store i64 %4407, i64* %6, align 8
  store i64 %4404, i64* %3, align 8
  %call2_402382 = tail call %struct.Memory* @sub_40c080._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4404, %struct.Memory* %call2_402364)
  %4409 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298546, i64* %RDX.i3615, align 8
  %4410 = add i64 %4409, 40345
  %4411 = add i64 %4409, 30
  %4412 = load i64, i64* %6, align 8
  %4413 = add i64 %4412, -8
  %4414 = inttoptr i64 %4413 to i64*
  store i64 %4411, i64* %4414, align 8
  store i64 %4413, i64* %6, align 8
  store i64 %4410, i64* %3, align 8
  %call2_4023a0 = tail call %struct.Memory* @sub_40c120._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4410, %struct.Memory* %call2_402382)
  %4415 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298571, i64* %RDX.i3615, align 8
  %4416 = add i64 %4415, 40475
  %4417 = add i64 %4415, 30
  %4418 = load i64, i64* %6, align 8
  %4419 = add i64 %4418, -8
  %4420 = inttoptr i64 %4419 to i64*
  store i64 %4417, i64* %4420, align 8
  store i64 %4419, i64* %6, align 8
  store i64 %4416, i64* %3, align 8
  %call2_4023be = tail call %struct.Memory* @sub_40c1c0._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4416, %struct.Memory* %call2_4023a0)
  %4421 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298599, i64* %RDX.i3615, align 8
  %4422 = add i64 %4421, 40605
  %4423 = add i64 %4421, 30
  %4424 = load i64, i64* %6, align 8
  %4425 = add i64 %4424, -8
  %4426 = inttoptr i64 %4425 to i64*
  store i64 %4423, i64* %4426, align 8
  store i64 %4425, i64* %6, align 8
  store i64 %4422, i64* %3, align 8
  %call2_4023dc = tail call %struct.Memory* @sub_40c260._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4422, %struct.Memory* %call2_4023be)
  %4427 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298631, i64* %RDX.i3615, align 8
  %4428 = add i64 %4427, 40735
  %4429 = add i64 %4427, 30
  %4430 = load i64, i64* %6, align 8
  %4431 = add i64 %4430, -8
  %4432 = inttoptr i64 %4431 to i64*
  store i64 %4429, i64* %4432, align 8
  store i64 %4431, i64* %6, align 8
  store i64 %4428, i64* %3, align 8
  %call2_4023fa = tail call %struct.Memory* @sub_40c300._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4428, %struct.Memory* %call2_4023dc)
  %4433 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298660, i64* %RDX.i3615, align 8
  %4434 = add i64 %4433, 40865
  %4435 = add i64 %4433, 30
  %4436 = load i64, i64* %6, align 8
  %4437 = add i64 %4436, -8
  %4438 = inttoptr i64 %4437 to i64*
  store i64 %4435, i64* %4438, align 8
  store i64 %4437, i64* %6, align 8
  store i64 %4434, i64* %3, align 8
  %call2_402418 = tail call %struct.Memory* @sub_40c3a0._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4434, %struct.Memory* %call2_4023fa)
  %4439 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298698, i64* %RDX.i3615, align 8
  %4440 = add i64 %4439, 40995
  %4441 = add i64 %4439, 30
  %4442 = load i64, i64* %6, align 8
  %4443 = add i64 %4442, -8
  %4444 = inttoptr i64 %4443 to i64*
  store i64 %4441, i64* %4444, align 8
  store i64 %4443, i64* %6, align 8
  store i64 %4440, i64* %3, align 8
  %call2_402436 = tail call %struct.Memory* @sub_40c440._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4440, %struct.Memory* %call2_402418)
  %4445 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298733, i64* %RDX.i3615, align 8
  %4446 = add i64 %4445, 41125
  %4447 = add i64 %4445, 30
  %4448 = load i64, i64* %6, align 8
  %4449 = add i64 %4448, -8
  %4450 = inttoptr i64 %4449 to i64*
  store i64 %4447, i64* %4450, align 8
  store i64 %4449, i64* %6, align 8
  store i64 %4446, i64* %3, align 8
  %call2_402454 = tail call %struct.Memory* @sub_40c4e0._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4446, %struct.Memory* %call2_402436)
  %4451 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298756, i64* %RDX.i3615, align 8
  %4452 = add i64 %4451, 41255
  %4453 = add i64 %4451, 30
  %4454 = load i64, i64* %6, align 8
  %4455 = add i64 %4454, -8
  %4456 = inttoptr i64 %4455 to i64*
  store i64 %4453, i64* %4456, align 8
  store i64 %4455, i64* %6, align 8
  store i64 %4452, i64* %3, align 8
  %call2_402472 = tail call %struct.Memory* @sub_40c580._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4452, %struct.Memory* %call2_402454)
  %4457 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298778, i64* %RDX.i3615, align 8
  %4458 = add i64 %4457, 41385
  %4459 = add i64 %4457, 30
  %4460 = load i64, i64* %6, align 8
  %4461 = add i64 %4460, -8
  %4462 = inttoptr i64 %4461 to i64*
  store i64 %4459, i64* %4462, align 8
  store i64 %4461, i64* %6, align 8
  store i64 %4458, i64* %3, align 8
  %call2_402490 = tail call %struct.Memory* @sub_40c620._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4458, %struct.Memory* %call2_402472)
  %4463 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 10, i64* %202, align 8
  %4464 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4465 = zext i32 %4464 to i64
  store i64 %4465, i64* %RAX.i3622, align 8
  %4466 = load i64, i64* %RBP.i, align 8
  %4467 = add i64 %4466, -112
  %4468 = add i64 %4463, 42
  store i64 %4468, i64* %3, align 8
  %4469 = inttoptr i64 %4467 to i64*
  store i64 4298801, i64* %4469, align 8
  %4470 = load i64, i64* %3, align 8
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4472 = load i32, i32* %EAX.i3390, align 8
  %4473 = sext i32 %4472 to i64
  %4474 = lshr i64 %4473, 32
  store i64 %4474, i64* %4471, align 8
  %4475 = load i32, i32* %R9D.i3585, align 4
  %4476 = add i64 %4470, 4
  store i64 %4476, i64* %3, align 8
  %4477 = zext i32 %4472 to i64
  %4478 = sext i32 %4475 to i64
  %4479 = shl nuw i64 %4474, 32
  %4480 = or i64 %4479, %4477
  %4481 = sdiv i64 %4480, %4478
  %4482 = shl i64 %4481, 32
  %4483 = ashr exact i64 %4482, 32
  %4484 = icmp eq i64 %4481, %4483
  br i1 %4484, label %4487, label %4485

; <label>:4485:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %4486 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4476, %struct.Memory* %call2_402490)
  %.pre8 = load i32, i32* %EAX.i3390, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit447

; <label>:4487:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %4488 = srem i64 %4480, %4478
  %4489 = and i64 %4481, 4294967295
  store i64 %4489, i64* %RAX.i3622, align 8
  %4490 = and i64 %4488, 4294967295
  store i64 %4490, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4491 = trunc i64 %4481 to i32
  br label %routine_idivl__r9d.exit447

routine_idivl__r9d.exit447:                       ; preds = %4487, %4485
  %4492 = phi i64 [ %.pre9, %4485 ], [ %4476, %4487 ]
  %4493 = phi i32 [ %.pre8, %4485 ], [ %4491, %4487 ]
  %4494 = phi %struct.Memory* [ %4486, %4485 ], [ %call2_402490, %4487 ]
  store i32 %4493, i32* inttoptr (i64 6430912 to i32*), align 64
  %4495 = load i64, i64* %RBP.i, align 8
  %4496 = add i64 %4495, -112
  %4497 = add i64 %4492, 11
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i64*
  %4499 = load i64, i64* %4498, align 8
  store i64 %4499, i64* %RCX.i3620, align 8
  store i64 %4499, i64* %RDX.i3615, align 8
  %4500 = add i64 %4492, 41469
  %4501 = add i64 %4492, 19
  %4502 = load i64, i64* %6, align 8
  %4503 = add i64 %4502, -8
  %4504 = inttoptr i64 %4503 to i64*
  store i64 %4501, i64* %4504, align 8
  store i64 %4503, i64* %6, align 8
  store i64 %4500, i64* %3, align 8
  %call2_4024d1 = tail call %struct.Memory* @sub_40c6c0._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4500, %struct.Memory* %4494)
  %4505 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298823, i64* %RDX.i3615, align 8
  %4506 = add i64 %4505, 41610
  %4507 = add i64 %4505, 30
  %4508 = load i64, i64* %6, align 8
  %4509 = add i64 %4508, -8
  %4510 = inttoptr i64 %4509 to i64*
  store i64 %4507, i64* %4510, align 8
  store i64 %4509, i64* %6, align 8
  store i64 %4506, i64* %3, align 8
  %call2_4024ef = tail call %struct.Memory* @sub_40c760._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4506, %struct.Memory* %call2_4024d1)
  %4511 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298855, i64* %RDX.i3615, align 8
  %4512 = add i64 %4511, 41740
  %4513 = add i64 %4511, 30
  %4514 = load i64, i64* %6, align 8
  %4515 = add i64 %4514, -8
  %4516 = inttoptr i64 %4515 to i64*
  store i64 %4513, i64* %4516, align 8
  store i64 %4515, i64* %6, align 8
  store i64 %4512, i64* %3, align 8
  %call2_40250d = tail call %struct.Memory* @sub_40c800._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4512, %struct.Memory* %call2_4024ef)
  %4517 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298882, i64* %RDX.i3615, align 8
  %4518 = add i64 %4517, 41870
  %4519 = add i64 %4517, 30
  %4520 = load i64, i64* %6, align 8
  %4521 = add i64 %4520, -8
  %4522 = inttoptr i64 %4521 to i64*
  store i64 %4519, i64* %4522, align 8
  store i64 %4521, i64* %6, align 8
  store i64 %4518, i64* %3, align 8
  %call2_40252b = tail call %struct.Memory* @sub_40c8a0._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4518, %struct.Memory* %call2_40250d)
  %4523 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298919, i64* %RDX.i3615, align 8
  %4524 = add i64 %4523, 42000
  %4525 = add i64 %4523, 30
  %4526 = load i64, i64* %6, align 8
  %4527 = add i64 %4526, -8
  %4528 = inttoptr i64 %4527 to i64*
  store i64 %4525, i64* %4528, align 8
  store i64 %4527, i64* %6, align 8
  store i64 %4524, i64* %3, align 8
  %call2_402549 = tail call %struct.Memory* @sub_40c940._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4524, %struct.Memory* %call2_40252b)
  %4529 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298946, i64* %RDX.i3615, align 8
  %4530 = add i64 %4529, 42130
  %4531 = add i64 %4529, 30
  %4532 = load i64, i64* %6, align 8
  %4533 = add i64 %4532, -8
  %4534 = inttoptr i64 %4533 to i64*
  store i64 %4531, i64* %4534, align 8
  store i64 %4533, i64* %6, align 8
  store i64 %4530, i64* %3, align 8
  %call2_402567 = tail call %struct.Memory* @sub_40c9e0._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4530, %struct.Memory* %call2_402549)
  %4535 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4298984, i64* %RDX.i3615, align 8
  %4536 = add i64 %4535, 42260
  %4537 = add i64 %4535, 30
  %4538 = load i64, i64* %6, align 8
  %4539 = add i64 %4538, -8
  %4540 = inttoptr i64 %4539 to i64*
  store i64 %4537, i64* %4540, align 8
  store i64 %4539, i64* %6, align 8
  store i64 %4536, i64* %3, align 8
  %call2_402585 = tail call %struct.Memory* @sub_40ca80._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4536, %struct.Memory* %call2_402567)
  %4541 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299021, i64* %RDX.i3615, align 8
  %4542 = add i64 %4541, 42390
  %4543 = add i64 %4541, 30
  %4544 = load i64, i64* %6, align 8
  %4545 = add i64 %4544, -8
  %4546 = inttoptr i64 %4545 to i64*
  store i64 %4543, i64* %4546, align 8
  store i64 %4545, i64* %6, align 8
  store i64 %4542, i64* %3, align 8
  %call2_4025a3 = tail call %struct.Memory* @sub_40cb20._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4542, %struct.Memory* %call2_402585)
  %4547 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299046, i64* %RDX.i3615, align 8
  %4548 = add i64 %4547, 42520
  %4549 = add i64 %4547, 30
  %4550 = load i64, i64* %6, align 8
  %4551 = add i64 %4550, -8
  %4552 = inttoptr i64 %4551 to i64*
  store i64 %4549, i64* %4552, align 8
  store i64 %4551, i64* %6, align 8
  store i64 %4548, i64* %3, align 8
  %call2_4025c1 = tail call %struct.Memory* @sub_40cbc0._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4548, %struct.Memory* %call2_4025a3)
  %4553 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299081, i64* %RDX.i3615, align 8
  %4554 = add i64 %4553, 42650
  %4555 = add i64 %4553, 30
  %4556 = load i64, i64* %6, align 8
  %4557 = add i64 %4556, -8
  %4558 = inttoptr i64 %4557 to i64*
  store i64 %4555, i64* %4558, align 8
  store i64 %4557, i64* %6, align 8
  store i64 %4554, i64* %3, align 8
  %call2_4025df = tail call %struct.Memory* @sub_40cc60._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4554, %struct.Memory* %call2_4025c1)
  %4559 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299116, i64* %RDX.i3615, align 8
  %4560 = add i64 %4559, 42780
  %4561 = add i64 %4559, 30
  %4562 = load i64, i64* %6, align 8
  %4563 = add i64 %4562, -8
  %4564 = inttoptr i64 %4563 to i64*
  store i64 %4561, i64* %4564, align 8
  store i64 %4563, i64* %6, align 8
  store i64 %4560, i64* %3, align 8
  %call2_4025fd = tail call %struct.Memory* @sub_40cd00._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4560, %struct.Memory* %call2_4025df)
  %4565 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299149, i64* %RDX.i3615, align 8
  %4566 = add i64 %4565, 42910
  %4567 = add i64 %4565, 30
  %4568 = load i64, i64* %6, align 8
  %4569 = add i64 %4568, -8
  %4570 = inttoptr i64 %4569 to i64*
  store i64 %4567, i64* %4570, align 8
  store i64 %4569, i64* %6, align 8
  store i64 %4566, i64* %3, align 8
  %call2_40261b = tail call %struct.Memory* @sub_40cda0._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4566, %struct.Memory* %call2_4025fd)
  %4571 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299171, i64* %RDX.i3615, align 8
  %4572 = add i64 %4571, 43040
  %4573 = add i64 %4571, 30
  %4574 = load i64, i64* %6, align 8
  %4575 = add i64 %4574, -8
  %4576 = inttoptr i64 %4575 to i64*
  store i64 %4573, i64* %4576, align 8
  store i64 %4575, i64* %6, align 8
  store i64 %4572, i64* %3, align 8
  %call2_402639 = tail call %struct.Memory* @sub_40ce40._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4572, %struct.Memory* %call2_40261b)
  %4577 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299202, i64* %RDX.i3615, align 8
  %4578 = add i64 %4577, 43170
  %4579 = add i64 %4577, 30
  %4580 = load i64, i64* %6, align 8
  %4581 = add i64 %4580, -8
  %4582 = inttoptr i64 %4581 to i64*
  store i64 %4579, i64* %4582, align 8
  store i64 %4581, i64* %6, align 8
  store i64 %4578, i64* %3, align 8
  %call2_402657 = tail call %struct.Memory* @sub_40cee0._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4578, %struct.Memory* %call2_402639)
  %4583 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299223, i64* %RDX.i3615, align 8
  %4584 = add i64 %4583, 43300
  %4585 = add i64 %4583, 30
  %4586 = load i64, i64* %6, align 8
  %4587 = add i64 %4586, -8
  %4588 = inttoptr i64 %4587 to i64*
  store i64 %4585, i64* %4588, align 8
  store i64 %4587, i64* %6, align 8
  store i64 %4584, i64* %3, align 8
  %call2_402675 = tail call %struct.Memory* @sub_40cf80._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4584, %struct.Memory* %call2_402657)
  %4589 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299253, i64* %RDX.i3615, align 8
  %4590 = add i64 %4589, 43430
  %4591 = add i64 %4589, 30
  %4592 = load i64, i64* %6, align 8
  %4593 = add i64 %4592, -8
  %4594 = inttoptr i64 %4593 to i64*
  store i64 %4591, i64* %4594, align 8
  store i64 %4593, i64* %6, align 8
  store i64 %4590, i64* %3, align 8
  %call2_402693 = tail call %struct.Memory* @sub_40d020._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4590, %struct.Memory* %call2_402675)
  %4595 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299275, i64* %RDX.i3615, align 8
  %4596 = add i64 %4595, 43560
  %4597 = add i64 %4595, 30
  %4598 = load i64, i64* %6, align 8
  %4599 = add i64 %4598, -8
  %4600 = inttoptr i64 %4599 to i64*
  store i64 %4597, i64* %4600, align 8
  store i64 %4599, i64* %6, align 8
  store i64 %4596, i64* %3, align 8
  %call2_4026b1 = tail call %struct.Memory* @sub_40d0c0._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4596, %struct.Memory* %call2_402693)
  %4601 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RCX.i3620, align 8
  store i64 6526928, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4602 = load <2 x i32>, <2 x i32>* %4285, align 1
  %4603 = load <2 x i32>, <2 x i32>* %4287, align 1
  %4604 = load double, double* inttoptr (i64 6430856 to double*), align 8
  %4605 = fptrunc double %4604 to float
  %4606 = bitcast [32 x %union.VectorReg]* %2508 to float*
  store float %4605, float* %4606, align 1
  %4607 = extractelement <2 x i32> %4602, i32 1
  %4608 = getelementptr inbounds i8, i8* %2509, i64 4
  %4609 = bitcast i8* %4608 to i32*
  store i32 %4607, i32* %4609, align 1
  %4610 = extractelement <2 x i32> %4603, i32 0
  %4611 = bitcast i64* %2516 to i32*
  store i32 %4610, i32* %4611, align 1
  %4612 = extractelement <2 x i32> %4603, i32 1
  %4613 = getelementptr inbounds i8, i8* %2509, i64 12
  %4614 = bitcast i8* %4613 to i32*
  store i32 %4612, i32* %4614, align 1
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 6526928, i64* %RSI.i3626, align 8
  %4615 = add i64 %4601, 43690
  %4616 = add i64 %4601, 40
  %4617 = load i64, i64* %6, align 8
  %4618 = add i64 %4617, -8
  %4619 = inttoptr i64 %4618 to i64*
  store i64 %4616, i64* %4619, align 8
  store i64 %4618, i64* %6, align 8
  store i64 %4615, i64* %3, align 8
  %call2_4026d9 = tail call %struct.Memory* @sub_40d160._Z4fillIPffEvT_S1_T0_(%struct.State* nonnull %0, i64 %4615, %struct.Memory* %call2_4026b1)
  %4620 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299306, i64* %RDX.i3615, align 8
  %4621 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4622 = zext i32 %4621 to i64
  store i64 %4622, i64* %RAX.i3622, align 8
  store i32 %4621, i32* inttoptr (i64 6430912 to i32*), align 64
  %4623 = add i64 %4620, 43714
  %4624 = add i64 %4620, 44
  %4625 = load i64, i64* %6, align 8
  %4626 = add i64 %4625, -8
  %4627 = inttoptr i64 %4626 to i64*
  store i64 %4624, i64* %4627, align 8
  store i64 %4626, i64* %6, align 8
  store i64 %4623, i64* %3, align 8
  %call2_402705 = tail call %struct.Memory* @sub_40d1a0._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4623, %struct.Memory* %call2_4026d9)
  %4628 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299321, i64* %RDX.i3615, align 8
  %4629 = add i64 %4628, 43830
  %4630 = add i64 %4628, 30
  %4631 = load i64, i64* %6, align 8
  %4632 = add i64 %4631, -8
  %4633 = inttoptr i64 %4632 to i64*
  store i64 %4630, i64* %4633, align 8
  store i64 %4632, i64* %6, align 8
  store i64 %4629, i64* %3, align 8
  %call2_402723 = tail call %struct.Memory* @sub_40d240._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4629, %struct.Memory* %call2_402705)
  %4634 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299341, i64* %RDX.i3615, align 8
  %4635 = add i64 %4634, 43960
  %4636 = add i64 %4634, 30
  %4637 = load i64, i64* %6, align 8
  %4638 = add i64 %4637, -8
  %4639 = inttoptr i64 %4638 to i64*
  store i64 %4636, i64* %4639, align 8
  store i64 %4638, i64* %6, align 8
  store i64 %4635, i64* %3, align 8
  %call2_402741 = tail call %struct.Memory* @sub_40d2e0._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4635, %struct.Memory* %call2_402723)
  %4640 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299366, i64* %RDX.i3615, align 8
  %4641 = add i64 %4640, 44090
  %4642 = add i64 %4640, 30
  %4643 = load i64, i64* %6, align 8
  %4644 = add i64 %4643, -8
  %4645 = inttoptr i64 %4644 to i64*
  store i64 %4642, i64* %4645, align 8
  store i64 %4644, i64* %6, align 8
  store i64 %4641, i64* %3, align 8
  %call2_40275f = tail call %struct.Memory* @sub_40d380._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4641, %struct.Memory* %call2_402741)
  %4646 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299391, i64* %RDX.i3615, align 8
  %4647 = add i64 %4646, 44220
  %4648 = add i64 %4646, 30
  %4649 = load i64, i64* %6, align 8
  %4650 = add i64 %4649, -8
  %4651 = inttoptr i64 %4650 to i64*
  store i64 %4648, i64* %4651, align 8
  store i64 %4650, i64* %6, align 8
  store i64 %4647, i64* %3, align 8
  %call2_40277d = tail call %struct.Memory* @sub_40d420._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4647, %struct.Memory* %call2_40275f)
  %4652 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299414, i64* %RDX.i3615, align 8
  %4653 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4654 = zext i32 %4653 to i64
  store i64 %4654, i64* %202, align 8
  %4655 = load i64, i64* %RBP.i, align 8
  %4656 = add i64 %4655, -116
  %4657 = add i64 %4652, 41
  store i64 %4657, i64* %3, align 8
  %4658 = inttoptr i64 %4656 to i32*
  store i32 10, i32* %4658, align 4
  %4659 = load i32, i32* %R9D.i3585, align 4
  %4660 = zext i32 %4659 to i64
  %4661 = load i64, i64* %3, align 8
  store i64 %4660, i64* %RAX.i3622, align 8
  %4662 = load i64, i64* %RBP.i, align 8
  %4663 = add i64 %4662, -128
  %4664 = load i64, i64* %RDX.i3615, align 8
  %4665 = add i64 %4661, 7
  store i64 %4665, i64* %3, align 8
  %4666 = inttoptr i64 %4663 to i64*
  store i64 %4664, i64* %4666, align 8
  %4667 = load i64, i64* %3, align 8
  %4668 = load i32, i32* %EAX.i3390, align 8
  %4669 = sext i32 %4668 to i64
  %4670 = lshr i64 %4669, 32
  store i64 %4670, i64* %4471, align 8
  %4671 = load i64, i64* %RBP.i, align 8
  %4672 = add i64 %4671, -116
  %4673 = add i64 %4667, 5
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i32*
  %4675 = load i32, i32* %4674, align 4
  %4676 = zext i32 %4675 to i64
  store i64 %4676, i64* %202, align 8
  %4677 = add i64 %4667, 8
  store i64 %4677, i64* %3, align 8
  %4678 = zext i32 %4668 to i64
  %4679 = sext i32 %4675 to i64
  %4680 = shl nuw i64 %4670, 32
  %4681 = or i64 %4680, %4678
  %4682 = sdiv i64 %4681, %4679
  %4683 = shl i64 %4682, 32
  %4684 = ashr exact i64 %4683, 32
  %4685 = icmp eq i64 %4682, %4684
  br i1 %4685, label %4688, label %4686

; <label>:4686:                                   ; preds = %routine_idivl__r9d.exit447
  %4687 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4677, %struct.Memory* %call2_40277d)
  %.pre10 = load i32, i32* %EAX.i3390, align 4
  %.pre11 = load i64, i64* %3, align 8
  %.pre12 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r9d.exit243

; <label>:4688:                                   ; preds = %routine_idivl__r9d.exit447
  %4689 = srem i64 %4681, %4679
  %4690 = and i64 %4682, 4294967295
  store i64 %4690, i64* %RAX.i3622, align 8
  %4691 = and i64 %4689, 4294967295
  store i64 %4691, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4692 = trunc i64 %4682 to i32
  br label %routine_idivl__r9d.exit243

routine_idivl__r9d.exit243:                       ; preds = %4688, %4686
  %4693 = phi i64 [ %.pre12, %4686 ], [ %4671, %4688 ]
  %4694 = phi i64 [ %.pre11, %4686 ], [ %4677, %4688 ]
  %4695 = phi i32 [ %.pre10, %4686 ], [ %4692, %4688 ]
  %4696 = phi %struct.Memory* [ %4687, %4686 ], [ %call2_40277d, %4688 ]
  store i32 %4695, i32* inttoptr (i64 6430912 to i32*), align 64
  %4697 = add i64 %4693, -128
  %4698 = add i64 %4694, 11
  store i64 %4698, i64* %3, align 8
  %4699 = inttoptr i64 %4697 to i64*
  %4700 = load i64, i64* %4699, align 8
  store i64 %4700, i64* %RCX.i3620, align 8
  store i64 %4700, i64* %RDX.i3615, align 8
  %4701 = add i64 %4694, 44294
  %4702 = add i64 %4694, 19
  %4703 = load i64, i64* %6, align 8
  %4704 = add i64 %4703, -8
  %4705 = inttoptr i64 %4704 to i64*
  store i64 %4702, i64* %4705, align 8
  store i64 %4704, i64* %6, align 8
  store i64 %4701, i64* %3, align 8
  %call2_4027c8 = tail call %struct.Memory* @sub_40d4c0._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4701, %struct.Memory* %4696)
  %4706 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299433, i64* %RDX.i3615, align 8
  %4707 = add i64 %4706, 44435
  %4708 = add i64 %4706, 30
  %4709 = load i64, i64* %6, align 8
  %4710 = add i64 %4709, -8
  %4711 = inttoptr i64 %4710 to i64*
  store i64 %4708, i64* %4711, align 8
  store i64 %4710, i64* %6, align 8
  store i64 %4707, i64* %3, align 8
  %call2_4027e6 = tail call %struct.Memory* @sub_40d560._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4707, %struct.Memory* %call2_4027c8)
  %4712 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299462, i64* %RDX.i3615, align 8
  %4713 = add i64 %4712, 44565
  %4714 = add i64 %4712, 30
  %4715 = load i64, i64* %6, align 8
  %4716 = add i64 %4715, -8
  %4717 = inttoptr i64 %4716 to i64*
  store i64 %4714, i64* %4717, align 8
  store i64 %4716, i64* %6, align 8
  store i64 %4713, i64* %3, align 8
  %call2_402804 = tail call %struct.Memory* @sub_40d600._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4713, %struct.Memory* %call2_4027e6)
  %4718 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299486, i64* %RDX.i3615, align 8
  %4719 = add i64 %4718, 44695
  %4720 = add i64 %4718, 30
  %4721 = load i64, i64* %6, align 8
  %4722 = add i64 %4721, -8
  %4723 = inttoptr i64 %4722 to i64*
  store i64 %4720, i64* %4723, align 8
  store i64 %4722, i64* %6, align 8
  store i64 %4719, i64* %3, align 8
  %call2_402822 = tail call %struct.Memory* @sub_40d6a0._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4719, %struct.Memory* %call2_402804)
  %4724 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299520, i64* %RDX.i3615, align 8
  %4725 = add i64 %4724, 44825
  %4726 = add i64 %4724, 30
  %4727 = load i64, i64* %6, align 8
  %4728 = add i64 %4727, -8
  %4729 = inttoptr i64 %4728 to i64*
  store i64 %4726, i64* %4729, align 8
  store i64 %4728, i64* %6, align 8
  store i64 %4725, i64* %3, align 8
  %call2_402840 = tail call %struct.Memory* @sub_40d740._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4725, %struct.Memory* %call2_402822)
  %4730 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299544, i64* %RDX.i3615, align 8
  %4731 = add i64 %4730, 44955
  %4732 = add i64 %4730, 30
  %4733 = load i64, i64* %6, align 8
  %4734 = add i64 %4733, -8
  %4735 = inttoptr i64 %4734 to i64*
  store i64 %4732, i64* %4735, align 8
  store i64 %4734, i64* %6, align 8
  store i64 %4731, i64* %3, align 8
  %call2_40285e = tail call %struct.Memory* @sub_40d7e0._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4731, %struct.Memory* %call2_402840)
  %4736 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299579, i64* %RDX.i3615, align 8
  %4737 = add i64 %4736, 45085
  %4738 = add i64 %4736, 30
  %4739 = load i64, i64* %6, align 8
  %4740 = add i64 %4739, -8
  %4741 = inttoptr i64 %4740 to i64*
  store i64 %4738, i64* %4741, align 8
  store i64 %4740, i64* %6, align 8
  store i64 %4737, i64* %3, align 8
  %call2_40287c = tail call %struct.Memory* @sub_40d880._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4737, %struct.Memory* %call2_40285e)
  %4742 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299613, i64* %RDX.i3615, align 8
  %4743 = add i64 %4742, 45215
  %4744 = add i64 %4742, 30
  %4745 = load i64, i64* %6, align 8
  %4746 = add i64 %4745, -8
  %4747 = inttoptr i64 %4746 to i64*
  store i64 %4744, i64* %4747, align 8
  store i64 %4746, i64* %6, align 8
  store i64 %4743, i64* %3, align 8
  %call2_40289a = tail call %struct.Memory* @sub_40d920._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4743, %struct.Memory* %call2_40287c)
  %4748 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299635, i64* %RDX.i3615, align 8
  %4749 = add i64 %4748, 45345
  %4750 = add i64 %4748, 30
  %4751 = load i64, i64* %6, align 8
  %4752 = add i64 %4751, -8
  %4753 = inttoptr i64 %4752 to i64*
  store i64 %4750, i64* %4753, align 8
  store i64 %4752, i64* %6, align 8
  store i64 %4749, i64* %3, align 8
  %call2_4028b8 = tail call %struct.Memory* @sub_40d9c0._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4749, %struct.Memory* %call2_40289a)
  %4754 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299667, i64* %RDX.i3615, align 8
  %4755 = add i64 %4754, 45475
  %4756 = add i64 %4754, 30
  %4757 = load i64, i64* %6, align 8
  %4758 = add i64 %4757, -8
  %4759 = inttoptr i64 %4758 to i64*
  store i64 %4756, i64* %4759, align 8
  store i64 %4758, i64* %6, align 8
  store i64 %4755, i64* %3, align 8
  %call2_4028d6 = tail call %struct.Memory* @sub_40da60._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4755, %struct.Memory* %call2_4028b8)
  %4760 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299699, i64* %RDX.i3615, align 8
  %4761 = add i64 %4760, 45605
  %4762 = add i64 %4760, 30
  %4763 = load i64, i64* %6, align 8
  %4764 = add i64 %4763, -8
  %4765 = inttoptr i64 %4764 to i64*
  store i64 %4762, i64* %4765, align 8
  store i64 %4764, i64* %6, align 8
  store i64 %4761, i64* %3, align 8
  %call2_4028f4 = tail call %struct.Memory* @sub_40db00._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4761, %struct.Memory* %call2_4028d6)
  %4766 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RCX.i3620, align 8
  store i64 6494928, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4767 = load i64, i64* inttoptr (i64 6430856 to i64*), align 8
  store i64 %4767, i64* %2515, align 1
  store double 0.000000e+00, double* %2517, align 1
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 6494928, i64* %RSI.i3626, align 8
  %4768 = add i64 %4766, 45735
  %4769 = add i64 %4766, 40
  %4770 = load i64, i64* %6, align 8
  %4771 = add i64 %4770, -8
  %4772 = inttoptr i64 %4771 to i64*
  store i64 %4769, i64* %4772, align 8
  store i64 %4771, i64* %6, align 8
  store i64 %4768, i64* %3, align 8
  %call2_40291c = tail call %struct.Memory* @sub_40dba0._Z4fillIPddEvT_S1_T0_(%struct.State* nonnull %0, i64 %4768, %struct.Memory* %call2_4028f4)
  %4773 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299729, i64* %RDX.i3615, align 8
  %4774 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4775 = zext i32 %4774 to i64
  store i64 %4775, i64* %RAX.i3622, align 8
  store i32 %4774, i32* inttoptr (i64 6430912 to i32*), align 64
  %4776 = add i64 %4773, 45759
  %4777 = add i64 %4773, 44
  %4778 = load i64, i64* %6, align 8
  %4779 = add i64 %4778, -8
  %4780 = inttoptr i64 %4779 to i64*
  store i64 %4777, i64* %4780, align 8
  store i64 %4779, i64* %6, align 8
  store i64 %4776, i64* %3, align 8
  %call2_402948 = tail call %struct.Memory* @sub_40dbe0._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4776, %struct.Memory* %call2_40291c)
  %4781 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299745, i64* %RDX.i3615, align 8
  %4782 = add i64 %4781, 45875
  %4783 = add i64 %4781, 30
  %4784 = load i64, i64* %6, align 8
  %4785 = add i64 %4784, -8
  %4786 = inttoptr i64 %4785 to i64*
  store i64 %4783, i64* %4786, align 8
  store i64 %4785, i64* %6, align 8
  store i64 %4782, i64* %3, align 8
  %call2_402966 = tail call %struct.Memory* @sub_40dc80._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4782, %struct.Memory* %call2_402948)
  %4787 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299766, i64* %RDX.i3615, align 8
  %4788 = add i64 %4787, 46005
  %4789 = add i64 %4787, 30
  %4790 = load i64, i64* %6, align 8
  %4791 = add i64 %4790, -8
  %4792 = inttoptr i64 %4791 to i64*
  store i64 %4789, i64* %4792, align 8
  store i64 %4791, i64* %6, align 8
  store i64 %4788, i64* %3, align 8
  %call2_402984 = tail call %struct.Memory* @sub_40dd20._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4788, %struct.Memory* %call2_402966)
  %4793 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299792, i64* %RDX.i3615, align 8
  %4794 = add i64 %4793, 46135
  %4795 = add i64 %4793, 30
  %4796 = load i64, i64* %6, align 8
  %4797 = add i64 %4796, -8
  %4798 = inttoptr i64 %4797 to i64*
  store i64 %4795, i64* %4798, align 8
  store i64 %4797, i64* %6, align 8
  store i64 %4794, i64* %3, align 8
  %call2_4029a2 = tail call %struct.Memory* @sub_40ddc0._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4794, %struct.Memory* %call2_402984)
  %4799 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299818, i64* %RDX.i3615, align 8
  %4800 = add i64 %4799, 46265
  %4801 = add i64 %4799, 30
  %4802 = load i64, i64* %6, align 8
  %4803 = add i64 %4802, -8
  %4804 = inttoptr i64 %4803 to i64*
  store i64 %4801, i64* %4804, align 8
  store i64 %4803, i64* %6, align 8
  store i64 %4800, i64* %3, align 8
  %call2_4029c0 = tail call %struct.Memory* @sub_40de60._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4800, %struct.Memory* %call2_4029a2)
  %4805 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299842, i64* %RDX.i3615, align 8
  %4806 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4807 = zext i32 %4806 to i64
  store i64 %4807, i64* %202, align 8
  %4808 = load i64, i64* %RBP.i, align 8
  %4809 = add i64 %4808, -132
  %4810 = add i64 %4805, 44
  store i64 %4810, i64* %3, align 8
  %4811 = inttoptr i64 %4809 to i32*
  store i32 10, i32* %4811, align 4
  %4812 = load i32, i32* %R9D.i3585, align 4
  %4813 = zext i32 %4812 to i64
  %4814 = load i64, i64* %3, align 8
  store i64 %4813, i64* %RAX.i3622, align 8
  %4815 = load i64, i64* %RBP.i, align 8
  %4816 = add i64 %4815, -144
  %4817 = load i64, i64* %RDX.i3615, align 8
  %4818 = add i64 %4814, 10
  store i64 %4818, i64* %3, align 8
  %4819 = inttoptr i64 %4816 to i64*
  store i64 %4817, i64* %4819, align 8
  %4820 = load i64, i64* %3, align 8
  %4821 = load i32, i32* %EAX.i3390, align 8
  %4822 = sext i32 %4821 to i64
  %4823 = lshr i64 %4822, 32
  store i64 %4823, i64* %4471, align 8
  %4824 = load i64, i64* %RBP.i, align 8
  %4825 = add i64 %4824, -132
  %4826 = add i64 %4820, 8
  store i64 %4826, i64* %3, align 8
  %4827 = inttoptr i64 %4825 to i32*
  %4828 = load i32, i32* %4827, align 4
  %4829 = zext i32 %4828 to i64
  store i64 %4829, i64* %202, align 8
  %4830 = add i64 %4820, 11
  store i64 %4830, i64* %3, align 8
  %4831 = zext i32 %4821 to i64
  %4832 = sext i32 %4828 to i64
  %4833 = shl nuw i64 %4823, 32
  %4834 = or i64 %4833, %4831
  %4835 = sdiv i64 %4834, %4832
  %4836 = shl i64 %4835, 32
  %4837 = ashr exact i64 %4836, 32
  %4838 = icmp eq i64 %4835, %4837
  br i1 %4838, label %4841, label %4839

; <label>:4839:                                   ; preds = %routine_idivl__r9d.exit243
  %4840 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4830, %struct.Memory* %call2_4029c0)
  %.pre13 = load i32, i32* %EAX.i3390, align 4
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r9d.exit

; <label>:4841:                                   ; preds = %routine_idivl__r9d.exit243
  %4842 = srem i64 %4834, %4832
  %4843 = and i64 %4835, 4294967295
  store i64 %4843, i64* %RAX.i3622, align 8
  %4844 = and i64 %4842, 4294967295
  store i64 %4844, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4845 = trunc i64 %4835 to i32
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %4841, %4839
  %4846 = phi i64 [ %.pre15, %4839 ], [ %4824, %4841 ]
  %4847 = phi i64 [ %.pre14, %4839 ], [ %4830, %4841 ]
  %4848 = phi i32 [ %.pre13, %4839 ], [ %4845, %4841 ]
  %4849 = phi %struct.Memory* [ %4840, %4839 ], [ %call2_4029c0, %4841 ]
  store i32 %4848, i32* inttoptr (i64 6430912 to i32*), align 64
  %4850 = add i64 %4846, -144
  %4851 = add i64 %4847, 14
  store i64 %4851, i64* %3, align 8
  %4852 = inttoptr i64 %4850 to i64*
  %4853 = load i64, i64* %4852, align 8
  store i64 %4853, i64* %RCX.i3620, align 8
  store i64 %4853, i64* %RDX.i3615, align 8
  %4854 = add i64 %4847, 46330
  %4855 = add i64 %4847, 22
  %4856 = load i64, i64* %6, align 8
  %4857 = add i64 %4856, -8
  %4858 = inttoptr i64 %4857 to i64*
  store i64 %4855, i64* %4858, align 8
  store i64 %4857, i64* %6, align 8
  store i64 %4854, i64* %3, align 8
  %call2_402a17 = tail call %struct.Memory* @sub_40df00._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4854, %struct.Memory* %4849)
  %4859 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299862, i64* %RDX.i3615, align 8
  %4860 = add i64 %4859, 46468
  %4861 = add i64 %4859, 30
  %4862 = load i64, i64* %6, align 8
  %4863 = add i64 %4862, -8
  %4864 = inttoptr i64 %4863 to i64*
  store i64 %4861, i64* %4864, align 8
  store i64 %4863, i64* %6, align 8
  store i64 %4860, i64* %3, align 8
  %call2_402a35 = tail call %struct.Memory* @sub_40dfa0._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4860, %struct.Memory* %call2_402a17)
  %4865 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299892, i64* %RDX.i3615, align 8
  %4866 = add i64 %4865, 46598
  %4867 = add i64 %4865, 30
  %4868 = load i64, i64* %6, align 8
  %4869 = add i64 %4868, -8
  %4870 = inttoptr i64 %4869 to i64*
  store i64 %4867, i64* %4870, align 8
  store i64 %4869, i64* %6, align 8
  store i64 %4866, i64* %3, align 8
  %call2_402a53 = tail call %struct.Memory* @sub_40e040._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4866, %struct.Memory* %call2_402a35)
  %4871 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299917, i64* %RDX.i3615, align 8
  %4872 = add i64 %4871, 46728
  %4873 = add i64 %4871, 30
  %4874 = load i64, i64* %6, align 8
  %4875 = add i64 %4874, -8
  %4876 = inttoptr i64 %4875 to i64*
  store i64 %4873, i64* %4876, align 8
  store i64 %4875, i64* %6, align 8
  store i64 %4872, i64* %3, align 8
  %call2_402a71 = tail call %struct.Memory* @sub_40e0e0._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4872, %struct.Memory* %call2_402a53)
  %4877 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299952, i64* %RDX.i3615, align 8
  %4878 = add i64 %4877, 46858
  %4879 = add i64 %4877, 30
  %4880 = load i64, i64* %6, align 8
  %4881 = add i64 %4880, -8
  %4882 = inttoptr i64 %4881 to i64*
  store i64 %4879, i64* %4882, align 8
  store i64 %4881, i64* %6, align 8
  store i64 %4878, i64* %3, align 8
  %call2_402a8f = tail call %struct.Memory* @sub_40e180._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4878, %struct.Memory* %call2_402a71)
  %4883 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4299977, i64* %RDX.i3615, align 8
  %4884 = add i64 %4883, 46988
  %4885 = add i64 %4883, 30
  %4886 = load i64, i64* %6, align 8
  %4887 = add i64 %4886, -8
  %4888 = inttoptr i64 %4887 to i64*
  store i64 %4885, i64* %4888, align 8
  store i64 %4887, i64* %6, align 8
  store i64 %4884, i64* %3, align 8
  %call2_402aad = tail call %struct.Memory* @sub_40e220._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4884, %struct.Memory* %call2_402a8f)
  %4889 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4300013, i64* %RDX.i3615, align 8
  %4890 = add i64 %4889, 47118
  %4891 = add i64 %4889, 30
  %4892 = load i64, i64* %6, align 8
  %4893 = add i64 %4892, -8
  %4894 = inttoptr i64 %4893 to i64*
  store i64 %4891, i64* %4894, align 8
  store i64 %4893, i64* %6, align 8
  store i64 %4890, i64* %3, align 8
  %call2_402acb = tail call %struct.Memory* @sub_40e2c0._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4890, %struct.Memory* %call2_402aad)
  %4895 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4300048, i64* %RDX.i3615, align 8
  %4896 = add i64 %4895, 47248
  %4897 = add i64 %4895, 30
  %4898 = load i64, i64* %6, align 8
  %4899 = add i64 %4898, -8
  %4900 = inttoptr i64 %4899 to i64*
  store i64 %4897, i64* %4900, align 8
  store i64 %4899, i64* %6, align 8
  store i64 %4896, i64* %3, align 8
  %call2_402ae9 = tail call %struct.Memory* @sub_40e360._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4896, %struct.Memory* %call2_402acb)
  %4901 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4300071, i64* %RDX.i3615, align 8
  %4902 = add i64 %4901, 47378
  %4903 = add i64 %4901, 30
  %4904 = load i64, i64* %6, align 8
  %4905 = add i64 %4904, -8
  %4906 = inttoptr i64 %4905 to i64*
  store i64 %4903, i64* %4906, align 8
  store i64 %4905, i64* %6, align 8
  store i64 %4902, i64* %3, align 8
  %call2_402b07 = tail call %struct.Memory* @sub_40e400._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4902, %struct.Memory* %call2_402ae9)
  %4907 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4300104, i64* %RDX.i3615, align 8
  %4908 = add i64 %4907, 47508
  %4909 = add i64 %4907, 30
  %4910 = load i64, i64* %6, align 8
  %4911 = add i64 %4910, -8
  %4912 = inttoptr i64 %4911 to i64*
  store i64 %4909, i64* %4912, align 8
  store i64 %4911, i64* %6, align 8
  store i64 %4908, i64* %3, align 8
  %call2_402b25 = tail call %struct.Memory* @sub_40e4a0._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4908, %struct.Memory* %call2_402b07)
  %4913 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3626, align 8
  store i64 4300137, i64* %RDX.i3615, align 8
  %4914 = add i64 %4913, 47638
  %4915 = add i64 %4913, 30
  %4916 = load i64, i64* %6, align 8
  %4917 = add i64 %4916, -8
  %4918 = inttoptr i64 %4917 to i64*
  store i64 %4915, i64* %4918, align 8
  store i64 %4917, i64* %6, align 8
  store i64 %4914, i64* %3, align 8
  %call2_402b43 = tail call %struct.Memory* @sub_40e540._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4914, %struct.Memory* %call2_402b25)
  %4919 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i3622, align 8
  %4920 = load i64, i64* %6, align 8
  %4921 = add i64 %4920, 144
  store i64 %4921, i64* %6, align 8
  %4922 = icmp ugt i64 %4920, -145
  %4923 = zext i1 %4922 to i8
  store i8 %4923, i8* %14, align 1
  %4924 = trunc i64 %4921 to i32
  %4925 = and i32 %4924, 255
  %4926 = tail call i32 @llvm.ctpop.i32(i32 %4925)
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  %4929 = xor i8 %4928, 1
  store i8 %4929, i8* %21, align 1
  %4930 = xor i64 %4920, 16
  %4931 = xor i64 %4930, %4921
  %4932 = lshr i64 %4931, 4
  %4933 = trunc i64 %4932 to i8
  %4934 = and i8 %4933, 1
  store i8 %4934, i8* %27, align 1
  %4935 = icmp eq i64 %4921, 0
  %4936 = zext i1 %4935 to i8
  store i8 %4936, i8* %30, align 1
  %4937 = lshr i64 %4921, 63
  %4938 = trunc i64 %4937 to i8
  store i8 %4938, i8* %33, align 1
  %4939 = lshr i64 %4920, 63
  %4940 = xor i64 %4937, %4939
  %4941 = add nuw nsw i64 %4940, %4937
  %4942 = icmp eq i64 %4941, 2
  %4943 = zext i1 %4942 to i8
  store i8 %4943, i8* %39, align 1
  %4944 = add i64 %4919, 10
  store i64 %4944, i64* %3, align 8
  %4945 = add i64 %4920, 152
  %4946 = inttoptr i64 %4921 to i64*
  %4947 = load i64, i64* %4946, align 8
  store i64 %4947, i64* %RBP.i, align 8
  store i64 %4945, i64* %6, align 8
  %4948 = add i64 %4919, 11
  store i64 %4948, i64* %3, align 8
  %4949 = inttoptr i64 %4945 to i64*
  %4950 = load i64, i64* %4949, align 8
  store i64 %4950, i64* %3, align 8
  %4951 = add i64 %4920, 160
  store i64 %4951, i64* %6, align 8
  ret %struct.Memory* %call2_402b43
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_400f17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x622080(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6430848 to i32*), align 128
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_400f37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atof_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x622088(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6430856 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6397d0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6526928, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xfa00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64000
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -64001
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x221135__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2232637
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to double*
  %7 = load double, double* %6, align 8
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x672210___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6758928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__r8b___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x674150___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6766928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPaaEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x221103__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2232585
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x22113d__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2232643
  %6 = load i32, i32* %EDX, align 4
  %7 = add i64 %4, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c23___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295715, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1f40___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 8000, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c34___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295732, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c4a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295754, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c65___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295781, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c80___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295808, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c99___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295833, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418caf___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295855, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418cc7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295879, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418ce2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295906, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d01___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295937, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d1d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295965, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d42___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296002, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d64___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296036, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d7a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296058, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d8f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296079, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x220fd1__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2232280
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x66666667___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 1717986919
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrq__0x3f___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 62
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 63
  store i64 %9, i64* %RCX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %9 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = xor i8 %14, 1
  store i8 %15, i8* %11, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = trunc i64 %9 to i8
  %19 = xor i8 %18, 1
  store i8 %19, i8* %17, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarq__0x22___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 33
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = ashr i64 %3, 34
  store i64 %9, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %9 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %9, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %9, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R9D, align 4
  %7 = load i32, i32* %ESI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %7, %6
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x220ff0__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2232311
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418da5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296101, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418dba___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296122, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418dd9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296153, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418df3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296179, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e17___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296215, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e31___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e56___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296278, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e7a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296314, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e92___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296338, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418eb4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296372, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418ed6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296406, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418ef6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296438, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f0b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296459, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f29___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296489, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f3d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296509, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f5a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296538, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f6f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296559, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x220e6d__rip____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2231925
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to double*
  %7 = load double, double* %6, align 8
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6702d0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 6750928, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %SIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__r8b___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPhhEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x220e3e__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2231876
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x220e78__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2231934
  %6 = load i32, i32* %EDX, align 4
  %7 = add i64 %4, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c22___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295714, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c33___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295731, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c49___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295753, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c64___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295780, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c7f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295807, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418c98___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295832, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418cae___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295854, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418cc6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295878, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418ce1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295905, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d00___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295936, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d1c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4295964, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d41___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296001, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d63___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296035, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d79___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296057, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418d8e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296078, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x220d16__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2231581
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x220d35__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2231612
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418da4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296100, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418db9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296121, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418dd8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296152, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418df2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296178, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e16___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296214, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e30___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296240, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e55___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296277, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e79___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296313, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418e91___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296337, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418eb3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296371, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418ed5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296405, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418ef5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296437, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f0a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296458, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f28___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296488, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f3c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296508, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f59___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296537, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f6e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296558, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x220bb2__rip____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2231226
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to double*
  %7 = load double, double* %6, align 8
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x66c450___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 6734928, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si___r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r10w___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R10W, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6702d0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6750928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPssEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x220b82__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2231176
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x220bbc__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2231234
  %6 = load i32, i32* %EDX, align 4
  %7 = add i64 %4, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296589, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f9f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296607, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418fb6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296630, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418fd2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296658, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418fee___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296686, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419008___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296712, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41901f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296735, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419038___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296760, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419054___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296788, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419074___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296820, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419091___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296849, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4190b7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296887, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4190da___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296922, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4190f1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296945, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419107___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296967, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x220a5a__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2230881
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x220a79__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2230912
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41911e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296990, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419134___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297012, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419154___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297044, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41916f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297071, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419194___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297108, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4191af___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297135, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4191d5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297173, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4191fa___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297210, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419213___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297235, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419236___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297270, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419259___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297305, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41927a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297338, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419290___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297360, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192af___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297391, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192c4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297412, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192e2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297442, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192f8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297464, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x2208f6__rip____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2230526
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to double*
  %7 = load double, double* %6, align 8
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6685d0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 6718928, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl__r10w___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R10W, align 2
  %5 = zext i16 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x66c450___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6734928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPttEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2208c6__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2230476
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x220900__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2230534
  %6 = load i32, i32* %EDX, align 4
  %7 = add i64 %4, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f8c___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296588, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418f9e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296606, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418fb5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296629, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418fd1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296657, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x418fed___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296685, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419007___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296711, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41901e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296734, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419037___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296759, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419053___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296787, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419073___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296819, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419090___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296848, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4190b6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296886, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4190d9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296921, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4190f0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296944, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419106___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296966, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x22079e__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2230181
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x2207bd__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2230212
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41911d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4296989, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419133___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297011, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419153___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297043, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41916e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297070, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419193___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297107, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4191ae___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297134, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4191d4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297172, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4191f9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297209, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419212___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297234, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419235___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297269, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419258___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297304, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419279___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297337, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41928f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297359, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192ae___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297390, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192c3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297411, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192e1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297441, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4192f7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297463, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x22063a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2229826
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6608d0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6686928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6685d0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6718928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPiiEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x220610__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2229782
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x22064a__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2229840
  %6 = load i32, i32* %EDX, align 4
  %7 = add i64 %4, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419317___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297495, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419329___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297513, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419340___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297536, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41935c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297564, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419378___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297592, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419392___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297618, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193a9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297641, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193c2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297666, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193de___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297694, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193fe___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297726, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41941b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297755, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419441___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297793, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419464___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297828, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41947b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297851, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419491___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297873, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x2204e8__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2229487
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x220507__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2229518
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194a8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297896, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194be___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297918, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194de___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297950, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194f9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297977, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41951e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298014, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419539___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298041, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41955f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298079, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419584___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298116, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41959d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298141, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4195c0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298176, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4195e3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298211, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419604___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298244, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41961a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298266, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419639___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298297, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41964e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298318, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41966c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298348, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419682___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298370, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x220383__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2229132
  %5 = add i64 %3, 9
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to double*
  %7 = load double, double* %6, align 8
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x658bd0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 6654928, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6608d0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 6686928, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPjjEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x22034c__rip____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2229074
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x220386__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2229132
  %6 = load i32, i32* %EDX, align 4
  %7 = add i64 %4, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419316___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297494, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419328___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297512, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41933f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297535, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41935b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297563, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419377___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297591, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419391___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297617, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193a8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297640, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193c1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297665, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193dd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297693, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4193fd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297725, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41941a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297754, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419440___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297792, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419463___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297827, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41947a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297850, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419490___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297872, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x220224__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2228779
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x220243__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2228810
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194a7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297895, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194bd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297917, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194dd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297949, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4194f8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4297976, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41951d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298013, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419538___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298040, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41955e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298078, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419583___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298115, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41959c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298140, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4195bf___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298175, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4195e2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298210, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419603___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298243, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419619___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298265, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419638___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298296, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41964d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298317, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41966b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298347, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419681___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298369, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2200c0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2228424
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6491d0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6590928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x658bd0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6654928, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPllEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x220094__rip____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2228379
  %6 = add i64 %4, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %5 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x2200cd__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2228436
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4196a1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4298401, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4196b3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298419, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4196ca___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298442, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4196e6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298470, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419702___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298498, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41971c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298524, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419733___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298547, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41974c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298572, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419768___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298600, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419788___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298632, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4197a5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298661, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4197cb___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298699, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4197ee___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298734, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419805___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298757, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41981b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298779, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x21ff67__rip____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2228078
  %5 = add i64 %3, 7
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x21ff86__rip_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2228109
  %6 = load i32, i32* %R9D, align 4
  %7 = add i64 %4, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419832___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298802, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419848___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298824, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419868___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298856, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419883___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298883, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4198a8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298920, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4198c3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298947, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4198e9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4298985, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41990e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299022, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419927___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299047, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41994a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299082, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41996d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299117, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41998e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299150, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4199a4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299172, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4199c3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299203, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4199d8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299224, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4199f6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299254, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x419a0c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4299276, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21fe03__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2227723
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x16793__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 92059
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = load i64, i64* %RAX, align 8
  %13 = select i1 %11, i64 %3, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPmmEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6397d0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6526928, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8000, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4196a0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298400, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x622080___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x6220c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6430912 to i32*), align 64
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4196b2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298418, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4196c9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298441, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4196e5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298469, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419701___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298497, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41971b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298523, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419732___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298546, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41974b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298571, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419767___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298599, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419787___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298631, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4197a4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298660, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4197ca___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298698, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4197ed___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298733, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419804___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298756, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41981a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298778, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419831___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298801, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x622080___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x6220c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6430912 to i32*), align 64
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419847___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298823, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419867___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298855, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419882___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298882, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4198a7___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298919, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4198c2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298946, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4198e8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4298984, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41990d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299021, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419926___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299046, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419949___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299081, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41996c___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299116, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41998d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299149, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4199a3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299171, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4199c2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299202, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4199d7___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299223, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4199f5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299253, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a0b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299275, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x631ad0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6494928, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x7d00___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32000
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -32001
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss_0x622088___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load double, double* inttoptr (i64 6430856 to double*), align 8
  %13 = fptrunc double %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPffEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x631ad0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6494928, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a2a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299306, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a39___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299321, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a4d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299341, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a66___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299366, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a7f___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299391, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419a96___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299414, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419aa9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299433, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419ac6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299462, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419ade___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299486, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419b00___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299520, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419b18___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299544, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419b3b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299579, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419b5d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299613, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419b73___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299635, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419b93___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299667, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419bb3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299699, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6220d0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6430928, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xfa00___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64000
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -64001
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x622088___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6430856 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z4fillIPddEvT_S1_T0_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6220d0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6430928, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419bd1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299729, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419be1___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299745, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419bf6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299766, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419c10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299792, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419c2a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299818, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419c42___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299842, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419c56___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299862, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419c74___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299892, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419c8d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299917, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419cb0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299952, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419cc9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4299977, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419ced___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4300013, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419d10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4300048, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419d27___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4300071, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419d48___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4300104, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x419d69___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4300137, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
