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

declare %struct.Memory* @sub_400700.atoi_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400690.atof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %RSI.i3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i3648, align 8
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
  %RAX.i3642 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %88 = add i64 %56, -16
  %89 = add i64 %86, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RAX.i3642, align 8
  %RDI.i3640 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %92 = add i64 %91, 8
  %93 = add i64 %86, 8
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RDI.i3640, align 8
  %96 = add i64 %86, -2051
  %97 = add i64 %86, 13
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %97, i64* %100, align 8
  store i64 %99, i64* %6, align 8
  store i64 %96, i64* %3, align 8
  %call2_400f0b = tail call %struct.Memory* @sub_400700.atoi_plt(%struct.State* nonnull %0, i64 %96, %struct.Memory* %2)
  %EAX.i3636 = bitcast %union.anon* %87 to i32*
  %101 = load i32, i32* %EAX.i3636, align 4
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 7
  store i64 %103, i64* %3, align 8
  store i32 %101, i32* inttoptr (i64 6430848 to i32*), align 128
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f17

block_.L_400f17:                                  ; preds = %block_400f03, %entry
  %104 = phi i64 [ %86, %entry ], [ %103, %block_400f03 ]
  %105 = phi i64 [ %56, %entry ], [ %.pre, %block_400f03 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_400f0b, %block_400f03 ]
  %106 = add i64 %105, -8
  %107 = add i64 %104, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, -2
  %111 = icmp ult i32 %109, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %14, align 1
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %21, align 1
  %118 = xor i32 %110, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %27, align 1
  %122 = icmp eq i32 %110, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %30, align 1
  %124 = lshr i32 %110, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %33, align 1
  %126 = lshr i32 %109, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %39, align 1
  %131 = icmp ne i8 %125, 0
  %132 = xor i1 %131, %129
  %133 = or i1 %122, %132
  %.v18 = select i1 %133, i64 32, i64 10
  %134 = add i64 %104, %.v18
  store i64 %134, i64* %3, align 8
  br i1 %133, label %block_.L_400f17.block_.L_400f37_crit_edge, label %block_400f21

block_.L_400f17.block_.L_400f37_crit_edge:        ; preds = %block_.L_400f17
  %.pre16 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  br label %block_.L_400f37

block_400f21:                                     ; preds = %block_.L_400f17
  %RAX.i3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %135 = add i64 %105, -16
  %136 = add i64 %134, 4
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %RAX.i3630, align 8
  %RDI.i3628 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %139 = add i64 %138, 16
  %140 = add i64 %134, 8
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RDI.i3628, align 8
  %143 = add i64 %134, -2193
  %144 = add i64 %134, 13
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147, align 8
  store i64 %146, i64* %6, align 8
  store i64 %143, i64* %3, align 8
  %call2_400f29 = tail call %struct.Memory* @sub_400690.atof_plt(%struct.State* nonnull %0, i64 %143, %struct.Memory* %MEMORY.0)
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 9
  store i64 %149, i64* %3, align 8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %151 = load i64, i64* %150, align 1
  store i64 %151, i64* inttoptr (i64 6430856 to i64*), align 8
  %.pre2 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f37

block_.L_400f37:                                  ; preds = %block_.L_400f17.block_.L_400f37_crit_edge, %block_400f21
  %RDI.i3611.pre-phi = phi i64* [ %.pre16, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %RDI.i3628, %block_400f21 ]
  %152 = phi i64 [ %105, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %.pre2, %block_400f21 ]
  %153 = phi i64 [ %134, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %149, %block_400f21 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400f17.block_.L_400f37_crit_edge ], [ %call2_400f29, %block_400f21 ]
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i3622 = getelementptr inbounds %union.anon, %union.anon* %154, i64 0, i32 0
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
  %155 = add i64 %153, 2232657
  %156 = add i64 %153, 28
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to double*
  %158 = load double, double* %157, align 8
  %159 = tail call double @llvm.trunc.f64(double %158)
  %160 = tail call double @llvm.fabs.f64(double %159)
  %161 = fcmp ogt double %160, 0x41DFFFFFFFC00000
  %162 = fptosi double %159 to i32
  %163 = zext i32 %162 to i64
  %164 = select i1 %161, i64 2147483648, i64 %163
  store i64 6758928, i64* %RDI.i3611.pre-phi, align 8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i3608 = bitcast %union.anon* %165 to i8*
  %166 = trunc i64 %164 to i8
  store i8 %166, i8* %R8B.i3608, align 1
  %sext = shl i64 %164, 56
  %167 = ashr exact i64 %sext, 56
  %168 = and i64 %167, 4294967295
  store i64 %168, i64* %RDX.i3615, align 8
  store i64 6766928, i64* %RSI.i3648, align 8
  %169 = add i64 %152, -24
  %170 = add i64 %153, 51
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i64*
  store i64 6758928, i64* %171, align 8
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -32
  %174 = load i64, i64* %RAX.i3622, align 8
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 4
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %173 to i64*
  store i64 %174, i64* %177, align 8
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -40
  %180 = load i64, i64* %RCX.i3620, align 8
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 4
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %179 to i64*
  store i64 %180, i64* %183, align 8
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 7150
  %186 = add i64 %184, 5
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %call2_400f72 = tail call %struct.Memory* @sub_402b60._Z4fillIPaaEvT_S1_T0_(%struct.State* nonnull %0, i64 %185, %struct.Memory* %MEMORY.1)
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 2232585
  %192 = add i64 %190, 6
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = add i64 %190, 2232649
  %196 = add i64 %190, 12
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 %194, i32* %197, align 4
  %198 = load i64, i64* %3, align 8
  store i64 4295715, i64* %RDX.i3615, align 8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i3585 = bitcast %union.anon* %199 to i32*
  %200 = getelementptr inbounds %union.anon, %union.anon* %199, i64 0, i32 0
  store i64 8000, i64* %200, align 8
  %201 = load i64, i64* %RBP.i, align 8
  %202 = add i64 %201, -24
  %203 = add i64 %198, 15
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  %206 = add i64 %201, -44
  %207 = add i64 %198, 22
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  store i32 8000, i32* %208, align 4
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 7175
  %211 = add i64 %209, 5
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %6, align 8
  store i64 %210, i64* %3, align 8
  %call2_400f99 = tail call %struct.Memory* @sub_402ba0._Z13test_constantIa10custom_twoIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %210, %struct.Memory* %call2_400f72)
  %215 = load i64, i64* %3, align 8
  store i64 4295732, i64* %RSI.i3648, align 8
  store i64 4295732, i64* %RDX.i3615, align 8
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -24
  %218 = add i64 %215, 11
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RDI.i3611.pre-phi, align 8
  %221 = add i64 %216, -44
  %222 = add i64 %215, 14
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RSI.i3648, align 8
  %226 = add i64 %215, 7330
  %227 = add i64 %215, 19
  %228 = load i64, i64* %6, align 8
  %229 = add i64 %228, -8
  %230 = inttoptr i64 %229 to i64*
  store i64 %227, i64* %230, align 8
  store i64 %229, i64* %6, align 8
  store i64 %226, i64* %3, align 8
  %call2_400fac = tail call %struct.Memory* @sub_402c40._Z13test_constantIa20custom_add_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %226, %struct.Memory* %call2_400f99)
  %231 = load i64, i64* %3, align 8
  store i64 4295754, i64* %RSI.i3648, align 8
  store i64 4295754, i64* %RDX.i3615, align 8
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -24
  %234 = add i64 %231, 11
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %RDI.i3611.pre-phi, align 8
  %237 = add i64 %232, -44
  %238 = add i64 %231, 14
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RSI.i3648, align 8
  %242 = add i64 %231, 7471
  %243 = add i64 %231, 19
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, -8
  %246 = inttoptr i64 %245 to i64*
  store i64 %243, i64* %246, align 8
  store i64 %245, i64* %6, align 8
  store i64 %242, i64* %3, align 8
  %call2_400fbf = tail call %struct.Memory* @sub_402ce0._Z13test_constantIa20custom_sub_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %242, %struct.Memory* %call2_400fac)
  %247 = load i64, i64* %3, align 8
  store i64 4295781, i64* %RSI.i3648, align 8
  store i64 4295781, i64* %RDX.i3615, align 8
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -24
  %250 = add i64 %247, 11
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RDI.i3611.pre-phi, align 8
  %253 = add i64 %248, -44
  %254 = add i64 %247, 14
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RSI.i3648, align 8
  %258 = add i64 %247, 7612
  %259 = add i64 %247, 19
  %260 = load i64, i64* %6, align 8
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %259, i64* %262, align 8
  store i64 %261, i64* %6, align 8
  store i64 %258, i64* %3, align 8
  %call2_400fd2 = tail call %struct.Memory* @sub_402d80._Z13test_constantIa25custom_multiply_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %258, %struct.Memory* %call2_400fbf)
  %263 = load i64, i64* %3, align 8
  store i64 4295808, i64* %RSI.i3648, align 8
  store i64 4295808, i64* %RDX.i3615, align 8
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -24
  %266 = add i64 %263, 11
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RDI.i3611.pre-phi, align 8
  %269 = add i64 %264, -44
  %270 = add i64 %263, 14
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RSI.i3648, align 8
  %274 = add i64 %263, 7753
  %275 = add i64 %263, 19
  %276 = load i64, i64* %6, align 8
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278, align 8
  store i64 %277, i64* %6, align 8
  store i64 %274, i64* %3, align 8
  %call2_400fe5 = tail call %struct.Memory* @sub_402e20._Z13test_constantIa23custom_divide_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %274, %struct.Memory* %call2_400fd2)
  %279 = load i64, i64* %3, align 8
  store i64 4295833, i64* %RSI.i3648, align 8
  store i64 4295833, i64* %RDX.i3615, align 8
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -24
  %282 = add i64 %279, 11
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %RDI.i3611.pre-phi, align 8
  %285 = add i64 %280, -44
  %286 = add i64 %279, 14
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RSI.i3648, align 8
  %290 = add i64 %279, 7894
  %291 = add i64 %279, 19
  %292 = load i64, i64* %6, align 8
  %293 = add i64 %292, -8
  %294 = inttoptr i64 %293 to i64*
  store i64 %291, i64* %294, align 8
  store i64 %293, i64* %6, align 8
  store i64 %290, i64* %3, align 8
  %call2_400ff8 = tail call %struct.Memory* @sub_402ec0._Z13test_constantIa20custom_mod_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %290, %struct.Memory* %call2_400fe5)
  %295 = load i64, i64* %3, align 8
  store i64 4295855, i64* %RSI.i3648, align 8
  store i64 4295855, i64* %RDX.i3615, align 8
  %296 = load i64, i64* %RBP.i, align 8
  %297 = add i64 %296, -24
  %298 = add i64 %295, 11
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RDI.i3611.pre-phi, align 8
  %301 = add i64 %296, -44
  %302 = add i64 %295, 14
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RSI.i3648, align 8
  %306 = add i64 %295, 8035
  %307 = add i64 %295, 19
  %308 = load i64, i64* %6, align 8
  %309 = add i64 %308, -8
  %310 = inttoptr i64 %309 to i64*
  store i64 %307, i64* %310, align 8
  store i64 %309, i64* %6, align 8
  store i64 %306, i64* %3, align 8
  %call2_40100b = tail call %struct.Memory* @sub_402f60._Z13test_constantIa22custom_equal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %306, %struct.Memory* %call2_400ff8)
  %311 = load i64, i64* %3, align 8
  store i64 4295879, i64* %RSI.i3648, align 8
  store i64 4295879, i64* %RDX.i3615, align 8
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -24
  %314 = add i64 %311, 11
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDI.i3611.pre-phi, align 8
  %317 = add i64 %312, -44
  %318 = add i64 %311, 14
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RSI.i3648, align 8
  %322 = add i64 %311, 8176
  %323 = add i64 %311, 19
  %324 = load i64, i64* %6, align 8
  %325 = add i64 %324, -8
  %326 = inttoptr i64 %325 to i64*
  store i64 %323, i64* %326, align 8
  store i64 %325, i64* %6, align 8
  store i64 %322, i64* %3, align 8
  %call2_40101e = tail call %struct.Memory* @sub_403000._Z13test_constantIa25custom_notequal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %322, %struct.Memory* %call2_40100b)
  %327 = load i64, i64* %3, align 8
  store i64 4295906, i64* %RSI.i3648, align 8
  store i64 4295906, i64* %RDX.i3615, align 8
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -24
  %330 = add i64 %327, 11
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RDI.i3611.pre-phi, align 8
  %333 = add i64 %328, -44
  %334 = add i64 %327, 14
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RSI.i3648, align 8
  %338 = add i64 %327, 8317
  %339 = add i64 %327, 19
  %340 = load i64, i64* %6, align 8
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %339, i64* %342, align 8
  store i64 %341, i64* %6, align 8
  store i64 %338, i64* %3, align 8
  %call2_401031 = tail call %struct.Memory* @sub_4030a0._Z13test_constantIa28custom_greaterthan_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %338, %struct.Memory* %call2_40101e)
  %343 = load i64, i64* %3, align 8
  store i64 4295937, i64* %RSI.i3648, align 8
  store i64 4295937, i64* %RDX.i3615, align 8
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -24
  %346 = add i64 %343, 11
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %RDI.i3611.pre-phi, align 8
  %349 = add i64 %344, -44
  %350 = add i64 %343, 14
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RSI.i3648, align 8
  %354 = add i64 %343, 8458
  %355 = add i64 %343, 19
  %356 = load i64, i64* %6, align 8
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %355, i64* %358, align 8
  store i64 %357, i64* %6, align 8
  store i64 %354, i64* %3, align 8
  %call2_401044 = tail call %struct.Memory* @sub_403140._Z13test_constantIa25custom_lessthan_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %354, %struct.Memory* %call2_401031)
  %359 = load i64, i64* %3, align 8
  store i64 4295965, i64* %RSI.i3648, align 8
  store i64 4295965, i64* %RDX.i3615, align 8
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -24
  %362 = add i64 %359, 11
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RDI.i3611.pre-phi, align 8
  %365 = add i64 %360, -44
  %366 = add i64 %359, 14
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RSI.i3648, align 8
  %370 = add i64 %359, 8599
  %371 = add i64 %359, 19
  %372 = load i64, i64* %6, align 8
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %6, align 8
  store i64 %370, i64* %3, align 8
  %call2_401057 = tail call %struct.Memory* @sub_4031e0._Z13test_constantIa33custom_greaterthanequal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %370, %struct.Memory* %call2_401044)
  %375 = load i64, i64* %3, align 8
  store i64 4296002, i64* %RSI.i3648, align 8
  store i64 4296002, i64* %RDX.i3615, align 8
  %376 = load i64, i64* %RBP.i, align 8
  %377 = add i64 %376, -24
  %378 = add i64 %375, 11
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RDI.i3611.pre-phi, align 8
  %381 = add i64 %376, -44
  %382 = add i64 %375, 14
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RSI.i3648, align 8
  %386 = add i64 %375, 8740
  %387 = add i64 %375, 19
  %388 = load i64, i64* %6, align 8
  %389 = add i64 %388, -8
  %390 = inttoptr i64 %389 to i64*
  store i64 %387, i64* %390, align 8
  store i64 %389, i64* %6, align 8
  store i64 %386, i64* %3, align 8
  %call2_40106a = tail call %struct.Memory* @sub_403280._Z13test_constantIa30custom_lessthanequal_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %386, %struct.Memory* %call2_401057)
  %391 = load i64, i64* %3, align 8
  store i64 4296036, i64* %RSI.i3648, align 8
  store i64 4296036, i64* %RDX.i3615, align 8
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -24
  %394 = add i64 %391, 11
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RDI.i3611.pre-phi, align 8
  %397 = add i64 %392, -44
  %398 = add i64 %391, 14
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RSI.i3648, align 8
  %402 = add i64 %391, 8881
  %403 = add i64 %391, 19
  %404 = load i64, i64* %6, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %406, align 8
  store i64 %405, i64* %6, align 8
  store i64 %402, i64* %3, align 8
  %call2_40107d = tail call %struct.Memory* @sub_403320._Z13test_constantIa20custom_and_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %402, %struct.Memory* %call2_40106a)
  %407 = load i64, i64* %3, align 8
  store i64 4296058, i64* %RSI.i3648, align 8
  store i64 4296058, i64* %RDX.i3615, align 8
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -24
  %410 = add i64 %407, 11
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %RDI.i3611.pre-phi, align 8
  %413 = add i64 %408, -44
  %414 = add i64 %407, 14
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RSI.i3648, align 8
  %418 = add i64 %407, 9022
  %419 = add i64 %407, 19
  %420 = load i64, i64* %6, align 8
  %421 = add i64 %420, -8
  %422 = inttoptr i64 %421 to i64*
  store i64 %419, i64* %422, align 8
  store i64 %421, i64* %6, align 8
  store i64 %418, i64* %3, align 8
  %call2_401090 = tail call %struct.Memory* @sub_4033c0._Z13test_constantIa19custom_or_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %418, %struct.Memory* %call2_40107d)
  %423 = load i64, i64* %3, align 8
  store i64 4296079, i64* %RSI.i3648, align 8
  store i64 4296079, i64* %RDX.i3615, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -24
  %426 = add i64 %423, 11
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i64*
  %428 = load i64, i64* %427, align 8
  store i64 %428, i64* %RDI.i3611.pre-phi, align 8
  %429 = add i64 %424, -44
  %430 = add i64 %423, 14
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RSI.i3648, align 8
  %434 = add i64 %423, 9163
  %435 = add i64 %423, 19
  %436 = load i64, i64* %6, align 8
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %6, align 8
  store i64 %434, i64* %3, align 8
  %call2_4010a3 = tail call %struct.Memory* @sub_403460._Z13test_constantIa20custom_xor_constantsIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %434, %struct.Memory* %call2_401090)
  %439 = load i64, i64* %3, align 8
  %440 = add i64 %439, 2232280
  %441 = add i64 %439, 7
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = mul nsw i64 %444, 1717986919
  %446 = lshr i64 %445, 63
  store i64 %446, i64* %RCX.i3620, align 8
  %447 = trunc i64 %446 to i32
  %448 = ashr i64 %445, 34
  store i64 %448, i64* %RAX.i3622, align 8
  %449 = trunc i64 %448 to i32
  %EAX.i3390 = bitcast %union.anon* %154 to i32*
  %450 = add i32 %447, %449
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %200, align 8
  %452 = icmp ult i32 %450, %449
  %453 = icmp ult i32 %450, %447
  %454 = or i1 %452, %453
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = and i32 %450, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  %461 = trunc i64 %448 to i32
  %462 = xor i32 %461, %450
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %27, align 1
  %466 = icmp eq i32 %450, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %30, align 1
  %468 = lshr i32 %450, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %33, align 1
  %470 = lshr i64 %448, 31
  %471 = trunc i64 %470 to i32
  %472 = and i32 %471, 1
  %473 = xor i32 %468, %472
  %474 = add nuw nsw i32 %473, %468
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %39, align 1
  %477 = add i64 %439, 2232344
  %478 = add i64 %439, 40
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  store i32 %450, i32* %479, align 4
  %480 = load i64, i64* %3, align 8
  store i64 4296101, i64* %RSI.i3648, align 8
  store i64 4296101, i64* %RDX.i3615, align 8
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -24
  %483 = add i64 %480, 11
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RDI.i3611.pre-phi, align 8
  %486 = add i64 %481, -44
  %487 = add i64 %480, 14
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RSI.i3648, align 8
  %491 = add i64 %480, 9264
  %492 = add i64 %480, 19
  %493 = load i64, i64* %6, align 8
  %494 = add i64 %493, -8
  %495 = inttoptr i64 %494 to i64*
  store i64 %492, i64* %495, align 8
  store i64 %494, i64* %6, align 8
  store i64 %491, i64* %3, align 8
  %call2_4010de = tail call %struct.Memory* @sub_403500._Z13test_constantIa19custom_constant_addIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %491, %struct.Memory* %call2_4010a3)
  %496 = load i64, i64* %3, align 8
  store i64 4296122, i64* %RSI.i3648, align 8
  store i64 4296122, i64* %RDX.i3615, align 8
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -24
  %499 = add i64 %496, 11
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RDI.i3611.pre-phi, align 8
  %502 = add i64 %497, -44
  %503 = add i64 %496, 14
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RSI.i3648, align 8
  %507 = add i64 %496, 9405
  %508 = add i64 %496, 19
  %509 = load i64, i64* %6, align 8
  %510 = add i64 %509, -8
  %511 = inttoptr i64 %510 to i64*
  store i64 %508, i64* %511, align 8
  store i64 %510, i64* %6, align 8
  store i64 %507, i64* %3, align 8
  %call2_4010f1 = tail call %struct.Memory* @sub_4035a0._Z13test_constantIa28custom_multiple_constant_addIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %507, %struct.Memory* %call2_4010de)
  %512 = load i64, i64* %3, align 8
  store i64 4296153, i64* %RSI.i3648, align 8
  store i64 4296153, i64* %RDX.i3615, align 8
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -24
  %515 = add i64 %512, 11
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RDI.i3611.pre-phi, align 8
  %518 = add i64 %513, -44
  %519 = add i64 %512, 14
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RSI.i3648, align 8
  %523 = add i64 %512, 9546
  %524 = add i64 %512, 19
  %525 = load i64, i64* %6, align 8
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %6, align 8
  store i64 %523, i64* %3, align 8
  %call2_401104 = tail call %struct.Memory* @sub_403640._Z13test_constantIa19custom_constant_subIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %523, %struct.Memory* %call2_4010f1)
  %528 = load i64, i64* %3, align 8
  store i64 4296179, i64* %RSI.i3648, align 8
  store i64 4296179, i64* %RDX.i3615, align 8
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -24
  %531 = add i64 %528, 11
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RDI.i3611.pre-phi, align 8
  %534 = add i64 %529, -44
  %535 = add i64 %528, 14
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RSI.i3648, align 8
  %539 = add i64 %528, 9687
  %540 = add i64 %528, 19
  %541 = load i64, i64* %6, align 8
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %540, i64* %543, align 8
  store i64 %542, i64* %6, align 8
  store i64 %539, i64* %3, align 8
  %call2_401117 = tail call %struct.Memory* @sub_4036e0._Z13test_constantIa28custom_multiple_constant_subIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %539, %struct.Memory* %call2_401104)
  %544 = load i64, i64* %3, align 8
  store i64 4296215, i64* %RSI.i3648, align 8
  store i64 4296215, i64* %RDX.i3615, align 8
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -24
  %547 = add i64 %544, 11
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RDI.i3611.pre-phi, align 8
  %550 = add i64 %545, -44
  %551 = add i64 %544, 14
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RSI.i3648, align 8
  %555 = add i64 %544, 9828
  %556 = add i64 %544, 19
  %557 = load i64, i64* %6, align 8
  %558 = add i64 %557, -8
  %559 = inttoptr i64 %558 to i64*
  store i64 %556, i64* %559, align 8
  store i64 %558, i64* %6, align 8
  store i64 %555, i64* %3, align 8
  %call2_40112a = tail call %struct.Memory* @sub_403780._Z13test_constantIa24custom_constant_multiplyIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %555, %struct.Memory* %call2_401117)
  %560 = load i64, i64* %3, align 8
  store i64 4296241, i64* %RSI.i3648, align 8
  store i64 4296241, i64* %RDX.i3615, align 8
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -24
  %563 = add i64 %560, 11
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RDI.i3611.pre-phi, align 8
  %566 = add i64 %561, -44
  %567 = add i64 %560, 14
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RSI.i3648, align 8
  %571 = add i64 %560, 9969
  %572 = add i64 %560, 19
  %573 = load i64, i64* %6, align 8
  %574 = add i64 %573, -8
  %575 = inttoptr i64 %574 to i64*
  store i64 %572, i64* %575, align 8
  store i64 %574, i64* %6, align 8
  store i64 %571, i64* %3, align 8
  %call2_40113d = tail call %struct.Memory* @sub_403820._Z13test_constantIa33custom_multiple_constant_multiplyIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %571, %struct.Memory* %call2_40112a)
  %576 = load i64, i64* %3, align 8
  store i64 4296278, i64* %RSI.i3648, align 8
  store i64 4296278, i64* %RDX.i3615, align 8
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -24
  %579 = add i64 %576, 11
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RDI.i3611.pre-phi, align 8
  %582 = add i64 %577, -44
  %583 = add i64 %576, 14
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RSI.i3648, align 8
  %587 = add i64 %576, 10110
  %588 = add i64 %576, 19
  %589 = load i64, i64* %6, align 8
  %590 = add i64 %589, -8
  %591 = inttoptr i64 %590 to i64*
  store i64 %588, i64* %591, align 8
  store i64 %590, i64* %6, align 8
  store i64 %587, i64* %3, align 8
  %call2_401150 = tail call %struct.Memory* @sub_4038c0._Z13test_constantIa34custom_multiple_constant_multiply2IaEEvPT_iPKc(%struct.State* nonnull %0, i64 %587, %struct.Memory* %call2_40113d)
  %592 = load i64, i64* %3, align 8
  store i64 4296314, i64* %RSI.i3648, align 8
  store i64 4296314, i64* %RDX.i3615, align 8
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -24
  %595 = add i64 %592, 11
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RDI.i3611.pre-phi, align 8
  %598 = add i64 %593, -44
  %599 = add i64 %592, 14
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RSI.i3648, align 8
  %603 = add i64 %592, 10251
  %604 = add i64 %592, 19
  %605 = load i64, i64* %6, align 8
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %607, align 8
  store i64 %606, i64* %6, align 8
  store i64 %603, i64* %3, align 8
  %call2_401163 = tail call %struct.Memory* @sub_403960._Z13test_constantIa22custom_constant_divideIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %603, %struct.Memory* %call2_401150)
  %608 = load i64, i64* %3, align 8
  store i64 4296338, i64* %RSI.i3648, align 8
  store i64 4296338, i64* %RDX.i3615, align 8
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -24
  %611 = add i64 %608, 11
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i64*
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %RDI.i3611.pre-phi, align 8
  %614 = add i64 %609, -44
  %615 = add i64 %608, 14
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RSI.i3648, align 8
  %619 = add i64 %608, 10392
  %620 = add i64 %608, 19
  %621 = load i64, i64* %6, align 8
  %622 = add i64 %621, -8
  %623 = inttoptr i64 %622 to i64*
  store i64 %620, i64* %623, align 8
  store i64 %622, i64* %6, align 8
  store i64 %619, i64* %3, align 8
  %call2_401176 = tail call %struct.Memory* @sub_403a00._Z13test_constantIa31custom_multiple_constant_divideIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %619, %struct.Memory* %call2_401163)
  %624 = load i64, i64* %3, align 8
  store i64 4296372, i64* %RSI.i3648, align 8
  store i64 4296372, i64* %RDX.i3615, align 8
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -24
  %627 = add i64 %624, 11
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i64*
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %RDI.i3611.pre-phi, align 8
  %630 = add i64 %625, -44
  %631 = add i64 %624, 14
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RSI.i3648, align 8
  %635 = add i64 %624, 10533
  %636 = add i64 %624, 19
  %637 = load i64, i64* %6, align 8
  %638 = add i64 %637, -8
  %639 = inttoptr i64 %638 to i64*
  store i64 %636, i64* %639, align 8
  store i64 %638, i64* %6, align 8
  store i64 %635, i64* %3, align 8
  %call2_401189 = tail call %struct.Memory* @sub_403aa0._Z13test_constantIa32custom_multiple_constant_divide2IaEEvPT_iPKc(%struct.State* nonnull %0, i64 %635, %struct.Memory* %call2_401176)
  %640 = load i64, i64* %3, align 8
  store i64 4296406, i64* %RSI.i3648, align 8
  store i64 4296406, i64* %RDX.i3615, align 8
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -24
  %643 = add i64 %640, 11
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RDI.i3611.pre-phi, align 8
  %646 = add i64 %641, -44
  %647 = add i64 %640, 14
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RSI.i3648, align 8
  %651 = add i64 %640, 10674
  %652 = add i64 %640, 19
  %653 = load i64, i64* %6, align 8
  %654 = add i64 %653, -8
  %655 = inttoptr i64 %654 to i64*
  store i64 %652, i64* %655, align 8
  store i64 %654, i64* %6, align 8
  store i64 %651, i64* %3, align 8
  %call2_40119c = tail call %struct.Memory* @sub_403b40._Z13test_constantIa30custom_multiple_constant_mixedIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %651, %struct.Memory* %call2_401189)
  %656 = load i64, i64* %3, align 8
  store i64 4296438, i64* %RSI.i3648, align 8
  store i64 4296438, i64* %RDX.i3615, align 8
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -24
  %659 = add i64 %656, 11
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RDI.i3611.pre-phi, align 8
  %662 = add i64 %657, -44
  %663 = add i64 %656, 14
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RSI.i3648, align 8
  %667 = add i64 %656, 10815
  %668 = add i64 %656, 19
  %669 = load i64, i64* %6, align 8
  %670 = add i64 %669, -8
  %671 = inttoptr i64 %670 to i64*
  store i64 %668, i64* %671, align 8
  store i64 %670, i64* %6, align 8
  store i64 %667, i64* %3, align 8
  %call2_4011af = tail call %struct.Memory* @sub_403be0._Z13test_constantIa19custom_constant_andIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %667, %struct.Memory* %call2_40119c)
  %672 = load i64, i64* %3, align 8
  store i64 4296459, i64* %RSI.i3648, align 8
  store i64 4296459, i64* %RDX.i3615, align 8
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -24
  %675 = add i64 %672, 11
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RDI.i3611.pre-phi, align 8
  %678 = add i64 %673, -44
  %679 = add i64 %672, 14
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RSI.i3648, align 8
  %683 = add i64 %672, 10956
  %684 = add i64 %672, 19
  %685 = load i64, i64* %6, align 8
  %686 = add i64 %685, -8
  %687 = inttoptr i64 %686 to i64*
  store i64 %684, i64* %687, align 8
  store i64 %686, i64* %6, align 8
  store i64 %683, i64* %3, align 8
  %call2_4011c2 = tail call %struct.Memory* @sub_403c80._Z13test_constantIa28custom_multiple_constant_andIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %683, %struct.Memory* %call2_4011af)
  %688 = load i64, i64* %3, align 8
  store i64 4296489, i64* %RSI.i3648, align 8
  store i64 4296489, i64* %RDX.i3615, align 8
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -24
  %691 = add i64 %688, 11
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i64*
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %RDI.i3611.pre-phi, align 8
  %694 = add i64 %689, -44
  %695 = add i64 %688, 14
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RSI.i3648, align 8
  %699 = add i64 %688, 11097
  %700 = add i64 %688, 19
  %701 = load i64, i64* %6, align 8
  %702 = add i64 %701, -8
  %703 = inttoptr i64 %702 to i64*
  store i64 %700, i64* %703, align 8
  store i64 %702, i64* %6, align 8
  store i64 %699, i64* %3, align 8
  %call2_4011d5 = tail call %struct.Memory* @sub_403d20._Z13test_constantIa18custom_constant_orIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %699, %struct.Memory* %call2_4011c2)
  %704 = load i64, i64* %3, align 8
  store i64 4296509, i64* %RSI.i3648, align 8
  store i64 4296509, i64* %RDX.i3615, align 8
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -24
  %707 = add i64 %704, 11
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %RDI.i3611.pre-phi, align 8
  %710 = add i64 %705, -44
  %711 = add i64 %704, 14
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RSI.i3648, align 8
  %715 = add i64 %704, 11238
  %716 = add i64 %704, 19
  %717 = load i64, i64* %6, align 8
  %718 = add i64 %717, -8
  %719 = inttoptr i64 %718 to i64*
  store i64 %716, i64* %719, align 8
  store i64 %718, i64* %6, align 8
  store i64 %715, i64* %3, align 8
  %call2_4011e8 = tail call %struct.Memory* @sub_403dc0._Z13test_constantIa27custom_multiple_constant_orIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %715, %struct.Memory* %call2_4011d5)
  %720 = load i64, i64* %3, align 8
  store i64 4296538, i64* %RSI.i3648, align 8
  store i64 4296538, i64* %RDX.i3615, align 8
  %721 = load i64, i64* %RBP.i, align 8
  %722 = add i64 %721, -24
  %723 = add i64 %720, 11
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RDI.i3611.pre-phi, align 8
  %726 = add i64 %721, -44
  %727 = add i64 %720, 14
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RSI.i3648, align 8
  %731 = add i64 %720, 11379
  %732 = add i64 %720, 19
  %733 = load i64, i64* %6, align 8
  %734 = add i64 %733, -8
  %735 = inttoptr i64 %734 to i64*
  store i64 %732, i64* %735, align 8
  store i64 %734, i64* %6, align 8
  store i64 %731, i64* %3, align 8
  %call2_4011fb = tail call %struct.Memory* @sub_403e60._Z13test_constantIa19custom_constant_xorIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %731, %struct.Memory* %call2_4011e8)
  %736 = load i64, i64* %3, align 8
  store i64 4296559, i64* %RSI.i3648, align 8
  store i64 4296559, i64* %RDX.i3615, align 8
  %737 = load i64, i64* %RBP.i, align 8
  %738 = add i64 %737, -24
  %739 = add i64 %736, 11
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RDI.i3611.pre-phi, align 8
  %742 = add i64 %737, -44
  %743 = add i64 %736, 14
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RSI.i3648, align 8
  %747 = add i64 %736, 11520
  %748 = add i64 %736, 19
  %749 = load i64, i64* %6, align 8
  %750 = add i64 %749, -8
  %751 = inttoptr i64 %750 to i64*
  store i64 %748, i64* %751, align 8
  store i64 %750, i64* %6, align 8
  store i64 %747, i64* %3, align 8
  %call2_40120e = tail call %struct.Memory* @sub_403f00._Z13test_constantIa28custom_multiple_constant_xorIaEEvPT_iPKc(%struct.State* nonnull %0, i64 %747, %struct.Memory* %call2_4011fb)
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, 2231925
  %754 = add i64 %752, 8
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to double*
  %756 = load double, double* %755, align 8
  %757 = tail call double @llvm.trunc.f64(double %756)
  %758 = tail call double @llvm.fabs.f64(double %757)
  %759 = fcmp ogt double %758, 0x41DFFFFFFFC00000
  %760 = fptosi double %757 to i32
  %761 = zext i32 %760 to i64
  %762 = select i1 %759, i64 2147483648, i64 %761
  store i64 6750928, i64* %200, align 8
  store i64 6750928, i64* %RAX.i3622, align 8
  %763 = trunc i64 %762 to i8
  store i8 %763, i8* %R8B.i3608, align 1
  %764 = and i64 %762, 255
  store i64 %764, i64* %RDX.i3615, align 8
  store i64 6758928, i64* %RSI.i3648, align 8
  store i64 6750928, i64* %RDI.i3611.pre-phi, align 8
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -56
  %767 = add i64 %752, 36
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i64*
  store i64 6750928, i64* %768, align 8
  %769 = load i64, i64* %3, align 8
  %770 = add i64 %769, 11625
  %771 = add i64 %769, 5
  %772 = load i64, i64* %6, align 8
  %773 = add i64 %772, -8
  %774 = inttoptr i64 %773 to i64*
  store i64 %771, i64* %774, align 8
  store i64 %773, i64* %6, align 8
  store i64 %770, i64* %3, align 8
  %call2_401237 = tail call %struct.Memory* @sub_403fa0._Z4fillIPhhEvT_S1_T0_(%struct.State* nonnull %0, i64 %770, %struct.Memory* %call2_40120e)
  %775 = load i64, i64* %3, align 8
  %776 = add i64 %775, 2231876
  %777 = add i64 %775, 6
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = add i64 %775, 2231940
  %781 = add i64 %775, 12
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  store i32 %779, i32* %782, align 4
  %783 = load i64, i64* %3, align 8
  store i64 4295714, i64* %RDX.i3615, align 8
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -56
  %786 = add i64 %783, 9
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RDI.i3611.pre-phi, align 8
  %789 = add i64 %784, -44
  %790 = add i64 %783, 12
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RSI.i3648, align 8
  %794 = add i64 %783, 11672
  %795 = add i64 %783, 17
  %796 = load i64, i64* %6, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %795, i64* %798, align 8
  store i64 %797, i64* %6, align 8
  store i64 %794, i64* %3, align 8
  %call2_401254 = tail call %struct.Memory* @sub_403fe0._Z13test_constantIh10custom_twoIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %794, %struct.Memory* %call2_401237)
  %799 = load i64, i64* %3, align 8
  store i64 4295731, i64* %RSI.i3648, align 8
  store i64 4295731, i64* %RDX.i3615, align 8
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -56
  %802 = add i64 %799, 11
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %RDI.i3611.pre-phi, align 8
  %805 = add i64 %800, -44
  %806 = add i64 %799, 14
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RSI.i3648, align 8
  %810 = add i64 %799, 11815
  %811 = add i64 %799, 19
  %812 = load i64, i64* %6, align 8
  %813 = add i64 %812, -8
  %814 = inttoptr i64 %813 to i64*
  store i64 %811, i64* %814, align 8
  store i64 %813, i64* %6, align 8
  store i64 %810, i64* %3, align 8
  %call2_401267 = tail call %struct.Memory* @sub_404080._Z13test_constantIh20custom_add_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %810, %struct.Memory* %call2_401254)
  %815 = load i64, i64* %3, align 8
  store i64 4295753, i64* %RSI.i3648, align 8
  store i64 4295753, i64* %RDX.i3615, align 8
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -56
  %818 = add i64 %815, 11
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i64*
  %820 = load i64, i64* %819, align 8
  store i64 %820, i64* %RDI.i3611.pre-phi, align 8
  %821 = add i64 %816, -44
  %822 = add i64 %815, 14
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RSI.i3648, align 8
  %826 = add i64 %815, 11956
  %827 = add i64 %815, 19
  %828 = load i64, i64* %6, align 8
  %829 = add i64 %828, -8
  %830 = inttoptr i64 %829 to i64*
  store i64 %827, i64* %830, align 8
  store i64 %829, i64* %6, align 8
  store i64 %826, i64* %3, align 8
  %call2_40127a = tail call %struct.Memory* @sub_404120._Z13test_constantIh20custom_sub_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %826, %struct.Memory* %call2_401267)
  %831 = load i64, i64* %3, align 8
  store i64 4295780, i64* %RSI.i3648, align 8
  store i64 4295780, i64* %RDX.i3615, align 8
  %832 = load i64, i64* %RBP.i, align 8
  %833 = add i64 %832, -56
  %834 = add i64 %831, 11
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i64*
  %836 = load i64, i64* %835, align 8
  store i64 %836, i64* %RDI.i3611.pre-phi, align 8
  %837 = add i64 %832, -44
  %838 = add i64 %831, 14
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RSI.i3648, align 8
  %842 = add i64 %831, 12097
  %843 = add i64 %831, 19
  %844 = load i64, i64* %6, align 8
  %845 = add i64 %844, -8
  %846 = inttoptr i64 %845 to i64*
  store i64 %843, i64* %846, align 8
  store i64 %845, i64* %6, align 8
  store i64 %842, i64* %3, align 8
  %call2_40128d = tail call %struct.Memory* @sub_4041c0._Z13test_constantIh25custom_multiply_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %842, %struct.Memory* %call2_40127a)
  %847 = load i64, i64* %3, align 8
  store i64 4295807, i64* %RSI.i3648, align 8
  store i64 4295807, i64* %RDX.i3615, align 8
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -56
  %850 = add i64 %847, 11
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %RDI.i3611.pre-phi, align 8
  %853 = add i64 %848, -44
  %854 = add i64 %847, 14
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RSI.i3648, align 8
  %858 = add i64 %847, 12238
  %859 = add i64 %847, 19
  %860 = load i64, i64* %6, align 8
  %861 = add i64 %860, -8
  %862 = inttoptr i64 %861 to i64*
  store i64 %859, i64* %862, align 8
  store i64 %861, i64* %6, align 8
  store i64 %858, i64* %3, align 8
  %call2_4012a0 = tail call %struct.Memory* @sub_404260._Z13test_constantIh23custom_divide_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %858, %struct.Memory* %call2_40128d)
  %863 = load i64, i64* %3, align 8
  store i64 4295832, i64* %RSI.i3648, align 8
  store i64 4295832, i64* %RDX.i3615, align 8
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -56
  %866 = add i64 %863, 11
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  store i64 %868, i64* %RDI.i3611.pre-phi, align 8
  %869 = add i64 %864, -44
  %870 = add i64 %863, 14
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RSI.i3648, align 8
  %874 = add i64 %863, 12379
  %875 = add i64 %863, 19
  %876 = load i64, i64* %6, align 8
  %877 = add i64 %876, -8
  %878 = inttoptr i64 %877 to i64*
  store i64 %875, i64* %878, align 8
  store i64 %877, i64* %6, align 8
  store i64 %874, i64* %3, align 8
  %call2_4012b3 = tail call %struct.Memory* @sub_404300._Z13test_constantIh20custom_mod_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %874, %struct.Memory* %call2_4012a0)
  %879 = load i64, i64* %3, align 8
  store i64 4295854, i64* %RSI.i3648, align 8
  store i64 4295854, i64* %RDX.i3615, align 8
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -56
  %882 = add i64 %879, 11
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RDI.i3611.pre-phi, align 8
  %885 = add i64 %880, -44
  %886 = add i64 %879, 14
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RSI.i3648, align 8
  %890 = add i64 %879, 12520
  %891 = add i64 %879, 19
  %892 = load i64, i64* %6, align 8
  %893 = add i64 %892, -8
  %894 = inttoptr i64 %893 to i64*
  store i64 %891, i64* %894, align 8
  store i64 %893, i64* %6, align 8
  store i64 %890, i64* %3, align 8
  %call2_4012c6 = tail call %struct.Memory* @sub_4043a0._Z13test_constantIh22custom_equal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %890, %struct.Memory* %call2_4012b3)
  %895 = load i64, i64* %3, align 8
  store i64 4295878, i64* %RSI.i3648, align 8
  store i64 4295878, i64* %RDX.i3615, align 8
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -56
  %898 = add i64 %895, 11
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RDI.i3611.pre-phi, align 8
  %901 = add i64 %896, -44
  %902 = add i64 %895, 14
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RSI.i3648, align 8
  %906 = add i64 %895, 12661
  %907 = add i64 %895, 19
  %908 = load i64, i64* %6, align 8
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %907, i64* %910, align 8
  store i64 %909, i64* %6, align 8
  store i64 %906, i64* %3, align 8
  %call2_4012d9 = tail call %struct.Memory* @sub_404440._Z13test_constantIh25custom_notequal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %906, %struct.Memory* %call2_4012c6)
  %911 = load i64, i64* %3, align 8
  store i64 4295905, i64* %RSI.i3648, align 8
  store i64 4295905, i64* %RDX.i3615, align 8
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -56
  %914 = add i64 %911, 11
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i64*
  %916 = load i64, i64* %915, align 8
  store i64 %916, i64* %RDI.i3611.pre-phi, align 8
  %917 = add i64 %912, -44
  %918 = add i64 %911, 14
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RSI.i3648, align 8
  %922 = add i64 %911, 12802
  %923 = add i64 %911, 19
  %924 = load i64, i64* %6, align 8
  %925 = add i64 %924, -8
  %926 = inttoptr i64 %925 to i64*
  store i64 %923, i64* %926, align 8
  store i64 %925, i64* %6, align 8
  store i64 %922, i64* %3, align 8
  %call2_4012ec = tail call %struct.Memory* @sub_4044e0._Z13test_constantIh28custom_greaterthan_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %922, %struct.Memory* %call2_4012d9)
  %927 = load i64, i64* %3, align 8
  store i64 4295936, i64* %RSI.i3648, align 8
  store i64 4295936, i64* %RDX.i3615, align 8
  %928 = load i64, i64* %RBP.i, align 8
  %929 = add i64 %928, -56
  %930 = add i64 %927, 11
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RDI.i3611.pre-phi, align 8
  %933 = add i64 %928, -44
  %934 = add i64 %927, 14
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RSI.i3648, align 8
  %938 = add i64 %927, 12943
  %939 = add i64 %927, 19
  %940 = load i64, i64* %6, align 8
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %6, align 8
  store i64 %938, i64* %3, align 8
  %call2_4012ff = tail call %struct.Memory* @sub_404580._Z13test_constantIh25custom_lessthan_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %938, %struct.Memory* %call2_4012ec)
  %943 = load i64, i64* %3, align 8
  store i64 4295964, i64* %RSI.i3648, align 8
  store i64 4295964, i64* %RDX.i3615, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -56
  %946 = add i64 %943, 11
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RDI.i3611.pre-phi, align 8
  %949 = add i64 %944, -44
  %950 = add i64 %943, 14
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RSI.i3648, align 8
  %954 = add i64 %943, 13084
  %955 = add i64 %943, 19
  %956 = load i64, i64* %6, align 8
  %957 = add i64 %956, -8
  %958 = inttoptr i64 %957 to i64*
  store i64 %955, i64* %958, align 8
  store i64 %957, i64* %6, align 8
  store i64 %954, i64* %3, align 8
  %call2_401312 = tail call %struct.Memory* @sub_404620._Z13test_constantIh33custom_greaterthanequal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %954, %struct.Memory* %call2_4012ff)
  %959 = load i64, i64* %3, align 8
  store i64 4296001, i64* %RSI.i3648, align 8
  store i64 4296001, i64* %RDX.i3615, align 8
  %960 = load i64, i64* %RBP.i, align 8
  %961 = add i64 %960, -56
  %962 = add i64 %959, 11
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RDI.i3611.pre-phi, align 8
  %965 = add i64 %960, -44
  %966 = add i64 %959, 14
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RSI.i3648, align 8
  %970 = add i64 %959, 13225
  %971 = add i64 %959, 19
  %972 = load i64, i64* %6, align 8
  %973 = add i64 %972, -8
  %974 = inttoptr i64 %973 to i64*
  store i64 %971, i64* %974, align 8
  store i64 %973, i64* %6, align 8
  store i64 %970, i64* %3, align 8
  %call2_401325 = tail call %struct.Memory* @sub_4046c0._Z13test_constantIh30custom_lessthanequal_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %970, %struct.Memory* %call2_401312)
  %975 = load i64, i64* %3, align 8
  store i64 4296035, i64* %RSI.i3648, align 8
  store i64 4296035, i64* %RDX.i3615, align 8
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -56
  %978 = add i64 %975, 11
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %RDI.i3611.pre-phi, align 8
  %981 = add i64 %976, -44
  %982 = add i64 %975, 14
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RSI.i3648, align 8
  %986 = add i64 %975, 13366
  %987 = add i64 %975, 19
  %988 = load i64, i64* %6, align 8
  %989 = add i64 %988, -8
  %990 = inttoptr i64 %989 to i64*
  store i64 %987, i64* %990, align 8
  store i64 %989, i64* %6, align 8
  store i64 %986, i64* %3, align 8
  %call2_401338 = tail call %struct.Memory* @sub_404760._Z13test_constantIh20custom_and_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %986, %struct.Memory* %call2_401325)
  %991 = load i64, i64* %3, align 8
  store i64 4296057, i64* %RSI.i3648, align 8
  store i64 4296057, i64* %RDX.i3615, align 8
  %992 = load i64, i64* %RBP.i, align 8
  %993 = add i64 %992, -56
  %994 = add i64 %991, 11
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %RDI.i3611.pre-phi, align 8
  %997 = add i64 %992, -44
  %998 = add i64 %991, 14
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RSI.i3648, align 8
  %1002 = add i64 %991, 13507
  %1003 = add i64 %991, 19
  %1004 = load i64, i64* %6, align 8
  %1005 = add i64 %1004, -8
  %1006 = inttoptr i64 %1005 to i64*
  store i64 %1003, i64* %1006, align 8
  store i64 %1005, i64* %6, align 8
  store i64 %1002, i64* %3, align 8
  %call2_40134b = tail call %struct.Memory* @sub_404800._Z13test_constantIh19custom_or_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1002, %struct.Memory* %call2_401338)
  %1007 = load i64, i64* %3, align 8
  store i64 4296078, i64* %RSI.i3648, align 8
  store i64 4296078, i64* %RDX.i3615, align 8
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -56
  %1010 = add i64 %1007, 11
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i64 %1012, i64* %RDI.i3611.pre-phi, align 8
  %1013 = add i64 %1008, -44
  %1014 = add i64 %1007, 14
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RSI.i3648, align 8
  %1018 = add i64 %1007, 13648
  %1019 = add i64 %1007, 19
  %1020 = load i64, i64* %6, align 8
  %1021 = add i64 %1020, -8
  %1022 = inttoptr i64 %1021 to i64*
  store i64 %1019, i64* %1022, align 8
  store i64 %1021, i64* %6, align 8
  store i64 %1018, i64* %3, align 8
  %call2_40135e = tail call %struct.Memory* @sub_4048a0._Z13test_constantIh20custom_xor_constantsIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1018, %struct.Memory* %call2_40134b)
  %1023 = load i64, i64* %3, align 8
  %1024 = add i64 %1023, 2231581
  %1025 = add i64 %1023, 7
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = mul nsw i64 %1028, 1717986919
  %1030 = lshr i64 %1029, 63
  store i64 %1030, i64* %RCX.i3620, align 8
  %1031 = trunc i64 %1030 to i32
  %1032 = ashr i64 %1029, 34
  store i64 %1032, i64* %RAX.i3622, align 8
  %1033 = trunc i64 %1032 to i32
  %1034 = add i32 %1031, %1033
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %200, align 8
  %1036 = icmp ult i32 %1034, %1033
  %1037 = icmp ult i32 %1034, %1031
  %1038 = or i1 %1036, %1037
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %14, align 1
  %1040 = and i32 %1034, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %21, align 1
  %1045 = trunc i64 %1032 to i32
  %1046 = xor i32 %1045, %1034
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %27, align 1
  %1050 = icmp eq i32 %1034, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %30, align 1
  %1052 = lshr i32 %1034, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %33, align 1
  %1054 = lshr i64 %1032, 31
  %1055 = trunc i64 %1054 to i32
  %1056 = and i32 %1055, 1
  %1057 = xor i32 %1052, %1056
  %1058 = add nuw nsw i32 %1057, %1052
  %1059 = icmp eq i32 %1058, 2
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %39, align 1
  %1061 = add i64 %1023, 2231645
  %1062 = add i64 %1023, 40
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  store i32 %1034, i32* %1063, align 4
  %1064 = load i64, i64* %3, align 8
  store i64 4296100, i64* %RSI.i3648, align 8
  store i64 4296100, i64* %RDX.i3615, align 8
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -56
  %1067 = add i64 %1064, 11
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %RDI.i3611.pre-phi, align 8
  %1070 = add i64 %1065, -44
  %1071 = add i64 %1064, 14
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RSI.i3648, align 8
  %1075 = add i64 %1064, 13749
  %1076 = add i64 %1064, 19
  %1077 = load i64, i64* %6, align 8
  %1078 = add i64 %1077, -8
  %1079 = inttoptr i64 %1078 to i64*
  store i64 %1076, i64* %1079, align 8
  store i64 %1078, i64* %6, align 8
  store i64 %1075, i64* %3, align 8
  %call2_401399 = tail call %struct.Memory* @sub_404940._Z13test_constantIh19custom_constant_addIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1075, %struct.Memory* %call2_40135e)
  %1080 = load i64, i64* %3, align 8
  store i64 4296121, i64* %RSI.i3648, align 8
  store i64 4296121, i64* %RDX.i3615, align 8
  %1081 = load i64, i64* %RBP.i, align 8
  %1082 = add i64 %1081, -56
  %1083 = add i64 %1080, 11
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i64*
  %1085 = load i64, i64* %1084, align 8
  store i64 %1085, i64* %RDI.i3611.pre-phi, align 8
  %1086 = add i64 %1081, -44
  %1087 = add i64 %1080, 14
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RSI.i3648, align 8
  %1091 = add i64 %1080, 13890
  %1092 = add i64 %1080, 19
  %1093 = load i64, i64* %6, align 8
  %1094 = add i64 %1093, -8
  %1095 = inttoptr i64 %1094 to i64*
  store i64 %1092, i64* %1095, align 8
  store i64 %1094, i64* %6, align 8
  store i64 %1091, i64* %3, align 8
  %call2_4013ac = tail call %struct.Memory* @sub_4049e0._Z13test_constantIh28custom_multiple_constant_addIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1091, %struct.Memory* %call2_401399)
  %1096 = load i64, i64* %3, align 8
  store i64 4296152, i64* %RSI.i3648, align 8
  store i64 4296152, i64* %RDX.i3615, align 8
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -56
  %1099 = add i64 %1096, 11
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RDI.i3611.pre-phi, align 8
  %1102 = add i64 %1097, -44
  %1103 = add i64 %1096, 14
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RSI.i3648, align 8
  %1107 = add i64 %1096, 14031
  %1108 = add i64 %1096, 19
  %1109 = load i64, i64* %6, align 8
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1108, i64* %1111, align 8
  store i64 %1110, i64* %6, align 8
  store i64 %1107, i64* %3, align 8
  %call2_4013bf = tail call %struct.Memory* @sub_404a80._Z13test_constantIh19custom_constant_subIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1107, %struct.Memory* %call2_4013ac)
  %1112 = load i64, i64* %3, align 8
  store i64 4296178, i64* %RSI.i3648, align 8
  store i64 4296178, i64* %RDX.i3615, align 8
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -56
  %1115 = add i64 %1112, 11
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RDI.i3611.pre-phi, align 8
  %1118 = add i64 %1113, -44
  %1119 = add i64 %1112, 14
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = zext i32 %1121 to i64
  store i64 %1122, i64* %RSI.i3648, align 8
  %1123 = add i64 %1112, 14172
  %1124 = add i64 %1112, 19
  %1125 = load i64, i64* %6, align 8
  %1126 = add i64 %1125, -8
  %1127 = inttoptr i64 %1126 to i64*
  store i64 %1124, i64* %1127, align 8
  store i64 %1126, i64* %6, align 8
  store i64 %1123, i64* %3, align 8
  %call2_4013d2 = tail call %struct.Memory* @sub_404b20._Z13test_constantIh28custom_multiple_constant_subIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1123, %struct.Memory* %call2_4013bf)
  %1128 = load i64, i64* %3, align 8
  store i64 4296214, i64* %RSI.i3648, align 8
  store i64 4296214, i64* %RDX.i3615, align 8
  %1129 = load i64, i64* %RBP.i, align 8
  %1130 = add i64 %1129, -56
  %1131 = add i64 %1128, 11
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  store i64 %1133, i64* %RDI.i3611.pre-phi, align 8
  %1134 = add i64 %1129, -44
  %1135 = add i64 %1128, 14
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RSI.i3648, align 8
  %1139 = add i64 %1128, 14313
  %1140 = add i64 %1128, 19
  %1141 = load i64, i64* %6, align 8
  %1142 = add i64 %1141, -8
  %1143 = inttoptr i64 %1142 to i64*
  store i64 %1140, i64* %1143, align 8
  store i64 %1142, i64* %6, align 8
  store i64 %1139, i64* %3, align 8
  %call2_4013e5 = tail call %struct.Memory* @sub_404bc0._Z13test_constantIh24custom_constant_multiplyIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1139, %struct.Memory* %call2_4013d2)
  %1144 = load i64, i64* %3, align 8
  store i64 4296240, i64* %RSI.i3648, align 8
  store i64 4296240, i64* %RDX.i3615, align 8
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -56
  %1147 = add i64 %1144, 11
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  %1149 = load i64, i64* %1148, align 8
  store i64 %1149, i64* %RDI.i3611.pre-phi, align 8
  %1150 = add i64 %1145, -44
  %1151 = add i64 %1144, 14
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RSI.i3648, align 8
  %1155 = add i64 %1144, 14454
  %1156 = add i64 %1144, 19
  %1157 = load i64, i64* %6, align 8
  %1158 = add i64 %1157, -8
  %1159 = inttoptr i64 %1158 to i64*
  store i64 %1156, i64* %1159, align 8
  store i64 %1158, i64* %6, align 8
  store i64 %1155, i64* %3, align 8
  %call2_4013f8 = tail call %struct.Memory* @sub_404c60._Z13test_constantIh33custom_multiple_constant_multiplyIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1155, %struct.Memory* %call2_4013e5)
  %1160 = load i64, i64* %3, align 8
  store i64 4296277, i64* %RSI.i3648, align 8
  store i64 4296277, i64* %RDX.i3615, align 8
  %1161 = load i64, i64* %RBP.i, align 8
  %1162 = add i64 %1161, -56
  %1163 = add i64 %1160, 11
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RDI.i3611.pre-phi, align 8
  %1166 = add i64 %1161, -44
  %1167 = add i64 %1160, 14
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RSI.i3648, align 8
  %1171 = add i64 %1160, 14595
  %1172 = add i64 %1160, 19
  %1173 = load i64, i64* %6, align 8
  %1174 = add i64 %1173, -8
  %1175 = inttoptr i64 %1174 to i64*
  store i64 %1172, i64* %1175, align 8
  store i64 %1174, i64* %6, align 8
  store i64 %1171, i64* %3, align 8
  %call2_40140b = tail call %struct.Memory* @sub_404d00._Z13test_constantIh34custom_multiple_constant_multiply2IhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1171, %struct.Memory* %call2_4013f8)
  %1176 = load i64, i64* %3, align 8
  store i64 4296313, i64* %RSI.i3648, align 8
  store i64 4296313, i64* %RDX.i3615, align 8
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -56
  %1179 = add i64 %1176, 11
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i64*
  %1181 = load i64, i64* %1180, align 8
  store i64 %1181, i64* %RDI.i3611.pre-phi, align 8
  %1182 = add i64 %1177, -44
  %1183 = add i64 %1176, 14
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i32*
  %1185 = load i32, i32* %1184, align 4
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RSI.i3648, align 8
  %1187 = add i64 %1176, 14736
  %1188 = add i64 %1176, 19
  %1189 = load i64, i64* %6, align 8
  %1190 = add i64 %1189, -8
  %1191 = inttoptr i64 %1190 to i64*
  store i64 %1188, i64* %1191, align 8
  store i64 %1190, i64* %6, align 8
  store i64 %1187, i64* %3, align 8
  %call2_40141e = tail call %struct.Memory* @sub_404da0._Z13test_constantIh22custom_constant_divideIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1187, %struct.Memory* %call2_40140b)
  %1192 = load i64, i64* %3, align 8
  store i64 4296337, i64* %RSI.i3648, align 8
  store i64 4296337, i64* %RDX.i3615, align 8
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -56
  %1195 = add i64 %1192, 11
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %RDI.i3611.pre-phi, align 8
  %1198 = add i64 %1193, -44
  %1199 = add i64 %1192, 14
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RSI.i3648, align 8
  %1203 = add i64 %1192, 14877
  %1204 = add i64 %1192, 19
  %1205 = load i64, i64* %6, align 8
  %1206 = add i64 %1205, -8
  %1207 = inttoptr i64 %1206 to i64*
  store i64 %1204, i64* %1207, align 8
  store i64 %1206, i64* %6, align 8
  store i64 %1203, i64* %3, align 8
  %call2_401431 = tail call %struct.Memory* @sub_404e40._Z13test_constantIh31custom_multiple_constant_divideIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1203, %struct.Memory* %call2_40141e)
  %1208 = load i64, i64* %3, align 8
  store i64 4296371, i64* %RSI.i3648, align 8
  store i64 4296371, i64* %RDX.i3615, align 8
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -56
  %1211 = add i64 %1208, 11
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RDI.i3611.pre-phi, align 8
  %1214 = add i64 %1209, -44
  %1215 = add i64 %1208, 14
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RSI.i3648, align 8
  %1219 = add i64 %1208, 15018
  %1220 = add i64 %1208, 19
  %1221 = load i64, i64* %6, align 8
  %1222 = add i64 %1221, -8
  %1223 = inttoptr i64 %1222 to i64*
  store i64 %1220, i64* %1223, align 8
  store i64 %1222, i64* %6, align 8
  store i64 %1219, i64* %3, align 8
  %call2_401444 = tail call %struct.Memory* @sub_404ee0._Z13test_constantIh32custom_multiple_constant_divide2IhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1219, %struct.Memory* %call2_401431)
  %1224 = load i64, i64* %3, align 8
  store i64 4296405, i64* %RSI.i3648, align 8
  store i64 4296405, i64* %RDX.i3615, align 8
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -56
  %1227 = add i64 %1224, 11
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RDI.i3611.pre-phi, align 8
  %1230 = add i64 %1225, -44
  %1231 = add i64 %1224, 14
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RSI.i3648, align 8
  %1235 = add i64 %1224, 15159
  %1236 = add i64 %1224, 19
  %1237 = load i64, i64* %6, align 8
  %1238 = add i64 %1237, -8
  %1239 = inttoptr i64 %1238 to i64*
  store i64 %1236, i64* %1239, align 8
  store i64 %1238, i64* %6, align 8
  store i64 %1235, i64* %3, align 8
  %call2_401457 = tail call %struct.Memory* @sub_404f80._Z13test_constantIh30custom_multiple_constant_mixedIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1235, %struct.Memory* %call2_401444)
  %1240 = load i64, i64* %3, align 8
  store i64 4296437, i64* %RSI.i3648, align 8
  store i64 4296437, i64* %RDX.i3615, align 8
  %1241 = load i64, i64* %RBP.i, align 8
  %1242 = add i64 %1241, -56
  %1243 = add i64 %1240, 11
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RDI.i3611.pre-phi, align 8
  %1246 = add i64 %1241, -44
  %1247 = add i64 %1240, 14
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RSI.i3648, align 8
  %1251 = add i64 %1240, 15300
  %1252 = add i64 %1240, 19
  %1253 = load i64, i64* %6, align 8
  %1254 = add i64 %1253, -8
  %1255 = inttoptr i64 %1254 to i64*
  store i64 %1252, i64* %1255, align 8
  store i64 %1254, i64* %6, align 8
  store i64 %1251, i64* %3, align 8
  %call2_40146a = tail call %struct.Memory* @sub_405020._Z13test_constantIh19custom_constant_andIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1251, %struct.Memory* %call2_401457)
  %1256 = load i64, i64* %3, align 8
  store i64 4296458, i64* %RSI.i3648, align 8
  store i64 4296458, i64* %RDX.i3615, align 8
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -56
  %1259 = add i64 %1256, 11
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i64*
  %1261 = load i64, i64* %1260, align 8
  store i64 %1261, i64* %RDI.i3611.pre-phi, align 8
  %1262 = add i64 %1257, -44
  %1263 = add i64 %1256, 14
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RSI.i3648, align 8
  %1267 = add i64 %1256, 15441
  %1268 = add i64 %1256, 19
  %1269 = load i64, i64* %6, align 8
  %1270 = add i64 %1269, -8
  %1271 = inttoptr i64 %1270 to i64*
  store i64 %1268, i64* %1271, align 8
  store i64 %1270, i64* %6, align 8
  store i64 %1267, i64* %3, align 8
  %call2_40147d = tail call %struct.Memory* @sub_4050c0._Z13test_constantIh28custom_multiple_constant_andIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1267, %struct.Memory* %call2_40146a)
  %1272 = load i64, i64* %3, align 8
  store i64 4296488, i64* %RSI.i3648, align 8
  store i64 4296488, i64* %RDX.i3615, align 8
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -56
  %1275 = add i64 %1272, 11
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RDI.i3611.pre-phi, align 8
  %1278 = add i64 %1273, -44
  %1279 = add i64 %1272, 14
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RSI.i3648, align 8
  %1283 = add i64 %1272, 15582
  %1284 = add i64 %1272, 19
  %1285 = load i64, i64* %6, align 8
  %1286 = add i64 %1285, -8
  %1287 = inttoptr i64 %1286 to i64*
  store i64 %1284, i64* %1287, align 8
  store i64 %1286, i64* %6, align 8
  store i64 %1283, i64* %3, align 8
  %call2_401490 = tail call %struct.Memory* @sub_405160._Z13test_constantIh18custom_constant_orIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1283, %struct.Memory* %call2_40147d)
  %1288 = load i64, i64* %3, align 8
  store i64 4296508, i64* %RSI.i3648, align 8
  store i64 4296508, i64* %RDX.i3615, align 8
  %1289 = load i64, i64* %RBP.i, align 8
  %1290 = add i64 %1289, -56
  %1291 = add i64 %1288, 11
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i64*
  %1293 = load i64, i64* %1292, align 8
  store i64 %1293, i64* %RDI.i3611.pre-phi, align 8
  %1294 = add i64 %1289, -44
  %1295 = add i64 %1288, 14
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RSI.i3648, align 8
  %1299 = add i64 %1288, 15723
  %1300 = add i64 %1288, 19
  %1301 = load i64, i64* %6, align 8
  %1302 = add i64 %1301, -8
  %1303 = inttoptr i64 %1302 to i64*
  store i64 %1300, i64* %1303, align 8
  store i64 %1302, i64* %6, align 8
  store i64 %1299, i64* %3, align 8
  %call2_4014a3 = tail call %struct.Memory* @sub_405200._Z13test_constantIh27custom_multiple_constant_orIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1299, %struct.Memory* %call2_401490)
  %1304 = load i64, i64* %3, align 8
  store i64 4296537, i64* %RSI.i3648, align 8
  store i64 4296537, i64* %RDX.i3615, align 8
  %1305 = load i64, i64* %RBP.i, align 8
  %1306 = add i64 %1305, -56
  %1307 = add i64 %1304, 11
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i64*
  %1309 = load i64, i64* %1308, align 8
  store i64 %1309, i64* %RDI.i3611.pre-phi, align 8
  %1310 = add i64 %1305, -44
  %1311 = add i64 %1304, 14
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RSI.i3648, align 8
  %1315 = add i64 %1304, 15864
  %1316 = add i64 %1304, 19
  %1317 = load i64, i64* %6, align 8
  %1318 = add i64 %1317, -8
  %1319 = inttoptr i64 %1318 to i64*
  store i64 %1316, i64* %1319, align 8
  store i64 %1318, i64* %6, align 8
  store i64 %1315, i64* %3, align 8
  %call2_4014b6 = tail call %struct.Memory* @sub_4052a0._Z13test_constantIh19custom_constant_xorIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1315, %struct.Memory* %call2_4014a3)
  %1320 = load i64, i64* %3, align 8
  store i64 4296558, i64* %RSI.i3648, align 8
  store i64 4296558, i64* %RDX.i3615, align 8
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -56
  %1323 = add i64 %1320, 11
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RDI.i3611.pre-phi, align 8
  %1326 = add i64 %1321, -44
  %1327 = add i64 %1320, 14
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RSI.i3648, align 8
  %1331 = add i64 %1320, 16005
  %1332 = add i64 %1320, 19
  %1333 = load i64, i64* %6, align 8
  %1334 = add i64 %1333, -8
  %1335 = inttoptr i64 %1334 to i64*
  store i64 %1332, i64* %1335, align 8
  store i64 %1334, i64* %6, align 8
  store i64 %1331, i64* %3, align 8
  %call2_4014c9 = tail call %struct.Memory* @sub_405340._Z13test_constantIh28custom_multiple_constant_xorIhEEvPT_iPKc(%struct.State* nonnull %0, i64 %1331, %struct.Memory* %call2_4014b6)
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 2231226
  %1338 = add i64 %1336, 8
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to double*
  %1340 = load double, double* %1339, align 8
  %1341 = tail call double @llvm.trunc.f64(double %1340)
  %1342 = tail call double @llvm.fabs.f64(double %1341)
  %1343 = fcmp ogt double %1342, 0x41DFFFFFFFC00000
  %1344 = fptosi double %1341 to i32
  %1345 = zext i32 %1344 to i64
  %1346 = select i1 %1343, i64 2147483648, i64 %1345
  store i64 6734928, i64* %200, align 8
  store i64 6734928, i64* %RAX.i3622, align 8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i2745 = bitcast %union.anon* %1347 to i16*
  %1348 = trunc i64 %1346 to i16
  store i16 %1348, i16* %R10W.i2745, align 2
  %sext17 = shl i64 %1346, 48
  %1349 = ashr exact i64 %sext17, 48
  %1350 = and i64 %1349, 4294967295
  store i64 %1350, i64* %RDX.i3615, align 8
  store i64 6750928, i64* %RSI.i3648, align 8
  store i64 6734928, i64* %RDI.i3611.pre-phi, align 8
  %1351 = load i64, i64* %RBP.i, align 8
  %1352 = add i64 %1351, -64
  %1353 = add i64 %1336, 37
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i64*
  store i64 6734928, i64* %1354, align 8
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, 16109
  %1357 = add i64 %1355, 5
  %1358 = load i64, i64* %6, align 8
  %1359 = add i64 %1358, -8
  %1360 = inttoptr i64 %1359 to i64*
  store i64 %1357, i64* %1360, align 8
  store i64 %1359, i64* %6, align 8
  store i64 %1356, i64* %3, align 8
  %call2_4014f3 = tail call %struct.Memory* @sub_4053e0._Z4fillIPssEvT_S1_T0_(%struct.State* nonnull %0, i64 %1356, %struct.Memory* %call2_4014c9)
  %1361 = load i64, i64* %3, align 8
  %1362 = add i64 %1361, 2231176
  %1363 = add i64 %1361, 6
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = add i64 %1361, 2231240
  %1367 = add i64 %1361, 12
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  store i32 %1365, i32* %1368, align 4
  %1369 = load i64, i64* %3, align 8
  store i64 4296589, i64* %RDX.i3615, align 8
  %1370 = load i64, i64* %RBP.i, align 8
  %1371 = add i64 %1370, -64
  %1372 = add i64 %1369, 9
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RDI.i3611.pre-phi, align 8
  %1375 = add i64 %1370, -44
  %1376 = add i64 %1369, 12
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RSI.i3648, align 8
  %1380 = add i64 %1369, 16156
  %1381 = add i64 %1369, 17
  %1382 = load i64, i64* %6, align 8
  %1383 = add i64 %1382, -8
  %1384 = inttoptr i64 %1383 to i64*
  store i64 %1381, i64* %1384, align 8
  store i64 %1383, i64* %6, align 8
  store i64 %1380, i64* %3, align 8
  %call2_401510 = tail call %struct.Memory* @sub_405420._Z13test_constantIs10custom_twoIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1380, %struct.Memory* %call2_4014f3)
  %1385 = load i64, i64* %3, align 8
  store i64 4296607, i64* %RSI.i3648, align 8
  store i64 4296607, i64* %RDX.i3615, align 8
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -64
  %1388 = add i64 %1385, 11
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RDI.i3611.pre-phi, align 8
  %1391 = add i64 %1386, -44
  %1392 = add i64 %1385, 14
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RSI.i3648, align 8
  %1396 = add i64 %1385, 16315
  %1397 = add i64 %1385, 19
  %1398 = load i64, i64* %6, align 8
  %1399 = add i64 %1398, -8
  %1400 = inttoptr i64 %1399 to i64*
  store i64 %1397, i64* %1400, align 8
  store i64 %1399, i64* %6, align 8
  store i64 %1396, i64* %3, align 8
  %call2_401523 = tail call %struct.Memory* @sub_4054d0._Z13test_constantIs20custom_add_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1396, %struct.Memory* %call2_401510)
  %1401 = load i64, i64* %3, align 8
  store i64 4296630, i64* %RSI.i3648, align 8
  store i64 4296630, i64* %RDX.i3615, align 8
  %1402 = load i64, i64* %RBP.i, align 8
  %1403 = add i64 %1402, -64
  %1404 = add i64 %1401, 11
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RDI.i3611.pre-phi, align 8
  %1407 = add i64 %1402, -44
  %1408 = add i64 %1401, 14
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RSI.i3648, align 8
  %1412 = add i64 %1401, 16472
  %1413 = add i64 %1401, 19
  %1414 = load i64, i64* %6, align 8
  %1415 = add i64 %1414, -8
  %1416 = inttoptr i64 %1415 to i64*
  store i64 %1413, i64* %1416, align 8
  store i64 %1415, i64* %6, align 8
  store i64 %1412, i64* %3, align 8
  %call2_401536 = tail call %struct.Memory* @sub_405580._Z13test_constantIs20custom_sub_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1412, %struct.Memory* %call2_401523)
  %1417 = load i64, i64* %3, align 8
  store i64 4296658, i64* %RSI.i3648, align 8
  store i64 4296658, i64* %RDX.i3615, align 8
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -64
  %1420 = add i64 %1417, 11
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i64*
  %1422 = load i64, i64* %1421, align 8
  store i64 %1422, i64* %RDI.i3611.pre-phi, align 8
  %1423 = add i64 %1418, -44
  %1424 = add i64 %1417, 14
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RSI.i3648, align 8
  %1428 = add i64 %1417, 16629
  %1429 = add i64 %1417, 19
  %1430 = load i64, i64* %6, align 8
  %1431 = add i64 %1430, -8
  %1432 = inttoptr i64 %1431 to i64*
  store i64 %1429, i64* %1432, align 8
  store i64 %1431, i64* %6, align 8
  store i64 %1428, i64* %3, align 8
  %call2_401549 = tail call %struct.Memory* @sub_405630._Z13test_constantIs25custom_multiply_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1428, %struct.Memory* %call2_401536)
  %1433 = load i64, i64* %3, align 8
  store i64 4296686, i64* %RSI.i3648, align 8
  store i64 4296686, i64* %RDX.i3615, align 8
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -64
  %1436 = add i64 %1433, 11
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %RDI.i3611.pre-phi, align 8
  %1439 = add i64 %1434, -44
  %1440 = add i64 %1433, 14
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  %1442 = load i32, i32* %1441, align 4
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RSI.i3648, align 8
  %1444 = add i64 %1433, 16786
  %1445 = add i64 %1433, 19
  %1446 = load i64, i64* %6, align 8
  %1447 = add i64 %1446, -8
  %1448 = inttoptr i64 %1447 to i64*
  store i64 %1445, i64* %1448, align 8
  store i64 %1447, i64* %6, align 8
  store i64 %1444, i64* %3, align 8
  %call2_40155c = tail call %struct.Memory* @sub_4056e0._Z13test_constantIs23custom_divide_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1444, %struct.Memory* %call2_401549)
  %1449 = load i64, i64* %3, align 8
  store i64 4296712, i64* %RSI.i3648, align 8
  store i64 4296712, i64* %RDX.i3615, align 8
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -64
  %1452 = add i64 %1449, 11
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %RDI.i3611.pre-phi, align 8
  %1455 = add i64 %1450, -44
  %1456 = add i64 %1449, 14
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = zext i32 %1458 to i64
  store i64 %1459, i64* %RSI.i3648, align 8
  %1460 = add i64 %1449, 16943
  %1461 = add i64 %1449, 19
  %1462 = load i64, i64* %6, align 8
  %1463 = add i64 %1462, -8
  %1464 = inttoptr i64 %1463 to i64*
  store i64 %1461, i64* %1464, align 8
  store i64 %1463, i64* %6, align 8
  store i64 %1460, i64* %3, align 8
  %call2_40156f = tail call %struct.Memory* @sub_405790._Z13test_constantIs20custom_mod_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1460, %struct.Memory* %call2_40155c)
  %1465 = load i64, i64* %3, align 8
  store i64 4296735, i64* %RSI.i3648, align 8
  store i64 4296735, i64* %RDX.i3615, align 8
  %1466 = load i64, i64* %RBP.i, align 8
  %1467 = add i64 %1466, -64
  %1468 = add i64 %1465, 11
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RDI.i3611.pre-phi, align 8
  %1471 = add i64 %1466, -44
  %1472 = add i64 %1465, 14
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RSI.i3648, align 8
  %1476 = add i64 %1465, 17100
  %1477 = add i64 %1465, 19
  %1478 = load i64, i64* %6, align 8
  %1479 = add i64 %1478, -8
  %1480 = inttoptr i64 %1479 to i64*
  store i64 %1477, i64* %1480, align 8
  store i64 %1479, i64* %6, align 8
  store i64 %1476, i64* %3, align 8
  %call2_401582 = tail call %struct.Memory* @sub_405840._Z13test_constantIs22custom_equal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1476, %struct.Memory* %call2_40156f)
  %1481 = load i64, i64* %3, align 8
  store i64 4296760, i64* %RSI.i3648, align 8
  store i64 4296760, i64* %RDX.i3615, align 8
  %1482 = load i64, i64* %RBP.i, align 8
  %1483 = add i64 %1482, -64
  %1484 = add i64 %1481, 11
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i64*
  %1486 = load i64, i64* %1485, align 8
  store i64 %1486, i64* %RDI.i3611.pre-phi, align 8
  %1487 = add i64 %1482, -44
  %1488 = add i64 %1481, 14
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RSI.i3648, align 8
  %1492 = add i64 %1481, 17257
  %1493 = add i64 %1481, 19
  %1494 = load i64, i64* %6, align 8
  %1495 = add i64 %1494, -8
  %1496 = inttoptr i64 %1495 to i64*
  store i64 %1493, i64* %1496, align 8
  store i64 %1495, i64* %6, align 8
  store i64 %1492, i64* %3, align 8
  %call2_401595 = tail call %struct.Memory* @sub_4058f0._Z13test_constantIs25custom_notequal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1492, %struct.Memory* %call2_401582)
  %1497 = load i64, i64* %3, align 8
  store i64 4296788, i64* %RSI.i3648, align 8
  store i64 4296788, i64* %RDX.i3615, align 8
  %1498 = load i64, i64* %RBP.i, align 8
  %1499 = add i64 %1498, -64
  %1500 = add i64 %1497, 11
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RDI.i3611.pre-phi, align 8
  %1503 = add i64 %1498, -44
  %1504 = add i64 %1497, 14
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RSI.i3648, align 8
  %1508 = add i64 %1497, 17414
  %1509 = add i64 %1497, 19
  %1510 = load i64, i64* %6, align 8
  %1511 = add i64 %1510, -8
  %1512 = inttoptr i64 %1511 to i64*
  store i64 %1509, i64* %1512, align 8
  store i64 %1511, i64* %6, align 8
  store i64 %1508, i64* %3, align 8
  %call2_4015a8 = tail call %struct.Memory* @sub_4059a0._Z13test_constantIs28custom_greaterthan_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1508, %struct.Memory* %call2_401595)
  %1513 = load i64, i64* %3, align 8
  store i64 4296820, i64* %RSI.i3648, align 8
  store i64 4296820, i64* %RDX.i3615, align 8
  %1514 = load i64, i64* %RBP.i, align 8
  %1515 = add i64 %1514, -64
  %1516 = add i64 %1513, 11
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i64*
  %1518 = load i64, i64* %1517, align 8
  store i64 %1518, i64* %RDI.i3611.pre-phi, align 8
  %1519 = add i64 %1514, -44
  %1520 = add i64 %1513, 14
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RSI.i3648, align 8
  %1524 = add i64 %1513, 17571
  %1525 = add i64 %1513, 19
  %1526 = load i64, i64* %6, align 8
  %1527 = add i64 %1526, -8
  %1528 = inttoptr i64 %1527 to i64*
  store i64 %1525, i64* %1528, align 8
  store i64 %1527, i64* %6, align 8
  store i64 %1524, i64* %3, align 8
  %call2_4015bb = tail call %struct.Memory* @sub_405a50._Z13test_constantIs25custom_lessthan_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1524, %struct.Memory* %call2_4015a8)
  %1529 = load i64, i64* %3, align 8
  store i64 4296849, i64* %RSI.i3648, align 8
  store i64 4296849, i64* %RDX.i3615, align 8
  %1530 = load i64, i64* %RBP.i, align 8
  %1531 = add i64 %1530, -64
  %1532 = add i64 %1529, 11
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i64*
  %1534 = load i64, i64* %1533, align 8
  store i64 %1534, i64* %RDI.i3611.pre-phi, align 8
  %1535 = add i64 %1530, -44
  %1536 = add i64 %1529, 14
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RSI.i3648, align 8
  %1540 = add i64 %1529, 17728
  %1541 = add i64 %1529, 19
  %1542 = load i64, i64* %6, align 8
  %1543 = add i64 %1542, -8
  %1544 = inttoptr i64 %1543 to i64*
  store i64 %1541, i64* %1544, align 8
  store i64 %1543, i64* %6, align 8
  store i64 %1540, i64* %3, align 8
  %call2_4015ce = tail call %struct.Memory* @sub_405b00._Z13test_constantIs33custom_greaterthanequal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1540, %struct.Memory* %call2_4015bb)
  %1545 = load i64, i64* %3, align 8
  store i64 4296887, i64* %RSI.i3648, align 8
  store i64 4296887, i64* %RDX.i3615, align 8
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -64
  %1548 = add i64 %1545, 11
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i64*
  %1550 = load i64, i64* %1549, align 8
  store i64 %1550, i64* %RDI.i3611.pre-phi, align 8
  %1551 = add i64 %1546, -44
  %1552 = add i64 %1545, 14
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i32*
  %1554 = load i32, i32* %1553, align 4
  %1555 = zext i32 %1554 to i64
  store i64 %1555, i64* %RSI.i3648, align 8
  %1556 = add i64 %1545, 17885
  %1557 = add i64 %1545, 19
  %1558 = load i64, i64* %6, align 8
  %1559 = add i64 %1558, -8
  %1560 = inttoptr i64 %1559 to i64*
  store i64 %1557, i64* %1560, align 8
  store i64 %1559, i64* %6, align 8
  store i64 %1556, i64* %3, align 8
  %call2_4015e1 = tail call %struct.Memory* @sub_405bb0._Z13test_constantIs30custom_lessthanequal_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1556, %struct.Memory* %call2_4015ce)
  %1561 = load i64, i64* %3, align 8
  store i64 4296922, i64* %RSI.i3648, align 8
  store i64 4296922, i64* %RDX.i3615, align 8
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -64
  %1564 = add i64 %1561, 11
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i64*
  %1566 = load i64, i64* %1565, align 8
  store i64 %1566, i64* %RDI.i3611.pre-phi, align 8
  %1567 = add i64 %1562, -44
  %1568 = add i64 %1561, 14
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RSI.i3648, align 8
  %1572 = add i64 %1561, 18042
  %1573 = add i64 %1561, 19
  %1574 = load i64, i64* %6, align 8
  %1575 = add i64 %1574, -8
  %1576 = inttoptr i64 %1575 to i64*
  store i64 %1573, i64* %1576, align 8
  store i64 %1575, i64* %6, align 8
  store i64 %1572, i64* %3, align 8
  %call2_4015f4 = tail call %struct.Memory* @sub_405c60._Z13test_constantIs20custom_and_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1572, %struct.Memory* %call2_4015e1)
  %1577 = load i64, i64* %3, align 8
  store i64 4296945, i64* %RSI.i3648, align 8
  store i64 4296945, i64* %RDX.i3615, align 8
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -64
  %1580 = add i64 %1577, 11
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i64*
  %1582 = load i64, i64* %1581, align 8
  store i64 %1582, i64* %RDI.i3611.pre-phi, align 8
  %1583 = add i64 %1578, -44
  %1584 = add i64 %1577, 14
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RSI.i3648, align 8
  %1588 = add i64 %1577, 18199
  %1589 = add i64 %1577, 19
  %1590 = load i64, i64* %6, align 8
  %1591 = add i64 %1590, -8
  %1592 = inttoptr i64 %1591 to i64*
  store i64 %1589, i64* %1592, align 8
  store i64 %1591, i64* %6, align 8
  store i64 %1588, i64* %3, align 8
  %call2_401607 = tail call %struct.Memory* @sub_405d10._Z13test_constantIs19custom_or_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1588, %struct.Memory* %call2_4015f4)
  %1593 = load i64, i64* %3, align 8
  store i64 4296967, i64* %RSI.i3648, align 8
  store i64 4296967, i64* %RDX.i3615, align 8
  %1594 = load i64, i64* %RBP.i, align 8
  %1595 = add i64 %1594, -64
  %1596 = add i64 %1593, 11
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i64*
  %1598 = load i64, i64* %1597, align 8
  store i64 %1598, i64* %RDI.i3611.pre-phi, align 8
  %1599 = add i64 %1594, -44
  %1600 = add i64 %1593, 14
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RSI.i3648, align 8
  %1604 = add i64 %1593, 18356
  %1605 = add i64 %1593, 19
  %1606 = load i64, i64* %6, align 8
  %1607 = add i64 %1606, -8
  %1608 = inttoptr i64 %1607 to i64*
  store i64 %1605, i64* %1608, align 8
  store i64 %1607, i64* %6, align 8
  store i64 %1604, i64* %3, align 8
  %call2_40161a = tail call %struct.Memory* @sub_405dc0._Z13test_constantIs20custom_xor_constantsIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1604, %struct.Memory* %call2_401607)
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 2230881
  %1611 = add i64 %1609, 7
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i32*
  %1613 = load i32, i32* %1612, align 4
  %1614 = sext i32 %1613 to i64
  %1615 = mul nsw i64 %1614, 1717986919
  %1616 = lshr i64 %1615, 63
  store i64 %1616, i64* %RCX.i3620, align 8
  %1617 = trunc i64 %1616 to i32
  %1618 = ashr i64 %1615, 34
  store i64 %1618, i64* %RAX.i3622, align 8
  %1619 = trunc i64 %1618 to i32
  %1620 = add i32 %1617, %1619
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %200, align 8
  %1622 = icmp ult i32 %1620, %1619
  %1623 = icmp ult i32 %1620, %1617
  %1624 = or i1 %1622, %1623
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %14, align 1
  %1626 = and i32 %1620, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %21, align 1
  %1631 = trunc i64 %1618 to i32
  %1632 = xor i32 %1631, %1620
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %27, align 1
  %1636 = icmp eq i32 %1620, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %30, align 1
  %1638 = lshr i32 %1620, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %33, align 1
  %1640 = lshr i64 %1618, 31
  %1641 = trunc i64 %1640 to i32
  %1642 = and i32 %1641, 1
  %1643 = xor i32 %1638, %1642
  %1644 = add nuw nsw i32 %1643, %1638
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %39, align 1
  %1647 = add i64 %1609, 2230945
  %1648 = add i64 %1609, 40
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  store i32 %1620, i32* %1649, align 4
  %1650 = load i64, i64* %3, align 8
  store i64 4296990, i64* %RSI.i3648, align 8
  store i64 4296990, i64* %RDX.i3615, align 8
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -64
  %1653 = add i64 %1650, 11
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RDI.i3611.pre-phi, align 8
  %1656 = add i64 %1651, -44
  %1657 = add i64 %1650, 14
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = zext i32 %1659 to i64
  store i64 %1660, i64* %RSI.i3648, align 8
  %1661 = add i64 %1650, 18473
  %1662 = add i64 %1650, 19
  %1663 = load i64, i64* %6, align 8
  %1664 = add i64 %1663, -8
  %1665 = inttoptr i64 %1664 to i64*
  store i64 %1662, i64* %1665, align 8
  store i64 %1664, i64* %6, align 8
  store i64 %1661, i64* %3, align 8
  %call2_401655 = tail call %struct.Memory* @sub_405e70._Z13test_constantIs19custom_constant_addIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1661, %struct.Memory* %call2_40161a)
  %1666 = load i64, i64* %3, align 8
  store i64 4297012, i64* %RSI.i3648, align 8
  store i64 4297012, i64* %RDX.i3615, align 8
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -64
  %1669 = add i64 %1666, 11
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i64*
  %1671 = load i64, i64* %1670, align 8
  store i64 %1671, i64* %RDI.i3611.pre-phi, align 8
  %1672 = add i64 %1667, -44
  %1673 = add i64 %1666, 14
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RSI.i3648, align 8
  %1677 = add i64 %1666, 18630
  %1678 = add i64 %1666, 19
  %1679 = load i64, i64* %6, align 8
  %1680 = add i64 %1679, -8
  %1681 = inttoptr i64 %1680 to i64*
  store i64 %1678, i64* %1681, align 8
  store i64 %1680, i64* %6, align 8
  store i64 %1677, i64* %3, align 8
  %call2_401668 = tail call %struct.Memory* @sub_405f20._Z13test_constantIs28custom_multiple_constant_addIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1677, %struct.Memory* %call2_401655)
  %1682 = load i64, i64* %3, align 8
  store i64 4297044, i64* %RSI.i3648, align 8
  store i64 4297044, i64* %RDX.i3615, align 8
  %1683 = load i64, i64* %RBP.i, align 8
  %1684 = add i64 %1683, -64
  %1685 = add i64 %1682, 11
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i64*
  %1687 = load i64, i64* %1686, align 8
  store i64 %1687, i64* %RDI.i3611.pre-phi, align 8
  %1688 = add i64 %1683, -44
  %1689 = add i64 %1682, 14
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i32*
  %1691 = load i32, i32* %1690, align 4
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RSI.i3648, align 8
  %1693 = add i64 %1682, 18787
  %1694 = add i64 %1682, 19
  %1695 = load i64, i64* %6, align 8
  %1696 = add i64 %1695, -8
  %1697 = inttoptr i64 %1696 to i64*
  store i64 %1694, i64* %1697, align 8
  store i64 %1696, i64* %6, align 8
  store i64 %1693, i64* %3, align 8
  %call2_40167b = tail call %struct.Memory* @sub_405fd0._Z13test_constantIs19custom_constant_subIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1693, %struct.Memory* %call2_401668)
  %1698 = load i64, i64* %3, align 8
  store i64 4297071, i64* %RSI.i3648, align 8
  store i64 4297071, i64* %RDX.i3615, align 8
  %1699 = load i64, i64* %RBP.i, align 8
  %1700 = add i64 %1699, -64
  %1701 = add i64 %1698, 11
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %RDI.i3611.pre-phi, align 8
  %1704 = add i64 %1699, -44
  %1705 = add i64 %1698, 14
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = zext i32 %1707 to i64
  store i64 %1708, i64* %RSI.i3648, align 8
  %1709 = add i64 %1698, 18944
  %1710 = add i64 %1698, 19
  %1711 = load i64, i64* %6, align 8
  %1712 = add i64 %1711, -8
  %1713 = inttoptr i64 %1712 to i64*
  store i64 %1710, i64* %1713, align 8
  store i64 %1712, i64* %6, align 8
  store i64 %1709, i64* %3, align 8
  %call2_40168e = tail call %struct.Memory* @sub_406080._Z13test_constantIs28custom_multiple_constant_subIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1709, %struct.Memory* %call2_40167b)
  %1714 = load i64, i64* %3, align 8
  store i64 4297108, i64* %RSI.i3648, align 8
  store i64 4297108, i64* %RDX.i3615, align 8
  %1715 = load i64, i64* %RBP.i, align 8
  %1716 = add i64 %1715, -64
  %1717 = add i64 %1714, 11
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i64*
  %1719 = load i64, i64* %1718, align 8
  store i64 %1719, i64* %RDI.i3611.pre-phi, align 8
  %1720 = add i64 %1715, -44
  %1721 = add i64 %1714, 14
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RSI.i3648, align 8
  %1725 = add i64 %1714, 19101
  %1726 = add i64 %1714, 19
  %1727 = load i64, i64* %6, align 8
  %1728 = add i64 %1727, -8
  %1729 = inttoptr i64 %1728 to i64*
  store i64 %1726, i64* %1729, align 8
  store i64 %1728, i64* %6, align 8
  store i64 %1725, i64* %3, align 8
  %call2_4016a1 = tail call %struct.Memory* @sub_406130._Z13test_constantIs24custom_constant_multiplyIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1725, %struct.Memory* %call2_40168e)
  %1730 = load i64, i64* %3, align 8
  store i64 4297135, i64* %RSI.i3648, align 8
  store i64 4297135, i64* %RDX.i3615, align 8
  %1731 = load i64, i64* %RBP.i, align 8
  %1732 = add i64 %1731, -64
  %1733 = add i64 %1730, 11
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i64*
  %1735 = load i64, i64* %1734, align 8
  store i64 %1735, i64* %RDI.i3611.pre-phi, align 8
  %1736 = add i64 %1731, -44
  %1737 = add i64 %1730, 14
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RSI.i3648, align 8
  %1741 = add i64 %1730, 19258
  %1742 = add i64 %1730, 19
  %1743 = load i64, i64* %6, align 8
  %1744 = add i64 %1743, -8
  %1745 = inttoptr i64 %1744 to i64*
  store i64 %1742, i64* %1745, align 8
  store i64 %1744, i64* %6, align 8
  store i64 %1741, i64* %3, align 8
  %call2_4016b4 = tail call %struct.Memory* @sub_4061e0._Z13test_constantIs33custom_multiple_constant_multiplyIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1741, %struct.Memory* %call2_4016a1)
  %1746 = load i64, i64* %3, align 8
  store i64 4297173, i64* %RSI.i3648, align 8
  store i64 4297173, i64* %RDX.i3615, align 8
  %1747 = load i64, i64* %RBP.i, align 8
  %1748 = add i64 %1747, -64
  %1749 = add i64 %1746, 11
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i64*
  %1751 = load i64, i64* %1750, align 8
  store i64 %1751, i64* %RDI.i3611.pre-phi, align 8
  %1752 = add i64 %1747, -44
  %1753 = add i64 %1746, 14
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RSI.i3648, align 8
  %1757 = add i64 %1746, 19415
  %1758 = add i64 %1746, 19
  %1759 = load i64, i64* %6, align 8
  %1760 = add i64 %1759, -8
  %1761 = inttoptr i64 %1760 to i64*
  store i64 %1758, i64* %1761, align 8
  store i64 %1760, i64* %6, align 8
  store i64 %1757, i64* %3, align 8
  %call2_4016c7 = tail call %struct.Memory* @sub_406290._Z13test_constantIs34custom_multiple_constant_multiply2IsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1757, %struct.Memory* %call2_4016b4)
  %1762 = load i64, i64* %3, align 8
  store i64 4297210, i64* %RSI.i3648, align 8
  store i64 4297210, i64* %RDX.i3615, align 8
  %1763 = load i64, i64* %RBP.i, align 8
  %1764 = add i64 %1763, -64
  %1765 = add i64 %1762, 11
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i64*
  %1767 = load i64, i64* %1766, align 8
  store i64 %1767, i64* %RDI.i3611.pre-phi, align 8
  %1768 = add i64 %1763, -44
  %1769 = add i64 %1762, 14
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RSI.i3648, align 8
  %1773 = add i64 %1762, 19572
  %1774 = add i64 %1762, 19
  %1775 = load i64, i64* %6, align 8
  %1776 = add i64 %1775, -8
  %1777 = inttoptr i64 %1776 to i64*
  store i64 %1774, i64* %1777, align 8
  store i64 %1776, i64* %6, align 8
  store i64 %1773, i64* %3, align 8
  %call2_4016da = tail call %struct.Memory* @sub_406340._Z13test_constantIs22custom_constant_divideIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1773, %struct.Memory* %call2_4016c7)
  %1778 = load i64, i64* %3, align 8
  store i64 4297235, i64* %RSI.i3648, align 8
  store i64 4297235, i64* %RDX.i3615, align 8
  %1779 = load i64, i64* %RBP.i, align 8
  %1780 = add i64 %1779, -64
  %1781 = add i64 %1778, 11
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i64*
  %1783 = load i64, i64* %1782, align 8
  store i64 %1783, i64* %RDI.i3611.pre-phi, align 8
  %1784 = add i64 %1779, -44
  %1785 = add i64 %1778, 14
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RSI.i3648, align 8
  %1789 = add i64 %1778, 19729
  %1790 = add i64 %1778, 19
  %1791 = load i64, i64* %6, align 8
  %1792 = add i64 %1791, -8
  %1793 = inttoptr i64 %1792 to i64*
  store i64 %1790, i64* %1793, align 8
  store i64 %1792, i64* %6, align 8
  store i64 %1789, i64* %3, align 8
  %call2_4016ed = tail call %struct.Memory* @sub_4063f0._Z13test_constantIs31custom_multiple_constant_divideIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1789, %struct.Memory* %call2_4016da)
  %1794 = load i64, i64* %3, align 8
  store i64 4297270, i64* %RSI.i3648, align 8
  store i64 4297270, i64* %RDX.i3615, align 8
  %1795 = load i64, i64* %RBP.i, align 8
  %1796 = add i64 %1795, -64
  %1797 = add i64 %1794, 11
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i64*
  %1799 = load i64, i64* %1798, align 8
  store i64 %1799, i64* %RDI.i3611.pre-phi, align 8
  %1800 = add i64 %1795, -44
  %1801 = add i64 %1794, 14
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RSI.i3648, align 8
  %1805 = add i64 %1794, 19886
  %1806 = add i64 %1794, 19
  %1807 = load i64, i64* %6, align 8
  %1808 = add i64 %1807, -8
  %1809 = inttoptr i64 %1808 to i64*
  store i64 %1806, i64* %1809, align 8
  store i64 %1808, i64* %6, align 8
  store i64 %1805, i64* %3, align 8
  %call2_401700 = tail call %struct.Memory* @sub_4064a0._Z13test_constantIs32custom_multiple_constant_divide2IsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1805, %struct.Memory* %call2_4016ed)
  %1810 = load i64, i64* %3, align 8
  store i64 4297305, i64* %RSI.i3648, align 8
  store i64 4297305, i64* %RDX.i3615, align 8
  %1811 = load i64, i64* %RBP.i, align 8
  %1812 = add i64 %1811, -64
  %1813 = add i64 %1810, 11
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i64*
  %1815 = load i64, i64* %1814, align 8
  store i64 %1815, i64* %RDI.i3611.pre-phi, align 8
  %1816 = add i64 %1811, -44
  %1817 = add i64 %1810, 14
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i32*
  %1819 = load i32, i32* %1818, align 4
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RSI.i3648, align 8
  %1821 = add i64 %1810, 20043
  %1822 = add i64 %1810, 19
  %1823 = load i64, i64* %6, align 8
  %1824 = add i64 %1823, -8
  %1825 = inttoptr i64 %1824 to i64*
  store i64 %1822, i64* %1825, align 8
  store i64 %1824, i64* %6, align 8
  store i64 %1821, i64* %3, align 8
  %call2_401713 = tail call %struct.Memory* @sub_406550._Z13test_constantIs30custom_multiple_constant_mixedIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1821, %struct.Memory* %call2_401700)
  %1826 = load i64, i64* %3, align 8
  store i64 4297338, i64* %RSI.i3648, align 8
  store i64 4297338, i64* %RDX.i3615, align 8
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -64
  %1829 = add i64 %1826, 11
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RDI.i3611.pre-phi, align 8
  %1832 = add i64 %1827, -44
  %1833 = add i64 %1826, 14
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RSI.i3648, align 8
  %1837 = add i64 %1826, 20200
  %1838 = add i64 %1826, 19
  %1839 = load i64, i64* %6, align 8
  %1840 = add i64 %1839, -8
  %1841 = inttoptr i64 %1840 to i64*
  store i64 %1838, i64* %1841, align 8
  store i64 %1840, i64* %6, align 8
  store i64 %1837, i64* %3, align 8
  %call2_401726 = tail call %struct.Memory* @sub_406600._Z13test_constantIs19custom_constant_andIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1837, %struct.Memory* %call2_401713)
  %1842 = load i64, i64* %3, align 8
  store i64 4297360, i64* %RSI.i3648, align 8
  store i64 4297360, i64* %RDX.i3615, align 8
  %1843 = load i64, i64* %RBP.i, align 8
  %1844 = add i64 %1843, -64
  %1845 = add i64 %1842, 11
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RDI.i3611.pre-phi, align 8
  %1848 = add i64 %1843, -44
  %1849 = add i64 %1842, 14
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RSI.i3648, align 8
  %1853 = add i64 %1842, 20357
  %1854 = add i64 %1842, 19
  %1855 = load i64, i64* %6, align 8
  %1856 = add i64 %1855, -8
  %1857 = inttoptr i64 %1856 to i64*
  store i64 %1854, i64* %1857, align 8
  store i64 %1856, i64* %6, align 8
  store i64 %1853, i64* %3, align 8
  %call2_401739 = tail call %struct.Memory* @sub_4066b0._Z13test_constantIs28custom_multiple_constant_andIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1853, %struct.Memory* %call2_401726)
  %1858 = load i64, i64* %3, align 8
  store i64 4297391, i64* %RSI.i3648, align 8
  store i64 4297391, i64* %RDX.i3615, align 8
  %1859 = load i64, i64* %RBP.i, align 8
  %1860 = add i64 %1859, -64
  %1861 = add i64 %1858, 11
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i64*
  %1863 = load i64, i64* %1862, align 8
  store i64 %1863, i64* %RDI.i3611.pre-phi, align 8
  %1864 = add i64 %1859, -44
  %1865 = add i64 %1858, 14
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RSI.i3648, align 8
  %1869 = add i64 %1858, 20514
  %1870 = add i64 %1858, 19
  %1871 = load i64, i64* %6, align 8
  %1872 = add i64 %1871, -8
  %1873 = inttoptr i64 %1872 to i64*
  store i64 %1870, i64* %1873, align 8
  store i64 %1872, i64* %6, align 8
  store i64 %1869, i64* %3, align 8
  %call2_40174c = tail call %struct.Memory* @sub_406760._Z13test_constantIs18custom_constant_orIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1869, %struct.Memory* %call2_401739)
  %1874 = load i64, i64* %3, align 8
  store i64 4297412, i64* %RSI.i3648, align 8
  store i64 4297412, i64* %RDX.i3615, align 8
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -64
  %1877 = add i64 %1874, 11
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i64*
  %1879 = load i64, i64* %1878, align 8
  store i64 %1879, i64* %RDI.i3611.pre-phi, align 8
  %1880 = add i64 %1875, -44
  %1881 = add i64 %1874, 14
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RSI.i3648, align 8
  %1885 = add i64 %1874, 20671
  %1886 = add i64 %1874, 19
  %1887 = load i64, i64* %6, align 8
  %1888 = add i64 %1887, -8
  %1889 = inttoptr i64 %1888 to i64*
  store i64 %1886, i64* %1889, align 8
  store i64 %1888, i64* %6, align 8
  store i64 %1885, i64* %3, align 8
  %call2_40175f = tail call %struct.Memory* @sub_406810._Z13test_constantIs27custom_multiple_constant_orIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1885, %struct.Memory* %call2_40174c)
  %1890 = load i64, i64* %3, align 8
  store i64 4297442, i64* %RSI.i3648, align 8
  store i64 4297442, i64* %RDX.i3615, align 8
  %1891 = load i64, i64* %RBP.i, align 8
  %1892 = add i64 %1891, -64
  %1893 = add i64 %1890, 11
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i64*
  %1895 = load i64, i64* %1894, align 8
  store i64 %1895, i64* %RDI.i3611.pre-phi, align 8
  %1896 = add i64 %1891, -44
  %1897 = add i64 %1890, 14
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1896 to i32*
  %1899 = load i32, i32* %1898, align 4
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RSI.i3648, align 8
  %1901 = add i64 %1890, 20828
  %1902 = add i64 %1890, 19
  %1903 = load i64, i64* %6, align 8
  %1904 = add i64 %1903, -8
  %1905 = inttoptr i64 %1904 to i64*
  store i64 %1902, i64* %1905, align 8
  store i64 %1904, i64* %6, align 8
  store i64 %1901, i64* %3, align 8
  %call2_401772 = tail call %struct.Memory* @sub_4068c0._Z13test_constantIs19custom_constant_xorIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1901, %struct.Memory* %call2_40175f)
  %1906 = load i64, i64* %3, align 8
  store i64 4297464, i64* %RSI.i3648, align 8
  store i64 4297464, i64* %RDX.i3615, align 8
  %1907 = load i64, i64* %RBP.i, align 8
  %1908 = add i64 %1907, -64
  %1909 = add i64 %1906, 11
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i64*
  %1911 = load i64, i64* %1910, align 8
  store i64 %1911, i64* %RDI.i3611.pre-phi, align 8
  %1912 = add i64 %1907, -44
  %1913 = add i64 %1906, 14
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  %1915 = load i32, i32* %1914, align 4
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RSI.i3648, align 8
  %1917 = add i64 %1906, 20985
  %1918 = add i64 %1906, 19
  %1919 = load i64, i64* %6, align 8
  %1920 = add i64 %1919, -8
  %1921 = inttoptr i64 %1920 to i64*
  store i64 %1918, i64* %1921, align 8
  store i64 %1920, i64* %6, align 8
  store i64 %1917, i64* %3, align 8
  %call2_401785 = tail call %struct.Memory* @sub_406970._Z13test_constantIs28custom_multiple_constant_xorIsEEvPT_iPKc(%struct.State* nonnull %0, i64 %1917, %struct.Memory* %call2_401772)
  %1922 = load i64, i64* %3, align 8
  %1923 = add i64 %1922, 2230526
  %1924 = add i64 %1922, 8
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to double*
  %1926 = load double, double* %1925, align 8
  %1927 = tail call double @llvm.trunc.f64(double %1926)
  %1928 = tail call double @llvm.fabs.f64(double %1927)
  %1929 = fcmp ogt double %1928, 0x41DFFFFFFFC00000
  %1930 = fptosi double %1927 to i32
  %1931 = zext i32 %1930 to i64
  %1932 = select i1 %1929, i64 2147483648, i64 %1931
  store i64 6718928, i64* %200, align 8
  store i64 6718928, i64* %RAX.i3622, align 8
  %1933 = trunc i64 %1932 to i16
  store i16 %1933, i16* %R10W.i2745, align 2
  %1934 = and i64 %1932, 65535
  store i64 %1934, i64* %RDX.i3615, align 8
  store i64 6734928, i64* %RSI.i3648, align 8
  store i64 6718928, i64* %RDI.i3611.pre-phi, align 8
  %1935 = load i64, i64* %RBP.i, align 8
  %1936 = add i64 %1935, -72
  %1937 = add i64 %1922, 37
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i64*
  store i64 6718928, i64* %1938, align 8
  %1939 = load i64, i64* %3, align 8
  %1940 = add i64 %1939, 21105
  %1941 = add i64 %1939, 5
  %1942 = load i64, i64* %6, align 8
  %1943 = add i64 %1942, -8
  %1944 = inttoptr i64 %1943 to i64*
  store i64 %1941, i64* %1944, align 8
  store i64 %1943, i64* %6, align 8
  store i64 %1940, i64* %3, align 8
  %call2_4017af = tail call %struct.Memory* @sub_406a20._Z4fillIPttEvT_S1_T0_(%struct.State* nonnull %0, i64 %1940, %struct.Memory* %call2_401785)
  %1945 = load i64, i64* %3, align 8
  %1946 = add i64 %1945, 2230476
  %1947 = add i64 %1945, 6
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = add i64 %1945, 2230540
  %1951 = add i64 %1945, 12
  store i64 %1951, i64* %3, align 8
  %1952 = inttoptr i64 %1950 to i32*
  store i32 %1949, i32* %1952, align 4
  %1953 = load i64, i64* %3, align 8
  store i64 4296588, i64* %RDX.i3615, align 8
  %1954 = load i64, i64* %RBP.i, align 8
  %1955 = add i64 %1954, -72
  %1956 = add i64 %1953, 9
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i64*
  %1958 = load i64, i64* %1957, align 8
  store i64 %1958, i64* %RDI.i3611.pre-phi, align 8
  %1959 = add i64 %1954, -44
  %1960 = add i64 %1953, 12
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RSI.i3648, align 8
  %1964 = add i64 %1953, 21152
  %1965 = add i64 %1953, 17
  %1966 = load i64, i64* %6, align 8
  %1967 = add i64 %1966, -8
  %1968 = inttoptr i64 %1967 to i64*
  store i64 %1965, i64* %1968, align 8
  store i64 %1967, i64* %6, align 8
  store i64 %1964, i64* %3, align 8
  %call2_4017cc = tail call %struct.Memory* @sub_406a60._Z13test_constantIt10custom_twoItEEvPT_iPKc(%struct.State* nonnull %0, i64 %1964, %struct.Memory* %call2_4017af)
  %1969 = load i64, i64* %3, align 8
  store i64 4296606, i64* %RSI.i3648, align 8
  store i64 4296606, i64* %RDX.i3615, align 8
  %1970 = load i64, i64* %RBP.i, align 8
  %1971 = add i64 %1970, -72
  %1972 = add i64 %1969, 11
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i64*
  %1974 = load i64, i64* %1973, align 8
  store i64 %1974, i64* %RDI.i3611.pre-phi, align 8
  %1975 = add i64 %1970, -44
  %1976 = add i64 %1969, 14
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RSI.i3648, align 8
  %1980 = add i64 %1969, 21311
  %1981 = add i64 %1969, 19
  %1982 = load i64, i64* %6, align 8
  %1983 = add i64 %1982, -8
  %1984 = inttoptr i64 %1983 to i64*
  store i64 %1981, i64* %1984, align 8
  store i64 %1983, i64* %6, align 8
  store i64 %1980, i64* %3, align 8
  %call2_4017df = tail call %struct.Memory* @sub_406b10._Z13test_constantIt20custom_add_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %1980, %struct.Memory* %call2_4017cc)
  %1985 = load i64, i64* %3, align 8
  store i64 4296629, i64* %RSI.i3648, align 8
  store i64 4296629, i64* %RDX.i3615, align 8
  %1986 = load i64, i64* %RBP.i, align 8
  %1987 = add i64 %1986, -72
  %1988 = add i64 %1985, 11
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i64*
  %1990 = load i64, i64* %1989, align 8
  store i64 %1990, i64* %RDI.i3611.pre-phi, align 8
  %1991 = add i64 %1986, -44
  %1992 = add i64 %1985, 14
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = zext i32 %1994 to i64
  store i64 %1995, i64* %RSI.i3648, align 8
  %1996 = add i64 %1985, 21468
  %1997 = add i64 %1985, 19
  %1998 = load i64, i64* %6, align 8
  %1999 = add i64 %1998, -8
  %2000 = inttoptr i64 %1999 to i64*
  store i64 %1997, i64* %2000, align 8
  store i64 %1999, i64* %6, align 8
  store i64 %1996, i64* %3, align 8
  %call2_4017f2 = tail call %struct.Memory* @sub_406bc0._Z13test_constantIt20custom_sub_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %1996, %struct.Memory* %call2_4017df)
  %2001 = load i64, i64* %3, align 8
  store i64 4296657, i64* %RSI.i3648, align 8
  store i64 4296657, i64* %RDX.i3615, align 8
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -72
  %2004 = add i64 %2001, 11
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i64*
  %2006 = load i64, i64* %2005, align 8
  store i64 %2006, i64* %RDI.i3611.pre-phi, align 8
  %2007 = add i64 %2002, -44
  %2008 = add i64 %2001, 14
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i32*
  %2010 = load i32, i32* %2009, align 4
  %2011 = zext i32 %2010 to i64
  store i64 %2011, i64* %RSI.i3648, align 8
  %2012 = add i64 %2001, 21625
  %2013 = add i64 %2001, 19
  %2014 = load i64, i64* %6, align 8
  %2015 = add i64 %2014, -8
  %2016 = inttoptr i64 %2015 to i64*
  store i64 %2013, i64* %2016, align 8
  store i64 %2015, i64* %6, align 8
  store i64 %2012, i64* %3, align 8
  %call2_401805 = tail call %struct.Memory* @sub_406c70._Z13test_constantIt25custom_multiply_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2012, %struct.Memory* %call2_4017f2)
  %2017 = load i64, i64* %3, align 8
  store i64 4296685, i64* %RSI.i3648, align 8
  store i64 4296685, i64* %RDX.i3615, align 8
  %2018 = load i64, i64* %RBP.i, align 8
  %2019 = add i64 %2018, -72
  %2020 = add i64 %2017, 11
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i64*
  %2022 = load i64, i64* %2021, align 8
  store i64 %2022, i64* %RDI.i3611.pre-phi, align 8
  %2023 = add i64 %2018, -44
  %2024 = add i64 %2017, 14
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = zext i32 %2026 to i64
  store i64 %2027, i64* %RSI.i3648, align 8
  %2028 = add i64 %2017, 21782
  %2029 = add i64 %2017, 19
  %2030 = load i64, i64* %6, align 8
  %2031 = add i64 %2030, -8
  %2032 = inttoptr i64 %2031 to i64*
  store i64 %2029, i64* %2032, align 8
  store i64 %2031, i64* %6, align 8
  store i64 %2028, i64* %3, align 8
  %call2_401818 = tail call %struct.Memory* @sub_406d20._Z13test_constantIt23custom_divide_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2028, %struct.Memory* %call2_401805)
  %2033 = load i64, i64* %3, align 8
  store i64 4296711, i64* %RSI.i3648, align 8
  store i64 4296711, i64* %RDX.i3615, align 8
  %2034 = load i64, i64* %RBP.i, align 8
  %2035 = add i64 %2034, -72
  %2036 = add i64 %2033, 11
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i64*
  %2038 = load i64, i64* %2037, align 8
  store i64 %2038, i64* %RDI.i3611.pre-phi, align 8
  %2039 = add i64 %2034, -44
  %2040 = add i64 %2033, 14
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RSI.i3648, align 8
  %2044 = add i64 %2033, 21939
  %2045 = add i64 %2033, 19
  %2046 = load i64, i64* %6, align 8
  %2047 = add i64 %2046, -8
  %2048 = inttoptr i64 %2047 to i64*
  store i64 %2045, i64* %2048, align 8
  store i64 %2047, i64* %6, align 8
  store i64 %2044, i64* %3, align 8
  %call2_40182b = tail call %struct.Memory* @sub_406dd0._Z13test_constantIt20custom_mod_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2044, %struct.Memory* %call2_401818)
  %2049 = load i64, i64* %3, align 8
  store i64 4296734, i64* %RSI.i3648, align 8
  store i64 4296734, i64* %RDX.i3615, align 8
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -72
  %2052 = add i64 %2049, 11
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i64*
  %2054 = load i64, i64* %2053, align 8
  store i64 %2054, i64* %RDI.i3611.pre-phi, align 8
  %2055 = add i64 %2050, -44
  %2056 = add i64 %2049, 14
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RSI.i3648, align 8
  %2060 = add i64 %2049, 22096
  %2061 = add i64 %2049, 19
  %2062 = load i64, i64* %6, align 8
  %2063 = add i64 %2062, -8
  %2064 = inttoptr i64 %2063 to i64*
  store i64 %2061, i64* %2064, align 8
  store i64 %2063, i64* %6, align 8
  store i64 %2060, i64* %3, align 8
  %call2_40183e = tail call %struct.Memory* @sub_406e80._Z13test_constantIt22custom_equal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2060, %struct.Memory* %call2_40182b)
  %2065 = load i64, i64* %3, align 8
  store i64 4296759, i64* %RSI.i3648, align 8
  store i64 4296759, i64* %RDX.i3615, align 8
  %2066 = load i64, i64* %RBP.i, align 8
  %2067 = add i64 %2066, -72
  %2068 = add i64 %2065, 11
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i64*
  %2070 = load i64, i64* %2069, align 8
  store i64 %2070, i64* %RDI.i3611.pre-phi, align 8
  %2071 = add i64 %2066, -44
  %2072 = add i64 %2065, 14
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RSI.i3648, align 8
  %2076 = add i64 %2065, 22253
  %2077 = add i64 %2065, 19
  %2078 = load i64, i64* %6, align 8
  %2079 = add i64 %2078, -8
  %2080 = inttoptr i64 %2079 to i64*
  store i64 %2077, i64* %2080, align 8
  store i64 %2079, i64* %6, align 8
  store i64 %2076, i64* %3, align 8
  %call2_401851 = tail call %struct.Memory* @sub_406f30._Z13test_constantIt25custom_notequal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2076, %struct.Memory* %call2_40183e)
  %2081 = load i64, i64* %3, align 8
  store i64 4296787, i64* %RSI.i3648, align 8
  store i64 4296787, i64* %RDX.i3615, align 8
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -72
  %2084 = add i64 %2081, 11
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i64*
  %2086 = load i64, i64* %2085, align 8
  store i64 %2086, i64* %RDI.i3611.pre-phi, align 8
  %2087 = add i64 %2082, -44
  %2088 = add i64 %2081, 14
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RSI.i3648, align 8
  %2092 = add i64 %2081, 22410
  %2093 = add i64 %2081, 19
  %2094 = load i64, i64* %6, align 8
  %2095 = add i64 %2094, -8
  %2096 = inttoptr i64 %2095 to i64*
  store i64 %2093, i64* %2096, align 8
  store i64 %2095, i64* %6, align 8
  store i64 %2092, i64* %3, align 8
  %call2_401864 = tail call %struct.Memory* @sub_406fe0._Z13test_constantIt28custom_greaterthan_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2092, %struct.Memory* %call2_401851)
  %2097 = load i64, i64* %3, align 8
  store i64 4296819, i64* %RSI.i3648, align 8
  store i64 4296819, i64* %RDX.i3615, align 8
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -72
  %2100 = add i64 %2097, 11
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i64*
  %2102 = load i64, i64* %2101, align 8
  store i64 %2102, i64* %RDI.i3611.pre-phi, align 8
  %2103 = add i64 %2098, -44
  %2104 = add i64 %2097, 14
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = zext i32 %2106 to i64
  store i64 %2107, i64* %RSI.i3648, align 8
  %2108 = add i64 %2097, 22567
  %2109 = add i64 %2097, 19
  %2110 = load i64, i64* %6, align 8
  %2111 = add i64 %2110, -8
  %2112 = inttoptr i64 %2111 to i64*
  store i64 %2109, i64* %2112, align 8
  store i64 %2111, i64* %6, align 8
  store i64 %2108, i64* %3, align 8
  %call2_401877 = tail call %struct.Memory* @sub_407090._Z13test_constantIt25custom_lessthan_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2108, %struct.Memory* %call2_401864)
  %2113 = load i64, i64* %3, align 8
  store i64 4296848, i64* %RSI.i3648, align 8
  store i64 4296848, i64* %RDX.i3615, align 8
  %2114 = load i64, i64* %RBP.i, align 8
  %2115 = add i64 %2114, -72
  %2116 = add i64 %2113, 11
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2115 to i64*
  %2118 = load i64, i64* %2117, align 8
  store i64 %2118, i64* %RDI.i3611.pre-phi, align 8
  %2119 = add i64 %2114, -44
  %2120 = add i64 %2113, 14
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %RSI.i3648, align 8
  %2124 = add i64 %2113, 22724
  %2125 = add i64 %2113, 19
  %2126 = load i64, i64* %6, align 8
  %2127 = add i64 %2126, -8
  %2128 = inttoptr i64 %2127 to i64*
  store i64 %2125, i64* %2128, align 8
  store i64 %2127, i64* %6, align 8
  store i64 %2124, i64* %3, align 8
  %call2_40188a = tail call %struct.Memory* @sub_407140._Z13test_constantIt33custom_greaterthanequal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2124, %struct.Memory* %call2_401877)
  %2129 = load i64, i64* %3, align 8
  store i64 4296886, i64* %RSI.i3648, align 8
  store i64 4296886, i64* %RDX.i3615, align 8
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -72
  %2132 = add i64 %2129, 11
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %RDI.i3611.pre-phi, align 8
  %2135 = add i64 %2130, -44
  %2136 = add i64 %2129, 14
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RSI.i3648, align 8
  %2140 = add i64 %2129, 22881
  %2141 = add i64 %2129, 19
  %2142 = load i64, i64* %6, align 8
  %2143 = add i64 %2142, -8
  %2144 = inttoptr i64 %2143 to i64*
  store i64 %2141, i64* %2144, align 8
  store i64 %2143, i64* %6, align 8
  store i64 %2140, i64* %3, align 8
  %call2_40189d = tail call %struct.Memory* @sub_4071f0._Z13test_constantIt30custom_lessthanequal_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2140, %struct.Memory* %call2_40188a)
  %2145 = load i64, i64* %3, align 8
  store i64 4296921, i64* %RSI.i3648, align 8
  store i64 4296921, i64* %RDX.i3615, align 8
  %2146 = load i64, i64* %RBP.i, align 8
  %2147 = add i64 %2146, -72
  %2148 = add i64 %2145, 11
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i64*
  %2150 = load i64, i64* %2149, align 8
  store i64 %2150, i64* %RDI.i3611.pre-phi, align 8
  %2151 = add i64 %2146, -44
  %2152 = add i64 %2145, 14
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i32*
  %2154 = load i32, i32* %2153, align 4
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RSI.i3648, align 8
  %2156 = add i64 %2145, 23038
  %2157 = add i64 %2145, 19
  %2158 = load i64, i64* %6, align 8
  %2159 = add i64 %2158, -8
  %2160 = inttoptr i64 %2159 to i64*
  store i64 %2157, i64* %2160, align 8
  store i64 %2159, i64* %6, align 8
  store i64 %2156, i64* %3, align 8
  %call2_4018b0 = tail call %struct.Memory* @sub_4072a0._Z13test_constantIt20custom_and_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2156, %struct.Memory* %call2_40189d)
  %2161 = load i64, i64* %3, align 8
  store i64 4296944, i64* %RSI.i3648, align 8
  store i64 4296944, i64* %RDX.i3615, align 8
  %2162 = load i64, i64* %RBP.i, align 8
  %2163 = add i64 %2162, -72
  %2164 = add i64 %2161, 11
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i64*
  %2166 = load i64, i64* %2165, align 8
  store i64 %2166, i64* %RDI.i3611.pre-phi, align 8
  %2167 = add i64 %2162, -44
  %2168 = add i64 %2161, 14
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RSI.i3648, align 8
  %2172 = add i64 %2161, 23195
  %2173 = add i64 %2161, 19
  %2174 = load i64, i64* %6, align 8
  %2175 = add i64 %2174, -8
  %2176 = inttoptr i64 %2175 to i64*
  store i64 %2173, i64* %2176, align 8
  store i64 %2175, i64* %6, align 8
  store i64 %2172, i64* %3, align 8
  %call2_4018c3 = tail call %struct.Memory* @sub_407350._Z13test_constantIt19custom_or_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2172, %struct.Memory* %call2_4018b0)
  %2177 = load i64, i64* %3, align 8
  store i64 4296966, i64* %RSI.i3648, align 8
  store i64 4296966, i64* %RDX.i3615, align 8
  %2178 = load i64, i64* %RBP.i, align 8
  %2179 = add i64 %2178, -72
  %2180 = add i64 %2177, 11
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RDI.i3611.pre-phi, align 8
  %2183 = add i64 %2178, -44
  %2184 = add i64 %2177, 14
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RSI.i3648, align 8
  %2188 = add i64 %2177, 23352
  %2189 = add i64 %2177, 19
  %2190 = load i64, i64* %6, align 8
  %2191 = add i64 %2190, -8
  %2192 = inttoptr i64 %2191 to i64*
  store i64 %2189, i64* %2192, align 8
  store i64 %2191, i64* %6, align 8
  store i64 %2188, i64* %3, align 8
  %call2_4018d6 = tail call %struct.Memory* @sub_407400._Z13test_constantIt20custom_xor_constantsItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2188, %struct.Memory* %call2_4018c3)
  %2193 = load i64, i64* %3, align 8
  %2194 = add i64 %2193, 2230181
  %2195 = add i64 %2193, 7
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i32*
  %2197 = load i32, i32* %2196, align 4
  %2198 = sext i32 %2197 to i64
  %2199 = mul nsw i64 %2198, 1717986919
  %2200 = lshr i64 %2199, 63
  store i64 %2200, i64* %RCX.i3620, align 8
  %2201 = trunc i64 %2200 to i32
  %2202 = ashr i64 %2199, 34
  store i64 %2202, i64* %RAX.i3622, align 8
  %2203 = trunc i64 %2202 to i32
  %2204 = add i32 %2201, %2203
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %200, align 8
  %2206 = icmp ult i32 %2204, %2203
  %2207 = icmp ult i32 %2204, %2201
  %2208 = or i1 %2206, %2207
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %14, align 1
  %2210 = and i32 %2204, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %21, align 1
  %2215 = trunc i64 %2202 to i32
  %2216 = xor i32 %2215, %2204
  %2217 = lshr i32 %2216, 4
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  store i8 %2219, i8* %27, align 1
  %2220 = icmp eq i32 %2204, 0
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %30, align 1
  %2222 = lshr i32 %2204, 31
  %2223 = trunc i32 %2222 to i8
  store i8 %2223, i8* %33, align 1
  %2224 = lshr i64 %2202, 31
  %2225 = trunc i64 %2224 to i32
  %2226 = and i32 %2225, 1
  %2227 = xor i32 %2222, %2226
  %2228 = add nuw nsw i32 %2227, %2222
  %2229 = icmp eq i32 %2228, 2
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %39, align 1
  %2231 = add i64 %2193, 2230245
  %2232 = add i64 %2193, 40
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2231 to i32*
  store i32 %2204, i32* %2233, align 4
  %2234 = load i64, i64* %3, align 8
  store i64 4296989, i64* %RSI.i3648, align 8
  store i64 4296989, i64* %RDX.i3615, align 8
  %2235 = load i64, i64* %RBP.i, align 8
  %2236 = add i64 %2235, -72
  %2237 = add i64 %2234, 11
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i64*
  %2239 = load i64, i64* %2238, align 8
  store i64 %2239, i64* %RDI.i3611.pre-phi, align 8
  %2240 = add i64 %2235, -44
  %2241 = add i64 %2234, 14
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RSI.i3648, align 8
  %2245 = add i64 %2234, 23469
  %2246 = add i64 %2234, 19
  %2247 = load i64, i64* %6, align 8
  %2248 = add i64 %2247, -8
  %2249 = inttoptr i64 %2248 to i64*
  store i64 %2246, i64* %2249, align 8
  store i64 %2248, i64* %6, align 8
  store i64 %2245, i64* %3, align 8
  %call2_401911 = tail call %struct.Memory* @sub_4074b0._Z13test_constantIt19custom_constant_addItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2245, %struct.Memory* %call2_4018d6)
  %2250 = load i64, i64* %3, align 8
  store i64 4297011, i64* %RSI.i3648, align 8
  store i64 4297011, i64* %RDX.i3615, align 8
  %2251 = load i64, i64* %RBP.i, align 8
  %2252 = add i64 %2251, -72
  %2253 = add i64 %2250, 11
  store i64 %2253, i64* %3, align 8
  %2254 = inttoptr i64 %2252 to i64*
  %2255 = load i64, i64* %2254, align 8
  store i64 %2255, i64* %RDI.i3611.pre-phi, align 8
  %2256 = add i64 %2251, -44
  %2257 = add i64 %2250, 14
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RSI.i3648, align 8
  %2261 = add i64 %2250, 23626
  %2262 = add i64 %2250, 19
  %2263 = load i64, i64* %6, align 8
  %2264 = add i64 %2263, -8
  %2265 = inttoptr i64 %2264 to i64*
  store i64 %2262, i64* %2265, align 8
  store i64 %2264, i64* %6, align 8
  store i64 %2261, i64* %3, align 8
  %call2_401924 = tail call %struct.Memory* @sub_407560._Z13test_constantIt28custom_multiple_constant_addItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2261, %struct.Memory* %call2_401911)
  %2266 = load i64, i64* %3, align 8
  store i64 4297043, i64* %RSI.i3648, align 8
  store i64 4297043, i64* %RDX.i3615, align 8
  %2267 = load i64, i64* %RBP.i, align 8
  %2268 = add i64 %2267, -72
  %2269 = add i64 %2266, 11
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %RDI.i3611.pre-phi, align 8
  %2272 = add i64 %2267, -44
  %2273 = add i64 %2266, 14
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RSI.i3648, align 8
  %2277 = add i64 %2266, 23783
  %2278 = add i64 %2266, 19
  %2279 = load i64, i64* %6, align 8
  %2280 = add i64 %2279, -8
  %2281 = inttoptr i64 %2280 to i64*
  store i64 %2278, i64* %2281, align 8
  store i64 %2280, i64* %6, align 8
  store i64 %2277, i64* %3, align 8
  %call2_401937 = tail call %struct.Memory* @sub_407610._Z13test_constantIt19custom_constant_subItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2277, %struct.Memory* %call2_401924)
  %2282 = load i64, i64* %3, align 8
  store i64 4297070, i64* %RSI.i3648, align 8
  store i64 4297070, i64* %RDX.i3615, align 8
  %2283 = load i64, i64* %RBP.i, align 8
  %2284 = add i64 %2283, -72
  %2285 = add i64 %2282, 11
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RDI.i3611.pre-phi, align 8
  %2288 = add i64 %2283, -44
  %2289 = add i64 %2282, 14
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RSI.i3648, align 8
  %2293 = add i64 %2282, 23940
  %2294 = add i64 %2282, 19
  %2295 = load i64, i64* %6, align 8
  %2296 = add i64 %2295, -8
  %2297 = inttoptr i64 %2296 to i64*
  store i64 %2294, i64* %2297, align 8
  store i64 %2296, i64* %6, align 8
  store i64 %2293, i64* %3, align 8
  %call2_40194a = tail call %struct.Memory* @sub_4076c0._Z13test_constantIt28custom_multiple_constant_subItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2293, %struct.Memory* %call2_401937)
  %2298 = load i64, i64* %3, align 8
  store i64 4297107, i64* %RSI.i3648, align 8
  store i64 4297107, i64* %RDX.i3615, align 8
  %2299 = load i64, i64* %RBP.i, align 8
  %2300 = add i64 %2299, -72
  %2301 = add i64 %2298, 11
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i64*
  %2303 = load i64, i64* %2302, align 8
  store i64 %2303, i64* %RDI.i3611.pre-phi, align 8
  %2304 = add i64 %2299, -44
  %2305 = add i64 %2298, 14
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RSI.i3648, align 8
  %2309 = add i64 %2298, 24097
  %2310 = add i64 %2298, 19
  %2311 = load i64, i64* %6, align 8
  %2312 = add i64 %2311, -8
  %2313 = inttoptr i64 %2312 to i64*
  store i64 %2310, i64* %2313, align 8
  store i64 %2312, i64* %6, align 8
  store i64 %2309, i64* %3, align 8
  %call2_40195d = tail call %struct.Memory* @sub_407770._Z13test_constantIt24custom_constant_multiplyItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2309, %struct.Memory* %call2_40194a)
  %2314 = load i64, i64* %3, align 8
  store i64 4297134, i64* %RSI.i3648, align 8
  store i64 4297134, i64* %RDX.i3615, align 8
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -72
  %2317 = add i64 %2314, 11
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i64*
  %2319 = load i64, i64* %2318, align 8
  store i64 %2319, i64* %RDI.i3611.pre-phi, align 8
  %2320 = add i64 %2315, -44
  %2321 = add i64 %2314, 14
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = zext i32 %2323 to i64
  store i64 %2324, i64* %RSI.i3648, align 8
  %2325 = add i64 %2314, 24254
  %2326 = add i64 %2314, 19
  %2327 = load i64, i64* %6, align 8
  %2328 = add i64 %2327, -8
  %2329 = inttoptr i64 %2328 to i64*
  store i64 %2326, i64* %2329, align 8
  store i64 %2328, i64* %6, align 8
  store i64 %2325, i64* %3, align 8
  %call2_401970 = tail call %struct.Memory* @sub_407820._Z13test_constantIt33custom_multiple_constant_multiplyItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2325, %struct.Memory* %call2_40195d)
  %2330 = load i64, i64* %3, align 8
  store i64 4297172, i64* %RSI.i3648, align 8
  store i64 4297172, i64* %RDX.i3615, align 8
  %2331 = load i64, i64* %RBP.i, align 8
  %2332 = add i64 %2331, -72
  %2333 = add i64 %2330, 11
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i64*
  %2335 = load i64, i64* %2334, align 8
  store i64 %2335, i64* %RDI.i3611.pre-phi, align 8
  %2336 = add i64 %2331, -44
  %2337 = add i64 %2330, 14
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  %2339 = load i32, i32* %2338, align 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RSI.i3648, align 8
  %2341 = add i64 %2330, 24411
  %2342 = add i64 %2330, 19
  %2343 = load i64, i64* %6, align 8
  %2344 = add i64 %2343, -8
  %2345 = inttoptr i64 %2344 to i64*
  store i64 %2342, i64* %2345, align 8
  store i64 %2344, i64* %6, align 8
  store i64 %2341, i64* %3, align 8
  %call2_401983 = tail call %struct.Memory* @sub_4078d0._Z13test_constantIt34custom_multiple_constant_multiply2ItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2341, %struct.Memory* %call2_401970)
  %2346 = load i64, i64* %3, align 8
  store i64 4297209, i64* %RSI.i3648, align 8
  store i64 4297209, i64* %RDX.i3615, align 8
  %2347 = load i64, i64* %RBP.i, align 8
  %2348 = add i64 %2347, -72
  %2349 = add i64 %2346, 11
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i64*
  %2351 = load i64, i64* %2350, align 8
  store i64 %2351, i64* %RDI.i3611.pre-phi, align 8
  %2352 = add i64 %2347, -44
  %2353 = add i64 %2346, 14
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i32*
  %2355 = load i32, i32* %2354, align 4
  %2356 = zext i32 %2355 to i64
  store i64 %2356, i64* %RSI.i3648, align 8
  %2357 = add i64 %2346, 24568
  %2358 = add i64 %2346, 19
  %2359 = load i64, i64* %6, align 8
  %2360 = add i64 %2359, -8
  %2361 = inttoptr i64 %2360 to i64*
  store i64 %2358, i64* %2361, align 8
  store i64 %2360, i64* %6, align 8
  store i64 %2357, i64* %3, align 8
  %call2_401996 = tail call %struct.Memory* @sub_407980._Z13test_constantIt22custom_constant_divideItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2357, %struct.Memory* %call2_401983)
  %2362 = load i64, i64* %3, align 8
  store i64 4297234, i64* %RSI.i3648, align 8
  store i64 4297234, i64* %RDX.i3615, align 8
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -72
  %2365 = add i64 %2362, 11
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RDI.i3611.pre-phi, align 8
  %2368 = add i64 %2363, -44
  %2369 = add i64 %2362, 14
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RSI.i3648, align 8
  %2373 = add i64 %2362, 24725
  %2374 = add i64 %2362, 19
  %2375 = load i64, i64* %6, align 8
  %2376 = add i64 %2375, -8
  %2377 = inttoptr i64 %2376 to i64*
  store i64 %2374, i64* %2377, align 8
  store i64 %2376, i64* %6, align 8
  store i64 %2373, i64* %3, align 8
  %call2_4019a9 = tail call %struct.Memory* @sub_407a30._Z13test_constantIt31custom_multiple_constant_divideItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2373, %struct.Memory* %call2_401996)
  %2378 = load i64, i64* %3, align 8
  store i64 4297269, i64* %RSI.i3648, align 8
  store i64 4297269, i64* %RDX.i3615, align 8
  %2379 = load i64, i64* %RBP.i, align 8
  %2380 = add i64 %2379, -72
  %2381 = add i64 %2378, 11
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i64*
  %2383 = load i64, i64* %2382, align 8
  store i64 %2383, i64* %RDI.i3611.pre-phi, align 8
  %2384 = add i64 %2379, -44
  %2385 = add i64 %2378, 14
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = zext i32 %2387 to i64
  store i64 %2388, i64* %RSI.i3648, align 8
  %2389 = add i64 %2378, 24882
  %2390 = add i64 %2378, 19
  %2391 = load i64, i64* %6, align 8
  %2392 = add i64 %2391, -8
  %2393 = inttoptr i64 %2392 to i64*
  store i64 %2390, i64* %2393, align 8
  store i64 %2392, i64* %6, align 8
  store i64 %2389, i64* %3, align 8
  %call2_4019bc = tail call %struct.Memory* @sub_407ae0._Z13test_constantIt32custom_multiple_constant_divide2ItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2389, %struct.Memory* %call2_4019a9)
  %2394 = load i64, i64* %3, align 8
  store i64 4297304, i64* %RSI.i3648, align 8
  store i64 4297304, i64* %RDX.i3615, align 8
  %2395 = load i64, i64* %RBP.i, align 8
  %2396 = add i64 %2395, -72
  %2397 = add i64 %2394, 11
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i64*
  %2399 = load i64, i64* %2398, align 8
  store i64 %2399, i64* %RDI.i3611.pre-phi, align 8
  %2400 = add i64 %2395, -44
  %2401 = add i64 %2394, 14
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RSI.i3648, align 8
  %2405 = add i64 %2394, 25039
  %2406 = add i64 %2394, 19
  %2407 = load i64, i64* %6, align 8
  %2408 = add i64 %2407, -8
  %2409 = inttoptr i64 %2408 to i64*
  store i64 %2406, i64* %2409, align 8
  store i64 %2408, i64* %6, align 8
  store i64 %2405, i64* %3, align 8
  %call2_4019cf = tail call %struct.Memory* @sub_407b90._Z13test_constantIt30custom_multiple_constant_mixedItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2405, %struct.Memory* %call2_4019bc)
  %2410 = load i64, i64* %3, align 8
  store i64 4297337, i64* %RSI.i3648, align 8
  store i64 4297337, i64* %RDX.i3615, align 8
  %2411 = load i64, i64* %RBP.i, align 8
  %2412 = add i64 %2411, -72
  %2413 = add i64 %2410, 11
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i64*
  %2415 = load i64, i64* %2414, align 8
  store i64 %2415, i64* %RDI.i3611.pre-phi, align 8
  %2416 = add i64 %2411, -44
  %2417 = add i64 %2410, 14
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = zext i32 %2419 to i64
  store i64 %2420, i64* %RSI.i3648, align 8
  %2421 = add i64 %2410, 25196
  %2422 = add i64 %2410, 19
  %2423 = load i64, i64* %6, align 8
  %2424 = add i64 %2423, -8
  %2425 = inttoptr i64 %2424 to i64*
  store i64 %2422, i64* %2425, align 8
  store i64 %2424, i64* %6, align 8
  store i64 %2421, i64* %3, align 8
  %call2_4019e2 = tail call %struct.Memory* @sub_407c40._Z13test_constantIt19custom_constant_andItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2421, %struct.Memory* %call2_4019cf)
  %2426 = load i64, i64* %3, align 8
  store i64 4297359, i64* %RSI.i3648, align 8
  store i64 4297359, i64* %RDX.i3615, align 8
  %2427 = load i64, i64* %RBP.i, align 8
  %2428 = add i64 %2427, -72
  %2429 = add i64 %2426, 11
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i64*
  %2431 = load i64, i64* %2430, align 8
  store i64 %2431, i64* %RDI.i3611.pre-phi, align 8
  %2432 = add i64 %2427, -44
  %2433 = add i64 %2426, 14
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RSI.i3648, align 8
  %2437 = add i64 %2426, 25353
  %2438 = add i64 %2426, 19
  %2439 = load i64, i64* %6, align 8
  %2440 = add i64 %2439, -8
  %2441 = inttoptr i64 %2440 to i64*
  store i64 %2438, i64* %2441, align 8
  store i64 %2440, i64* %6, align 8
  store i64 %2437, i64* %3, align 8
  %call2_4019f5 = tail call %struct.Memory* @sub_407cf0._Z13test_constantIt28custom_multiple_constant_andItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2437, %struct.Memory* %call2_4019e2)
  %2442 = load i64, i64* %3, align 8
  store i64 4297390, i64* %RSI.i3648, align 8
  store i64 4297390, i64* %RDX.i3615, align 8
  %2443 = load i64, i64* %RBP.i, align 8
  %2444 = add i64 %2443, -72
  %2445 = add i64 %2442, 11
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2444 to i64*
  %2447 = load i64, i64* %2446, align 8
  store i64 %2447, i64* %RDI.i3611.pre-phi, align 8
  %2448 = add i64 %2443, -44
  %2449 = add i64 %2442, 14
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RSI.i3648, align 8
  %2453 = add i64 %2442, 25510
  %2454 = add i64 %2442, 19
  %2455 = load i64, i64* %6, align 8
  %2456 = add i64 %2455, -8
  %2457 = inttoptr i64 %2456 to i64*
  store i64 %2454, i64* %2457, align 8
  store i64 %2456, i64* %6, align 8
  store i64 %2453, i64* %3, align 8
  %call2_401a08 = tail call %struct.Memory* @sub_407da0._Z13test_constantIt18custom_constant_orItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2453, %struct.Memory* %call2_4019f5)
  %2458 = load i64, i64* %3, align 8
  store i64 4297411, i64* %RSI.i3648, align 8
  store i64 4297411, i64* %RDX.i3615, align 8
  %2459 = load i64, i64* %RBP.i, align 8
  %2460 = add i64 %2459, -72
  %2461 = add i64 %2458, 11
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  %2463 = load i64, i64* %2462, align 8
  store i64 %2463, i64* %RDI.i3611.pre-phi, align 8
  %2464 = add i64 %2459, -44
  %2465 = add i64 %2458, 14
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = zext i32 %2467 to i64
  store i64 %2468, i64* %RSI.i3648, align 8
  %2469 = add i64 %2458, 25667
  %2470 = add i64 %2458, 19
  %2471 = load i64, i64* %6, align 8
  %2472 = add i64 %2471, -8
  %2473 = inttoptr i64 %2472 to i64*
  store i64 %2470, i64* %2473, align 8
  store i64 %2472, i64* %6, align 8
  store i64 %2469, i64* %3, align 8
  %call2_401a1b = tail call %struct.Memory* @sub_407e50._Z13test_constantIt27custom_multiple_constant_orItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2469, %struct.Memory* %call2_401a08)
  %2474 = load i64, i64* %3, align 8
  store i64 4297441, i64* %RSI.i3648, align 8
  store i64 4297441, i64* %RDX.i3615, align 8
  %2475 = load i64, i64* %RBP.i, align 8
  %2476 = add i64 %2475, -72
  %2477 = add i64 %2474, 11
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RDI.i3611.pre-phi, align 8
  %2480 = add i64 %2475, -44
  %2481 = add i64 %2474, 14
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RSI.i3648, align 8
  %2485 = add i64 %2474, 25824
  %2486 = add i64 %2474, 19
  %2487 = load i64, i64* %6, align 8
  %2488 = add i64 %2487, -8
  %2489 = inttoptr i64 %2488 to i64*
  store i64 %2486, i64* %2489, align 8
  store i64 %2488, i64* %6, align 8
  store i64 %2485, i64* %3, align 8
  %call2_401a2e = tail call %struct.Memory* @sub_407f00._Z13test_constantIt19custom_constant_xorItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2485, %struct.Memory* %call2_401a1b)
  %2490 = load i64, i64* %3, align 8
  store i64 4297463, i64* %RSI.i3648, align 8
  store i64 4297463, i64* %RDX.i3615, align 8
  %2491 = load i64, i64* %RBP.i, align 8
  %2492 = add i64 %2491, -72
  %2493 = add i64 %2490, 11
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i64*
  %2495 = load i64, i64* %2494, align 8
  store i64 %2495, i64* %RDI.i3611.pre-phi, align 8
  %2496 = add i64 %2491, -44
  %2497 = add i64 %2490, 14
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RSI.i3648, align 8
  %2501 = add i64 %2490, 25981
  %2502 = add i64 %2490, 19
  %2503 = load i64, i64* %6, align 8
  %2504 = add i64 %2503, -8
  %2505 = inttoptr i64 %2504 to i64*
  store i64 %2502, i64* %2505, align 8
  store i64 %2504, i64* %6, align 8
  store i64 %2501, i64* %3, align 8
  %call2_401a41 = tail call %struct.Memory* @sub_407fb0._Z13test_constantIt28custom_multiple_constant_xorItEEvPT_iPKc(%struct.State* nonnull %0, i64 %2501, %struct.Memory* %call2_401a2e)
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %2507 = bitcast [32 x %union.VectorReg]* %2506 to i8*
  %2508 = load i64, i64* %3, align 8
  %2509 = add i64 %2508, 2229826
  %2510 = add i64 %2508, 8
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i64*
  %2512 = load i64, i64* %2511, align 8
  %2513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2506, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2512, i64* %2513, align 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2515 = bitcast i64* %2514 to double*
  store double 0.000000e+00, double* %2515, align 1
  %2516 = bitcast i64 %2512 to double
  %2517 = tail call double @llvm.trunc.f64(double %2516)
  %2518 = tail call double @llvm.fabs.f64(double %2517)
  %2519 = fcmp ogt double %2518, 0x41DFFFFFFFC00000
  %2520 = fptosi double %2517 to i32
  %2521 = zext i32 %2520 to i64
  %2522 = select i1 %2519, i64 2147483648, i64 %2521
  store i64 %2522, i64* %RDX.i3615, align 8
  store i64 6686928, i64* %RAX.i3622, align 8
  store i64 6718928, i64* %RSI.i3648, align 8
  store i64 6686928, i64* %RDI.i3611.pre-phi, align 8
  %2523 = load i64, i64* %RBP.i, align 8
  %2524 = add i64 %2523, -80
  %2525 = add i64 %2508, 31
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i64*
  store i64 6686928, i64* %2526, align 8
  %2527 = load i64, i64* %3, align 8
  %2528 = add i64 %2527, 26107
  %2529 = add i64 %2527, 5
  %2530 = load i64, i64* %6, align 8
  %2531 = add i64 %2530, -8
  %2532 = inttoptr i64 %2531 to i64*
  store i64 %2529, i64* %2532, align 8
  store i64 %2531, i64* %6, align 8
  store i64 %2528, i64* %3, align 8
  %call2_401a65 = tail call %struct.Memory* @sub_408060._Z4fillIPiiEvT_S1_T0_(%struct.State* nonnull %0, i64 %2528, %struct.Memory* %call2_401a41)
  %2533 = load i64, i64* %3, align 8
  %2534 = add i64 %2533, 2229782
  %2535 = add i64 %2533, 6
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = add i64 %2533, 2229846
  %2539 = add i64 %2533, 12
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i32*
  store i32 %2537, i32* %2540, align 4
  %2541 = load i64, i64* %3, align 8
  store i64 4297495, i64* %RDX.i3615, align 8
  %2542 = load i64, i64* %RBP.i, align 8
  %2543 = add i64 %2542, -80
  %2544 = add i64 %2541, 9
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2543 to i64*
  %2546 = load i64, i64* %2545, align 8
  store i64 %2546, i64* %RDI.i3611.pre-phi, align 8
  %2547 = add i64 %2542, -44
  %2548 = add i64 %2541, 12
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i32*
  %2550 = load i32, i32* %2549, align 4
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RSI.i3648, align 8
  %2552 = add i64 %2541, 26154
  %2553 = add i64 %2541, 17
  %2554 = load i64, i64* %6, align 8
  %2555 = add i64 %2554, -8
  %2556 = inttoptr i64 %2555 to i64*
  store i64 %2553, i64* %2556, align 8
  store i64 %2555, i64* %6, align 8
  store i64 %2552, i64* %3, align 8
  %call2_401a82 = tail call %struct.Memory* @sub_4080a0._Z13test_constantIi10custom_twoIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2552, %struct.Memory* %call2_401a65)
  %2557 = load i64, i64* %3, align 8
  store i64 4297513, i64* %RSI.i3648, align 8
  store i64 4297513, i64* %RDX.i3615, align 8
  %2558 = load i64, i64* %RBP.i, align 8
  %2559 = add i64 %2558, -80
  %2560 = add i64 %2557, 11
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  store i64 %2562, i64* %RDI.i3611.pre-phi, align 8
  %2563 = add i64 %2558, -44
  %2564 = add i64 %2557, 14
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RSI.i3648, align 8
  %2568 = add i64 %2557, 26297
  %2569 = add i64 %2557, 19
  %2570 = load i64, i64* %6, align 8
  %2571 = add i64 %2570, -8
  %2572 = inttoptr i64 %2571 to i64*
  store i64 %2569, i64* %2572, align 8
  store i64 %2571, i64* %6, align 8
  store i64 %2568, i64* %3, align 8
  %call2_401a95 = tail call %struct.Memory* @sub_408140._Z13test_constantIi20custom_add_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2568, %struct.Memory* %call2_401a82)
  %2573 = load i64, i64* %3, align 8
  store i64 4297536, i64* %RSI.i3648, align 8
  store i64 4297536, i64* %RDX.i3615, align 8
  %2574 = load i64, i64* %RBP.i, align 8
  %2575 = add i64 %2574, -80
  %2576 = add i64 %2573, 11
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i64*
  %2578 = load i64, i64* %2577, align 8
  store i64 %2578, i64* %RDI.i3611.pre-phi, align 8
  %2579 = add i64 %2574, -44
  %2580 = add i64 %2573, 14
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2579 to i32*
  %2582 = load i32, i32* %2581, align 4
  %2583 = zext i32 %2582 to i64
  store i64 %2583, i64* %RSI.i3648, align 8
  %2584 = add i64 %2573, 26438
  %2585 = add i64 %2573, 19
  %2586 = load i64, i64* %6, align 8
  %2587 = add i64 %2586, -8
  %2588 = inttoptr i64 %2587 to i64*
  store i64 %2585, i64* %2588, align 8
  store i64 %2587, i64* %6, align 8
  store i64 %2584, i64* %3, align 8
  %call2_401aa8 = tail call %struct.Memory* @sub_4081e0._Z13test_constantIi20custom_sub_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2584, %struct.Memory* %call2_401a95)
  %2589 = load i64, i64* %3, align 8
  store i64 4297564, i64* %RSI.i3648, align 8
  store i64 4297564, i64* %RDX.i3615, align 8
  %2590 = load i64, i64* %RBP.i, align 8
  %2591 = add i64 %2590, -80
  %2592 = add i64 %2589, 11
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i64*
  %2594 = load i64, i64* %2593, align 8
  store i64 %2594, i64* %RDI.i3611.pre-phi, align 8
  %2595 = add i64 %2590, -44
  %2596 = add i64 %2589, 14
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to i32*
  %2598 = load i32, i32* %2597, align 4
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RSI.i3648, align 8
  %2600 = add i64 %2589, 26579
  %2601 = add i64 %2589, 19
  %2602 = load i64, i64* %6, align 8
  %2603 = add i64 %2602, -8
  %2604 = inttoptr i64 %2603 to i64*
  store i64 %2601, i64* %2604, align 8
  store i64 %2603, i64* %6, align 8
  store i64 %2600, i64* %3, align 8
  %call2_401abb = tail call %struct.Memory* @sub_408280._Z13test_constantIi25custom_multiply_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2600, %struct.Memory* %call2_401aa8)
  %2605 = load i64, i64* %3, align 8
  store i64 4297592, i64* %RSI.i3648, align 8
  store i64 4297592, i64* %RDX.i3615, align 8
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -80
  %2608 = add i64 %2605, 11
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i64*
  %2610 = load i64, i64* %2609, align 8
  store i64 %2610, i64* %RDI.i3611.pre-phi, align 8
  %2611 = add i64 %2606, -44
  %2612 = add i64 %2605, 14
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = zext i32 %2614 to i64
  store i64 %2615, i64* %RSI.i3648, align 8
  %2616 = add i64 %2605, 26720
  %2617 = add i64 %2605, 19
  %2618 = load i64, i64* %6, align 8
  %2619 = add i64 %2618, -8
  %2620 = inttoptr i64 %2619 to i64*
  store i64 %2617, i64* %2620, align 8
  store i64 %2619, i64* %6, align 8
  store i64 %2616, i64* %3, align 8
  %call2_401ace = tail call %struct.Memory* @sub_408320._Z13test_constantIi23custom_divide_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2616, %struct.Memory* %call2_401abb)
  %2621 = load i64, i64* %3, align 8
  store i64 4297618, i64* %RSI.i3648, align 8
  store i64 4297618, i64* %RDX.i3615, align 8
  %2622 = load i64, i64* %RBP.i, align 8
  %2623 = add i64 %2622, -80
  %2624 = add i64 %2621, 11
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i64*
  %2626 = load i64, i64* %2625, align 8
  store i64 %2626, i64* %RDI.i3611.pre-phi, align 8
  %2627 = add i64 %2622, -44
  %2628 = add i64 %2621, 14
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i32*
  %2630 = load i32, i32* %2629, align 4
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RSI.i3648, align 8
  %2632 = add i64 %2621, 26861
  %2633 = add i64 %2621, 19
  %2634 = load i64, i64* %6, align 8
  %2635 = add i64 %2634, -8
  %2636 = inttoptr i64 %2635 to i64*
  store i64 %2633, i64* %2636, align 8
  store i64 %2635, i64* %6, align 8
  store i64 %2632, i64* %3, align 8
  %call2_401ae1 = tail call %struct.Memory* @sub_4083c0._Z13test_constantIi20custom_mod_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2632, %struct.Memory* %call2_401ace)
  %2637 = load i64, i64* %3, align 8
  store i64 4297641, i64* %RSI.i3648, align 8
  store i64 4297641, i64* %RDX.i3615, align 8
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -80
  %2640 = add i64 %2637, 11
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i64*
  %2642 = load i64, i64* %2641, align 8
  store i64 %2642, i64* %RDI.i3611.pre-phi, align 8
  %2643 = add i64 %2638, -44
  %2644 = add i64 %2637, 14
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to i32*
  %2646 = load i32, i32* %2645, align 4
  %2647 = zext i32 %2646 to i64
  store i64 %2647, i64* %RSI.i3648, align 8
  %2648 = add i64 %2637, 27002
  %2649 = add i64 %2637, 19
  %2650 = load i64, i64* %6, align 8
  %2651 = add i64 %2650, -8
  %2652 = inttoptr i64 %2651 to i64*
  store i64 %2649, i64* %2652, align 8
  store i64 %2651, i64* %6, align 8
  store i64 %2648, i64* %3, align 8
  %call2_401af4 = tail call %struct.Memory* @sub_408460._Z13test_constantIi22custom_equal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2648, %struct.Memory* %call2_401ae1)
  %2653 = load i64, i64* %3, align 8
  store i64 4297666, i64* %RSI.i3648, align 8
  store i64 4297666, i64* %RDX.i3615, align 8
  %2654 = load i64, i64* %RBP.i, align 8
  %2655 = add i64 %2654, -80
  %2656 = add i64 %2653, 11
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i64*
  %2658 = load i64, i64* %2657, align 8
  store i64 %2658, i64* %RDI.i3611.pre-phi, align 8
  %2659 = add i64 %2654, -44
  %2660 = add i64 %2653, 14
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RSI.i3648, align 8
  %2664 = add i64 %2653, 27143
  %2665 = add i64 %2653, 19
  %2666 = load i64, i64* %6, align 8
  %2667 = add i64 %2666, -8
  %2668 = inttoptr i64 %2667 to i64*
  store i64 %2665, i64* %2668, align 8
  store i64 %2667, i64* %6, align 8
  store i64 %2664, i64* %3, align 8
  %call2_401b07 = tail call %struct.Memory* @sub_408500._Z13test_constantIi25custom_notequal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2664, %struct.Memory* %call2_401af4)
  %2669 = load i64, i64* %3, align 8
  store i64 4297694, i64* %RSI.i3648, align 8
  store i64 4297694, i64* %RDX.i3615, align 8
  %2670 = load i64, i64* %RBP.i, align 8
  %2671 = add i64 %2670, -80
  %2672 = add i64 %2669, 11
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i64*
  %2674 = load i64, i64* %2673, align 8
  store i64 %2674, i64* %RDI.i3611.pre-phi, align 8
  %2675 = add i64 %2670, -44
  %2676 = add i64 %2669, 14
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i32*
  %2678 = load i32, i32* %2677, align 4
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RSI.i3648, align 8
  %2680 = add i64 %2669, 27284
  %2681 = add i64 %2669, 19
  %2682 = load i64, i64* %6, align 8
  %2683 = add i64 %2682, -8
  %2684 = inttoptr i64 %2683 to i64*
  store i64 %2681, i64* %2684, align 8
  store i64 %2683, i64* %6, align 8
  store i64 %2680, i64* %3, align 8
  %call2_401b1a = tail call %struct.Memory* @sub_4085a0._Z13test_constantIi28custom_greaterthan_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2680, %struct.Memory* %call2_401b07)
  %2685 = load i64, i64* %3, align 8
  store i64 4297726, i64* %RSI.i3648, align 8
  store i64 4297726, i64* %RDX.i3615, align 8
  %2686 = load i64, i64* %RBP.i, align 8
  %2687 = add i64 %2686, -80
  %2688 = add i64 %2685, 11
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i64*
  %2690 = load i64, i64* %2689, align 8
  store i64 %2690, i64* %RDI.i3611.pre-phi, align 8
  %2691 = add i64 %2686, -44
  %2692 = add i64 %2685, 14
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RSI.i3648, align 8
  %2696 = add i64 %2685, 27425
  %2697 = add i64 %2685, 19
  %2698 = load i64, i64* %6, align 8
  %2699 = add i64 %2698, -8
  %2700 = inttoptr i64 %2699 to i64*
  store i64 %2697, i64* %2700, align 8
  store i64 %2699, i64* %6, align 8
  store i64 %2696, i64* %3, align 8
  %call2_401b2d = tail call %struct.Memory* @sub_408640._Z13test_constantIi25custom_lessthan_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2696, %struct.Memory* %call2_401b1a)
  %2701 = load i64, i64* %3, align 8
  store i64 4297755, i64* %RSI.i3648, align 8
  store i64 4297755, i64* %RDX.i3615, align 8
  %2702 = load i64, i64* %RBP.i, align 8
  %2703 = add i64 %2702, -80
  %2704 = add i64 %2701, 11
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i64*
  %2706 = load i64, i64* %2705, align 8
  store i64 %2706, i64* %RDI.i3611.pre-phi, align 8
  %2707 = add i64 %2702, -44
  %2708 = add i64 %2701, 14
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to i32*
  %2710 = load i32, i32* %2709, align 4
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RSI.i3648, align 8
  %2712 = add i64 %2701, 27566
  %2713 = add i64 %2701, 19
  %2714 = load i64, i64* %6, align 8
  %2715 = add i64 %2714, -8
  %2716 = inttoptr i64 %2715 to i64*
  store i64 %2713, i64* %2716, align 8
  store i64 %2715, i64* %6, align 8
  store i64 %2712, i64* %3, align 8
  %call2_401b40 = tail call %struct.Memory* @sub_4086e0._Z13test_constantIi33custom_greaterthanequal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2712, %struct.Memory* %call2_401b2d)
  %2717 = load i64, i64* %3, align 8
  store i64 4297793, i64* %RSI.i3648, align 8
  store i64 4297793, i64* %RDX.i3615, align 8
  %2718 = load i64, i64* %RBP.i, align 8
  %2719 = add i64 %2718, -80
  %2720 = add i64 %2717, 11
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i64*
  %2722 = load i64, i64* %2721, align 8
  store i64 %2722, i64* %RDI.i3611.pre-phi, align 8
  %2723 = add i64 %2718, -44
  %2724 = add i64 %2717, 14
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RSI.i3648, align 8
  %2728 = add i64 %2717, 27707
  %2729 = add i64 %2717, 19
  %2730 = load i64, i64* %6, align 8
  %2731 = add i64 %2730, -8
  %2732 = inttoptr i64 %2731 to i64*
  store i64 %2729, i64* %2732, align 8
  store i64 %2731, i64* %6, align 8
  store i64 %2728, i64* %3, align 8
  %call2_401b53 = tail call %struct.Memory* @sub_408780._Z13test_constantIi30custom_lessthanequal_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2728, %struct.Memory* %call2_401b40)
  %2733 = load i64, i64* %3, align 8
  store i64 4297828, i64* %RSI.i3648, align 8
  store i64 4297828, i64* %RDX.i3615, align 8
  %2734 = load i64, i64* %RBP.i, align 8
  %2735 = add i64 %2734, -80
  %2736 = add i64 %2733, 11
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i64*
  %2738 = load i64, i64* %2737, align 8
  store i64 %2738, i64* %RDI.i3611.pre-phi, align 8
  %2739 = add i64 %2734, -44
  %2740 = add i64 %2733, 14
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = zext i32 %2742 to i64
  store i64 %2743, i64* %RSI.i3648, align 8
  %2744 = add i64 %2733, 27848
  %2745 = add i64 %2733, 19
  %2746 = load i64, i64* %6, align 8
  %2747 = add i64 %2746, -8
  %2748 = inttoptr i64 %2747 to i64*
  store i64 %2745, i64* %2748, align 8
  store i64 %2747, i64* %6, align 8
  store i64 %2744, i64* %3, align 8
  %call2_401b66 = tail call %struct.Memory* @sub_408820._Z13test_constantIi20custom_and_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2744, %struct.Memory* %call2_401b53)
  %2749 = load i64, i64* %3, align 8
  store i64 4297851, i64* %RSI.i3648, align 8
  store i64 4297851, i64* %RDX.i3615, align 8
  %2750 = load i64, i64* %RBP.i, align 8
  %2751 = add i64 %2750, -80
  %2752 = add i64 %2749, 11
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i64*
  %2754 = load i64, i64* %2753, align 8
  store i64 %2754, i64* %RDI.i3611.pre-phi, align 8
  %2755 = add i64 %2750, -44
  %2756 = add i64 %2749, 14
  store i64 %2756, i64* %3, align 8
  %2757 = inttoptr i64 %2755 to i32*
  %2758 = load i32, i32* %2757, align 4
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RSI.i3648, align 8
  %2760 = add i64 %2749, 27989
  %2761 = add i64 %2749, 19
  %2762 = load i64, i64* %6, align 8
  %2763 = add i64 %2762, -8
  %2764 = inttoptr i64 %2763 to i64*
  store i64 %2761, i64* %2764, align 8
  store i64 %2763, i64* %6, align 8
  store i64 %2760, i64* %3, align 8
  %call2_401b79 = tail call %struct.Memory* @sub_4088c0._Z13test_constantIi19custom_or_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2760, %struct.Memory* %call2_401b66)
  %2765 = load i64, i64* %3, align 8
  store i64 4297873, i64* %RSI.i3648, align 8
  store i64 4297873, i64* %RDX.i3615, align 8
  %2766 = load i64, i64* %RBP.i, align 8
  %2767 = add i64 %2766, -80
  %2768 = add i64 %2765, 11
  store i64 %2768, i64* %3, align 8
  %2769 = inttoptr i64 %2767 to i64*
  %2770 = load i64, i64* %2769, align 8
  store i64 %2770, i64* %RDI.i3611.pre-phi, align 8
  %2771 = add i64 %2766, -44
  %2772 = add i64 %2765, 14
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to i32*
  %2774 = load i32, i32* %2773, align 4
  %2775 = zext i32 %2774 to i64
  store i64 %2775, i64* %RSI.i3648, align 8
  %2776 = add i64 %2765, 28130
  %2777 = add i64 %2765, 19
  %2778 = load i64, i64* %6, align 8
  %2779 = add i64 %2778, -8
  %2780 = inttoptr i64 %2779 to i64*
  store i64 %2777, i64* %2780, align 8
  store i64 %2779, i64* %6, align 8
  store i64 %2776, i64* %3, align 8
  %call2_401b8c = tail call %struct.Memory* @sub_408960._Z13test_constantIi20custom_xor_constantsIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2776, %struct.Memory* %call2_401b79)
  %2781 = load i64, i64* %3, align 8
  %2782 = add i64 %2781, 2229487
  %2783 = add i64 %2781, 7
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = sext i32 %2785 to i64
  %2787 = mul nsw i64 %2786, 1717986919
  %2788 = lshr i64 %2787, 63
  store i64 %2788, i64* %RCX.i3620, align 8
  %2789 = trunc i64 %2788 to i32
  %2790 = ashr i64 %2787, 34
  store i64 %2790, i64* %RAX.i3622, align 8
  %2791 = trunc i64 %2790 to i32
  %2792 = add i32 %2789, %2791
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %200, align 8
  %2794 = icmp ult i32 %2792, %2791
  %2795 = icmp ult i32 %2792, %2789
  %2796 = or i1 %2794, %2795
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %14, align 1
  %2798 = and i32 %2792, 255
  %2799 = tail call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  store i8 %2802, i8* %21, align 1
  %2803 = trunc i64 %2790 to i32
  %2804 = xor i32 %2803, %2792
  %2805 = lshr i32 %2804, 4
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  store i8 %2807, i8* %27, align 1
  %2808 = icmp eq i32 %2792, 0
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %30, align 1
  %2810 = lshr i32 %2792, 31
  %2811 = trunc i32 %2810 to i8
  store i8 %2811, i8* %33, align 1
  %2812 = lshr i64 %2790, 31
  %2813 = trunc i64 %2812 to i32
  %2814 = and i32 %2813, 1
  %2815 = xor i32 %2810, %2814
  %2816 = add nuw nsw i32 %2815, %2810
  %2817 = icmp eq i32 %2816, 2
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %39, align 1
  %2819 = add i64 %2781, 2229551
  %2820 = add i64 %2781, 40
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i32*
  store i32 %2792, i32* %2821, align 4
  %2822 = load i64, i64* %3, align 8
  store i64 4297896, i64* %RSI.i3648, align 8
  store i64 4297896, i64* %RDX.i3615, align 8
  %2823 = load i64, i64* %RBP.i, align 8
  %2824 = add i64 %2823, -80
  %2825 = add i64 %2822, 11
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i64*
  %2827 = load i64, i64* %2826, align 8
  store i64 %2827, i64* %RDI.i3611.pre-phi, align 8
  %2828 = add i64 %2823, -44
  %2829 = add i64 %2822, 14
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RSI.i3648, align 8
  %2833 = add i64 %2822, 28231
  %2834 = add i64 %2822, 19
  %2835 = load i64, i64* %6, align 8
  %2836 = add i64 %2835, -8
  %2837 = inttoptr i64 %2836 to i64*
  store i64 %2834, i64* %2837, align 8
  store i64 %2836, i64* %6, align 8
  store i64 %2833, i64* %3, align 8
  %call2_401bc7 = tail call %struct.Memory* @sub_408a00._Z13test_constantIi19custom_constant_addIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2833, %struct.Memory* %call2_401b8c)
  %2838 = load i64, i64* %3, align 8
  store i64 4297918, i64* %RSI.i3648, align 8
  store i64 4297918, i64* %RDX.i3615, align 8
  %2839 = load i64, i64* %RBP.i, align 8
  %2840 = add i64 %2839, -80
  %2841 = add i64 %2838, 11
  store i64 %2841, i64* %3, align 8
  %2842 = inttoptr i64 %2840 to i64*
  %2843 = load i64, i64* %2842, align 8
  store i64 %2843, i64* %RDI.i3611.pre-phi, align 8
  %2844 = add i64 %2839, -44
  %2845 = add i64 %2838, 14
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = zext i32 %2847 to i64
  store i64 %2848, i64* %RSI.i3648, align 8
  %2849 = add i64 %2838, 28372
  %2850 = add i64 %2838, 19
  %2851 = load i64, i64* %6, align 8
  %2852 = add i64 %2851, -8
  %2853 = inttoptr i64 %2852 to i64*
  store i64 %2850, i64* %2853, align 8
  store i64 %2852, i64* %6, align 8
  store i64 %2849, i64* %3, align 8
  %call2_401bda = tail call %struct.Memory* @sub_408aa0._Z13test_constantIi28custom_multiple_constant_addIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2849, %struct.Memory* %call2_401bc7)
  %2854 = load i64, i64* %3, align 8
  store i64 4297950, i64* %RSI.i3648, align 8
  store i64 4297950, i64* %RDX.i3615, align 8
  %2855 = load i64, i64* %RBP.i, align 8
  %2856 = add i64 %2855, -80
  %2857 = add i64 %2854, 11
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i64*
  %2859 = load i64, i64* %2858, align 8
  store i64 %2859, i64* %RDI.i3611.pre-phi, align 8
  %2860 = add i64 %2855, -44
  %2861 = add i64 %2854, 14
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = zext i32 %2863 to i64
  store i64 %2864, i64* %RSI.i3648, align 8
  %2865 = add i64 %2854, 28513
  %2866 = add i64 %2854, 19
  %2867 = load i64, i64* %6, align 8
  %2868 = add i64 %2867, -8
  %2869 = inttoptr i64 %2868 to i64*
  store i64 %2866, i64* %2869, align 8
  store i64 %2868, i64* %6, align 8
  store i64 %2865, i64* %3, align 8
  %call2_401bed = tail call %struct.Memory* @sub_408b40._Z13test_constantIi19custom_constant_subIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2865, %struct.Memory* %call2_401bda)
  %2870 = load i64, i64* %3, align 8
  store i64 4297977, i64* %RSI.i3648, align 8
  store i64 4297977, i64* %RDX.i3615, align 8
  %2871 = load i64, i64* %RBP.i, align 8
  %2872 = add i64 %2871, -80
  %2873 = add i64 %2870, 11
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i64*
  %2875 = load i64, i64* %2874, align 8
  store i64 %2875, i64* %RDI.i3611.pre-phi, align 8
  %2876 = add i64 %2871, -44
  %2877 = add i64 %2870, 14
  store i64 %2877, i64* %3, align 8
  %2878 = inttoptr i64 %2876 to i32*
  %2879 = load i32, i32* %2878, align 4
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RSI.i3648, align 8
  %2881 = add i64 %2870, 28654
  %2882 = add i64 %2870, 19
  %2883 = load i64, i64* %6, align 8
  %2884 = add i64 %2883, -8
  %2885 = inttoptr i64 %2884 to i64*
  store i64 %2882, i64* %2885, align 8
  store i64 %2884, i64* %6, align 8
  store i64 %2881, i64* %3, align 8
  %call2_401c00 = tail call %struct.Memory* @sub_408be0._Z13test_constantIi28custom_multiple_constant_subIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2881, %struct.Memory* %call2_401bed)
  %2886 = load i64, i64* %3, align 8
  store i64 4298014, i64* %RSI.i3648, align 8
  store i64 4298014, i64* %RDX.i3615, align 8
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -80
  %2889 = add i64 %2886, 11
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i64*
  %2891 = load i64, i64* %2890, align 8
  store i64 %2891, i64* %RDI.i3611.pre-phi, align 8
  %2892 = add i64 %2887, -44
  %2893 = add i64 %2886, 14
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RSI.i3648, align 8
  %2897 = add i64 %2886, 28795
  %2898 = add i64 %2886, 19
  %2899 = load i64, i64* %6, align 8
  %2900 = add i64 %2899, -8
  %2901 = inttoptr i64 %2900 to i64*
  store i64 %2898, i64* %2901, align 8
  store i64 %2900, i64* %6, align 8
  store i64 %2897, i64* %3, align 8
  %call2_401c13 = tail call %struct.Memory* @sub_408c80._Z13test_constantIi24custom_constant_multiplyIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2897, %struct.Memory* %call2_401c00)
  %2902 = load i64, i64* %3, align 8
  store i64 4298041, i64* %RSI.i3648, align 8
  store i64 4298041, i64* %RDX.i3615, align 8
  %2903 = load i64, i64* %RBP.i, align 8
  %2904 = add i64 %2903, -80
  %2905 = add i64 %2902, 11
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i64*
  %2907 = load i64, i64* %2906, align 8
  store i64 %2907, i64* %RDI.i3611.pre-phi, align 8
  %2908 = add i64 %2903, -44
  %2909 = add i64 %2902, 14
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = zext i32 %2911 to i64
  store i64 %2912, i64* %RSI.i3648, align 8
  %2913 = add i64 %2902, 28936
  %2914 = add i64 %2902, 19
  %2915 = load i64, i64* %6, align 8
  %2916 = add i64 %2915, -8
  %2917 = inttoptr i64 %2916 to i64*
  store i64 %2914, i64* %2917, align 8
  store i64 %2916, i64* %6, align 8
  store i64 %2913, i64* %3, align 8
  %call2_401c26 = tail call %struct.Memory* @sub_408d20._Z13test_constantIi33custom_multiple_constant_multiplyIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2913, %struct.Memory* %call2_401c13)
  %2918 = load i64, i64* %3, align 8
  store i64 4298079, i64* %RSI.i3648, align 8
  store i64 4298079, i64* %RDX.i3615, align 8
  %2919 = load i64, i64* %RBP.i, align 8
  %2920 = add i64 %2919, -80
  %2921 = add i64 %2918, 11
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i64*
  %2923 = load i64, i64* %2922, align 8
  store i64 %2923, i64* %RDI.i3611.pre-phi, align 8
  %2924 = add i64 %2919, -44
  %2925 = add i64 %2918, 14
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RSI.i3648, align 8
  %2929 = add i64 %2918, 29077
  %2930 = add i64 %2918, 19
  %2931 = load i64, i64* %6, align 8
  %2932 = add i64 %2931, -8
  %2933 = inttoptr i64 %2932 to i64*
  store i64 %2930, i64* %2933, align 8
  store i64 %2932, i64* %6, align 8
  store i64 %2929, i64* %3, align 8
  %call2_401c39 = tail call %struct.Memory* @sub_408dc0._Z13test_constantIi34custom_multiple_constant_multiply2IiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2929, %struct.Memory* %call2_401c26)
  %2934 = load i64, i64* %3, align 8
  store i64 4298116, i64* %RSI.i3648, align 8
  store i64 4298116, i64* %RDX.i3615, align 8
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -80
  %2937 = add i64 %2934, 11
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RDI.i3611.pre-phi, align 8
  %2940 = add i64 %2935, -44
  %2941 = add i64 %2934, 14
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RSI.i3648, align 8
  %2945 = add i64 %2934, 29218
  %2946 = add i64 %2934, 19
  %2947 = load i64, i64* %6, align 8
  %2948 = add i64 %2947, -8
  %2949 = inttoptr i64 %2948 to i64*
  store i64 %2946, i64* %2949, align 8
  store i64 %2948, i64* %6, align 8
  store i64 %2945, i64* %3, align 8
  %call2_401c4c = tail call %struct.Memory* @sub_408e60._Z13test_constantIi22custom_constant_divideIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2945, %struct.Memory* %call2_401c39)
  %2950 = load i64, i64* %3, align 8
  store i64 4298141, i64* %RSI.i3648, align 8
  store i64 4298141, i64* %RDX.i3615, align 8
  %2951 = load i64, i64* %RBP.i, align 8
  %2952 = add i64 %2951, -80
  %2953 = add i64 %2950, 11
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2952 to i64*
  %2955 = load i64, i64* %2954, align 8
  store i64 %2955, i64* %RDI.i3611.pre-phi, align 8
  %2956 = add i64 %2951, -44
  %2957 = add i64 %2950, 14
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i32*
  %2959 = load i32, i32* %2958, align 4
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RSI.i3648, align 8
  %2961 = add i64 %2950, 29359
  %2962 = add i64 %2950, 19
  %2963 = load i64, i64* %6, align 8
  %2964 = add i64 %2963, -8
  %2965 = inttoptr i64 %2964 to i64*
  store i64 %2962, i64* %2965, align 8
  store i64 %2964, i64* %6, align 8
  store i64 %2961, i64* %3, align 8
  %call2_401c5f = tail call %struct.Memory* @sub_408f00._Z13test_constantIi31custom_multiple_constant_divideIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2961, %struct.Memory* %call2_401c4c)
  %2966 = load i64, i64* %3, align 8
  store i64 4298176, i64* %RSI.i3648, align 8
  store i64 4298176, i64* %RDX.i3615, align 8
  %2967 = load i64, i64* %RBP.i, align 8
  %2968 = add i64 %2967, -80
  %2969 = add i64 %2966, 11
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i64*
  %2971 = load i64, i64* %2970, align 8
  store i64 %2971, i64* %RDI.i3611.pre-phi, align 8
  %2972 = add i64 %2967, -44
  %2973 = add i64 %2966, 14
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2972 to i32*
  %2975 = load i32, i32* %2974, align 4
  %2976 = zext i32 %2975 to i64
  store i64 %2976, i64* %RSI.i3648, align 8
  %2977 = add i64 %2966, 29500
  %2978 = add i64 %2966, 19
  %2979 = load i64, i64* %6, align 8
  %2980 = add i64 %2979, -8
  %2981 = inttoptr i64 %2980 to i64*
  store i64 %2978, i64* %2981, align 8
  store i64 %2980, i64* %6, align 8
  store i64 %2977, i64* %3, align 8
  %call2_401c72 = tail call %struct.Memory* @sub_408fa0._Z13test_constantIi32custom_multiple_constant_divide2IiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2977, %struct.Memory* %call2_401c5f)
  %2982 = load i64, i64* %3, align 8
  store i64 4298211, i64* %RSI.i3648, align 8
  store i64 4298211, i64* %RDX.i3615, align 8
  %2983 = load i64, i64* %RBP.i, align 8
  %2984 = add i64 %2983, -80
  %2985 = add i64 %2982, 11
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i64*
  %2987 = load i64, i64* %2986, align 8
  store i64 %2987, i64* %RDI.i3611.pre-phi, align 8
  %2988 = add i64 %2983, -44
  %2989 = add i64 %2982, 14
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i32*
  %2991 = load i32, i32* %2990, align 4
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %RSI.i3648, align 8
  %2993 = add i64 %2982, 29641
  %2994 = add i64 %2982, 19
  %2995 = load i64, i64* %6, align 8
  %2996 = add i64 %2995, -8
  %2997 = inttoptr i64 %2996 to i64*
  store i64 %2994, i64* %2997, align 8
  store i64 %2996, i64* %6, align 8
  store i64 %2993, i64* %3, align 8
  %call2_401c85 = tail call %struct.Memory* @sub_409040._Z13test_constantIi30custom_multiple_constant_mixedIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %2993, %struct.Memory* %call2_401c72)
  %2998 = load i64, i64* %3, align 8
  store i64 4298244, i64* %RSI.i3648, align 8
  store i64 4298244, i64* %RDX.i3615, align 8
  %2999 = load i64, i64* %RBP.i, align 8
  %3000 = add i64 %2999, -80
  %3001 = add i64 %2998, 11
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %3000 to i64*
  %3003 = load i64, i64* %3002, align 8
  store i64 %3003, i64* %RDI.i3611.pre-phi, align 8
  %3004 = add i64 %2999, -44
  %3005 = add i64 %2998, 14
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = zext i32 %3007 to i64
  store i64 %3008, i64* %RSI.i3648, align 8
  %3009 = add i64 %2998, 29782
  %3010 = add i64 %2998, 19
  %3011 = load i64, i64* %6, align 8
  %3012 = add i64 %3011, -8
  %3013 = inttoptr i64 %3012 to i64*
  store i64 %3010, i64* %3013, align 8
  store i64 %3012, i64* %6, align 8
  store i64 %3009, i64* %3, align 8
  %call2_401c98 = tail call %struct.Memory* @sub_4090e0._Z13test_constantIi19custom_constant_andIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3009, %struct.Memory* %call2_401c85)
  %3014 = load i64, i64* %3, align 8
  store i64 4298266, i64* %RSI.i3648, align 8
  store i64 4298266, i64* %RDX.i3615, align 8
  %3015 = load i64, i64* %RBP.i, align 8
  %3016 = add i64 %3015, -80
  %3017 = add i64 %3014, 11
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i64*
  %3019 = load i64, i64* %3018, align 8
  store i64 %3019, i64* %RDI.i3611.pre-phi, align 8
  %3020 = add i64 %3015, -44
  %3021 = add i64 %3014, 14
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RSI.i3648, align 8
  %3025 = add i64 %3014, 29923
  %3026 = add i64 %3014, 19
  %3027 = load i64, i64* %6, align 8
  %3028 = add i64 %3027, -8
  %3029 = inttoptr i64 %3028 to i64*
  store i64 %3026, i64* %3029, align 8
  store i64 %3028, i64* %6, align 8
  store i64 %3025, i64* %3, align 8
  %call2_401cab = tail call %struct.Memory* @sub_409180._Z13test_constantIi28custom_multiple_constant_andIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3025, %struct.Memory* %call2_401c98)
  %3030 = load i64, i64* %3, align 8
  store i64 4298297, i64* %RSI.i3648, align 8
  store i64 4298297, i64* %RDX.i3615, align 8
  %3031 = load i64, i64* %RBP.i, align 8
  %3032 = add i64 %3031, -80
  %3033 = add i64 %3030, 11
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i64*
  %3035 = load i64, i64* %3034, align 8
  store i64 %3035, i64* %RDI.i3611.pre-phi, align 8
  %3036 = add i64 %3031, -44
  %3037 = add i64 %3030, 14
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i32*
  %3039 = load i32, i32* %3038, align 4
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RSI.i3648, align 8
  %3041 = add i64 %3030, 30064
  %3042 = add i64 %3030, 19
  %3043 = load i64, i64* %6, align 8
  %3044 = add i64 %3043, -8
  %3045 = inttoptr i64 %3044 to i64*
  store i64 %3042, i64* %3045, align 8
  store i64 %3044, i64* %6, align 8
  store i64 %3041, i64* %3, align 8
  %call2_401cbe = tail call %struct.Memory* @sub_409220._Z13test_constantIi18custom_constant_orIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3041, %struct.Memory* %call2_401cab)
  %3046 = load i64, i64* %3, align 8
  store i64 4298318, i64* %RSI.i3648, align 8
  store i64 4298318, i64* %RDX.i3615, align 8
  %3047 = load i64, i64* %RBP.i, align 8
  %3048 = add i64 %3047, -80
  %3049 = add i64 %3046, 11
  store i64 %3049, i64* %3, align 8
  %3050 = inttoptr i64 %3048 to i64*
  %3051 = load i64, i64* %3050, align 8
  store i64 %3051, i64* %RDI.i3611.pre-phi, align 8
  %3052 = add i64 %3047, -44
  %3053 = add i64 %3046, 14
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = zext i32 %3055 to i64
  store i64 %3056, i64* %RSI.i3648, align 8
  %3057 = add i64 %3046, 30205
  %3058 = add i64 %3046, 19
  %3059 = load i64, i64* %6, align 8
  %3060 = add i64 %3059, -8
  %3061 = inttoptr i64 %3060 to i64*
  store i64 %3058, i64* %3061, align 8
  store i64 %3060, i64* %6, align 8
  store i64 %3057, i64* %3, align 8
  %call2_401cd1 = tail call %struct.Memory* @sub_4092c0._Z13test_constantIi27custom_multiple_constant_orIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3057, %struct.Memory* %call2_401cbe)
  %3062 = load i64, i64* %3, align 8
  store i64 4298348, i64* %RSI.i3648, align 8
  store i64 4298348, i64* %RDX.i3615, align 8
  %3063 = load i64, i64* %RBP.i, align 8
  %3064 = add i64 %3063, -80
  %3065 = add i64 %3062, 11
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i64*
  %3067 = load i64, i64* %3066, align 8
  store i64 %3067, i64* %RDI.i3611.pre-phi, align 8
  %3068 = add i64 %3063, -44
  %3069 = add i64 %3062, 14
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i32*
  %3071 = load i32, i32* %3070, align 4
  %3072 = zext i32 %3071 to i64
  store i64 %3072, i64* %RSI.i3648, align 8
  %3073 = add i64 %3062, 30346
  %3074 = add i64 %3062, 19
  %3075 = load i64, i64* %6, align 8
  %3076 = add i64 %3075, -8
  %3077 = inttoptr i64 %3076 to i64*
  store i64 %3074, i64* %3077, align 8
  store i64 %3076, i64* %6, align 8
  store i64 %3073, i64* %3, align 8
  %call2_401ce4 = tail call %struct.Memory* @sub_409360._Z13test_constantIi19custom_constant_xorIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3073, %struct.Memory* %call2_401cd1)
  %3078 = load i64, i64* %3, align 8
  store i64 4298370, i64* %RSI.i3648, align 8
  store i64 4298370, i64* %RDX.i3615, align 8
  %3079 = load i64, i64* %RBP.i, align 8
  %3080 = add i64 %3079, -80
  %3081 = add i64 %3078, 11
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i64*
  %3083 = load i64, i64* %3082, align 8
  store i64 %3083, i64* %RDI.i3611.pre-phi, align 8
  %3084 = add i64 %3079, -44
  %3085 = add i64 %3078, 14
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  %3088 = zext i32 %3087 to i64
  store i64 %3088, i64* %RSI.i3648, align 8
  %3089 = add i64 %3078, 30487
  %3090 = add i64 %3078, 19
  %3091 = load i64, i64* %6, align 8
  %3092 = add i64 %3091, -8
  %3093 = inttoptr i64 %3092 to i64*
  store i64 %3090, i64* %3093, align 8
  store i64 %3092, i64* %6, align 8
  store i64 %3089, i64* %3, align 8
  %call2_401cf7 = tail call %struct.Memory* @sub_409400._Z13test_constantIi28custom_multiple_constant_xorIiEEvPT_iPKc(%struct.State* nonnull %0, i64 %3089, %struct.Memory* %call2_401ce4)
  %3094 = load i64, i64* %3, align 8
  %3095 = add i64 %3094, 2229132
  %3096 = add i64 %3094, 9
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to double*
  %3098 = load double, double* %3097, align 8
  %3099 = tail call double @llvm.trunc.f64(double %3098)
  %3100 = tail call double @llvm.fabs.f64(double %3099)
  %3101 = fcmp ogt double %3100, 0x43E0000000000000
  %3102 = fptosi double %3099 to i64
  %3103 = trunc i64 %3102 to i32
  %3104 = select i1 %3101, i32 0, i32 %3103
  store i64 6654928, i64* %RAX.i3622, align 8
  store i64 6686928, i64* %200, align 8
  store i64 6686928, i64* %RCX.i3620, align 8
  store i64 6654928, i64* %RDI.i3611.pre-phi, align 8
  %3105 = load i64, i64* %RBP.i, align 8
  %3106 = add i64 %3105, -84
  %3107 = add i64 %3094, 35
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  store i32 %3104, i32* %3108, align 4
  %3109 = load i64, i64* %RCX.i3620, align 8
  %3110 = load i64, i64* %3, align 8
  store i64 %3109, i64* %RSI.i3648, align 8
  %3111 = load i64, i64* %RBP.i, align 8
  %3112 = add i64 %3111, -84
  %3113 = add i64 %3110, 6
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i32*
  %3115 = load i32, i32* %3114, align 4
  %3116 = zext i32 %3115 to i64
  store i64 %3116, i64* %RDX.i3615, align 8
  %3117 = add i64 %3111, -96
  %3118 = load i64, i64* %RAX.i3622, align 8
  %3119 = add i64 %3110, 10
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3117 to i64*
  store i64 %3118, i64* %3120, align 8
  %3121 = load i64, i64* %3, align 8
  %3122 = add i64 %3121, 30583
  %3123 = add i64 %3121, 5
  %3124 = load i64, i64* %6, align 8
  %3125 = add i64 %3124, -8
  %3126 = inttoptr i64 %3125 to i64*
  store i64 %3123, i64* %3126, align 8
  store i64 %3125, i64* %6, align 8
  store i64 %3122, i64* %3, align 8
  %call2_401d29 = tail call %struct.Memory* @sub_4094a0._Z4fillIPjjEvT_S1_T0_(%struct.State* nonnull %0, i64 %3122, %struct.Memory* %call2_401cf7)
  %3127 = load i64, i64* %3, align 8
  %3128 = add i64 %3127, 2229074
  %3129 = add i64 %3127, 6
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = add i64 %3127, 2229138
  %3133 = add i64 %3127, 12
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  store i32 %3131, i32* %3134, align 4
  %3135 = load i64, i64* %3, align 8
  store i64 4297494, i64* %RDX.i3615, align 8
  %3136 = load i64, i64* %RBP.i, align 8
  %3137 = add i64 %3136, -96
  %3138 = add i64 %3135, 9
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i64*
  %3140 = load i64, i64* %3139, align 8
  store i64 %3140, i64* %RDI.i3611.pre-phi, align 8
  %3141 = add i64 %3136, -44
  %3142 = add i64 %3135, 12
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i32*
  %3144 = load i32, i32* %3143, align 4
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %RSI.i3648, align 8
  %3146 = add i64 %3135, 30630
  %3147 = add i64 %3135, 17
  %3148 = load i64, i64* %6, align 8
  %3149 = add i64 %3148, -8
  %3150 = inttoptr i64 %3149 to i64*
  store i64 %3147, i64* %3150, align 8
  store i64 %3149, i64* %6, align 8
  store i64 %3146, i64* %3, align 8
  %call2_401d46 = tail call %struct.Memory* @sub_4094e0._Z13test_constantIj10custom_twoIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3146, %struct.Memory* %call2_401d29)
  %3151 = load i64, i64* %3, align 8
  store i64 4297512, i64* %RSI.i3648, align 8
  store i64 4297512, i64* %RDX.i3615, align 8
  %3152 = load i64, i64* %RBP.i, align 8
  %3153 = add i64 %3152, -96
  %3154 = add i64 %3151, 11
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i64*
  %3156 = load i64, i64* %3155, align 8
  store i64 %3156, i64* %RDI.i3611.pre-phi, align 8
  %3157 = add i64 %3152, -44
  %3158 = add i64 %3151, 14
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = zext i32 %3160 to i64
  store i64 %3161, i64* %RSI.i3648, align 8
  %3162 = add i64 %3151, 30773
  %3163 = add i64 %3151, 19
  %3164 = load i64, i64* %6, align 8
  %3165 = add i64 %3164, -8
  %3166 = inttoptr i64 %3165 to i64*
  store i64 %3163, i64* %3166, align 8
  store i64 %3165, i64* %6, align 8
  store i64 %3162, i64* %3, align 8
  %call2_401d59 = tail call %struct.Memory* @sub_409580._Z13test_constantIj20custom_add_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3162, %struct.Memory* %call2_401d46)
  %3167 = load i64, i64* %3, align 8
  store i64 4297535, i64* %RSI.i3648, align 8
  store i64 4297535, i64* %RDX.i3615, align 8
  %3168 = load i64, i64* %RBP.i, align 8
  %3169 = add i64 %3168, -96
  %3170 = add i64 %3167, 11
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to i64*
  %3172 = load i64, i64* %3171, align 8
  store i64 %3172, i64* %RDI.i3611.pre-phi, align 8
  %3173 = add i64 %3168, -44
  %3174 = add i64 %3167, 14
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RSI.i3648, align 8
  %3178 = add i64 %3167, 30914
  %3179 = add i64 %3167, 19
  %3180 = load i64, i64* %6, align 8
  %3181 = add i64 %3180, -8
  %3182 = inttoptr i64 %3181 to i64*
  store i64 %3179, i64* %3182, align 8
  store i64 %3181, i64* %6, align 8
  store i64 %3178, i64* %3, align 8
  %call2_401d6c = tail call %struct.Memory* @sub_409620._Z13test_constantIj20custom_sub_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3178, %struct.Memory* %call2_401d59)
  %3183 = load i64, i64* %3, align 8
  store i64 4297563, i64* %RSI.i3648, align 8
  store i64 4297563, i64* %RDX.i3615, align 8
  %3184 = load i64, i64* %RBP.i, align 8
  %3185 = add i64 %3184, -96
  %3186 = add i64 %3183, 11
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i64*
  %3188 = load i64, i64* %3187, align 8
  store i64 %3188, i64* %RDI.i3611.pre-phi, align 8
  %3189 = add i64 %3184, -44
  %3190 = add i64 %3183, 14
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i32*
  %3192 = load i32, i32* %3191, align 4
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RSI.i3648, align 8
  %3194 = add i64 %3183, 31055
  %3195 = add i64 %3183, 19
  %3196 = load i64, i64* %6, align 8
  %3197 = add i64 %3196, -8
  %3198 = inttoptr i64 %3197 to i64*
  store i64 %3195, i64* %3198, align 8
  store i64 %3197, i64* %6, align 8
  store i64 %3194, i64* %3, align 8
  %call2_401d7f = tail call %struct.Memory* @sub_4096c0._Z13test_constantIj25custom_multiply_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3194, %struct.Memory* %call2_401d6c)
  %3199 = load i64, i64* %3, align 8
  store i64 4297591, i64* %RSI.i3648, align 8
  store i64 4297591, i64* %RDX.i3615, align 8
  %3200 = load i64, i64* %RBP.i, align 8
  %3201 = add i64 %3200, -96
  %3202 = add i64 %3199, 11
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i64*
  %3204 = load i64, i64* %3203, align 8
  store i64 %3204, i64* %RDI.i3611.pre-phi, align 8
  %3205 = add i64 %3200, -44
  %3206 = add i64 %3199, 14
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3205 to i32*
  %3208 = load i32, i32* %3207, align 4
  %3209 = zext i32 %3208 to i64
  store i64 %3209, i64* %RSI.i3648, align 8
  %3210 = add i64 %3199, 31196
  %3211 = add i64 %3199, 19
  %3212 = load i64, i64* %6, align 8
  %3213 = add i64 %3212, -8
  %3214 = inttoptr i64 %3213 to i64*
  store i64 %3211, i64* %3214, align 8
  store i64 %3213, i64* %6, align 8
  store i64 %3210, i64* %3, align 8
  %call2_401d92 = tail call %struct.Memory* @sub_409760._Z13test_constantIj23custom_divide_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3210, %struct.Memory* %call2_401d7f)
  %3215 = load i64, i64* %3, align 8
  store i64 4297617, i64* %RSI.i3648, align 8
  store i64 4297617, i64* %RDX.i3615, align 8
  %3216 = load i64, i64* %RBP.i, align 8
  %3217 = add i64 %3216, -96
  %3218 = add i64 %3215, 11
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i64*
  %3220 = load i64, i64* %3219, align 8
  store i64 %3220, i64* %RDI.i3611.pre-phi, align 8
  %3221 = add i64 %3216, -44
  %3222 = add i64 %3215, 14
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  %3224 = load i32, i32* %3223, align 4
  %3225 = zext i32 %3224 to i64
  store i64 %3225, i64* %RSI.i3648, align 8
  %3226 = add i64 %3215, 31337
  %3227 = add i64 %3215, 19
  %3228 = load i64, i64* %6, align 8
  %3229 = add i64 %3228, -8
  %3230 = inttoptr i64 %3229 to i64*
  store i64 %3227, i64* %3230, align 8
  store i64 %3229, i64* %6, align 8
  store i64 %3226, i64* %3, align 8
  %call2_401da5 = tail call %struct.Memory* @sub_409800._Z13test_constantIj20custom_mod_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3226, %struct.Memory* %call2_401d92)
  %3231 = load i64, i64* %3, align 8
  store i64 4297640, i64* %RSI.i3648, align 8
  store i64 4297640, i64* %RDX.i3615, align 8
  %3232 = load i64, i64* %RBP.i, align 8
  %3233 = add i64 %3232, -96
  %3234 = add i64 %3231, 11
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i64*
  %3236 = load i64, i64* %3235, align 8
  store i64 %3236, i64* %RDI.i3611.pre-phi, align 8
  %3237 = add i64 %3232, -44
  %3238 = add i64 %3231, 14
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to i32*
  %3240 = load i32, i32* %3239, align 4
  %3241 = zext i32 %3240 to i64
  store i64 %3241, i64* %RSI.i3648, align 8
  %3242 = add i64 %3231, 31478
  %3243 = add i64 %3231, 19
  %3244 = load i64, i64* %6, align 8
  %3245 = add i64 %3244, -8
  %3246 = inttoptr i64 %3245 to i64*
  store i64 %3243, i64* %3246, align 8
  store i64 %3245, i64* %6, align 8
  store i64 %3242, i64* %3, align 8
  %call2_401db8 = tail call %struct.Memory* @sub_4098a0._Z13test_constantIj22custom_equal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3242, %struct.Memory* %call2_401da5)
  %3247 = load i64, i64* %3, align 8
  store i64 4297665, i64* %RSI.i3648, align 8
  store i64 4297665, i64* %RDX.i3615, align 8
  %3248 = load i64, i64* %RBP.i, align 8
  %3249 = add i64 %3248, -96
  %3250 = add i64 %3247, 11
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i64*
  %3252 = load i64, i64* %3251, align 8
  store i64 %3252, i64* %RDI.i3611.pre-phi, align 8
  %3253 = add i64 %3248, -44
  %3254 = add i64 %3247, 14
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = zext i32 %3256 to i64
  store i64 %3257, i64* %RSI.i3648, align 8
  %3258 = add i64 %3247, 31619
  %3259 = add i64 %3247, 19
  %3260 = load i64, i64* %6, align 8
  %3261 = add i64 %3260, -8
  %3262 = inttoptr i64 %3261 to i64*
  store i64 %3259, i64* %3262, align 8
  store i64 %3261, i64* %6, align 8
  store i64 %3258, i64* %3, align 8
  %call2_401dcb = tail call %struct.Memory* @sub_409940._Z13test_constantIj25custom_notequal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3258, %struct.Memory* %call2_401db8)
  %3263 = load i64, i64* %3, align 8
  store i64 4297693, i64* %RSI.i3648, align 8
  store i64 4297693, i64* %RDX.i3615, align 8
  %3264 = load i64, i64* %RBP.i, align 8
  %3265 = add i64 %3264, -96
  %3266 = add i64 %3263, 11
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i64*
  %3268 = load i64, i64* %3267, align 8
  store i64 %3268, i64* %RDI.i3611.pre-phi, align 8
  %3269 = add i64 %3264, -44
  %3270 = add i64 %3263, 14
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i32*
  %3272 = load i32, i32* %3271, align 4
  %3273 = zext i32 %3272 to i64
  store i64 %3273, i64* %RSI.i3648, align 8
  %3274 = add i64 %3263, 31760
  %3275 = add i64 %3263, 19
  %3276 = load i64, i64* %6, align 8
  %3277 = add i64 %3276, -8
  %3278 = inttoptr i64 %3277 to i64*
  store i64 %3275, i64* %3278, align 8
  store i64 %3277, i64* %6, align 8
  store i64 %3274, i64* %3, align 8
  %call2_401dde = tail call %struct.Memory* @sub_4099e0._Z13test_constantIj28custom_greaterthan_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3274, %struct.Memory* %call2_401dcb)
  %3279 = load i64, i64* %3, align 8
  store i64 4297725, i64* %RSI.i3648, align 8
  store i64 4297725, i64* %RDX.i3615, align 8
  %3280 = load i64, i64* %RBP.i, align 8
  %3281 = add i64 %3280, -96
  %3282 = add i64 %3279, 11
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i64*
  %3284 = load i64, i64* %3283, align 8
  store i64 %3284, i64* %RDI.i3611.pre-phi, align 8
  %3285 = add i64 %3280, -44
  %3286 = add i64 %3279, 14
  store i64 %3286, i64* %3, align 8
  %3287 = inttoptr i64 %3285 to i32*
  %3288 = load i32, i32* %3287, align 4
  %3289 = zext i32 %3288 to i64
  store i64 %3289, i64* %RSI.i3648, align 8
  %3290 = add i64 %3279, 31901
  %3291 = add i64 %3279, 19
  %3292 = load i64, i64* %6, align 8
  %3293 = add i64 %3292, -8
  %3294 = inttoptr i64 %3293 to i64*
  store i64 %3291, i64* %3294, align 8
  store i64 %3293, i64* %6, align 8
  store i64 %3290, i64* %3, align 8
  %call2_401df1 = tail call %struct.Memory* @sub_409a80._Z13test_constantIj25custom_lessthan_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3290, %struct.Memory* %call2_401dde)
  %3295 = load i64, i64* %3, align 8
  store i64 4297754, i64* %RSI.i3648, align 8
  store i64 4297754, i64* %RDX.i3615, align 8
  %3296 = load i64, i64* %RBP.i, align 8
  %3297 = add i64 %3296, -96
  %3298 = add i64 %3295, 11
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i64*
  %3300 = load i64, i64* %3299, align 8
  store i64 %3300, i64* %RDI.i3611.pre-phi, align 8
  %3301 = add i64 %3296, -44
  %3302 = add i64 %3295, 14
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  %3304 = load i32, i32* %3303, align 4
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RSI.i3648, align 8
  %3306 = add i64 %3295, 32042
  %3307 = add i64 %3295, 19
  %3308 = load i64, i64* %6, align 8
  %3309 = add i64 %3308, -8
  %3310 = inttoptr i64 %3309 to i64*
  store i64 %3307, i64* %3310, align 8
  store i64 %3309, i64* %6, align 8
  store i64 %3306, i64* %3, align 8
  %call2_401e04 = tail call %struct.Memory* @sub_409b20._Z13test_constantIj33custom_greaterthanequal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3306, %struct.Memory* %call2_401df1)
  %3311 = load i64, i64* %3, align 8
  store i64 4297792, i64* %RSI.i3648, align 8
  store i64 4297792, i64* %RDX.i3615, align 8
  %3312 = load i64, i64* %RBP.i, align 8
  %3313 = add i64 %3312, -96
  %3314 = add i64 %3311, 11
  store i64 %3314, i64* %3, align 8
  %3315 = inttoptr i64 %3313 to i64*
  %3316 = load i64, i64* %3315, align 8
  store i64 %3316, i64* %RDI.i3611.pre-phi, align 8
  %3317 = add i64 %3312, -44
  %3318 = add i64 %3311, 14
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = zext i32 %3320 to i64
  store i64 %3321, i64* %RSI.i3648, align 8
  %3322 = add i64 %3311, 32183
  %3323 = add i64 %3311, 19
  %3324 = load i64, i64* %6, align 8
  %3325 = add i64 %3324, -8
  %3326 = inttoptr i64 %3325 to i64*
  store i64 %3323, i64* %3326, align 8
  store i64 %3325, i64* %6, align 8
  store i64 %3322, i64* %3, align 8
  %call2_401e17 = tail call %struct.Memory* @sub_409bc0._Z13test_constantIj30custom_lessthanequal_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3322, %struct.Memory* %call2_401e04)
  %3327 = load i64, i64* %3, align 8
  store i64 4297827, i64* %RSI.i3648, align 8
  store i64 4297827, i64* %RDX.i3615, align 8
  %3328 = load i64, i64* %RBP.i, align 8
  %3329 = add i64 %3328, -96
  %3330 = add i64 %3327, 11
  store i64 %3330, i64* %3, align 8
  %3331 = inttoptr i64 %3329 to i64*
  %3332 = load i64, i64* %3331, align 8
  store i64 %3332, i64* %RDI.i3611.pre-phi, align 8
  %3333 = add i64 %3328, -44
  %3334 = add i64 %3327, 14
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3333 to i32*
  %3336 = load i32, i32* %3335, align 4
  %3337 = zext i32 %3336 to i64
  store i64 %3337, i64* %RSI.i3648, align 8
  %3338 = add i64 %3327, 32324
  %3339 = add i64 %3327, 19
  %3340 = load i64, i64* %6, align 8
  %3341 = add i64 %3340, -8
  %3342 = inttoptr i64 %3341 to i64*
  store i64 %3339, i64* %3342, align 8
  store i64 %3341, i64* %6, align 8
  store i64 %3338, i64* %3, align 8
  %call2_401e2a = tail call %struct.Memory* @sub_409c60._Z13test_constantIj20custom_and_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3338, %struct.Memory* %call2_401e17)
  %3343 = load i64, i64* %3, align 8
  store i64 4297850, i64* %RSI.i3648, align 8
  store i64 4297850, i64* %RDX.i3615, align 8
  %3344 = load i64, i64* %RBP.i, align 8
  %3345 = add i64 %3344, -96
  %3346 = add i64 %3343, 11
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i64*
  %3348 = load i64, i64* %3347, align 8
  store i64 %3348, i64* %RDI.i3611.pre-phi, align 8
  %3349 = add i64 %3344, -44
  %3350 = add i64 %3343, 14
  store i64 %3350, i64* %3, align 8
  %3351 = inttoptr i64 %3349 to i32*
  %3352 = load i32, i32* %3351, align 4
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RSI.i3648, align 8
  %3354 = add i64 %3343, 32465
  %3355 = add i64 %3343, 19
  %3356 = load i64, i64* %6, align 8
  %3357 = add i64 %3356, -8
  %3358 = inttoptr i64 %3357 to i64*
  store i64 %3355, i64* %3358, align 8
  store i64 %3357, i64* %6, align 8
  store i64 %3354, i64* %3, align 8
  %call2_401e3d = tail call %struct.Memory* @sub_409d00._Z13test_constantIj19custom_or_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3354, %struct.Memory* %call2_401e2a)
  %3359 = load i64, i64* %3, align 8
  store i64 4297872, i64* %RSI.i3648, align 8
  store i64 4297872, i64* %RDX.i3615, align 8
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -96
  %3362 = add i64 %3359, 11
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i64*
  %3364 = load i64, i64* %3363, align 8
  store i64 %3364, i64* %RDI.i3611.pre-phi, align 8
  %3365 = add i64 %3360, -44
  %3366 = add i64 %3359, 14
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i32*
  %3368 = load i32, i32* %3367, align 4
  %3369 = zext i32 %3368 to i64
  store i64 %3369, i64* %RSI.i3648, align 8
  %3370 = add i64 %3359, 32606
  %3371 = add i64 %3359, 19
  %3372 = load i64, i64* %6, align 8
  %3373 = add i64 %3372, -8
  %3374 = inttoptr i64 %3373 to i64*
  store i64 %3371, i64* %3374, align 8
  store i64 %3373, i64* %6, align 8
  store i64 %3370, i64* %3, align 8
  %call2_401e50 = tail call %struct.Memory* @sub_409da0._Z13test_constantIj20custom_xor_constantsIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3370, %struct.Memory* %call2_401e3d)
  %3375 = load i64, i64* %3, align 8
  %3376 = add i64 %3375, 2228779
  %3377 = add i64 %3375, 7
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = sext i32 %3379 to i64
  %3381 = mul nsw i64 %3380, 1717986919
  %3382 = lshr i64 %3381, 63
  store i64 %3382, i64* %RCX.i3620, align 8
  %3383 = trunc i64 %3382 to i32
  %3384 = ashr i64 %3381, 34
  store i64 %3384, i64* %RAX.i3622, align 8
  %3385 = trunc i64 %3384 to i32
  %3386 = add i32 %3383, %3385
  %3387 = zext i32 %3386 to i64
  store i64 %3387, i64* %200, align 8
  %3388 = icmp ult i32 %3386, %3385
  %3389 = icmp ult i32 %3386, %3383
  %3390 = or i1 %3388, %3389
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %14, align 1
  %3392 = and i32 %3386, 255
  %3393 = tail call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  store i8 %3396, i8* %21, align 1
  %3397 = trunc i64 %3384 to i32
  %3398 = xor i32 %3397, %3386
  %3399 = lshr i32 %3398, 4
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  store i8 %3401, i8* %27, align 1
  %3402 = icmp eq i32 %3386, 0
  %3403 = zext i1 %3402 to i8
  store i8 %3403, i8* %30, align 1
  %3404 = lshr i32 %3386, 31
  %3405 = trunc i32 %3404 to i8
  store i8 %3405, i8* %33, align 1
  %3406 = lshr i64 %3384, 31
  %3407 = trunc i64 %3406 to i32
  %3408 = and i32 %3407, 1
  %3409 = xor i32 %3404, %3408
  %3410 = add nuw nsw i32 %3409, %3404
  %3411 = icmp eq i32 %3410, 2
  %3412 = zext i1 %3411 to i8
  store i8 %3412, i8* %39, align 1
  %3413 = add i64 %3375, 2228843
  %3414 = add i64 %3375, 40
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i32*
  store i32 %3386, i32* %3415, align 4
  %3416 = load i64, i64* %3, align 8
  store i64 4297895, i64* %RSI.i3648, align 8
  store i64 4297895, i64* %RDX.i3615, align 8
  %3417 = load i64, i64* %RBP.i, align 8
  %3418 = add i64 %3417, -96
  %3419 = add i64 %3416, 11
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %RDI.i3611.pre-phi, align 8
  %3422 = add i64 %3417, -44
  %3423 = add i64 %3416, 14
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i32*
  %3425 = load i32, i32* %3424, align 4
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RSI.i3648, align 8
  %3427 = add i64 %3416, 32707
  %3428 = add i64 %3416, 19
  %3429 = load i64, i64* %6, align 8
  %3430 = add i64 %3429, -8
  %3431 = inttoptr i64 %3430 to i64*
  store i64 %3428, i64* %3431, align 8
  store i64 %3430, i64* %6, align 8
  store i64 %3427, i64* %3, align 8
  %call2_401e8b = tail call %struct.Memory* @sub_409e40._Z13test_constantIj19custom_constant_addIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3427, %struct.Memory* %call2_401e50)
  %3432 = load i64, i64* %3, align 8
  store i64 4297917, i64* %RSI.i3648, align 8
  store i64 4297917, i64* %RDX.i3615, align 8
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -96
  %3435 = add i64 %3432, 11
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i64*
  %3437 = load i64, i64* %3436, align 8
  store i64 %3437, i64* %RDI.i3611.pre-phi, align 8
  %3438 = add i64 %3433, -44
  %3439 = add i64 %3432, 14
  store i64 %3439, i64* %3, align 8
  %3440 = inttoptr i64 %3438 to i32*
  %3441 = load i32, i32* %3440, align 4
  %3442 = zext i32 %3441 to i64
  store i64 %3442, i64* %RSI.i3648, align 8
  %3443 = add i64 %3432, 32848
  %3444 = add i64 %3432, 19
  %3445 = load i64, i64* %6, align 8
  %3446 = add i64 %3445, -8
  %3447 = inttoptr i64 %3446 to i64*
  store i64 %3444, i64* %3447, align 8
  store i64 %3446, i64* %6, align 8
  store i64 %3443, i64* %3, align 8
  %call2_401e9e = tail call %struct.Memory* @sub_409ee0._Z13test_constantIj28custom_multiple_constant_addIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3443, %struct.Memory* %call2_401e8b)
  %3448 = load i64, i64* %3, align 8
  store i64 4297949, i64* %RSI.i3648, align 8
  store i64 4297949, i64* %RDX.i3615, align 8
  %3449 = load i64, i64* %RBP.i, align 8
  %3450 = add i64 %3449, -96
  %3451 = add i64 %3448, 11
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3450 to i64*
  %3453 = load i64, i64* %3452, align 8
  store i64 %3453, i64* %RDI.i3611.pre-phi, align 8
  %3454 = add i64 %3449, -44
  %3455 = add i64 %3448, 14
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = zext i32 %3457 to i64
  store i64 %3458, i64* %RSI.i3648, align 8
  %3459 = add i64 %3448, 32989
  %3460 = add i64 %3448, 19
  %3461 = load i64, i64* %6, align 8
  %3462 = add i64 %3461, -8
  %3463 = inttoptr i64 %3462 to i64*
  store i64 %3460, i64* %3463, align 8
  store i64 %3462, i64* %6, align 8
  store i64 %3459, i64* %3, align 8
  %call2_401eb1 = tail call %struct.Memory* @sub_409f80._Z13test_constantIj19custom_constant_subIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3459, %struct.Memory* %call2_401e9e)
  %3464 = load i64, i64* %3, align 8
  store i64 4297976, i64* %RSI.i3648, align 8
  store i64 4297976, i64* %RDX.i3615, align 8
  %3465 = load i64, i64* %RBP.i, align 8
  %3466 = add i64 %3465, -96
  %3467 = add i64 %3464, 11
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i64*
  %3469 = load i64, i64* %3468, align 8
  store i64 %3469, i64* %RDI.i3611.pre-phi, align 8
  %3470 = add i64 %3465, -44
  %3471 = add i64 %3464, 14
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %RSI.i3648, align 8
  %3475 = add i64 %3464, 33130
  %3476 = add i64 %3464, 19
  %3477 = load i64, i64* %6, align 8
  %3478 = add i64 %3477, -8
  %3479 = inttoptr i64 %3478 to i64*
  store i64 %3476, i64* %3479, align 8
  store i64 %3478, i64* %6, align 8
  store i64 %3475, i64* %3, align 8
  %call2_401ec4 = tail call %struct.Memory* @sub_40a020._Z13test_constantIj28custom_multiple_constant_subIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3475, %struct.Memory* %call2_401eb1)
  %3480 = load i64, i64* %3, align 8
  store i64 4298013, i64* %RSI.i3648, align 8
  store i64 4298013, i64* %RDX.i3615, align 8
  %3481 = load i64, i64* %RBP.i, align 8
  %3482 = add i64 %3481, -96
  %3483 = add i64 %3480, 11
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i64*
  %3485 = load i64, i64* %3484, align 8
  store i64 %3485, i64* %RDI.i3611.pre-phi, align 8
  %3486 = add i64 %3481, -44
  %3487 = add i64 %3480, 14
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i32*
  %3489 = load i32, i32* %3488, align 4
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RSI.i3648, align 8
  %3491 = add i64 %3480, 33271
  %3492 = add i64 %3480, 19
  %3493 = load i64, i64* %6, align 8
  %3494 = add i64 %3493, -8
  %3495 = inttoptr i64 %3494 to i64*
  store i64 %3492, i64* %3495, align 8
  store i64 %3494, i64* %6, align 8
  store i64 %3491, i64* %3, align 8
  %call2_401ed7 = tail call %struct.Memory* @sub_40a0c0._Z13test_constantIj24custom_constant_multiplyIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3491, %struct.Memory* %call2_401ec4)
  %3496 = load i64, i64* %3, align 8
  store i64 4298040, i64* %RSI.i3648, align 8
  store i64 4298040, i64* %RDX.i3615, align 8
  %3497 = load i64, i64* %RBP.i, align 8
  %3498 = add i64 %3497, -96
  %3499 = add i64 %3496, 11
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3498 to i64*
  %3501 = load i64, i64* %3500, align 8
  store i64 %3501, i64* %RDI.i3611.pre-phi, align 8
  %3502 = add i64 %3497, -44
  %3503 = add i64 %3496, 14
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = zext i32 %3505 to i64
  store i64 %3506, i64* %RSI.i3648, align 8
  %3507 = add i64 %3496, 33412
  %3508 = add i64 %3496, 19
  %3509 = load i64, i64* %6, align 8
  %3510 = add i64 %3509, -8
  %3511 = inttoptr i64 %3510 to i64*
  store i64 %3508, i64* %3511, align 8
  store i64 %3510, i64* %6, align 8
  store i64 %3507, i64* %3, align 8
  %call2_401eea = tail call %struct.Memory* @sub_40a160._Z13test_constantIj33custom_multiple_constant_multiplyIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3507, %struct.Memory* %call2_401ed7)
  %3512 = load i64, i64* %3, align 8
  store i64 4298078, i64* %RSI.i3648, align 8
  store i64 4298078, i64* %RDX.i3615, align 8
  %3513 = load i64, i64* %RBP.i, align 8
  %3514 = add i64 %3513, -96
  %3515 = add i64 %3512, 11
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i64*
  %3517 = load i64, i64* %3516, align 8
  store i64 %3517, i64* %RDI.i3611.pre-phi, align 8
  %3518 = add i64 %3513, -44
  %3519 = add i64 %3512, 14
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3518 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RSI.i3648, align 8
  %3523 = add i64 %3512, 33553
  %3524 = add i64 %3512, 19
  %3525 = load i64, i64* %6, align 8
  %3526 = add i64 %3525, -8
  %3527 = inttoptr i64 %3526 to i64*
  store i64 %3524, i64* %3527, align 8
  store i64 %3526, i64* %6, align 8
  store i64 %3523, i64* %3, align 8
  %call2_401efd = tail call %struct.Memory* @sub_40a200._Z13test_constantIj34custom_multiple_constant_multiply2IjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3523, %struct.Memory* %call2_401eea)
  %3528 = load i64, i64* %3, align 8
  store i64 4298115, i64* %RSI.i3648, align 8
  store i64 4298115, i64* %RDX.i3615, align 8
  %3529 = load i64, i64* %RBP.i, align 8
  %3530 = add i64 %3529, -96
  %3531 = add i64 %3528, 11
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3530 to i64*
  %3533 = load i64, i64* %3532, align 8
  store i64 %3533, i64* %RDI.i3611.pre-phi, align 8
  %3534 = add i64 %3529, -44
  %3535 = add i64 %3528, 14
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i32*
  %3537 = load i32, i32* %3536, align 4
  %3538 = zext i32 %3537 to i64
  store i64 %3538, i64* %RSI.i3648, align 8
  %3539 = add i64 %3528, 33694
  %3540 = add i64 %3528, 19
  %3541 = load i64, i64* %6, align 8
  %3542 = add i64 %3541, -8
  %3543 = inttoptr i64 %3542 to i64*
  store i64 %3540, i64* %3543, align 8
  store i64 %3542, i64* %6, align 8
  store i64 %3539, i64* %3, align 8
  %call2_401f10 = tail call %struct.Memory* @sub_40a2a0._Z13test_constantIj22custom_constant_divideIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3539, %struct.Memory* %call2_401efd)
  %3544 = load i64, i64* %3, align 8
  store i64 4298140, i64* %RSI.i3648, align 8
  store i64 4298140, i64* %RDX.i3615, align 8
  %3545 = load i64, i64* %RBP.i, align 8
  %3546 = add i64 %3545, -96
  %3547 = add i64 %3544, 11
  store i64 %3547, i64* %3, align 8
  %3548 = inttoptr i64 %3546 to i64*
  %3549 = load i64, i64* %3548, align 8
  store i64 %3549, i64* %RDI.i3611.pre-phi, align 8
  %3550 = add i64 %3545, -44
  %3551 = add i64 %3544, 14
  store i64 %3551, i64* %3, align 8
  %3552 = inttoptr i64 %3550 to i32*
  %3553 = load i32, i32* %3552, align 4
  %3554 = zext i32 %3553 to i64
  store i64 %3554, i64* %RSI.i3648, align 8
  %3555 = add i64 %3544, 33835
  %3556 = add i64 %3544, 19
  %3557 = load i64, i64* %6, align 8
  %3558 = add i64 %3557, -8
  %3559 = inttoptr i64 %3558 to i64*
  store i64 %3556, i64* %3559, align 8
  store i64 %3558, i64* %6, align 8
  store i64 %3555, i64* %3, align 8
  %call2_401f23 = tail call %struct.Memory* @sub_40a340._Z13test_constantIj31custom_multiple_constant_divideIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3555, %struct.Memory* %call2_401f10)
  %3560 = load i64, i64* %3, align 8
  store i64 4298175, i64* %RSI.i3648, align 8
  store i64 4298175, i64* %RDX.i3615, align 8
  %3561 = load i64, i64* %RBP.i, align 8
  %3562 = add i64 %3561, -96
  %3563 = add i64 %3560, 11
  store i64 %3563, i64* %3, align 8
  %3564 = inttoptr i64 %3562 to i64*
  %3565 = load i64, i64* %3564, align 8
  store i64 %3565, i64* %RDI.i3611.pre-phi, align 8
  %3566 = add i64 %3561, -44
  %3567 = add i64 %3560, 14
  store i64 %3567, i64* %3, align 8
  %3568 = inttoptr i64 %3566 to i32*
  %3569 = load i32, i32* %3568, align 4
  %3570 = zext i32 %3569 to i64
  store i64 %3570, i64* %RSI.i3648, align 8
  %3571 = add i64 %3560, 33976
  %3572 = add i64 %3560, 19
  %3573 = load i64, i64* %6, align 8
  %3574 = add i64 %3573, -8
  %3575 = inttoptr i64 %3574 to i64*
  store i64 %3572, i64* %3575, align 8
  store i64 %3574, i64* %6, align 8
  store i64 %3571, i64* %3, align 8
  %call2_401f36 = tail call %struct.Memory* @sub_40a3e0._Z13test_constantIj32custom_multiple_constant_divide2IjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3571, %struct.Memory* %call2_401f23)
  %3576 = load i64, i64* %3, align 8
  store i64 4298210, i64* %RSI.i3648, align 8
  store i64 4298210, i64* %RDX.i3615, align 8
  %3577 = load i64, i64* %RBP.i, align 8
  %3578 = add i64 %3577, -96
  %3579 = add i64 %3576, 11
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i64*
  %3581 = load i64, i64* %3580, align 8
  store i64 %3581, i64* %RDI.i3611.pre-phi, align 8
  %3582 = add i64 %3577, -44
  %3583 = add i64 %3576, 14
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3582 to i32*
  %3585 = load i32, i32* %3584, align 4
  %3586 = zext i32 %3585 to i64
  store i64 %3586, i64* %RSI.i3648, align 8
  %3587 = add i64 %3576, 34117
  %3588 = add i64 %3576, 19
  %3589 = load i64, i64* %6, align 8
  %3590 = add i64 %3589, -8
  %3591 = inttoptr i64 %3590 to i64*
  store i64 %3588, i64* %3591, align 8
  store i64 %3590, i64* %6, align 8
  store i64 %3587, i64* %3, align 8
  %call2_401f49 = tail call %struct.Memory* @sub_40a480._Z13test_constantIj30custom_multiple_constant_mixedIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3587, %struct.Memory* %call2_401f36)
  %3592 = load i64, i64* %3, align 8
  store i64 4298243, i64* %RSI.i3648, align 8
  store i64 4298243, i64* %RDX.i3615, align 8
  %3593 = load i64, i64* %RBP.i, align 8
  %3594 = add i64 %3593, -96
  %3595 = add i64 %3592, 11
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3594 to i64*
  %3597 = load i64, i64* %3596, align 8
  store i64 %3597, i64* %RDI.i3611.pre-phi, align 8
  %3598 = add i64 %3593, -44
  %3599 = add i64 %3592, 14
  store i64 %3599, i64* %3, align 8
  %3600 = inttoptr i64 %3598 to i32*
  %3601 = load i32, i32* %3600, align 4
  %3602 = zext i32 %3601 to i64
  store i64 %3602, i64* %RSI.i3648, align 8
  %3603 = add i64 %3592, 34258
  %3604 = add i64 %3592, 19
  %3605 = load i64, i64* %6, align 8
  %3606 = add i64 %3605, -8
  %3607 = inttoptr i64 %3606 to i64*
  store i64 %3604, i64* %3607, align 8
  store i64 %3606, i64* %6, align 8
  store i64 %3603, i64* %3, align 8
  %call2_401f5c = tail call %struct.Memory* @sub_40a520._Z13test_constantIj19custom_constant_andIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3603, %struct.Memory* %call2_401f49)
  %3608 = load i64, i64* %3, align 8
  store i64 4298265, i64* %RSI.i3648, align 8
  store i64 4298265, i64* %RDX.i3615, align 8
  %3609 = load i64, i64* %RBP.i, align 8
  %3610 = add i64 %3609, -96
  %3611 = add i64 %3608, 11
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i64*
  %3613 = load i64, i64* %3612, align 8
  store i64 %3613, i64* %RDI.i3611.pre-phi, align 8
  %3614 = add i64 %3609, -44
  %3615 = add i64 %3608, 14
  store i64 %3615, i64* %3, align 8
  %3616 = inttoptr i64 %3614 to i32*
  %3617 = load i32, i32* %3616, align 4
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RSI.i3648, align 8
  %3619 = add i64 %3608, 34399
  %3620 = add i64 %3608, 19
  %3621 = load i64, i64* %6, align 8
  %3622 = add i64 %3621, -8
  %3623 = inttoptr i64 %3622 to i64*
  store i64 %3620, i64* %3623, align 8
  store i64 %3622, i64* %6, align 8
  store i64 %3619, i64* %3, align 8
  %call2_401f6f = tail call %struct.Memory* @sub_40a5c0._Z13test_constantIj28custom_multiple_constant_andIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3619, %struct.Memory* %call2_401f5c)
  %3624 = load i64, i64* %3, align 8
  store i64 4298296, i64* %RSI.i3648, align 8
  store i64 4298296, i64* %RDX.i3615, align 8
  %3625 = load i64, i64* %RBP.i, align 8
  %3626 = add i64 %3625, -96
  %3627 = add i64 %3624, 11
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i64*
  %3629 = load i64, i64* %3628, align 8
  store i64 %3629, i64* %RDI.i3611.pre-phi, align 8
  %3630 = add i64 %3625, -44
  %3631 = add i64 %3624, 14
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i32*
  %3633 = load i32, i32* %3632, align 4
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %RSI.i3648, align 8
  %3635 = add i64 %3624, 34540
  %3636 = add i64 %3624, 19
  %3637 = load i64, i64* %6, align 8
  %3638 = add i64 %3637, -8
  %3639 = inttoptr i64 %3638 to i64*
  store i64 %3636, i64* %3639, align 8
  store i64 %3638, i64* %6, align 8
  store i64 %3635, i64* %3, align 8
  %call2_401f82 = tail call %struct.Memory* @sub_40a660._Z13test_constantIj18custom_constant_orIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3635, %struct.Memory* %call2_401f6f)
  %3640 = load i64, i64* %3, align 8
  store i64 4298317, i64* %RSI.i3648, align 8
  store i64 4298317, i64* %RDX.i3615, align 8
  %3641 = load i64, i64* %RBP.i, align 8
  %3642 = add i64 %3641, -96
  %3643 = add i64 %3640, 11
  store i64 %3643, i64* %3, align 8
  %3644 = inttoptr i64 %3642 to i64*
  %3645 = load i64, i64* %3644, align 8
  store i64 %3645, i64* %RDI.i3611.pre-phi, align 8
  %3646 = add i64 %3641, -44
  %3647 = add i64 %3640, 14
  store i64 %3647, i64* %3, align 8
  %3648 = inttoptr i64 %3646 to i32*
  %3649 = load i32, i32* %3648, align 4
  %3650 = zext i32 %3649 to i64
  store i64 %3650, i64* %RSI.i3648, align 8
  %3651 = add i64 %3640, 34681
  %3652 = add i64 %3640, 19
  %3653 = load i64, i64* %6, align 8
  %3654 = add i64 %3653, -8
  %3655 = inttoptr i64 %3654 to i64*
  store i64 %3652, i64* %3655, align 8
  store i64 %3654, i64* %6, align 8
  store i64 %3651, i64* %3, align 8
  %call2_401f95 = tail call %struct.Memory* @sub_40a700._Z13test_constantIj27custom_multiple_constant_orIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3651, %struct.Memory* %call2_401f82)
  %3656 = load i64, i64* %3, align 8
  store i64 4298347, i64* %RSI.i3648, align 8
  store i64 4298347, i64* %RDX.i3615, align 8
  %3657 = load i64, i64* %RBP.i, align 8
  %3658 = add i64 %3657, -96
  %3659 = add i64 %3656, 11
  store i64 %3659, i64* %3, align 8
  %3660 = inttoptr i64 %3658 to i64*
  %3661 = load i64, i64* %3660, align 8
  store i64 %3661, i64* %RDI.i3611.pre-phi, align 8
  %3662 = add i64 %3657, -44
  %3663 = add i64 %3656, 14
  store i64 %3663, i64* %3, align 8
  %3664 = inttoptr i64 %3662 to i32*
  %3665 = load i32, i32* %3664, align 4
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %RSI.i3648, align 8
  %3667 = add i64 %3656, 34822
  %3668 = add i64 %3656, 19
  %3669 = load i64, i64* %6, align 8
  %3670 = add i64 %3669, -8
  %3671 = inttoptr i64 %3670 to i64*
  store i64 %3668, i64* %3671, align 8
  store i64 %3670, i64* %6, align 8
  store i64 %3667, i64* %3, align 8
  %call2_401fa8 = tail call %struct.Memory* @sub_40a7a0._Z13test_constantIj19custom_constant_xorIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3667, %struct.Memory* %call2_401f95)
  %3672 = load i64, i64* %3, align 8
  store i64 4298369, i64* %RSI.i3648, align 8
  store i64 4298369, i64* %RDX.i3615, align 8
  %3673 = load i64, i64* %RBP.i, align 8
  %3674 = add i64 %3673, -96
  %3675 = add i64 %3672, 11
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3674 to i64*
  %3677 = load i64, i64* %3676, align 8
  store i64 %3677, i64* %RDI.i3611.pre-phi, align 8
  %3678 = add i64 %3673, -44
  %3679 = add i64 %3672, 14
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RSI.i3648, align 8
  %3683 = add i64 %3672, 34963
  %3684 = add i64 %3672, 19
  %3685 = load i64, i64* %6, align 8
  %3686 = add i64 %3685, -8
  %3687 = inttoptr i64 %3686 to i64*
  store i64 %3684, i64* %3687, align 8
  store i64 %3686, i64* %6, align 8
  store i64 %3683, i64* %3, align 8
  %call2_401fbb = tail call %struct.Memory* @sub_40a840._Z13test_constantIj28custom_multiple_constant_xorIjEEvPT_iPKc(%struct.State* nonnull %0, i64 %3683, %struct.Memory* %call2_401fa8)
  %3688 = load i64, i64* %3, align 8
  %3689 = add i64 %3688, 2228424
  %3690 = add i64 %3688, 8
  store i64 %3690, i64* %3, align 8
  %3691 = inttoptr i64 %3689 to i64*
  %3692 = load i64, i64* %3691, align 8
  store i64 %3692, i64* %2513, align 1
  store double 0.000000e+00, double* %2515, align 1
  %.cast = bitcast i64 %3692 to double
  %3693 = tail call double @llvm.trunc.f64(double %.cast)
  %3694 = tail call double @llvm.fabs.f64(double %3693)
  %3695 = fcmp ogt double %3694, 0x43E0000000000000
  %3696 = fptosi double %3693 to i64
  %3697 = select i1 %3695, i64 -9223372036854775808, i64 %3696
  store i64 %3697, i64* %RDX.i3615, align 8
  store i64 6590928, i64* %RAX.i3622, align 8
  store i64 6654928, i64* %RSI.i3648, align 8
  store i64 6590928, i64* %RDI.i3611.pre-phi, align 8
  %3698 = load i64, i64* %RBP.i, align 8
  %3699 = add i64 %3698, -104
  %3700 = add i64 %3688, 32
  store i64 %3700, i64* %3, align 8
  %3701 = inttoptr i64 %3699 to i64*
  store i64 6590928, i64* %3701, align 8
  %3702 = load i64, i64* %3, align 8
  %3703 = add i64 %3702, 35072
  %3704 = add i64 %3702, 5
  %3705 = load i64, i64* %6, align 8
  %3706 = add i64 %3705, -8
  %3707 = inttoptr i64 %3706 to i64*
  store i64 %3704, i64* %3707, align 8
  store i64 %3706, i64* %6, align 8
  store i64 %3703, i64* %3, align 8
  %call2_401fe0 = tail call %struct.Memory* @sub_40a8e0._Z4fillIPllEvT_S1_T0_(%struct.State* nonnull %0, i64 %3703, %struct.Memory* %call2_401fbb)
  %3708 = load i64, i64* %3, align 8
  %3709 = add i64 %3708, 2228379
  %3710 = add i64 %3708, 7
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3709 to i32*
  %3712 = load i32, i32* %3711, align 4
  %3713 = add i64 %3708, 2228443
  %3714 = add i64 %3708, 14
  store i64 %3714, i64* %3, align 8
  %3715 = inttoptr i64 %3713 to i32*
  store i32 %3712, i32* %3715, align 4
  %3716 = load i64, i64* %3, align 8
  store i64 4298401, i64* %200, align 8
  store i64 4298401, i64* %RDX.i3615, align 8
  %3717 = load i64, i64* %RBP.i, align 8
  %3718 = add i64 %3717, -104
  %3719 = add i64 %3716, 13
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3718 to i64*
  %3721 = load i64, i64* %3720, align 8
  store i64 %3721, i64* %RDI.i3611.pre-phi, align 8
  %3722 = add i64 %3717, -44
  %3723 = add i64 %3716, 16
  store i64 %3723, i64* %3, align 8
  %3724 = inttoptr i64 %3722 to i32*
  %3725 = load i32, i32* %3724, align 4
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RSI.i3648, align 8
  %3727 = add i64 %3716, 35117
  %3728 = add i64 %3716, 21
  %3729 = load i64, i64* %6, align 8
  %3730 = add i64 %3729, -8
  %3731 = inttoptr i64 %3730 to i64*
  store i64 %3728, i64* %3731, align 8
  store i64 %3730, i64* %6, align 8
  store i64 %3727, i64* %3, align 8
  %call2_402003 = tail call %struct.Memory* @sub_40a920._Z13test_constantIl10custom_twoIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3727, %struct.Memory* %call2_401fe0)
  %3732 = load i64, i64* %3, align 8
  store i64 4298419, i64* %RSI.i3648, align 8
  store i64 4298419, i64* %RDX.i3615, align 8
  %3733 = load i64, i64* %RBP.i, align 8
  %3734 = add i64 %3733, -104
  %3735 = add i64 %3732, 11
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3734 to i64*
  %3737 = load i64, i64* %3736, align 8
  store i64 %3737, i64* %RDI.i3611.pre-phi, align 8
  %3738 = add i64 %3733, -44
  %3739 = add i64 %3732, 14
  store i64 %3739, i64* %3, align 8
  %3740 = inttoptr i64 %3738 to i32*
  %3741 = load i32, i32* %3740, align 4
  %3742 = zext i32 %3741 to i64
  store i64 %3742, i64* %RSI.i3648, align 8
  %3743 = add i64 %3732, 35256
  %3744 = add i64 %3732, 19
  %3745 = load i64, i64* %6, align 8
  %3746 = add i64 %3745, -8
  %3747 = inttoptr i64 %3746 to i64*
  store i64 %3744, i64* %3747, align 8
  store i64 %3746, i64* %6, align 8
  store i64 %3743, i64* %3, align 8
  %call2_402016 = tail call %struct.Memory* @sub_40a9c0._Z13test_constantIl20custom_add_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3743, %struct.Memory* %call2_402003)
  %3748 = load i64, i64* %3, align 8
  store i64 4298442, i64* %RSI.i3648, align 8
  store i64 4298442, i64* %RDX.i3615, align 8
  %3749 = load i64, i64* %RBP.i, align 8
  %3750 = add i64 %3749, -104
  %3751 = add i64 %3748, 11
  store i64 %3751, i64* %3, align 8
  %3752 = inttoptr i64 %3750 to i64*
  %3753 = load i64, i64* %3752, align 8
  store i64 %3753, i64* %RDI.i3611.pre-phi, align 8
  %3754 = add i64 %3749, -44
  %3755 = add i64 %3748, 14
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %RSI.i3648, align 8
  %3759 = add i64 %3748, 35397
  %3760 = add i64 %3748, 19
  %3761 = load i64, i64* %6, align 8
  %3762 = add i64 %3761, -8
  %3763 = inttoptr i64 %3762 to i64*
  store i64 %3760, i64* %3763, align 8
  store i64 %3762, i64* %6, align 8
  store i64 %3759, i64* %3, align 8
  %call2_402029 = tail call %struct.Memory* @sub_40aa60._Z13test_constantIl20custom_sub_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3759, %struct.Memory* %call2_402016)
  %3764 = load i64, i64* %3, align 8
  store i64 4298470, i64* %RSI.i3648, align 8
  store i64 4298470, i64* %RDX.i3615, align 8
  %3765 = load i64, i64* %RBP.i, align 8
  %3766 = add i64 %3765, -104
  %3767 = add i64 %3764, 11
  store i64 %3767, i64* %3, align 8
  %3768 = inttoptr i64 %3766 to i64*
  %3769 = load i64, i64* %3768, align 8
  store i64 %3769, i64* %RDI.i3611.pre-phi, align 8
  %3770 = add i64 %3765, -44
  %3771 = add i64 %3764, 14
  store i64 %3771, i64* %3, align 8
  %3772 = inttoptr i64 %3770 to i32*
  %3773 = load i32, i32* %3772, align 4
  %3774 = zext i32 %3773 to i64
  store i64 %3774, i64* %RSI.i3648, align 8
  %3775 = add i64 %3764, 35538
  %3776 = add i64 %3764, 19
  %3777 = load i64, i64* %6, align 8
  %3778 = add i64 %3777, -8
  %3779 = inttoptr i64 %3778 to i64*
  store i64 %3776, i64* %3779, align 8
  store i64 %3778, i64* %6, align 8
  store i64 %3775, i64* %3, align 8
  %call2_40203c = tail call %struct.Memory* @sub_40ab00._Z13test_constantIl25custom_multiply_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3775, %struct.Memory* %call2_402029)
  %3780 = load i64, i64* %3, align 8
  store i64 4298498, i64* %RSI.i3648, align 8
  store i64 4298498, i64* %RDX.i3615, align 8
  %3781 = load i64, i64* %RBP.i, align 8
  %3782 = add i64 %3781, -104
  %3783 = add i64 %3780, 11
  store i64 %3783, i64* %3, align 8
  %3784 = inttoptr i64 %3782 to i64*
  %3785 = load i64, i64* %3784, align 8
  store i64 %3785, i64* %RDI.i3611.pre-phi, align 8
  %3786 = add i64 %3781, -44
  %3787 = add i64 %3780, 14
  store i64 %3787, i64* %3, align 8
  %3788 = inttoptr i64 %3786 to i32*
  %3789 = load i32, i32* %3788, align 4
  %3790 = zext i32 %3789 to i64
  store i64 %3790, i64* %RSI.i3648, align 8
  %3791 = add i64 %3780, 35679
  %3792 = add i64 %3780, 19
  %3793 = load i64, i64* %6, align 8
  %3794 = add i64 %3793, -8
  %3795 = inttoptr i64 %3794 to i64*
  store i64 %3792, i64* %3795, align 8
  store i64 %3794, i64* %6, align 8
  store i64 %3791, i64* %3, align 8
  %call2_40204f = tail call %struct.Memory* @sub_40aba0._Z13test_constantIl23custom_divide_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3791, %struct.Memory* %call2_40203c)
  %3796 = load i64, i64* %3, align 8
  store i64 4298524, i64* %RSI.i3648, align 8
  store i64 4298524, i64* %RDX.i3615, align 8
  %3797 = load i64, i64* %RBP.i, align 8
  %3798 = add i64 %3797, -104
  %3799 = add i64 %3796, 11
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i64*
  %3801 = load i64, i64* %3800, align 8
  store i64 %3801, i64* %RDI.i3611.pre-phi, align 8
  %3802 = add i64 %3797, -44
  %3803 = add i64 %3796, 14
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i32*
  %3805 = load i32, i32* %3804, align 4
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RSI.i3648, align 8
  %3807 = add i64 %3796, 35820
  %3808 = add i64 %3796, 19
  %3809 = load i64, i64* %6, align 8
  %3810 = add i64 %3809, -8
  %3811 = inttoptr i64 %3810 to i64*
  store i64 %3808, i64* %3811, align 8
  store i64 %3810, i64* %6, align 8
  store i64 %3807, i64* %3, align 8
  %call2_402062 = tail call %struct.Memory* @sub_40ac40._Z13test_constantIl20custom_mod_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3807, %struct.Memory* %call2_40204f)
  %3812 = load i64, i64* %3, align 8
  store i64 4298547, i64* %RSI.i3648, align 8
  store i64 4298547, i64* %RDX.i3615, align 8
  %3813 = load i64, i64* %RBP.i, align 8
  %3814 = add i64 %3813, -104
  %3815 = add i64 %3812, 11
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3814 to i64*
  %3817 = load i64, i64* %3816, align 8
  store i64 %3817, i64* %RDI.i3611.pre-phi, align 8
  %3818 = add i64 %3813, -44
  %3819 = add i64 %3812, 14
  store i64 %3819, i64* %3, align 8
  %3820 = inttoptr i64 %3818 to i32*
  %3821 = load i32, i32* %3820, align 4
  %3822 = zext i32 %3821 to i64
  store i64 %3822, i64* %RSI.i3648, align 8
  %3823 = add i64 %3812, 35961
  %3824 = add i64 %3812, 19
  %3825 = load i64, i64* %6, align 8
  %3826 = add i64 %3825, -8
  %3827 = inttoptr i64 %3826 to i64*
  store i64 %3824, i64* %3827, align 8
  store i64 %3826, i64* %6, align 8
  store i64 %3823, i64* %3, align 8
  %call2_402075 = tail call %struct.Memory* @sub_40ace0._Z13test_constantIl22custom_equal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3823, %struct.Memory* %call2_402062)
  %3828 = load i64, i64* %3, align 8
  store i64 4298572, i64* %RSI.i3648, align 8
  store i64 4298572, i64* %RDX.i3615, align 8
  %3829 = load i64, i64* %RBP.i, align 8
  %3830 = add i64 %3829, -104
  %3831 = add i64 %3828, 11
  store i64 %3831, i64* %3, align 8
  %3832 = inttoptr i64 %3830 to i64*
  %3833 = load i64, i64* %3832, align 8
  store i64 %3833, i64* %RDI.i3611.pre-phi, align 8
  %3834 = add i64 %3829, -44
  %3835 = add i64 %3828, 14
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i32*
  %3837 = load i32, i32* %3836, align 4
  %3838 = zext i32 %3837 to i64
  store i64 %3838, i64* %RSI.i3648, align 8
  %3839 = add i64 %3828, 36102
  %3840 = add i64 %3828, 19
  %3841 = load i64, i64* %6, align 8
  %3842 = add i64 %3841, -8
  %3843 = inttoptr i64 %3842 to i64*
  store i64 %3840, i64* %3843, align 8
  store i64 %3842, i64* %6, align 8
  store i64 %3839, i64* %3, align 8
  %call2_402088 = tail call %struct.Memory* @sub_40ad80._Z13test_constantIl25custom_notequal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3839, %struct.Memory* %call2_402075)
  %3844 = load i64, i64* %3, align 8
  store i64 4298600, i64* %RSI.i3648, align 8
  store i64 4298600, i64* %RDX.i3615, align 8
  %3845 = load i64, i64* %RBP.i, align 8
  %3846 = add i64 %3845, -104
  %3847 = add i64 %3844, 11
  store i64 %3847, i64* %3, align 8
  %3848 = inttoptr i64 %3846 to i64*
  %3849 = load i64, i64* %3848, align 8
  store i64 %3849, i64* %RDI.i3611.pre-phi, align 8
  %3850 = add i64 %3845, -44
  %3851 = add i64 %3844, 14
  store i64 %3851, i64* %3, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = zext i32 %3853 to i64
  store i64 %3854, i64* %RSI.i3648, align 8
  %3855 = add i64 %3844, 36243
  %3856 = add i64 %3844, 19
  %3857 = load i64, i64* %6, align 8
  %3858 = add i64 %3857, -8
  %3859 = inttoptr i64 %3858 to i64*
  store i64 %3856, i64* %3859, align 8
  store i64 %3858, i64* %6, align 8
  store i64 %3855, i64* %3, align 8
  %call2_40209b = tail call %struct.Memory* @sub_40ae20._Z13test_constantIl28custom_greaterthan_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3855, %struct.Memory* %call2_402088)
  %3860 = load i64, i64* %3, align 8
  store i64 4298632, i64* %RSI.i3648, align 8
  store i64 4298632, i64* %RDX.i3615, align 8
  %3861 = load i64, i64* %RBP.i, align 8
  %3862 = add i64 %3861, -104
  %3863 = add i64 %3860, 11
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i64*
  %3865 = load i64, i64* %3864, align 8
  store i64 %3865, i64* %RDI.i3611.pre-phi, align 8
  %3866 = add i64 %3861, -44
  %3867 = add i64 %3860, 14
  store i64 %3867, i64* %3, align 8
  %3868 = inttoptr i64 %3866 to i32*
  %3869 = load i32, i32* %3868, align 4
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RSI.i3648, align 8
  %3871 = add i64 %3860, 36384
  %3872 = add i64 %3860, 19
  %3873 = load i64, i64* %6, align 8
  %3874 = add i64 %3873, -8
  %3875 = inttoptr i64 %3874 to i64*
  store i64 %3872, i64* %3875, align 8
  store i64 %3874, i64* %6, align 8
  store i64 %3871, i64* %3, align 8
  %call2_4020ae = tail call %struct.Memory* @sub_40aec0._Z13test_constantIl25custom_lessthan_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3871, %struct.Memory* %call2_40209b)
  %3876 = load i64, i64* %3, align 8
  store i64 4298661, i64* %RSI.i3648, align 8
  store i64 4298661, i64* %RDX.i3615, align 8
  %3877 = load i64, i64* %RBP.i, align 8
  %3878 = add i64 %3877, -104
  %3879 = add i64 %3876, 11
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i64*
  %3881 = load i64, i64* %3880, align 8
  store i64 %3881, i64* %RDI.i3611.pre-phi, align 8
  %3882 = add i64 %3877, -44
  %3883 = add i64 %3876, 14
  store i64 %3883, i64* %3, align 8
  %3884 = inttoptr i64 %3882 to i32*
  %3885 = load i32, i32* %3884, align 4
  %3886 = zext i32 %3885 to i64
  store i64 %3886, i64* %RSI.i3648, align 8
  %3887 = add i64 %3876, 36525
  %3888 = add i64 %3876, 19
  %3889 = load i64, i64* %6, align 8
  %3890 = add i64 %3889, -8
  %3891 = inttoptr i64 %3890 to i64*
  store i64 %3888, i64* %3891, align 8
  store i64 %3890, i64* %6, align 8
  store i64 %3887, i64* %3, align 8
  %call2_4020c1 = tail call %struct.Memory* @sub_40af60._Z13test_constantIl33custom_greaterthanequal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3887, %struct.Memory* %call2_4020ae)
  %3892 = load i64, i64* %3, align 8
  store i64 4298699, i64* %RSI.i3648, align 8
  store i64 4298699, i64* %RDX.i3615, align 8
  %3893 = load i64, i64* %RBP.i, align 8
  %3894 = add i64 %3893, -104
  %3895 = add i64 %3892, 11
  store i64 %3895, i64* %3, align 8
  %3896 = inttoptr i64 %3894 to i64*
  %3897 = load i64, i64* %3896, align 8
  store i64 %3897, i64* %RDI.i3611.pre-phi, align 8
  %3898 = add i64 %3893, -44
  %3899 = add i64 %3892, 14
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to i32*
  %3901 = load i32, i32* %3900, align 4
  %3902 = zext i32 %3901 to i64
  store i64 %3902, i64* %RSI.i3648, align 8
  %3903 = add i64 %3892, 36666
  %3904 = add i64 %3892, 19
  %3905 = load i64, i64* %6, align 8
  %3906 = add i64 %3905, -8
  %3907 = inttoptr i64 %3906 to i64*
  store i64 %3904, i64* %3907, align 8
  store i64 %3906, i64* %6, align 8
  store i64 %3903, i64* %3, align 8
  %call2_4020d4 = tail call %struct.Memory* @sub_40b000._Z13test_constantIl30custom_lessthanequal_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3903, %struct.Memory* %call2_4020c1)
  %3908 = load i64, i64* %3, align 8
  store i64 4298734, i64* %RSI.i3648, align 8
  store i64 4298734, i64* %RDX.i3615, align 8
  %3909 = load i64, i64* %RBP.i, align 8
  %3910 = add i64 %3909, -104
  %3911 = add i64 %3908, 11
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3910 to i64*
  %3913 = load i64, i64* %3912, align 8
  store i64 %3913, i64* %RDI.i3611.pre-phi, align 8
  %3914 = add i64 %3909, -44
  %3915 = add i64 %3908, 14
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3914 to i32*
  %3917 = load i32, i32* %3916, align 4
  %3918 = zext i32 %3917 to i64
  store i64 %3918, i64* %RSI.i3648, align 8
  %3919 = add i64 %3908, 36807
  %3920 = add i64 %3908, 19
  %3921 = load i64, i64* %6, align 8
  %3922 = add i64 %3921, -8
  %3923 = inttoptr i64 %3922 to i64*
  store i64 %3920, i64* %3923, align 8
  store i64 %3922, i64* %6, align 8
  store i64 %3919, i64* %3, align 8
  %call2_4020e7 = tail call %struct.Memory* @sub_40b0a0._Z13test_constantIl20custom_and_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3919, %struct.Memory* %call2_4020d4)
  %3924 = load i64, i64* %3, align 8
  store i64 4298757, i64* %RSI.i3648, align 8
  store i64 4298757, i64* %RDX.i3615, align 8
  %3925 = load i64, i64* %RBP.i, align 8
  %3926 = add i64 %3925, -104
  %3927 = add i64 %3924, 11
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i64*
  %3929 = load i64, i64* %3928, align 8
  store i64 %3929, i64* %RDI.i3611.pre-phi, align 8
  %3930 = add i64 %3925, -44
  %3931 = add i64 %3924, 14
  store i64 %3931, i64* %3, align 8
  %3932 = inttoptr i64 %3930 to i32*
  %3933 = load i32, i32* %3932, align 4
  %3934 = zext i32 %3933 to i64
  store i64 %3934, i64* %RSI.i3648, align 8
  %3935 = add i64 %3924, 36948
  %3936 = add i64 %3924, 19
  %3937 = load i64, i64* %6, align 8
  %3938 = add i64 %3937, -8
  %3939 = inttoptr i64 %3938 to i64*
  store i64 %3936, i64* %3939, align 8
  store i64 %3938, i64* %6, align 8
  store i64 %3935, i64* %3, align 8
  %call2_4020fa = tail call %struct.Memory* @sub_40b140._Z13test_constantIl19custom_or_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3935, %struct.Memory* %call2_4020e7)
  %3940 = load i64, i64* %3, align 8
  store i64 4298779, i64* %RSI.i3648, align 8
  store i64 4298779, i64* %RDX.i3615, align 8
  %3941 = load i64, i64* %RBP.i, align 8
  %3942 = add i64 %3941, -104
  %3943 = add i64 %3940, 11
  store i64 %3943, i64* %3, align 8
  %3944 = inttoptr i64 %3942 to i64*
  %3945 = load i64, i64* %3944, align 8
  store i64 %3945, i64* %RDI.i3611.pre-phi, align 8
  %3946 = add i64 %3941, -44
  %3947 = add i64 %3940, 14
  store i64 %3947, i64* %3, align 8
  %3948 = inttoptr i64 %3946 to i32*
  %3949 = load i32, i32* %3948, align 4
  %3950 = zext i32 %3949 to i64
  store i64 %3950, i64* %RSI.i3648, align 8
  %3951 = add i64 %3940, 37089
  %3952 = add i64 %3940, 19
  %3953 = load i64, i64* %6, align 8
  %3954 = add i64 %3953, -8
  %3955 = inttoptr i64 %3954 to i64*
  store i64 %3952, i64* %3955, align 8
  store i64 %3954, i64* %6, align 8
  store i64 %3951, i64* %3, align 8
  %call2_40210d = tail call %struct.Memory* @sub_40b1e0._Z13test_constantIl20custom_xor_constantsIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %3951, %struct.Memory* %call2_4020fa)
  %3956 = load i64, i64* %3, align 8
  %3957 = add i64 %3956, 2228078
  %3958 = add i64 %3956, 7
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  %3961 = sext i32 %3960 to i64
  %3962 = mul nsw i64 %3961, 1717986919
  %3963 = lshr i64 %3962, 63
  store i64 %3963, i64* %RCX.i3620, align 8
  %3964 = trunc i64 %3963 to i32
  %3965 = ashr i64 %3962, 34
  store i64 %3965, i64* %RAX.i3622, align 8
  %3966 = trunc i64 %3965 to i32
  %3967 = add i32 %3964, %3966
  %3968 = zext i32 %3967 to i64
  store i64 %3968, i64* %200, align 8
  %3969 = icmp ult i32 %3967, %3966
  %3970 = icmp ult i32 %3967, %3964
  %3971 = or i1 %3969, %3970
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %14, align 1
  %3973 = and i32 %3967, 255
  %3974 = tail call i32 @llvm.ctpop.i32(i32 %3973)
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  store i8 %3977, i8* %21, align 1
  %3978 = trunc i64 %3965 to i32
  %3979 = xor i32 %3978, %3967
  %3980 = lshr i32 %3979, 4
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  store i8 %3982, i8* %27, align 1
  %3983 = icmp eq i32 %3967, 0
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %30, align 1
  %3985 = lshr i32 %3967, 31
  %3986 = trunc i32 %3985 to i8
  store i8 %3986, i8* %33, align 1
  %3987 = lshr i64 %3965, 31
  %3988 = trunc i64 %3987 to i32
  %3989 = and i32 %3988, 1
  %3990 = xor i32 %3985, %3989
  %3991 = add nuw nsw i32 %3990, %3985
  %3992 = icmp eq i32 %3991, 2
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %39, align 1
  %3994 = add i64 %3956, 2228142
  %3995 = add i64 %3956, 40
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i32*
  store i32 %3967, i32* %3996, align 4
  %3997 = load i64, i64* %3, align 8
  store i64 4298802, i64* %RSI.i3648, align 8
  store i64 4298802, i64* %RDX.i3615, align 8
  %3998 = load i64, i64* %RBP.i, align 8
  %3999 = add i64 %3998, -104
  %4000 = add i64 %3997, 11
  store i64 %4000, i64* %3, align 8
  %4001 = inttoptr i64 %3999 to i64*
  %4002 = load i64, i64* %4001, align 8
  store i64 %4002, i64* %RDI.i3611.pre-phi, align 8
  %4003 = add i64 %3998, -44
  %4004 = add i64 %3997, 14
  store i64 %4004, i64* %3, align 8
  %4005 = inttoptr i64 %4003 to i32*
  %4006 = load i32, i32* %4005, align 4
  %4007 = zext i32 %4006 to i64
  store i64 %4007, i64* %RSI.i3648, align 8
  %4008 = add i64 %3997, 37190
  %4009 = add i64 %3997, 19
  %4010 = load i64, i64* %6, align 8
  %4011 = add i64 %4010, -8
  %4012 = inttoptr i64 %4011 to i64*
  store i64 %4009, i64* %4012, align 8
  store i64 %4011, i64* %6, align 8
  store i64 %4008, i64* %3, align 8
  %call2_402148 = tail call %struct.Memory* @sub_40b280._Z13test_constantIl19custom_constant_addIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4008, %struct.Memory* %call2_40210d)
  %4013 = load i64, i64* %3, align 8
  store i64 4298824, i64* %RSI.i3648, align 8
  store i64 4298824, i64* %RDX.i3615, align 8
  %4014 = load i64, i64* %RBP.i, align 8
  %4015 = add i64 %4014, -104
  %4016 = add i64 %4013, 11
  store i64 %4016, i64* %3, align 8
  %4017 = inttoptr i64 %4015 to i64*
  %4018 = load i64, i64* %4017, align 8
  store i64 %4018, i64* %RDI.i3611.pre-phi, align 8
  %4019 = add i64 %4014, -44
  %4020 = add i64 %4013, 14
  store i64 %4020, i64* %3, align 8
  %4021 = inttoptr i64 %4019 to i32*
  %4022 = load i32, i32* %4021, align 4
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RSI.i3648, align 8
  %4024 = add i64 %4013, 37331
  %4025 = add i64 %4013, 19
  %4026 = load i64, i64* %6, align 8
  %4027 = add i64 %4026, -8
  %4028 = inttoptr i64 %4027 to i64*
  store i64 %4025, i64* %4028, align 8
  store i64 %4027, i64* %6, align 8
  store i64 %4024, i64* %3, align 8
  %call2_40215b = tail call %struct.Memory* @sub_40b320._Z13test_constantIl28custom_multiple_constant_addIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4024, %struct.Memory* %call2_402148)
  %4029 = load i64, i64* %3, align 8
  store i64 4298856, i64* %RSI.i3648, align 8
  store i64 4298856, i64* %RDX.i3615, align 8
  %4030 = load i64, i64* %RBP.i, align 8
  %4031 = add i64 %4030, -104
  %4032 = add i64 %4029, 11
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4031 to i64*
  %4034 = load i64, i64* %4033, align 8
  store i64 %4034, i64* %RDI.i3611.pre-phi, align 8
  %4035 = add i64 %4030, -44
  %4036 = add i64 %4029, 14
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i32*
  %4038 = load i32, i32* %4037, align 4
  %4039 = zext i32 %4038 to i64
  store i64 %4039, i64* %RSI.i3648, align 8
  %4040 = add i64 %4029, 37472
  %4041 = add i64 %4029, 19
  %4042 = load i64, i64* %6, align 8
  %4043 = add i64 %4042, -8
  %4044 = inttoptr i64 %4043 to i64*
  store i64 %4041, i64* %4044, align 8
  store i64 %4043, i64* %6, align 8
  store i64 %4040, i64* %3, align 8
  %call2_40216e = tail call %struct.Memory* @sub_40b3c0._Z13test_constantIl19custom_constant_subIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4040, %struct.Memory* %call2_40215b)
  %4045 = load i64, i64* %3, align 8
  store i64 4298883, i64* %RSI.i3648, align 8
  store i64 4298883, i64* %RDX.i3615, align 8
  %4046 = load i64, i64* %RBP.i, align 8
  %4047 = add i64 %4046, -104
  %4048 = add i64 %4045, 11
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i64*
  %4050 = load i64, i64* %4049, align 8
  store i64 %4050, i64* %RDI.i3611.pre-phi, align 8
  %4051 = add i64 %4046, -44
  %4052 = add i64 %4045, 14
  store i64 %4052, i64* %3, align 8
  %4053 = inttoptr i64 %4051 to i32*
  %4054 = load i32, i32* %4053, align 4
  %4055 = zext i32 %4054 to i64
  store i64 %4055, i64* %RSI.i3648, align 8
  %4056 = add i64 %4045, 37613
  %4057 = add i64 %4045, 19
  %4058 = load i64, i64* %6, align 8
  %4059 = add i64 %4058, -8
  %4060 = inttoptr i64 %4059 to i64*
  store i64 %4057, i64* %4060, align 8
  store i64 %4059, i64* %6, align 8
  store i64 %4056, i64* %3, align 8
  %call2_402181 = tail call %struct.Memory* @sub_40b460._Z13test_constantIl28custom_multiple_constant_subIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4056, %struct.Memory* %call2_40216e)
  %4061 = load i64, i64* %3, align 8
  store i64 4298920, i64* %RSI.i3648, align 8
  store i64 4298920, i64* %RDX.i3615, align 8
  %4062 = load i64, i64* %RBP.i, align 8
  %4063 = add i64 %4062, -104
  %4064 = add i64 %4061, 11
  store i64 %4064, i64* %3, align 8
  %4065 = inttoptr i64 %4063 to i64*
  %4066 = load i64, i64* %4065, align 8
  store i64 %4066, i64* %RDI.i3611.pre-phi, align 8
  %4067 = add i64 %4062, -44
  %4068 = add i64 %4061, 14
  store i64 %4068, i64* %3, align 8
  %4069 = inttoptr i64 %4067 to i32*
  %4070 = load i32, i32* %4069, align 4
  %4071 = zext i32 %4070 to i64
  store i64 %4071, i64* %RSI.i3648, align 8
  %4072 = add i64 %4061, 37754
  %4073 = add i64 %4061, 19
  %4074 = load i64, i64* %6, align 8
  %4075 = add i64 %4074, -8
  %4076 = inttoptr i64 %4075 to i64*
  store i64 %4073, i64* %4076, align 8
  store i64 %4075, i64* %6, align 8
  store i64 %4072, i64* %3, align 8
  %call2_402194 = tail call %struct.Memory* @sub_40b500._Z13test_constantIl24custom_constant_multiplyIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4072, %struct.Memory* %call2_402181)
  %4077 = load i64, i64* %3, align 8
  store i64 4298947, i64* %RSI.i3648, align 8
  store i64 4298947, i64* %RDX.i3615, align 8
  %4078 = load i64, i64* %RBP.i, align 8
  %4079 = add i64 %4078, -104
  %4080 = add i64 %4077, 11
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4079 to i64*
  %4082 = load i64, i64* %4081, align 8
  store i64 %4082, i64* %RDI.i3611.pre-phi, align 8
  %4083 = add i64 %4078, -44
  %4084 = add i64 %4077, 14
  store i64 %4084, i64* %3, align 8
  %4085 = inttoptr i64 %4083 to i32*
  %4086 = load i32, i32* %4085, align 4
  %4087 = zext i32 %4086 to i64
  store i64 %4087, i64* %RSI.i3648, align 8
  %4088 = add i64 %4077, 37895
  %4089 = add i64 %4077, 19
  %4090 = load i64, i64* %6, align 8
  %4091 = add i64 %4090, -8
  %4092 = inttoptr i64 %4091 to i64*
  store i64 %4089, i64* %4092, align 8
  store i64 %4091, i64* %6, align 8
  store i64 %4088, i64* %3, align 8
  %call2_4021a7 = tail call %struct.Memory* @sub_40b5a0._Z13test_constantIl33custom_multiple_constant_multiplyIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4088, %struct.Memory* %call2_402194)
  %4093 = load i64, i64* %3, align 8
  store i64 4298985, i64* %RSI.i3648, align 8
  store i64 4298985, i64* %RDX.i3615, align 8
  %4094 = load i64, i64* %RBP.i, align 8
  %4095 = add i64 %4094, -104
  %4096 = add i64 %4093, 11
  store i64 %4096, i64* %3, align 8
  %4097 = inttoptr i64 %4095 to i64*
  %4098 = load i64, i64* %4097, align 8
  store i64 %4098, i64* %RDI.i3611.pre-phi, align 8
  %4099 = add i64 %4094, -44
  %4100 = add i64 %4093, 14
  store i64 %4100, i64* %3, align 8
  %4101 = inttoptr i64 %4099 to i32*
  %4102 = load i32, i32* %4101, align 4
  %4103 = zext i32 %4102 to i64
  store i64 %4103, i64* %RSI.i3648, align 8
  %4104 = add i64 %4093, 38036
  %4105 = add i64 %4093, 19
  %4106 = load i64, i64* %6, align 8
  %4107 = add i64 %4106, -8
  %4108 = inttoptr i64 %4107 to i64*
  store i64 %4105, i64* %4108, align 8
  store i64 %4107, i64* %6, align 8
  store i64 %4104, i64* %3, align 8
  %call2_4021ba = tail call %struct.Memory* @sub_40b640._Z13test_constantIl34custom_multiple_constant_multiply2IlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4104, %struct.Memory* %call2_4021a7)
  %4109 = load i64, i64* %3, align 8
  store i64 4299022, i64* %RSI.i3648, align 8
  store i64 4299022, i64* %RDX.i3615, align 8
  %4110 = load i64, i64* %RBP.i, align 8
  %4111 = add i64 %4110, -104
  %4112 = add i64 %4109, 11
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i64*
  %4114 = load i64, i64* %4113, align 8
  store i64 %4114, i64* %RDI.i3611.pre-phi, align 8
  %4115 = add i64 %4110, -44
  %4116 = add i64 %4109, 14
  store i64 %4116, i64* %3, align 8
  %4117 = inttoptr i64 %4115 to i32*
  %4118 = load i32, i32* %4117, align 4
  %4119 = zext i32 %4118 to i64
  store i64 %4119, i64* %RSI.i3648, align 8
  %4120 = add i64 %4109, 38177
  %4121 = add i64 %4109, 19
  %4122 = load i64, i64* %6, align 8
  %4123 = add i64 %4122, -8
  %4124 = inttoptr i64 %4123 to i64*
  store i64 %4121, i64* %4124, align 8
  store i64 %4123, i64* %6, align 8
  store i64 %4120, i64* %3, align 8
  %call2_4021cd = tail call %struct.Memory* @sub_40b6e0._Z13test_constantIl22custom_constant_divideIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4120, %struct.Memory* %call2_4021ba)
  %4125 = load i64, i64* %3, align 8
  store i64 4299047, i64* %RSI.i3648, align 8
  store i64 4299047, i64* %RDX.i3615, align 8
  %4126 = load i64, i64* %RBP.i, align 8
  %4127 = add i64 %4126, -104
  %4128 = add i64 %4125, 11
  store i64 %4128, i64* %3, align 8
  %4129 = inttoptr i64 %4127 to i64*
  %4130 = load i64, i64* %4129, align 8
  store i64 %4130, i64* %RDI.i3611.pre-phi, align 8
  %4131 = add i64 %4126, -44
  %4132 = add i64 %4125, 14
  store i64 %4132, i64* %3, align 8
  %4133 = inttoptr i64 %4131 to i32*
  %4134 = load i32, i32* %4133, align 4
  %4135 = zext i32 %4134 to i64
  store i64 %4135, i64* %RSI.i3648, align 8
  %4136 = add i64 %4125, 38318
  %4137 = add i64 %4125, 19
  %4138 = load i64, i64* %6, align 8
  %4139 = add i64 %4138, -8
  %4140 = inttoptr i64 %4139 to i64*
  store i64 %4137, i64* %4140, align 8
  store i64 %4139, i64* %6, align 8
  store i64 %4136, i64* %3, align 8
  %call2_4021e0 = tail call %struct.Memory* @sub_40b780._Z13test_constantIl31custom_multiple_constant_divideIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4136, %struct.Memory* %call2_4021cd)
  %4141 = load i64, i64* %3, align 8
  store i64 4299082, i64* %RSI.i3648, align 8
  store i64 4299082, i64* %RDX.i3615, align 8
  %4142 = load i64, i64* %RBP.i, align 8
  %4143 = add i64 %4142, -104
  %4144 = add i64 %4141, 11
  store i64 %4144, i64* %3, align 8
  %4145 = inttoptr i64 %4143 to i64*
  %4146 = load i64, i64* %4145, align 8
  store i64 %4146, i64* %RDI.i3611.pre-phi, align 8
  %4147 = add i64 %4142, -44
  %4148 = add i64 %4141, 14
  store i64 %4148, i64* %3, align 8
  %4149 = inttoptr i64 %4147 to i32*
  %4150 = load i32, i32* %4149, align 4
  %4151 = zext i32 %4150 to i64
  store i64 %4151, i64* %RSI.i3648, align 8
  %4152 = add i64 %4141, 38459
  %4153 = add i64 %4141, 19
  %4154 = load i64, i64* %6, align 8
  %4155 = add i64 %4154, -8
  %4156 = inttoptr i64 %4155 to i64*
  store i64 %4153, i64* %4156, align 8
  store i64 %4155, i64* %6, align 8
  store i64 %4152, i64* %3, align 8
  %call2_4021f3 = tail call %struct.Memory* @sub_40b820._Z13test_constantIl32custom_multiple_constant_divide2IlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4152, %struct.Memory* %call2_4021e0)
  %4157 = load i64, i64* %3, align 8
  store i64 4299117, i64* %RSI.i3648, align 8
  store i64 4299117, i64* %RDX.i3615, align 8
  %4158 = load i64, i64* %RBP.i, align 8
  %4159 = add i64 %4158, -104
  %4160 = add i64 %4157, 11
  store i64 %4160, i64* %3, align 8
  %4161 = inttoptr i64 %4159 to i64*
  %4162 = load i64, i64* %4161, align 8
  store i64 %4162, i64* %RDI.i3611.pre-phi, align 8
  %4163 = add i64 %4158, -44
  %4164 = add i64 %4157, 14
  store i64 %4164, i64* %3, align 8
  %4165 = inttoptr i64 %4163 to i32*
  %4166 = load i32, i32* %4165, align 4
  %4167 = zext i32 %4166 to i64
  store i64 %4167, i64* %RSI.i3648, align 8
  %4168 = add i64 %4157, 38600
  %4169 = add i64 %4157, 19
  %4170 = load i64, i64* %6, align 8
  %4171 = add i64 %4170, -8
  %4172 = inttoptr i64 %4171 to i64*
  store i64 %4169, i64* %4172, align 8
  store i64 %4171, i64* %6, align 8
  store i64 %4168, i64* %3, align 8
  %call2_402206 = tail call %struct.Memory* @sub_40b8c0._Z13test_constantIl30custom_multiple_constant_mixedIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4168, %struct.Memory* %call2_4021f3)
  %4173 = load i64, i64* %3, align 8
  store i64 4299150, i64* %RSI.i3648, align 8
  store i64 4299150, i64* %RDX.i3615, align 8
  %4174 = load i64, i64* %RBP.i, align 8
  %4175 = add i64 %4174, -104
  %4176 = add i64 %4173, 11
  store i64 %4176, i64* %3, align 8
  %4177 = inttoptr i64 %4175 to i64*
  %4178 = load i64, i64* %4177, align 8
  store i64 %4178, i64* %RDI.i3611.pre-phi, align 8
  %4179 = add i64 %4174, -44
  %4180 = add i64 %4173, 14
  store i64 %4180, i64* %3, align 8
  %4181 = inttoptr i64 %4179 to i32*
  %4182 = load i32, i32* %4181, align 4
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RSI.i3648, align 8
  %4184 = add i64 %4173, 38741
  %4185 = add i64 %4173, 19
  %4186 = load i64, i64* %6, align 8
  %4187 = add i64 %4186, -8
  %4188 = inttoptr i64 %4187 to i64*
  store i64 %4185, i64* %4188, align 8
  store i64 %4187, i64* %6, align 8
  store i64 %4184, i64* %3, align 8
  %call2_402219 = tail call %struct.Memory* @sub_40b960._Z13test_constantIl19custom_constant_andIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4184, %struct.Memory* %call2_402206)
  %4189 = load i64, i64* %3, align 8
  store i64 4299172, i64* %RSI.i3648, align 8
  store i64 4299172, i64* %RDX.i3615, align 8
  %4190 = load i64, i64* %RBP.i, align 8
  %4191 = add i64 %4190, -104
  %4192 = add i64 %4189, 11
  store i64 %4192, i64* %3, align 8
  %4193 = inttoptr i64 %4191 to i64*
  %4194 = load i64, i64* %4193, align 8
  store i64 %4194, i64* %RDI.i3611.pre-phi, align 8
  %4195 = add i64 %4190, -44
  %4196 = add i64 %4189, 14
  store i64 %4196, i64* %3, align 8
  %4197 = inttoptr i64 %4195 to i32*
  %4198 = load i32, i32* %4197, align 4
  %4199 = zext i32 %4198 to i64
  store i64 %4199, i64* %RSI.i3648, align 8
  %4200 = add i64 %4189, 38882
  %4201 = add i64 %4189, 19
  %4202 = load i64, i64* %6, align 8
  %4203 = add i64 %4202, -8
  %4204 = inttoptr i64 %4203 to i64*
  store i64 %4201, i64* %4204, align 8
  store i64 %4203, i64* %6, align 8
  store i64 %4200, i64* %3, align 8
  %call2_40222c = tail call %struct.Memory* @sub_40ba00._Z13test_constantIl28custom_multiple_constant_andIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4200, %struct.Memory* %call2_402219)
  %4205 = load i64, i64* %3, align 8
  store i64 4299203, i64* %RSI.i3648, align 8
  store i64 4299203, i64* %RDX.i3615, align 8
  %4206 = load i64, i64* %RBP.i, align 8
  %4207 = add i64 %4206, -104
  %4208 = add i64 %4205, 11
  store i64 %4208, i64* %3, align 8
  %4209 = inttoptr i64 %4207 to i64*
  %4210 = load i64, i64* %4209, align 8
  store i64 %4210, i64* %RDI.i3611.pre-phi, align 8
  %4211 = add i64 %4206, -44
  %4212 = add i64 %4205, 14
  store i64 %4212, i64* %3, align 8
  %4213 = inttoptr i64 %4211 to i32*
  %4214 = load i32, i32* %4213, align 4
  %4215 = zext i32 %4214 to i64
  store i64 %4215, i64* %RSI.i3648, align 8
  %4216 = add i64 %4205, 39023
  %4217 = add i64 %4205, 19
  %4218 = load i64, i64* %6, align 8
  %4219 = add i64 %4218, -8
  %4220 = inttoptr i64 %4219 to i64*
  store i64 %4217, i64* %4220, align 8
  store i64 %4219, i64* %6, align 8
  store i64 %4216, i64* %3, align 8
  %call2_40223f = tail call %struct.Memory* @sub_40baa0._Z13test_constantIl18custom_constant_orIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4216, %struct.Memory* %call2_40222c)
  %4221 = load i64, i64* %3, align 8
  store i64 4299224, i64* %RSI.i3648, align 8
  store i64 4299224, i64* %RDX.i3615, align 8
  %4222 = load i64, i64* %RBP.i, align 8
  %4223 = add i64 %4222, -104
  %4224 = add i64 %4221, 11
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i64*
  %4226 = load i64, i64* %4225, align 8
  store i64 %4226, i64* %RDI.i3611.pre-phi, align 8
  %4227 = add i64 %4222, -44
  %4228 = add i64 %4221, 14
  store i64 %4228, i64* %3, align 8
  %4229 = inttoptr i64 %4227 to i32*
  %4230 = load i32, i32* %4229, align 4
  %4231 = zext i32 %4230 to i64
  store i64 %4231, i64* %RSI.i3648, align 8
  %4232 = add i64 %4221, 39164
  %4233 = add i64 %4221, 19
  %4234 = load i64, i64* %6, align 8
  %4235 = add i64 %4234, -8
  %4236 = inttoptr i64 %4235 to i64*
  store i64 %4233, i64* %4236, align 8
  store i64 %4235, i64* %6, align 8
  store i64 %4232, i64* %3, align 8
  %call2_402252 = tail call %struct.Memory* @sub_40bb40._Z13test_constantIl27custom_multiple_constant_orIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4232, %struct.Memory* %call2_40223f)
  %4237 = load i64, i64* %3, align 8
  store i64 4299254, i64* %RSI.i3648, align 8
  store i64 4299254, i64* %RDX.i3615, align 8
  %4238 = load i64, i64* %RBP.i, align 8
  %4239 = add i64 %4238, -104
  %4240 = add i64 %4237, 11
  store i64 %4240, i64* %3, align 8
  %4241 = inttoptr i64 %4239 to i64*
  %4242 = load i64, i64* %4241, align 8
  store i64 %4242, i64* %RDI.i3611.pre-phi, align 8
  %4243 = add i64 %4238, -44
  %4244 = add i64 %4237, 14
  store i64 %4244, i64* %3, align 8
  %4245 = inttoptr i64 %4243 to i32*
  %4246 = load i32, i32* %4245, align 4
  %4247 = zext i32 %4246 to i64
  store i64 %4247, i64* %RSI.i3648, align 8
  %4248 = add i64 %4237, 39305
  %4249 = add i64 %4237, 19
  %4250 = load i64, i64* %6, align 8
  %4251 = add i64 %4250, -8
  %4252 = inttoptr i64 %4251 to i64*
  store i64 %4249, i64* %4252, align 8
  store i64 %4251, i64* %6, align 8
  store i64 %4248, i64* %3, align 8
  %call2_402265 = tail call %struct.Memory* @sub_40bbe0._Z13test_constantIl19custom_constant_xorIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4248, %struct.Memory* %call2_402252)
  %4253 = load i64, i64* %3, align 8
  store i64 4299276, i64* %RSI.i3648, align 8
  store i64 4299276, i64* %RDX.i3615, align 8
  %4254 = load i64, i64* %RBP.i, align 8
  %4255 = add i64 %4254, -104
  %4256 = add i64 %4253, 11
  store i64 %4256, i64* %3, align 8
  %4257 = inttoptr i64 %4255 to i64*
  %4258 = load i64, i64* %4257, align 8
  store i64 %4258, i64* %RDI.i3611.pre-phi, align 8
  %4259 = add i64 %4254, -44
  %4260 = add i64 %4253, 14
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i32*
  %4262 = load i32, i32* %4261, align 4
  %4263 = zext i32 %4262 to i64
  store i64 %4263, i64* %RSI.i3648, align 8
  %4264 = add i64 %4253, 39446
  %4265 = add i64 %4253, 19
  %4266 = load i64, i64* %6, align 8
  %4267 = add i64 %4266, -8
  %4268 = inttoptr i64 %4267 to i64*
  store i64 %4265, i64* %4268, align 8
  store i64 %4267, i64* %6, align 8
  store i64 %4264, i64* %3, align 8
  %call2_402278 = tail call %struct.Memory* @sub_40bc80._Z13test_constantIl28custom_multiple_constant_xorIlEEvPT_iPKc(%struct.State* nonnull %0, i64 %4264, %struct.Memory* %call2_402265)
  %4269 = load i64, i64* %3, align 8
  %4270 = add i64 %4269, 2227723
  %4271 = add i64 %4269, 8
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i64*
  %4273 = load i64, i64* %4272, align 8
  store i64 %4273, i64* %2513, align 1
  store double 0.000000e+00, double* %2515, align 1
  %4274 = add i64 %4269, 92067
  %4275 = add i64 %4269, 16
  store i64 %4275, i64* %3, align 8
  %4276 = inttoptr i64 %4274 to i64*
  %4277 = load i64, i64* %4276, align 8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %4277, i64* %4278, align 1
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %4280 = bitcast i64* %4279 to double*
  store double 0.000000e+00, double* %4280, align 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4282 = bitcast %union.VectorReg* %4281 to i8*
  %4283 = bitcast [32 x %union.VectorReg]* %2506 to <2 x i32>*
  %4284 = bitcast i64 %4273 to <2 x i32>
  %4285 = bitcast i64* %2514 to <2 x i32>*
  %4286 = extractelement <2 x i32> %4284, i32 0
  %4287 = bitcast %union.VectorReg* %4281 to i32*
  store i32 %4286, i32* %4287, align 1
  %4288 = extractelement <2 x i32> %4284, i32 1
  %4289 = getelementptr inbounds i8, i8* %4282, i64 4
  %4290 = bitcast i8* %4289 to i32*
  store i32 %4288, i32* %4290, align 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %4292 = bitcast i64* %4291 to i32*
  store i32 0, i32* %4292, align 1
  %4293 = getelementptr inbounds i8, i8* %4282, i64 12
  %4294 = bitcast i8* %4293 to i32*
  store i32 0, i32* %4294, align 1
  %4295 = bitcast %union.VectorReg* %4281 to double*
  %4296 = load double, double* %4295, align 1
  %4297 = bitcast i64 %4277 to double
  %4298 = fsub double %4296, %4297
  store double %4298, double* %4295, align 1
  %4299 = tail call double @llvm.trunc.f64(double %4298)
  %4300 = tail call double @llvm.fabs.f64(double %4299)
  %4301 = fcmp ogt double %4300, 0x43E0000000000000
  %4302 = fptosi double %4299 to i64
  %4303 = select i1 %4301, i64 -9223372036854775808, i64 %4302
  %4304 = xor i64 %4303, -9223372036854775808
  store i64 %4304, i64* %RAX.i3622, align 8
  store i8 0, i8* %14, align 1
  %4305 = trunc i64 %4303 to i32
  %4306 = and i32 %4305, 255
  %4307 = tail call i32 @llvm.ctpop.i32(i32 %4306)
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  %4310 = xor i8 %4309, 1
  store i8 %4310, i8* %21, align 1
  %4311 = icmp eq i64 %4304, 0
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %30, align 1
  %4313 = lshr i64 %4304, 63
  %4314 = trunc i64 %4313 to i8
  store i8 %4314, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4315 = bitcast i64 %4273 to double
  %4316 = tail call double @llvm.trunc.f64(double %4315)
  %4317 = tail call double @llvm.fabs.f64(double %4316)
  %4318 = fcmp ogt double %4317, 0x43E0000000000000
  %4319 = fptosi double %4316 to i64
  %4320 = select i1 %4318, i64 -9223372036854775808, i64 %4319
  store i64 %4320, i64* %RCX.i3620, align 8
  %4321 = add i64 %4269, 50
  store i64 %4321, i64* %3, align 8
  %4322 = fcmp uno double %4297, %4315
  br i1 %4322, label %4323, label %4333

; <label>:4323:                                   ; preds = %block_.L_400f37
  %4324 = fadd double %4297, %4315
  %4325 = bitcast double %4324 to i64
  %4326 = and i64 %4325, 9221120237041090560
  %4327 = icmp eq i64 %4326, 9218868437227405312
  %4328 = and i64 %4325, 2251799813685247
  %4329 = icmp ne i64 %4328, 0
  %4330 = and i1 %4327, %4329
  br i1 %4330, label %4331, label %4339

; <label>:4331:                                   ; preds = %4323
  %4332 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4321, %struct.Memory* %call2_402278)
  %.pre3 = load i64, i64* %RCX.i3620, align 8
  %.pre4 = load i64, i64* %3, align 8
  %.pre5 = load i8, i8* %14, align 1
  %.pre6 = load i8, i8* %30, align 1
  %.pre7 = load i64, i64* %RAX.i3622, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4333:                                   ; preds = %block_.L_400f37
  %4334 = fcmp ogt double %4297, %4315
  br i1 %4334, label %4339, label %4335

; <label>:4335:                                   ; preds = %4333
  %4336 = fcmp olt double %4297, %4315
  br i1 %4336, label %4339, label %4337

; <label>:4337:                                   ; preds = %4335
  %4338 = fcmp oeq double %4297, %4315
  br i1 %4338, label %4339, label %4343

; <label>:4339:                                   ; preds = %4337, %4335, %4333, %4323
  %4340 = phi i8 [ 0, %4333 ], [ 0, %4335 ], [ 1, %4337 ], [ 1, %4323 ]
  %4341 = phi i8 [ 0, %4333 ], [ 0, %4335 ], [ 0, %4337 ], [ 1, %4323 ]
  %4342 = phi i8 [ 0, %4333 ], [ 1, %4335 ], [ 0, %4337 ], [ 1, %4323 ]
  store i8 %4340, i8* %30, align 1
  store i8 %4341, i8* %21, align 1
  store i8 %4342, i8* %14, align 1
  br label %4343

; <label>:4343:                                   ; preds = %4339, %4337
  %4344 = phi i8 [ %4340, %4339 ], [ %4312, %4337 ]
  %4345 = phi i8 [ %4342, %4339 ], [ 0, %4337 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4343, %4331
  %4346 = phi i64 [ %.pre7, %4331 ], [ %4304, %4343 ]
  %4347 = phi i8 [ %.pre6, %4331 ], [ %4344, %4343 ]
  %4348 = phi i8 [ %.pre5, %4331 ], [ %4345, %4343 ]
  %4349 = phi i64 [ %.pre4, %4331 ], [ %4321, %4343 ]
  %4350 = phi i64 [ %.pre3, %4331 ], [ %4320, %4343 ]
  %4351 = phi %struct.Memory* [ %4332, %4331 ], [ %call2_402278, %4343 ]
  %4352 = or i8 %4347, %4348
  %4353 = icmp eq i8 %4352, 0
  %4354 = select i1 %4353, i64 %4350, i64 %4346
  store i64 %4354, i64* %RAX.i3622, align 8
  %4355 = load i64, i64* %RBP.i, align 8
  %4356 = add i64 %4355, -32
  %4357 = add i64 %4349, 8
  store i64 %4357, i64* %3, align 8
  %4358 = inttoptr i64 %4356 to i64*
  %4359 = load i64, i64* %4358, align 8
  store i64 %4359, i64* %RDI.i3611.pre-phi, align 8
  %4360 = add i64 %4355, -40
  %4361 = add i64 %4349, 12
  store i64 %4361, i64* %3, align 8
  %4362 = inttoptr i64 %4360 to i64*
  %4363 = load i64, i64* %4362, align 8
  store i64 %4363, i64* %RSI.i3648, align 8
  store i64 %4354, i64* %RDX.i3615, align 8
  %4364 = add i64 %4349, 39537
  %4365 = add i64 %4349, 20
  %4366 = load i64, i64* %6, align 8
  %4367 = add i64 %4366, -8
  %4368 = inttoptr i64 %4367 to i64*
  store i64 %4365, i64* %4368, align 8
  store i64 %4367, i64* %6, align 8
  store i64 %4364, i64* %3, align 8
  %call2_4022be = tail call %struct.Memory* @sub_40bd20._Z4fillIPmmEvT_S1_T0_(%struct.State* nonnull %0, i64 %4364, %struct.Memory* %4351)
  %4369 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298400, i64* %RDX.i3615, align 8
  %4370 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4371 = zext i32 %4370 to i64
  store i64 %4371, i64* %200, align 8
  store i32 %4370, i32* inttoptr (i64 6430912 to i32*), align 64
  %4372 = add i64 %4369, 39581
  %4373 = add i64 %4369, 46
  %4374 = load i64, i64* %6, align 8
  %4375 = add i64 %4374, -8
  %4376 = inttoptr i64 %4375 to i64*
  store i64 %4373, i64* %4376, align 8
  store i64 %4375, i64* %6, align 8
  store i64 %4372, i64* %3, align 8
  %call2_4022ec = tail call %struct.Memory* @sub_40bd60._Z13test_constantIm10custom_twoImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4372, %struct.Memory* %call2_4022be)
  %4377 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298418, i64* %RDX.i3615, align 8
  %4378 = add i64 %4377, 39695
  %4379 = add i64 %4377, 30
  %4380 = load i64, i64* %6, align 8
  %4381 = add i64 %4380, -8
  %4382 = inttoptr i64 %4381 to i64*
  store i64 %4379, i64* %4382, align 8
  store i64 %4381, i64* %6, align 8
  store i64 %4378, i64* %3, align 8
  %call2_40230a = tail call %struct.Memory* @sub_40be00._Z13test_constantIm20custom_add_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4378, %struct.Memory* %call2_4022ec)
  %4383 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298441, i64* %RDX.i3615, align 8
  %4384 = add i64 %4383, 39825
  %4385 = add i64 %4383, 30
  %4386 = load i64, i64* %6, align 8
  %4387 = add i64 %4386, -8
  %4388 = inttoptr i64 %4387 to i64*
  store i64 %4385, i64* %4388, align 8
  store i64 %4387, i64* %6, align 8
  store i64 %4384, i64* %3, align 8
  %call2_402328 = tail call %struct.Memory* @sub_40bea0._Z13test_constantIm20custom_sub_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4384, %struct.Memory* %call2_40230a)
  %4389 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298469, i64* %RDX.i3615, align 8
  %4390 = add i64 %4389, 39955
  %4391 = add i64 %4389, 30
  %4392 = load i64, i64* %6, align 8
  %4393 = add i64 %4392, -8
  %4394 = inttoptr i64 %4393 to i64*
  store i64 %4391, i64* %4394, align 8
  store i64 %4393, i64* %6, align 8
  store i64 %4390, i64* %3, align 8
  %call2_402346 = tail call %struct.Memory* @sub_40bf40._Z13test_constantIm25custom_multiply_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4390, %struct.Memory* %call2_402328)
  %4395 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298497, i64* %RDX.i3615, align 8
  %4396 = add i64 %4395, 40085
  %4397 = add i64 %4395, 30
  %4398 = load i64, i64* %6, align 8
  %4399 = add i64 %4398, -8
  %4400 = inttoptr i64 %4399 to i64*
  store i64 %4397, i64* %4400, align 8
  store i64 %4399, i64* %6, align 8
  store i64 %4396, i64* %3, align 8
  %call2_402364 = tail call %struct.Memory* @sub_40bfe0._Z13test_constantIm23custom_divide_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4396, %struct.Memory* %call2_402346)
  %4401 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298523, i64* %RDX.i3615, align 8
  %4402 = add i64 %4401, 40215
  %4403 = add i64 %4401, 30
  %4404 = load i64, i64* %6, align 8
  %4405 = add i64 %4404, -8
  %4406 = inttoptr i64 %4405 to i64*
  store i64 %4403, i64* %4406, align 8
  store i64 %4405, i64* %6, align 8
  store i64 %4402, i64* %3, align 8
  %call2_402382 = tail call %struct.Memory* @sub_40c080._Z13test_constantIm20custom_mod_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4402, %struct.Memory* %call2_402364)
  %4407 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298546, i64* %RDX.i3615, align 8
  %4408 = add i64 %4407, 40345
  %4409 = add i64 %4407, 30
  %4410 = load i64, i64* %6, align 8
  %4411 = add i64 %4410, -8
  %4412 = inttoptr i64 %4411 to i64*
  store i64 %4409, i64* %4412, align 8
  store i64 %4411, i64* %6, align 8
  store i64 %4408, i64* %3, align 8
  %call2_4023a0 = tail call %struct.Memory* @sub_40c120._Z13test_constantIm22custom_equal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4408, %struct.Memory* %call2_402382)
  %4413 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298571, i64* %RDX.i3615, align 8
  %4414 = add i64 %4413, 40475
  %4415 = add i64 %4413, 30
  %4416 = load i64, i64* %6, align 8
  %4417 = add i64 %4416, -8
  %4418 = inttoptr i64 %4417 to i64*
  store i64 %4415, i64* %4418, align 8
  store i64 %4417, i64* %6, align 8
  store i64 %4414, i64* %3, align 8
  %call2_4023be = tail call %struct.Memory* @sub_40c1c0._Z13test_constantIm25custom_notequal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4414, %struct.Memory* %call2_4023a0)
  %4419 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298599, i64* %RDX.i3615, align 8
  %4420 = add i64 %4419, 40605
  %4421 = add i64 %4419, 30
  %4422 = load i64, i64* %6, align 8
  %4423 = add i64 %4422, -8
  %4424 = inttoptr i64 %4423 to i64*
  store i64 %4421, i64* %4424, align 8
  store i64 %4423, i64* %6, align 8
  store i64 %4420, i64* %3, align 8
  %call2_4023dc = tail call %struct.Memory* @sub_40c260._Z13test_constantIm28custom_greaterthan_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4420, %struct.Memory* %call2_4023be)
  %4425 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298631, i64* %RDX.i3615, align 8
  %4426 = add i64 %4425, 40735
  %4427 = add i64 %4425, 30
  %4428 = load i64, i64* %6, align 8
  %4429 = add i64 %4428, -8
  %4430 = inttoptr i64 %4429 to i64*
  store i64 %4427, i64* %4430, align 8
  store i64 %4429, i64* %6, align 8
  store i64 %4426, i64* %3, align 8
  %call2_4023fa = tail call %struct.Memory* @sub_40c300._Z13test_constantIm25custom_lessthan_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4426, %struct.Memory* %call2_4023dc)
  %4431 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298660, i64* %RDX.i3615, align 8
  %4432 = add i64 %4431, 40865
  %4433 = add i64 %4431, 30
  %4434 = load i64, i64* %6, align 8
  %4435 = add i64 %4434, -8
  %4436 = inttoptr i64 %4435 to i64*
  store i64 %4433, i64* %4436, align 8
  store i64 %4435, i64* %6, align 8
  store i64 %4432, i64* %3, align 8
  %call2_402418 = tail call %struct.Memory* @sub_40c3a0._Z13test_constantIm33custom_greaterthanequal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4432, %struct.Memory* %call2_4023fa)
  %4437 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298698, i64* %RDX.i3615, align 8
  %4438 = add i64 %4437, 40995
  %4439 = add i64 %4437, 30
  %4440 = load i64, i64* %6, align 8
  %4441 = add i64 %4440, -8
  %4442 = inttoptr i64 %4441 to i64*
  store i64 %4439, i64* %4442, align 8
  store i64 %4441, i64* %6, align 8
  store i64 %4438, i64* %3, align 8
  %call2_402436 = tail call %struct.Memory* @sub_40c440._Z13test_constantIm30custom_lessthanequal_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4438, %struct.Memory* %call2_402418)
  %4443 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298733, i64* %RDX.i3615, align 8
  %4444 = add i64 %4443, 41125
  %4445 = add i64 %4443, 30
  %4446 = load i64, i64* %6, align 8
  %4447 = add i64 %4446, -8
  %4448 = inttoptr i64 %4447 to i64*
  store i64 %4445, i64* %4448, align 8
  store i64 %4447, i64* %6, align 8
  store i64 %4444, i64* %3, align 8
  %call2_402454 = tail call %struct.Memory* @sub_40c4e0._Z13test_constantIm20custom_and_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4444, %struct.Memory* %call2_402436)
  %4449 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298756, i64* %RDX.i3615, align 8
  %4450 = add i64 %4449, 41255
  %4451 = add i64 %4449, 30
  %4452 = load i64, i64* %6, align 8
  %4453 = add i64 %4452, -8
  %4454 = inttoptr i64 %4453 to i64*
  store i64 %4451, i64* %4454, align 8
  store i64 %4453, i64* %6, align 8
  store i64 %4450, i64* %3, align 8
  %call2_402472 = tail call %struct.Memory* @sub_40c580._Z13test_constantIm19custom_or_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4450, %struct.Memory* %call2_402454)
  %4455 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298778, i64* %RDX.i3615, align 8
  %4456 = add i64 %4455, 41385
  %4457 = add i64 %4455, 30
  %4458 = load i64, i64* %6, align 8
  %4459 = add i64 %4458, -8
  %4460 = inttoptr i64 %4459 to i64*
  store i64 %4457, i64* %4460, align 8
  store i64 %4459, i64* %6, align 8
  store i64 %4456, i64* %3, align 8
  %call2_402490 = tail call %struct.Memory* @sub_40c620._Z13test_constantIm20custom_xor_constantsImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4456, %struct.Memory* %call2_402472)
  %4461 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 10, i64* %200, align 8
  %4462 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4463 = zext i32 %4462 to i64
  store i64 %4463, i64* %RAX.i3622, align 8
  %4464 = load i64, i64* %RBP.i, align 8
  %4465 = add i64 %4464, -112
  %4466 = add i64 %4461, 42
  store i64 %4466, i64* %3, align 8
  %4467 = inttoptr i64 %4465 to i64*
  store i64 4298801, i64* %4467, align 8
  %4468 = load i64, i64* %3, align 8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4470 = load i32, i32* %EAX.i3390, align 8
  %4471 = sext i32 %4470 to i64
  %4472 = lshr i64 %4471, 32
  store i64 %4472, i64* %4469, align 8
  %4473 = load i32, i32* %R9D.i3585, align 4
  %4474 = add i64 %4468, 4
  store i64 %4474, i64* %3, align 8
  %4475 = zext i32 %4470 to i64
  %4476 = sext i32 %4473 to i64
  %4477 = shl nuw i64 %4472, 32
  %4478 = or i64 %4477, %4475
  %4479 = sdiv i64 %4478, %4476
  %4480 = shl i64 %4479, 32
  %4481 = ashr exact i64 %4480, 32
  %4482 = icmp eq i64 %4479, %4481
  br i1 %4482, label %4485, label %4483

; <label>:4483:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %4484 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4474, %struct.Memory* %call2_402490)
  %.pre8 = load i32, i32* %EAX.i3390, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit447

; <label>:4485:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %4486 = srem i64 %4478, %4476
  %4487 = and i64 %4479, 4294967295
  store i64 %4487, i64* %RAX.i3622, align 8
  %4488 = and i64 %4486, 4294967295
  store i64 %4488, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4489 = trunc i64 %4479 to i32
  br label %routine_idivl__r9d.exit447

routine_idivl__r9d.exit447:                       ; preds = %4485, %4483
  %4490 = phi i64 [ %.pre9, %4483 ], [ %4474, %4485 ]
  %4491 = phi i32 [ %.pre8, %4483 ], [ %4489, %4485 ]
  %4492 = phi %struct.Memory* [ %4484, %4483 ], [ %call2_402490, %4485 ]
  store i32 %4491, i32* inttoptr (i64 6430912 to i32*), align 64
  %4493 = load i64, i64* %RBP.i, align 8
  %4494 = add i64 %4493, -112
  %4495 = add i64 %4490, 11
  store i64 %4495, i64* %3, align 8
  %4496 = inttoptr i64 %4494 to i64*
  %4497 = load i64, i64* %4496, align 8
  store i64 %4497, i64* %RCX.i3620, align 8
  store i64 %4497, i64* %RDX.i3615, align 8
  %4498 = add i64 %4490, 41469
  %4499 = add i64 %4490, 19
  %4500 = load i64, i64* %6, align 8
  %4501 = add i64 %4500, -8
  %4502 = inttoptr i64 %4501 to i64*
  store i64 %4499, i64* %4502, align 8
  store i64 %4501, i64* %6, align 8
  store i64 %4498, i64* %3, align 8
  %call2_4024d1 = tail call %struct.Memory* @sub_40c6c0._Z13test_constantIm19custom_constant_addImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4498, %struct.Memory* %4492)
  %4503 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298823, i64* %RDX.i3615, align 8
  %4504 = add i64 %4503, 41610
  %4505 = add i64 %4503, 30
  %4506 = load i64, i64* %6, align 8
  %4507 = add i64 %4506, -8
  %4508 = inttoptr i64 %4507 to i64*
  store i64 %4505, i64* %4508, align 8
  store i64 %4507, i64* %6, align 8
  store i64 %4504, i64* %3, align 8
  %call2_4024ef = tail call %struct.Memory* @sub_40c760._Z13test_constantIm28custom_multiple_constant_addImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4504, %struct.Memory* %call2_4024d1)
  %4509 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298855, i64* %RDX.i3615, align 8
  %4510 = add i64 %4509, 41740
  %4511 = add i64 %4509, 30
  %4512 = load i64, i64* %6, align 8
  %4513 = add i64 %4512, -8
  %4514 = inttoptr i64 %4513 to i64*
  store i64 %4511, i64* %4514, align 8
  store i64 %4513, i64* %6, align 8
  store i64 %4510, i64* %3, align 8
  %call2_40250d = tail call %struct.Memory* @sub_40c800._Z13test_constantIm19custom_constant_subImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4510, %struct.Memory* %call2_4024ef)
  %4515 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298882, i64* %RDX.i3615, align 8
  %4516 = add i64 %4515, 41870
  %4517 = add i64 %4515, 30
  %4518 = load i64, i64* %6, align 8
  %4519 = add i64 %4518, -8
  %4520 = inttoptr i64 %4519 to i64*
  store i64 %4517, i64* %4520, align 8
  store i64 %4519, i64* %6, align 8
  store i64 %4516, i64* %3, align 8
  %call2_40252b = tail call %struct.Memory* @sub_40c8a0._Z13test_constantIm28custom_multiple_constant_subImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4516, %struct.Memory* %call2_40250d)
  %4521 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298919, i64* %RDX.i3615, align 8
  %4522 = add i64 %4521, 42000
  %4523 = add i64 %4521, 30
  %4524 = load i64, i64* %6, align 8
  %4525 = add i64 %4524, -8
  %4526 = inttoptr i64 %4525 to i64*
  store i64 %4523, i64* %4526, align 8
  store i64 %4525, i64* %6, align 8
  store i64 %4522, i64* %3, align 8
  %call2_402549 = tail call %struct.Memory* @sub_40c940._Z13test_constantIm24custom_constant_multiplyImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4522, %struct.Memory* %call2_40252b)
  %4527 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298946, i64* %RDX.i3615, align 8
  %4528 = add i64 %4527, 42130
  %4529 = add i64 %4527, 30
  %4530 = load i64, i64* %6, align 8
  %4531 = add i64 %4530, -8
  %4532 = inttoptr i64 %4531 to i64*
  store i64 %4529, i64* %4532, align 8
  store i64 %4531, i64* %6, align 8
  store i64 %4528, i64* %3, align 8
  %call2_402567 = tail call %struct.Memory* @sub_40c9e0._Z13test_constantIm33custom_multiple_constant_multiplyImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4528, %struct.Memory* %call2_402549)
  %4533 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4298984, i64* %RDX.i3615, align 8
  %4534 = add i64 %4533, 42260
  %4535 = add i64 %4533, 30
  %4536 = load i64, i64* %6, align 8
  %4537 = add i64 %4536, -8
  %4538 = inttoptr i64 %4537 to i64*
  store i64 %4535, i64* %4538, align 8
  store i64 %4537, i64* %6, align 8
  store i64 %4534, i64* %3, align 8
  %call2_402585 = tail call %struct.Memory* @sub_40ca80._Z13test_constantIm34custom_multiple_constant_multiply2ImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4534, %struct.Memory* %call2_402567)
  %4539 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299021, i64* %RDX.i3615, align 8
  %4540 = add i64 %4539, 42390
  %4541 = add i64 %4539, 30
  %4542 = load i64, i64* %6, align 8
  %4543 = add i64 %4542, -8
  %4544 = inttoptr i64 %4543 to i64*
  store i64 %4541, i64* %4544, align 8
  store i64 %4543, i64* %6, align 8
  store i64 %4540, i64* %3, align 8
  %call2_4025a3 = tail call %struct.Memory* @sub_40cb20._Z13test_constantIm22custom_constant_divideImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4540, %struct.Memory* %call2_402585)
  %4545 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299046, i64* %RDX.i3615, align 8
  %4546 = add i64 %4545, 42520
  %4547 = add i64 %4545, 30
  %4548 = load i64, i64* %6, align 8
  %4549 = add i64 %4548, -8
  %4550 = inttoptr i64 %4549 to i64*
  store i64 %4547, i64* %4550, align 8
  store i64 %4549, i64* %6, align 8
  store i64 %4546, i64* %3, align 8
  %call2_4025c1 = tail call %struct.Memory* @sub_40cbc0._Z13test_constantIm31custom_multiple_constant_divideImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4546, %struct.Memory* %call2_4025a3)
  %4551 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299081, i64* %RDX.i3615, align 8
  %4552 = add i64 %4551, 42650
  %4553 = add i64 %4551, 30
  %4554 = load i64, i64* %6, align 8
  %4555 = add i64 %4554, -8
  %4556 = inttoptr i64 %4555 to i64*
  store i64 %4553, i64* %4556, align 8
  store i64 %4555, i64* %6, align 8
  store i64 %4552, i64* %3, align 8
  %call2_4025df = tail call %struct.Memory* @sub_40cc60._Z13test_constantIm32custom_multiple_constant_divide2ImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4552, %struct.Memory* %call2_4025c1)
  %4557 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299116, i64* %RDX.i3615, align 8
  %4558 = add i64 %4557, 42780
  %4559 = add i64 %4557, 30
  %4560 = load i64, i64* %6, align 8
  %4561 = add i64 %4560, -8
  %4562 = inttoptr i64 %4561 to i64*
  store i64 %4559, i64* %4562, align 8
  store i64 %4561, i64* %6, align 8
  store i64 %4558, i64* %3, align 8
  %call2_4025fd = tail call %struct.Memory* @sub_40cd00._Z13test_constantIm30custom_multiple_constant_mixedImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4558, %struct.Memory* %call2_4025df)
  %4563 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299149, i64* %RDX.i3615, align 8
  %4564 = add i64 %4563, 42910
  %4565 = add i64 %4563, 30
  %4566 = load i64, i64* %6, align 8
  %4567 = add i64 %4566, -8
  %4568 = inttoptr i64 %4567 to i64*
  store i64 %4565, i64* %4568, align 8
  store i64 %4567, i64* %6, align 8
  store i64 %4564, i64* %3, align 8
  %call2_40261b = tail call %struct.Memory* @sub_40cda0._Z13test_constantIm19custom_constant_andImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4564, %struct.Memory* %call2_4025fd)
  %4569 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299171, i64* %RDX.i3615, align 8
  %4570 = add i64 %4569, 43040
  %4571 = add i64 %4569, 30
  %4572 = load i64, i64* %6, align 8
  %4573 = add i64 %4572, -8
  %4574 = inttoptr i64 %4573 to i64*
  store i64 %4571, i64* %4574, align 8
  store i64 %4573, i64* %6, align 8
  store i64 %4570, i64* %3, align 8
  %call2_402639 = tail call %struct.Memory* @sub_40ce40._Z13test_constantIm28custom_multiple_constant_andImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4570, %struct.Memory* %call2_40261b)
  %4575 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299202, i64* %RDX.i3615, align 8
  %4576 = add i64 %4575, 43170
  %4577 = add i64 %4575, 30
  %4578 = load i64, i64* %6, align 8
  %4579 = add i64 %4578, -8
  %4580 = inttoptr i64 %4579 to i64*
  store i64 %4577, i64* %4580, align 8
  store i64 %4579, i64* %6, align 8
  store i64 %4576, i64* %3, align 8
  %call2_402657 = tail call %struct.Memory* @sub_40cee0._Z13test_constantIm18custom_constant_orImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4576, %struct.Memory* %call2_402639)
  %4581 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299223, i64* %RDX.i3615, align 8
  %4582 = add i64 %4581, 43300
  %4583 = add i64 %4581, 30
  %4584 = load i64, i64* %6, align 8
  %4585 = add i64 %4584, -8
  %4586 = inttoptr i64 %4585 to i64*
  store i64 %4583, i64* %4586, align 8
  store i64 %4585, i64* %6, align 8
  store i64 %4582, i64* %3, align 8
  %call2_402675 = tail call %struct.Memory* @sub_40cf80._Z13test_constantIm27custom_multiple_constant_orImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4582, %struct.Memory* %call2_402657)
  %4587 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299253, i64* %RDX.i3615, align 8
  %4588 = add i64 %4587, 43430
  %4589 = add i64 %4587, 30
  %4590 = load i64, i64* %6, align 8
  %4591 = add i64 %4590, -8
  %4592 = inttoptr i64 %4591 to i64*
  store i64 %4589, i64* %4592, align 8
  store i64 %4591, i64* %6, align 8
  store i64 %4588, i64* %3, align 8
  %call2_402693 = tail call %struct.Memory* @sub_40d020._Z13test_constantIm19custom_constant_xorImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4588, %struct.Memory* %call2_402675)
  %4593 = load i64, i64* %3, align 8
  store i64 6526928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299275, i64* %RDX.i3615, align 8
  %4594 = add i64 %4593, 43560
  %4595 = add i64 %4593, 30
  %4596 = load i64, i64* %6, align 8
  %4597 = add i64 %4596, -8
  %4598 = inttoptr i64 %4597 to i64*
  store i64 %4595, i64* %4598, align 8
  store i64 %4597, i64* %6, align 8
  store i64 %4594, i64* %3, align 8
  %call2_4026b1 = tail call %struct.Memory* @sub_40d0c0._Z13test_constantIm28custom_multiple_constant_xorImEEvPT_iPKc(%struct.State* nonnull %0, i64 %4594, %struct.Memory* %call2_402693)
  %4599 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RCX.i3620, align 8
  store i64 6526928, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4600 = load <2 x i32>, <2 x i32>* %4283, align 1
  %4601 = load <2 x i32>, <2 x i32>* %4285, align 1
  %4602 = load double, double* inttoptr (i64 6430856 to double*), align 8
  %4603 = fptrunc double %4602 to float
  %4604 = bitcast [32 x %union.VectorReg]* %2506 to float*
  store float %4603, float* %4604, align 1
  %4605 = extractelement <2 x i32> %4600, i32 1
  %4606 = getelementptr inbounds i8, i8* %2507, i64 4
  %4607 = bitcast i8* %4606 to i32*
  store i32 %4605, i32* %4607, align 1
  %4608 = extractelement <2 x i32> %4601, i32 0
  %4609 = bitcast i64* %2514 to i32*
  store i32 %4608, i32* %4609, align 1
  %4610 = extractelement <2 x i32> %4601, i32 1
  %4611 = getelementptr inbounds i8, i8* %2507, i64 12
  %4612 = bitcast i8* %4611 to i32*
  store i32 %4610, i32* %4612, align 1
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 6526928, i64* %RSI.i3648, align 8
  %4613 = add i64 %4599, 43690
  %4614 = add i64 %4599, 40
  %4615 = load i64, i64* %6, align 8
  %4616 = add i64 %4615, -8
  %4617 = inttoptr i64 %4616 to i64*
  store i64 %4614, i64* %4617, align 8
  store i64 %4616, i64* %6, align 8
  store i64 %4613, i64* %3, align 8
  %call2_4026d9 = tail call %struct.Memory* @sub_40d160._Z4fillIPffEvT_S1_T0_(%struct.State* nonnull %0, i64 %4613, %struct.Memory* %call2_4026b1)
  %4618 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299306, i64* %RDX.i3615, align 8
  %4619 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RAX.i3622, align 8
  store i32 %4619, i32* inttoptr (i64 6430912 to i32*), align 64
  %4621 = add i64 %4618, 43714
  %4622 = add i64 %4618, 44
  %4623 = load i64, i64* %6, align 8
  %4624 = add i64 %4623, -8
  %4625 = inttoptr i64 %4624 to i64*
  store i64 %4622, i64* %4625, align 8
  store i64 %4624, i64* %6, align 8
  store i64 %4621, i64* %3, align 8
  %call2_402705 = tail call %struct.Memory* @sub_40d1a0._Z13test_constantIf10custom_twoIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4621, %struct.Memory* %call2_4026d9)
  %4626 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299321, i64* %RDX.i3615, align 8
  %4627 = add i64 %4626, 43830
  %4628 = add i64 %4626, 30
  %4629 = load i64, i64* %6, align 8
  %4630 = add i64 %4629, -8
  %4631 = inttoptr i64 %4630 to i64*
  store i64 %4628, i64* %4631, align 8
  store i64 %4630, i64* %6, align 8
  store i64 %4627, i64* %3, align 8
  %call2_402723 = tail call %struct.Memory* @sub_40d240._Z13test_constantIf20custom_add_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4627, %struct.Memory* %call2_402705)
  %4632 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299341, i64* %RDX.i3615, align 8
  %4633 = add i64 %4632, 43960
  %4634 = add i64 %4632, 30
  %4635 = load i64, i64* %6, align 8
  %4636 = add i64 %4635, -8
  %4637 = inttoptr i64 %4636 to i64*
  store i64 %4634, i64* %4637, align 8
  store i64 %4636, i64* %6, align 8
  store i64 %4633, i64* %3, align 8
  %call2_402741 = tail call %struct.Memory* @sub_40d2e0._Z13test_constantIf20custom_sub_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4633, %struct.Memory* %call2_402723)
  %4638 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299366, i64* %RDX.i3615, align 8
  %4639 = add i64 %4638, 44090
  %4640 = add i64 %4638, 30
  %4641 = load i64, i64* %6, align 8
  %4642 = add i64 %4641, -8
  %4643 = inttoptr i64 %4642 to i64*
  store i64 %4640, i64* %4643, align 8
  store i64 %4642, i64* %6, align 8
  store i64 %4639, i64* %3, align 8
  %call2_40275f = tail call %struct.Memory* @sub_40d380._Z13test_constantIf25custom_multiply_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4639, %struct.Memory* %call2_402741)
  %4644 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299391, i64* %RDX.i3615, align 8
  %4645 = add i64 %4644, 44220
  %4646 = add i64 %4644, 30
  %4647 = load i64, i64* %6, align 8
  %4648 = add i64 %4647, -8
  %4649 = inttoptr i64 %4648 to i64*
  store i64 %4646, i64* %4649, align 8
  store i64 %4648, i64* %6, align 8
  store i64 %4645, i64* %3, align 8
  %call2_40277d = tail call %struct.Memory* @sub_40d420._Z13test_constantIf23custom_divide_constantsIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4645, %struct.Memory* %call2_40275f)
  %4650 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299414, i64* %RDX.i3615, align 8
  %4651 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4652 = zext i32 %4651 to i64
  store i64 %4652, i64* %200, align 8
  %4653 = load i64, i64* %RBP.i, align 8
  %4654 = add i64 %4653, -116
  %4655 = add i64 %4650, 41
  store i64 %4655, i64* %3, align 8
  %4656 = inttoptr i64 %4654 to i32*
  store i32 10, i32* %4656, align 4
  %4657 = load i32, i32* %R9D.i3585, align 4
  %4658 = zext i32 %4657 to i64
  %4659 = load i64, i64* %3, align 8
  store i64 %4658, i64* %RAX.i3622, align 8
  %4660 = load i64, i64* %RBP.i, align 8
  %4661 = add i64 %4660, -128
  %4662 = load i64, i64* %RDX.i3615, align 8
  %4663 = add i64 %4659, 7
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4661 to i64*
  store i64 %4662, i64* %4664, align 8
  %4665 = load i64, i64* %3, align 8
  %4666 = load i32, i32* %EAX.i3390, align 8
  %4667 = sext i32 %4666 to i64
  %4668 = lshr i64 %4667, 32
  store i64 %4668, i64* %4469, align 8
  %4669 = load i64, i64* %RBP.i, align 8
  %4670 = add i64 %4669, -116
  %4671 = add i64 %4665, 5
  store i64 %4671, i64* %3, align 8
  %4672 = inttoptr i64 %4670 to i32*
  %4673 = load i32, i32* %4672, align 4
  %4674 = zext i32 %4673 to i64
  store i64 %4674, i64* %200, align 8
  %4675 = add i64 %4665, 8
  store i64 %4675, i64* %3, align 8
  %4676 = zext i32 %4666 to i64
  %4677 = sext i32 %4673 to i64
  %4678 = shl nuw i64 %4668, 32
  %4679 = or i64 %4678, %4676
  %4680 = sdiv i64 %4679, %4677
  %4681 = shl i64 %4680, 32
  %4682 = ashr exact i64 %4681, 32
  %4683 = icmp eq i64 %4680, %4682
  br i1 %4683, label %4686, label %4684

; <label>:4684:                                   ; preds = %routine_idivl__r9d.exit447
  %4685 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4675, %struct.Memory* %call2_40277d)
  %.pre10 = load i32, i32* %EAX.i3390, align 4
  %.pre11 = load i64, i64* %3, align 8
  %.pre12 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r9d.exit243

; <label>:4686:                                   ; preds = %routine_idivl__r9d.exit447
  %4687 = srem i64 %4679, %4677
  %4688 = and i64 %4680, 4294967295
  store i64 %4688, i64* %RAX.i3622, align 8
  %4689 = and i64 %4687, 4294967295
  store i64 %4689, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4690 = trunc i64 %4680 to i32
  br label %routine_idivl__r9d.exit243

routine_idivl__r9d.exit243:                       ; preds = %4686, %4684
  %4691 = phi i64 [ %.pre12, %4684 ], [ %4669, %4686 ]
  %4692 = phi i64 [ %.pre11, %4684 ], [ %4675, %4686 ]
  %4693 = phi i32 [ %.pre10, %4684 ], [ %4690, %4686 ]
  %4694 = phi %struct.Memory* [ %4685, %4684 ], [ %call2_40277d, %4686 ]
  store i32 %4693, i32* inttoptr (i64 6430912 to i32*), align 64
  %4695 = add i64 %4691, -128
  %4696 = add i64 %4692, 11
  store i64 %4696, i64* %3, align 8
  %4697 = inttoptr i64 %4695 to i64*
  %4698 = load i64, i64* %4697, align 8
  store i64 %4698, i64* %RCX.i3620, align 8
  store i64 %4698, i64* %RDX.i3615, align 8
  %4699 = add i64 %4692, 44294
  %4700 = add i64 %4692, 19
  %4701 = load i64, i64* %6, align 8
  %4702 = add i64 %4701, -8
  %4703 = inttoptr i64 %4702 to i64*
  store i64 %4700, i64* %4703, align 8
  store i64 %4702, i64* %6, align 8
  store i64 %4699, i64* %3, align 8
  %call2_4027c8 = tail call %struct.Memory* @sub_40d4c0._Z13test_constantIf19custom_constant_addIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4699, %struct.Memory* %4694)
  %4704 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299433, i64* %RDX.i3615, align 8
  %4705 = add i64 %4704, 44435
  %4706 = add i64 %4704, 30
  %4707 = load i64, i64* %6, align 8
  %4708 = add i64 %4707, -8
  %4709 = inttoptr i64 %4708 to i64*
  store i64 %4706, i64* %4709, align 8
  store i64 %4708, i64* %6, align 8
  store i64 %4705, i64* %3, align 8
  %call2_4027e6 = tail call %struct.Memory* @sub_40d560._Z13test_constantIf28custom_multiple_constant_addIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4705, %struct.Memory* %call2_4027c8)
  %4710 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299462, i64* %RDX.i3615, align 8
  %4711 = add i64 %4710, 44565
  %4712 = add i64 %4710, 30
  %4713 = load i64, i64* %6, align 8
  %4714 = add i64 %4713, -8
  %4715 = inttoptr i64 %4714 to i64*
  store i64 %4712, i64* %4715, align 8
  store i64 %4714, i64* %6, align 8
  store i64 %4711, i64* %3, align 8
  %call2_402804 = tail call %struct.Memory* @sub_40d600._Z13test_constantIf19custom_constant_subIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4711, %struct.Memory* %call2_4027e6)
  %4716 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299486, i64* %RDX.i3615, align 8
  %4717 = add i64 %4716, 44695
  %4718 = add i64 %4716, 30
  %4719 = load i64, i64* %6, align 8
  %4720 = add i64 %4719, -8
  %4721 = inttoptr i64 %4720 to i64*
  store i64 %4718, i64* %4721, align 8
  store i64 %4720, i64* %6, align 8
  store i64 %4717, i64* %3, align 8
  %call2_402822 = tail call %struct.Memory* @sub_40d6a0._Z13test_constantIf28custom_multiple_constant_subIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4717, %struct.Memory* %call2_402804)
  %4722 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299520, i64* %RDX.i3615, align 8
  %4723 = add i64 %4722, 44825
  %4724 = add i64 %4722, 30
  %4725 = load i64, i64* %6, align 8
  %4726 = add i64 %4725, -8
  %4727 = inttoptr i64 %4726 to i64*
  store i64 %4724, i64* %4727, align 8
  store i64 %4726, i64* %6, align 8
  store i64 %4723, i64* %3, align 8
  %call2_402840 = tail call %struct.Memory* @sub_40d740._Z13test_constantIf24custom_constant_multiplyIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4723, %struct.Memory* %call2_402822)
  %4728 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299544, i64* %RDX.i3615, align 8
  %4729 = add i64 %4728, 44955
  %4730 = add i64 %4728, 30
  %4731 = load i64, i64* %6, align 8
  %4732 = add i64 %4731, -8
  %4733 = inttoptr i64 %4732 to i64*
  store i64 %4730, i64* %4733, align 8
  store i64 %4732, i64* %6, align 8
  store i64 %4729, i64* %3, align 8
  %call2_40285e = tail call %struct.Memory* @sub_40d7e0._Z13test_constantIf33custom_multiple_constant_multiplyIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4729, %struct.Memory* %call2_402840)
  %4734 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299579, i64* %RDX.i3615, align 8
  %4735 = add i64 %4734, 45085
  %4736 = add i64 %4734, 30
  %4737 = load i64, i64* %6, align 8
  %4738 = add i64 %4737, -8
  %4739 = inttoptr i64 %4738 to i64*
  store i64 %4736, i64* %4739, align 8
  store i64 %4738, i64* %6, align 8
  store i64 %4735, i64* %3, align 8
  %call2_40287c = tail call %struct.Memory* @sub_40d880._Z13test_constantIf34custom_multiple_constant_multiply2IfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4735, %struct.Memory* %call2_40285e)
  %4740 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299613, i64* %RDX.i3615, align 8
  %4741 = add i64 %4740, 45215
  %4742 = add i64 %4740, 30
  %4743 = load i64, i64* %6, align 8
  %4744 = add i64 %4743, -8
  %4745 = inttoptr i64 %4744 to i64*
  store i64 %4742, i64* %4745, align 8
  store i64 %4744, i64* %6, align 8
  store i64 %4741, i64* %3, align 8
  %call2_40289a = tail call %struct.Memory* @sub_40d920._Z13test_constantIf22custom_constant_divideIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4741, %struct.Memory* %call2_40287c)
  %4746 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299635, i64* %RDX.i3615, align 8
  %4747 = add i64 %4746, 45345
  %4748 = add i64 %4746, 30
  %4749 = load i64, i64* %6, align 8
  %4750 = add i64 %4749, -8
  %4751 = inttoptr i64 %4750 to i64*
  store i64 %4748, i64* %4751, align 8
  store i64 %4750, i64* %6, align 8
  store i64 %4747, i64* %3, align 8
  %call2_4028b8 = tail call %struct.Memory* @sub_40d9c0._Z13test_constantIf31custom_multiple_constant_divideIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4747, %struct.Memory* %call2_40289a)
  %4752 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299667, i64* %RDX.i3615, align 8
  %4753 = add i64 %4752, 45475
  %4754 = add i64 %4752, 30
  %4755 = load i64, i64* %6, align 8
  %4756 = add i64 %4755, -8
  %4757 = inttoptr i64 %4756 to i64*
  store i64 %4754, i64* %4757, align 8
  store i64 %4756, i64* %6, align 8
  store i64 %4753, i64* %3, align 8
  %call2_4028d6 = tail call %struct.Memory* @sub_40da60._Z13test_constantIf32custom_multiple_constant_divide2IfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4753, %struct.Memory* %call2_4028b8)
  %4758 = load i64, i64* %3, align 8
  store i64 6494928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299699, i64* %RDX.i3615, align 8
  %4759 = add i64 %4758, 45605
  %4760 = add i64 %4758, 30
  %4761 = load i64, i64* %6, align 8
  %4762 = add i64 %4761, -8
  %4763 = inttoptr i64 %4762 to i64*
  store i64 %4760, i64* %4763, align 8
  store i64 %4762, i64* %6, align 8
  store i64 %4759, i64* %3, align 8
  %call2_4028f4 = tail call %struct.Memory* @sub_40db00._Z13test_constantIf30custom_multiple_constant_mixedIfEEvPT_iPKc(%struct.State* nonnull %0, i64 %4759, %struct.Memory* %call2_4028d6)
  %4764 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RCX.i3620, align 8
  store i64 6494928, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4765 = load i64, i64* inttoptr (i64 6430856 to i64*), align 8
  store i64 %4765, i64* %2513, align 1
  store double 0.000000e+00, double* %2515, align 1
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 6494928, i64* %RSI.i3648, align 8
  %4766 = add i64 %4764, 45735
  %4767 = add i64 %4764, 40
  %4768 = load i64, i64* %6, align 8
  %4769 = add i64 %4768, -8
  %4770 = inttoptr i64 %4769 to i64*
  store i64 %4767, i64* %4770, align 8
  store i64 %4769, i64* %6, align 8
  store i64 %4766, i64* %3, align 8
  %call2_40291c = tail call %struct.Memory* @sub_40dba0._Z4fillIPddEvT_S1_T0_(%struct.State* nonnull %0, i64 %4766, %struct.Memory* %call2_4028f4)
  %4771 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299729, i64* %RDX.i3615, align 8
  %4772 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4773 = zext i32 %4772 to i64
  store i64 %4773, i64* %RAX.i3622, align 8
  store i32 %4772, i32* inttoptr (i64 6430912 to i32*), align 64
  %4774 = add i64 %4771, 45759
  %4775 = add i64 %4771, 44
  %4776 = load i64, i64* %6, align 8
  %4777 = add i64 %4776, -8
  %4778 = inttoptr i64 %4777 to i64*
  store i64 %4775, i64* %4778, align 8
  store i64 %4777, i64* %6, align 8
  store i64 %4774, i64* %3, align 8
  %call2_402948 = tail call %struct.Memory* @sub_40dbe0._Z13test_constantId10custom_twoIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4774, %struct.Memory* %call2_40291c)
  %4779 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299745, i64* %RDX.i3615, align 8
  %4780 = add i64 %4779, 45875
  %4781 = add i64 %4779, 30
  %4782 = load i64, i64* %6, align 8
  %4783 = add i64 %4782, -8
  %4784 = inttoptr i64 %4783 to i64*
  store i64 %4781, i64* %4784, align 8
  store i64 %4783, i64* %6, align 8
  store i64 %4780, i64* %3, align 8
  %call2_402966 = tail call %struct.Memory* @sub_40dc80._Z13test_constantId20custom_add_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4780, %struct.Memory* %call2_402948)
  %4785 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299766, i64* %RDX.i3615, align 8
  %4786 = add i64 %4785, 46005
  %4787 = add i64 %4785, 30
  %4788 = load i64, i64* %6, align 8
  %4789 = add i64 %4788, -8
  %4790 = inttoptr i64 %4789 to i64*
  store i64 %4787, i64* %4790, align 8
  store i64 %4789, i64* %6, align 8
  store i64 %4786, i64* %3, align 8
  %call2_402984 = tail call %struct.Memory* @sub_40dd20._Z13test_constantId20custom_sub_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4786, %struct.Memory* %call2_402966)
  %4791 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299792, i64* %RDX.i3615, align 8
  %4792 = add i64 %4791, 46135
  %4793 = add i64 %4791, 30
  %4794 = load i64, i64* %6, align 8
  %4795 = add i64 %4794, -8
  %4796 = inttoptr i64 %4795 to i64*
  store i64 %4793, i64* %4796, align 8
  store i64 %4795, i64* %6, align 8
  store i64 %4792, i64* %3, align 8
  %call2_4029a2 = tail call %struct.Memory* @sub_40ddc0._Z13test_constantId25custom_multiply_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4792, %struct.Memory* %call2_402984)
  %4797 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299818, i64* %RDX.i3615, align 8
  %4798 = add i64 %4797, 46265
  %4799 = add i64 %4797, 30
  %4800 = load i64, i64* %6, align 8
  %4801 = add i64 %4800, -8
  %4802 = inttoptr i64 %4801 to i64*
  store i64 %4799, i64* %4802, align 8
  store i64 %4801, i64* %6, align 8
  store i64 %4798, i64* %3, align 8
  %call2_4029c0 = tail call %struct.Memory* @sub_40de60._Z13test_constantId23custom_divide_constantsIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4798, %struct.Memory* %call2_4029a2)
  %4803 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299842, i64* %RDX.i3615, align 8
  %4804 = load i32, i32* inttoptr (i64 6430848 to i32*), align 128
  %4805 = zext i32 %4804 to i64
  store i64 %4805, i64* %200, align 8
  %4806 = load i64, i64* %RBP.i, align 8
  %4807 = add i64 %4806, -132
  %4808 = add i64 %4803, 44
  store i64 %4808, i64* %3, align 8
  %4809 = inttoptr i64 %4807 to i32*
  store i32 10, i32* %4809, align 4
  %4810 = load i32, i32* %R9D.i3585, align 4
  %4811 = zext i32 %4810 to i64
  %4812 = load i64, i64* %3, align 8
  store i64 %4811, i64* %RAX.i3622, align 8
  %4813 = load i64, i64* %RBP.i, align 8
  %4814 = add i64 %4813, -144
  %4815 = load i64, i64* %RDX.i3615, align 8
  %4816 = add i64 %4812, 10
  store i64 %4816, i64* %3, align 8
  %4817 = inttoptr i64 %4814 to i64*
  store i64 %4815, i64* %4817, align 8
  %4818 = load i64, i64* %3, align 8
  %4819 = load i32, i32* %EAX.i3390, align 8
  %4820 = sext i32 %4819 to i64
  %4821 = lshr i64 %4820, 32
  store i64 %4821, i64* %4469, align 8
  %4822 = load i64, i64* %RBP.i, align 8
  %4823 = add i64 %4822, -132
  %4824 = add i64 %4818, 8
  store i64 %4824, i64* %3, align 8
  %4825 = inttoptr i64 %4823 to i32*
  %4826 = load i32, i32* %4825, align 4
  %4827 = zext i32 %4826 to i64
  store i64 %4827, i64* %200, align 8
  %4828 = add i64 %4818, 11
  store i64 %4828, i64* %3, align 8
  %4829 = zext i32 %4819 to i64
  %4830 = sext i32 %4826 to i64
  %4831 = shl nuw i64 %4821, 32
  %4832 = or i64 %4831, %4829
  %4833 = sdiv i64 %4832, %4830
  %4834 = shl i64 %4833, 32
  %4835 = ashr exact i64 %4834, 32
  %4836 = icmp eq i64 %4833, %4835
  br i1 %4836, label %4839, label %4837

; <label>:4837:                                   ; preds = %routine_idivl__r9d.exit243
  %4838 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4828, %struct.Memory* %call2_4029c0)
  %.pre13 = load i32, i32* %EAX.i3390, align 4
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r9d.exit

; <label>:4839:                                   ; preds = %routine_idivl__r9d.exit243
  %4840 = srem i64 %4832, %4830
  %4841 = and i64 %4833, 4294967295
  store i64 %4841, i64* %RAX.i3622, align 8
  %4842 = and i64 %4840, 4294967295
  store i64 %4842, i64* %RDX.i3615, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4843 = trunc i64 %4833 to i32
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %4839, %4837
  %4844 = phi i64 [ %.pre15, %4837 ], [ %4822, %4839 ]
  %4845 = phi i64 [ %.pre14, %4837 ], [ %4828, %4839 ]
  %4846 = phi i32 [ %.pre13, %4837 ], [ %4843, %4839 ]
  %4847 = phi %struct.Memory* [ %4838, %4837 ], [ %call2_4029c0, %4839 ]
  store i32 %4846, i32* inttoptr (i64 6430912 to i32*), align 64
  %4848 = add i64 %4844, -144
  %4849 = add i64 %4845, 14
  store i64 %4849, i64* %3, align 8
  %4850 = inttoptr i64 %4848 to i64*
  %4851 = load i64, i64* %4850, align 8
  store i64 %4851, i64* %RCX.i3620, align 8
  store i64 %4851, i64* %RDX.i3615, align 8
  %4852 = add i64 %4845, 46330
  %4853 = add i64 %4845, 22
  %4854 = load i64, i64* %6, align 8
  %4855 = add i64 %4854, -8
  %4856 = inttoptr i64 %4855 to i64*
  store i64 %4853, i64* %4856, align 8
  store i64 %4855, i64* %6, align 8
  store i64 %4852, i64* %3, align 8
  %call2_402a17 = tail call %struct.Memory* @sub_40df00._Z13test_constantId19custom_constant_addIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4852, %struct.Memory* %4847)
  %4857 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299862, i64* %RDX.i3615, align 8
  %4858 = add i64 %4857, 46468
  %4859 = add i64 %4857, 30
  %4860 = load i64, i64* %6, align 8
  %4861 = add i64 %4860, -8
  %4862 = inttoptr i64 %4861 to i64*
  store i64 %4859, i64* %4862, align 8
  store i64 %4861, i64* %6, align 8
  store i64 %4858, i64* %3, align 8
  %call2_402a35 = tail call %struct.Memory* @sub_40dfa0._Z13test_constantId28custom_multiple_constant_addIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4858, %struct.Memory* %call2_402a17)
  %4863 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299892, i64* %RDX.i3615, align 8
  %4864 = add i64 %4863, 46598
  %4865 = add i64 %4863, 30
  %4866 = load i64, i64* %6, align 8
  %4867 = add i64 %4866, -8
  %4868 = inttoptr i64 %4867 to i64*
  store i64 %4865, i64* %4868, align 8
  store i64 %4867, i64* %6, align 8
  store i64 %4864, i64* %3, align 8
  %call2_402a53 = tail call %struct.Memory* @sub_40e040._Z13test_constantId19custom_constant_subIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4864, %struct.Memory* %call2_402a35)
  %4869 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299917, i64* %RDX.i3615, align 8
  %4870 = add i64 %4869, 46728
  %4871 = add i64 %4869, 30
  %4872 = load i64, i64* %6, align 8
  %4873 = add i64 %4872, -8
  %4874 = inttoptr i64 %4873 to i64*
  store i64 %4871, i64* %4874, align 8
  store i64 %4873, i64* %6, align 8
  store i64 %4870, i64* %3, align 8
  %call2_402a71 = tail call %struct.Memory* @sub_40e0e0._Z13test_constantId28custom_multiple_constant_subIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4870, %struct.Memory* %call2_402a53)
  %4875 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299952, i64* %RDX.i3615, align 8
  %4876 = add i64 %4875, 46858
  %4877 = add i64 %4875, 30
  %4878 = load i64, i64* %6, align 8
  %4879 = add i64 %4878, -8
  %4880 = inttoptr i64 %4879 to i64*
  store i64 %4877, i64* %4880, align 8
  store i64 %4879, i64* %6, align 8
  store i64 %4876, i64* %3, align 8
  %call2_402a8f = tail call %struct.Memory* @sub_40e180._Z13test_constantId24custom_constant_multiplyIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4876, %struct.Memory* %call2_402a71)
  %4881 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4299977, i64* %RDX.i3615, align 8
  %4882 = add i64 %4881, 46988
  %4883 = add i64 %4881, 30
  %4884 = load i64, i64* %6, align 8
  %4885 = add i64 %4884, -8
  %4886 = inttoptr i64 %4885 to i64*
  store i64 %4883, i64* %4886, align 8
  store i64 %4885, i64* %6, align 8
  store i64 %4882, i64* %3, align 8
  %call2_402aad = tail call %struct.Memory* @sub_40e220._Z13test_constantId33custom_multiple_constant_multiplyIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4882, %struct.Memory* %call2_402a8f)
  %4887 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4300013, i64* %RDX.i3615, align 8
  %4888 = add i64 %4887, 47118
  %4889 = add i64 %4887, 30
  %4890 = load i64, i64* %6, align 8
  %4891 = add i64 %4890, -8
  %4892 = inttoptr i64 %4891 to i64*
  store i64 %4889, i64* %4892, align 8
  store i64 %4891, i64* %6, align 8
  store i64 %4888, i64* %3, align 8
  %call2_402acb = tail call %struct.Memory* @sub_40e2c0._Z13test_constantId34custom_multiple_constant_multiply2IdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4888, %struct.Memory* %call2_402aad)
  %4893 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4300048, i64* %RDX.i3615, align 8
  %4894 = add i64 %4893, 47248
  %4895 = add i64 %4893, 30
  %4896 = load i64, i64* %6, align 8
  %4897 = add i64 %4896, -8
  %4898 = inttoptr i64 %4897 to i64*
  store i64 %4895, i64* %4898, align 8
  store i64 %4897, i64* %6, align 8
  store i64 %4894, i64* %3, align 8
  %call2_402ae9 = tail call %struct.Memory* @sub_40e360._Z13test_constantId22custom_constant_divideIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4894, %struct.Memory* %call2_402acb)
  %4899 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4300071, i64* %RDX.i3615, align 8
  %4900 = add i64 %4899, 47378
  %4901 = add i64 %4899, 30
  %4902 = load i64, i64* %6, align 8
  %4903 = add i64 %4902, -8
  %4904 = inttoptr i64 %4903 to i64*
  store i64 %4901, i64* %4904, align 8
  store i64 %4903, i64* %6, align 8
  store i64 %4900, i64* %3, align 8
  %call2_402b07 = tail call %struct.Memory* @sub_40e400._Z13test_constantId31custom_multiple_constant_divideIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4900, %struct.Memory* %call2_402ae9)
  %4905 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4300104, i64* %RDX.i3615, align 8
  %4906 = add i64 %4905, 47508
  %4907 = add i64 %4905, 30
  %4908 = load i64, i64* %6, align 8
  %4909 = add i64 %4908, -8
  %4910 = inttoptr i64 %4909 to i64*
  store i64 %4907, i64* %4910, align 8
  store i64 %4909, i64* %6, align 8
  store i64 %4906, i64* %3, align 8
  %call2_402b25 = tail call %struct.Memory* @sub_40e4a0._Z13test_constantId32custom_multiple_constant_divide2IdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4906, %struct.Memory* %call2_402b07)
  %4911 = load i64, i64* %3, align 8
  store i64 6430928, i64* %RDI.i3611.pre-phi, align 8
  store i64 8000, i64* %RSI.i3648, align 8
  store i64 4300137, i64* %RDX.i3615, align 8
  %4912 = add i64 %4911, 47638
  %4913 = add i64 %4911, 30
  %4914 = load i64, i64* %6, align 8
  %4915 = add i64 %4914, -8
  %4916 = inttoptr i64 %4915 to i64*
  store i64 %4913, i64* %4916, align 8
  store i64 %4915, i64* %6, align 8
  store i64 %4912, i64* %3, align 8
  %call2_402b43 = tail call %struct.Memory* @sub_40e540._Z13test_constantId30custom_multiple_constant_mixedIdEEvPT_iPKc(%struct.State* nonnull %0, i64 %4912, %struct.Memory* %call2_402b25)
  %4917 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i3622, align 8
  %4918 = load i64, i64* %6, align 8
  %4919 = add i64 %4918, 144
  store i64 %4919, i64* %6, align 8
  %4920 = icmp ugt i64 %4918, -145
  %4921 = zext i1 %4920 to i8
  store i8 %4921, i8* %14, align 1
  %4922 = trunc i64 %4919 to i32
  %4923 = and i32 %4922, 255
  %4924 = tail call i32 @llvm.ctpop.i32(i32 %4923)
  %4925 = trunc i32 %4924 to i8
  %4926 = and i8 %4925, 1
  %4927 = xor i8 %4926, 1
  store i8 %4927, i8* %21, align 1
  %4928 = xor i64 %4918, 16
  %4929 = xor i64 %4928, %4919
  %4930 = lshr i64 %4929, 4
  %4931 = trunc i64 %4930 to i8
  %4932 = and i8 %4931, 1
  store i8 %4932, i8* %27, align 1
  %4933 = icmp eq i64 %4919, 0
  %4934 = zext i1 %4933 to i8
  store i8 %4934, i8* %30, align 1
  %4935 = lshr i64 %4919, 63
  %4936 = trunc i64 %4935 to i8
  store i8 %4936, i8* %33, align 1
  %4937 = lshr i64 %4918, 63
  %4938 = xor i64 %4935, %4937
  %4939 = add nuw nsw i64 %4938, %4935
  %4940 = icmp eq i64 %4939, 2
  %4941 = zext i1 %4940 to i8
  store i8 %4941, i8* %39, align 1
  %4942 = add i64 %4917, 10
  store i64 %4942, i64* %3, align 8
  %4943 = add i64 %4918, 152
  %4944 = inttoptr i64 %4919 to i64*
  %4945 = load i64, i64* %4944, align 8
  store i64 %4945, i64* %RBP.i, align 8
  store i64 %4943, i64* %6, align 8
  %4946 = add i64 %4917, 11
  store i64 %4946, i64* %3, align 8
  %4947 = inttoptr i64 %4943 to i64*
  %4948 = load i64, i64* %4947, align 8
  store i64 %4948, i64* %3, align 8
  %4949 = add i64 %4918, 160
  store i64 %4949, i64* %6, align 8
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
