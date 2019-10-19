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

declare %struct.Memory* @sub_402fc0._Z4fillIPaaEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403000._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4030b0._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403170._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403280._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403330._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403440._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4034f0._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403600._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403710._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4037c0._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4038d0._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4039e0._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403af0._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403ba0._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403cb0._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403d60._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403e70._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403f20._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404030._Z4fillIPhhEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404070._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404120._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4041e0._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4042f0._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4043a0._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4044b0._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404560._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404670._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404780._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404830._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404940._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404a50._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404b60._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404c10._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404d20._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404dd0._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404ee0._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404f90._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4050a0._Z4fillIPssEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4050e0._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4051a0._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405260._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405390._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405450._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405580._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405640._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405770._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4058a0._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405960._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405a90._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405bc0._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405cf0._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405db0._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405ee0._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405fa0._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4060d0._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406190._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4062c0._Z4fillIPttEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406300._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4063c0._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406480._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4065b0._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406670._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4067a0._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406860._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406990._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406ac0._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406b80._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406cb0._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406de0._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406f10._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406fd0._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407100._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4071c0._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4072f0._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4073b0._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4074e0._Z4fillIPiiEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407520._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4075c0._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407670._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407740._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4077e0._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4078b0._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407950._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407a20._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407af0._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407b90._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407c60._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407d30._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e00._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407ea0._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407f70._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408010._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4080e0._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408180._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408250._Z4fillIPjjEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408290._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408330._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4083e0._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4084b0._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408550._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408620._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4086c0._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408790._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408860._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408900._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4089d0._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408aa0._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408b70._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408c10._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408ce0._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408d80._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e50._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408ef0._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408fc0._Z4fillIPllEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409000._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4090b0._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409160._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409230._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4092e0._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4093b0._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409460._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409530._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409600._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4096b0._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409780._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409850._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409920._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4099d0._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409aa0._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409b50._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409c20._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409cd0._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409da0._Z4fillIPmmEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409de0._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409e90._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409f40._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a010._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a0c0._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a190._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a240._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a310._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a3e0._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a490._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a560._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a630._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a700._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a7b0._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a880._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a930._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aa00._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aab0._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ab80._Z4fillIPffEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40abc0._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ac70._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ad30._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ae10._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aec0._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40afa0._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b050._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b130._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b210._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b2c0._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b3a0._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b480._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b560._Z4fillIPddEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b5a0._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b650._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b710._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b7f0._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b8a0._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b980._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ba30._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bb10._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bbf0._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bca0._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bd80._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40be60._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i831 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R14.i831, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i879 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %RBX.i879, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %7, -392
  store i64 %23, i64* %6, align 8
  %24 = icmp ult i64 %20, 368
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i64 %20, 16
  %35 = xor i64 %34, %23
  %36 = lshr i64 %35, 4
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i64 %23, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %23, 63
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %20, 63
  %47 = xor i64 %43, %46
  %48 = add nuw nsw i64 %47, %46
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %53 = bitcast [32 x %union.VectorReg]* %52 to i8*
  %54 = add i64 %22, 77737
  %55 = add i64 %22, 15
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = bitcast [32 x %union.VectorReg]* %52 to double*
  %59 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %57, i64* %59, align 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %61 = bitcast i64* %60 to double*
  store double 0.000000e+00, double* %61, align 1
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -20
  %64 = add i64 %22, 22
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2579 = bitcast %union.anon* %66 to i32*
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -24
  %69 = load i32, i32* %EDI.i2579, align 4
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i3037 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -32
  %76 = load i64, i64* %RSI.i3037, align 8
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -40
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 5
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %59, align 1
  %85 = inttoptr i64 %81 to i64*
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -24
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, -1
  %93 = icmp eq i32 %91, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %26, align 1
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %33, align 1
  %100 = xor i32 %92, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %39, align 1
  %104 = icmp eq i32 %92, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %42, align 1
  %106 = lshr i32 %92, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %45, align 1
  %108 = lshr i32 %91, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %51, align 1
  %113 = icmp ne i8 %107, 0
  %114 = xor i1 %113, %111
  %115 = or i1 %104, %114
  %.v = select i1 %115, i64 30, i64 10
  %116 = add i64 %88, %.v
  store i64 %116, i64* %3, align 8
  br i1 %115, label %block_.L_400ef7, label %block_400ee3

block_400ee3:                                     ; preds = %entry
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i4065 = getelementptr inbounds %union.anon, %union.anon* %117, i64 0, i32 0
  %118 = add i64 %86, -32
  %119 = add i64 %116, 4
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RAX.i4065, align 8
  %RDI.i4063 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %122 = add i64 %121, 8
  %123 = add i64 %116, 8
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RDI.i4063, align 8
  %126 = add i64 %116, -2019
  %127 = add i64 %116, 13
  %128 = load i64, i64* %6, align 8
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130, align 8
  store i64 %129, i64* %6, align 8
  store i64 %126, i64* %3, align 8
  %call2_400eeb = tail call %struct.Memory* @sub_400700.atoi_plt(%struct.State* nonnull %0, i64 %126, %struct.Memory* %2)
  %EAX.i4059 = bitcast %union.anon* %117 to i32*
  %131 = load i32, i32* %EAX.i4059, align 4
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 7
  store i64 %133, i64* %3, align 8
  store i32 %131, i32* inttoptr (i64 6398080 to i32*), align 128
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ef7

block_.L_400ef7:                                  ; preds = %block_400ee3, %entry
  %134 = phi i64 [ %116, %entry ], [ %133, %block_400ee3 ]
  %135 = phi i64 [ %86, %entry ], [ %.pre, %block_400ee3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_400eeb, %block_400ee3 ]
  %136 = add i64 %135, -24
  %137 = add i64 %134, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, -2
  %141 = icmp ult i32 %139, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %26, align 1
  %143 = and i32 %140, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %33, align 1
  %148 = xor i32 %140, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %39, align 1
  %152 = icmp eq i32 %140, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %42, align 1
  %154 = lshr i32 %140, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %45, align 1
  %156 = lshr i32 %139, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %51, align 1
  %161 = icmp ne i8 %155, 0
  %162 = xor i1 %161, %159
  %163 = or i1 %152, %162
  %.v44 = select i1 %163, i64 32, i64 10
  %164 = add i64 %134, %.v44
  store i64 %164, i64* %3, align 8
  br i1 %163, label %block_.L_400f17, label %block_400f01

block_400f01:                                     ; preds = %block_.L_400ef7
  %RAX.i4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %165 = add i64 %135, -32
  %166 = add i64 %164, 4
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RAX.i4053, align 8
  %RDI.i4051 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %169 = add i64 %168, 16
  %170 = add i64 %164, 8
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RDI.i4051, align 8
  %173 = add i64 %164, -2161
  %174 = add i64 %164, 13
  %175 = load i64, i64* %6, align 8
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*
  store i64 %174, i64* %177, align 8
  store i64 %176, i64* %6, align 8
  store i64 %173, i64* %3, align 8
  %call2_400f09 = tail call %struct.Memory* @sub_400690.atof_plt(%struct.State* nonnull %0, i64 %173, %struct.Memory* %MEMORY.0)
  %178 = load i64, i64* %3, align 8
  %179 = add i64 %178, 9
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %59, align 1
  store i64 %180, i64* inttoptr (i64 6398088 to i64*), align 8
  %.pre5 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f17

block_.L_400f17:                                  ; preds = %block_400f01, %block_.L_400ef7
  %181 = phi i64 [ %164, %block_.L_400ef7 ], [ %179, %block_400f01 ]
  %182 = phi i64 [ %135, %block_.L_400ef7 ], [ %.pre5, %block_400f01 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400ef7 ], [ %call2_400f09, %block_400f01 ]
  %183 = add i64 %182, -24
  %184 = add i64 %181, 4
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = add i32 %186, -3
  %188 = icmp ult i32 %186, 3
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %26, align 1
  %190 = and i32 %187, 255
  %191 = tail call i32 @llvm.ctpop.i32(i32 %190)
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %33, align 1
  %195 = xor i32 %187, %186
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %39, align 1
  %199 = icmp eq i32 %187, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %42, align 1
  %201 = lshr i32 %187, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %45, align 1
  %203 = lshr i32 %186, 31
  %204 = xor i32 %201, %203
  %205 = add nuw nsw i32 %204, %203
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %51, align 1
  %208 = icmp ne i8 %202, 0
  %209 = xor i1 %208, %206
  %210 = or i1 %199, %209
  %.v45 = select i1 %210, i64 28, i64 10
  %211 = add i64 %181, %.v45
  store i64 %211, i64* %3, align 8
  br i1 %210, label %block_.L_400f17.block_.L_400f33_crit_edge, label %block_400f21

block_.L_400f17.block_.L_400f33_crit_edge:        ; preds = %block_.L_400f17
  %.pre42 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  br label %block_.L_400f33

block_400f21:                                     ; preds = %block_.L_400f17
  %RAX.i4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %212 = add i64 %182, -32
  %213 = add i64 %211, 4
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX.i4041, align 8
  %RDI.i4039 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %216 = add i64 %215, 24
  %217 = add i64 %211, 8
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %RDI.i4039, align 8
  %220 = add i64 %211, -2193
  %221 = add i64 %211, 13
  %222 = load i64, i64* %6, align 8
  %223 = add i64 %222, -8
  %224 = inttoptr i64 %223 to i64*
  store i64 %221, i64* %224, align 8
  store i64 %223, i64* %6, align 8
  store i64 %220, i64* %3, align 8
  %call2_400f29 = tail call %struct.Memory* @sub_400690.atof_plt(%struct.State* nonnull %0, i64 %220, %struct.Memory* %MEMORY.1)
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -40
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 5
  store i64 %228, i64* %3, align 8
  %229 = load i64, i64* %59, align 1
  %230 = inttoptr i64 %226 to i64*
  store i64 %229, i64* %230, align 8
  %.pre6 = load i64, i64* %3, align 8
  %.pre7 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f33

block_.L_400f33:                                  ; preds = %block_.L_400f17.block_.L_400f33_crit_edge, %block_400f21
  %RDI.i4032.pre-phi = phi i64* [ %.pre42, %block_.L_400f17.block_.L_400f33_crit_edge ], [ %RDI.i4039, %block_400f21 ]
  %231 = phi i64 [ %182, %block_.L_400f17.block_.L_400f33_crit_edge ], [ %.pre7, %block_400f21 ]
  %232 = phi i64 [ %211, %block_.L_400f17.block_.L_400f33_crit_edge ], [ %.pre6, %block_400f21 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_400f17.block_.L_400f33_crit_edge ], [ %call2_400f29, %block_400f21 ]
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i4028 = getelementptr inbounds %union.anon, %union.anon* %233, i64 0, i32 0
  store i64 4277830, i64* %RCX.i4028, align 8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i4026 = getelementptr inbounds %union.anon, %union.anon* %234, i64 0, i32 0
  %235 = add i64 %232, 2199893
  %236 = add i64 %232, 33
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to double*
  %238 = load double, double* %237, align 8
  %239 = tail call double @llvm.trunc.f64(double %238)
  %240 = tail call double @llvm.fabs.f64(double %239)
  %241 = fcmp ogt double %240, 0x41DFFFFFFFC00000
  %242 = fptosi double %239 to i32
  %243 = zext i32 %242 to i64
  %244 = select i1 %241, i64 2147483648, i64 %243
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i4024 = getelementptr inbounds %union.anon, %union.anon* %245, i64 0, i32 0
  %EDX.i4021 = bitcast %union.anon* %245 to i32*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i4022 = bitcast %union.anon* %246 to i32*
  %247 = getelementptr inbounds %union.anon, %union.anon* %246, i64 0, i32 0
  store i64 6726144, i64* %247, align 8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B.i4019 = bitcast %union.anon* %248 to i8*
  %249 = trunc i64 %244 to i8
  store i8 %249, i8* %R9B.i4019, align 1
  %sext = shl i64 %244, 56
  %250 = ashr exact i64 %sext, 56
  %251 = and i64 %250, 4294967295
  store i64 %251, i64* %RDX.i4024, align 8
  store i64 6734144, i64* %RAX.i4026, align 8
  %EAX.i4011 = bitcast %union.anon* %234 to i32*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  store i64 6734144, i64* %252, align 8
  %253 = add i64 %231, -216
  %254 = add i64 %232, 63
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  store i64 6494144, i64* %255, align 8
  %256 = load i64, i64* %247, align 8
  %257 = load i64, i64* %3, align 8
  store i64 %256, i64* %RDI.i4032.pre-phi, align 8
  %ESI.i4002 = bitcast %union.anon* %73 to i32*
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -220
  %260 = load i32, i32* %ESI.i4002, align 4
  %261 = add i64 %257, 9
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %262, align 4
  %263 = load i64, i64* %252, align 8
  %264 = load i64, i64* %3, align 8
  store i64 %263, i64* %RSI.i3037, align 8
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -232
  %267 = load i64, i64* %RCX.i4028, align 8
  %268 = add i64 %264, 10
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %266 to i64*
  store i64 %267, i64* %269, align 8
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -240
  %272 = load i64, i64* %247, align 8
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 7
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %271 to i64*
  store i64 %272, i64* %275, align 8
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 8244
  %278 = add i64 %276, 5
  %279 = load i64, i64* %6, align 8
  %280 = add i64 %279, -8
  %281 = inttoptr i64 %280 to i64*
  store i64 %278, i64* %281, align 8
  store i64 %280, i64* %6, align 8
  store i64 %277, i64* %3, align 8
  %call2_400f8c = tail call %struct.Memory* @sub_402fc0._Z4fillIPaaEvT_S1_T0_(%struct.State* nonnull %0, i64 %277, %struct.Memory* %MEMORY.2)
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -40
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 5
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %283 to double*
  %287 = load double, double* %286, align 8
  %288 = tail call double @llvm.trunc.f64(double %287)
  %289 = tail call double @llvm.fabs.f64(double %288)
  %290 = fcmp ogt double %289, 0x41DFFFFFFFC00000
  %291 = fptosi double %288 to i32
  %292 = zext i32 %291 to i64
  %293 = select i1 %290, i64 2147483648, i64 %292
  store i64 %293, i64* %RAX.i4026, align 8
  %294 = trunc i64 %293 to i8
  store i8 %294, i8* %R9B.i4019, align 1
  %295 = add i64 %282, -41
  %296 = add i64 %284, 12
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i8*
  store i8 %294, i8* %297, align 1
  %298 = load i64, i64* %RBP.i, align 8
  %299 = add i64 %298, -41
  %300 = load i64, i64* %3, align 8
  %301 = add i64 %300, 4
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %299 to i8*
  %303 = load i8, i8* %302, align 1
  %304 = shl i8 %303, 1
  store i8 %304, i8* %R9B.i4019, align 1
  %305 = icmp ult i8 %304, %303
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %26, align 1
  %307 = zext i8 %304 to i32
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %33, align 1
  %312 = lshr i8 %303, 3
  %313 = and i8 %312, 1
  store i8 %313, i8* %39, align 1
  %314 = icmp eq i8 %304, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %42, align 1
  %316 = lshr i8 %303, 6
  %317 = and i8 %316, 1
  store i8 %317, i8* %45, align 1
  %318 = lshr i8 %303, 7
  %319 = xor i8 %317, %318
  store i8 %319, i8* %51, align 1
  %320 = add i64 %298, -42
  %321 = add i64 %300, 11
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i8*
  store i8 %304, i8* %322, align 1
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -41
  %325 = load i64, i64* %3, align 8
  %326 = add i64 %325, 4
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %324 to i8*
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = add nuw nsw i32 %329, 2
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %332 = and i32 %330, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %33, align 1
  %337 = xor i32 %330, %329
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %341 = trunc i32 %330 to i8
  store i8 %341, i8* %R9B.i4019, align 1
  %342 = add i64 %323, -43
  %343 = add i64 %325, 14
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i8*
  store i8 %341, i8* %344, align 1
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -41
  %347 = load i64, i64* %3, align 8
  %348 = add i64 %347, 4
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %346 to i8*
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i64
  store i64 %351, i64* %RAX.i4026, align 8
  %352 = add i64 %345, -42
  %353 = add i64 %347, 8
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i8*
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i64
  %357 = and i64 %356, 4294967295
  store i64 %357, i64* %RDX.i4024, align 8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i3956 = bitcast %union.anon* %358 to i32*
  %359 = getelementptr inbounds %union.anon, %union.anon* %358, i64 0, i32 0
  %360 = add i64 %345, -43
  %361 = add i64 %347, 13
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i8*
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i64
  %365 = and i64 %364, 4294967295
  store i64 %365, i64* %359, align 8
  %366 = add i64 %345, -244
  %367 = zext i8 %350 to i32
  %368 = add i64 %347, 19
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %366 to i32*
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* %EDX.i4021, align 4
  %371 = zext i32 %370 to i64
  %372 = load i64, i64* %3, align 8
  store i64 %371, i64* %RAX.i4026, align 8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %374 = sext i32 %370 to i64
  %375 = lshr i64 %374, 32
  store i64 %375, i64* %373, align 8
  %376 = load i32, i32* %R11D.i3956, align 4
  %377 = add i64 %372, 6
  store i64 %377, i64* %3, align 8
  %378 = sext i32 %376 to i64
  %379 = shl nuw i64 %375, 32
  %380 = or i64 %379, %371
  %381 = sdiv i64 %380, %378
  %382 = shl i64 %381, 32
  %383 = ashr exact i64 %382, 32
  %384 = icmp eq i64 %381, %383
  br i1 %384, label %387, label %385

; <label>:385:                                    ; preds = %block_.L_400f33
  %386 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %377, %struct.Memory* %call2_400f8c)
  %.pre8 = load i64, i64* %3, align 8
  %.pre9 = load i32, i32* %EAX.i4011, align 4
  br label %routine_idivl__r11d.exit

; <label>:387:                                    ; preds = %block_.L_400f33
  %388 = srem i64 %380, %378
  %389 = and i64 %381, 4294967295
  store i64 %389, i64* %RAX.i4026, align 8
  %390 = and i64 %388, 4294967295
  store i64 %390, i64* %RDX.i4024, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %391 = trunc i64 %381 to i32
  br label %routine_idivl__r11d.exit

routine_idivl__r11d.exit:                         ; preds = %387, %385
  %392 = phi i32 [ %.pre9, %385 ], [ %391, %387 ]
  %393 = phi i64 [ %.pre8, %385 ], [ %377, %387 ]
  %394 = phi %struct.Memory* [ %386, %385 ], [ %call2_400f8c, %387 ]
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -244
  %397 = add i64 %393, 6
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %392, %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RDX.i4024, align 8
  %402 = icmp ult i32 %400, %399
  %403 = icmp ult i32 %400, %392
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %26, align 1
  %406 = and i32 %400, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %33, align 1
  %411 = xor i32 %392, %399
  %412 = xor i32 %411, %400
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %39, align 1
  %416 = icmp eq i32 %400, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %42, align 1
  %418 = lshr i32 %400, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %45, align 1
  %420 = lshr i32 %399, 31
  %421 = lshr i32 %392, 31
  %422 = xor i32 %418, %420
  %423 = xor i32 %418, %421
  %424 = add nuw nsw i32 %422, %423
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %51, align 1
  %427 = trunc i32 %400 to i8
  store i8 %427, i8* %R9B.i4019, align 1
  %428 = add i64 %395, -44
  %429 = add i64 %393, 15
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i8*
  store i8 %427, i8* %430, align 1
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -41
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 4
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %432 to i8*
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i64
  %438 = and i64 %437, 4294967295
  store i64 %438, i64* %RDX.i4024, align 8
  store i64 4276235, i64* %RCX.i4028, align 8
  store i64 8000, i64* %RAX.i4026, align 8
  %439 = add i64 %431, -240
  %440 = add i64 %433, 23
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  %443 = add i64 %431, -248
  %444 = add i64 %433, 31
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  store i32 8000, i32* %445, align 4
  %446 = load i64, i64* %3, align 8
  %447 = add i64 %446, 8195
  %448 = add i64 %446, 5
  %449 = load i64, i64* %6, align 8
  %450 = add i64 %449, -8
  %451 = inttoptr i64 %450 to i64*
  store i64 %448, i64* %451, align 8
  store i64 %450, i64* %6, align 8
  store i64 %447, i64* %3, align 8
  %call2_400ffd = tail call %struct.Memory* @sub_403000._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %447, %struct.Memory* %394)
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -41
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i8*
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i64
  %459 = and i64 %458, 4294967295
  store i64 %459, i64* %RDX.i4024, align 8
  store i64 4276256, i64* %RAX.i4026, align 8
  store i64 4276256, i64* %RCX.i4028, align 8
  %460 = add i64 %452, -240
  %461 = add i64 %454, 18
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RDI.i4032.pre-phi, align 8
  %464 = add i64 %452, -248
  %465 = add i64 %454, 24
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RSI.i3037, align 8
  %469 = add i64 %454, 8366
  %470 = add i64 %454, 29
  %471 = load i64, i64* %6, align 8
  %472 = add i64 %471, -8
  %473 = inttoptr i64 %472 to i64*
  store i64 %470, i64* %473, align 8
  store i64 %472, i64* %6, align 8
  store i64 %469, i64* %3, align 8
  %call2_40101a = tail call %struct.Memory* @sub_4030b0._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %469, %struct.Memory* %call2_400ffd)
  %474 = getelementptr inbounds %union.anon, %union.anon* %248, i64 0, i32 0
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -44
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 5
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i8*
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i64
  %482 = and i64 %481, 4294967295
  store i64 %482, i64* %474, align 8
  %483 = add i64 %475, -43
  %484 = add i64 %477, 10
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i8*
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i64
  %488 = and i64 %487, 4294967295
  store i64 %488, i64* %247, align 8
  %489 = add i64 %475, -42
  %490 = add i64 %477, 14
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i8*
  %492 = load i8, i8* %491, align 1
  %493 = sext i8 %492 to i64
  %494 = and i64 %493, 4294967295
  store i64 %494, i64* %RCX.i4028, align 8
  %495 = add i64 %475, -41
  %496 = add i64 %477, 18
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i8*
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i64
  %500 = and i64 %499, 4294967295
  store i64 %500, i64* %RDX.i4024, align 8
  %501 = load i64, i64* %6, align 8
  store i64 %501, i64* %RDI.i4032.pre-phi, align 8
  %502 = add i64 %477, 28
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  store i64 4276285, i64* %503, align 8
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -240
  %506 = load i64, i64* %3, align 8
  %507 = add i64 %506, 7
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %505 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %RDI.i4032.pre-phi, align 8
  %510 = add i64 %504, -248
  %511 = add i64 %506, 13
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RSI.i3037, align 8
  %515 = add i64 %506, 8501
  %516 = add i64 %506, 18
  %517 = load i64, i64* %6, align 8
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %516, i64* %519, align 8
  store i64 %518, i64* %6, align 8
  store i64 %515, i64* %3, align 8
  %call2_401048 = tail call %struct.Memory* @sub_403170._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %515, %struct.Memory* %call2_40101a)
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -41
  %522 = load i64, i64* %3, align 8
  %523 = add i64 %522, 4
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %521 to i8*
  %525 = load i8, i8* %524, align 1
  %526 = sext i8 %525 to i64
  %527 = and i64 %526, 4294967295
  store i64 %527, i64* %RDX.i4024, align 8
  store i64 4276316, i64* %RAX.i4026, align 8
  store i64 4276316, i64* %RCX.i4028, align 8
  %528 = add i64 %520, -240
  %529 = add i64 %522, 18
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RDI.i4032.pre-phi, align 8
  %532 = add i64 %520, -248
  %533 = add i64 %522, 24
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RSI.i3037, align 8
  %537 = add i64 %522, 8755
  %538 = add i64 %522, 29
  %539 = load i64, i64* %6, align 8
  %540 = add i64 %539, -8
  %541 = inttoptr i64 %540 to i64*
  store i64 %538, i64* %541, align 8
  store i64 %540, i64* %6, align 8
  store i64 %537, i64* %3, align 8
  %call2_401065 = tail call %struct.Memory* @sub_403280._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %537, %struct.Memory* %call2_401048)
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -44
  %544 = load i64, i64* %3, align 8
  %545 = add i64 %544, 5
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %543 to i8*
  %547 = load i8, i8* %546, align 1
  %548 = sext i8 %547 to i64
  %549 = and i64 %548, 4294967295
  store i64 %549, i64* %474, align 8
  %550 = add i64 %542, -43
  %551 = add i64 %544, 10
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i8*
  %553 = load i8, i8* %552, align 1
  %554 = sext i8 %553 to i64
  %555 = and i64 %554, 4294967295
  store i64 %555, i64* %247, align 8
  %556 = add i64 %542, -42
  %557 = add i64 %544, 14
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i8*
  %559 = load i8, i8* %558, align 1
  %560 = sext i8 %559 to i64
  %561 = and i64 %560, 4294967295
  store i64 %561, i64* %RCX.i4028, align 8
  %562 = add i64 %542, -41
  %563 = add i64 %544, 18
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i8*
  %565 = load i8, i8* %564, align 1
  %566 = sext i8 %565 to i64
  %567 = and i64 %566, 4294967295
  store i64 %567, i64* %RDX.i4024, align 8
  %568 = load i64, i64* %6, align 8
  store i64 %568, i64* %RDI.i4032.pre-phi, align 8
  %569 = add i64 %544, 28
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  store i64 4276342, i64* %570, align 8
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -240
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 7
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RDI.i4032.pre-phi, align 8
  %577 = add i64 %571, -248
  %578 = add i64 %573, 13
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RSI.i3037, align 8
  %582 = add i64 %573, 8874
  %583 = add i64 %573, 18
  %584 = load i64, i64* %6, align 8
  %585 = add i64 %584, -8
  %586 = inttoptr i64 %585 to i64*
  store i64 %583, i64* %586, align 8
  store i64 %585, i64* %6, align 8
  store i64 %582, i64* %3, align 8
  %call2_401093 = tail call %struct.Memory* @sub_403330._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %582, %struct.Memory* %call2_401065)
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -41
  %589 = load i64, i64* %3, align 8
  %590 = add i64 %589, 4
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %588 to i8*
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i64
  %594 = and i64 %593, 4294967295
  store i64 %594, i64* %RDX.i4024, align 8
  store i64 4276378, i64* %RAX.i4026, align 8
  store i64 4276378, i64* %RCX.i4028, align 8
  %595 = add i64 %587, -240
  %596 = add i64 %589, 18
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i64*
  %598 = load i64, i64* %597, align 8
  store i64 %598, i64* %RDI.i4032.pre-phi, align 8
  %599 = add i64 %587, -248
  %600 = add i64 %589, 24
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RSI.i3037, align 8
  %604 = add i64 %589, 9128
  %605 = add i64 %589, 29
  %606 = load i64, i64* %6, align 8
  %607 = add i64 %606, -8
  %608 = inttoptr i64 %607 to i64*
  store i64 %605, i64* %608, align 8
  store i64 %607, i64* %6, align 8
  store i64 %604, i64* %3, align 8
  %call2_4010b0 = tail call %struct.Memory* @sub_403440._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %604, %struct.Memory* %call2_401093)
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -44
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 5
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i8*
  %614 = load i8, i8* %613, align 1
  %615 = sext i8 %614 to i64
  %616 = and i64 %615, 4294967295
  store i64 %616, i64* %474, align 8
  %617 = add i64 %609, -43
  %618 = add i64 %611, 10
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i8*
  %620 = load i8, i8* %619, align 1
  %621 = sext i8 %620 to i64
  %622 = and i64 %621, 4294967295
  store i64 %622, i64* %247, align 8
  %623 = add i64 %609, -42
  %624 = add i64 %611, 14
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i8*
  %626 = load i8, i8* %625, align 1
  %627 = sext i8 %626 to i64
  %628 = and i64 %627, 4294967295
  store i64 %628, i64* %RCX.i4028, align 8
  %629 = add i64 %609, -41
  %630 = add i64 %611, 18
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i8*
  %632 = load i8, i8* %631, align 1
  %633 = sext i8 %632 to i64
  %634 = and i64 %633, 4294967295
  store i64 %634, i64* %RDX.i4024, align 8
  %635 = load i64, i64* %6, align 8
  store i64 %635, i64* %RDI.i4032.pre-phi, align 8
  %636 = add i64 %611, 28
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  store i64 4276404, i64* %637, align 8
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -240
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 7
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RDI.i4032.pre-phi, align 8
  %644 = add i64 %638, -248
  %645 = add i64 %640, 13
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RSI.i3037, align 8
  %649 = add i64 %640, 9247
  %650 = add i64 %640, 18
  %651 = load i64, i64* %6, align 8
  %652 = add i64 %651, -8
  %653 = inttoptr i64 %652 to i64*
  store i64 %650, i64* %653, align 8
  store i64 %652, i64* %6, align 8
  store i64 %649, i64* %3, align 8
  %call2_4010de = tail call %struct.Memory* @sub_4034f0._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %649, %struct.Memory* %call2_4010b0)
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -44
  %656 = load i64, i64* %3, align 8
  %657 = add i64 %656, 5
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %655 to i8*
  %659 = load i8, i8* %658, align 1
  %660 = sext i8 %659 to i64
  %661 = and i64 %660, 4294967295
  store i64 %661, i64* %474, align 8
  %662 = add i64 %654, -43
  %663 = add i64 %656, 10
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i8*
  %665 = load i8, i8* %664, align 1
  %666 = sext i8 %665 to i64
  %667 = and i64 %666, 4294967295
  store i64 %667, i64* %247, align 8
  %668 = add i64 %654, -42
  %669 = add i64 %656, 14
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i8*
  %671 = load i8, i8* %670, align 1
  %672 = sext i8 %671 to i64
  %673 = and i64 %672, 4294967295
  store i64 %673, i64* %RCX.i4028, align 8
  %674 = add i64 %654, -41
  %675 = add i64 %656, 18
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i8*
  %677 = load i8, i8* %676, align 1
  %678 = sext i8 %677 to i64
  %679 = and i64 %678, 4294967295
  store i64 %679, i64* %RDX.i4024, align 8
  %680 = load i64, i64* %6, align 8
  store i64 %680, i64* %RDI.i4032.pre-phi, align 8
  %681 = add i64 %656, 28
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  store i64 4276441, i64* %682, align 8
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -240
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 7
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RDI.i4032.pre-phi, align 8
  %689 = add i64 %683, -248
  %690 = add i64 %685, 13
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RSI.i3037, align 8
  %694 = add i64 %685, 9473
  %695 = add i64 %685, 18
  %696 = load i64, i64* %6, align 8
  %697 = add i64 %696, -8
  %698 = inttoptr i64 %697 to i64*
  store i64 %695, i64* %698, align 8
  store i64 %697, i64* %6, align 8
  store i64 %694, i64* %3, align 8
  %call2_40110c = tail call %struct.Memory* @sub_403600._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %694, %struct.Memory* %call2_4010de)
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -41
  %701 = load i64, i64* %3, align 8
  %702 = add i64 %701, 4
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %700 to i8*
  %704 = load i8, i8* %703, align 1
  %705 = sext i8 %704 to i64
  %706 = and i64 %705, 4294967295
  store i64 %706, i64* %RDX.i4024, align 8
  store i64 4276479, i64* %RAX.i4026, align 8
  store i64 4276479, i64* %RCX.i4028, align 8
  %707 = add i64 %699, -240
  %708 = add i64 %701, 18
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RDI.i4032.pre-phi, align 8
  %711 = add i64 %699, -248
  %712 = add i64 %701, 24
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RSI.i3037, align 8
  %716 = add i64 %701, 9727
  %717 = add i64 %701, 29
  %718 = load i64, i64* %6, align 8
  %719 = add i64 %718, -8
  %720 = inttoptr i64 %719 to i64*
  store i64 %717, i64* %720, align 8
  store i64 %719, i64* %6, align 8
  store i64 %716, i64* %3, align 8
  %call2_401129 = tail call %struct.Memory* @sub_403710._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %716, %struct.Memory* %call2_40110c)
  %721 = load i64, i64* %RBP.i, align 8
  %722 = add i64 %721, -44
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, 5
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %722 to i8*
  %726 = load i8, i8* %725, align 1
  %727 = sext i8 %726 to i64
  %728 = and i64 %727, 4294967295
  store i64 %728, i64* %474, align 8
  %729 = add i64 %721, -43
  %730 = add i64 %723, 10
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i8*
  %732 = load i8, i8* %731, align 1
  %733 = sext i8 %732 to i64
  %734 = and i64 %733, 4294967295
  store i64 %734, i64* %247, align 8
  %735 = add i64 %721, -42
  %736 = add i64 %723, 14
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i8*
  %738 = load i8, i8* %737, align 1
  %739 = sext i8 %738 to i64
  %740 = and i64 %739, 4294967295
  store i64 %740, i64* %RCX.i4028, align 8
  %741 = add i64 %721, -41
  %742 = add i64 %723, 18
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i8*
  %744 = load i8, i8* %743, align 1
  %745 = sext i8 %744 to i64
  %746 = and i64 %745, 4294967295
  store i64 %746, i64* %RDX.i4024, align 8
  %747 = load i64, i64* %6, align 8
  store i64 %747, i64* %RDI.i4032.pre-phi, align 8
  %748 = add i64 %723, 28
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i64*
  store i64 4276503, i64* %749, align 8
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -240
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, 7
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %751 to i64*
  %755 = load i64, i64* %754, align 8
  store i64 %755, i64* %RDI.i4032.pre-phi, align 8
  %756 = add i64 %750, -248
  %757 = add i64 %752, 13
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RSI.i3037, align 8
  %761 = add i64 %752, 9846
  %762 = add i64 %752, 18
  %763 = load i64, i64* %6, align 8
  %764 = add i64 %763, -8
  %765 = inttoptr i64 %764 to i64*
  store i64 %762, i64* %765, align 8
  store i64 %764, i64* %6, align 8
  store i64 %761, i64* %3, align 8
  %call2_401157 = tail call %struct.Memory* @sub_4037c0._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %761, %struct.Memory* %call2_401129)
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -44
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 5
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %767 to i8*
  %771 = load i8, i8* %770, align 1
  %772 = sext i8 %771 to i64
  %773 = and i64 %772, 4294967295
  store i64 %773, i64* %474, align 8
  %774 = add i64 %766, -43
  %775 = add i64 %768, 10
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i8*
  %777 = load i8, i8* %776, align 1
  %778 = sext i8 %777 to i64
  %779 = and i64 %778, 4294967295
  store i64 %779, i64* %247, align 8
  %780 = add i64 %766, -42
  %781 = add i64 %768, 14
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i8*
  %783 = load i8, i8* %782, align 1
  %784 = sext i8 %783 to i64
  %785 = and i64 %784, 4294967295
  store i64 %785, i64* %RCX.i4028, align 8
  %786 = add i64 %766, -41
  %787 = add i64 %768, 18
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i8*
  %789 = load i8, i8* %788, align 1
  %790 = sext i8 %789 to i64
  %791 = and i64 %790, 4294967295
  store i64 %791, i64* %RDX.i4024, align 8
  %792 = load i64, i64* %6, align 8
  store i64 %792, i64* %RDI.i4032.pre-phi, align 8
  %793 = add i64 %768, 28
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i64*
  store i64 4276537, i64* %794, align 8
  %795 = load i64, i64* %RBP.i, align 8
  %796 = add i64 %795, -240
  %797 = load i64, i64* %3, align 8
  %798 = add i64 %797, 7
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %796 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RDI.i4032.pre-phi, align 8
  %801 = add i64 %795, -248
  %802 = add i64 %797, 13
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RSI.i3037, align 8
  %806 = add i64 %797, 10072
  %807 = add i64 %797, 18
  %808 = load i64, i64* %6, align 8
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %807, i64* %810, align 8
  store i64 %809, i64* %6, align 8
  store i64 %806, i64* %3, align 8
  %call2_401185 = tail call %struct.Memory* @sub_4038d0._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %806, %struct.Memory* %call2_401157)
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -44
  %813 = load i64, i64* %3, align 8
  %814 = add i64 %813, 5
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %812 to i8*
  %816 = load i8, i8* %815, align 1
  %817 = sext i8 %816 to i64
  %818 = and i64 %817, 4294967295
  store i64 %818, i64* %474, align 8
  %819 = add i64 %811, -43
  %820 = add i64 %813, 10
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i8*
  %822 = load i8, i8* %821, align 1
  %823 = sext i8 %822 to i64
  %824 = and i64 %823, 4294967295
  store i64 %824, i64* %247, align 8
  %825 = add i64 %811, -42
  %826 = add i64 %813, 14
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i8*
  %828 = load i8, i8* %827, align 1
  %829 = sext i8 %828 to i64
  %830 = and i64 %829, 4294967295
  store i64 %830, i64* %RCX.i4028, align 8
  %831 = add i64 %811, -41
  %832 = add i64 %813, 18
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i8*
  %834 = load i8, i8* %833, align 1
  %835 = sext i8 %834 to i64
  %836 = and i64 %835, 4294967295
  store i64 %836, i64* %RDX.i4024, align 8
  %837 = load i64, i64* %6, align 8
  store i64 %837, i64* %RDI.i4032.pre-phi, align 8
  %838 = add i64 %813, 28
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  store i64 4276572, i64* %839, align 8
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -240
  %842 = load i64, i64* %3, align 8
  %843 = add i64 %842, 7
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %841 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RDI.i4032.pre-phi, align 8
  %846 = add i64 %840, -248
  %847 = add i64 %842, 13
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RSI.i3037, align 8
  %851 = add i64 %842, 10298
  %852 = add i64 %842, 18
  %853 = load i64, i64* %6, align 8
  %854 = add i64 %853, -8
  %855 = inttoptr i64 %854 to i64*
  store i64 %852, i64* %855, align 8
  store i64 %854, i64* %6, align 8
  store i64 %851, i64* %3, align 8
  %call2_4011b3 = tail call %struct.Memory* @sub_4039e0._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %851, %struct.Memory* %call2_401185)
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -41
  %858 = load i64, i64* %3, align 8
  %859 = add i64 %858, 4
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %857 to i8*
  %861 = load i8, i8* %860, align 1
  %862 = sext i8 %861 to i64
  %863 = and i64 %862, 4294967295
  store i64 %863, i64* %RDX.i4024, align 8
  store i64 4276604, i64* %RAX.i4026, align 8
  store i64 4276604, i64* %RCX.i4028, align 8
  %864 = add i64 %856, -240
  %865 = add i64 %858, 18
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RDI.i4032.pre-phi, align 8
  %868 = add i64 %856, -248
  %869 = add i64 %858, 24
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RSI.i3037, align 8
  %873 = add i64 %858, 10552
  %874 = add i64 %858, 29
  %875 = load i64, i64* %6, align 8
  %876 = add i64 %875, -8
  %877 = inttoptr i64 %876 to i64*
  store i64 %874, i64* %877, align 8
  store i64 %876, i64* %6, align 8
  store i64 %873, i64* %3, align 8
  %call2_4011d0 = tail call %struct.Memory* @sub_403af0._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %873, %struct.Memory* %call2_4011b3)
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -44
  %880 = load i64, i64* %3, align 8
  %881 = add i64 %880, 5
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %879 to i8*
  %883 = load i8, i8* %882, align 1
  %884 = sext i8 %883 to i64
  %885 = and i64 %884, 4294967295
  store i64 %885, i64* %474, align 8
  %886 = add i64 %878, -43
  %887 = add i64 %880, 10
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i8*
  %889 = load i8, i8* %888, align 1
  %890 = sext i8 %889 to i64
  %891 = and i64 %890, 4294967295
  store i64 %891, i64* %247, align 8
  %892 = add i64 %878, -42
  %893 = add i64 %880, 14
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i8*
  %895 = load i8, i8* %894, align 1
  %896 = sext i8 %895 to i64
  %897 = and i64 %896, 4294967295
  store i64 %897, i64* %RCX.i4028, align 8
  %898 = add i64 %878, -41
  %899 = add i64 %880, 18
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i8*
  %901 = load i8, i8* %900, align 1
  %902 = sext i8 %901 to i64
  %903 = and i64 %902, 4294967295
  store i64 %903, i64* %RDX.i4024, align 8
  %904 = load i64, i64* %6, align 8
  store i64 %904, i64* %RDI.i4032.pre-phi, align 8
  %905 = add i64 %880, 28
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  store i64 4276625, i64* %906, align 8
  %907 = load i64, i64* %RBP.i, align 8
  %908 = add i64 %907, -240
  %909 = load i64, i64* %3, align 8
  %910 = add i64 %909, 7
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %908 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %RDI.i4032.pre-phi, align 8
  %913 = add i64 %907, -248
  %914 = add i64 %909, 13
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RSI.i3037, align 8
  %918 = add i64 %909, 10671
  %919 = add i64 %909, 18
  %920 = load i64, i64* %6, align 8
  %921 = add i64 %920, -8
  %922 = inttoptr i64 %921 to i64*
  store i64 %919, i64* %922, align 8
  store i64 %921, i64* %6, align 8
  store i64 %918, i64* %3, align 8
  %call2_4011fe = tail call %struct.Memory* @sub_403ba0._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %918, %struct.Memory* %call2_4011d0)
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -41
  %925 = load i64, i64* %3, align 8
  %926 = add i64 %925, 4
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %924 to i8*
  %928 = load i8, i8* %927, align 1
  %929 = sext i8 %928 to i64
  %930 = and i64 %929, 4294967295
  store i64 %930, i64* %RDX.i4024, align 8
  store i64 4276655, i64* %RAX.i4026, align 8
  store i64 4276655, i64* %RCX.i4028, align 8
  %931 = add i64 %923, -240
  %932 = add i64 %925, 18
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RDI.i4032.pre-phi, align 8
  %935 = add i64 %923, -248
  %936 = add i64 %925, 24
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RSI.i3037, align 8
  %940 = add i64 %925, 10925
  %941 = add i64 %925, 29
  %942 = load i64, i64* %6, align 8
  %943 = add i64 %942, -8
  %944 = inttoptr i64 %943 to i64*
  store i64 %941, i64* %944, align 8
  store i64 %943, i64* %6, align 8
  store i64 %940, i64* %3, align 8
  %call2_40121b = tail call %struct.Memory* @sub_403cb0._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %940, %struct.Memory* %call2_4011fe)
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -44
  %947 = load i64, i64* %3, align 8
  %948 = add i64 %947, 5
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %946 to i8*
  %950 = load i8, i8* %949, align 1
  %951 = sext i8 %950 to i64
  %952 = and i64 %951, 4294967295
  store i64 %952, i64* %474, align 8
  %953 = add i64 %945, -43
  %954 = add i64 %947, 10
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i8*
  %956 = load i8, i8* %955, align 1
  %957 = sext i8 %956 to i64
  %958 = and i64 %957, 4294967295
  store i64 %958, i64* %247, align 8
  %959 = add i64 %945, -42
  %960 = add i64 %947, 14
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i8*
  %962 = load i8, i8* %961, align 1
  %963 = sext i8 %962 to i64
  %964 = and i64 %963, 4294967295
  store i64 %964, i64* %RCX.i4028, align 8
  %965 = add i64 %945, -41
  %966 = add i64 %947, 18
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i8*
  %968 = load i8, i8* %967, align 1
  %969 = sext i8 %968 to i64
  %970 = and i64 %969, 4294967295
  store i64 %970, i64* %RDX.i4024, align 8
  %971 = load i64, i64* %6, align 8
  store i64 %971, i64* %RDI.i4032.pre-phi, align 8
  %972 = add i64 %947, 28
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  store i64 4276675, i64* %973, align 8
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -240
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, 7
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %975 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %RDI.i4032.pre-phi, align 8
  %980 = add i64 %974, -248
  %981 = add i64 %976, 13
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RSI.i3037, align 8
  %985 = add i64 %976, 11044
  %986 = add i64 %976, 18
  %987 = load i64, i64* %6, align 8
  %988 = add i64 %987, -8
  %989 = inttoptr i64 %988 to i64*
  store i64 %986, i64* %989, align 8
  store i64 %988, i64* %6, align 8
  store i64 %985, i64* %3, align 8
  %call2_401249 = tail call %struct.Memory* @sub_403d60._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %985, %struct.Memory* %call2_40121b)
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -41
  %992 = load i64, i64* %3, align 8
  %993 = add i64 %992, 4
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %991 to i8*
  %995 = load i8, i8* %994, align 1
  %996 = sext i8 %995 to i64
  %997 = and i64 %996, 4294967295
  store i64 %997, i64* %RDX.i4024, align 8
  store i64 4276704, i64* %RAX.i4026, align 8
  store i64 4276704, i64* %RCX.i4028, align 8
  %998 = add i64 %990, -240
  %999 = add i64 %992, 18
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %RDI.i4032.pre-phi, align 8
  %1002 = add i64 %990, -248
  %1003 = add i64 %992, 24
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RSI.i3037, align 8
  %1007 = add i64 %992, 11298
  %1008 = add i64 %992, 29
  %1009 = load i64, i64* %6, align 8
  %1010 = add i64 %1009, -8
  %1011 = inttoptr i64 %1010 to i64*
  store i64 %1008, i64* %1011, align 8
  store i64 %1010, i64* %6, align 8
  store i64 %1007, i64* %3, align 8
  %call2_401266 = tail call %struct.Memory* @sub_403e70._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1007, %struct.Memory* %call2_401249)
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -44
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, 5
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1013 to i8*
  %1017 = load i8, i8* %1016, align 1
  %1018 = sext i8 %1017 to i64
  %1019 = and i64 %1018, 4294967295
  store i64 %1019, i64* %474, align 8
  %1020 = add i64 %1012, -43
  %1021 = add i64 %1014, 10
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i8*
  %1023 = load i8, i8* %1022, align 1
  %1024 = sext i8 %1023 to i64
  %1025 = and i64 %1024, 4294967295
  store i64 %1025, i64* %247, align 8
  %1026 = add i64 %1012, -42
  %1027 = add i64 %1014, 14
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i8*
  %1029 = load i8, i8* %1028, align 1
  %1030 = sext i8 %1029 to i64
  %1031 = and i64 %1030, 4294967295
  store i64 %1031, i64* %RCX.i4028, align 8
  %1032 = add i64 %1012, -41
  %1033 = add i64 %1014, 18
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i8*
  %1035 = load i8, i8* %1034, align 1
  %1036 = sext i8 %1035 to i64
  %1037 = and i64 %1036, 4294967295
  store i64 %1037, i64* %RDX.i4024, align 8
  %1038 = load i64, i64* %6, align 8
  store i64 %1038, i64* %RDI.i4032.pre-phi, align 8
  %1039 = add i64 %1014, 28
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  store i64 4276725, i64* %1040, align 8
  %1041 = load i64, i64* %RBP.i, align 8
  %1042 = add i64 %1041, -240
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1042 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RDI.i4032.pre-phi, align 8
  %1047 = add i64 %1041, -248
  %1048 = add i64 %1043, 13
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RSI.i3037, align 8
  %1052 = add i64 %1043, 11417
  %1053 = add i64 %1043, 18
  %1054 = load i64, i64* %6, align 8
  %1055 = add i64 %1054, -8
  %1056 = inttoptr i64 %1055 to i64*
  store i64 %1053, i64* %1056, align 8
  store i64 %1055, i64* %6, align 8
  store i64 %1052, i64* %3, align 8
  %call2_401294 = tail call %struct.Memory* @sub_403f20._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1052, %struct.Memory* %call2_401266)
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 2199023
  %1059 = add i64 %1057, 8
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to double*
  %1061 = load double, double* %1060, align 8
  %1062 = tail call double @llvm.trunc.f64(double %1061)
  %1063 = tail call double @llvm.fabs.f64(double %1062)
  %1064 = fcmp ogt double %1063, 0x41DFFFFFFFC00000
  %1065 = fptosi double %1062 to i32
  %1066 = zext i32 %1065 to i64
  %1067 = select i1 %1064, i64 2147483648, i64 %1066
  store i64 6718144, i64* %RCX.i4028, align 8
  %ECX.i3562 = bitcast %union.anon* %233 to i32*
  store i64 6718144, i64* %RDI.i4032.pre-phi, align 8
  %BL.i3560 = bitcast %union.anon* %16 to i8*
  %1068 = trunc i64 %1067 to i8
  store i8 %1068, i8* %BL.i3560, align 1
  %1069 = and i64 %1067, 255
  store i64 %1069, i64* %RDX.i4024, align 8
  store i64 6726144, i64* %RAX.i4026, align 8
  store i64 6726144, i64* %RSI.i3037, align 8
  %1070 = load i64, i64* %RBP.i, align 8
  %1071 = add i64 %1070, -256
  %1072 = add i64 %1057, 34
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i64*
  store i64 6718144, i64* %1073, align 8
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 11637
  %1076 = add i64 %1074, 5
  %1077 = load i64, i64* %6, align 8
  %1078 = add i64 %1077, -8
  %1079 = inttoptr i64 %1078 to i64*
  store i64 %1076, i64* %1079, align 8
  store i64 %1078, i64* %6, align 8
  store i64 %1075, i64* %3, align 8
  %call2_4012bb = tail call %struct.Memory* @sub_404030._Z4fillIPhhEvT_S1_T0_(%struct.State* nonnull %0, i64 %1075, %struct.Memory* %call2_401294)
  %1080 = load i64, i64* %RBP.i, align 8
  %1081 = add i64 %1080, -40
  %1082 = load i64, i64* %3, align 8
  %1083 = add i64 %1082, 5
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1081 to double*
  %1085 = load double, double* %1084, align 8
  %1086 = tail call double @llvm.trunc.f64(double %1085)
  %1087 = tail call double @llvm.fabs.f64(double %1086)
  %1088 = fcmp ogt double %1087, 0x41DFFFFFFFC00000
  %1089 = fptosi double %1086 to i32
  %1090 = zext i32 %1089 to i64
  %1091 = select i1 %1088, i64 2147483648, i64 %1090
  store i64 %1091, i64* %RAX.i4026, align 8
  %1092 = trunc i64 %1091 to i8
  store i8 %1092, i8* %BL.i3560, align 1
  %1093 = add i64 %1080, -45
  %1094 = add i64 %1082, 10
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i8*
  store i8 %1092, i8* %1095, align 1
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -45
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 3
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i8*
  %1101 = load i8, i8* %1100, align 1
  %1102 = shl i8 %1101, 1
  store i8 %1102, i8* %BL.i3560, align 1
  %1103 = icmp ult i8 %1102, %1101
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %26, align 1
  %1105 = zext i8 %1102 to i32
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %33, align 1
  %1110 = lshr i8 %1101, 3
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %39, align 1
  %1112 = icmp eq i8 %1102, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %42, align 1
  %1114 = lshr i8 %1101, 6
  %1115 = and i8 %1114, 1
  store i8 %1115, i8* %45, align 1
  %1116 = lshr i8 %1101, 7
  %1117 = xor i8 %1115, %1116
  store i8 %1117, i8* %51, align 1
  %1118 = add i64 %1096, -46
  %1119 = add i64 %1098, 8
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i8*
  store i8 %1102, i8* %1120, align 1
  %1121 = load i64, i64* %RBP.i, align 8
  %1122 = add i64 %1121, -45
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1122 to i8*
  %1126 = load i8, i8* %1125, align 1
  %1127 = zext i8 %1126 to i32
  %1128 = add nuw nsw i32 %1127, 2
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %1130 = and i32 %1128, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %33, align 1
  %1135 = xor i32 %1128, %1127
  %1136 = lshr i32 %1135, 4
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  store i8 %1138, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1139 = trunc i32 %1128 to i8
  store i8 %1139, i8* %BL.i3560, align 1
  %1140 = add i64 %1121, -47
  %1141 = add i64 %1123, 12
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i8*
  store i8 %1139, i8* %1142, align 1
  %1143 = load i64, i64* %RBP.i, align 8
  %1144 = add i64 %1143, -45
  %1145 = load i64, i64* %3, align 8
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1144 to i8*
  %1148 = load i8, i8* %1147, align 1
  %1149 = zext i8 %1148 to i64
  store i64 %1149, i64* %RAX.i4026, align 8
  %1150 = add i64 %1143, -46
  %1151 = add i64 %1145, 8
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i8*
  %1153 = load i8, i8* %1152, align 1
  %1154 = zext i8 %1153 to i64
  store i64 %1154, i64* %RCX.i4028, align 8
  %1155 = add i64 %1143, -47
  %1156 = add i64 %1145, 12
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i8*
  %1158 = load i8, i8* %1157, align 1
  %1159 = zext i8 %1158 to i64
  store i64 %1159, i64* %RDX.i4024, align 8
  store i64 0, i64* %247, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %1160 = add i64 %1143, -260
  %1161 = zext i8 %1148 to i32
  %1162 = add i64 %1145, 21
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1160 to i32*
  store i32 %1161, i32* %1163, align 4
  %1164 = load i32, i32* %ECX.i3562, align 4
  %1165 = zext i32 %1164 to i64
  %1166 = load i64, i64* %3, align 8
  store i64 %1165, i64* %RAX.i4026, align 8
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -264
  %1169 = load i32, i32* %EDX.i4021, align 4
  %1170 = add i64 %1166, 8
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1168 to i32*
  store i32 %1169, i32* %1171, align 4
  %1172 = load i32, i32* %R8D.i4022, align 4
  %1173 = zext i32 %1172 to i64
  %1174 = load i64, i64* %3, align 8
  store i64 %1173, i64* %RDX.i4024, align 8
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -264
  %1177 = add i64 %1174, 9
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RCX.i4028, align 8
  %1181 = add i64 %1174, 11
  store i64 %1181, i64* %3, align 8
  %1182 = load i32, i32* %EAX.i4011, align 8
  %1183 = zext i32 %1182 to i64
  %1184 = shl nuw i64 %1173, 32
  %1185 = or i64 %1184, %1183
  %1186 = udiv i64 %1185, %1180
  %1187 = and i64 %1186, 4294967295
  %1188 = icmp eq i64 %1186, %1187
  br i1 %1188, label %1191, label %1189

; <label>:1189:                                   ; preds = %routine_idivl__r11d.exit
  %1190 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1181, %struct.Memory* %call2_4012bb)
  %.pre10 = load i64, i64* %RBP.i, align 8
  %.pre11 = load i64, i64* %3, align 8
  %.pre12 = load i32, i32* %EAX.i4011, align 4
  br label %routine_divl__ecx.exit

; <label>:1191:                                   ; preds = %routine_idivl__r11d.exit
  %1192 = urem i64 %1185, %1180
  store i64 %1186, i64* %RAX.i4026, align 8
  store i64 %1192, i64* %RDX.i4024, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1193 = trunc i64 %1186 to i32
  br label %routine_divl__ecx.exit

routine_divl__ecx.exit:                           ; preds = %1191, %1189
  %1194 = phi i32 [ %.pre12, %1189 ], [ %1193, %1191 ]
  %1195 = phi i64 [ %.pre11, %1189 ], [ %1181, %1191 ]
  %1196 = phi i64 [ %.pre10, %1189 ], [ %1175, %1191 ]
  %1197 = phi %struct.Memory* [ %1190, %1189 ], [ %call2_4012bb, %1191 ]
  %1198 = add i64 %1196, -260
  %1199 = add i64 %1195, 6
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = add i32 %1194, %1201
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RDX.i4024, align 8
  %1204 = icmp ult i32 %1202, %1201
  %1205 = icmp ult i32 %1202, %1194
  %1206 = or i1 %1204, %1205
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %26, align 1
  %1208 = and i32 %1202, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %33, align 1
  %1213 = xor i32 %1194, %1201
  %1214 = xor i32 %1213, %1202
  %1215 = lshr i32 %1214, 4
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  store i8 %1217, i8* %39, align 1
  %1218 = icmp eq i32 %1202, 0
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %42, align 1
  %1220 = lshr i32 %1202, 31
  %1221 = trunc i32 %1220 to i8
  store i8 %1221, i8* %45, align 1
  %1222 = lshr i32 %1201, 31
  %1223 = lshr i32 %1194, 31
  %1224 = xor i32 %1220, %1222
  %1225 = xor i32 %1220, %1223
  %1226 = add nuw nsw i32 %1224, %1225
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %51, align 1
  %1229 = trunc i32 %1202 to i8
  store i8 %1229, i8* %BL.i3560, align 1
  %1230 = add i64 %1196, -48
  %1231 = add i64 %1195, 13
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i8*
  store i8 %1229, i8* %1232, align 1
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -45
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1234 to i8*
  %1238 = load i8, i8* %1237, align 1
  %1239 = zext i8 %1238 to i64
  store i64 %1239, i64* %RDX.i4024, align 8
  store i64 4276234, i64* %RAX.i4026, align 8
  store i64 4276234, i64* %RCX.i4028, align 8
  %1240 = add i64 %1233, -256
  %1241 = add i64 %1235, 18
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RDI.i4032.pre-phi, align 8
  %1244 = add i64 %1233, -248
  %1245 = add i64 %1235, 24
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RSI.i3037, align 8
  %1249 = add i64 %1233, -268
  %1250 = load i32, i32* %R8D.i4022, align 4
  %1251 = add i64 %1235, 31
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1249 to i32*
  store i32 %1250, i32* %1252, align 4
  %1253 = load i64, i64* %3, align 8
  %1254 = add i64 %1253, 11582
  %1255 = add i64 %1253, 5
  %1256 = load i64, i64* %6, align 8
  %1257 = add i64 %1256, -8
  %1258 = inttoptr i64 %1257 to i64*
  store i64 %1255, i64* %1258, align 8
  store i64 %1257, i64* %6, align 8
  store i64 %1254, i64* %3, align 8
  %call2_401332 = tail call %struct.Memory* @sub_404070._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1254, %struct.Memory* %1197)
  %1259 = load i64, i64* %RBP.i, align 8
  %1260 = add i64 %1259, -45
  %1261 = load i64, i64* %3, align 8
  %1262 = add i64 %1261, 4
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1260 to i8*
  %1264 = load i8, i8* %1263, align 1
  %1265 = zext i8 %1264 to i64
  store i64 %1265, i64* %RDX.i4024, align 8
  store i64 4276255, i64* %RAX.i4026, align 8
  store i64 4276255, i64* %RCX.i4028, align 8
  %1266 = add i64 %1259, -256
  %1267 = add i64 %1261, 18
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RDI.i4032.pre-phi, align 8
  %1270 = add i64 %1259, -248
  %1271 = add i64 %1261, 24
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  %1273 = load i32, i32* %1272, align 4
  %1274 = zext i32 %1273 to i64
  store i64 %1274, i64* %RSI.i3037, align 8
  %1275 = add i64 %1261, 11753
  %1276 = add i64 %1261, 29
  %1277 = load i64, i64* %6, align 8
  %1278 = add i64 %1277, -8
  %1279 = inttoptr i64 %1278 to i64*
  store i64 %1276, i64* %1279, align 8
  store i64 %1278, i64* %6, align 8
  store i64 %1275, i64* %3, align 8
  %call2_40134f = tail call %struct.Memory* @sub_404120._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1275, %struct.Memory* %call2_401332)
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -48
  %1282 = load i64, i64* %3, align 8
  %1283 = add i64 %1282, 5
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1281 to i8*
  %1285 = load i8, i8* %1284, align 1
  %1286 = zext i8 %1285 to i64
  store i64 %1286, i64* %474, align 8
  %1287 = add i64 %1280, -47
  %1288 = add i64 %1282, 10
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i8*
  %1290 = load i8, i8* %1289, align 1
  %1291 = zext i8 %1290 to i64
  store i64 %1291, i64* %247, align 8
  %1292 = add i64 %1280, -46
  %1293 = add i64 %1282, 14
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i8*
  %1295 = load i8, i8* %1294, align 1
  %1296 = zext i8 %1295 to i64
  store i64 %1296, i64* %RCX.i4028, align 8
  %1297 = add i64 %1280, -45
  %1298 = add i64 %1282, 18
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i8*
  %1300 = load i8, i8* %1299, align 1
  %1301 = zext i8 %1300 to i64
  store i64 %1301, i64* %RDX.i4024, align 8
  %1302 = load i64, i64* %6, align 8
  store i64 %1302, i64* %RDI.i4032.pre-phi, align 8
  %1303 = add i64 %1282, 28
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i64*
  store i64 4276284, i64* %1304, align 8
  %1305 = load i64, i64* %RBP.i, align 8
  %1306 = add i64 %1305, -256
  %1307 = load i64, i64* %3, align 8
  %1308 = add i64 %1307, 7
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1306 to i64*
  %1310 = load i64, i64* %1309, align 8
  store i64 %1310, i64* %RDI.i4032.pre-phi, align 8
  %1311 = add i64 %1305, -248
  %1312 = add i64 %1307, 13
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RSI.i3037, align 8
  %1316 = add i64 %1307, 11888
  %1317 = add i64 %1307, 18
  %1318 = load i64, i64* %6, align 8
  %1319 = add i64 %1318, -8
  %1320 = inttoptr i64 %1319 to i64*
  store i64 %1317, i64* %1320, align 8
  store i64 %1319, i64* %6, align 8
  store i64 %1316, i64* %3, align 8
  %call2_40137d = tail call %struct.Memory* @sub_4041e0._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1316, %struct.Memory* %call2_40134f)
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -45
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 4
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1322 to i8*
  %1326 = load i8, i8* %1325, align 1
  %1327 = zext i8 %1326 to i64
  store i64 %1327, i64* %RDX.i4024, align 8
  store i64 4276315, i64* %RAX.i4026, align 8
  store i64 4276315, i64* %RCX.i4028, align 8
  %1328 = add i64 %1321, -256
  %1329 = add i64 %1323, 18
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  store i64 %1331, i64* %RDI.i4032.pre-phi, align 8
  %1332 = add i64 %1321, -248
  %1333 = add i64 %1323, 24
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RSI.i3037, align 8
  %1337 = add i64 %1323, 12142
  %1338 = add i64 %1323, 29
  %1339 = load i64, i64* %6, align 8
  %1340 = add i64 %1339, -8
  %1341 = inttoptr i64 %1340 to i64*
  store i64 %1338, i64* %1341, align 8
  store i64 %1340, i64* %6, align 8
  store i64 %1337, i64* %3, align 8
  %call2_40139a = tail call %struct.Memory* @sub_4042f0._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1337, %struct.Memory* %call2_40137d)
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -48
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 5
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1343 to i8*
  %1347 = load i8, i8* %1346, align 1
  %1348 = zext i8 %1347 to i64
  store i64 %1348, i64* %474, align 8
  %1349 = add i64 %1342, -47
  %1350 = add i64 %1344, 10
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i8*
  %1352 = load i8, i8* %1351, align 1
  %1353 = zext i8 %1352 to i64
  store i64 %1353, i64* %247, align 8
  %1354 = add i64 %1342, -46
  %1355 = add i64 %1344, 14
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i8*
  %1357 = load i8, i8* %1356, align 1
  %1358 = zext i8 %1357 to i64
  store i64 %1358, i64* %RCX.i4028, align 8
  %1359 = add i64 %1342, -45
  %1360 = add i64 %1344, 18
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i8*
  %1362 = load i8, i8* %1361, align 1
  %1363 = zext i8 %1362 to i64
  store i64 %1363, i64* %RDX.i4024, align 8
  %1364 = load i64, i64* %6, align 8
  store i64 %1364, i64* %RDI.i4032.pre-phi, align 8
  %1365 = add i64 %1344, 28
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  store i64 4276341, i64* %1366, align 8
  %1367 = load i64, i64* %RBP.i, align 8
  %1368 = add i64 %1367, -256
  %1369 = load i64, i64* %3, align 8
  %1370 = add i64 %1369, 7
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1368 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RDI.i4032.pre-phi, align 8
  %1373 = add i64 %1367, -248
  %1374 = add i64 %1369, 13
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RSI.i3037, align 8
  %1378 = add i64 %1369, 12261
  %1379 = add i64 %1369, 18
  %1380 = load i64, i64* %6, align 8
  %1381 = add i64 %1380, -8
  %1382 = inttoptr i64 %1381 to i64*
  store i64 %1379, i64* %1382, align 8
  store i64 %1381, i64* %6, align 8
  store i64 %1378, i64* %3, align 8
  %call2_4013c8 = tail call %struct.Memory* @sub_4043a0._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1378, %struct.Memory* %call2_40139a)
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -45
  %1385 = load i64, i64* %3, align 8
  %1386 = add i64 %1385, 4
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1384 to i8*
  %1388 = load i8, i8* %1387, align 1
  %1389 = zext i8 %1388 to i64
  store i64 %1389, i64* %RDX.i4024, align 8
  store i64 4276377, i64* %RAX.i4026, align 8
  store i64 4276377, i64* %RCX.i4028, align 8
  %1390 = add i64 %1383, -256
  %1391 = add i64 %1385, 18
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %RDI.i4032.pre-phi, align 8
  %1394 = add i64 %1383, -248
  %1395 = add i64 %1385, 24
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RSI.i3037, align 8
  %1399 = add i64 %1385, 12515
  %1400 = add i64 %1385, 29
  %1401 = load i64, i64* %6, align 8
  %1402 = add i64 %1401, -8
  %1403 = inttoptr i64 %1402 to i64*
  store i64 %1400, i64* %1403, align 8
  store i64 %1402, i64* %6, align 8
  store i64 %1399, i64* %3, align 8
  %call2_4013e5 = tail call %struct.Memory* @sub_4044b0._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1399, %struct.Memory* %call2_4013c8)
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -48
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, 5
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1405 to i8*
  %1409 = load i8, i8* %1408, align 1
  %1410 = zext i8 %1409 to i64
  store i64 %1410, i64* %474, align 8
  %1411 = add i64 %1404, -47
  %1412 = add i64 %1406, 10
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i8*
  %1414 = load i8, i8* %1413, align 1
  %1415 = zext i8 %1414 to i64
  store i64 %1415, i64* %247, align 8
  %1416 = add i64 %1404, -46
  %1417 = add i64 %1406, 14
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i8*
  %1419 = load i8, i8* %1418, align 1
  %1420 = zext i8 %1419 to i64
  store i64 %1420, i64* %RCX.i4028, align 8
  %1421 = add i64 %1404, -45
  %1422 = add i64 %1406, 18
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i8*
  %1424 = load i8, i8* %1423, align 1
  %1425 = zext i8 %1424 to i64
  store i64 %1425, i64* %RDX.i4024, align 8
  %1426 = load i64, i64* %6, align 8
  store i64 %1426, i64* %RDI.i4032.pre-phi, align 8
  %1427 = add i64 %1406, 28
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  store i64 4276403, i64* %1428, align 8
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -256
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 7
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1430 to i64*
  %1434 = load i64, i64* %1433, align 8
  store i64 %1434, i64* %RDI.i4032.pre-phi, align 8
  %1435 = add i64 %1429, -248
  %1436 = add i64 %1431, 13
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RSI.i3037, align 8
  %1440 = add i64 %1431, 12634
  %1441 = add i64 %1431, 18
  %1442 = load i64, i64* %6, align 8
  %1443 = add i64 %1442, -8
  %1444 = inttoptr i64 %1443 to i64*
  store i64 %1441, i64* %1444, align 8
  store i64 %1443, i64* %6, align 8
  store i64 %1440, i64* %3, align 8
  %call2_401413 = tail call %struct.Memory* @sub_404560._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1440, %struct.Memory* %call2_4013e5)
  %1445 = load i64, i64* %RBP.i, align 8
  %1446 = add i64 %1445, -48
  %1447 = load i64, i64* %3, align 8
  %1448 = add i64 %1447, 5
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1446 to i8*
  %1450 = load i8, i8* %1449, align 1
  %1451 = zext i8 %1450 to i64
  store i64 %1451, i64* %474, align 8
  %1452 = add i64 %1445, -47
  %1453 = add i64 %1447, 10
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i8*
  %1455 = load i8, i8* %1454, align 1
  %1456 = zext i8 %1455 to i64
  store i64 %1456, i64* %247, align 8
  %1457 = add i64 %1445, -46
  %1458 = add i64 %1447, 14
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i8*
  %1460 = load i8, i8* %1459, align 1
  %1461 = zext i8 %1460 to i64
  store i64 %1461, i64* %RCX.i4028, align 8
  %1462 = add i64 %1445, -45
  %1463 = add i64 %1447, 18
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i8*
  %1465 = load i8, i8* %1464, align 1
  %1466 = zext i8 %1465 to i64
  store i64 %1466, i64* %RDX.i4024, align 8
  %1467 = load i64, i64* %6, align 8
  store i64 %1467, i64* %RDI.i4032.pre-phi, align 8
  %1468 = add i64 %1447, 28
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  store i64 4276440, i64* %1469, align 8
  %1470 = load i64, i64* %RBP.i, align 8
  %1471 = add i64 %1470, -256
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, 7
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1471 to i64*
  %1475 = load i64, i64* %1474, align 8
  store i64 %1475, i64* %RDI.i4032.pre-phi, align 8
  %1476 = add i64 %1470, -248
  %1477 = add i64 %1472, 13
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  %1479 = load i32, i32* %1478, align 4
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RSI.i3037, align 8
  %1481 = add i64 %1472, 12860
  %1482 = add i64 %1472, 18
  %1483 = load i64, i64* %6, align 8
  %1484 = add i64 %1483, -8
  %1485 = inttoptr i64 %1484 to i64*
  store i64 %1482, i64* %1485, align 8
  store i64 %1484, i64* %6, align 8
  store i64 %1481, i64* %3, align 8
  %call2_401441 = tail call %struct.Memory* @sub_404670._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1481, %struct.Memory* %call2_401413)
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -45
  %1488 = load i64, i64* %3, align 8
  %1489 = add i64 %1488, 4
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1487 to i8*
  %1491 = load i8, i8* %1490, align 1
  %1492 = zext i8 %1491 to i64
  store i64 %1492, i64* %RDX.i4024, align 8
  store i64 4276478, i64* %RAX.i4026, align 8
  store i64 4276478, i64* %RCX.i4028, align 8
  %1493 = add i64 %1486, -256
  %1494 = add i64 %1488, 18
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RDI.i4032.pre-phi, align 8
  %1497 = add i64 %1486, -248
  %1498 = add i64 %1488, 24
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RSI.i3037, align 8
  %1502 = add i64 %1488, 13114
  %1503 = add i64 %1488, 29
  %1504 = load i64, i64* %6, align 8
  %1505 = add i64 %1504, -8
  %1506 = inttoptr i64 %1505 to i64*
  store i64 %1503, i64* %1506, align 8
  store i64 %1505, i64* %6, align 8
  store i64 %1502, i64* %3, align 8
  %call2_40145e = tail call %struct.Memory* @sub_404780._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1502, %struct.Memory* %call2_401441)
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -48
  %1509 = load i64, i64* %3, align 8
  %1510 = add i64 %1509, 5
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1508 to i8*
  %1512 = load i8, i8* %1511, align 1
  %1513 = zext i8 %1512 to i64
  store i64 %1513, i64* %474, align 8
  %1514 = add i64 %1507, -47
  %1515 = add i64 %1509, 10
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i8*
  %1517 = load i8, i8* %1516, align 1
  %1518 = zext i8 %1517 to i64
  store i64 %1518, i64* %247, align 8
  %1519 = add i64 %1507, -46
  %1520 = add i64 %1509, 14
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i8*
  %1522 = load i8, i8* %1521, align 1
  %1523 = zext i8 %1522 to i64
  store i64 %1523, i64* %RCX.i4028, align 8
  %1524 = add i64 %1507, -45
  %1525 = add i64 %1509, 18
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i8*
  %1527 = load i8, i8* %1526, align 1
  %1528 = zext i8 %1527 to i64
  store i64 %1528, i64* %RDX.i4024, align 8
  %1529 = load i64, i64* %6, align 8
  store i64 %1529, i64* %RDI.i4032.pre-phi, align 8
  %1530 = add i64 %1509, 28
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i64*
  store i64 4276502, i64* %1531, align 8
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -256
  %1534 = load i64, i64* %3, align 8
  %1535 = add i64 %1534, 7
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1533 to i64*
  %1537 = load i64, i64* %1536, align 8
  store i64 %1537, i64* %RDI.i4032.pre-phi, align 8
  %1538 = add i64 %1532, -248
  %1539 = add i64 %1534, 13
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RSI.i3037, align 8
  %1543 = add i64 %1534, 13233
  %1544 = add i64 %1534, 18
  %1545 = load i64, i64* %6, align 8
  %1546 = add i64 %1545, -8
  %1547 = inttoptr i64 %1546 to i64*
  store i64 %1544, i64* %1547, align 8
  store i64 %1546, i64* %6, align 8
  store i64 %1543, i64* %3, align 8
  %call2_40148c = tail call %struct.Memory* @sub_404830._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1543, %struct.Memory* %call2_40145e)
  %1548 = load i64, i64* %RBP.i, align 8
  %1549 = add i64 %1548, -48
  %1550 = load i64, i64* %3, align 8
  %1551 = add i64 %1550, 5
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1549 to i8*
  %1553 = load i8, i8* %1552, align 1
  %1554 = zext i8 %1553 to i64
  store i64 %1554, i64* %474, align 8
  %1555 = add i64 %1548, -47
  %1556 = add i64 %1550, 10
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i8*
  %1558 = load i8, i8* %1557, align 1
  %1559 = zext i8 %1558 to i64
  store i64 %1559, i64* %247, align 8
  %1560 = add i64 %1548, -46
  %1561 = add i64 %1550, 14
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i8*
  %1563 = load i8, i8* %1562, align 1
  %1564 = zext i8 %1563 to i64
  store i64 %1564, i64* %RCX.i4028, align 8
  %1565 = add i64 %1548, -45
  %1566 = add i64 %1550, 18
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i8*
  %1568 = load i8, i8* %1567, align 1
  %1569 = zext i8 %1568 to i64
  store i64 %1569, i64* %RDX.i4024, align 8
  %1570 = load i64, i64* %6, align 8
  store i64 %1570, i64* %RDI.i4032.pre-phi, align 8
  %1571 = add i64 %1550, 28
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i64*
  store i64 4276536, i64* %1572, align 8
  %1573 = load i64, i64* %RBP.i, align 8
  %1574 = add i64 %1573, -256
  %1575 = load i64, i64* %3, align 8
  %1576 = add i64 %1575, 7
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1574 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RDI.i4032.pre-phi, align 8
  %1579 = add i64 %1573, -248
  %1580 = add i64 %1575, 13
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RSI.i3037, align 8
  %1584 = add i64 %1575, 13459
  %1585 = add i64 %1575, 18
  %1586 = load i64, i64* %6, align 8
  %1587 = add i64 %1586, -8
  %1588 = inttoptr i64 %1587 to i64*
  store i64 %1585, i64* %1588, align 8
  store i64 %1587, i64* %6, align 8
  store i64 %1584, i64* %3, align 8
  %call2_4014ba = tail call %struct.Memory* @sub_404940._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1584, %struct.Memory* %call2_40148c)
  %1589 = load i64, i64* %RBP.i, align 8
  %1590 = add i64 %1589, -48
  %1591 = load i64, i64* %3, align 8
  %1592 = add i64 %1591, 5
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1590 to i8*
  %1594 = load i8, i8* %1593, align 1
  %1595 = zext i8 %1594 to i64
  store i64 %1595, i64* %474, align 8
  %1596 = add i64 %1589, -47
  %1597 = add i64 %1591, 10
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i8*
  %1599 = load i8, i8* %1598, align 1
  %1600 = zext i8 %1599 to i64
  store i64 %1600, i64* %247, align 8
  %1601 = add i64 %1589, -46
  %1602 = add i64 %1591, 14
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i8*
  %1604 = load i8, i8* %1603, align 1
  %1605 = zext i8 %1604 to i64
  store i64 %1605, i64* %RCX.i4028, align 8
  %1606 = add i64 %1589, -45
  %1607 = add i64 %1591, 18
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i8*
  %1609 = load i8, i8* %1608, align 1
  %1610 = zext i8 %1609 to i64
  store i64 %1610, i64* %RDX.i4024, align 8
  %1611 = load i64, i64* %6, align 8
  store i64 %1611, i64* %RDI.i4032.pre-phi, align 8
  %1612 = add i64 %1591, 28
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i64*
  store i64 4276571, i64* %1613, align 8
  %1614 = load i64, i64* %RBP.i, align 8
  %1615 = add i64 %1614, -256
  %1616 = load i64, i64* %3, align 8
  %1617 = add i64 %1616, 7
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1615 to i64*
  %1619 = load i64, i64* %1618, align 8
  store i64 %1619, i64* %RDI.i4032.pre-phi, align 8
  %1620 = add i64 %1614, -248
  %1621 = add i64 %1616, 13
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RSI.i3037, align 8
  %1625 = add i64 %1616, 13685
  %1626 = add i64 %1616, 18
  %1627 = load i64, i64* %6, align 8
  %1628 = add i64 %1627, -8
  %1629 = inttoptr i64 %1628 to i64*
  store i64 %1626, i64* %1629, align 8
  store i64 %1628, i64* %6, align 8
  store i64 %1625, i64* %3, align 8
  %call2_4014e8 = tail call %struct.Memory* @sub_404a50._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1625, %struct.Memory* %call2_4014ba)
  %1630 = load i64, i64* %RBP.i, align 8
  %1631 = add i64 %1630, -45
  %1632 = load i64, i64* %3, align 8
  %1633 = add i64 %1632, 4
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1631 to i8*
  %1635 = load i8, i8* %1634, align 1
  %1636 = zext i8 %1635 to i64
  store i64 %1636, i64* %RDX.i4024, align 8
  store i64 4276603, i64* %RAX.i4026, align 8
  store i64 4276603, i64* %RCX.i4028, align 8
  %1637 = add i64 %1630, -256
  %1638 = add i64 %1632, 18
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i64*
  %1640 = load i64, i64* %1639, align 8
  store i64 %1640, i64* %RDI.i4032.pre-phi, align 8
  %1641 = add i64 %1630, -248
  %1642 = add i64 %1632, 24
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RSI.i3037, align 8
  %1646 = add i64 %1632, 13939
  %1647 = add i64 %1632, 29
  %1648 = load i64, i64* %6, align 8
  %1649 = add i64 %1648, -8
  %1650 = inttoptr i64 %1649 to i64*
  store i64 %1647, i64* %1650, align 8
  store i64 %1649, i64* %6, align 8
  store i64 %1646, i64* %3, align 8
  %call2_401505 = tail call %struct.Memory* @sub_404b60._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1646, %struct.Memory* %call2_4014e8)
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -48
  %1653 = load i64, i64* %3, align 8
  %1654 = add i64 %1653, 5
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1652 to i8*
  %1656 = load i8, i8* %1655, align 1
  %1657 = zext i8 %1656 to i64
  store i64 %1657, i64* %474, align 8
  %1658 = add i64 %1651, -47
  %1659 = add i64 %1653, 10
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i8*
  %1661 = load i8, i8* %1660, align 1
  %1662 = zext i8 %1661 to i64
  store i64 %1662, i64* %247, align 8
  %1663 = add i64 %1651, -46
  %1664 = add i64 %1653, 14
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i8*
  %1666 = load i8, i8* %1665, align 1
  %1667 = zext i8 %1666 to i64
  store i64 %1667, i64* %RCX.i4028, align 8
  %1668 = add i64 %1651, -45
  %1669 = add i64 %1653, 18
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i8*
  %1671 = load i8, i8* %1670, align 1
  %1672 = zext i8 %1671 to i64
  store i64 %1672, i64* %RDX.i4024, align 8
  %1673 = load i64, i64* %6, align 8
  store i64 %1673, i64* %RDI.i4032.pre-phi, align 8
  %1674 = add i64 %1653, 28
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i64*
  store i64 4276624, i64* %1675, align 8
  %1676 = load i64, i64* %RBP.i, align 8
  %1677 = add i64 %1676, -256
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, 7
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1677 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RDI.i4032.pre-phi, align 8
  %1682 = add i64 %1676, -248
  %1683 = add i64 %1678, 13
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RSI.i3037, align 8
  %1687 = add i64 %1678, 14058
  %1688 = add i64 %1678, 18
  %1689 = load i64, i64* %6, align 8
  %1690 = add i64 %1689, -8
  %1691 = inttoptr i64 %1690 to i64*
  store i64 %1688, i64* %1691, align 8
  store i64 %1690, i64* %6, align 8
  store i64 %1687, i64* %3, align 8
  %call2_401533 = tail call %struct.Memory* @sub_404c10._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1687, %struct.Memory* %call2_401505)
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -45
  %1694 = load i64, i64* %3, align 8
  %1695 = add i64 %1694, 4
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1693 to i8*
  %1697 = load i8, i8* %1696, align 1
  %1698 = zext i8 %1697 to i64
  store i64 %1698, i64* %RDX.i4024, align 8
  store i64 4276654, i64* %RAX.i4026, align 8
  store i64 4276654, i64* %RCX.i4028, align 8
  %1699 = add i64 %1692, -256
  %1700 = add i64 %1694, 18
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %RDI.i4032.pre-phi, align 8
  %1703 = add i64 %1692, -248
  %1704 = add i64 %1694, 24
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RSI.i3037, align 8
  %1708 = add i64 %1694, 14312
  %1709 = add i64 %1694, 29
  %1710 = load i64, i64* %6, align 8
  %1711 = add i64 %1710, -8
  %1712 = inttoptr i64 %1711 to i64*
  store i64 %1709, i64* %1712, align 8
  store i64 %1711, i64* %6, align 8
  store i64 %1708, i64* %3, align 8
  %call2_401550 = tail call %struct.Memory* @sub_404d20._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1708, %struct.Memory* %call2_401533)
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -48
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, 5
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1714 to i8*
  %1718 = load i8, i8* %1717, align 1
  %1719 = zext i8 %1718 to i64
  store i64 %1719, i64* %474, align 8
  %1720 = add i64 %1713, -47
  %1721 = add i64 %1715, 10
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i8*
  %1723 = load i8, i8* %1722, align 1
  %1724 = zext i8 %1723 to i64
  store i64 %1724, i64* %247, align 8
  %1725 = add i64 %1713, -46
  %1726 = add i64 %1715, 14
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i8*
  %1728 = load i8, i8* %1727, align 1
  %1729 = zext i8 %1728 to i64
  store i64 %1729, i64* %RCX.i4028, align 8
  %1730 = add i64 %1713, -45
  %1731 = add i64 %1715, 18
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i8*
  %1733 = load i8, i8* %1732, align 1
  %1734 = zext i8 %1733 to i64
  store i64 %1734, i64* %RDX.i4024, align 8
  %1735 = load i64, i64* %6, align 8
  store i64 %1735, i64* %RDI.i4032.pre-phi, align 8
  %1736 = add i64 %1715, 28
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i64*
  store i64 4276674, i64* %1737, align 8
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -256
  %1740 = load i64, i64* %3, align 8
  %1741 = add i64 %1740, 7
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1739 to i64*
  %1743 = load i64, i64* %1742, align 8
  store i64 %1743, i64* %RDI.i4032.pre-phi, align 8
  %1744 = add i64 %1738, -248
  %1745 = add i64 %1740, 13
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  %1747 = load i32, i32* %1746, align 4
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RSI.i3037, align 8
  %1749 = add i64 %1740, 14431
  %1750 = add i64 %1740, 18
  %1751 = load i64, i64* %6, align 8
  %1752 = add i64 %1751, -8
  %1753 = inttoptr i64 %1752 to i64*
  store i64 %1750, i64* %1753, align 8
  store i64 %1752, i64* %6, align 8
  store i64 %1749, i64* %3, align 8
  %call2_40157e = tail call %struct.Memory* @sub_404dd0._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1749, %struct.Memory* %call2_401550)
  %1754 = load i64, i64* %RBP.i, align 8
  %1755 = add i64 %1754, -45
  %1756 = load i64, i64* %3, align 8
  %1757 = add i64 %1756, 4
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1755 to i8*
  %1759 = load i8, i8* %1758, align 1
  %1760 = zext i8 %1759 to i64
  store i64 %1760, i64* %RDX.i4024, align 8
  store i64 4276703, i64* %RAX.i4026, align 8
  store i64 4276703, i64* %RCX.i4028, align 8
  %1761 = add i64 %1754, -256
  %1762 = add i64 %1756, 18
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i64*
  %1764 = load i64, i64* %1763, align 8
  store i64 %1764, i64* %RDI.i4032.pre-phi, align 8
  %1765 = add i64 %1754, -248
  %1766 = add i64 %1756, 24
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  %1768 = load i32, i32* %1767, align 4
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RSI.i3037, align 8
  %1770 = add i64 %1756, 14685
  %1771 = add i64 %1756, 29
  %1772 = load i64, i64* %6, align 8
  %1773 = add i64 %1772, -8
  %1774 = inttoptr i64 %1773 to i64*
  store i64 %1771, i64* %1774, align 8
  store i64 %1773, i64* %6, align 8
  store i64 %1770, i64* %3, align 8
  %call2_40159b = tail call %struct.Memory* @sub_404ee0._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %1770, %struct.Memory* %call2_40157e)
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -48
  %1777 = load i64, i64* %3, align 8
  %1778 = add i64 %1777, 5
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1776 to i8*
  %1780 = load i8, i8* %1779, align 1
  %1781 = zext i8 %1780 to i64
  store i64 %1781, i64* %474, align 8
  %1782 = add i64 %1775, -47
  %1783 = add i64 %1777, 10
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i8*
  %1785 = load i8, i8* %1784, align 1
  %1786 = zext i8 %1785 to i64
  store i64 %1786, i64* %247, align 8
  %1787 = add i64 %1775, -46
  %1788 = add i64 %1777, 14
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i8*
  %1790 = load i8, i8* %1789, align 1
  %1791 = zext i8 %1790 to i64
  store i64 %1791, i64* %RCX.i4028, align 8
  %1792 = add i64 %1775, -45
  %1793 = add i64 %1777, 18
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i8*
  %1795 = load i8, i8* %1794, align 1
  %1796 = zext i8 %1795 to i64
  store i64 %1796, i64* %RDX.i4024, align 8
  %1797 = load i64, i64* %6, align 8
  store i64 %1797, i64* %RDI.i4032.pre-phi, align 8
  %1798 = add i64 %1777, 28
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i64*
  store i64 4276724, i64* %1799, align 8
  %1800 = load i64, i64* %RBP.i, align 8
  %1801 = add i64 %1800, -256
  %1802 = load i64, i64* %3, align 8
  %1803 = add i64 %1802, 7
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1801 to i64*
  %1805 = load i64, i64* %1804, align 8
  store i64 %1805, i64* %RDI.i4032.pre-phi, align 8
  %1806 = add i64 %1800, -248
  %1807 = add i64 %1802, 13
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RSI.i3037, align 8
  %1811 = add i64 %1802, 14804
  %1812 = add i64 %1802, 18
  %1813 = load i64, i64* %6, align 8
  %1814 = add i64 %1813, -8
  %1815 = inttoptr i64 %1814 to i64*
  store i64 %1812, i64* %1815, align 8
  store i64 %1814, i64* %6, align 8
  store i64 %1811, i64* %3, align 8
  %call2_4015c9 = tail call %struct.Memory* @sub_404f90._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %1811, %struct.Memory* %call2_40159b)
  %1816 = load i64, i64* %3, align 8
  %1817 = add i64 %1816, 2198202
  %1818 = add i64 %1816, 8
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to double*
  %1820 = load double, double* %1819, align 8
  %1821 = tail call double @llvm.trunc.f64(double %1820)
  %1822 = tail call double @llvm.fabs.f64(double %1821)
  %1823 = fcmp ogt double %1822, 0x41DFFFFFFFC00000
  %1824 = fptosi double %1821 to i32
  %1825 = zext i32 %1824 to i64
  %1826 = select i1 %1823, i64 2147483648, i64 %1825
  store i64 6702144, i64* %RCX.i4028, align 8
  store i64 6702144, i64* %RDI.i4032.pre-phi, align 8
  %R14W.i3107 = bitcast %union.anon* %11 to i16*
  %1827 = trunc i64 %1826 to i16
  store i16 %1827, i16* %R14W.i3107, align 2
  %sext43 = shl i64 %1826, 48
  %1828 = ashr exact i64 %sext43, 48
  %1829 = and i64 %1828, 4294967295
  store i64 %1829, i64* %RDX.i4024, align 8
  store i64 6718144, i64* %RAX.i4026, align 8
  store i64 6718144, i64* %RSI.i3037, align 8
  %1830 = load i64, i64* %RBP.i, align 8
  %1831 = add i64 %1830, -280
  %1832 = add i64 %1816, 37
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  store i64 6702144, i64* %1833, align 8
  %1834 = load i64, i64* %3, align 8
  %1835 = add i64 %1834, 15021
  %1836 = add i64 %1834, 5
  %1837 = load i64, i64* %6, align 8
  %1838 = add i64 %1837, -8
  %1839 = inttoptr i64 %1838 to i64*
  store i64 %1836, i64* %1839, align 8
  store i64 %1838, i64* %6, align 8
  store i64 %1835, i64* %3, align 8
  %call2_4015f3 = tail call %struct.Memory* @sub_4050a0._Z4fillIPssEvT_S1_T0_(%struct.State* nonnull %0, i64 %1835, %struct.Memory* %call2_4015c9)
  %1840 = load i64, i64* %RBP.i, align 8
  %1841 = add i64 %1840, -40
  %1842 = load i64, i64* %3, align 8
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1841 to double*
  %1845 = load double, double* %1844, align 8
  %1846 = tail call double @llvm.trunc.f64(double %1845)
  %1847 = tail call double @llvm.fabs.f64(double %1846)
  %1848 = fcmp ogt double %1847, 0x41DFFFFFFFC00000
  %1849 = fptosi double %1846 to i32
  %1850 = zext i32 %1849 to i64
  %1851 = select i1 %1848, i64 2147483648, i64 %1850
  store i64 %1851, i64* %RAX.i4026, align 8
  %1852 = trunc i64 %1851 to i16
  store i16 %1852, i16* %R14W.i3107, align 2
  %1853 = add i64 %1840, -50
  %1854 = add i64 %1842, 14
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i16*
  store i16 %1852, i16* %1855, align 2
  %1856 = load i64, i64* %RBP.i, align 8
  %1857 = add i64 %1856, -50
  %1858 = load i64, i64* %3, align 8
  %1859 = add i64 %1858, 4
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1857 to i16*
  %1861 = load i16, i16* %1860, align 2
  %1862 = zext i16 %1861 to i32
  %1863 = zext i16 %1861 to i32
  %1864 = add nuw nsw i32 %1862, %1863
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %1866 = and i32 %1864, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %33, align 1
  %1871 = lshr i32 %1864, 4
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  store i8 %1873, i8* %39, align 1
  %1874 = icmp eq i32 %1864, 0
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1876 = trunc i32 %1864 to i16
  store i16 %1876, i16* %R14W.i3107, align 2
  %1877 = add i64 %1856, -52
  %1878 = add i64 %1858, 15
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i16*
  store i16 %1876, i16* %1879, align 2
  %1880 = load i64, i64* %RBP.i, align 8
  %1881 = add i64 %1880, -50
  %1882 = load i64, i64* %3, align 8
  %1883 = add i64 %1882, 4
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1881 to i16*
  %1885 = load i16, i16* %1884, align 2
  %1886 = zext i16 %1885 to i32
  %1887 = add nuw nsw i32 %1886, 2
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %1889 = and i32 %1887, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %33, align 1
  %1894 = xor i32 %1887, %1886
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1898 = trunc i32 %1887 to i16
  store i16 %1898, i16* %R14W.i3107, align 2
  %1899 = add i64 %1880, -54
  %1900 = add i64 %1882, 16
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i16*
  store i16 %1898, i16* %1901, align 2
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -50
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 4
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to i16*
  %1907 = load i16, i16* %1906, align 2
  %1908 = zext i16 %1907 to i64
  store i64 %1908, i64* %RAX.i4026, align 8
  %1909 = add i64 %1902, -52
  %1910 = add i64 %1904, 8
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i16*
  %1912 = load i16, i16* %1911, align 2
  %1913 = sext i16 %1912 to i64
  %1914 = and i64 %1913, 4294967295
  store i64 %1914, i64* %RCX.i4028, align 8
  %1915 = add i64 %1902, -54
  %1916 = add i64 %1904, 12
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i16*
  %1918 = load i16, i16* %1917, align 2
  %1919 = sext i16 %1918 to i64
  %1920 = and i64 %1919, 4294967295
  store i64 %1920, i64* %RDX.i4024, align 8
  %1921 = add i64 %1902, -284
  %1922 = zext i16 %1907 to i32
  %1923 = add i64 %1904, 18
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1921 to i32*
  store i32 %1922, i32* %1924, align 4
  %1925 = load i32, i32* %ECX.i3562, align 4
  %1926 = zext i32 %1925 to i64
  %1927 = load i64, i64* %3, align 8
  store i64 %1926, i64* %RAX.i4026, align 8
  %1928 = load i64, i64* %RBP.i, align 8
  %1929 = add i64 %1928, -288
  %1930 = load i32, i32* %EDX.i4021, align 4
  %1931 = add i64 %1927, 8
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1929 to i32*
  store i32 %1930, i32* %1932, align 4
  %1933 = load i64, i64* %3, align 8
  %1934 = load i32, i32* %EAX.i4011, align 8
  %1935 = sext i32 %1934 to i64
  %1936 = lshr i64 %1935, 32
  store i64 %1936, i64* %373, align 8
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -288
  %1939 = add i64 %1933, 7
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RCX.i4028, align 8
  %1943 = add i64 %1933, 9
  store i64 %1943, i64* %3, align 8
  %1944 = zext i32 %1934 to i64
  %1945 = sext i32 %1941 to i64
  %1946 = shl nuw i64 %1936, 32
  %1947 = or i64 %1946, %1944
  %1948 = sdiv i64 %1947, %1945
  %1949 = shl i64 %1948, 32
  %1950 = ashr exact i64 %1949, 32
  %1951 = icmp eq i64 %1948, %1950
  br i1 %1951, label %1954, label %1952

; <label>:1952:                                   ; preds = %routine_divl__ecx.exit
  %1953 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1943, %struct.Memory* %call2_4015f3)
  %.pre13 = load i64, i64* %RBP.i, align 8
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i32, i32* %EAX.i4011, align 4
  br label %routine_idivl__ecx.exit3035

; <label>:1954:                                   ; preds = %routine_divl__ecx.exit
  %1955 = srem i64 %1947, %1945
  %1956 = and i64 %1948, 4294967295
  store i64 %1956, i64* %RAX.i4026, align 8
  %1957 = and i64 %1955, 4294967295
  store i64 %1957, i64* %RDX.i4024, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1958 = trunc i64 %1948 to i32
  br label %routine_idivl__ecx.exit3035

routine_idivl__ecx.exit3035:                      ; preds = %1954, %1952
  %1959 = phi i32 [ %.pre15, %1952 ], [ %1958, %1954 ]
  %1960 = phi i64 [ %.pre14, %1952 ], [ %1943, %1954 ]
  %1961 = phi i64 [ %.pre13, %1952 ], [ %1937, %1954 ]
  %1962 = phi %struct.Memory* [ %1953, %1952 ], [ %call2_4015f3, %1954 ]
  %1963 = add i64 %1961, -284
  %1964 = add i64 %1960, 6
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i32*
  %1966 = load i32, i32* %1965, align 4
  %1967 = add i32 %1959, %1966
  %1968 = zext i32 %1967 to i64
  store i64 %1968, i64* %RDX.i4024, align 8
  %1969 = icmp ult i32 %1967, %1966
  %1970 = icmp ult i32 %1967, %1959
  %1971 = or i1 %1969, %1970
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %26, align 1
  %1973 = and i32 %1967, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %33, align 1
  %1978 = xor i32 %1959, %1966
  %1979 = xor i32 %1978, %1967
  %1980 = lshr i32 %1979, 4
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  store i8 %1982, i8* %39, align 1
  %1983 = icmp eq i32 %1967, 0
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %42, align 1
  %1985 = lshr i32 %1967, 31
  %1986 = trunc i32 %1985 to i8
  store i8 %1986, i8* %45, align 1
  %1987 = lshr i32 %1966, 31
  %1988 = lshr i32 %1959, 31
  %1989 = xor i32 %1985, %1987
  %1990 = xor i32 %1985, %1988
  %1991 = add nuw nsw i32 %1989, %1990
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %51, align 1
  %1994 = trunc i32 %1967 to i16
  store i16 %1994, i16* %R14W.i3107, align 2
  %1995 = add i64 %1961, -56
  %1996 = add i64 %1960, 17
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i16*
  store i16 %1994, i16* %1997, align 2
  %1998 = load i64, i64* %RBP.i, align 8
  %1999 = add i64 %1998, -50
  %2000 = load i64, i64* %3, align 8
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %1999 to i16*
  %2003 = load i16, i16* %2002, align 2
  %2004 = sext i16 %2003 to i64
  %2005 = and i64 %2004, 4294967295
  store i64 %2005, i64* %RDX.i4024, align 8
  store i64 4276755, i64* %RAX.i4026, align 8
  store i64 4276755, i64* %RCX.i4028, align 8
  %2006 = add i64 %1998, -280
  %2007 = add i64 %2000, 18
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i64*
  %2009 = load i64, i64* %2008, align 8
  store i64 %2009, i64* %RDI.i4032.pre-phi, align 8
  %2010 = add i64 %1998, -248
  %2011 = add i64 %2000, 24
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RSI.i3037, align 8
  %2015 = add i64 %2000, 14983
  %2016 = add i64 %2000, 29
  %2017 = load i64, i64* %6, align 8
  %2018 = add i64 %2017, -8
  %2019 = inttoptr i64 %2018 to i64*
  store i64 %2016, i64* %2019, align 8
  store i64 %2018, i64* %6, align 8
  store i64 %2015, i64* %3, align 8
  %call2_401671 = tail call %struct.Memory* @sub_4050e0._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2015, %struct.Memory* %1962)
  %2020 = load i64, i64* %RBP.i, align 8
  %2021 = add i64 %2020, -50
  %2022 = load i64, i64* %3, align 8
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2021 to i16*
  %2025 = load i16, i16* %2024, align 2
  %2026 = sext i16 %2025 to i64
  %2027 = and i64 %2026, 4294967295
  store i64 %2027, i64* %RDX.i4024, align 8
  store i64 4276777, i64* %RAX.i4026, align 8
  store i64 4276777, i64* %RCX.i4028, align 8
  %2028 = add i64 %2020, -280
  %2029 = add i64 %2022, 18
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i64*
  %2031 = load i64, i64* %2030, align 8
  store i64 %2031, i64* %RDI.i4032.pre-phi, align 8
  %2032 = add i64 %2020, -248
  %2033 = add i64 %2022, 24
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2032 to i32*
  %2035 = load i32, i32* %2034, align 4
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RSI.i3037, align 8
  %2037 = add i64 %2022, 15146
  %2038 = add i64 %2022, 29
  %2039 = load i64, i64* %6, align 8
  %2040 = add i64 %2039, -8
  %2041 = inttoptr i64 %2040 to i64*
  store i64 %2038, i64* %2041, align 8
  store i64 %2040, i64* %6, align 8
  store i64 %2037, i64* %3, align 8
  %call2_40168e = tail call %struct.Memory* @sub_4051a0._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2037, %struct.Memory* %call2_401671)
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -56
  %2044 = load i64, i64* %3, align 8
  %2045 = add i64 %2044, 5
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2043 to i16*
  %2047 = load i16, i16* %2046, align 2
  %2048 = sext i16 %2047 to i64
  %2049 = and i64 %2048, 4294967295
  store i64 %2049, i64* %474, align 8
  %2050 = add i64 %2042, -54
  %2051 = add i64 %2044, 10
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i16*
  %2053 = load i16, i16* %2052, align 2
  %2054 = sext i16 %2053 to i64
  %2055 = and i64 %2054, 4294967295
  store i64 %2055, i64* %247, align 8
  %2056 = add i64 %2042, -52
  %2057 = add i64 %2044, 14
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i16*
  %2059 = load i16, i16* %2058, align 2
  %2060 = sext i16 %2059 to i64
  %2061 = and i64 %2060, 4294967295
  store i64 %2061, i64* %RCX.i4028, align 8
  %2062 = add i64 %2042, -50
  %2063 = add i64 %2044, 18
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i16*
  %2065 = load i16, i16* %2064, align 2
  %2066 = sext i16 %2065 to i64
  %2067 = and i64 %2066, 4294967295
  store i64 %2067, i64* %RDX.i4024, align 8
  %2068 = load i64, i64* %6, align 8
  store i64 %2068, i64* %RDI.i4032.pre-phi, align 8
  %2069 = add i64 %2044, 28
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i64*
  store i64 4276807, i64* %2070, align 8
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -280
  %2073 = load i64, i64* %3, align 8
  %2074 = add i64 %2073, 7
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2072 to i64*
  %2076 = load i64, i64* %2075, align 8
  store i64 %2076, i64* %RDI.i4032.pre-phi, align 8
  %2077 = add i64 %2071, -248
  %2078 = add i64 %2073, 13
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i32*
  %2080 = load i32, i32* %2079, align 4
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RSI.i3037, align 8
  %2082 = add i64 %2073, 15281
  %2083 = add i64 %2073, 18
  %2084 = load i64, i64* %6, align 8
  %2085 = add i64 %2084, -8
  %2086 = inttoptr i64 %2085 to i64*
  store i64 %2083, i64* %2086, align 8
  store i64 %2085, i64* %6, align 8
  store i64 %2082, i64* %3, align 8
  %call2_4016bc = tail call %struct.Memory* @sub_405260._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2082, %struct.Memory* %call2_40168e)
  %2087 = load i64, i64* %RBP.i, align 8
  %2088 = add i64 %2087, -50
  %2089 = load i64, i64* %3, align 8
  %2090 = add i64 %2089, 4
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2088 to i16*
  %2092 = load i16, i16* %2091, align 2
  %2093 = sext i16 %2092 to i64
  %2094 = and i64 %2093, 4294967295
  store i64 %2094, i64* %RDX.i4024, align 8
  store i64 4276839, i64* %RAX.i4026, align 8
  store i64 4276839, i64* %RCX.i4028, align 8
  %2095 = add i64 %2087, -280
  %2096 = add i64 %2089, 18
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i64*
  %2098 = load i64, i64* %2097, align 8
  store i64 %2098, i64* %RDI.i4032.pre-phi, align 8
  %2099 = add i64 %2087, -248
  %2100 = add i64 %2089, 24
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RSI.i3037, align 8
  %2104 = add i64 %2089, 15567
  %2105 = add i64 %2089, 29
  %2106 = load i64, i64* %6, align 8
  %2107 = add i64 %2106, -8
  %2108 = inttoptr i64 %2107 to i64*
  store i64 %2105, i64* %2108, align 8
  store i64 %2107, i64* %6, align 8
  store i64 %2104, i64* %3, align 8
  %call2_4016d9 = tail call %struct.Memory* @sub_405390._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2104, %struct.Memory* %call2_4016bc)
  %2109 = load i64, i64* %RBP.i, align 8
  %2110 = add i64 %2109, -56
  %2111 = load i64, i64* %3, align 8
  %2112 = add i64 %2111, 5
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2110 to i16*
  %2114 = load i16, i16* %2113, align 2
  %2115 = sext i16 %2114 to i64
  %2116 = and i64 %2115, 4294967295
  store i64 %2116, i64* %474, align 8
  %2117 = add i64 %2109, -54
  %2118 = add i64 %2111, 10
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i16*
  %2120 = load i16, i16* %2119, align 2
  %2121 = sext i16 %2120 to i64
  %2122 = and i64 %2121, 4294967295
  store i64 %2122, i64* %247, align 8
  %2123 = add i64 %2109, -52
  %2124 = add i64 %2111, 14
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i16*
  %2126 = load i16, i16* %2125, align 2
  %2127 = sext i16 %2126 to i64
  %2128 = and i64 %2127, 4294967295
  store i64 %2128, i64* %RCX.i4028, align 8
  %2129 = add i64 %2109, -50
  %2130 = add i64 %2111, 18
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i16*
  %2132 = load i16, i16* %2131, align 2
  %2133 = sext i16 %2132 to i64
  %2134 = and i64 %2133, 4294967295
  store i64 %2134, i64* %RDX.i4024, align 8
  %2135 = load i64, i64* %6, align 8
  store i64 %2135, i64* %RDI.i4032.pre-phi, align 8
  %2136 = add i64 %2111, 28
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i64*
  store i64 4276866, i64* %2137, align 8
  %2138 = load i64, i64* %RBP.i, align 8
  %2139 = add i64 %2138, -280
  %2140 = load i64, i64* %3, align 8
  %2141 = add i64 %2140, 7
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2139 to i64*
  %2143 = load i64, i64* %2142, align 8
  store i64 %2143, i64* %RDI.i4032.pre-phi, align 8
  %2144 = add i64 %2138, -248
  %2145 = add i64 %2140, 13
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RSI.i3037, align 8
  %2149 = add i64 %2140, 15702
  %2150 = add i64 %2140, 18
  %2151 = load i64, i64* %6, align 8
  %2152 = add i64 %2151, -8
  %2153 = inttoptr i64 %2152 to i64*
  store i64 %2150, i64* %2153, align 8
  store i64 %2152, i64* %6, align 8
  store i64 %2149, i64* %3, align 8
  %call2_401707 = tail call %struct.Memory* @sub_405450._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2149, %struct.Memory* %call2_4016d9)
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -50
  %2156 = load i64, i64* %3, align 8
  %2157 = add i64 %2156, 4
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2155 to i16*
  %2159 = load i16, i16* %2158, align 2
  %2160 = sext i16 %2159 to i64
  %2161 = and i64 %2160, 4294967295
  store i64 %2161, i64* %RDX.i4024, align 8
  store i64 4276903, i64* %RAX.i4026, align 8
  store i64 4276903, i64* %RCX.i4028, align 8
  %2162 = add i64 %2154, -280
  %2163 = add i64 %2156, 18
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i64*
  %2165 = load i64, i64* %2164, align 8
  store i64 %2165, i64* %RDI.i4032.pre-phi, align 8
  %2166 = add i64 %2154, -248
  %2167 = add i64 %2156, 24
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i32*
  %2169 = load i32, i32* %2168, align 4
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RSI.i3037, align 8
  %2171 = add i64 %2156, 15988
  %2172 = add i64 %2156, 29
  %2173 = load i64, i64* %6, align 8
  %2174 = add i64 %2173, -8
  %2175 = inttoptr i64 %2174 to i64*
  store i64 %2172, i64* %2175, align 8
  store i64 %2174, i64* %6, align 8
  store i64 %2171, i64* %3, align 8
  %call2_401724 = tail call %struct.Memory* @sub_405580._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2171, %struct.Memory* %call2_401707)
  %2176 = load i64, i64* %RBP.i, align 8
  %2177 = add i64 %2176, -56
  %2178 = load i64, i64* %3, align 8
  %2179 = add i64 %2178, 5
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2177 to i16*
  %2181 = load i16, i16* %2180, align 2
  %2182 = sext i16 %2181 to i64
  %2183 = and i64 %2182, 4294967295
  store i64 %2183, i64* %474, align 8
  %2184 = add i64 %2176, -54
  %2185 = add i64 %2178, 10
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i16*
  %2187 = load i16, i16* %2186, align 2
  %2188 = sext i16 %2187 to i64
  %2189 = and i64 %2188, 4294967295
  store i64 %2189, i64* %247, align 8
  %2190 = add i64 %2176, -52
  %2191 = add i64 %2178, 14
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i16*
  %2193 = load i16, i16* %2192, align 2
  %2194 = sext i16 %2193 to i64
  %2195 = and i64 %2194, 4294967295
  store i64 %2195, i64* %RCX.i4028, align 8
  %2196 = add i64 %2176, -50
  %2197 = add i64 %2178, 18
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i16*
  %2199 = load i16, i16* %2198, align 2
  %2200 = sext i16 %2199 to i64
  %2201 = and i64 %2200, 4294967295
  store i64 %2201, i64* %RDX.i4024, align 8
  %2202 = load i64, i64* %6, align 8
  store i64 %2202, i64* %RDI.i4032.pre-phi, align 8
  %2203 = add i64 %2178, 28
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i64*
  store i64 4276930, i64* %2204, align 8
  %2205 = load i64, i64* %RBP.i, align 8
  %2206 = add i64 %2205, -280
  %2207 = load i64, i64* %3, align 8
  %2208 = add i64 %2207, 7
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2206 to i64*
  %2210 = load i64, i64* %2209, align 8
  store i64 %2210, i64* %RDI.i4032.pre-phi, align 8
  %2211 = add i64 %2205, -248
  %2212 = add i64 %2207, 13
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i32*
  %2214 = load i32, i32* %2213, align 4
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RSI.i3037, align 8
  %2216 = add i64 %2207, 16123
  %2217 = add i64 %2207, 18
  %2218 = load i64, i64* %6, align 8
  %2219 = add i64 %2218, -8
  %2220 = inttoptr i64 %2219 to i64*
  store i64 %2217, i64* %2220, align 8
  store i64 %2219, i64* %6, align 8
  store i64 %2216, i64* %3, align 8
  %call2_401752 = tail call %struct.Memory* @sub_405640._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2216, %struct.Memory* %call2_401724)
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -56
  %2223 = load i64, i64* %3, align 8
  %2224 = add i64 %2223, 5
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2222 to i16*
  %2226 = load i16, i16* %2225, align 2
  %2227 = sext i16 %2226 to i64
  %2228 = and i64 %2227, 4294967295
  store i64 %2228, i64* %474, align 8
  %2229 = add i64 %2221, -54
  %2230 = add i64 %2223, 10
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i16*
  %2232 = load i16, i16* %2231, align 2
  %2233 = sext i16 %2232 to i64
  %2234 = and i64 %2233, 4294967295
  store i64 %2234, i64* %247, align 8
  %2235 = add i64 %2221, -52
  %2236 = add i64 %2223, 14
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i16*
  %2238 = load i16, i16* %2237, align 2
  %2239 = sext i16 %2238 to i64
  %2240 = and i64 %2239, 4294967295
  store i64 %2240, i64* %RCX.i4028, align 8
  %2241 = add i64 %2221, -50
  %2242 = add i64 %2223, 18
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i16*
  %2244 = load i16, i16* %2243, align 2
  %2245 = sext i16 %2244 to i64
  %2246 = and i64 %2245, 4294967295
  store i64 %2246, i64* %RDX.i4024, align 8
  %2247 = load i64, i64* %6, align 8
  store i64 %2247, i64* %RDI.i4032.pre-phi, align 8
  %2248 = add i64 %2223, 28
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2247 to i64*
  store i64 4276968, i64* %2249, align 8
  %2250 = load i64, i64* %RBP.i, align 8
  %2251 = add i64 %2250, -280
  %2252 = load i64, i64* %3, align 8
  %2253 = add i64 %2252, 7
  store i64 %2253, i64* %3, align 8
  %2254 = inttoptr i64 %2251 to i64*
  %2255 = load i64, i64* %2254, align 8
  store i64 %2255, i64* %RDI.i4032.pre-phi, align 8
  %2256 = add i64 %2250, -248
  %2257 = add i64 %2252, 13
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RSI.i3037, align 8
  %2261 = add i64 %2252, 16381
  %2262 = add i64 %2252, 18
  %2263 = load i64, i64* %6, align 8
  %2264 = add i64 %2263, -8
  %2265 = inttoptr i64 %2264 to i64*
  store i64 %2262, i64* %2265, align 8
  store i64 %2264, i64* %6, align 8
  store i64 %2261, i64* %3, align 8
  %call2_401780 = tail call %struct.Memory* @sub_405770._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2261, %struct.Memory* %call2_401752)
  %2266 = load i64, i64* %RBP.i, align 8
  %2267 = add i64 %2266, -50
  %2268 = load i64, i64* %3, align 8
  %2269 = add i64 %2268, 4
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2267 to i16*
  %2271 = load i16, i16* %2270, align 2
  %2272 = sext i16 %2271 to i64
  %2273 = and i64 %2272, 4294967295
  store i64 %2273, i64* %RDX.i4024, align 8
  store i64 4277007, i64* %RAX.i4026, align 8
  store i64 4277007, i64* %RCX.i4028, align 8
  %2274 = add i64 %2266, -280
  %2275 = add i64 %2268, 18
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i64*
  %2277 = load i64, i64* %2276, align 8
  store i64 %2277, i64* %RDI.i4032.pre-phi, align 8
  %2278 = add i64 %2266, -248
  %2279 = add i64 %2268, 24
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i32*
  %2281 = load i32, i32* %2280, align 4
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RSI.i3037, align 8
  %2283 = add i64 %2268, 16667
  %2284 = add i64 %2268, 29
  %2285 = load i64, i64* %6, align 8
  %2286 = add i64 %2285, -8
  %2287 = inttoptr i64 %2286 to i64*
  store i64 %2284, i64* %2287, align 8
  store i64 %2286, i64* %6, align 8
  store i64 %2283, i64* %3, align 8
  %call2_40179d = tail call %struct.Memory* @sub_4058a0._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2283, %struct.Memory* %call2_401780)
  %2288 = load i64, i64* %RBP.i, align 8
  %2289 = add i64 %2288, -56
  %2290 = load i64, i64* %3, align 8
  %2291 = add i64 %2290, 5
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2289 to i16*
  %2293 = load i16, i16* %2292, align 2
  %2294 = sext i16 %2293 to i64
  %2295 = and i64 %2294, 4294967295
  store i64 %2295, i64* %474, align 8
  %2296 = add i64 %2288, -54
  %2297 = add i64 %2290, 10
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i16*
  %2299 = load i16, i16* %2298, align 2
  %2300 = sext i16 %2299 to i64
  %2301 = and i64 %2300, 4294967295
  store i64 %2301, i64* %247, align 8
  %2302 = add i64 %2288, -52
  %2303 = add i64 %2290, 14
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i16*
  %2305 = load i16, i16* %2304, align 2
  %2306 = sext i16 %2305 to i64
  %2307 = and i64 %2306, 4294967295
  store i64 %2307, i64* %RCX.i4028, align 8
  %2308 = add i64 %2288, -50
  %2309 = add i64 %2290, 18
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i16*
  %2311 = load i16, i16* %2310, align 2
  %2312 = sext i16 %2311 to i64
  %2313 = and i64 %2312, 4294967295
  store i64 %2313, i64* %RDX.i4024, align 8
  %2314 = load i64, i64* %6, align 8
  store i64 %2314, i64* %RDI.i4032.pre-phi, align 8
  %2315 = add i64 %2290, 28
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i64*
  store i64 4277032, i64* %2316, align 8
  %2317 = load i64, i64* %RBP.i, align 8
  %2318 = add i64 %2317, -280
  %2319 = load i64, i64* %3, align 8
  %2320 = add i64 %2319, 7
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2318 to i64*
  %2322 = load i64, i64* %2321, align 8
  store i64 %2322, i64* %RDI.i4032.pre-phi, align 8
  %2323 = add i64 %2317, -248
  %2324 = add i64 %2319, 13
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i32*
  %2326 = load i32, i32* %2325, align 4
  %2327 = zext i32 %2326 to i64
  store i64 %2327, i64* %RSI.i3037, align 8
  %2328 = add i64 %2319, 16802
  %2329 = add i64 %2319, 18
  %2330 = load i64, i64* %6, align 8
  %2331 = add i64 %2330, -8
  %2332 = inttoptr i64 %2331 to i64*
  store i64 %2329, i64* %2332, align 8
  store i64 %2331, i64* %6, align 8
  store i64 %2328, i64* %3, align 8
  %call2_4017cb = tail call %struct.Memory* @sub_405960._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2328, %struct.Memory* %call2_40179d)
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -56
  %2335 = load i64, i64* %3, align 8
  %2336 = add i64 %2335, 5
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i16*
  %2338 = load i16, i16* %2337, align 2
  %2339 = sext i16 %2338 to i64
  %2340 = and i64 %2339, 4294967295
  store i64 %2340, i64* %474, align 8
  %2341 = add i64 %2333, -54
  %2342 = add i64 %2335, 10
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i16*
  %2344 = load i16, i16* %2343, align 2
  %2345 = sext i16 %2344 to i64
  %2346 = and i64 %2345, 4294967295
  store i64 %2346, i64* %247, align 8
  %2347 = add i64 %2333, -52
  %2348 = add i64 %2335, 14
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i16*
  %2350 = load i16, i16* %2349, align 2
  %2351 = sext i16 %2350 to i64
  %2352 = and i64 %2351, 4294967295
  store i64 %2352, i64* %RCX.i4028, align 8
  %2353 = add i64 %2333, -50
  %2354 = add i64 %2335, 18
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i16*
  %2356 = load i16, i16* %2355, align 2
  %2357 = sext i16 %2356 to i64
  %2358 = and i64 %2357, 4294967295
  store i64 %2358, i64* %RDX.i4024, align 8
  %2359 = load i64, i64* %6, align 8
  store i64 %2359, i64* %RDI.i4032.pre-phi, align 8
  %2360 = add i64 %2335, 28
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i64*
  store i64 4277067, i64* %2361, align 8
  %2362 = load i64, i64* %RBP.i, align 8
  %2363 = add i64 %2362, -280
  %2364 = load i64, i64* %3, align 8
  %2365 = add i64 %2364, 7
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2363 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RDI.i4032.pre-phi, align 8
  %2368 = add i64 %2362, -248
  %2369 = add i64 %2364, 13
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RSI.i3037, align 8
  %2373 = add i64 %2364, 17060
  %2374 = add i64 %2364, 18
  %2375 = load i64, i64* %6, align 8
  %2376 = add i64 %2375, -8
  %2377 = inttoptr i64 %2376 to i64*
  store i64 %2374, i64* %2377, align 8
  store i64 %2376, i64* %6, align 8
  store i64 %2373, i64* %3, align 8
  %call2_4017f9 = tail call %struct.Memory* @sub_405a90._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2373, %struct.Memory* %call2_4017cb)
  %2378 = load i64, i64* %RBP.i, align 8
  %2379 = add i64 %2378, -56
  %2380 = load i64, i64* %3, align 8
  %2381 = add i64 %2380, 5
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2379 to i16*
  %2383 = load i16, i16* %2382, align 2
  %2384 = sext i16 %2383 to i64
  %2385 = and i64 %2384, 4294967295
  store i64 %2385, i64* %474, align 8
  %2386 = add i64 %2378, -54
  %2387 = add i64 %2380, 10
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i16*
  %2389 = load i16, i16* %2388, align 2
  %2390 = sext i16 %2389 to i64
  %2391 = and i64 %2390, 4294967295
  store i64 %2391, i64* %247, align 8
  %2392 = add i64 %2378, -52
  %2393 = add i64 %2380, 14
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i16*
  %2395 = load i16, i16* %2394, align 2
  %2396 = sext i16 %2395 to i64
  %2397 = and i64 %2396, 4294967295
  store i64 %2397, i64* %RCX.i4028, align 8
  %2398 = add i64 %2378, -50
  %2399 = add i64 %2380, 18
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i16*
  %2401 = load i16, i16* %2400, align 2
  %2402 = sext i16 %2401 to i64
  %2403 = and i64 %2402, 4294967295
  store i64 %2403, i64* %RDX.i4024, align 8
  %2404 = load i64, i64* %6, align 8
  store i64 %2404, i64* %RDI.i4032.pre-phi, align 8
  %2405 = add i64 %2380, 28
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i64*
  store i64 4277103, i64* %2406, align 8
  %2407 = load i64, i64* %RBP.i, align 8
  %2408 = add i64 %2407, -280
  %2409 = load i64, i64* %3, align 8
  %2410 = add i64 %2409, 7
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2408 to i64*
  %2412 = load i64, i64* %2411, align 8
  store i64 %2412, i64* %RDI.i4032.pre-phi, align 8
  %2413 = add i64 %2407, -248
  %2414 = add i64 %2409, 13
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RSI.i3037, align 8
  %2418 = add i64 %2409, 17318
  %2419 = add i64 %2409, 18
  %2420 = load i64, i64* %6, align 8
  %2421 = add i64 %2420, -8
  %2422 = inttoptr i64 %2421 to i64*
  store i64 %2419, i64* %2422, align 8
  store i64 %2421, i64* %6, align 8
  store i64 %2418, i64* %3, align 8
  %call2_401827 = tail call %struct.Memory* @sub_405bc0._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2418, %struct.Memory* %call2_4017f9)
  %2423 = load i64, i64* %RBP.i, align 8
  %2424 = add i64 %2423, -50
  %2425 = load i64, i64* %3, align 8
  %2426 = add i64 %2425, 4
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2424 to i16*
  %2428 = load i16, i16* %2427, align 2
  %2429 = sext i16 %2428 to i64
  %2430 = and i64 %2429, 4294967295
  store i64 %2430, i64* %RDX.i4024, align 8
  store i64 4277136, i64* %RAX.i4026, align 8
  store i64 4277136, i64* %RCX.i4028, align 8
  %2431 = add i64 %2423, -280
  %2432 = add i64 %2425, 18
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i64*
  %2434 = load i64, i64* %2433, align 8
  store i64 %2434, i64* %RDI.i4032.pre-phi, align 8
  %2435 = add i64 %2423, -248
  %2436 = add i64 %2425, 24
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RSI.i3037, align 8
  %2440 = add i64 %2425, 17604
  %2441 = add i64 %2425, 29
  %2442 = load i64, i64* %6, align 8
  %2443 = add i64 %2442, -8
  %2444 = inttoptr i64 %2443 to i64*
  store i64 %2441, i64* %2444, align 8
  store i64 %2443, i64* %6, align 8
  store i64 %2440, i64* %3, align 8
  %call2_401844 = tail call %struct.Memory* @sub_405cf0._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2440, %struct.Memory* %call2_401827)
  %2445 = load i64, i64* %RBP.i, align 8
  %2446 = add i64 %2445, -56
  %2447 = load i64, i64* %3, align 8
  %2448 = add i64 %2447, 5
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2446 to i16*
  %2450 = load i16, i16* %2449, align 2
  %2451 = sext i16 %2450 to i64
  %2452 = and i64 %2451, 4294967295
  store i64 %2452, i64* %474, align 8
  %2453 = add i64 %2445, -54
  %2454 = add i64 %2447, 10
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i16*
  %2456 = load i16, i16* %2455, align 2
  %2457 = sext i16 %2456 to i64
  %2458 = and i64 %2457, 4294967295
  store i64 %2458, i64* %247, align 8
  %2459 = add i64 %2445, -52
  %2460 = add i64 %2447, 14
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i16*
  %2462 = load i16, i16* %2461, align 2
  %2463 = sext i16 %2462 to i64
  %2464 = and i64 %2463, 4294967295
  store i64 %2464, i64* %RCX.i4028, align 8
  %2465 = add i64 %2445, -50
  %2466 = add i64 %2447, 18
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i16*
  %2468 = load i16, i16* %2467, align 2
  %2469 = sext i16 %2468 to i64
  %2470 = and i64 %2469, 4294967295
  store i64 %2470, i64* %RDX.i4024, align 8
  %2471 = load i64, i64* %6, align 8
  store i64 %2471, i64* %RDI.i4032.pre-phi, align 8
  %2472 = add i64 %2447, 28
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i64*
  store i64 4277158, i64* %2473, align 8
  %2474 = load i64, i64* %RBP.i, align 8
  %2475 = add i64 %2474, -280
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, 7
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2475 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RDI.i4032.pre-phi, align 8
  %2480 = add i64 %2474, -248
  %2481 = add i64 %2476, 13
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RSI.i3037, align 8
  %2485 = add i64 %2476, 17739
  %2486 = add i64 %2476, 18
  %2487 = load i64, i64* %6, align 8
  %2488 = add i64 %2487, -8
  %2489 = inttoptr i64 %2488 to i64*
  store i64 %2486, i64* %2489, align 8
  store i64 %2488, i64* %6, align 8
  store i64 %2485, i64* %3, align 8
  %call2_401872 = tail call %struct.Memory* @sub_405db0._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2485, %struct.Memory* %call2_401844)
  %2490 = load i64, i64* %RBP.i, align 8
  %2491 = add i64 %2490, -50
  %2492 = load i64, i64* %3, align 8
  %2493 = add i64 %2492, 4
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2491 to i16*
  %2495 = load i16, i16* %2494, align 2
  %2496 = sext i16 %2495 to i64
  %2497 = and i64 %2496, 4294967295
  store i64 %2497, i64* %RDX.i4024, align 8
  store i64 4277189, i64* %RAX.i4026, align 8
  store i64 4277189, i64* %RCX.i4028, align 8
  %2498 = add i64 %2490, -280
  %2499 = add i64 %2492, 18
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i64*
  %2501 = load i64, i64* %2500, align 8
  store i64 %2501, i64* %RDI.i4032.pre-phi, align 8
  %2502 = add i64 %2490, -248
  %2503 = add i64 %2492, 24
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RSI.i3037, align 8
  %2507 = add i64 %2492, 18025
  %2508 = add i64 %2492, 29
  %2509 = load i64, i64* %6, align 8
  %2510 = add i64 %2509, -8
  %2511 = inttoptr i64 %2510 to i64*
  store i64 %2508, i64* %2511, align 8
  store i64 %2510, i64* %6, align 8
  store i64 %2507, i64* %3, align 8
  %call2_40188f = tail call %struct.Memory* @sub_405ee0._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2507, %struct.Memory* %call2_401872)
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -56
  %2514 = load i64, i64* %3, align 8
  %2515 = add i64 %2514, 5
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2513 to i16*
  %2517 = load i16, i16* %2516, align 2
  %2518 = sext i16 %2517 to i64
  %2519 = and i64 %2518, 4294967295
  store i64 %2519, i64* %474, align 8
  %2520 = add i64 %2512, -54
  %2521 = add i64 %2514, 10
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i16*
  %2523 = load i16, i16* %2522, align 2
  %2524 = sext i16 %2523 to i64
  %2525 = and i64 %2524, 4294967295
  store i64 %2525, i64* %247, align 8
  %2526 = add i64 %2512, -52
  %2527 = add i64 %2514, 14
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i16*
  %2529 = load i16, i16* %2528, align 2
  %2530 = sext i16 %2529 to i64
  %2531 = and i64 %2530, 4294967295
  store i64 %2531, i64* %RCX.i4028, align 8
  %2532 = add i64 %2512, -50
  %2533 = add i64 %2514, 18
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i16*
  %2535 = load i16, i16* %2534, align 2
  %2536 = sext i16 %2535 to i64
  %2537 = and i64 %2536, 4294967295
  store i64 %2537, i64* %RDX.i4024, align 8
  %2538 = load i64, i64* %6, align 8
  store i64 %2538, i64* %RDI.i4032.pre-phi, align 8
  %2539 = add i64 %2514, 28
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2538 to i64*
  store i64 4277210, i64* %2540, align 8
  %2541 = load i64, i64* %RBP.i, align 8
  %2542 = add i64 %2541, -280
  %2543 = load i64, i64* %3, align 8
  %2544 = add i64 %2543, 7
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2542 to i64*
  %2546 = load i64, i64* %2545, align 8
  store i64 %2546, i64* %RDI.i4032.pre-phi, align 8
  %2547 = add i64 %2541, -248
  %2548 = add i64 %2543, 13
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i32*
  %2550 = load i32, i32* %2549, align 4
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RSI.i3037, align 8
  %2552 = add i64 %2543, 18160
  %2553 = add i64 %2543, 18
  %2554 = load i64, i64* %6, align 8
  %2555 = add i64 %2554, -8
  %2556 = inttoptr i64 %2555 to i64*
  store i64 %2553, i64* %2556, align 8
  store i64 %2555, i64* %6, align 8
  store i64 %2552, i64* %3, align 8
  %call2_4018bd = tail call %struct.Memory* @sub_405fa0._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2552, %struct.Memory* %call2_40188f)
  %2557 = load i64, i64* %RBP.i, align 8
  %2558 = add i64 %2557, -50
  %2559 = load i64, i64* %3, align 8
  %2560 = add i64 %2559, 4
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2558 to i16*
  %2562 = load i16, i16* %2561, align 2
  %2563 = sext i16 %2562 to i64
  %2564 = and i64 %2563, 4294967295
  store i64 %2564, i64* %RDX.i4024, align 8
  store i64 4277240, i64* %RAX.i4026, align 8
  store i64 4277240, i64* %RCX.i4028, align 8
  %2565 = add i64 %2557, -280
  %2566 = add i64 %2559, 18
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i64*
  %2568 = load i64, i64* %2567, align 8
  store i64 %2568, i64* %RDI.i4032.pre-phi, align 8
  %2569 = add i64 %2557, -248
  %2570 = add i64 %2559, 24
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = zext i32 %2572 to i64
  store i64 %2573, i64* %RSI.i3037, align 8
  %2574 = add i64 %2559, 18446
  %2575 = add i64 %2559, 29
  %2576 = load i64, i64* %6, align 8
  %2577 = add i64 %2576, -8
  %2578 = inttoptr i64 %2577 to i64*
  store i64 %2575, i64* %2578, align 8
  store i64 %2577, i64* %6, align 8
  store i64 %2574, i64* %3, align 8
  %call2_4018da = tail call %struct.Memory* @sub_4060d0._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2574, %struct.Memory* %call2_4018bd)
  %2579 = load i64, i64* %RBP.i, align 8
  %2580 = add i64 %2579, -56
  %2581 = load i64, i64* %3, align 8
  %2582 = add i64 %2581, 5
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2580 to i16*
  %2584 = load i16, i16* %2583, align 2
  %2585 = sext i16 %2584 to i64
  %2586 = and i64 %2585, 4294967295
  store i64 %2586, i64* %474, align 8
  %2587 = add i64 %2579, -54
  %2588 = add i64 %2581, 10
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i16*
  %2590 = load i16, i16* %2589, align 2
  %2591 = sext i16 %2590 to i64
  %2592 = and i64 %2591, 4294967295
  store i64 %2592, i64* %247, align 8
  %2593 = add i64 %2579, -52
  %2594 = add i64 %2581, 14
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i16*
  %2596 = load i16, i16* %2595, align 2
  %2597 = sext i16 %2596 to i64
  %2598 = and i64 %2597, 4294967295
  store i64 %2598, i64* %RCX.i4028, align 8
  %2599 = add i64 %2579, -50
  %2600 = add i64 %2581, 18
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i16*
  %2602 = load i16, i16* %2601, align 2
  %2603 = sext i16 %2602 to i64
  %2604 = and i64 %2603, 4294967295
  store i64 %2604, i64* %RDX.i4024, align 8
  %2605 = load i64, i64* %6, align 8
  store i64 %2605, i64* %RDI.i4032.pre-phi, align 8
  %2606 = add i64 %2581, 28
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i64*
  store i64 4277262, i64* %2607, align 8
  %2608 = load i64, i64* %RBP.i, align 8
  %2609 = add i64 %2608, -280
  %2610 = load i64, i64* %3, align 8
  %2611 = add i64 %2610, 7
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2609 to i64*
  %2613 = load i64, i64* %2612, align 8
  store i64 %2613, i64* %RDI.i4032.pre-phi, align 8
  %2614 = add i64 %2608, -248
  %2615 = add i64 %2610, 13
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2614 to i32*
  %2617 = load i32, i32* %2616, align 4
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RSI.i3037, align 8
  %2619 = add i64 %2610, 18581
  %2620 = add i64 %2610, 18
  %2621 = load i64, i64* %6, align 8
  %2622 = add i64 %2621, -8
  %2623 = inttoptr i64 %2622 to i64*
  store i64 %2620, i64* %2623, align 8
  store i64 %2622, i64* %6, align 8
  store i64 %2619, i64* %3, align 8
  %call2_401908 = tail call %struct.Memory* @sub_406190._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2619, %struct.Memory* %call2_4018da)
  %2624 = load i64, i64* %3, align 8
  %2625 = add i64 %2624, 2197371
  %2626 = add i64 %2624, 8
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to double*
  %2628 = load double, double* %2627, align 8
  %2629 = tail call double @llvm.trunc.f64(double %2628)
  %2630 = tail call double @llvm.fabs.f64(double %2629)
  %2631 = fcmp ogt double %2630, 0x41DFFFFFFFC00000
  %2632 = fptosi double %2629 to i32
  %2633 = zext i32 %2632 to i64
  %2634 = select i1 %2631, i64 2147483648, i64 %2633
  store i64 6686144, i64* %RCX.i4028, align 8
  store i64 6686144, i64* %RDI.i4032.pre-phi, align 8
  %2635 = trunc i64 %2634 to i16
  store i16 %2635, i16* %R14W.i3107, align 2
  %2636 = and i64 %2634, 65535
  store i64 %2636, i64* %RDX.i4024, align 8
  store i64 6702144, i64* %RAX.i4026, align 8
  store i64 6702144, i64* %RSI.i3037, align 8
  %2637 = load i64, i64* %RBP.i, align 8
  %2638 = add i64 %2637, -296
  %2639 = add i64 %2624, 37
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2638 to i64*
  store i64 6686144, i64* %2640, align 8
  %2641 = load i64, i64* %3, align 8
  %2642 = add i64 %2641, 18830
  %2643 = add i64 %2641, 5
  %2644 = load i64, i64* %6, align 8
  %2645 = add i64 %2644, -8
  %2646 = inttoptr i64 %2645 to i64*
  store i64 %2643, i64* %2646, align 8
  store i64 %2645, i64* %6, align 8
  store i64 %2642, i64* %3, align 8
  %call2_401932 = tail call %struct.Memory* @sub_4062c0._Z4fillIPttEvT_S1_T0_(%struct.State* nonnull %0, i64 %2642, %struct.Memory* %call2_401908)
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -40
  %2649 = load i64, i64* %3, align 8
  %2650 = add i64 %2649, 5
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2648 to double*
  %2652 = load double, double* %2651, align 8
  %2653 = tail call double @llvm.trunc.f64(double %2652)
  %2654 = tail call double @llvm.fabs.f64(double %2653)
  %2655 = fcmp ogt double %2654, 0x41DFFFFFFFC00000
  %2656 = fptosi double %2653 to i32
  %2657 = zext i32 %2656 to i64
  %2658 = select i1 %2655, i64 2147483648, i64 %2657
  store i64 %2658, i64* %RAX.i4026, align 8
  %2659 = trunc i64 %2658 to i16
  store i16 %2659, i16* %R14W.i3107, align 2
  %2660 = add i64 %2647, -58
  %2661 = add i64 %2649, 14
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i16*
  store i16 %2659, i16* %2662, align 2
  %2663 = load i64, i64* %RBP.i, align 8
  %2664 = add i64 %2663, -58
  %2665 = load i64, i64* %3, align 8
  %2666 = add i64 %2665, 4
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2664 to i16*
  %2668 = load i16, i16* %2667, align 2
  %2669 = zext i16 %2668 to i32
  %2670 = zext i16 %2668 to i32
  %2671 = add nuw nsw i32 %2669, %2670
  %2672 = zext i32 %2671 to i64
  store i64 %2672, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %2673 = and i32 %2671, 255
  %2674 = tail call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %33, align 1
  %2678 = lshr i32 %2671, 4
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  store i8 %2680, i8* %39, align 1
  %2681 = icmp eq i32 %2671, 0
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2683 = trunc i32 %2671 to i16
  store i16 %2683, i16* %R14W.i3107, align 2
  %2684 = add i64 %2663, -60
  %2685 = add i64 %2665, 15
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i16*
  store i16 %2683, i16* %2686, align 2
  %2687 = load i64, i64* %RBP.i, align 8
  %2688 = add i64 %2687, -58
  %2689 = load i64, i64* %3, align 8
  %2690 = add i64 %2689, 4
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2688 to i16*
  %2692 = load i16, i16* %2691, align 2
  %2693 = zext i16 %2692 to i32
  %2694 = add nuw nsw i32 %2693, 2
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %2696 = and i32 %2694, 255
  %2697 = tail call i32 @llvm.ctpop.i32(i32 %2696)
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  store i8 %2700, i8* %33, align 1
  %2701 = xor i32 %2694, %2693
  %2702 = lshr i32 %2701, 4
  %2703 = trunc i32 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2705 = trunc i32 %2694 to i16
  store i16 %2705, i16* %R14W.i3107, align 2
  %2706 = add i64 %2687, -62
  %2707 = add i64 %2689, 16
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i16*
  store i16 %2705, i16* %2708, align 2
  %2709 = load i64, i64* %RBP.i, align 8
  %2710 = add i64 %2709, -58
  %2711 = load i64, i64* %3, align 8
  %2712 = add i64 %2711, 4
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2710 to i16*
  %2714 = load i16, i16* %2713, align 2
  %2715 = zext i16 %2714 to i64
  store i64 %2715, i64* %RAX.i4026, align 8
  %2716 = add i64 %2709, -60
  %2717 = add i64 %2711, 8
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i16*
  %2719 = load i16, i16* %2718, align 2
  %2720 = zext i16 %2719 to i64
  store i64 %2720, i64* %RCX.i4028, align 8
  %2721 = add i64 %2709, -62
  %2722 = add i64 %2711, 12
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i16*
  %2724 = load i16, i16* %2723, align 2
  %2725 = zext i16 %2724 to i64
  store i64 %2725, i64* %RDX.i4024, align 8
  %2726 = add i64 %2709, -300
  %2727 = zext i16 %2714 to i32
  %2728 = add i64 %2711, 18
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2726 to i32*
  store i32 %2727, i32* %2729, align 4
  %2730 = load i32, i32* %ECX.i3562, align 4
  %2731 = zext i32 %2730 to i64
  %2732 = load i64, i64* %3, align 8
  store i64 %2731, i64* %RAX.i4026, align 8
  %2733 = load i64, i64* %RBP.i, align 8
  %2734 = add i64 %2733, -268
  %2735 = add i64 %2732, 8
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = zext i32 %2737 to i64
  store i64 %2738, i64* %RCX.i4028, align 8
  %2739 = add i64 %2733, -304
  %2740 = load i32, i32* %EDX.i4021, align 4
  %2741 = add i64 %2732, 14
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2739 to i32*
  store i32 %2740, i32* %2742, align 4
  %2743 = load i32, i32* %ECX.i3562, align 4
  %2744 = zext i32 %2743 to i64
  %2745 = load i64, i64* %3, align 8
  store i64 %2744, i64* %RDX.i4024, align 8
  %2746 = load i64, i64* %RBP.i, align 8
  %2747 = add i64 %2746, -304
  %2748 = add i64 %2745, 9
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %247, align 8
  %2752 = add i64 %2745, 12
  store i64 %2752, i64* %3, align 8
  %2753 = load i32, i32* %EAX.i4011, align 8
  %2754 = zext i32 %2753 to i64
  %2755 = shl nuw i64 %2744, 32
  %2756 = or i64 %2755, %2754
  %2757 = udiv i64 %2756, %2751
  %2758 = and i64 %2757, 4294967295
  %2759 = icmp eq i64 %2757, %2758
  br i1 %2759, label %2762, label %2760

; <label>:2760:                                   ; preds = %routine_idivl__ecx.exit3035
  %2761 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2752, %struct.Memory* %call2_401932)
  %.pre16 = load i64, i64* %RBP.i, align 8
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i32, i32* %EAX.i4011, align 4
  br label %routine_divl__r8d.exit2577

; <label>:2762:                                   ; preds = %routine_idivl__ecx.exit3035
  %2763 = urem i64 %2756, %2751
  store i64 %2757, i64* %RAX.i4026, align 8
  store i64 %2763, i64* %RDX.i4024, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2764 = trunc i64 %2757 to i32
  br label %routine_divl__r8d.exit2577

routine_divl__r8d.exit2577:                       ; preds = %2762, %2760
  %2765 = phi i32 [ %.pre18, %2760 ], [ %2764, %2762 ]
  %2766 = phi i64 [ %.pre17, %2760 ], [ %2752, %2762 ]
  %2767 = phi i64 [ %.pre16, %2760 ], [ %2746, %2762 ]
  %2768 = phi %struct.Memory* [ %2761, %2760 ], [ %call2_401932, %2762 ]
  %2769 = add i64 %2767, -300
  %2770 = add i64 %2766, 6
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = add i32 %2765, %2772
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RDX.i4024, align 8
  %2775 = icmp ult i32 %2773, %2772
  %2776 = icmp ult i32 %2773, %2765
  %2777 = or i1 %2775, %2776
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %26, align 1
  %2779 = and i32 %2773, 255
  %2780 = tail call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  store i8 %2783, i8* %33, align 1
  %2784 = xor i32 %2765, %2772
  %2785 = xor i32 %2784, %2773
  %2786 = lshr i32 %2785, 4
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  store i8 %2788, i8* %39, align 1
  %2789 = icmp eq i32 %2773, 0
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %42, align 1
  %2791 = lshr i32 %2773, 31
  %2792 = trunc i32 %2791 to i8
  store i8 %2792, i8* %45, align 1
  %2793 = lshr i32 %2772, 31
  %2794 = lshr i32 %2765, 31
  %2795 = xor i32 %2791, %2793
  %2796 = xor i32 %2791, %2794
  %2797 = add nuw nsw i32 %2795, %2796
  %2798 = icmp eq i32 %2797, 2
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %51, align 1
  %2800 = trunc i32 %2773 to i16
  store i16 %2800, i16* %R14W.i3107, align 2
  %2801 = add i64 %2767, -64
  %2802 = add i64 %2766, 17
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i16*
  store i16 %2800, i16* %2803, align 2
  %2804 = load i64, i64* %RBP.i, align 8
  %2805 = add i64 %2804, -58
  %2806 = load i64, i64* %3, align 8
  %2807 = add i64 %2806, 4
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2805 to i16*
  %2809 = load i16, i16* %2808, align 2
  %2810 = zext i16 %2809 to i64
  store i64 %2810, i64* %RDX.i4024, align 8
  store i64 4276754, i64* %RAX.i4026, align 8
  store i64 4276754, i64* %RCX.i4028, align 8
  %2811 = add i64 %2804, -296
  %2812 = add i64 %2806, 18
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i64*
  %2814 = load i64, i64* %2813, align 8
  store i64 %2814, i64* %RDI.i4032.pre-phi, align 8
  %2815 = add i64 %2804, -248
  %2816 = add i64 %2806, 24
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  %2819 = zext i32 %2818 to i64
  store i64 %2819, i64* %RSI.i3037, align 8
  %2820 = add i64 %2806, 18783
  %2821 = add i64 %2806, 29
  %2822 = load i64, i64* %6, align 8
  %2823 = add i64 %2822, -8
  %2824 = inttoptr i64 %2823 to i64*
  store i64 %2821, i64* %2824, align 8
  store i64 %2823, i64* %6, align 8
  store i64 %2820, i64* %3, align 8
  %call2_4019b9 = tail call %struct.Memory* @sub_406300._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2820, %struct.Memory* %2768)
  %2825 = load i64, i64* %RBP.i, align 8
  %2826 = add i64 %2825, -58
  %2827 = load i64, i64* %3, align 8
  %2828 = add i64 %2827, 4
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2826 to i16*
  %2830 = load i16, i16* %2829, align 2
  %2831 = zext i16 %2830 to i64
  store i64 %2831, i64* %RDX.i4024, align 8
  store i64 4276776, i64* %RAX.i4026, align 8
  store i64 4276776, i64* %RCX.i4028, align 8
  %2832 = add i64 %2825, -296
  %2833 = add i64 %2827, 18
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i64*
  %2835 = load i64, i64* %2834, align 8
  store i64 %2835, i64* %RDI.i4032.pre-phi, align 8
  %2836 = add i64 %2825, -248
  %2837 = add i64 %2827, 24
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RSI.i3037, align 8
  %2841 = add i64 %2827, 18946
  %2842 = add i64 %2827, 29
  %2843 = load i64, i64* %6, align 8
  %2844 = add i64 %2843, -8
  %2845 = inttoptr i64 %2844 to i64*
  store i64 %2842, i64* %2845, align 8
  store i64 %2844, i64* %6, align 8
  store i64 %2841, i64* %3, align 8
  %call2_4019d6 = tail call %struct.Memory* @sub_4063c0._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2841, %struct.Memory* %call2_4019b9)
  %2846 = load i64, i64* %RBP.i, align 8
  %2847 = add i64 %2846, -64
  %2848 = load i64, i64* %3, align 8
  %2849 = add i64 %2848, 5
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2847 to i16*
  %2851 = load i16, i16* %2850, align 2
  %2852 = zext i16 %2851 to i64
  store i64 %2852, i64* %474, align 8
  %2853 = add i64 %2846, -62
  %2854 = add i64 %2848, 10
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i16*
  %2856 = load i16, i16* %2855, align 2
  %2857 = zext i16 %2856 to i64
  store i64 %2857, i64* %247, align 8
  %2858 = add i64 %2846, -60
  %2859 = add i64 %2848, 14
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i16*
  %2861 = load i16, i16* %2860, align 2
  %2862 = zext i16 %2861 to i64
  store i64 %2862, i64* %RCX.i4028, align 8
  %2863 = add i64 %2846, -58
  %2864 = add i64 %2848, 18
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i16*
  %2866 = load i16, i16* %2865, align 2
  %2867 = zext i16 %2866 to i64
  store i64 %2867, i64* %RDX.i4024, align 8
  %2868 = load i64, i64* %6, align 8
  store i64 %2868, i64* %RDI.i4032.pre-phi, align 8
  %2869 = add i64 %2848, 28
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i64*
  store i64 4276806, i64* %2870, align 8
  %2871 = load i64, i64* %RBP.i, align 8
  %2872 = add i64 %2871, -296
  %2873 = load i64, i64* %3, align 8
  %2874 = add i64 %2873, 7
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2872 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %RDI.i4032.pre-phi, align 8
  %2877 = add i64 %2871, -248
  %2878 = add i64 %2873, 13
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = zext i32 %2880 to i64
  store i64 %2881, i64* %RSI.i3037, align 8
  %2882 = add i64 %2873, 19081
  %2883 = add i64 %2873, 18
  %2884 = load i64, i64* %6, align 8
  %2885 = add i64 %2884, -8
  %2886 = inttoptr i64 %2885 to i64*
  store i64 %2883, i64* %2886, align 8
  store i64 %2885, i64* %6, align 8
  store i64 %2882, i64* %3, align 8
  %call2_401a04 = tail call %struct.Memory* @sub_406480._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2882, %struct.Memory* %call2_4019d6)
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -58
  %2889 = load i64, i64* %3, align 8
  %2890 = add i64 %2889, 4
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2888 to i16*
  %2892 = load i16, i16* %2891, align 2
  %2893 = zext i16 %2892 to i64
  store i64 %2893, i64* %RDX.i4024, align 8
  store i64 4276838, i64* %RAX.i4026, align 8
  store i64 4276838, i64* %RCX.i4028, align 8
  %2894 = add i64 %2887, -296
  %2895 = add i64 %2889, 18
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i64*
  %2897 = load i64, i64* %2896, align 8
  store i64 %2897, i64* %RDI.i4032.pre-phi, align 8
  %2898 = add i64 %2887, -248
  %2899 = add i64 %2889, 24
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = zext i32 %2901 to i64
  store i64 %2902, i64* %RSI.i3037, align 8
  %2903 = add i64 %2889, 19367
  %2904 = add i64 %2889, 29
  %2905 = load i64, i64* %6, align 8
  %2906 = add i64 %2905, -8
  %2907 = inttoptr i64 %2906 to i64*
  store i64 %2904, i64* %2907, align 8
  store i64 %2906, i64* %6, align 8
  store i64 %2903, i64* %3, align 8
  %call2_401a21 = tail call %struct.Memory* @sub_4065b0._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2903, %struct.Memory* %call2_401a04)
  %2908 = load i64, i64* %RBP.i, align 8
  %2909 = add i64 %2908, -64
  %2910 = load i64, i64* %3, align 8
  %2911 = add i64 %2910, 5
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2909 to i16*
  %2913 = load i16, i16* %2912, align 2
  %2914 = zext i16 %2913 to i64
  store i64 %2914, i64* %474, align 8
  %2915 = add i64 %2908, -62
  %2916 = add i64 %2910, 10
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i16*
  %2918 = load i16, i16* %2917, align 2
  %2919 = zext i16 %2918 to i64
  store i64 %2919, i64* %247, align 8
  %2920 = add i64 %2908, -60
  %2921 = add i64 %2910, 14
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i16*
  %2923 = load i16, i16* %2922, align 2
  %2924 = zext i16 %2923 to i64
  store i64 %2924, i64* %RCX.i4028, align 8
  %2925 = add i64 %2908, -58
  %2926 = add i64 %2910, 18
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i16*
  %2928 = load i16, i16* %2927, align 2
  %2929 = zext i16 %2928 to i64
  store i64 %2929, i64* %RDX.i4024, align 8
  %2930 = load i64, i64* %6, align 8
  store i64 %2930, i64* %RDI.i4032.pre-phi, align 8
  %2931 = add i64 %2910, 28
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i64*
  store i64 4276865, i64* %2932, align 8
  %2933 = load i64, i64* %RBP.i, align 8
  %2934 = add i64 %2933, -296
  %2935 = load i64, i64* %3, align 8
  %2936 = add i64 %2935, 7
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2934 to i64*
  %2938 = load i64, i64* %2937, align 8
  store i64 %2938, i64* %RDI.i4032.pre-phi, align 8
  %2939 = add i64 %2933, -248
  %2940 = add i64 %2935, 13
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i32*
  %2942 = load i32, i32* %2941, align 4
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RSI.i3037, align 8
  %2944 = add i64 %2935, 19502
  %2945 = add i64 %2935, 18
  %2946 = load i64, i64* %6, align 8
  %2947 = add i64 %2946, -8
  %2948 = inttoptr i64 %2947 to i64*
  store i64 %2945, i64* %2948, align 8
  store i64 %2947, i64* %6, align 8
  store i64 %2944, i64* %3, align 8
  %call2_401a4f = tail call %struct.Memory* @sub_406670._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %2944, %struct.Memory* %call2_401a21)
  %2949 = load i64, i64* %RBP.i, align 8
  %2950 = add i64 %2949, -58
  %2951 = load i64, i64* %3, align 8
  %2952 = add i64 %2951, 4
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2950 to i16*
  %2954 = load i16, i16* %2953, align 2
  %2955 = zext i16 %2954 to i64
  store i64 %2955, i64* %RDX.i4024, align 8
  store i64 4276902, i64* %RAX.i4026, align 8
  store i64 4276902, i64* %RCX.i4028, align 8
  %2956 = add i64 %2949, -296
  %2957 = add i64 %2951, 18
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i64*
  %2959 = load i64, i64* %2958, align 8
  store i64 %2959, i64* %RDI.i4032.pre-phi, align 8
  %2960 = add i64 %2949, -248
  %2961 = add i64 %2951, 24
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to i32*
  %2963 = load i32, i32* %2962, align 4
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RSI.i3037, align 8
  %2965 = add i64 %2951, 19788
  %2966 = add i64 %2951, 29
  %2967 = load i64, i64* %6, align 8
  %2968 = add i64 %2967, -8
  %2969 = inttoptr i64 %2968 to i64*
  store i64 %2966, i64* %2969, align 8
  store i64 %2968, i64* %6, align 8
  store i64 %2965, i64* %3, align 8
  %call2_401a6c = tail call %struct.Memory* @sub_4067a0._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %2965, %struct.Memory* %call2_401a4f)
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -64
  %2972 = load i64, i64* %3, align 8
  %2973 = add i64 %2972, 5
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2971 to i16*
  %2975 = load i16, i16* %2974, align 2
  %2976 = zext i16 %2975 to i64
  store i64 %2976, i64* %474, align 8
  %2977 = add i64 %2970, -62
  %2978 = add i64 %2972, 10
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i16*
  %2980 = load i16, i16* %2979, align 2
  %2981 = zext i16 %2980 to i64
  store i64 %2981, i64* %247, align 8
  %2982 = add i64 %2970, -60
  %2983 = add i64 %2972, 14
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i16*
  %2985 = load i16, i16* %2984, align 2
  %2986 = zext i16 %2985 to i64
  store i64 %2986, i64* %RCX.i4028, align 8
  %2987 = add i64 %2970, -58
  %2988 = add i64 %2972, 18
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i16*
  %2990 = load i16, i16* %2989, align 2
  %2991 = zext i16 %2990 to i64
  store i64 %2991, i64* %RDX.i4024, align 8
  %2992 = load i64, i64* %6, align 8
  store i64 %2992, i64* %RDI.i4032.pre-phi, align 8
  %2993 = add i64 %2972, 28
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i64*
  store i64 4276929, i64* %2994, align 8
  %2995 = load i64, i64* %RBP.i, align 8
  %2996 = add i64 %2995, -296
  %2997 = load i64, i64* %3, align 8
  %2998 = add i64 %2997, 7
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2996 to i64*
  %3000 = load i64, i64* %2999, align 8
  store i64 %3000, i64* %RDI.i4032.pre-phi, align 8
  %3001 = add i64 %2995, -248
  %3002 = add i64 %2997, 13
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i32*
  %3004 = load i32, i32* %3003, align 4
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %RSI.i3037, align 8
  %3006 = add i64 %2997, 19923
  %3007 = add i64 %2997, 18
  %3008 = load i64, i64* %6, align 8
  %3009 = add i64 %3008, -8
  %3010 = inttoptr i64 %3009 to i64*
  store i64 %3007, i64* %3010, align 8
  store i64 %3009, i64* %6, align 8
  store i64 %3006, i64* %3, align 8
  %call2_401a9a = tail call %struct.Memory* @sub_406860._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3006, %struct.Memory* %call2_401a6c)
  %3011 = load i64, i64* %RBP.i, align 8
  %3012 = add i64 %3011, -64
  %3013 = load i64, i64* %3, align 8
  %3014 = add i64 %3013, 5
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3012 to i16*
  %3016 = load i16, i16* %3015, align 2
  %3017 = zext i16 %3016 to i64
  store i64 %3017, i64* %474, align 8
  %3018 = add i64 %3011, -62
  %3019 = add i64 %3013, 10
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i16*
  %3021 = load i16, i16* %3020, align 2
  %3022 = zext i16 %3021 to i64
  store i64 %3022, i64* %247, align 8
  %3023 = add i64 %3011, -60
  %3024 = add i64 %3013, 14
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3023 to i16*
  %3026 = load i16, i16* %3025, align 2
  %3027 = zext i16 %3026 to i64
  store i64 %3027, i64* %RCX.i4028, align 8
  %3028 = add i64 %3011, -58
  %3029 = add i64 %3013, 18
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i16*
  %3031 = load i16, i16* %3030, align 2
  %3032 = zext i16 %3031 to i64
  store i64 %3032, i64* %RDX.i4024, align 8
  %3033 = load i64, i64* %6, align 8
  store i64 %3033, i64* %RDI.i4032.pre-phi, align 8
  %3034 = add i64 %3013, 28
  store i64 %3034, i64* %3, align 8
  %3035 = inttoptr i64 %3033 to i64*
  store i64 4276967, i64* %3035, align 8
  %3036 = load i64, i64* %RBP.i, align 8
  %3037 = add i64 %3036, -296
  %3038 = load i64, i64* %3, align 8
  %3039 = add i64 %3038, 7
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3037 to i64*
  %3041 = load i64, i64* %3040, align 8
  store i64 %3041, i64* %RDI.i4032.pre-phi, align 8
  %3042 = add i64 %3036, -248
  %3043 = add i64 %3038, 13
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RSI.i3037, align 8
  %3047 = add i64 %3038, 20181
  %3048 = add i64 %3038, 18
  %3049 = load i64, i64* %6, align 8
  %3050 = add i64 %3049, -8
  %3051 = inttoptr i64 %3050 to i64*
  store i64 %3048, i64* %3051, align 8
  store i64 %3050, i64* %6, align 8
  store i64 %3047, i64* %3, align 8
  %call2_401ac8 = tail call %struct.Memory* @sub_406990._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3047, %struct.Memory* %call2_401a9a)
  %3052 = load i64, i64* %RBP.i, align 8
  %3053 = add i64 %3052, -58
  %3054 = load i64, i64* %3, align 8
  %3055 = add i64 %3054, 4
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3053 to i16*
  %3057 = load i16, i16* %3056, align 2
  %3058 = zext i16 %3057 to i64
  store i64 %3058, i64* %RDX.i4024, align 8
  store i64 4277006, i64* %RAX.i4026, align 8
  store i64 4277006, i64* %RCX.i4028, align 8
  %3059 = add i64 %3052, -296
  %3060 = add i64 %3054, 18
  store i64 %3060, i64* %3, align 8
  %3061 = inttoptr i64 %3059 to i64*
  %3062 = load i64, i64* %3061, align 8
  store i64 %3062, i64* %RDI.i4032.pre-phi, align 8
  %3063 = add i64 %3052, -248
  %3064 = add i64 %3054, 24
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RSI.i3037, align 8
  %3068 = add i64 %3054, 20467
  %3069 = add i64 %3054, 29
  %3070 = load i64, i64* %6, align 8
  %3071 = add i64 %3070, -8
  %3072 = inttoptr i64 %3071 to i64*
  store i64 %3069, i64* %3072, align 8
  store i64 %3071, i64* %6, align 8
  store i64 %3068, i64* %3, align 8
  %call2_401ae5 = tail call %struct.Memory* @sub_406ac0._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3068, %struct.Memory* %call2_401ac8)
  %3073 = load i64, i64* %RBP.i, align 8
  %3074 = add i64 %3073, -64
  %3075 = load i64, i64* %3, align 8
  %3076 = add i64 %3075, 5
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3074 to i16*
  %3078 = load i16, i16* %3077, align 2
  %3079 = zext i16 %3078 to i64
  store i64 %3079, i64* %474, align 8
  %3080 = add i64 %3073, -62
  %3081 = add i64 %3075, 10
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i16*
  %3083 = load i16, i16* %3082, align 2
  %3084 = zext i16 %3083 to i64
  store i64 %3084, i64* %247, align 8
  %3085 = add i64 %3073, -60
  %3086 = add i64 %3075, 14
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i16*
  %3088 = load i16, i16* %3087, align 2
  %3089 = zext i16 %3088 to i64
  store i64 %3089, i64* %RCX.i4028, align 8
  %3090 = add i64 %3073, -58
  %3091 = add i64 %3075, 18
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i16*
  %3093 = load i16, i16* %3092, align 2
  %3094 = zext i16 %3093 to i64
  store i64 %3094, i64* %RDX.i4024, align 8
  %3095 = load i64, i64* %6, align 8
  store i64 %3095, i64* %RDI.i4032.pre-phi, align 8
  %3096 = add i64 %3075, 28
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i64*
  store i64 4277031, i64* %3097, align 8
  %3098 = load i64, i64* %RBP.i, align 8
  %3099 = add i64 %3098, -296
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, 7
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3099 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i64 %3103, i64* %RDI.i4032.pre-phi, align 8
  %3104 = add i64 %3098, -248
  %3105 = add i64 %3100, 13
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = zext i32 %3107 to i64
  store i64 %3108, i64* %RSI.i3037, align 8
  %3109 = add i64 %3100, 20602
  %3110 = add i64 %3100, 18
  %3111 = load i64, i64* %6, align 8
  %3112 = add i64 %3111, -8
  %3113 = inttoptr i64 %3112 to i64*
  store i64 %3110, i64* %3113, align 8
  store i64 %3112, i64* %6, align 8
  store i64 %3109, i64* %3, align 8
  %call2_401b13 = tail call %struct.Memory* @sub_406b80._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3109, %struct.Memory* %call2_401ae5)
  %3114 = load i64, i64* %RBP.i, align 8
  %3115 = add i64 %3114, -64
  %3116 = load i64, i64* %3, align 8
  %3117 = add i64 %3116, 5
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3115 to i16*
  %3119 = load i16, i16* %3118, align 2
  %3120 = zext i16 %3119 to i64
  store i64 %3120, i64* %474, align 8
  %3121 = add i64 %3114, -62
  %3122 = add i64 %3116, 10
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i16*
  %3124 = load i16, i16* %3123, align 2
  %3125 = zext i16 %3124 to i64
  store i64 %3125, i64* %247, align 8
  %3126 = add i64 %3114, -60
  %3127 = add i64 %3116, 14
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i16*
  %3129 = load i16, i16* %3128, align 2
  %3130 = zext i16 %3129 to i64
  store i64 %3130, i64* %RCX.i4028, align 8
  %3131 = add i64 %3114, -58
  %3132 = add i64 %3116, 18
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i16*
  %3134 = load i16, i16* %3133, align 2
  %3135 = zext i16 %3134 to i64
  store i64 %3135, i64* %RDX.i4024, align 8
  %3136 = load i64, i64* %6, align 8
  store i64 %3136, i64* %RDI.i4032.pre-phi, align 8
  %3137 = add i64 %3116, 28
  store i64 %3137, i64* %3, align 8
  %3138 = inttoptr i64 %3136 to i64*
  store i64 4277066, i64* %3138, align 8
  %3139 = load i64, i64* %RBP.i, align 8
  %3140 = add i64 %3139, -296
  %3141 = load i64, i64* %3, align 8
  %3142 = add i64 %3141, 7
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3140 to i64*
  %3144 = load i64, i64* %3143, align 8
  store i64 %3144, i64* %RDI.i4032.pre-phi, align 8
  %3145 = add i64 %3139, -248
  %3146 = add i64 %3141, 13
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = zext i32 %3148 to i64
  store i64 %3149, i64* %RSI.i3037, align 8
  %3150 = add i64 %3141, 20860
  %3151 = add i64 %3141, 18
  %3152 = load i64, i64* %6, align 8
  %3153 = add i64 %3152, -8
  %3154 = inttoptr i64 %3153 to i64*
  store i64 %3151, i64* %3154, align 8
  store i64 %3153, i64* %6, align 8
  store i64 %3150, i64* %3, align 8
  %call2_401b41 = tail call %struct.Memory* @sub_406cb0._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3150, %struct.Memory* %call2_401b13)
  %3155 = load i64, i64* %RBP.i, align 8
  %3156 = add i64 %3155, -64
  %3157 = load i64, i64* %3, align 8
  %3158 = add i64 %3157, 5
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3156 to i16*
  %3160 = load i16, i16* %3159, align 2
  %3161 = zext i16 %3160 to i64
  store i64 %3161, i64* %474, align 8
  %3162 = add i64 %3155, -62
  %3163 = add i64 %3157, 10
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i16*
  %3165 = load i16, i16* %3164, align 2
  %3166 = zext i16 %3165 to i64
  store i64 %3166, i64* %247, align 8
  %3167 = add i64 %3155, -60
  %3168 = add i64 %3157, 14
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i16*
  %3170 = load i16, i16* %3169, align 2
  %3171 = zext i16 %3170 to i64
  store i64 %3171, i64* %RCX.i4028, align 8
  %3172 = add i64 %3155, -58
  %3173 = add i64 %3157, 18
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3172 to i16*
  %3175 = load i16, i16* %3174, align 2
  %3176 = zext i16 %3175 to i64
  store i64 %3176, i64* %RDX.i4024, align 8
  %3177 = load i64, i64* %6, align 8
  store i64 %3177, i64* %RDI.i4032.pre-phi, align 8
  %3178 = add i64 %3157, 28
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i64*
  store i64 4277102, i64* %3179, align 8
  %3180 = load i64, i64* %RBP.i, align 8
  %3181 = add i64 %3180, -296
  %3182 = load i64, i64* %3, align 8
  %3183 = add i64 %3182, 7
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3181 to i64*
  %3185 = load i64, i64* %3184, align 8
  store i64 %3185, i64* %RDI.i4032.pre-phi, align 8
  %3186 = add i64 %3180, -248
  %3187 = add i64 %3182, 13
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i32*
  %3189 = load i32, i32* %3188, align 4
  %3190 = zext i32 %3189 to i64
  store i64 %3190, i64* %RSI.i3037, align 8
  %3191 = add i64 %3182, 21118
  %3192 = add i64 %3182, 18
  %3193 = load i64, i64* %6, align 8
  %3194 = add i64 %3193, -8
  %3195 = inttoptr i64 %3194 to i64*
  store i64 %3192, i64* %3195, align 8
  store i64 %3194, i64* %6, align 8
  store i64 %3191, i64* %3, align 8
  %call2_401b6f = tail call %struct.Memory* @sub_406de0._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3191, %struct.Memory* %call2_401b41)
  %3196 = load i64, i64* %RBP.i, align 8
  %3197 = add i64 %3196, -58
  %3198 = load i64, i64* %3, align 8
  %3199 = add i64 %3198, 4
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3197 to i16*
  %3201 = load i16, i16* %3200, align 2
  %3202 = zext i16 %3201 to i64
  store i64 %3202, i64* %RDX.i4024, align 8
  store i64 4277135, i64* %RAX.i4026, align 8
  store i64 4277135, i64* %RCX.i4028, align 8
  %3203 = add i64 %3196, -296
  %3204 = add i64 %3198, 18
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i64*
  %3206 = load i64, i64* %3205, align 8
  store i64 %3206, i64* %RDI.i4032.pre-phi, align 8
  %3207 = add i64 %3196, -248
  %3208 = add i64 %3198, 24
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RSI.i3037, align 8
  %3212 = add i64 %3198, 21404
  %3213 = add i64 %3198, 29
  %3214 = load i64, i64* %6, align 8
  %3215 = add i64 %3214, -8
  %3216 = inttoptr i64 %3215 to i64*
  store i64 %3213, i64* %3216, align 8
  store i64 %3215, i64* %6, align 8
  store i64 %3212, i64* %3, align 8
  %call2_401b8c = tail call %struct.Memory* @sub_406f10._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3212, %struct.Memory* %call2_401b6f)
  %3217 = load i64, i64* %RBP.i, align 8
  %3218 = add i64 %3217, -64
  %3219 = load i64, i64* %3, align 8
  %3220 = add i64 %3219, 5
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3218 to i16*
  %3222 = load i16, i16* %3221, align 2
  %3223 = zext i16 %3222 to i64
  store i64 %3223, i64* %474, align 8
  %3224 = add i64 %3217, -62
  %3225 = add i64 %3219, 10
  store i64 %3225, i64* %3, align 8
  %3226 = inttoptr i64 %3224 to i16*
  %3227 = load i16, i16* %3226, align 2
  %3228 = zext i16 %3227 to i64
  store i64 %3228, i64* %247, align 8
  %3229 = add i64 %3217, -60
  %3230 = add i64 %3219, 14
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i16*
  %3232 = load i16, i16* %3231, align 2
  %3233 = zext i16 %3232 to i64
  store i64 %3233, i64* %RCX.i4028, align 8
  %3234 = add i64 %3217, -58
  %3235 = add i64 %3219, 18
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i16*
  %3237 = load i16, i16* %3236, align 2
  %3238 = zext i16 %3237 to i64
  store i64 %3238, i64* %RDX.i4024, align 8
  %3239 = load i64, i64* %6, align 8
  store i64 %3239, i64* %RDI.i4032.pre-phi, align 8
  %3240 = add i64 %3219, 28
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i64*
  store i64 4277157, i64* %3241, align 8
  %3242 = load i64, i64* %RBP.i, align 8
  %3243 = add i64 %3242, -296
  %3244 = load i64, i64* %3, align 8
  %3245 = add i64 %3244, 7
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3243 to i64*
  %3247 = load i64, i64* %3246, align 8
  store i64 %3247, i64* %RDI.i4032.pre-phi, align 8
  %3248 = add i64 %3242, -248
  %3249 = add i64 %3244, 13
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to i32*
  %3251 = load i32, i32* %3250, align 4
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %RSI.i3037, align 8
  %3253 = add i64 %3244, 21539
  %3254 = add i64 %3244, 18
  %3255 = load i64, i64* %6, align 8
  %3256 = add i64 %3255, -8
  %3257 = inttoptr i64 %3256 to i64*
  store i64 %3254, i64* %3257, align 8
  store i64 %3256, i64* %6, align 8
  store i64 %3253, i64* %3, align 8
  %call2_401bba = tail call %struct.Memory* @sub_406fd0._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3253, %struct.Memory* %call2_401b8c)
  %3258 = load i64, i64* %RBP.i, align 8
  %3259 = add i64 %3258, -58
  %3260 = load i64, i64* %3, align 8
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3259 to i16*
  %3263 = load i16, i16* %3262, align 2
  %3264 = zext i16 %3263 to i64
  store i64 %3264, i64* %RDX.i4024, align 8
  store i64 4277188, i64* %RAX.i4026, align 8
  store i64 4277188, i64* %RCX.i4028, align 8
  %3265 = add i64 %3258, -296
  %3266 = add i64 %3260, 18
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i64*
  %3268 = load i64, i64* %3267, align 8
  store i64 %3268, i64* %RDI.i4032.pre-phi, align 8
  %3269 = add i64 %3258, -248
  %3270 = add i64 %3260, 24
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3269 to i32*
  %3272 = load i32, i32* %3271, align 4
  %3273 = zext i32 %3272 to i64
  store i64 %3273, i64* %RSI.i3037, align 8
  %3274 = add i64 %3260, 21825
  %3275 = add i64 %3260, 29
  %3276 = load i64, i64* %6, align 8
  %3277 = add i64 %3276, -8
  %3278 = inttoptr i64 %3277 to i64*
  store i64 %3275, i64* %3278, align 8
  store i64 %3277, i64* %6, align 8
  store i64 %3274, i64* %3, align 8
  %call2_401bd7 = tail call %struct.Memory* @sub_407100._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3274, %struct.Memory* %call2_401bba)
  %3279 = load i64, i64* %RBP.i, align 8
  %3280 = add i64 %3279, -64
  %3281 = load i64, i64* %3, align 8
  %3282 = add i64 %3281, 5
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3280 to i16*
  %3284 = load i16, i16* %3283, align 2
  %3285 = zext i16 %3284 to i64
  store i64 %3285, i64* %474, align 8
  %3286 = add i64 %3279, -62
  %3287 = add i64 %3281, 10
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i16*
  %3289 = load i16, i16* %3288, align 2
  %3290 = zext i16 %3289 to i64
  store i64 %3290, i64* %247, align 8
  %3291 = add i64 %3279, -60
  %3292 = add i64 %3281, 14
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3291 to i16*
  %3294 = load i16, i16* %3293, align 2
  %3295 = zext i16 %3294 to i64
  store i64 %3295, i64* %RCX.i4028, align 8
  %3296 = add i64 %3279, -58
  %3297 = add i64 %3281, 18
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3296 to i16*
  %3299 = load i16, i16* %3298, align 2
  %3300 = zext i16 %3299 to i64
  store i64 %3300, i64* %RDX.i4024, align 8
  %3301 = load i64, i64* %6, align 8
  store i64 %3301, i64* %RDI.i4032.pre-phi, align 8
  %3302 = add i64 %3281, 28
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i64*
  store i64 4277209, i64* %3303, align 8
  %3304 = load i64, i64* %RBP.i, align 8
  %3305 = add i64 %3304, -296
  %3306 = load i64, i64* %3, align 8
  %3307 = add i64 %3306, 7
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3305 to i64*
  %3309 = load i64, i64* %3308, align 8
  store i64 %3309, i64* %RDI.i4032.pre-phi, align 8
  %3310 = add i64 %3304, -248
  %3311 = add i64 %3306, 13
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3310 to i32*
  %3313 = load i32, i32* %3312, align 4
  %3314 = zext i32 %3313 to i64
  store i64 %3314, i64* %RSI.i3037, align 8
  %3315 = add i64 %3306, 21960
  %3316 = add i64 %3306, 18
  %3317 = load i64, i64* %6, align 8
  %3318 = add i64 %3317, -8
  %3319 = inttoptr i64 %3318 to i64*
  store i64 %3316, i64* %3319, align 8
  store i64 %3318, i64* %6, align 8
  store i64 %3315, i64* %3, align 8
  %call2_401c05 = tail call %struct.Memory* @sub_4071c0._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3315, %struct.Memory* %call2_401bd7)
  %3320 = load i64, i64* %RBP.i, align 8
  %3321 = add i64 %3320, -58
  %3322 = load i64, i64* %3, align 8
  %3323 = add i64 %3322, 4
  store i64 %3323, i64* %3, align 8
  %3324 = inttoptr i64 %3321 to i16*
  %3325 = load i16, i16* %3324, align 2
  %3326 = zext i16 %3325 to i64
  store i64 %3326, i64* %RDX.i4024, align 8
  store i64 4277239, i64* %RAX.i4026, align 8
  store i64 4277239, i64* %RCX.i4028, align 8
  %3327 = add i64 %3320, -296
  %3328 = add i64 %3322, 18
  store i64 %3328, i64* %3, align 8
  %3329 = inttoptr i64 %3327 to i64*
  %3330 = load i64, i64* %3329, align 8
  store i64 %3330, i64* %RDI.i4032.pre-phi, align 8
  %3331 = add i64 %3320, -248
  %3332 = add i64 %3322, 24
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i32*
  %3334 = load i32, i32* %3333, align 4
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RSI.i3037, align 8
  %3336 = add i64 %3322, 22246
  %3337 = add i64 %3322, 29
  %3338 = load i64, i64* %6, align 8
  %3339 = add i64 %3338, -8
  %3340 = inttoptr i64 %3339 to i64*
  store i64 %3337, i64* %3340, align 8
  store i64 %3339, i64* %6, align 8
  store i64 %3336, i64* %3, align 8
  %call2_401c22 = tail call %struct.Memory* @sub_4072f0._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3336, %struct.Memory* %call2_401c05)
  %3341 = load i64, i64* %RBP.i, align 8
  %3342 = add i64 %3341, -64
  %3343 = load i64, i64* %3, align 8
  %3344 = add i64 %3343, 5
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3342 to i16*
  %3346 = load i16, i16* %3345, align 2
  %3347 = zext i16 %3346 to i64
  store i64 %3347, i64* %474, align 8
  %3348 = add i64 %3341, -62
  %3349 = add i64 %3343, 10
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i16*
  %3351 = load i16, i16* %3350, align 2
  %3352 = zext i16 %3351 to i64
  store i64 %3352, i64* %247, align 8
  %3353 = add i64 %3341, -60
  %3354 = add i64 %3343, 14
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3353 to i16*
  %3356 = load i16, i16* %3355, align 2
  %3357 = zext i16 %3356 to i64
  store i64 %3357, i64* %RCX.i4028, align 8
  %3358 = add i64 %3341, -58
  %3359 = add i64 %3343, 18
  store i64 %3359, i64* %3, align 8
  %3360 = inttoptr i64 %3358 to i16*
  %3361 = load i16, i16* %3360, align 2
  %3362 = zext i16 %3361 to i64
  store i64 %3362, i64* %RDX.i4024, align 8
  %3363 = load i64, i64* %6, align 8
  store i64 %3363, i64* %RDI.i4032.pre-phi, align 8
  %3364 = add i64 %3343, 28
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i64*
  store i64 4277261, i64* %3365, align 8
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -296
  %3368 = load i64, i64* %3, align 8
  %3369 = add i64 %3368, 7
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3367 to i64*
  %3371 = load i64, i64* %3370, align 8
  store i64 %3371, i64* %RDI.i4032.pre-phi, align 8
  %3372 = add i64 %3366, -248
  %3373 = add i64 %3368, 13
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RSI.i3037, align 8
  %3377 = add i64 %3368, 22381
  %3378 = add i64 %3368, 18
  %3379 = load i64, i64* %6, align 8
  %3380 = add i64 %3379, -8
  %3381 = inttoptr i64 %3380 to i64*
  store i64 %3378, i64* %3381, align 8
  store i64 %3380, i64* %6, align 8
  store i64 %3377, i64* %3, align 8
  %call2_401c50 = tail call %struct.Memory* @sub_4073b0._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3377, %struct.Memory* %call2_401c22)
  %3382 = load i64, i64* %3, align 8
  %3383 = add i64 %3382, 2196531
  %3384 = add i64 %3382, 8
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i64*
  %3386 = load i64, i64* %3385, align 8
  store i64 %3386, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %.cast = bitcast i64 %3386 to double
  %3387 = tail call double @llvm.trunc.f64(double %.cast)
  %3388 = tail call double @llvm.fabs.f64(double %3387)
  %3389 = fcmp ogt double %3388, 0x41DFFFFFFFC00000
  %3390 = fptosi double %3387 to i32
  %3391 = zext i32 %3390 to i64
  %3392 = select i1 %3389, i64 2147483648, i64 %3391
  store i64 %3392, i64* %RDX.i4024, align 8
  store i64 6654144, i64* %RDI.i4032.pre-phi, align 8
  store i64 6686144, i64* %RAX.i4026, align 8
  store i64 6686144, i64* %RSI.i3037, align 8
  %3393 = load i64, i64* %RBP.i, align 8
  %3394 = add i64 %3393, -312
  %3395 = add i64 %3382, 33
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3394 to i64*
  store i64 6654144, i64* %3396, align 8
  %3397 = load i64, i64* %3, align 8
  %3398 = add i64 %3397, 22634
  %3399 = add i64 %3397, 5
  %3400 = load i64, i64* %6, align 8
  %3401 = add i64 %3400, -8
  %3402 = inttoptr i64 %3401 to i64*
  store i64 %3399, i64* %3402, align 8
  store i64 %3401, i64* %6, align 8
  store i64 %3398, i64* %3, align 8
  %call2_401c76 = tail call %struct.Memory* @sub_4074e0._Z4fillIPiiEvT_S1_T0_(%struct.State* nonnull %0, i64 %3398, %struct.Memory* %call2_401c50)
  %3403 = load i64, i64* %RBP.i, align 8
  %3404 = add i64 %3403, -40
  %3405 = load i64, i64* %3, align 8
  %3406 = add i64 %3405, 5
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3404 to double*
  %3408 = load double, double* %3407, align 8
  %3409 = tail call double @llvm.trunc.f64(double %3408)
  %3410 = tail call double @llvm.fabs.f64(double %3409)
  %3411 = fcmp ogt double %3410, 0x41DFFFFFFFC00000
  %3412 = fptosi double %3409 to i32
  %3413 = zext i32 %3412 to i64
  %3414 = select i1 %3411, i64 2147483648, i64 %3413
  store i64 %3414, i64* %RAX.i4026, align 8
  %3415 = add i64 %3403, -68
  %3416 = trunc i64 %3414 to i32
  %3417 = add i64 %3405, 8
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3415 to i32*
  store i32 %3416, i32* %3418, align 4
  %3419 = load i64, i64* %RBP.i, align 8
  %3420 = add i64 %3419, -68
  %3421 = load i64, i64* %3, align 8
  %3422 = add i64 %3421, 3
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3420 to i32*
  %3424 = load i32, i32* %3423, align 4
  %3425 = shl i32 %3424, 1
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RAX.i4026, align 8
  %3427 = icmp ult i32 %3425, %3424
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %26, align 1
  %3429 = and i32 %3425, 254
  %3430 = tail call i32 @llvm.ctpop.i32(i32 %3429)
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = xor i8 %3432, 1
  store i8 %3433, i8* %33, align 1
  %3434 = lshr i32 %3424, 3
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  store i8 %3436, i8* %39, align 1
  %3437 = icmp eq i32 %3425, 0
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %42, align 1
  %3439 = lshr i32 %3424, 30
  %3440 = and i32 %3439, 1
  %3441 = trunc i32 %3440 to i8
  store i8 %3441, i8* %45, align 1
  %3442 = lshr i32 %3424, 31
  %3443 = xor i32 %3440, %3442
  %3444 = trunc i32 %3443 to i8
  store i8 %3444, i8* %51, align 1
  %3445 = add i64 %3419, -72
  %3446 = add i64 %3421, 8
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  store i32 %3425, i32* %3447, align 4
  %3448 = load i64, i64* %RBP.i, align 8
  %3449 = add i64 %3448, -68
  %3450 = load i64, i64* %3, align 8
  %3451 = add i64 %3450, 3
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3449 to i32*
  %3453 = load i32, i32* %3452, align 4
  %3454 = add i32 %3453, 2
  %3455 = zext i32 %3454 to i64
  store i64 %3455, i64* %RAX.i4026, align 8
  %3456 = icmp ugt i32 %3453, -3
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %26, align 1
  %3458 = and i32 %3454, 255
  %3459 = tail call i32 @llvm.ctpop.i32(i32 %3458)
  %3460 = trunc i32 %3459 to i8
  %3461 = and i8 %3460, 1
  %3462 = xor i8 %3461, 1
  store i8 %3462, i8* %33, align 1
  %3463 = xor i32 %3454, %3453
  %3464 = lshr i32 %3463, 4
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  store i8 %3466, i8* %39, align 1
  %3467 = icmp eq i32 %3454, 0
  %3468 = zext i1 %3467 to i8
  store i8 %3468, i8* %42, align 1
  %3469 = lshr i32 %3454, 31
  %3470 = trunc i32 %3469 to i8
  store i8 %3470, i8* %45, align 1
  %3471 = lshr i32 %3453, 31
  %3472 = xor i32 %3469, %3471
  %3473 = add nuw nsw i32 %3472, %3469
  %3474 = icmp eq i32 %3473, 2
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %51, align 1
  %3476 = add i64 %3448, -76
  %3477 = add i64 %3450, 9
  store i64 %3477, i64* %3, align 8
  %3478 = inttoptr i64 %3476 to i32*
  store i32 %3454, i32* %3478, align 4
  %3479 = load i64, i64* %RBP.i, align 8
  %3480 = add i64 %3479, -68
  %3481 = load i64, i64* %3, align 8
  %3482 = add i64 %3481, 3
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3480 to i32*
  %3484 = load i32, i32* %3483, align 4
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RAX.i4026, align 8
  %3486 = add i64 %3479, -72
  %3487 = add i64 %3481, 6
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i32*
  %3489 = load i32, i32* %3488, align 4
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RCX.i4028, align 8
  %3491 = add i64 %3479, -76
  %3492 = add i64 %3481, 9
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3491 to i32*
  %3494 = load i32, i32* %3493, align 4
  %3495 = zext i32 %3494 to i64
  store i64 %3495, i64* %RDX.i4024, align 8
  %3496 = add i64 %3479, -316
  %3497 = add i64 %3481, 15
  store i64 %3497, i64* %3, align 8
  %3498 = inttoptr i64 %3496 to i32*
  store i32 %3484, i32* %3498, align 4
  %3499 = load i32, i32* %ECX.i3562, align 4
  %3500 = zext i32 %3499 to i64
  %3501 = load i64, i64* %3, align 8
  store i64 %3500, i64* %RAX.i4026, align 8
  %3502 = load i64, i64* %RBP.i, align 8
  %3503 = add i64 %3502, -320
  %3504 = load i32, i32* %EDX.i4021, align 4
  %3505 = add i64 %3501, 8
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3503 to i32*
  store i32 %3504, i32* %3506, align 4
  %3507 = load i64, i64* %3, align 8
  %3508 = load i32, i32* %EAX.i4011, align 8
  %3509 = sext i32 %3508 to i64
  %3510 = lshr i64 %3509, 32
  store i64 %3510, i64* %373, align 8
  %3511 = load i64, i64* %RBP.i, align 8
  %3512 = add i64 %3511, -320
  %3513 = add i64 %3507, 7
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i32*
  %3515 = load i32, i32* %3514, align 4
  %3516 = zext i32 %3515 to i64
  store i64 %3516, i64* %RCX.i4028, align 8
  %3517 = add i64 %3507, 9
  store i64 %3517, i64* %3, align 8
  %3518 = zext i32 %3508 to i64
  %3519 = sext i32 %3515 to i64
  %3520 = shl nuw i64 %3510, 32
  %3521 = or i64 %3520, %3518
  %3522 = sdiv i64 %3521, %3519
  %3523 = shl i64 %3522, 32
  %3524 = ashr exact i64 %3523, 32
  %3525 = icmp eq i64 %3522, %3524
  br i1 %3525, label %3528, label %3526

; <label>:3526:                                   ; preds = %routine_divl__r8d.exit2577
  %3527 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3517, %struct.Memory* %call2_401c76)
  %.pre19 = load i64, i64* %RBP.i, align 8
  %.pre20 = load i64, i64* %3, align 8
  %.pre21 = load i32, i32* %EAX.i4011, align 4
  br label %routine_idivl__ecx.exit

; <label>:3528:                                   ; preds = %routine_divl__r8d.exit2577
  %3529 = srem i64 %3521, %3519
  %3530 = and i64 %3522, 4294967295
  store i64 %3530, i64* %RAX.i4026, align 8
  %3531 = and i64 %3529, 4294967295
  store i64 %3531, i64* %RDX.i4024, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3532 = trunc i64 %3522 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3528, %3526
  %3533 = phi i32 [ %.pre21, %3526 ], [ %3532, %3528 ]
  %3534 = phi i64 [ %.pre20, %3526 ], [ %3517, %3528 ]
  %3535 = phi i64 [ %.pre19, %3526 ], [ %3511, %3528 ]
  %3536 = phi %struct.Memory* [ %3527, %3526 ], [ %call2_401c76, %3528 ]
  %3537 = add i64 %3535, -316
  %3538 = add i64 %3534, 6
  store i64 %3538, i64* %3, align 8
  %3539 = inttoptr i64 %3537 to i32*
  %3540 = load i32, i32* %3539, align 4
  %3541 = add i32 %3533, %3540
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RDX.i4024, align 8
  %3543 = icmp ult i32 %3541, %3540
  %3544 = icmp ult i32 %3541, %3533
  %3545 = or i1 %3543, %3544
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %26, align 1
  %3547 = and i32 %3541, 255
  %3548 = tail call i32 @llvm.ctpop.i32(i32 %3547)
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = xor i8 %3550, 1
  store i8 %3551, i8* %33, align 1
  %3552 = xor i32 %3533, %3540
  %3553 = xor i32 %3552, %3541
  %3554 = lshr i32 %3553, 4
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  store i8 %3556, i8* %39, align 1
  %3557 = icmp eq i32 %3541, 0
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %42, align 1
  %3559 = lshr i32 %3541, 31
  %3560 = trunc i32 %3559 to i8
  store i8 %3560, i8* %45, align 1
  %3561 = lshr i32 %3540, 31
  %3562 = lshr i32 %3533, 31
  %3563 = xor i32 %3559, %3561
  %3564 = xor i32 %3559, %3562
  %3565 = add nuw nsw i32 %3563, %3564
  %3566 = icmp eq i32 %3565, 2
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %51, align 1
  %3568 = add i64 %3535, -80
  %3569 = add i64 %3534, 11
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i32*
  store i32 %3541, i32* %3570, align 4
  %3571 = load i64, i64* %RBP.i, align 8
  %3572 = add i64 %3571, -68
  %3573 = load i64, i64* %3, align 8
  %3574 = add i64 %3573, 3
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3572 to i32*
  %3576 = load i32, i32* %3575, align 4
  %3577 = zext i32 %3576 to i64
  store i64 %3577, i64* %RDX.i4024, align 8
  store i64 4277293, i64* %RAX.i4026, align 8
  store i64 4277293, i64* %RCX.i4028, align 8
  %3578 = add i64 %3571, -312
  %3579 = add i64 %3573, 17
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i64*
  %3581 = load i64, i64* %3580, align 8
  store i64 %3581, i64* %RDI.i4032.pre-phi, align 8
  %3582 = add i64 %3571, -248
  %3583 = add i64 %3573, 23
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3582 to i32*
  %3585 = load i32, i32* %3584, align 4
  %3586 = zext i32 %3585 to i64
  store i64 %3586, i64* %RSI.i3037, align 8
  %3587 = add i64 %3573, 22625
  %3588 = add i64 %3573, 28
  %3589 = load i64, i64* %6, align 8
  %3590 = add i64 %3589, -8
  %3591 = inttoptr i64 %3590 to i64*
  store i64 %3588, i64* %3591, align 8
  store i64 %3590, i64* %6, align 8
  store i64 %3587, i64* %3, align 8
  %call2_401cd6 = tail call %struct.Memory* @sub_407520._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3587, %struct.Memory* %3536)
  %3592 = load i64, i64* %RBP.i, align 8
  %3593 = add i64 %3592, -68
  %3594 = load i64, i64* %3, align 8
  %3595 = add i64 %3594, 3
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3593 to i32*
  %3597 = load i32, i32* %3596, align 4
  %3598 = zext i32 %3597 to i64
  store i64 %3598, i64* %RDX.i4024, align 8
  store i64 4277315, i64* %RAX.i4026, align 8
  store i64 4277315, i64* %RCX.i4028, align 8
  %3599 = add i64 %3592, -312
  %3600 = add i64 %3594, 17
  store i64 %3600, i64* %3, align 8
  %3601 = inttoptr i64 %3599 to i64*
  %3602 = load i64, i64* %3601, align 8
  store i64 %3602, i64* %RDI.i4032.pre-phi, align 8
  %3603 = add i64 %3592, -248
  %3604 = add i64 %3594, 23
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3603 to i32*
  %3606 = load i32, i32* %3605, align 4
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RSI.i3037, align 8
  %3608 = add i64 %3594, 22757
  %3609 = add i64 %3594, 28
  %3610 = load i64, i64* %6, align 8
  %3611 = add i64 %3610, -8
  %3612 = inttoptr i64 %3611 to i64*
  store i64 %3609, i64* %3612, align 8
  store i64 %3611, i64* %6, align 8
  store i64 %3608, i64* %3, align 8
  %call2_401cf2 = tail call %struct.Memory* @sub_4075c0._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3608, %struct.Memory* %call2_401cd6)
  %3613 = load i64, i64* %RBP.i, align 8
  %3614 = add i64 %3613, -68
  %3615 = load i64, i64* %3, align 8
  %3616 = add i64 %3615, 3
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3614 to i32*
  %3618 = load i32, i32* %3617, align 4
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %RDX.i4024, align 8
  %3620 = add i64 %3613, -72
  %3621 = add i64 %3615, 6
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %RCX.i4028, align 8
  %3625 = add i64 %3613, -76
  %3626 = add i64 %3615, 10
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i32*
  %3628 = load i32, i32* %3627, align 4
  %3629 = zext i32 %3628 to i64
  store i64 %3629, i64* %247, align 8
  %3630 = add i64 %3613, -80
  %3631 = add i64 %3615, 14
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i32*
  %3633 = load i32, i32* %3632, align 4
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %474, align 8
  %3635 = load i64, i64* %6, align 8
  store i64 %3635, i64* %RDI.i4032.pre-phi, align 8
  %3636 = add i64 %3615, 24
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i64*
  store i64 4277345, i64* %3637, align 8
  %3638 = load i64, i64* %RBP.i, align 8
  %3639 = add i64 %3638, -312
  %3640 = load i64, i64* %3, align 8
  %3641 = add i64 %3640, 7
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3639 to i64*
  %3643 = load i64, i64* %3642, align 8
  store i64 %3643, i64* %RDI.i4032.pre-phi, align 8
  %3644 = add i64 %3638, -248
  %3645 = add i64 %3640, 13
  store i64 %3645, i64* %3, align 8
  %3646 = inttoptr i64 %3644 to i32*
  %3647 = load i32, i32* %3646, align 4
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RSI.i3037, align 8
  %3649 = add i64 %3640, 22881
  %3650 = add i64 %3640, 18
  %3651 = load i64, i64* %6, align 8
  %3652 = add i64 %3651, -8
  %3653 = inttoptr i64 %3652 to i64*
  store i64 %3650, i64* %3653, align 8
  store i64 %3652, i64* %6, align 8
  store i64 %3649, i64* %3, align 8
  %call2_401d1c = tail call %struct.Memory* @sub_407670._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3649, %struct.Memory* %call2_401cf2)
  %3654 = load i64, i64* %RBP.i, align 8
  %3655 = add i64 %3654, -68
  %3656 = load i64, i64* %3, align 8
  %3657 = add i64 %3656, 3
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3655 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RDX.i4024, align 8
  store i64 4277377, i64* %RAX.i4026, align 8
  store i64 4277377, i64* %RCX.i4028, align 8
  %3661 = add i64 %3654, -312
  %3662 = add i64 %3656, 17
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i64*
  %3664 = load i64, i64* %3663, align 8
  store i64 %3664, i64* %RDI.i4032.pre-phi, align 8
  %3665 = add i64 %3654, -248
  %3666 = add i64 %3656, 23
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i32*
  %3668 = load i32, i32* %3667, align 4
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RSI.i3037, align 8
  %3670 = add i64 %3656, 23071
  %3671 = add i64 %3656, 28
  %3672 = load i64, i64* %6, align 8
  %3673 = add i64 %3672, -8
  %3674 = inttoptr i64 %3673 to i64*
  store i64 %3671, i64* %3674, align 8
  store i64 %3673, i64* %6, align 8
  store i64 %3670, i64* %3, align 8
  %call2_401d38 = tail call %struct.Memory* @sub_407740._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3670, %struct.Memory* %call2_401d1c)
  %3675 = load i64, i64* %RBP.i, align 8
  %3676 = add i64 %3675, -68
  %3677 = load i64, i64* %3, align 8
  %3678 = add i64 %3677, 3
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3676 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = zext i32 %3680 to i64
  store i64 %3681, i64* %RDX.i4024, align 8
  %3682 = add i64 %3675, -72
  %3683 = add i64 %3677, 6
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3682 to i32*
  %3685 = load i32, i32* %3684, align 4
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RCX.i4028, align 8
  %3687 = add i64 %3675, -76
  %3688 = add i64 %3677, 10
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i32*
  %3690 = load i32, i32* %3689, align 4
  %3691 = zext i32 %3690 to i64
  store i64 %3691, i64* %247, align 8
  %3692 = add i64 %3675, -80
  %3693 = add i64 %3677, 14
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3692 to i32*
  %3695 = load i32, i32* %3694, align 4
  %3696 = zext i32 %3695 to i64
  store i64 %3696, i64* %474, align 8
  %3697 = load i64, i64* %6, align 8
  store i64 %3697, i64* %RDI.i4032.pre-phi, align 8
  %3698 = add i64 %3677, 24
  store i64 %3698, i64* %3, align 8
  %3699 = inttoptr i64 %3697 to i64*
  store i64 4277404, i64* %3699, align 8
  %3700 = load i64, i64* %RBP.i, align 8
  %3701 = add i64 %3700, -312
  %3702 = load i64, i64* %3, align 8
  %3703 = add i64 %3702, 7
  store i64 %3703, i64* %3, align 8
  %3704 = inttoptr i64 %3701 to i64*
  %3705 = load i64, i64* %3704, align 8
  store i64 %3705, i64* %RDI.i4032.pre-phi, align 8
  %3706 = add i64 %3700, -248
  %3707 = add i64 %3702, 13
  store i64 %3707, i64* %3, align 8
  %3708 = inttoptr i64 %3706 to i32*
  %3709 = load i32, i32* %3708, align 4
  %3710 = zext i32 %3709 to i64
  store i64 %3710, i64* %RSI.i3037, align 8
  %3711 = add i64 %3702, 23179
  %3712 = add i64 %3702, 18
  %3713 = load i64, i64* %6, align 8
  %3714 = add i64 %3713, -8
  %3715 = inttoptr i64 %3714 to i64*
  store i64 %3712, i64* %3715, align 8
  store i64 %3714, i64* %6, align 8
  store i64 %3711, i64* %3, align 8
  %call2_401d62 = tail call %struct.Memory* @sub_4077e0._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3711, %struct.Memory* %call2_401d38)
  %3716 = load i64, i64* %RBP.i, align 8
  %3717 = add i64 %3716, -68
  %3718 = load i64, i64* %3, align 8
  %3719 = add i64 %3718, 3
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3717 to i32*
  %3721 = load i32, i32* %3720, align 4
  %3722 = zext i32 %3721 to i64
  store i64 %3722, i64* %RDX.i4024, align 8
  store i64 4277441, i64* %RAX.i4026, align 8
  store i64 4277441, i64* %RCX.i4028, align 8
  %3723 = add i64 %3716, -312
  %3724 = add i64 %3718, 17
  store i64 %3724, i64* %3, align 8
  %3725 = inttoptr i64 %3723 to i64*
  %3726 = load i64, i64* %3725, align 8
  store i64 %3726, i64* %RDI.i4032.pre-phi, align 8
  %3727 = add i64 %3716, -248
  %3728 = add i64 %3718, 23
  store i64 %3728, i64* %3, align 8
  %3729 = inttoptr i64 %3727 to i32*
  %3730 = load i32, i32* %3729, align 4
  %3731 = zext i32 %3730 to i64
  store i64 %3731, i64* %RSI.i3037, align 8
  %3732 = add i64 %3718, 23369
  %3733 = add i64 %3718, 28
  %3734 = load i64, i64* %6, align 8
  %3735 = add i64 %3734, -8
  %3736 = inttoptr i64 %3735 to i64*
  store i64 %3733, i64* %3736, align 8
  store i64 %3735, i64* %6, align 8
  store i64 %3732, i64* %3, align 8
  %call2_401d7e = tail call %struct.Memory* @sub_4078b0._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3732, %struct.Memory* %call2_401d62)
  %3737 = load i64, i64* %RBP.i, align 8
  %3738 = add i64 %3737, -68
  %3739 = load i64, i64* %3, align 8
  %3740 = add i64 %3739, 3
  store i64 %3740, i64* %3, align 8
  %3741 = inttoptr i64 %3738 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = zext i32 %3742 to i64
  store i64 %3743, i64* %RDX.i4024, align 8
  %3744 = add i64 %3737, -72
  %3745 = add i64 %3739, 6
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = zext i32 %3747 to i64
  store i64 %3748, i64* %RCX.i4028, align 8
  %3749 = add i64 %3737, -76
  %3750 = add i64 %3739, 10
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3749 to i32*
  %3752 = load i32, i32* %3751, align 4
  %3753 = zext i32 %3752 to i64
  store i64 %3753, i64* %247, align 8
  %3754 = add i64 %3737, -80
  %3755 = add i64 %3739, 14
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %474, align 8
  %3759 = load i64, i64* %6, align 8
  store i64 %3759, i64* %RDI.i4032.pre-phi, align 8
  %3760 = add i64 %3739, 24
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i64*
  store i64 4277468, i64* %3761, align 8
  %3762 = load i64, i64* %RBP.i, align 8
  %3763 = add i64 %3762, -312
  %3764 = load i64, i64* %3, align 8
  %3765 = add i64 %3764, 7
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3763 to i64*
  %3767 = load i64, i64* %3766, align 8
  store i64 %3767, i64* %RDI.i4032.pre-phi, align 8
  %3768 = add i64 %3762, -248
  %3769 = add i64 %3764, 13
  store i64 %3769, i64* %3, align 8
  %3770 = inttoptr i64 %3768 to i32*
  %3771 = load i32, i32* %3770, align 4
  %3772 = zext i32 %3771 to i64
  store i64 %3772, i64* %RSI.i3037, align 8
  %3773 = add i64 %3764, 23477
  %3774 = add i64 %3764, 18
  %3775 = load i64, i64* %6, align 8
  %3776 = add i64 %3775, -8
  %3777 = inttoptr i64 %3776 to i64*
  store i64 %3774, i64* %3777, align 8
  store i64 %3776, i64* %6, align 8
  store i64 %3773, i64* %3, align 8
  %call2_401da8 = tail call %struct.Memory* @sub_407950._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3773, %struct.Memory* %call2_401d7e)
  %3778 = load i64, i64* %RBP.i, align 8
  %3779 = add i64 %3778, -68
  %3780 = load i64, i64* %3, align 8
  %3781 = add i64 %3780, 3
  store i64 %3781, i64* %3, align 8
  %3782 = inttoptr i64 %3779 to i32*
  %3783 = load i32, i32* %3782, align 4
  %3784 = zext i32 %3783 to i64
  store i64 %3784, i64* %RDX.i4024, align 8
  %3785 = add i64 %3778, -72
  %3786 = add i64 %3780, 6
  store i64 %3786, i64* %3, align 8
  %3787 = inttoptr i64 %3785 to i32*
  %3788 = load i32, i32* %3787, align 4
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %RCX.i4028, align 8
  %3790 = add i64 %3778, -76
  %3791 = add i64 %3780, 10
  store i64 %3791, i64* %3, align 8
  %3792 = inttoptr i64 %3790 to i32*
  %3793 = load i32, i32* %3792, align 4
  %3794 = zext i32 %3793 to i64
  store i64 %3794, i64* %247, align 8
  %3795 = add i64 %3778, -80
  %3796 = add i64 %3780, 14
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3795 to i32*
  %3798 = load i32, i32* %3797, align 4
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %474, align 8
  %3800 = load i64, i64* %6, align 8
  store i64 %3800, i64* %RDI.i4032.pre-phi, align 8
  %3801 = add i64 %3780, 24
  store i64 %3801, i64* %3, align 8
  %3802 = inttoptr i64 %3800 to i64*
  store i64 4277506, i64* %3802, align 8
  %3803 = load i64, i64* %RBP.i, align 8
  %3804 = add i64 %3803, -312
  %3805 = load i64, i64* %3, align 8
  %3806 = add i64 %3805, 7
  store i64 %3806, i64* %3, align 8
  %3807 = inttoptr i64 %3804 to i64*
  %3808 = load i64, i64* %3807, align 8
  store i64 %3808, i64* %RDI.i4032.pre-phi, align 8
  %3809 = add i64 %3803, -248
  %3810 = add i64 %3805, 13
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3809 to i32*
  %3812 = load i32, i32* %3811, align 4
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RSI.i3037, align 8
  %3814 = add i64 %3805, 23643
  %3815 = add i64 %3805, 18
  %3816 = load i64, i64* %6, align 8
  %3817 = add i64 %3816, -8
  %3818 = inttoptr i64 %3817 to i64*
  store i64 %3815, i64* %3818, align 8
  store i64 %3817, i64* %6, align 8
  store i64 %3814, i64* %3, align 8
  %call2_401dd2 = tail call %struct.Memory* @sub_407a20._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3814, %struct.Memory* %call2_401da8)
  %3819 = load i64, i64* %RBP.i, align 8
  %3820 = add i64 %3819, -68
  %3821 = load i64, i64* %3, align 8
  %3822 = add i64 %3821, 3
  store i64 %3822, i64* %3, align 8
  %3823 = inttoptr i64 %3820 to i32*
  %3824 = load i32, i32* %3823, align 4
  %3825 = zext i32 %3824 to i64
  store i64 %3825, i64* %RDX.i4024, align 8
  store i64 4277545, i64* %RAX.i4026, align 8
  store i64 4277545, i64* %RCX.i4028, align 8
  %3826 = add i64 %3819, -312
  %3827 = add i64 %3821, 17
  store i64 %3827, i64* %3, align 8
  %3828 = inttoptr i64 %3826 to i64*
  %3829 = load i64, i64* %3828, align 8
  store i64 %3829, i64* %RDI.i4032.pre-phi, align 8
  %3830 = add i64 %3819, -248
  %3831 = add i64 %3821, 23
  store i64 %3831, i64* %3, align 8
  %3832 = inttoptr i64 %3830 to i32*
  %3833 = load i32, i32* %3832, align 4
  %3834 = zext i32 %3833 to i64
  store i64 %3834, i64* %RSI.i3037, align 8
  %3835 = add i64 %3821, 23833
  %3836 = add i64 %3821, 28
  %3837 = load i64, i64* %6, align 8
  %3838 = add i64 %3837, -8
  %3839 = inttoptr i64 %3838 to i64*
  store i64 %3836, i64* %3839, align 8
  store i64 %3838, i64* %6, align 8
  store i64 %3835, i64* %3, align 8
  %call2_401dee = tail call %struct.Memory* @sub_407af0._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3835, %struct.Memory* %call2_401dd2)
  %3840 = load i64, i64* %RBP.i, align 8
  %3841 = add i64 %3840, -68
  %3842 = load i64, i64* %3, align 8
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3841 to i32*
  %3845 = load i32, i32* %3844, align 4
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RDX.i4024, align 8
  %3847 = add i64 %3840, -72
  %3848 = add i64 %3842, 6
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i32*
  %3850 = load i32, i32* %3849, align 4
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RCX.i4028, align 8
  %3852 = add i64 %3840, -76
  %3853 = add i64 %3842, 10
  store i64 %3853, i64* %3, align 8
  %3854 = inttoptr i64 %3852 to i32*
  %3855 = load i32, i32* %3854, align 4
  %3856 = zext i32 %3855 to i64
  store i64 %3856, i64* %247, align 8
  %3857 = add i64 %3840, -80
  %3858 = add i64 %3842, 14
  store i64 %3858, i64* %3, align 8
  %3859 = inttoptr i64 %3857 to i32*
  %3860 = load i32, i32* %3859, align 4
  %3861 = zext i32 %3860 to i64
  store i64 %3861, i64* %474, align 8
  %3862 = load i64, i64* %6, align 8
  store i64 %3862, i64* %RDI.i4032.pre-phi, align 8
  %3863 = add i64 %3842, 24
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i64*
  store i64 4277570, i64* %3864, align 8
  %3865 = load i64, i64* %RBP.i, align 8
  %3866 = add i64 %3865, -312
  %3867 = load i64, i64* %3, align 8
  %3868 = add i64 %3867, 7
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3866 to i64*
  %3870 = load i64, i64* %3869, align 8
  store i64 %3870, i64* %RDI.i4032.pre-phi, align 8
  %3871 = add i64 %3865, -248
  %3872 = add i64 %3867, 13
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to i32*
  %3874 = load i32, i32* %3873, align 4
  %3875 = zext i32 %3874 to i64
  store i64 %3875, i64* %RSI.i3037, align 8
  %3876 = add i64 %3867, 23941
  %3877 = add i64 %3867, 18
  %3878 = load i64, i64* %6, align 8
  %3879 = add i64 %3878, -8
  %3880 = inttoptr i64 %3879 to i64*
  store i64 %3877, i64* %3880, align 8
  store i64 %3879, i64* %6, align 8
  store i64 %3876, i64* %3, align 8
  %call2_401e18 = tail call %struct.Memory* @sub_407b90._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3876, %struct.Memory* %call2_401dee)
  %3881 = load i64, i64* %RBP.i, align 8
  %3882 = add i64 %3881, -68
  %3883 = load i64, i64* %3, align 8
  %3884 = add i64 %3883, 3
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3882 to i32*
  %3886 = load i32, i32* %3885, align 4
  %3887 = zext i32 %3886 to i64
  store i64 %3887, i64* %RDX.i4024, align 8
  %3888 = add i64 %3881, -72
  %3889 = add i64 %3883, 6
  store i64 %3889, i64* %3, align 8
  %3890 = inttoptr i64 %3888 to i32*
  %3891 = load i32, i32* %3890, align 4
  %3892 = zext i32 %3891 to i64
  store i64 %3892, i64* %RCX.i4028, align 8
  %3893 = add i64 %3881, -76
  %3894 = add i64 %3883, 10
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i32*
  %3896 = load i32, i32* %3895, align 4
  %3897 = zext i32 %3896 to i64
  store i64 %3897, i64* %247, align 8
  %3898 = add i64 %3881, -80
  %3899 = add i64 %3883, 14
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to i32*
  %3901 = load i32, i32* %3900, align 4
  %3902 = zext i32 %3901 to i64
  store i64 %3902, i64* %474, align 8
  %3903 = load i64, i64* %6, align 8
  store i64 %3903, i64* %RDI.i4032.pre-phi, align 8
  %3904 = add i64 %3883, 24
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i64*
  store i64 4277605, i64* %3905, align 8
  %3906 = load i64, i64* %RBP.i, align 8
  %3907 = add i64 %3906, -312
  %3908 = load i64, i64* %3, align 8
  %3909 = add i64 %3908, 7
  store i64 %3909, i64* %3, align 8
  %3910 = inttoptr i64 %3907 to i64*
  %3911 = load i64, i64* %3910, align 8
  store i64 %3911, i64* %RDI.i4032.pre-phi, align 8
  %3912 = add i64 %3906, -248
  %3913 = add i64 %3908, 13
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i32*
  %3915 = load i32, i32* %3914, align 4
  %3916 = zext i32 %3915 to i64
  store i64 %3916, i64* %RSI.i3037, align 8
  %3917 = add i64 %3908, 24107
  %3918 = add i64 %3908, 18
  %3919 = load i64, i64* %6, align 8
  %3920 = add i64 %3919, -8
  %3921 = inttoptr i64 %3920 to i64*
  store i64 %3918, i64* %3921, align 8
  store i64 %3920, i64* %6, align 8
  store i64 %3917, i64* %3, align 8
  %call2_401e42 = tail call %struct.Memory* @sub_407c60._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3917, %struct.Memory* %call2_401e18)
  %3922 = load i64, i64* %RBP.i, align 8
  %3923 = add i64 %3922, -68
  %3924 = load i64, i64* %3, align 8
  %3925 = add i64 %3924, 3
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3923 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %RDX.i4024, align 8
  %3929 = add i64 %3922, -72
  %3930 = add i64 %3924, 6
  store i64 %3930, i64* %3, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = zext i32 %3932 to i64
  store i64 %3933, i64* %RCX.i4028, align 8
  %3934 = add i64 %3922, -76
  %3935 = add i64 %3924, 10
  store i64 %3935, i64* %3, align 8
  %3936 = inttoptr i64 %3934 to i32*
  %3937 = load i32, i32* %3936, align 4
  %3938 = zext i32 %3937 to i64
  store i64 %3938, i64* %247, align 8
  %3939 = add i64 %3922, -80
  %3940 = add i64 %3924, 14
  store i64 %3940, i64* %3, align 8
  %3941 = inttoptr i64 %3939 to i32*
  %3942 = load i32, i32* %3941, align 4
  %3943 = zext i32 %3942 to i64
  store i64 %3943, i64* %474, align 8
  %3944 = load i64, i64* %6, align 8
  store i64 %3944, i64* %RDI.i4032.pre-phi, align 8
  %3945 = add i64 %3924, 24
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i64*
  store i64 4277641, i64* %3946, align 8
  %3947 = load i64, i64* %RBP.i, align 8
  %3948 = add i64 %3947, -312
  %3949 = load i64, i64* %3, align 8
  %3950 = add i64 %3949, 7
  store i64 %3950, i64* %3, align 8
  %3951 = inttoptr i64 %3948 to i64*
  %3952 = load i64, i64* %3951, align 8
  store i64 %3952, i64* %RDI.i4032.pre-phi, align 8
  %3953 = add i64 %3947, -248
  %3954 = add i64 %3949, 13
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = zext i32 %3956 to i64
  store i64 %3957, i64* %RSI.i3037, align 8
  %3958 = add i64 %3949, 24273
  %3959 = add i64 %3949, 18
  %3960 = load i64, i64* %6, align 8
  %3961 = add i64 %3960, -8
  %3962 = inttoptr i64 %3961 to i64*
  store i64 %3959, i64* %3962, align 8
  store i64 %3961, i64* %6, align 8
  store i64 %3958, i64* %3, align 8
  %call2_401e6c = tail call %struct.Memory* @sub_407d30._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %3958, %struct.Memory* %call2_401e42)
  %3963 = load i64, i64* %RBP.i, align 8
  %3964 = add i64 %3963, -68
  %3965 = load i64, i64* %3, align 8
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %3, align 8
  %3967 = inttoptr i64 %3964 to i32*
  %3968 = load i32, i32* %3967, align 4
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RDX.i4024, align 8
  store i64 4277674, i64* %RAX.i4026, align 8
  store i64 4277674, i64* %RCX.i4028, align 8
  %3970 = add i64 %3963, -312
  %3971 = add i64 %3965, 17
  store i64 %3971, i64* %3, align 8
  %3972 = inttoptr i64 %3970 to i64*
  %3973 = load i64, i64* %3972, align 8
  store i64 %3973, i64* %RDI.i4032.pre-phi, align 8
  %3974 = add i64 %3963, -248
  %3975 = add i64 %3965, 23
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i32*
  %3977 = load i32, i32* %3976, align 4
  %3978 = zext i32 %3977 to i64
  store i64 %3978, i64* %RSI.i3037, align 8
  %3979 = add i64 %3965, 24463
  %3980 = add i64 %3965, 28
  %3981 = load i64, i64* %6, align 8
  %3982 = add i64 %3981, -8
  %3983 = inttoptr i64 %3982 to i64*
  store i64 %3980, i64* %3983, align 8
  store i64 %3982, i64* %6, align 8
  store i64 %3979, i64* %3, align 8
  %call2_401e88 = tail call %struct.Memory* @sub_407e00._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %3979, %struct.Memory* %call2_401e6c)
  %3984 = load i64, i64* %RBP.i, align 8
  %3985 = add i64 %3984, -68
  %3986 = load i64, i64* %3, align 8
  %3987 = add i64 %3986, 3
  store i64 %3987, i64* %3, align 8
  %3988 = inttoptr i64 %3985 to i32*
  %3989 = load i32, i32* %3988, align 4
  %3990 = zext i32 %3989 to i64
  store i64 %3990, i64* %RDX.i4024, align 8
  %3991 = add i64 %3984, -72
  %3992 = add i64 %3986, 6
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %RCX.i4028, align 8
  %3996 = add i64 %3984, -76
  %3997 = add i64 %3986, 10
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  %3999 = load i32, i32* %3998, align 4
  %4000 = zext i32 %3999 to i64
  store i64 %4000, i64* %247, align 8
  %4001 = add i64 %3984, -80
  %4002 = add i64 %3986, 14
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4001 to i32*
  %4004 = load i32, i32* %4003, align 4
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %474, align 8
  %4006 = load i64, i64* %6, align 8
  store i64 %4006, i64* %RDI.i4032.pre-phi, align 8
  %4007 = add i64 %3986, 24
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i64*
  store i64 4277696, i64* %4008, align 8
  %4009 = load i64, i64* %RBP.i, align 8
  %4010 = add i64 %4009, -312
  %4011 = load i64, i64* %3, align 8
  %4012 = add i64 %4011, 7
  store i64 %4012, i64* %3, align 8
  %4013 = inttoptr i64 %4010 to i64*
  %4014 = load i64, i64* %4013, align 8
  store i64 %4014, i64* %RDI.i4032.pre-phi, align 8
  %4015 = add i64 %4009, -248
  %4016 = add i64 %4011, 13
  store i64 %4016, i64* %3, align 8
  %4017 = inttoptr i64 %4015 to i32*
  %4018 = load i32, i32* %4017, align 4
  %4019 = zext i32 %4018 to i64
  store i64 %4019, i64* %RSI.i3037, align 8
  %4020 = add i64 %4011, 24571
  %4021 = add i64 %4011, 18
  %4022 = load i64, i64* %6, align 8
  %4023 = add i64 %4022, -8
  %4024 = inttoptr i64 %4023 to i64*
  store i64 %4021, i64* %4024, align 8
  store i64 %4023, i64* %6, align 8
  store i64 %4020, i64* %3, align 8
  %call2_401eb2 = tail call %struct.Memory* @sub_407ea0._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4020, %struct.Memory* %call2_401e88)
  %4025 = load i64, i64* %RBP.i, align 8
  %4026 = add i64 %4025, -68
  %4027 = load i64, i64* %3, align 8
  %4028 = add i64 %4027, 3
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4026 to i32*
  %4030 = load i32, i32* %4029, align 4
  %4031 = zext i32 %4030 to i64
  store i64 %4031, i64* %RDX.i4024, align 8
  store i64 4277727, i64* %RAX.i4026, align 8
  store i64 4277727, i64* %RCX.i4028, align 8
  %4032 = add i64 %4025, -312
  %4033 = add i64 %4027, 17
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i64*
  %4035 = load i64, i64* %4034, align 8
  store i64 %4035, i64* %RDI.i4032.pre-phi, align 8
  %4036 = add i64 %4025, -248
  %4037 = add i64 %4027, 23
  store i64 %4037, i64* %3, align 8
  %4038 = inttoptr i64 %4036 to i32*
  %4039 = load i32, i32* %4038, align 4
  %4040 = zext i32 %4039 to i64
  store i64 %4040, i64* %RSI.i3037, align 8
  %4041 = add i64 %4027, 24761
  %4042 = add i64 %4027, 28
  %4043 = load i64, i64* %6, align 8
  %4044 = add i64 %4043, -8
  %4045 = inttoptr i64 %4044 to i64*
  store i64 %4042, i64* %4045, align 8
  store i64 %4044, i64* %6, align 8
  store i64 %4041, i64* %3, align 8
  %call2_401ece = tail call %struct.Memory* @sub_407f70._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4041, %struct.Memory* %call2_401eb2)
  %4046 = load i64, i64* %RBP.i, align 8
  %4047 = add i64 %4046, -68
  %4048 = load i64, i64* %3, align 8
  %4049 = add i64 %4048, 3
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4047 to i32*
  %4051 = load i32, i32* %4050, align 4
  %4052 = zext i32 %4051 to i64
  store i64 %4052, i64* %RDX.i4024, align 8
  %4053 = add i64 %4046, -72
  %4054 = add i64 %4048, 6
  store i64 %4054, i64* %3, align 8
  %4055 = inttoptr i64 %4053 to i32*
  %4056 = load i32, i32* %4055, align 4
  %4057 = zext i32 %4056 to i64
  store i64 %4057, i64* %RCX.i4028, align 8
  %4058 = add i64 %4046, -76
  %4059 = add i64 %4048, 10
  store i64 %4059, i64* %3, align 8
  %4060 = inttoptr i64 %4058 to i32*
  %4061 = load i32, i32* %4060, align 4
  %4062 = zext i32 %4061 to i64
  store i64 %4062, i64* %247, align 8
  %4063 = add i64 %4046, -80
  %4064 = add i64 %4048, 14
  store i64 %4064, i64* %3, align 8
  %4065 = inttoptr i64 %4063 to i32*
  %4066 = load i32, i32* %4065, align 4
  %4067 = zext i32 %4066 to i64
  store i64 %4067, i64* %474, align 8
  %4068 = load i64, i64* %6, align 8
  store i64 %4068, i64* %RDI.i4032.pre-phi, align 8
  %4069 = add i64 %4048, 24
  store i64 %4069, i64* %3, align 8
  %4070 = inttoptr i64 %4068 to i64*
  store i64 4277748, i64* %4070, align 8
  %4071 = load i64, i64* %RBP.i, align 8
  %4072 = add i64 %4071, -312
  %4073 = load i64, i64* %3, align 8
  %4074 = add i64 %4073, 7
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4072 to i64*
  %4076 = load i64, i64* %4075, align 8
  store i64 %4076, i64* %RDI.i4032.pre-phi, align 8
  %4077 = add i64 %4071, -248
  %4078 = add i64 %4073, 13
  store i64 %4078, i64* %3, align 8
  %4079 = inttoptr i64 %4077 to i32*
  %4080 = load i32, i32* %4079, align 4
  %4081 = zext i32 %4080 to i64
  store i64 %4081, i64* %RSI.i3037, align 8
  %4082 = add i64 %4073, 24869
  %4083 = add i64 %4073, 18
  %4084 = load i64, i64* %6, align 8
  %4085 = add i64 %4084, -8
  %4086 = inttoptr i64 %4085 to i64*
  store i64 %4083, i64* %4086, align 8
  store i64 %4085, i64* %6, align 8
  store i64 %4082, i64* %3, align 8
  %call2_401ef8 = tail call %struct.Memory* @sub_408010._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4082, %struct.Memory* %call2_401ece)
  %4087 = load i64, i64* %RBP.i, align 8
  %4088 = add i64 %4087, -68
  %4089 = load i64, i64* %3, align 8
  %4090 = add i64 %4089, 3
  store i64 %4090, i64* %3, align 8
  %4091 = inttoptr i64 %4088 to i32*
  %4092 = load i32, i32* %4091, align 4
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RDX.i4024, align 8
  store i64 4277778, i64* %RAX.i4026, align 8
  store i64 4277778, i64* %RCX.i4028, align 8
  %4094 = add i64 %4087, -312
  %4095 = add i64 %4089, 17
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i64*
  %4097 = load i64, i64* %4096, align 8
  store i64 %4097, i64* %RDI.i4032.pre-phi, align 8
  %4098 = add i64 %4087, -248
  %4099 = add i64 %4089, 23
  store i64 %4099, i64* %3, align 8
  %4100 = inttoptr i64 %4098 to i32*
  %4101 = load i32, i32* %4100, align 4
  %4102 = zext i32 %4101 to i64
  store i64 %4102, i64* %RSI.i3037, align 8
  %4103 = add i64 %4089, 25059
  %4104 = add i64 %4089, 28
  %4105 = load i64, i64* %6, align 8
  %4106 = add i64 %4105, -8
  %4107 = inttoptr i64 %4106 to i64*
  store i64 %4104, i64* %4107, align 8
  store i64 %4106, i64* %6, align 8
  store i64 %4103, i64* %3, align 8
  %call2_401f14 = tail call %struct.Memory* @sub_4080e0._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4103, %struct.Memory* %call2_401ef8)
  %4108 = load i64, i64* %RBP.i, align 8
  %4109 = add i64 %4108, -68
  %4110 = load i64, i64* %3, align 8
  %4111 = add i64 %4110, 3
  store i64 %4111, i64* %3, align 8
  %4112 = inttoptr i64 %4109 to i32*
  %4113 = load i32, i32* %4112, align 4
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RDX.i4024, align 8
  %4115 = add i64 %4108, -72
  %4116 = add i64 %4110, 6
  store i64 %4116, i64* %3, align 8
  %4117 = inttoptr i64 %4115 to i32*
  %4118 = load i32, i32* %4117, align 4
  %4119 = zext i32 %4118 to i64
  store i64 %4119, i64* %RCX.i4028, align 8
  %4120 = add i64 %4108, -76
  %4121 = add i64 %4110, 10
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to i32*
  %4123 = load i32, i32* %4122, align 4
  %4124 = zext i32 %4123 to i64
  store i64 %4124, i64* %247, align 8
  %4125 = add i64 %4108, -80
  %4126 = add i64 %4110, 14
  store i64 %4126, i64* %3, align 8
  %4127 = inttoptr i64 %4125 to i32*
  %4128 = load i32, i32* %4127, align 4
  %4129 = zext i32 %4128 to i64
  store i64 %4129, i64* %474, align 8
  %4130 = load i64, i64* %6, align 8
  store i64 %4130, i64* %RDI.i4032.pre-phi, align 8
  %4131 = add i64 %4110, 24
  store i64 %4131, i64* %3, align 8
  %4132 = inttoptr i64 %4130 to i64*
  store i64 4277800, i64* %4132, align 8
  %4133 = load i64, i64* %RBP.i, align 8
  %4134 = add i64 %4133, -312
  %4135 = load i64, i64* %3, align 8
  %4136 = add i64 %4135, 7
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4134 to i64*
  %4138 = load i64, i64* %4137, align 8
  store i64 %4138, i64* %RDI.i4032.pre-phi, align 8
  %4139 = add i64 %4133, -248
  %4140 = add i64 %4135, 13
  store i64 %4140, i64* %3, align 8
  %4141 = inttoptr i64 %4139 to i32*
  %4142 = load i32, i32* %4141, align 4
  %4143 = zext i32 %4142 to i64
  store i64 %4143, i64* %RSI.i3037, align 8
  %4144 = add i64 %4135, 25167
  %4145 = add i64 %4135, 18
  %4146 = load i64, i64* %6, align 8
  %4147 = add i64 %4146, -8
  %4148 = inttoptr i64 %4147 to i64*
  store i64 %4145, i64* %4148, align 8
  store i64 %4147, i64* %6, align 8
  store i64 %4144, i64* %3, align 8
  %call2_401f3e = tail call %struct.Memory* @sub_408180._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4144, %struct.Memory* %call2_401f14)
  %4149 = load i64, i64* %3, align 8
  %4150 = add i64 %4149, 2195781
  %4151 = add i64 %4149, 9
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to double*
  %4153 = load double, double* %4152, align 8
  %4154 = tail call double @llvm.trunc.f64(double %4153)
  %4155 = tail call double @llvm.fabs.f64(double %4154)
  %4156 = fcmp ogt double %4155, 0x43E0000000000000
  %4157 = fptosi double %4154 to i64
  %.op = and i64 %4157, 4294967295
  %4158 = select i1 %4156, i64 0, i64 %.op
  store i64 %4158, i64* %RAX.i4026, align 8
  store i64 6622144, i64* %RDI.i4032.pre-phi, align 8
  store i64 6654144, i64* %RCX.i4028, align 8
  store i64 6654144, i64* %RSI.i3037, align 8
  %4159 = load i64, i64* %RBP.i, align 8
  %4160 = add i64 %4159, -328
  %4161 = add i64 %4149, 32
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i64*
  store i64 6622144, i64* %4162, align 8
  %4163 = load i32, i32* %EAX.i4011, align 4
  %4164 = zext i32 %4163 to i64
  %4165 = load i64, i64* %3, align 8
  store i64 %4164, i64* %RDX.i4024, align 8
  %4166 = add i64 %4165, 25325
  %4167 = add i64 %4165, 7
  %4168 = load i64, i64* %6, align 8
  %4169 = add i64 %4168, -8
  %4170 = inttoptr i64 %4169 to i64*
  store i64 %4167, i64* %4170, align 8
  store i64 %4169, i64* %6, align 8
  store i64 %4166, i64* %3, align 8
  %call2_401f65 = tail call %struct.Memory* @sub_408250._Z4fillIPjjEvT_S1_T0_(%struct.State* nonnull %0, i64 %4166, %struct.Memory* %call2_401f3e)
  %4171 = load i64, i64* %RBP.i, align 8
  %4172 = add i64 %4171, -40
  %4173 = load i64, i64* %3, align 8
  %4174 = add i64 %4173, 6
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4172 to double*
  %4176 = load double, double* %4175, align 8
  %4177 = tail call double @llvm.trunc.f64(double %4176)
  %4178 = tail call double @llvm.fabs.f64(double %4177)
  %4179 = fcmp ogt double %4178, 0x43E0000000000000
  %4180 = fptosi double %4177 to i64
  %4181 = select i1 %4179, i64 -9223372036854775808, i64 %4180
  store i64 %4181, i64* %RSI.i3037, align 8
  %4182 = trunc i64 %4181 to i32
  %4183 = and i64 %4181, 4294967295
  store i64 %4183, i64* %RAX.i4026, align 8
  %4184 = add i64 %4171, -84
  %4185 = add i64 %4173, 11
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4184 to i32*
  store i32 %4182, i32* %4186, align 4
  %4187 = load i64, i64* %RBP.i, align 8
  %4188 = add i64 %4187, -84
  %4189 = load i64, i64* %3, align 8
  %4190 = add i64 %4189, 3
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4188 to i32*
  %4192 = load i32, i32* %4191, align 4
  %4193 = shl i32 %4192, 1
  %4194 = zext i32 %4193 to i64
  store i64 %4194, i64* %RAX.i4026, align 8
  %4195 = icmp ult i32 %4193, %4192
  %4196 = zext i1 %4195 to i8
  store i8 %4196, i8* %26, align 1
  %4197 = and i32 %4193, 254
  %4198 = tail call i32 @llvm.ctpop.i32(i32 %4197)
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  %4201 = xor i8 %4200, 1
  store i8 %4201, i8* %33, align 1
  %4202 = lshr i32 %4192, 3
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  store i8 %4204, i8* %39, align 1
  %4205 = icmp eq i32 %4193, 0
  %4206 = zext i1 %4205 to i8
  store i8 %4206, i8* %42, align 1
  %4207 = lshr i32 %4192, 30
  %4208 = and i32 %4207, 1
  %4209 = trunc i32 %4208 to i8
  store i8 %4209, i8* %45, align 1
  %4210 = lshr i32 %4192, 31
  %4211 = xor i32 %4208, %4210
  %4212 = trunc i32 %4211 to i8
  store i8 %4212, i8* %51, align 1
  %4213 = add i64 %4187, -88
  %4214 = add i64 %4189, 8
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  store i32 %4193, i32* %4215, align 4
  %4216 = load i64, i64* %RBP.i, align 8
  %4217 = add i64 %4216, -84
  %4218 = load i64, i64* %3, align 8
  %4219 = add i64 %4218, 3
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4217 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = add i32 %4221, 2
  %4223 = zext i32 %4222 to i64
  store i64 %4223, i64* %RAX.i4026, align 8
  %4224 = icmp ugt i32 %4221, -3
  %4225 = zext i1 %4224 to i8
  store i8 %4225, i8* %26, align 1
  %4226 = and i32 %4222, 255
  %4227 = tail call i32 @llvm.ctpop.i32(i32 %4226)
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = xor i8 %4229, 1
  store i8 %4230, i8* %33, align 1
  %4231 = xor i32 %4222, %4221
  %4232 = lshr i32 %4231, 4
  %4233 = trunc i32 %4232 to i8
  %4234 = and i8 %4233, 1
  store i8 %4234, i8* %39, align 1
  %4235 = icmp eq i32 %4222, 0
  %4236 = zext i1 %4235 to i8
  store i8 %4236, i8* %42, align 1
  %4237 = lshr i32 %4222, 31
  %4238 = trunc i32 %4237 to i8
  store i8 %4238, i8* %45, align 1
  %4239 = lshr i32 %4221, 31
  %4240 = xor i32 %4237, %4239
  %4241 = add nuw nsw i32 %4240, %4237
  %4242 = icmp eq i32 %4241, 2
  %4243 = zext i1 %4242 to i8
  store i8 %4243, i8* %51, align 1
  %4244 = add i64 %4216, -92
  %4245 = add i64 %4218, 9
  store i64 %4245, i64* %3, align 8
  %4246 = inttoptr i64 %4244 to i32*
  store i32 %4222, i32* %4246, align 4
  %4247 = load i64, i64* %RBP.i, align 8
  %4248 = add i64 %4247, -84
  %4249 = load i64, i64* %3, align 8
  %4250 = add i64 %4249, 3
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4248 to i32*
  %4252 = load i32, i32* %4251, align 4
  %4253 = zext i32 %4252 to i64
  store i64 %4253, i64* %RAX.i4026, align 8
  %4254 = add i64 %4247, -88
  %4255 = add i64 %4249, 6
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  %4257 = load i32, i32* %4256, align 4
  %4258 = zext i32 %4257 to i64
  store i64 %4258, i64* %RCX.i4028, align 8
  %4259 = add i64 %4247, -92
  %4260 = add i64 %4249, 9
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i32*
  %4262 = load i32, i32* %4261, align 4
  %4263 = zext i32 %4262 to i64
  store i64 %4263, i64* %RDX.i4024, align 8
  %4264 = add i64 %4247, -332
  %4265 = add i64 %4249, 15
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i32*
  store i32 %4252, i32* %4266, align 4
  %4267 = load i32, i32* %ECX.i3562, align 4
  %4268 = zext i32 %4267 to i64
  %4269 = load i64, i64* %3, align 8
  store i64 %4268, i64* %RAX.i4026, align 8
  %4270 = load i64, i64* %RBP.i, align 8
  %4271 = add i64 %4270, -268
  %4272 = add i64 %4269, 8
  store i64 %4272, i64* %3, align 8
  %4273 = inttoptr i64 %4271 to i32*
  %4274 = load i32, i32* %4273, align 4
  %4275 = zext i32 %4274 to i64
  store i64 %4275, i64* %RCX.i4028, align 8
  %4276 = add i64 %4270, -336
  %4277 = load i32, i32* %EDX.i4021, align 4
  %4278 = add i64 %4269, 14
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4276 to i32*
  store i32 %4277, i32* %4279, align 4
  %4280 = load i32, i32* %ECX.i3562, align 4
  %4281 = zext i32 %4280 to i64
  %4282 = load i64, i64* %3, align 8
  store i64 %4281, i64* %RDX.i4024, align 8
  %4283 = load i64, i64* %RBP.i, align 8
  %4284 = add i64 %4283, -336
  %4285 = add i64 %4282, 9
  store i64 %4285, i64* %3, align 8
  %4286 = inttoptr i64 %4284 to i32*
  %4287 = load i32, i32* %4286, align 4
  %4288 = zext i32 %4287 to i64
  store i64 %4288, i64* %247, align 8
  %4289 = add i64 %4282, 12
  store i64 %4289, i64* %3, align 8
  %4290 = load i32, i32* %EAX.i4011, align 8
  %4291 = zext i32 %4290 to i64
  %4292 = shl nuw i64 %4281, 32
  %4293 = or i64 %4292, %4291
  %4294 = udiv i64 %4293, %4288
  %4295 = and i64 %4294, 4294967295
  %4296 = icmp eq i64 %4294, %4295
  br i1 %4296, label %4299, label %4297

; <label>:4297:                                   ; preds = %routine_idivl__ecx.exit
  %4298 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4289, %struct.Memory* %call2_401f65)
  %.pre22 = load i64, i64* %RBP.i, align 8
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i32, i32* %EAX.i4011, align 4
  br label %routine_divl__r8d.exit

; <label>:4299:                                   ; preds = %routine_idivl__ecx.exit
  %4300 = urem i64 %4293, %4288
  store i64 %4294, i64* %RAX.i4026, align 8
  store i64 %4300, i64* %RDX.i4024, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4301 = trunc i64 %4294 to i32
  br label %routine_divl__r8d.exit

routine_divl__r8d.exit:                           ; preds = %4299, %4297
  %4302 = phi i32 [ %.pre24, %4297 ], [ %4301, %4299 ]
  %4303 = phi i64 [ %.pre23, %4297 ], [ %4289, %4299 ]
  %4304 = phi i64 [ %.pre22, %4297 ], [ %4283, %4299 ]
  %4305 = phi %struct.Memory* [ %4298, %4297 ], [ %call2_401f65, %4299 ]
  %4306 = add i64 %4304, -332
  %4307 = add i64 %4303, 6
  store i64 %4307, i64* %3, align 8
  %4308 = inttoptr i64 %4306 to i32*
  %4309 = load i32, i32* %4308, align 4
  %4310 = add i32 %4302, %4309
  %4311 = zext i32 %4310 to i64
  store i64 %4311, i64* %RDX.i4024, align 8
  %4312 = icmp ult i32 %4310, %4309
  %4313 = icmp ult i32 %4310, %4302
  %4314 = or i1 %4312, %4313
  %4315 = zext i1 %4314 to i8
  store i8 %4315, i8* %26, align 1
  %4316 = and i32 %4310, 255
  %4317 = tail call i32 @llvm.ctpop.i32(i32 %4316)
  %4318 = trunc i32 %4317 to i8
  %4319 = and i8 %4318, 1
  %4320 = xor i8 %4319, 1
  store i8 %4320, i8* %33, align 1
  %4321 = xor i32 %4302, %4309
  %4322 = xor i32 %4321, %4310
  %4323 = lshr i32 %4322, 4
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  store i8 %4325, i8* %39, align 1
  %4326 = icmp eq i32 %4310, 0
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %42, align 1
  %4328 = lshr i32 %4310, 31
  %4329 = trunc i32 %4328 to i8
  store i8 %4329, i8* %45, align 1
  %4330 = lshr i32 %4309, 31
  %4331 = lshr i32 %4302, 31
  %4332 = xor i32 %4328, %4330
  %4333 = xor i32 %4328, %4331
  %4334 = add nuw nsw i32 %4332, %4333
  %4335 = icmp eq i32 %4334, 2
  %4336 = zext i1 %4335 to i8
  store i8 %4336, i8* %51, align 1
  %4337 = add i64 %4304, -96
  %4338 = add i64 %4303, 11
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  store i32 %4310, i32* %4339, align 4
  %4340 = load i64, i64* %RBP.i, align 8
  %4341 = add i64 %4340, -84
  %4342 = load i64, i64* %3, align 8
  %4343 = add i64 %4342, 3
  store i64 %4343, i64* %3, align 8
  %4344 = inttoptr i64 %4341 to i32*
  %4345 = load i32, i32* %4344, align 4
  %4346 = zext i32 %4345 to i64
  store i64 %4346, i64* %RDX.i4024, align 8
  store i64 4277292, i64* %RAX.i4026, align 8
  store i64 4277292, i64* %RCX.i4028, align 8
  %4347 = add i64 %4340, -328
  %4348 = add i64 %4342, 17
  store i64 %4348, i64* %3, align 8
  %4349 = inttoptr i64 %4347 to i64*
  %4350 = load i64, i64* %4349, align 8
  store i64 %4350, i64* %RDI.i4032.pre-phi, align 8
  %4351 = add i64 %4340, -248
  %4352 = add i64 %4342, 23
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i32*
  %4354 = load i32, i32* %4353, align 4
  %4355 = zext i32 %4354 to i64
  store i64 %4355, i64* %RSI.i3037, align 8
  %4356 = add i64 %4342, 25302
  %4357 = add i64 %4342, 28
  %4358 = load i64, i64* %6, align 8
  %4359 = add i64 %4358, -8
  %4360 = inttoptr i64 %4359 to i64*
  store i64 %4357, i64* %4360, align 8
  store i64 %4359, i64* %6, align 8
  store i64 %4356, i64* %3, align 8
  %call2_401fd1 = tail call %struct.Memory* @sub_408290._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4356, %struct.Memory* %4305)
  %4361 = load i64, i64* %RBP.i, align 8
  %4362 = add i64 %4361, -84
  %4363 = load i64, i64* %3, align 8
  %4364 = add i64 %4363, 3
  store i64 %4364, i64* %3, align 8
  %4365 = inttoptr i64 %4362 to i32*
  %4366 = load i32, i32* %4365, align 4
  %4367 = zext i32 %4366 to i64
  store i64 %4367, i64* %RDX.i4024, align 8
  store i64 4277314, i64* %RAX.i4026, align 8
  store i64 4277314, i64* %RCX.i4028, align 8
  %4368 = add i64 %4361, -328
  %4369 = add i64 %4363, 17
  store i64 %4369, i64* %3, align 8
  %4370 = inttoptr i64 %4368 to i64*
  %4371 = load i64, i64* %4370, align 8
  store i64 %4371, i64* %RDI.i4032.pre-phi, align 8
  %4372 = add i64 %4361, -248
  %4373 = add i64 %4363, 23
  store i64 %4373, i64* %3, align 8
  %4374 = inttoptr i64 %4372 to i32*
  %4375 = load i32, i32* %4374, align 4
  %4376 = zext i32 %4375 to i64
  store i64 %4376, i64* %RSI.i3037, align 8
  %4377 = add i64 %4363, 25434
  %4378 = add i64 %4363, 28
  %4379 = load i64, i64* %6, align 8
  %4380 = add i64 %4379, -8
  %4381 = inttoptr i64 %4380 to i64*
  store i64 %4378, i64* %4381, align 8
  store i64 %4380, i64* %6, align 8
  store i64 %4377, i64* %3, align 8
  %call2_401fed = tail call %struct.Memory* @sub_408330._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4377, %struct.Memory* %call2_401fd1)
  %4382 = load i64, i64* %RBP.i, align 8
  %4383 = add i64 %4382, -84
  %4384 = load i64, i64* %3, align 8
  %4385 = add i64 %4384, 3
  store i64 %4385, i64* %3, align 8
  %4386 = inttoptr i64 %4383 to i32*
  %4387 = load i32, i32* %4386, align 4
  %4388 = zext i32 %4387 to i64
  store i64 %4388, i64* %RDX.i4024, align 8
  %4389 = add i64 %4382, -88
  %4390 = add i64 %4384, 6
  store i64 %4390, i64* %3, align 8
  %4391 = inttoptr i64 %4389 to i32*
  %4392 = load i32, i32* %4391, align 4
  %4393 = zext i32 %4392 to i64
  store i64 %4393, i64* %RCX.i4028, align 8
  %4394 = add i64 %4382, -92
  %4395 = add i64 %4384, 10
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i32*
  %4397 = load i32, i32* %4396, align 4
  %4398 = zext i32 %4397 to i64
  store i64 %4398, i64* %247, align 8
  %4399 = add i64 %4382, -96
  %4400 = add i64 %4384, 14
  store i64 %4400, i64* %3, align 8
  %4401 = inttoptr i64 %4399 to i32*
  %4402 = load i32, i32* %4401, align 4
  %4403 = zext i32 %4402 to i64
  store i64 %4403, i64* %474, align 8
  %4404 = load i64, i64* %6, align 8
  store i64 %4404, i64* %RDI.i4032.pre-phi, align 8
  %4405 = add i64 %4384, 24
  store i64 %4405, i64* %3, align 8
  %4406 = inttoptr i64 %4404 to i64*
  store i64 4277344, i64* %4406, align 8
  %4407 = load i64, i64* %RBP.i, align 8
  %4408 = add i64 %4407, -328
  %4409 = load i64, i64* %3, align 8
  %4410 = add i64 %4409, 7
  store i64 %4410, i64* %3, align 8
  %4411 = inttoptr i64 %4408 to i64*
  %4412 = load i64, i64* %4411, align 8
  store i64 %4412, i64* %RDI.i4032.pre-phi, align 8
  %4413 = add i64 %4407, -248
  %4414 = add i64 %4409, 13
  store i64 %4414, i64* %3, align 8
  %4415 = inttoptr i64 %4413 to i32*
  %4416 = load i32, i32* %4415, align 4
  %4417 = zext i32 %4416 to i64
  store i64 %4417, i64* %RSI.i3037, align 8
  %4418 = add i64 %4409, 25558
  %4419 = add i64 %4409, 18
  %4420 = load i64, i64* %6, align 8
  %4421 = add i64 %4420, -8
  %4422 = inttoptr i64 %4421 to i64*
  store i64 %4419, i64* %4422, align 8
  store i64 %4421, i64* %6, align 8
  store i64 %4418, i64* %3, align 8
  %call2_402017 = tail call %struct.Memory* @sub_4083e0._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4418, %struct.Memory* %call2_401fed)
  %4423 = load i64, i64* %RBP.i, align 8
  %4424 = add i64 %4423, -84
  %4425 = load i64, i64* %3, align 8
  %4426 = add i64 %4425, 3
  store i64 %4426, i64* %3, align 8
  %4427 = inttoptr i64 %4424 to i32*
  %4428 = load i32, i32* %4427, align 4
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RDX.i4024, align 8
  store i64 4277376, i64* %RAX.i4026, align 8
  store i64 4277376, i64* %RCX.i4028, align 8
  %4430 = add i64 %4423, -328
  %4431 = add i64 %4425, 17
  store i64 %4431, i64* %3, align 8
  %4432 = inttoptr i64 %4430 to i64*
  %4433 = load i64, i64* %4432, align 8
  store i64 %4433, i64* %RDI.i4032.pre-phi, align 8
  %4434 = add i64 %4423, -248
  %4435 = add i64 %4425, 23
  store i64 %4435, i64* %3, align 8
  %4436 = inttoptr i64 %4434 to i32*
  %4437 = load i32, i32* %4436, align 4
  %4438 = zext i32 %4437 to i64
  store i64 %4438, i64* %RSI.i3037, align 8
  %4439 = add i64 %4425, 25748
  %4440 = add i64 %4425, 28
  %4441 = load i64, i64* %6, align 8
  %4442 = add i64 %4441, -8
  %4443 = inttoptr i64 %4442 to i64*
  store i64 %4440, i64* %4443, align 8
  store i64 %4442, i64* %6, align 8
  store i64 %4439, i64* %3, align 8
  %call2_402033 = tail call %struct.Memory* @sub_4084b0._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4439, %struct.Memory* %call2_402017)
  %4444 = load i64, i64* %RBP.i, align 8
  %4445 = add i64 %4444, -84
  %4446 = load i64, i64* %3, align 8
  %4447 = add i64 %4446, 3
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4445 to i32*
  %4449 = load i32, i32* %4448, align 4
  %4450 = zext i32 %4449 to i64
  store i64 %4450, i64* %RDX.i4024, align 8
  %4451 = add i64 %4444, -88
  %4452 = add i64 %4446, 6
  store i64 %4452, i64* %3, align 8
  %4453 = inttoptr i64 %4451 to i32*
  %4454 = load i32, i32* %4453, align 4
  %4455 = zext i32 %4454 to i64
  store i64 %4455, i64* %RCX.i4028, align 8
  %4456 = add i64 %4444, -92
  %4457 = add i64 %4446, 10
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4456 to i32*
  %4459 = load i32, i32* %4458, align 4
  %4460 = zext i32 %4459 to i64
  store i64 %4460, i64* %247, align 8
  %4461 = add i64 %4444, -96
  %4462 = add i64 %4446, 14
  store i64 %4462, i64* %3, align 8
  %4463 = inttoptr i64 %4461 to i32*
  %4464 = load i32, i32* %4463, align 4
  %4465 = zext i32 %4464 to i64
  store i64 %4465, i64* %474, align 8
  %4466 = load i64, i64* %6, align 8
  store i64 %4466, i64* %RDI.i4032.pre-phi, align 8
  %4467 = add i64 %4446, 24
  store i64 %4467, i64* %3, align 8
  %4468 = inttoptr i64 %4466 to i64*
  store i64 4277403, i64* %4468, align 8
  %4469 = load i64, i64* %RBP.i, align 8
  %4470 = add i64 %4469, -328
  %4471 = load i64, i64* %3, align 8
  %4472 = add i64 %4471, 7
  store i64 %4472, i64* %3, align 8
  %4473 = inttoptr i64 %4470 to i64*
  %4474 = load i64, i64* %4473, align 8
  store i64 %4474, i64* %RDI.i4032.pre-phi, align 8
  %4475 = add i64 %4469, -248
  %4476 = add i64 %4471, 13
  store i64 %4476, i64* %3, align 8
  %4477 = inttoptr i64 %4475 to i32*
  %4478 = load i32, i32* %4477, align 4
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RSI.i3037, align 8
  %4480 = add i64 %4471, 25856
  %4481 = add i64 %4471, 18
  %4482 = load i64, i64* %6, align 8
  %4483 = add i64 %4482, -8
  %4484 = inttoptr i64 %4483 to i64*
  store i64 %4481, i64* %4484, align 8
  store i64 %4483, i64* %6, align 8
  store i64 %4480, i64* %3, align 8
  %call2_40205d = tail call %struct.Memory* @sub_408550._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4480, %struct.Memory* %call2_402033)
  %4485 = load i64, i64* %RBP.i, align 8
  %4486 = add i64 %4485, -84
  %4487 = load i64, i64* %3, align 8
  %4488 = add i64 %4487, 3
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4486 to i32*
  %4490 = load i32, i32* %4489, align 4
  %4491 = zext i32 %4490 to i64
  store i64 %4491, i64* %RDX.i4024, align 8
  store i64 4277440, i64* %RAX.i4026, align 8
  store i64 4277440, i64* %RCX.i4028, align 8
  %4492 = add i64 %4485, -328
  %4493 = add i64 %4487, 17
  store i64 %4493, i64* %3, align 8
  %4494 = inttoptr i64 %4492 to i64*
  %4495 = load i64, i64* %4494, align 8
  store i64 %4495, i64* %RDI.i4032.pre-phi, align 8
  %4496 = add i64 %4485, -248
  %4497 = add i64 %4487, 23
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i32*
  %4499 = load i32, i32* %4498, align 4
  %4500 = zext i32 %4499 to i64
  store i64 %4500, i64* %RSI.i3037, align 8
  %4501 = add i64 %4487, 26046
  %4502 = add i64 %4487, 28
  %4503 = load i64, i64* %6, align 8
  %4504 = add i64 %4503, -8
  %4505 = inttoptr i64 %4504 to i64*
  store i64 %4502, i64* %4505, align 8
  store i64 %4504, i64* %6, align 8
  store i64 %4501, i64* %3, align 8
  %call2_402079 = tail call %struct.Memory* @sub_408620._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4501, %struct.Memory* %call2_40205d)
  %4506 = load i64, i64* %RBP.i, align 8
  %4507 = add i64 %4506, -84
  %4508 = load i64, i64* %3, align 8
  %4509 = add i64 %4508, 3
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4507 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = zext i32 %4511 to i64
  store i64 %4512, i64* %RDX.i4024, align 8
  %4513 = add i64 %4506, -88
  %4514 = add i64 %4508, 6
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i32*
  %4516 = load i32, i32* %4515, align 4
  %4517 = zext i32 %4516 to i64
  store i64 %4517, i64* %RCX.i4028, align 8
  %4518 = add i64 %4506, -92
  %4519 = add i64 %4508, 10
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i32*
  %4521 = load i32, i32* %4520, align 4
  %4522 = zext i32 %4521 to i64
  store i64 %4522, i64* %247, align 8
  %4523 = add i64 %4506, -96
  %4524 = add i64 %4508, 14
  store i64 %4524, i64* %3, align 8
  %4525 = inttoptr i64 %4523 to i32*
  %4526 = load i32, i32* %4525, align 4
  %4527 = zext i32 %4526 to i64
  store i64 %4527, i64* %474, align 8
  %4528 = load i64, i64* %6, align 8
  store i64 %4528, i64* %RDI.i4032.pre-phi, align 8
  %4529 = add i64 %4508, 24
  store i64 %4529, i64* %3, align 8
  %4530 = inttoptr i64 %4528 to i64*
  store i64 4277467, i64* %4530, align 8
  %4531 = load i64, i64* %RBP.i, align 8
  %4532 = add i64 %4531, -328
  %4533 = load i64, i64* %3, align 8
  %4534 = add i64 %4533, 7
  store i64 %4534, i64* %3, align 8
  %4535 = inttoptr i64 %4532 to i64*
  %4536 = load i64, i64* %4535, align 8
  store i64 %4536, i64* %RDI.i4032.pre-phi, align 8
  %4537 = add i64 %4531, -248
  %4538 = add i64 %4533, 13
  store i64 %4538, i64* %3, align 8
  %4539 = inttoptr i64 %4537 to i32*
  %4540 = load i32, i32* %4539, align 4
  %4541 = zext i32 %4540 to i64
  store i64 %4541, i64* %RSI.i3037, align 8
  %4542 = add i64 %4533, 26154
  %4543 = add i64 %4533, 18
  %4544 = load i64, i64* %6, align 8
  %4545 = add i64 %4544, -8
  %4546 = inttoptr i64 %4545 to i64*
  store i64 %4543, i64* %4546, align 8
  store i64 %4545, i64* %6, align 8
  store i64 %4542, i64* %3, align 8
  %call2_4020a3 = tail call %struct.Memory* @sub_4086c0._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4542, %struct.Memory* %call2_402079)
  %4547 = load i64, i64* %RBP.i, align 8
  %4548 = add i64 %4547, -84
  %4549 = load i64, i64* %3, align 8
  %4550 = add i64 %4549, 3
  store i64 %4550, i64* %3, align 8
  %4551 = inttoptr i64 %4548 to i32*
  %4552 = load i32, i32* %4551, align 4
  %4553 = zext i32 %4552 to i64
  store i64 %4553, i64* %RDX.i4024, align 8
  %4554 = add i64 %4547, -88
  %4555 = add i64 %4549, 6
  store i64 %4555, i64* %3, align 8
  %4556 = inttoptr i64 %4554 to i32*
  %4557 = load i32, i32* %4556, align 4
  %4558 = zext i32 %4557 to i64
  store i64 %4558, i64* %RCX.i4028, align 8
  %4559 = add i64 %4547, -92
  %4560 = add i64 %4549, 10
  store i64 %4560, i64* %3, align 8
  %4561 = inttoptr i64 %4559 to i32*
  %4562 = load i32, i32* %4561, align 4
  %4563 = zext i32 %4562 to i64
  store i64 %4563, i64* %247, align 8
  %4564 = add i64 %4547, -96
  %4565 = add i64 %4549, 14
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4564 to i32*
  %4567 = load i32, i32* %4566, align 4
  %4568 = zext i32 %4567 to i64
  store i64 %4568, i64* %474, align 8
  %4569 = load i64, i64* %6, align 8
  store i64 %4569, i64* %RDI.i4032.pre-phi, align 8
  %4570 = add i64 %4549, 24
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i64*
  store i64 4277505, i64* %4571, align 8
  %4572 = load i64, i64* %RBP.i, align 8
  %4573 = add i64 %4572, -328
  %4574 = load i64, i64* %3, align 8
  %4575 = add i64 %4574, 7
  store i64 %4575, i64* %3, align 8
  %4576 = inttoptr i64 %4573 to i64*
  %4577 = load i64, i64* %4576, align 8
  store i64 %4577, i64* %RDI.i4032.pre-phi, align 8
  %4578 = add i64 %4572, -248
  %4579 = add i64 %4574, 13
  store i64 %4579, i64* %3, align 8
  %4580 = inttoptr i64 %4578 to i32*
  %4581 = load i32, i32* %4580, align 4
  %4582 = zext i32 %4581 to i64
  store i64 %4582, i64* %RSI.i3037, align 8
  %4583 = add i64 %4574, 26320
  %4584 = add i64 %4574, 18
  %4585 = load i64, i64* %6, align 8
  %4586 = add i64 %4585, -8
  %4587 = inttoptr i64 %4586 to i64*
  store i64 %4584, i64* %4587, align 8
  store i64 %4586, i64* %6, align 8
  store i64 %4583, i64* %3, align 8
  %call2_4020cd = tail call %struct.Memory* @sub_408790._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4583, %struct.Memory* %call2_4020a3)
  %4588 = load i64, i64* %RBP.i, align 8
  %4589 = add i64 %4588, -84
  %4590 = load i64, i64* %3, align 8
  %4591 = add i64 %4590, 3
  store i64 %4591, i64* %3, align 8
  %4592 = inttoptr i64 %4589 to i32*
  %4593 = load i32, i32* %4592, align 4
  %4594 = zext i32 %4593 to i64
  store i64 %4594, i64* %RDX.i4024, align 8
  store i64 4277544, i64* %RAX.i4026, align 8
  store i64 4277544, i64* %RCX.i4028, align 8
  %4595 = add i64 %4588, -328
  %4596 = add i64 %4590, 17
  store i64 %4596, i64* %3, align 8
  %4597 = inttoptr i64 %4595 to i64*
  %4598 = load i64, i64* %4597, align 8
  store i64 %4598, i64* %RDI.i4032.pre-phi, align 8
  %4599 = add i64 %4588, -248
  %4600 = add i64 %4590, 23
  store i64 %4600, i64* %3, align 8
  %4601 = inttoptr i64 %4599 to i32*
  %4602 = load i32, i32* %4601, align 4
  %4603 = zext i32 %4602 to i64
  store i64 %4603, i64* %RSI.i3037, align 8
  %4604 = add i64 %4590, 26510
  %4605 = add i64 %4590, 28
  %4606 = load i64, i64* %6, align 8
  %4607 = add i64 %4606, -8
  %4608 = inttoptr i64 %4607 to i64*
  store i64 %4605, i64* %4608, align 8
  store i64 %4607, i64* %6, align 8
  store i64 %4604, i64* %3, align 8
  %call2_4020e9 = tail call %struct.Memory* @sub_408860._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4604, %struct.Memory* %call2_4020cd)
  %4609 = load i64, i64* %RBP.i, align 8
  %4610 = add i64 %4609, -84
  %4611 = load i64, i64* %3, align 8
  %4612 = add i64 %4611, 3
  store i64 %4612, i64* %3, align 8
  %4613 = inttoptr i64 %4610 to i32*
  %4614 = load i32, i32* %4613, align 4
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %RDX.i4024, align 8
  %4616 = add i64 %4609, -88
  %4617 = add i64 %4611, 6
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RCX.i4028, align 8
  %4621 = add i64 %4609, -92
  %4622 = add i64 %4611, 10
  store i64 %4622, i64* %3, align 8
  %4623 = inttoptr i64 %4621 to i32*
  %4624 = load i32, i32* %4623, align 4
  %4625 = zext i32 %4624 to i64
  store i64 %4625, i64* %247, align 8
  %4626 = add i64 %4609, -96
  %4627 = add i64 %4611, 14
  store i64 %4627, i64* %3, align 8
  %4628 = inttoptr i64 %4626 to i32*
  %4629 = load i32, i32* %4628, align 4
  %4630 = zext i32 %4629 to i64
  store i64 %4630, i64* %474, align 8
  %4631 = load i64, i64* %6, align 8
  store i64 %4631, i64* %RDI.i4032.pre-phi, align 8
  %4632 = add i64 %4611, 24
  store i64 %4632, i64* %3, align 8
  %4633 = inttoptr i64 %4631 to i64*
  store i64 4277569, i64* %4633, align 8
  %4634 = load i64, i64* %RBP.i, align 8
  %4635 = add i64 %4634, -328
  %4636 = load i64, i64* %3, align 8
  %4637 = add i64 %4636, 7
  store i64 %4637, i64* %3, align 8
  %4638 = inttoptr i64 %4635 to i64*
  %4639 = load i64, i64* %4638, align 8
  store i64 %4639, i64* %RDI.i4032.pre-phi, align 8
  %4640 = add i64 %4634, -248
  %4641 = add i64 %4636, 13
  store i64 %4641, i64* %3, align 8
  %4642 = inttoptr i64 %4640 to i32*
  %4643 = load i32, i32* %4642, align 4
  %4644 = zext i32 %4643 to i64
  store i64 %4644, i64* %RSI.i3037, align 8
  %4645 = add i64 %4636, 26618
  %4646 = add i64 %4636, 18
  %4647 = load i64, i64* %6, align 8
  %4648 = add i64 %4647, -8
  %4649 = inttoptr i64 %4648 to i64*
  store i64 %4646, i64* %4649, align 8
  store i64 %4648, i64* %6, align 8
  store i64 %4645, i64* %3, align 8
  %call2_402113 = tail call %struct.Memory* @sub_408900._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4645, %struct.Memory* %call2_4020e9)
  %4650 = load i64, i64* %RBP.i, align 8
  %4651 = add i64 %4650, -84
  %4652 = load i64, i64* %3, align 8
  %4653 = add i64 %4652, 3
  store i64 %4653, i64* %3, align 8
  %4654 = inttoptr i64 %4651 to i32*
  %4655 = load i32, i32* %4654, align 4
  %4656 = zext i32 %4655 to i64
  store i64 %4656, i64* %RDX.i4024, align 8
  %4657 = add i64 %4650, -88
  %4658 = add i64 %4652, 6
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4657 to i32*
  %4660 = load i32, i32* %4659, align 4
  %4661 = zext i32 %4660 to i64
  store i64 %4661, i64* %RCX.i4028, align 8
  %4662 = add i64 %4650, -92
  %4663 = add i64 %4652, 10
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i32*
  %4665 = load i32, i32* %4664, align 4
  %4666 = zext i32 %4665 to i64
  store i64 %4666, i64* %247, align 8
  %4667 = add i64 %4650, -96
  %4668 = add i64 %4652, 14
  store i64 %4668, i64* %3, align 8
  %4669 = inttoptr i64 %4667 to i32*
  %4670 = load i32, i32* %4669, align 4
  %4671 = zext i32 %4670 to i64
  store i64 %4671, i64* %474, align 8
  %4672 = load i64, i64* %6, align 8
  store i64 %4672, i64* %RDI.i4032.pre-phi, align 8
  %4673 = add i64 %4652, 24
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i64*
  store i64 4277604, i64* %4674, align 8
  %4675 = load i64, i64* %RBP.i, align 8
  %4676 = add i64 %4675, -328
  %4677 = load i64, i64* %3, align 8
  %4678 = add i64 %4677, 7
  store i64 %4678, i64* %3, align 8
  %4679 = inttoptr i64 %4676 to i64*
  %4680 = load i64, i64* %4679, align 8
  store i64 %4680, i64* %RDI.i4032.pre-phi, align 8
  %4681 = add i64 %4675, -248
  %4682 = add i64 %4677, 13
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i32*
  %4684 = load i32, i32* %4683, align 4
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RSI.i3037, align 8
  %4686 = add i64 %4677, 26784
  %4687 = add i64 %4677, 18
  %4688 = load i64, i64* %6, align 8
  %4689 = add i64 %4688, -8
  %4690 = inttoptr i64 %4689 to i64*
  store i64 %4687, i64* %4690, align 8
  store i64 %4689, i64* %6, align 8
  store i64 %4686, i64* %3, align 8
  %call2_40213d = tail call %struct.Memory* @sub_4089d0._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4686, %struct.Memory* %call2_402113)
  %4691 = load i64, i64* %RBP.i, align 8
  %4692 = add i64 %4691, -84
  %4693 = load i64, i64* %3, align 8
  %4694 = add i64 %4693, 3
  store i64 %4694, i64* %3, align 8
  %4695 = inttoptr i64 %4692 to i32*
  %4696 = load i32, i32* %4695, align 4
  %4697 = zext i32 %4696 to i64
  store i64 %4697, i64* %RDX.i4024, align 8
  %4698 = add i64 %4691, -88
  %4699 = add i64 %4693, 6
  store i64 %4699, i64* %3, align 8
  %4700 = inttoptr i64 %4698 to i32*
  %4701 = load i32, i32* %4700, align 4
  %4702 = zext i32 %4701 to i64
  store i64 %4702, i64* %RCX.i4028, align 8
  %4703 = add i64 %4691, -92
  %4704 = add i64 %4693, 10
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i32*
  %4706 = load i32, i32* %4705, align 4
  %4707 = zext i32 %4706 to i64
  store i64 %4707, i64* %247, align 8
  %4708 = add i64 %4691, -96
  %4709 = add i64 %4693, 14
  store i64 %4709, i64* %3, align 8
  %4710 = inttoptr i64 %4708 to i32*
  %4711 = load i32, i32* %4710, align 4
  %4712 = zext i32 %4711 to i64
  store i64 %4712, i64* %474, align 8
  %4713 = load i64, i64* %6, align 8
  store i64 %4713, i64* %RDI.i4032.pre-phi, align 8
  %4714 = add i64 %4693, 24
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i64*
  store i64 4277640, i64* %4715, align 8
  %4716 = load i64, i64* %RBP.i, align 8
  %4717 = add i64 %4716, -328
  %4718 = load i64, i64* %3, align 8
  %4719 = add i64 %4718, 7
  store i64 %4719, i64* %3, align 8
  %4720 = inttoptr i64 %4717 to i64*
  %4721 = load i64, i64* %4720, align 8
  store i64 %4721, i64* %RDI.i4032.pre-phi, align 8
  %4722 = add i64 %4716, -248
  %4723 = add i64 %4718, 13
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  %4726 = zext i32 %4725 to i64
  store i64 %4726, i64* %RSI.i3037, align 8
  %4727 = add i64 %4718, 26950
  %4728 = add i64 %4718, 18
  %4729 = load i64, i64* %6, align 8
  %4730 = add i64 %4729, -8
  %4731 = inttoptr i64 %4730 to i64*
  store i64 %4728, i64* %4731, align 8
  store i64 %4730, i64* %6, align 8
  store i64 %4727, i64* %3, align 8
  %call2_402167 = tail call %struct.Memory* @sub_408aa0._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4727, %struct.Memory* %call2_40213d)
  %4732 = load i64, i64* %RBP.i, align 8
  %4733 = add i64 %4732, -84
  %4734 = load i64, i64* %3, align 8
  %4735 = add i64 %4734, 3
  store i64 %4735, i64* %3, align 8
  %4736 = inttoptr i64 %4733 to i32*
  %4737 = load i32, i32* %4736, align 4
  %4738 = zext i32 %4737 to i64
  store i64 %4738, i64* %RDX.i4024, align 8
  store i64 4277673, i64* %RAX.i4026, align 8
  store i64 4277673, i64* %RCX.i4028, align 8
  %4739 = add i64 %4732, -328
  %4740 = add i64 %4734, 17
  store i64 %4740, i64* %3, align 8
  %4741 = inttoptr i64 %4739 to i64*
  %4742 = load i64, i64* %4741, align 8
  store i64 %4742, i64* %RDI.i4032.pre-phi, align 8
  %4743 = add i64 %4732, -248
  %4744 = add i64 %4734, 23
  store i64 %4744, i64* %3, align 8
  %4745 = inttoptr i64 %4743 to i32*
  %4746 = load i32, i32* %4745, align 4
  %4747 = zext i32 %4746 to i64
  store i64 %4747, i64* %RSI.i3037, align 8
  %4748 = add i64 %4734, 27140
  %4749 = add i64 %4734, 28
  %4750 = load i64, i64* %6, align 8
  %4751 = add i64 %4750, -8
  %4752 = inttoptr i64 %4751 to i64*
  store i64 %4749, i64* %4752, align 8
  store i64 %4751, i64* %6, align 8
  store i64 %4748, i64* %3, align 8
  %call2_402183 = tail call %struct.Memory* @sub_408b70._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4748, %struct.Memory* %call2_402167)
  %4753 = load i64, i64* %RBP.i, align 8
  %4754 = add i64 %4753, -84
  %4755 = load i64, i64* %3, align 8
  %4756 = add i64 %4755, 3
  store i64 %4756, i64* %3, align 8
  %4757 = inttoptr i64 %4754 to i32*
  %4758 = load i32, i32* %4757, align 4
  %4759 = zext i32 %4758 to i64
  store i64 %4759, i64* %RDX.i4024, align 8
  %4760 = add i64 %4753, -88
  %4761 = add i64 %4755, 6
  store i64 %4761, i64* %3, align 8
  %4762 = inttoptr i64 %4760 to i32*
  %4763 = load i32, i32* %4762, align 4
  %4764 = zext i32 %4763 to i64
  store i64 %4764, i64* %RCX.i4028, align 8
  %4765 = add i64 %4753, -92
  %4766 = add i64 %4755, 10
  store i64 %4766, i64* %3, align 8
  %4767 = inttoptr i64 %4765 to i32*
  %4768 = load i32, i32* %4767, align 4
  %4769 = zext i32 %4768 to i64
  store i64 %4769, i64* %247, align 8
  %4770 = add i64 %4753, -96
  %4771 = add i64 %4755, 14
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4770 to i32*
  %4773 = load i32, i32* %4772, align 4
  %4774 = zext i32 %4773 to i64
  store i64 %4774, i64* %474, align 8
  %4775 = load i64, i64* %6, align 8
  store i64 %4775, i64* %RDI.i4032.pre-phi, align 8
  %4776 = add i64 %4755, 24
  store i64 %4776, i64* %3, align 8
  %4777 = inttoptr i64 %4775 to i64*
  store i64 4277695, i64* %4777, align 8
  %4778 = load i64, i64* %RBP.i, align 8
  %4779 = add i64 %4778, -328
  %4780 = load i64, i64* %3, align 8
  %4781 = add i64 %4780, 7
  store i64 %4781, i64* %3, align 8
  %4782 = inttoptr i64 %4779 to i64*
  %4783 = load i64, i64* %4782, align 8
  store i64 %4783, i64* %RDI.i4032.pre-phi, align 8
  %4784 = add i64 %4778, -248
  %4785 = add i64 %4780, 13
  store i64 %4785, i64* %3, align 8
  %4786 = inttoptr i64 %4784 to i32*
  %4787 = load i32, i32* %4786, align 4
  %4788 = zext i32 %4787 to i64
  store i64 %4788, i64* %RSI.i3037, align 8
  %4789 = add i64 %4780, 27248
  %4790 = add i64 %4780, 18
  %4791 = load i64, i64* %6, align 8
  %4792 = add i64 %4791, -8
  %4793 = inttoptr i64 %4792 to i64*
  store i64 %4790, i64* %4793, align 8
  store i64 %4792, i64* %6, align 8
  store i64 %4789, i64* %3, align 8
  %call2_4021ad = tail call %struct.Memory* @sub_408c10._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4789, %struct.Memory* %call2_402183)
  %4794 = load i64, i64* %RBP.i, align 8
  %4795 = add i64 %4794, -84
  %4796 = load i64, i64* %3, align 8
  %4797 = add i64 %4796, 3
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4795 to i32*
  %4799 = load i32, i32* %4798, align 4
  %4800 = zext i32 %4799 to i64
  store i64 %4800, i64* %RDX.i4024, align 8
  store i64 4277726, i64* %RAX.i4026, align 8
  store i64 4277726, i64* %RCX.i4028, align 8
  %4801 = add i64 %4794, -328
  %4802 = add i64 %4796, 17
  store i64 %4802, i64* %3, align 8
  %4803 = inttoptr i64 %4801 to i64*
  %4804 = load i64, i64* %4803, align 8
  store i64 %4804, i64* %RDI.i4032.pre-phi, align 8
  %4805 = add i64 %4794, -248
  %4806 = add i64 %4796, 23
  store i64 %4806, i64* %3, align 8
  %4807 = inttoptr i64 %4805 to i32*
  %4808 = load i32, i32* %4807, align 4
  %4809 = zext i32 %4808 to i64
  store i64 %4809, i64* %RSI.i3037, align 8
  %4810 = add i64 %4796, 27438
  %4811 = add i64 %4796, 28
  %4812 = load i64, i64* %6, align 8
  %4813 = add i64 %4812, -8
  %4814 = inttoptr i64 %4813 to i64*
  store i64 %4811, i64* %4814, align 8
  store i64 %4813, i64* %6, align 8
  store i64 %4810, i64* %3, align 8
  %call2_4021c9 = tail call %struct.Memory* @sub_408ce0._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4810, %struct.Memory* %call2_4021ad)
  %4815 = load i64, i64* %RBP.i, align 8
  %4816 = add i64 %4815, -84
  %4817 = load i64, i64* %3, align 8
  %4818 = add i64 %4817, 3
  store i64 %4818, i64* %3, align 8
  %4819 = inttoptr i64 %4816 to i32*
  %4820 = load i32, i32* %4819, align 4
  %4821 = zext i32 %4820 to i64
  store i64 %4821, i64* %RDX.i4024, align 8
  %4822 = add i64 %4815, -88
  %4823 = add i64 %4817, 6
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4822 to i32*
  %4825 = load i32, i32* %4824, align 4
  %4826 = zext i32 %4825 to i64
  store i64 %4826, i64* %RCX.i4028, align 8
  %4827 = add i64 %4815, -92
  %4828 = add i64 %4817, 10
  store i64 %4828, i64* %3, align 8
  %4829 = inttoptr i64 %4827 to i32*
  %4830 = load i32, i32* %4829, align 4
  %4831 = zext i32 %4830 to i64
  store i64 %4831, i64* %247, align 8
  %4832 = add i64 %4815, -96
  %4833 = add i64 %4817, 14
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i32*
  %4835 = load i32, i32* %4834, align 4
  %4836 = zext i32 %4835 to i64
  store i64 %4836, i64* %474, align 8
  %4837 = load i64, i64* %6, align 8
  store i64 %4837, i64* %RDI.i4032.pre-phi, align 8
  %4838 = add i64 %4817, 24
  store i64 %4838, i64* %3, align 8
  %4839 = inttoptr i64 %4837 to i64*
  store i64 4277747, i64* %4839, align 8
  %4840 = load i64, i64* %RBP.i, align 8
  %4841 = add i64 %4840, -328
  %4842 = load i64, i64* %3, align 8
  %4843 = add i64 %4842, 7
  store i64 %4843, i64* %3, align 8
  %4844 = inttoptr i64 %4841 to i64*
  %4845 = load i64, i64* %4844, align 8
  store i64 %4845, i64* %RDI.i4032.pre-phi, align 8
  %4846 = add i64 %4840, -248
  %4847 = add i64 %4842, 13
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  %4849 = load i32, i32* %4848, align 4
  %4850 = zext i32 %4849 to i64
  store i64 %4850, i64* %RSI.i3037, align 8
  %4851 = add i64 %4842, 27546
  %4852 = add i64 %4842, 18
  %4853 = load i64, i64* %6, align 8
  %4854 = add i64 %4853, -8
  %4855 = inttoptr i64 %4854 to i64*
  store i64 %4852, i64* %4855, align 8
  store i64 %4854, i64* %6, align 8
  store i64 %4851, i64* %3, align 8
  %call2_4021f3 = tail call %struct.Memory* @sub_408d80._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4851, %struct.Memory* %call2_4021c9)
  %4856 = load i64, i64* %RBP.i, align 8
  %4857 = add i64 %4856, -84
  %4858 = load i64, i64* %3, align 8
  %4859 = add i64 %4858, 3
  store i64 %4859, i64* %3, align 8
  %4860 = inttoptr i64 %4857 to i32*
  %4861 = load i32, i32* %4860, align 4
  %4862 = zext i32 %4861 to i64
  store i64 %4862, i64* %RDX.i4024, align 8
  store i64 4277777, i64* %RAX.i4026, align 8
  store i64 4277777, i64* %RCX.i4028, align 8
  %4863 = add i64 %4856, -328
  %4864 = add i64 %4858, 17
  store i64 %4864, i64* %3, align 8
  %4865 = inttoptr i64 %4863 to i64*
  %4866 = load i64, i64* %4865, align 8
  store i64 %4866, i64* %RDI.i4032.pre-phi, align 8
  %4867 = add i64 %4856, -248
  %4868 = add i64 %4858, 23
  store i64 %4868, i64* %3, align 8
  %4869 = inttoptr i64 %4867 to i32*
  %4870 = load i32, i32* %4869, align 4
  %4871 = zext i32 %4870 to i64
  store i64 %4871, i64* %RSI.i3037, align 8
  %4872 = add i64 %4858, 27736
  %4873 = add i64 %4858, 28
  %4874 = load i64, i64* %6, align 8
  %4875 = add i64 %4874, -8
  %4876 = inttoptr i64 %4875 to i64*
  store i64 %4873, i64* %4876, align 8
  store i64 %4875, i64* %6, align 8
  store i64 %4872, i64* %3, align 8
  %call2_40220f = tail call %struct.Memory* @sub_408e50._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %4872, %struct.Memory* %call2_4021f3)
  %4877 = load i64, i64* %RBP.i, align 8
  %4878 = add i64 %4877, -84
  %4879 = load i64, i64* %3, align 8
  %4880 = add i64 %4879, 3
  store i64 %4880, i64* %3, align 8
  %4881 = inttoptr i64 %4878 to i32*
  %4882 = load i32, i32* %4881, align 4
  %4883 = zext i32 %4882 to i64
  store i64 %4883, i64* %RDX.i4024, align 8
  %4884 = add i64 %4877, -88
  %4885 = add i64 %4879, 6
  store i64 %4885, i64* %3, align 8
  %4886 = inttoptr i64 %4884 to i32*
  %4887 = load i32, i32* %4886, align 4
  %4888 = zext i32 %4887 to i64
  store i64 %4888, i64* %RCX.i4028, align 8
  %4889 = add i64 %4877, -92
  %4890 = add i64 %4879, 10
  store i64 %4890, i64* %3, align 8
  %4891 = inttoptr i64 %4889 to i32*
  %4892 = load i32, i32* %4891, align 4
  %4893 = zext i32 %4892 to i64
  store i64 %4893, i64* %247, align 8
  %4894 = add i64 %4877, -96
  %4895 = add i64 %4879, 14
  store i64 %4895, i64* %3, align 8
  %4896 = inttoptr i64 %4894 to i32*
  %4897 = load i32, i32* %4896, align 4
  %4898 = zext i32 %4897 to i64
  store i64 %4898, i64* %474, align 8
  %4899 = load i64, i64* %6, align 8
  store i64 %4899, i64* %RDI.i4032.pre-phi, align 8
  %4900 = add i64 %4879, 24
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4899 to i64*
  store i64 4277799, i64* %4901, align 8
  %4902 = load i64, i64* %RBP.i, align 8
  %4903 = add i64 %4902, -328
  %4904 = load i64, i64* %3, align 8
  %4905 = add i64 %4904, 7
  store i64 %4905, i64* %3, align 8
  %4906 = inttoptr i64 %4903 to i64*
  %4907 = load i64, i64* %4906, align 8
  store i64 %4907, i64* %RDI.i4032.pre-phi, align 8
  %4908 = add i64 %4902, -248
  %4909 = add i64 %4904, 13
  store i64 %4909, i64* %3, align 8
  %4910 = inttoptr i64 %4908 to i32*
  %4911 = load i32, i32* %4910, align 4
  %4912 = zext i32 %4911 to i64
  store i64 %4912, i64* %RSI.i3037, align 8
  %4913 = add i64 %4904, 27844
  %4914 = add i64 %4904, 18
  %4915 = load i64, i64* %6, align 8
  %4916 = add i64 %4915, -8
  %4917 = inttoptr i64 %4916 to i64*
  store i64 %4914, i64* %4917, align 8
  store i64 %4916, i64* %6, align 8
  store i64 %4913, i64* %3, align 8
  %call2_402239 = tail call %struct.Memory* @sub_408ef0._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %4913, %struct.Memory* %call2_40220f)
  %4918 = load i64, i64* %3, align 8
  %4919 = add i64 %4918, 2195018
  %4920 = add i64 %4918, 8
  store i64 %4920, i64* %3, align 8
  %4921 = inttoptr i64 %4919 to i64*
  %4922 = load i64, i64* %4921, align 8
  store i64 %4922, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %.cast3 = bitcast i64 %4922 to double
  %4923 = tail call double @llvm.trunc.f64(double %.cast3)
  %4924 = tail call double @llvm.fabs.f64(double %4923)
  %4925 = fcmp ogt double %4924, 0x43E0000000000000
  %4926 = fptosi double %4923 to i64
  %4927 = select i1 %4925, i64 -9223372036854775808, i64 %4926
  store i64 %4927, i64* %RDX.i4024, align 8
  store i64 6558144, i64* %RDI.i4032.pre-phi, align 8
  store i64 6622144, i64* %RAX.i4026, align 8
  store i64 6622144, i64* %RSI.i3037, align 8
  %4928 = load i64, i64* %RBP.i, align 8
  %4929 = add i64 %4928, -344
  %4930 = add i64 %4918, 34
  store i64 %4930, i64* %3, align 8
  %4931 = inttoptr i64 %4929 to i64*
  store i64 6558144, i64* %4931, align 8
  %4932 = load i64, i64* %3, align 8
  %4933 = add i64 %4932, 28000
  %4934 = add i64 %4932, 5
  %4935 = load i64, i64* %6, align 8
  %4936 = add i64 %4935, -8
  %4937 = inttoptr i64 %4936 to i64*
  store i64 %4934, i64* %4937, align 8
  store i64 %4936, i64* %6, align 8
  store i64 %4933, i64* %3, align 8
  %call2_402260 = tail call %struct.Memory* @sub_408fc0._Z4fillIPllEvT_S1_T0_(%struct.State* nonnull %0, i64 %4933, %struct.Memory* %call2_402239)
  %4938 = load i64, i64* %RBP.i, align 8
  %4939 = add i64 %4938, -40
  %4940 = load i64, i64* %3, align 8
  %4941 = add i64 %4940, 6
  store i64 %4941, i64* %3, align 8
  %4942 = inttoptr i64 %4939 to double*
  %4943 = load double, double* %4942, align 8
  %4944 = tail call double @llvm.trunc.f64(double %4943)
  %4945 = tail call double @llvm.fabs.f64(double %4944)
  %4946 = fcmp ogt double %4945, 0x43E0000000000000
  %4947 = fptosi double %4944 to i64
  %4948 = select i1 %4946, i64 -9223372036854775808, i64 %4947
  store i64 %4948, i64* %RDX.i4024, align 8
  %4949 = add i64 %4938, -104
  %4950 = add i64 %4940, 10
  store i64 %4950, i64* %3, align 8
  %4951 = inttoptr i64 %4949 to i64*
  store i64 %4948, i64* %4951, align 8
  %4952 = load i64, i64* %RBP.i, align 8
  %4953 = add i64 %4952, -104
  %4954 = load i64, i64* %3, align 8
  %4955 = add i64 %4954, 4
  store i64 %4955, i64* %3, align 8
  %4956 = inttoptr i64 %4953 to i64*
  %4957 = load i64, i64* %4956, align 8
  %4958 = shl i64 %4957, 1
  store i64 %4958, i64* %RDX.i4024, align 8
  %4959 = icmp ult i64 %4958, %4957
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %26, align 1
  %4961 = trunc i64 %4958 to i32
  %4962 = and i32 %4961, 254
  %4963 = tail call i32 @llvm.ctpop.i32(i32 %4962)
  %4964 = trunc i32 %4963 to i8
  %4965 = and i8 %4964, 1
  %4966 = xor i8 %4965, 1
  store i8 %4966, i8* %33, align 1
  %4967 = lshr i64 %4957, 3
  %4968 = trunc i64 %4967 to i8
  %4969 = and i8 %4968, 1
  store i8 %4969, i8* %39, align 1
  %4970 = icmp eq i64 %4958, 0
  %4971 = zext i1 %4970 to i8
  store i8 %4971, i8* %42, align 1
  %4972 = lshr i64 %4957, 62
  %4973 = and i64 %4972, 1
  %4974 = trunc i64 %4973 to i8
  store i8 %4974, i8* %45, align 1
  %4975 = lshr i64 %4957, 63
  %4976 = xor i64 %4973, %4975
  %4977 = trunc i64 %4976 to i8
  store i8 %4977, i8* %51, align 1
  %4978 = add i64 %4952, -112
  %4979 = add i64 %4954, 11
  store i64 %4979, i64* %3, align 8
  %4980 = inttoptr i64 %4978 to i64*
  store i64 %4958, i64* %4980, align 8
  %4981 = load i64, i64* %RBP.i, align 8
  %4982 = add i64 %4981, -104
  %4983 = load i64, i64* %3, align 8
  %4984 = add i64 %4983, 4
  store i64 %4984, i64* %3, align 8
  %4985 = inttoptr i64 %4982 to i64*
  %4986 = load i64, i64* %4985, align 8
  %4987 = add i64 %4986, 2
  store i64 %4987, i64* %RDX.i4024, align 8
  %4988 = icmp ugt i64 %4986, -3
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %26, align 1
  %4990 = trunc i64 %4987 to i32
  %4991 = and i32 %4990, 255
  %4992 = tail call i32 @llvm.ctpop.i32(i32 %4991)
  %4993 = trunc i32 %4992 to i8
  %4994 = and i8 %4993, 1
  %4995 = xor i8 %4994, 1
  store i8 %4995, i8* %33, align 1
  %4996 = xor i64 %4987, %4986
  %4997 = lshr i64 %4996, 4
  %4998 = trunc i64 %4997 to i8
  %4999 = and i8 %4998, 1
  store i8 %4999, i8* %39, align 1
  %5000 = icmp eq i64 %4987, 0
  %5001 = zext i1 %5000 to i8
  store i8 %5001, i8* %42, align 1
  %5002 = lshr i64 %4987, 63
  %5003 = trunc i64 %5002 to i8
  store i8 %5003, i8* %45, align 1
  %5004 = lshr i64 %4986, 63
  %5005 = xor i64 %5002, %5004
  %5006 = add nuw nsw i64 %5005, %5002
  %5007 = icmp eq i64 %5006, 2
  %5008 = zext i1 %5007 to i8
  store i8 %5008, i8* %51, align 1
  %5009 = add i64 %4981, -120
  %5010 = add i64 %4983, 12
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i64*
  store i64 %4987, i64* %5011, align 8
  %5012 = load i64, i64* %RBP.i, align 8
  %5013 = add i64 %5012, -104
  %5014 = load i64, i64* %3, align 8
  %5015 = add i64 %5014, 4
  store i64 %5015, i64* %3, align 8
  %5016 = inttoptr i64 %5013 to i64*
  %5017 = load i64, i64* %5016, align 8
  store i64 %5017, i64* %RDX.i4024, align 8
  %5018 = add i64 %5012, -112
  %5019 = add i64 %5014, 8
  store i64 %5019, i64* %3, align 8
  %5020 = inttoptr i64 %5018 to i64*
  %5021 = load i64, i64* %5020, align 8
  store i64 %5021, i64* %RAX.i4026, align 8
  %5022 = add i64 %5012, -120
  %5023 = add i64 %5014, 12
  store i64 %5023, i64* %3, align 8
  %5024 = inttoptr i64 %5022 to i64*
  %5025 = load i64, i64* %5024, align 8
  store i64 %5025, i64* %RSI.i3037, align 8
  %5026 = add i64 %5012, -352
  %5027 = add i64 %5014, 19
  store i64 %5027, i64* %3, align 8
  %5028 = inttoptr i64 %5026 to i64*
  store i64 %5017, i64* %5028, align 8
  %5029 = load i64, i64* %3, align 8
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5031 = load i64, i64* %5030, align 8
  %5032 = ashr i64 %5031, 63
  store i64 %5032, i64* %373, align 8
  %5033 = load i64, i64* %RSI.i3037, align 8
  %5034 = add i64 %5029, 5
  store i64 %5034, i64* %3, align 8
  %5035 = sext i64 %5033 to i128
  %5036 = and i128 %5035, -18446744073709551616
  %5037 = zext i64 %5032 to i128
  %5038 = shl nuw i128 %5037, 64
  %5039 = zext i64 %5031 to i128
  %5040 = or i128 %5038, %5039
  %5041 = zext i64 %5033 to i128
  %5042 = or i128 %5036, %5041
  %5043 = sdiv i128 %5040, %5042
  %5044 = trunc i128 %5043 to i64
  %5045 = and i128 %5043, 18446744073709551615
  %5046 = sext i64 %5044 to i128
  %5047 = and i128 %5046, -18446744073709551616
  %5048 = or i128 %5047, %5045
  %5049 = icmp eq i128 %5043, %5048
  br i1 %5049, label %5052, label %5050

; <label>:5050:                                   ; preds = %routine_divl__r8d.exit
  %5051 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5034, %struct.Memory* %call2_402260)
  %.pre25 = load i64, i64* %3, align 8
  %.pre26 = load i64, i64* %RAX.i4026, align 8
  br label %routine_idivq__rsi.exit

; <label>:5052:                                   ; preds = %routine_divl__r8d.exit
  %5053 = srem i128 %5040, %5042
  %5054 = trunc i128 %5053 to i64
  store i64 %5044, i64* %5030, align 8
  store i64 %5054, i64* %373, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %5052, %5050
  %5055 = phi i64 [ %.pre26, %5050 ], [ %5044, %5052 ]
  %5056 = phi i64 [ %.pre25, %5050 ], [ %5034, %5052 ]
  %5057 = phi %struct.Memory* [ %5051, %5050 ], [ %call2_402260, %5052 ]
  %5058 = load i64, i64* %RBP.i, align 8
  %5059 = add i64 %5058, -352
  %5060 = add i64 %5056, 7
  store i64 %5060, i64* %3, align 8
  %5061 = inttoptr i64 %5059 to i64*
  %5062 = load i64, i64* %5061, align 8
  %5063 = add i64 %5055, %5062
  store i64 %5063, i64* %RDX.i4024, align 8
  %5064 = icmp ult i64 %5063, %5062
  %5065 = icmp ult i64 %5063, %5055
  %5066 = or i1 %5064, %5065
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %26, align 1
  %5068 = trunc i64 %5063 to i32
  %5069 = and i32 %5068, 255
  %5070 = tail call i32 @llvm.ctpop.i32(i32 %5069)
  %5071 = trunc i32 %5070 to i8
  %5072 = and i8 %5071, 1
  %5073 = xor i8 %5072, 1
  store i8 %5073, i8* %33, align 1
  %5074 = xor i64 %5055, %5062
  %5075 = xor i64 %5074, %5063
  %5076 = lshr i64 %5075, 4
  %5077 = trunc i64 %5076 to i8
  %5078 = and i8 %5077, 1
  store i8 %5078, i8* %39, align 1
  %5079 = icmp eq i64 %5063, 0
  %5080 = zext i1 %5079 to i8
  store i8 %5080, i8* %42, align 1
  %5081 = lshr i64 %5063, 63
  %5082 = trunc i64 %5081 to i8
  store i8 %5082, i8* %45, align 1
  %5083 = lshr i64 %5062, 63
  %5084 = lshr i64 %5055, 63
  %5085 = xor i64 %5081, %5083
  %5086 = xor i64 %5081, %5084
  %5087 = add nuw nsw i64 %5085, %5086
  %5088 = icmp eq i64 %5087, 2
  %5089 = zext i1 %5088 to i8
  store i8 %5089, i8* %51, align 1
  %5090 = add i64 %5058, -128
  %5091 = add i64 %5056, 14
  store i64 %5091, i64* %3, align 8
  %5092 = inttoptr i64 %5090 to i64*
  store i64 %5063, i64* %5092, align 8
  %5093 = load i64, i64* %RBP.i, align 8
  %5094 = add i64 %5093, -104
  %5095 = load i64, i64* %3, align 8
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %3, align 8
  %5097 = inttoptr i64 %5094 to i64*
  %5098 = load i64, i64* %5097, align 8
  store i64 %5098, i64* %RDX.i4024, align 8
  store i64 4277831, i64* %RCX.i4028, align 8
  %5099 = add i64 %5093, -344
  %5100 = add i64 %5095, 16
  store i64 %5100, i64* %3, align 8
  %5101 = inttoptr i64 %5099 to i64*
  %5102 = load i64, i64* %5101, align 8
  store i64 %5102, i64* %RDI.i4032.pre-phi, align 8
  %5103 = add i64 %5093, -248
  %5104 = add i64 %5095, 22
  store i64 %5104, i64* %3, align 8
  %5105 = inttoptr i64 %5103 to i32*
  %5106 = load i32, i32* %5105, align 4
  %5107 = zext i32 %5106 to i64
  store i64 %5107, i64* %RSI.i3037, align 8
  %5108 = add i64 %5095, 27988
  %5109 = add i64 %5095, 27
  %5110 = load i64, i64* %6, align 8
  %5111 = add i64 %5110, -8
  %5112 = inttoptr i64 %5111 to i64*
  store i64 %5109, i64* %5112, align 8
  store i64 %5111, i64* %6, align 8
  store i64 %5108, i64* %3, align 8
  %call2_4022c2 = tail call %struct.Memory* @sub_409000._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5108, %struct.Memory* %5057)
  %5113 = load i64, i64* %RBP.i, align 8
  %5114 = add i64 %5113, -104
  %5115 = load i64, i64* %3, align 8
  %5116 = add i64 %5115, 4
  store i64 %5116, i64* %3, align 8
  %5117 = inttoptr i64 %5114 to i64*
  %5118 = load i64, i64* %5117, align 8
  store i64 %5118, i64* %RDX.i4024, align 8
  store i64 4277853, i64* %RSI.i3037, align 8
  store i64 4277853, i64* %RCX.i4028, align 8
  %5119 = add i64 %5113, -344
  %5120 = add i64 %5115, 18
  store i64 %5120, i64* %3, align 8
  %5121 = inttoptr i64 %5119 to i64*
  %5122 = load i64, i64* %5121, align 8
  store i64 %5122, i64* %RDI.i4032.pre-phi, align 8
  %5123 = add i64 %5113, -248
  %5124 = add i64 %5115, 24
  store i64 %5124, i64* %3, align 8
  %5125 = inttoptr i64 %5123 to i32*
  %5126 = load i32, i32* %5125, align 4
  %5127 = zext i32 %5126 to i64
  store i64 %5127, i64* %RSI.i3037, align 8
  %5128 = add i64 %5115, 28137
  %5129 = add i64 %5115, 29
  %5130 = load i64, i64* %6, align 8
  %5131 = add i64 %5130, -8
  %5132 = inttoptr i64 %5131 to i64*
  store i64 %5129, i64* %5132, align 8
  store i64 %5131, i64* %6, align 8
  store i64 %5128, i64* %3, align 8
  %call2_4022df = tail call %struct.Memory* @sub_4090b0._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5128, %struct.Memory* %call2_4022c2)
  %5133 = load i64, i64* %RBP.i, align 8
  %5134 = add i64 %5133, -104
  %5135 = load i64, i64* %3, align 8
  %5136 = add i64 %5135, 4
  store i64 %5136, i64* %3, align 8
  %5137 = inttoptr i64 %5134 to i64*
  %5138 = load i64, i64* %5137, align 8
  store i64 %5138, i64* %RDX.i4024, align 8
  %5139 = add i64 %5133, -112
  %5140 = add i64 %5135, 8
  store i64 %5140, i64* %3, align 8
  %5141 = inttoptr i64 %5139 to i64*
  %5142 = load i64, i64* %5141, align 8
  store i64 %5142, i64* %RCX.i4028, align 8
  %5143 = add i64 %5133, -120
  %5144 = add i64 %5135, 12
  store i64 %5144, i64* %3, align 8
  %5145 = inttoptr i64 %5143 to i64*
  %5146 = load i64, i64* %5145, align 8
  store i64 %5146, i64* %247, align 8
  %5147 = add i64 %5133, -128
  %5148 = add i64 %5135, 16
  store i64 %5148, i64* %3, align 8
  %5149 = inttoptr i64 %5147 to i64*
  %5150 = load i64, i64* %5149, align 8
  store i64 %5150, i64* %474, align 8
  %5151 = load i64, i64* %6, align 8
  store i64 %5151, i64* %RAX.i4026, align 8
  %5152 = add i64 %5135, 26
  store i64 %5152, i64* %3, align 8
  %5153 = inttoptr i64 %5151 to i64*
  store i64 4277883, i64* %5153, align 8
  %5154 = load i64, i64* %RBP.i, align 8
  %5155 = add i64 %5154, -344
  %5156 = load i64, i64* %3, align 8
  %5157 = add i64 %5156, 7
  store i64 %5157, i64* %3, align 8
  %5158 = inttoptr i64 %5155 to i64*
  %5159 = load i64, i64* %5158, align 8
  store i64 %5159, i64* %RDI.i4032.pre-phi, align 8
  %5160 = add i64 %5154, -248
  %5161 = add i64 %5156, 13
  store i64 %5161, i64* %3, align 8
  %5162 = inttoptr i64 %5160 to i32*
  %5163 = load i32, i32* %5162, align 4
  %5164 = zext i32 %5163 to i64
  store i64 %5164, i64* %RSI.i3037, align 8
  %5165 = add i64 %5156, 28258
  %5166 = add i64 %5156, 18
  %5167 = load i64, i64* %6, align 8
  %5168 = add i64 %5167, -8
  %5169 = inttoptr i64 %5168 to i64*
  store i64 %5166, i64* %5169, align 8
  store i64 %5168, i64* %6, align 8
  store i64 %5165, i64* %3, align 8
  %call2_40230b = tail call %struct.Memory* @sub_409160._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5165, %struct.Memory* %call2_4022df)
  %5170 = load i64, i64* %RBP.i, align 8
  %5171 = add i64 %5170, -104
  %5172 = load i64, i64* %3, align 8
  %5173 = add i64 %5172, 4
  store i64 %5173, i64* %3, align 8
  %5174 = inttoptr i64 %5171 to i64*
  %5175 = load i64, i64* %5174, align 8
  store i64 %5175, i64* %RDX.i4024, align 8
  store i64 4277915, i64* %RSI.i3037, align 8
  store i64 4277915, i64* %RCX.i4028, align 8
  %5176 = add i64 %5170, -344
  %5177 = add i64 %5172, 18
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i64*
  %5179 = load i64, i64* %5178, align 8
  store i64 %5179, i64* %RDI.i4032.pre-phi, align 8
  %5180 = add i64 %5170, -248
  %5181 = add i64 %5172, 24
  store i64 %5181, i64* %3, align 8
  %5182 = inttoptr i64 %5180 to i32*
  %5183 = load i32, i32* %5182, align 4
  %5184 = zext i32 %5183 to i64
  store i64 %5184, i64* %RSI.i3037, align 8
  %5185 = add i64 %5172, 28448
  %5186 = add i64 %5172, 29
  %5187 = load i64, i64* %6, align 8
  %5188 = add i64 %5187, -8
  %5189 = inttoptr i64 %5188 to i64*
  store i64 %5186, i64* %5189, align 8
  store i64 %5188, i64* %6, align 8
  store i64 %5185, i64* %3, align 8
  %call2_402328 = tail call %struct.Memory* @sub_409230._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5185, %struct.Memory* %call2_40230b)
  %5190 = load i64, i64* %RBP.i, align 8
  %5191 = add i64 %5190, -104
  %5192 = load i64, i64* %3, align 8
  %5193 = add i64 %5192, 4
  store i64 %5193, i64* %3, align 8
  %5194 = inttoptr i64 %5191 to i64*
  %5195 = load i64, i64* %5194, align 8
  store i64 %5195, i64* %RDX.i4024, align 8
  %5196 = add i64 %5190, -112
  %5197 = add i64 %5192, 8
  store i64 %5197, i64* %3, align 8
  %5198 = inttoptr i64 %5196 to i64*
  %5199 = load i64, i64* %5198, align 8
  store i64 %5199, i64* %RCX.i4028, align 8
  %5200 = add i64 %5190, -120
  %5201 = add i64 %5192, 12
  store i64 %5201, i64* %3, align 8
  %5202 = inttoptr i64 %5200 to i64*
  %5203 = load i64, i64* %5202, align 8
  store i64 %5203, i64* %247, align 8
  %5204 = add i64 %5190, -128
  %5205 = add i64 %5192, 16
  store i64 %5205, i64* %3, align 8
  %5206 = inttoptr i64 %5204 to i64*
  %5207 = load i64, i64* %5206, align 8
  store i64 %5207, i64* %474, align 8
  %5208 = load i64, i64* %6, align 8
  store i64 %5208, i64* %RAX.i4026, align 8
  %5209 = add i64 %5192, 26
  store i64 %5209, i64* %3, align 8
  %5210 = inttoptr i64 %5208 to i64*
  store i64 4277942, i64* %5210, align 8
  %5211 = load i64, i64* %RBP.i, align 8
  %5212 = add i64 %5211, -344
  %5213 = load i64, i64* %3, align 8
  %5214 = add i64 %5213, 7
  store i64 %5214, i64* %3, align 8
  %5215 = inttoptr i64 %5212 to i64*
  %5216 = load i64, i64* %5215, align 8
  store i64 %5216, i64* %RDI.i4032.pre-phi, align 8
  %5217 = add i64 %5211, -248
  %5218 = add i64 %5213, 13
  store i64 %5218, i64* %3, align 8
  %5219 = inttoptr i64 %5217 to i32*
  %5220 = load i32, i32* %5219, align 4
  %5221 = zext i32 %5220 to i64
  store i64 %5221, i64* %RSI.i3037, align 8
  %5222 = add i64 %5213, 28569
  %5223 = add i64 %5213, 18
  %5224 = load i64, i64* %6, align 8
  %5225 = add i64 %5224, -8
  %5226 = inttoptr i64 %5225 to i64*
  store i64 %5223, i64* %5226, align 8
  store i64 %5225, i64* %6, align 8
  store i64 %5222, i64* %3, align 8
  %call2_402354 = tail call %struct.Memory* @sub_4092e0._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5222, %struct.Memory* %call2_402328)
  %5227 = load i64, i64* %RBP.i, align 8
  %5228 = add i64 %5227, -104
  %5229 = load i64, i64* %3, align 8
  %5230 = add i64 %5229, 4
  store i64 %5230, i64* %3, align 8
  %5231 = inttoptr i64 %5228 to i64*
  %5232 = load i64, i64* %5231, align 8
  store i64 %5232, i64* %RDX.i4024, align 8
  store i64 4277979, i64* %RSI.i3037, align 8
  store i64 4277979, i64* %RCX.i4028, align 8
  %5233 = add i64 %5227, -344
  %5234 = add i64 %5229, 18
  store i64 %5234, i64* %3, align 8
  %5235 = inttoptr i64 %5233 to i64*
  %5236 = load i64, i64* %5235, align 8
  store i64 %5236, i64* %RDI.i4032.pre-phi, align 8
  %5237 = add i64 %5227, -248
  %5238 = add i64 %5229, 24
  store i64 %5238, i64* %3, align 8
  %5239 = inttoptr i64 %5237 to i32*
  %5240 = load i32, i32* %5239, align 4
  %5241 = zext i32 %5240 to i64
  store i64 %5241, i64* %RSI.i3037, align 8
  %5242 = add i64 %5229, 28759
  %5243 = add i64 %5229, 29
  %5244 = load i64, i64* %6, align 8
  %5245 = add i64 %5244, -8
  %5246 = inttoptr i64 %5245 to i64*
  store i64 %5243, i64* %5246, align 8
  store i64 %5245, i64* %6, align 8
  store i64 %5242, i64* %3, align 8
  %call2_402371 = tail call %struct.Memory* @sub_4093b0._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5242, %struct.Memory* %call2_402354)
  %5247 = load i64, i64* %RBP.i, align 8
  %5248 = add i64 %5247, -104
  %5249 = load i64, i64* %3, align 8
  %5250 = add i64 %5249, 4
  store i64 %5250, i64* %3, align 8
  %5251 = inttoptr i64 %5248 to i64*
  %5252 = load i64, i64* %5251, align 8
  store i64 %5252, i64* %RDX.i4024, align 8
  %5253 = add i64 %5247, -112
  %5254 = add i64 %5249, 8
  store i64 %5254, i64* %3, align 8
  %5255 = inttoptr i64 %5253 to i64*
  %5256 = load i64, i64* %5255, align 8
  store i64 %5256, i64* %RCX.i4028, align 8
  %5257 = add i64 %5247, -120
  %5258 = add i64 %5249, 12
  store i64 %5258, i64* %3, align 8
  %5259 = inttoptr i64 %5257 to i64*
  %5260 = load i64, i64* %5259, align 8
  store i64 %5260, i64* %247, align 8
  %5261 = add i64 %5247, -128
  %5262 = add i64 %5249, 16
  store i64 %5262, i64* %3, align 8
  %5263 = inttoptr i64 %5261 to i64*
  %5264 = load i64, i64* %5263, align 8
  store i64 %5264, i64* %474, align 8
  %5265 = load i64, i64* %6, align 8
  store i64 %5265, i64* %RAX.i4026, align 8
  %5266 = add i64 %5249, 26
  store i64 %5266, i64* %3, align 8
  %5267 = inttoptr i64 %5265 to i64*
  store i64 4278006, i64* %5267, align 8
  %5268 = load i64, i64* %RBP.i, align 8
  %5269 = add i64 %5268, -344
  %5270 = load i64, i64* %3, align 8
  %5271 = add i64 %5270, 7
  store i64 %5271, i64* %3, align 8
  %5272 = inttoptr i64 %5269 to i64*
  %5273 = load i64, i64* %5272, align 8
  store i64 %5273, i64* %RDI.i4032.pre-phi, align 8
  %5274 = add i64 %5268, -248
  %5275 = add i64 %5270, 13
  store i64 %5275, i64* %3, align 8
  %5276 = inttoptr i64 %5274 to i32*
  %5277 = load i32, i32* %5276, align 4
  %5278 = zext i32 %5277 to i64
  store i64 %5278, i64* %RSI.i3037, align 8
  %5279 = add i64 %5270, 28880
  %5280 = add i64 %5270, 18
  %5281 = load i64, i64* %6, align 8
  %5282 = add i64 %5281, -8
  %5283 = inttoptr i64 %5282 to i64*
  store i64 %5280, i64* %5283, align 8
  store i64 %5282, i64* %6, align 8
  store i64 %5279, i64* %3, align 8
  %call2_40239d = tail call %struct.Memory* @sub_409460._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5279, %struct.Memory* %call2_402371)
  %5284 = load i64, i64* %RBP.i, align 8
  %5285 = add i64 %5284, -104
  %5286 = load i64, i64* %3, align 8
  %5287 = add i64 %5286, 4
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5285 to i64*
  %5289 = load i64, i64* %5288, align 8
  store i64 %5289, i64* %RDX.i4024, align 8
  %5290 = add i64 %5284, -112
  %5291 = add i64 %5286, 8
  store i64 %5291, i64* %3, align 8
  %5292 = inttoptr i64 %5290 to i64*
  %5293 = load i64, i64* %5292, align 8
  store i64 %5293, i64* %RCX.i4028, align 8
  %5294 = add i64 %5284, -120
  %5295 = add i64 %5286, 12
  store i64 %5295, i64* %3, align 8
  %5296 = inttoptr i64 %5294 to i64*
  %5297 = load i64, i64* %5296, align 8
  store i64 %5297, i64* %247, align 8
  %5298 = add i64 %5284, -128
  %5299 = add i64 %5286, 16
  store i64 %5299, i64* %3, align 8
  %5300 = inttoptr i64 %5298 to i64*
  %5301 = load i64, i64* %5300, align 8
  store i64 %5301, i64* %474, align 8
  %5302 = load i64, i64* %6, align 8
  store i64 %5302, i64* %RAX.i4026, align 8
  %5303 = add i64 %5286, 26
  store i64 %5303, i64* %3, align 8
  %5304 = inttoptr i64 %5302 to i64*
  store i64 4278044, i64* %5304, align 8
  %5305 = load i64, i64* %RBP.i, align 8
  %5306 = add i64 %5305, -344
  %5307 = load i64, i64* %3, align 8
  %5308 = add i64 %5307, 7
  store i64 %5308, i64* %3, align 8
  %5309 = inttoptr i64 %5306 to i64*
  %5310 = load i64, i64* %5309, align 8
  store i64 %5310, i64* %RDI.i4032.pre-phi, align 8
  %5311 = add i64 %5305, -248
  %5312 = add i64 %5307, 13
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5311 to i32*
  %5314 = load i32, i32* %5313, align 4
  %5315 = zext i32 %5314 to i64
  store i64 %5315, i64* %RSI.i3037, align 8
  %5316 = add i64 %5307, 29044
  %5317 = add i64 %5307, 18
  %5318 = load i64, i64* %6, align 8
  %5319 = add i64 %5318, -8
  %5320 = inttoptr i64 %5319 to i64*
  store i64 %5317, i64* %5320, align 8
  store i64 %5319, i64* %6, align 8
  store i64 %5316, i64* %3, align 8
  %call2_4023c9 = tail call %struct.Memory* @sub_409530._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5316, %struct.Memory* %call2_40239d)
  %5321 = load i64, i64* %RBP.i, align 8
  %5322 = add i64 %5321, -104
  %5323 = load i64, i64* %3, align 8
  %5324 = add i64 %5323, 4
  store i64 %5324, i64* %3, align 8
  %5325 = inttoptr i64 %5322 to i64*
  %5326 = load i64, i64* %5325, align 8
  store i64 %5326, i64* %RDX.i4024, align 8
  store i64 4278083, i64* %RSI.i3037, align 8
  store i64 4278083, i64* %RCX.i4028, align 8
  %5327 = add i64 %5321, -344
  %5328 = add i64 %5323, 18
  store i64 %5328, i64* %3, align 8
  %5329 = inttoptr i64 %5327 to i64*
  %5330 = load i64, i64* %5329, align 8
  store i64 %5330, i64* %RDI.i4032.pre-phi, align 8
  %5331 = add i64 %5321, -248
  %5332 = add i64 %5323, 24
  store i64 %5332, i64* %3, align 8
  %5333 = inttoptr i64 %5331 to i32*
  %5334 = load i32, i32* %5333, align 4
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RSI.i3037, align 8
  %5336 = add i64 %5323, 29234
  %5337 = add i64 %5323, 29
  %5338 = load i64, i64* %6, align 8
  %5339 = add i64 %5338, -8
  %5340 = inttoptr i64 %5339 to i64*
  store i64 %5337, i64* %5340, align 8
  store i64 %5339, i64* %6, align 8
  store i64 %5336, i64* %3, align 8
  %call2_4023e6 = tail call %struct.Memory* @sub_409600._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5336, %struct.Memory* %call2_4023c9)
  %5341 = load i64, i64* %RBP.i, align 8
  %5342 = add i64 %5341, -104
  %5343 = load i64, i64* %3, align 8
  %5344 = add i64 %5343, 4
  store i64 %5344, i64* %3, align 8
  %5345 = inttoptr i64 %5342 to i64*
  %5346 = load i64, i64* %5345, align 8
  store i64 %5346, i64* %RDX.i4024, align 8
  %5347 = add i64 %5341, -112
  %5348 = add i64 %5343, 8
  store i64 %5348, i64* %3, align 8
  %5349 = inttoptr i64 %5347 to i64*
  %5350 = load i64, i64* %5349, align 8
  store i64 %5350, i64* %RCX.i4028, align 8
  %5351 = add i64 %5341, -120
  %5352 = add i64 %5343, 12
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5351 to i64*
  %5354 = load i64, i64* %5353, align 8
  store i64 %5354, i64* %247, align 8
  %5355 = add i64 %5341, -128
  %5356 = add i64 %5343, 16
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i64*
  %5358 = load i64, i64* %5357, align 8
  store i64 %5358, i64* %474, align 8
  %5359 = load i64, i64* %6, align 8
  store i64 %5359, i64* %RAX.i4026, align 8
  %5360 = add i64 %5343, 26
  store i64 %5360, i64* %3, align 8
  %5361 = inttoptr i64 %5359 to i64*
  store i64 4278108, i64* %5361, align 8
  %5362 = load i64, i64* %RBP.i, align 8
  %5363 = add i64 %5362, -344
  %5364 = load i64, i64* %3, align 8
  %5365 = add i64 %5364, 7
  store i64 %5365, i64* %3, align 8
  %5366 = inttoptr i64 %5363 to i64*
  %5367 = load i64, i64* %5366, align 8
  store i64 %5367, i64* %RDI.i4032.pre-phi, align 8
  %5368 = add i64 %5362, -248
  %5369 = add i64 %5364, 13
  store i64 %5369, i64* %3, align 8
  %5370 = inttoptr i64 %5368 to i32*
  %5371 = load i32, i32* %5370, align 4
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RSI.i3037, align 8
  %5373 = add i64 %5364, 29355
  %5374 = add i64 %5364, 18
  %5375 = load i64, i64* %6, align 8
  %5376 = add i64 %5375, -8
  %5377 = inttoptr i64 %5376 to i64*
  store i64 %5374, i64* %5377, align 8
  store i64 %5376, i64* %6, align 8
  store i64 %5373, i64* %3, align 8
  %call2_402412 = tail call %struct.Memory* @sub_4096b0._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5373, %struct.Memory* %call2_4023e6)
  %5378 = load i64, i64* %RBP.i, align 8
  %5379 = add i64 %5378, -104
  %5380 = load i64, i64* %3, align 8
  %5381 = add i64 %5380, 4
  store i64 %5381, i64* %3, align 8
  %5382 = inttoptr i64 %5379 to i64*
  %5383 = load i64, i64* %5382, align 8
  store i64 %5383, i64* %RDX.i4024, align 8
  %5384 = add i64 %5378, -112
  %5385 = add i64 %5380, 8
  store i64 %5385, i64* %3, align 8
  %5386 = inttoptr i64 %5384 to i64*
  %5387 = load i64, i64* %5386, align 8
  store i64 %5387, i64* %RCX.i4028, align 8
  %5388 = add i64 %5378, -120
  %5389 = add i64 %5380, 12
  store i64 %5389, i64* %3, align 8
  %5390 = inttoptr i64 %5388 to i64*
  %5391 = load i64, i64* %5390, align 8
  store i64 %5391, i64* %247, align 8
  %5392 = add i64 %5378, -128
  %5393 = add i64 %5380, 16
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i64*
  %5395 = load i64, i64* %5394, align 8
  store i64 %5395, i64* %474, align 8
  %5396 = load i64, i64* %6, align 8
  store i64 %5396, i64* %RAX.i4026, align 8
  %5397 = add i64 %5380, 26
  store i64 %5397, i64* %3, align 8
  %5398 = inttoptr i64 %5396 to i64*
  store i64 4278143, i64* %5398, align 8
  %5399 = load i64, i64* %RBP.i, align 8
  %5400 = add i64 %5399, -344
  %5401 = load i64, i64* %3, align 8
  %5402 = add i64 %5401, 7
  store i64 %5402, i64* %3, align 8
  %5403 = inttoptr i64 %5400 to i64*
  %5404 = load i64, i64* %5403, align 8
  store i64 %5404, i64* %RDI.i4032.pre-phi, align 8
  %5405 = add i64 %5399, -248
  %5406 = add i64 %5401, 13
  store i64 %5406, i64* %3, align 8
  %5407 = inttoptr i64 %5405 to i32*
  %5408 = load i32, i32* %5407, align 4
  %5409 = zext i32 %5408 to i64
  store i64 %5409, i64* %RSI.i3037, align 8
  %5410 = add i64 %5401, 29519
  %5411 = add i64 %5401, 18
  %5412 = load i64, i64* %6, align 8
  %5413 = add i64 %5412, -8
  %5414 = inttoptr i64 %5413 to i64*
  store i64 %5411, i64* %5414, align 8
  store i64 %5413, i64* %6, align 8
  store i64 %5410, i64* %3, align 8
  %call2_40243e = tail call %struct.Memory* @sub_409780._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5410, %struct.Memory* %call2_402412)
  %5415 = load i64, i64* %RBP.i, align 8
  %5416 = add i64 %5415, -104
  %5417 = load i64, i64* %3, align 8
  %5418 = add i64 %5417, 4
  store i64 %5418, i64* %3, align 8
  %5419 = inttoptr i64 %5416 to i64*
  %5420 = load i64, i64* %5419, align 8
  store i64 %5420, i64* %RDX.i4024, align 8
  %5421 = add i64 %5415, -112
  %5422 = add i64 %5417, 8
  store i64 %5422, i64* %3, align 8
  %5423 = inttoptr i64 %5421 to i64*
  %5424 = load i64, i64* %5423, align 8
  store i64 %5424, i64* %RCX.i4028, align 8
  %5425 = add i64 %5415, -120
  %5426 = add i64 %5417, 12
  store i64 %5426, i64* %3, align 8
  %5427 = inttoptr i64 %5425 to i64*
  %5428 = load i64, i64* %5427, align 8
  store i64 %5428, i64* %247, align 8
  %5429 = add i64 %5415, -128
  %5430 = add i64 %5417, 16
  store i64 %5430, i64* %3, align 8
  %5431 = inttoptr i64 %5429 to i64*
  %5432 = load i64, i64* %5431, align 8
  store i64 %5432, i64* %474, align 8
  %5433 = load i64, i64* %6, align 8
  store i64 %5433, i64* %RAX.i4026, align 8
  %5434 = add i64 %5417, 26
  store i64 %5434, i64* %3, align 8
  %5435 = inttoptr i64 %5433 to i64*
  store i64 4278179, i64* %5435, align 8
  %5436 = load i64, i64* %RBP.i, align 8
  %5437 = add i64 %5436, -344
  %5438 = load i64, i64* %3, align 8
  %5439 = add i64 %5438, 7
  store i64 %5439, i64* %3, align 8
  %5440 = inttoptr i64 %5437 to i64*
  %5441 = load i64, i64* %5440, align 8
  store i64 %5441, i64* %RDI.i4032.pre-phi, align 8
  %5442 = add i64 %5436, -248
  %5443 = add i64 %5438, 13
  store i64 %5443, i64* %3, align 8
  %5444 = inttoptr i64 %5442 to i32*
  %5445 = load i32, i32* %5444, align 4
  %5446 = zext i32 %5445 to i64
  store i64 %5446, i64* %RSI.i3037, align 8
  %5447 = add i64 %5438, 29683
  %5448 = add i64 %5438, 18
  %5449 = load i64, i64* %6, align 8
  %5450 = add i64 %5449, -8
  %5451 = inttoptr i64 %5450 to i64*
  store i64 %5448, i64* %5451, align 8
  store i64 %5450, i64* %6, align 8
  store i64 %5447, i64* %3, align 8
  %call2_40246a = tail call %struct.Memory* @sub_409850._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5447, %struct.Memory* %call2_40243e)
  %5452 = load i64, i64* %RBP.i, align 8
  %5453 = add i64 %5452, -104
  %5454 = load i64, i64* %3, align 8
  %5455 = add i64 %5454, 4
  store i64 %5455, i64* %3, align 8
  %5456 = inttoptr i64 %5453 to i64*
  %5457 = load i64, i64* %5456, align 8
  store i64 %5457, i64* %RDX.i4024, align 8
  store i64 4278212, i64* %RSI.i3037, align 8
  store i64 4278212, i64* %RCX.i4028, align 8
  %5458 = add i64 %5452, -344
  %5459 = add i64 %5454, 18
  store i64 %5459, i64* %3, align 8
  %5460 = inttoptr i64 %5458 to i64*
  %5461 = load i64, i64* %5460, align 8
  store i64 %5461, i64* %RDI.i4032.pre-phi, align 8
  %5462 = add i64 %5452, -248
  %5463 = add i64 %5454, 24
  store i64 %5463, i64* %3, align 8
  %5464 = inttoptr i64 %5462 to i32*
  %5465 = load i32, i32* %5464, align 4
  %5466 = zext i32 %5465 to i64
  store i64 %5466, i64* %RSI.i3037, align 8
  %5467 = add i64 %5454, 29873
  %5468 = add i64 %5454, 29
  %5469 = load i64, i64* %6, align 8
  %5470 = add i64 %5469, -8
  %5471 = inttoptr i64 %5470 to i64*
  store i64 %5468, i64* %5471, align 8
  store i64 %5470, i64* %6, align 8
  store i64 %5467, i64* %3, align 8
  %call2_402487 = tail call %struct.Memory* @sub_409920._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5467, %struct.Memory* %call2_40246a)
  %5472 = load i64, i64* %RBP.i, align 8
  %5473 = add i64 %5472, -104
  %5474 = load i64, i64* %3, align 8
  %5475 = add i64 %5474, 4
  store i64 %5475, i64* %3, align 8
  %5476 = inttoptr i64 %5473 to i64*
  %5477 = load i64, i64* %5476, align 8
  store i64 %5477, i64* %RDX.i4024, align 8
  %5478 = add i64 %5472, -112
  %5479 = add i64 %5474, 8
  store i64 %5479, i64* %3, align 8
  %5480 = inttoptr i64 %5478 to i64*
  %5481 = load i64, i64* %5480, align 8
  store i64 %5481, i64* %RCX.i4028, align 8
  %5482 = add i64 %5472, -120
  %5483 = add i64 %5474, 12
  store i64 %5483, i64* %3, align 8
  %5484 = inttoptr i64 %5482 to i64*
  %5485 = load i64, i64* %5484, align 8
  store i64 %5485, i64* %247, align 8
  %5486 = add i64 %5472, -128
  %5487 = add i64 %5474, 16
  store i64 %5487, i64* %3, align 8
  %5488 = inttoptr i64 %5486 to i64*
  %5489 = load i64, i64* %5488, align 8
  store i64 %5489, i64* %474, align 8
  %5490 = load i64, i64* %6, align 8
  store i64 %5490, i64* %RAX.i4026, align 8
  %5491 = add i64 %5474, 26
  store i64 %5491, i64* %3, align 8
  %5492 = inttoptr i64 %5490 to i64*
  store i64 4278234, i64* %5492, align 8
  %5493 = load i64, i64* %RBP.i, align 8
  %5494 = add i64 %5493, -344
  %5495 = load i64, i64* %3, align 8
  %5496 = add i64 %5495, 7
  store i64 %5496, i64* %3, align 8
  %5497 = inttoptr i64 %5494 to i64*
  %5498 = load i64, i64* %5497, align 8
  store i64 %5498, i64* %RDI.i4032.pre-phi, align 8
  %5499 = add i64 %5493, -248
  %5500 = add i64 %5495, 13
  store i64 %5500, i64* %3, align 8
  %5501 = inttoptr i64 %5499 to i32*
  %5502 = load i32, i32* %5501, align 4
  %5503 = zext i32 %5502 to i64
  store i64 %5503, i64* %RSI.i3037, align 8
  %5504 = add i64 %5495, 29994
  %5505 = add i64 %5495, 18
  %5506 = load i64, i64* %6, align 8
  %5507 = add i64 %5506, -8
  %5508 = inttoptr i64 %5507 to i64*
  store i64 %5505, i64* %5508, align 8
  store i64 %5507, i64* %6, align 8
  store i64 %5504, i64* %3, align 8
  %call2_4024b3 = tail call %struct.Memory* @sub_4099d0._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5504, %struct.Memory* %call2_402487)
  %5509 = load i64, i64* %RBP.i, align 8
  %5510 = add i64 %5509, -104
  %5511 = load i64, i64* %3, align 8
  %5512 = add i64 %5511, 4
  store i64 %5512, i64* %3, align 8
  %5513 = inttoptr i64 %5510 to i64*
  %5514 = load i64, i64* %5513, align 8
  store i64 %5514, i64* %RDX.i4024, align 8
  store i64 4278265, i64* %RSI.i3037, align 8
  store i64 4278265, i64* %RCX.i4028, align 8
  %5515 = add i64 %5509, -344
  %5516 = add i64 %5511, 18
  store i64 %5516, i64* %3, align 8
  %5517 = inttoptr i64 %5515 to i64*
  %5518 = load i64, i64* %5517, align 8
  store i64 %5518, i64* %RDI.i4032.pre-phi, align 8
  %5519 = add i64 %5509, -248
  %5520 = add i64 %5511, 24
  store i64 %5520, i64* %3, align 8
  %5521 = inttoptr i64 %5519 to i32*
  %5522 = load i32, i32* %5521, align 4
  %5523 = zext i32 %5522 to i64
  store i64 %5523, i64* %RSI.i3037, align 8
  %5524 = add i64 %5511, 30184
  %5525 = add i64 %5511, 29
  %5526 = load i64, i64* %6, align 8
  %5527 = add i64 %5526, -8
  %5528 = inttoptr i64 %5527 to i64*
  store i64 %5525, i64* %5528, align 8
  store i64 %5527, i64* %6, align 8
  store i64 %5524, i64* %3, align 8
  %call2_4024d0 = tail call %struct.Memory* @sub_409aa0._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5524, %struct.Memory* %call2_4024b3)
  %5529 = load i64, i64* %RBP.i, align 8
  %5530 = add i64 %5529, -104
  %5531 = load i64, i64* %3, align 8
  %5532 = add i64 %5531, 4
  store i64 %5532, i64* %3, align 8
  %5533 = inttoptr i64 %5530 to i64*
  %5534 = load i64, i64* %5533, align 8
  store i64 %5534, i64* %RDX.i4024, align 8
  %5535 = add i64 %5529, -112
  %5536 = add i64 %5531, 8
  store i64 %5536, i64* %3, align 8
  %5537 = inttoptr i64 %5535 to i64*
  %5538 = load i64, i64* %5537, align 8
  store i64 %5538, i64* %RCX.i4028, align 8
  %5539 = add i64 %5529, -120
  %5540 = add i64 %5531, 12
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5539 to i64*
  %5542 = load i64, i64* %5541, align 8
  store i64 %5542, i64* %247, align 8
  %5543 = add i64 %5529, -128
  %5544 = add i64 %5531, 16
  store i64 %5544, i64* %3, align 8
  %5545 = inttoptr i64 %5543 to i64*
  %5546 = load i64, i64* %5545, align 8
  store i64 %5546, i64* %474, align 8
  %5547 = load i64, i64* %6, align 8
  store i64 %5547, i64* %RAX.i4026, align 8
  %5548 = add i64 %5531, 26
  store i64 %5548, i64* %3, align 8
  %5549 = inttoptr i64 %5547 to i64*
  store i64 4278286, i64* %5549, align 8
  %5550 = load i64, i64* %RBP.i, align 8
  %5551 = add i64 %5550, -344
  %5552 = load i64, i64* %3, align 8
  %5553 = add i64 %5552, 7
  store i64 %5553, i64* %3, align 8
  %5554 = inttoptr i64 %5551 to i64*
  %5555 = load i64, i64* %5554, align 8
  store i64 %5555, i64* %RDI.i4032.pre-phi, align 8
  %5556 = add i64 %5550, -248
  %5557 = add i64 %5552, 13
  store i64 %5557, i64* %3, align 8
  %5558 = inttoptr i64 %5556 to i32*
  %5559 = load i32, i32* %5558, align 4
  %5560 = zext i32 %5559 to i64
  store i64 %5560, i64* %RSI.i3037, align 8
  %5561 = add i64 %5552, 30305
  %5562 = add i64 %5552, 18
  %5563 = load i64, i64* %6, align 8
  %5564 = add i64 %5563, -8
  %5565 = inttoptr i64 %5564 to i64*
  store i64 %5562, i64* %5565, align 8
  store i64 %5564, i64* %6, align 8
  store i64 %5561, i64* %3, align 8
  %call2_4024fc = tail call %struct.Memory* @sub_409b50._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5561, %struct.Memory* %call2_4024d0)
  %5566 = load i64, i64* %RBP.i, align 8
  %5567 = add i64 %5566, -104
  %5568 = load i64, i64* %3, align 8
  %5569 = add i64 %5568, 4
  store i64 %5569, i64* %3, align 8
  %5570 = inttoptr i64 %5567 to i64*
  %5571 = load i64, i64* %5570, align 8
  store i64 %5571, i64* %RDX.i4024, align 8
  store i64 4278316, i64* %RSI.i3037, align 8
  store i64 4278316, i64* %RCX.i4028, align 8
  %5572 = add i64 %5566, -344
  %5573 = add i64 %5568, 18
  store i64 %5573, i64* %3, align 8
  %5574 = inttoptr i64 %5572 to i64*
  %5575 = load i64, i64* %5574, align 8
  store i64 %5575, i64* %RDI.i4032.pre-phi, align 8
  %5576 = add i64 %5566, -248
  %5577 = add i64 %5568, 24
  store i64 %5577, i64* %3, align 8
  %5578 = inttoptr i64 %5576 to i32*
  %5579 = load i32, i32* %5578, align 4
  %5580 = zext i32 %5579 to i64
  store i64 %5580, i64* %RSI.i3037, align 8
  %5581 = add i64 %5568, 30495
  %5582 = add i64 %5568, 29
  %5583 = load i64, i64* %6, align 8
  %5584 = add i64 %5583, -8
  %5585 = inttoptr i64 %5584 to i64*
  store i64 %5582, i64* %5585, align 8
  store i64 %5584, i64* %6, align 8
  store i64 %5581, i64* %3, align 8
  %call2_402519 = tail call %struct.Memory* @sub_409c20._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5581, %struct.Memory* %call2_4024fc)
  %5586 = load i64, i64* %RBP.i, align 8
  %5587 = add i64 %5586, -104
  %5588 = load i64, i64* %3, align 8
  %5589 = add i64 %5588, 4
  store i64 %5589, i64* %3, align 8
  %5590 = inttoptr i64 %5587 to i64*
  %5591 = load i64, i64* %5590, align 8
  store i64 %5591, i64* %RDX.i4024, align 8
  %5592 = add i64 %5586, -112
  %5593 = add i64 %5588, 8
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i64*
  %5595 = load i64, i64* %5594, align 8
  store i64 %5595, i64* %RCX.i4028, align 8
  %5596 = add i64 %5586, -120
  %5597 = add i64 %5588, 12
  store i64 %5597, i64* %3, align 8
  %5598 = inttoptr i64 %5596 to i64*
  %5599 = load i64, i64* %5598, align 8
  store i64 %5599, i64* %247, align 8
  %5600 = add i64 %5586, -128
  %5601 = add i64 %5588, 16
  store i64 %5601, i64* %3, align 8
  %5602 = inttoptr i64 %5600 to i64*
  %5603 = load i64, i64* %5602, align 8
  store i64 %5603, i64* %474, align 8
  %5604 = load i64, i64* %6, align 8
  store i64 %5604, i64* %RAX.i4026, align 8
  %5605 = add i64 %5588, 26
  store i64 %5605, i64* %3, align 8
  %5606 = inttoptr i64 %5604 to i64*
  store i64 4278338, i64* %5606, align 8
  %5607 = load i64, i64* %RBP.i, align 8
  %5608 = add i64 %5607, -344
  %5609 = load i64, i64* %3, align 8
  %5610 = add i64 %5609, 7
  store i64 %5610, i64* %3, align 8
  %5611 = inttoptr i64 %5608 to i64*
  %5612 = load i64, i64* %5611, align 8
  store i64 %5612, i64* %RDI.i4032.pre-phi, align 8
  %5613 = add i64 %5607, -248
  %5614 = add i64 %5609, 13
  store i64 %5614, i64* %3, align 8
  %5615 = inttoptr i64 %5613 to i32*
  %5616 = load i32, i32* %5615, align 4
  %5617 = zext i32 %5616 to i64
  store i64 %5617, i64* %RSI.i3037, align 8
  %5618 = add i64 %5609, 30616
  %5619 = add i64 %5609, 18
  %5620 = load i64, i64* %6, align 8
  %5621 = add i64 %5620, -8
  %5622 = inttoptr i64 %5621 to i64*
  store i64 %5619, i64* %5622, align 8
  store i64 %5621, i64* %6, align 8
  store i64 %5618, i64* %3, align 8
  %call2_402545 = tail call %struct.Memory* @sub_409cd0._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5618, %struct.Memory* %call2_402519)
  %5623 = load i64, i64* %3, align 8
  %5624 = add i64 %5623, 2194238
  %5625 = add i64 %5623, 8
  store i64 %5625, i64* %3, align 8
  %5626 = inttoptr i64 %5624 to i64*
  %5627 = load i64, i64* %5626, align 8
  store i64 %5627, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5629 = bitcast %union.VectorReg* %5628 to i8*
  %5630 = add i64 %5623, 71974
  %5631 = add i64 %5623, 16
  store i64 %5631, i64* %3, align 8
  %5632 = inttoptr i64 %5630 to i64*
  %5633 = load i64, i64* %5632, align 8
  %5634 = bitcast %union.VectorReg* %5628 to double*
  %5635 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5628, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5633, i64* %5635, align 1
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %5637 = bitcast i64* %5636 to double*
  store double 0.000000e+00, double* %5637, align 1
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5639 = bitcast %union.VectorReg* %5638 to i8*
  %5640 = bitcast [32 x %union.VectorReg]* %52 to <2 x i32>*
  %5641 = bitcast i64 %5627 to <2 x i32>
  %5642 = bitcast i64* %60 to <2 x i32>*
  %5643 = extractelement <2 x i32> %5641, i32 0
  %5644 = bitcast %union.VectorReg* %5638 to i32*
  store i32 %5643, i32* %5644, align 1
  %5645 = extractelement <2 x i32> %5641, i32 1
  %5646 = getelementptr inbounds i8, i8* %5639, i64 4
  %5647 = bitcast i8* %5646 to i32*
  store i32 %5645, i32* %5647, align 1
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %5649 = bitcast i64* %5648 to i32*
  store i32 0, i32* %5649, align 1
  %5650 = getelementptr inbounds i8, i8* %5639, i64 12
  %5651 = bitcast i8* %5650 to i32*
  store i32 0, i32* %5651, align 1
  %5652 = bitcast %union.VectorReg* %5638 to double*
  %5653 = load double, double* %5652, align 1
  %5654 = bitcast i64 %5633 to double
  %5655 = fsub double %5653, %5654
  store double %5655, double* %5652, align 1
  %5656 = tail call double @llvm.trunc.f64(double %5655)
  %5657 = tail call double @llvm.fabs.f64(double %5656)
  %5658 = fcmp ogt double %5657, 0x43E0000000000000
  %5659 = fptosi double %5656 to i64
  %5660 = select i1 %5658, i64 -9223372036854775808, i64 %5659
  store i64 -9223372036854775808, i64* %RCX.i4028, align 8
  %5661 = xor i64 %5660, -9223372036854775808
  store i64 %5661, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %5662 = trunc i64 %5660 to i32
  %5663 = and i32 %5662, 255
  %5664 = tail call i32 @llvm.ctpop.i32(i32 %5663)
  %5665 = trunc i32 %5664 to i8
  %5666 = and i8 %5665, 1
  %5667 = xor i8 %5666, 1
  store i8 %5667, i8* %33, align 1
  %5668 = icmp eq i64 %5661, 0
  %5669 = zext i1 %5668 to i8
  store i8 %5669, i8* %42, align 1
  %5670 = lshr i64 %5661, 63
  %5671 = trunc i64 %5670 to i8
  store i8 %5671, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5672 = bitcast i64 %5627 to double
  %5673 = tail call double @llvm.trunc.f64(double %5672)
  %5674 = tail call double @llvm.fabs.f64(double %5673)
  %5675 = fcmp ogt double %5674, 0x43E0000000000000
  %5676 = fptosi double %5673 to i64
  %5677 = select i1 %5675, i64 -9223372036854775808, i64 %5676
  store i64 %5677, i64* %RDX.i4024, align 8
  %5678 = add i64 %5623, 50
  store i64 %5678, i64* %3, align 8
  %5679 = fcmp uno double %5654, %5672
  br i1 %5679, label %5680, label %5690

; <label>:5680:                                   ; preds = %routine_idivq__rsi.exit
  %5681 = fadd double %5654, %5672
  %5682 = bitcast double %5681 to i64
  %5683 = and i64 %5682, 9221120237041090560
  %5684 = icmp eq i64 %5683, 9218868437227405312
  %5685 = and i64 %5682, 2251799813685247
  %5686 = icmp ne i64 %5685, 0
  %5687 = and i1 %5684, %5686
  br i1 %5687, label %5688, label %5696

; <label>:5688:                                   ; preds = %5680
  %5689 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5678, %struct.Memory* %call2_402545)
  %.pre27 = load i64, i64* %RDX.i4024, align 8
  %.pre28 = load i64, i64* %3, align 8
  %.pre29 = load i8, i8* %26, align 1
  %.pre30 = load i8, i8* %42, align 1
  %.pre31 = load i64, i64* %RAX.i4026, align 8
  %.pre32 = load i64, i64* %RCX.i4028, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:5690:                                   ; preds = %routine_idivq__rsi.exit
  %5691 = fcmp ogt double %5654, %5672
  br i1 %5691, label %5696, label %5692

; <label>:5692:                                   ; preds = %5690
  %5693 = fcmp olt double %5654, %5672
  br i1 %5693, label %5696, label %5694

; <label>:5694:                                   ; preds = %5692
  %5695 = fcmp oeq double %5654, %5672
  br i1 %5695, label %5696, label %5700

; <label>:5696:                                   ; preds = %5694, %5692, %5690, %5680
  %5697 = phi i8 [ 0, %5690 ], [ 0, %5692 ], [ 1, %5694 ], [ 1, %5680 ]
  %5698 = phi i8 [ 0, %5690 ], [ 0, %5692 ], [ 0, %5694 ], [ 1, %5680 ]
  %5699 = phi i8 [ 0, %5690 ], [ 1, %5692 ], [ 0, %5694 ], [ 1, %5680 ]
  store i8 %5697, i8* %42, align 1
  store i8 %5698, i8* %33, align 1
  store i8 %5699, i8* %26, align 1
  br label %5700

; <label>:5700:                                   ; preds = %5696, %5694
  %5701 = phi i8 [ %5697, %5696 ], [ %5669, %5694 ]
  %5702 = phi i8 [ %5699, %5696 ], [ 0, %5694 ]
  store i8 0, i8* %51, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %39, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %5700, %5688
  %5703 = phi i64 [ %.pre32, %5688 ], [ -9223372036854775808, %5700 ]
  %5704 = phi i64 [ %.pre31, %5688 ], [ %5661, %5700 ]
  %5705 = phi i8 [ %.pre30, %5688 ], [ %5701, %5700 ]
  %5706 = phi i8 [ %.pre29, %5688 ], [ %5702, %5700 ]
  %5707 = phi i64 [ %.pre28, %5688 ], [ %5678, %5700 ]
  %5708 = phi i64 [ %.pre27, %5688 ], [ %5677, %5700 ]
  %5709 = phi %struct.Memory* [ %5689, %5688 ], [ %call2_402545, %5700 ]
  %5710 = or i8 %5705, %5706
  %5711 = icmp eq i8 %5710, 0
  %5712 = select i1 %5711, i64 %5708, i64 %5704
  store i64 %5712, i64* %RAX.i4026, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 6558144, i64* %RSI.i3037, align 8
  store i64 %5712, i64* %RDX.i4024, align 8
  %5713 = load i64, i64* %RBP.i, align 8
  %5714 = add i64 %5713, -360
  %5715 = add i64 %5707, 26
  store i64 %5715, i64* %3, align 8
  %5716 = inttoptr i64 %5714 to i64*
  store i64 %5703, i64* %5716, align 8
  %5717 = load i64, i64* %RBP.i, align 8
  %5718 = add i64 %5717, -368
  %5719 = load i64, i64* %3, align 8
  %5720 = add i64 %5719, 8
  store i64 %5720, i64* %3, align 8
  %5721 = load i64, i64* %5635, align 1
  %5722 = inttoptr i64 %5718 to i64*
  store i64 %5721, i64* %5722, align 8
  %5723 = load i64, i64* %3, align 8
  %5724 = add i64 %5723, 30722
  %5725 = add i64 %5723, 5
  %5726 = load i64, i64* %6, align 8
  %5727 = add i64 %5726, -8
  %5728 = inttoptr i64 %5727 to i64*
  store i64 %5725, i64* %5728, align 8
  store i64 %5727, i64* %6, align 8
  store i64 %5724, i64* %3, align 8
  %call2_40259e = tail call %struct.Memory* @sub_409da0._Z4fillIPmmEvT_S1_T0_(%struct.State* nonnull %0, i64 %5724, %struct.Memory* %5709)
  %5729 = load i64, i64* %RBP.i, align 8
  %5730 = add i64 %5729, -40
  %5731 = load i64, i64* %3, align 8
  %5732 = add i64 %5731, 5
  store i64 %5732, i64* %3, align 8
  %5733 = inttoptr i64 %5730 to i64*
  %5734 = load i64, i64* %5733, align 8
  store i64 %5734, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %.cast4 = bitcast i64 %5734 to <2 x i32>
  %5735 = extractelement <2 x i32> %.cast4, i32 0
  %5736 = bitcast %union.VectorReg* %5628 to i32*
  store i32 %5735, i32* %5736, align 1
  %5737 = extractelement <2 x i32> %.cast4, i32 1
  %5738 = getelementptr inbounds i8, i8* %5629, i64 4
  %5739 = bitcast i8* %5738 to i32*
  store i32 %5737, i32* %5739, align 1
  %5740 = bitcast i64* %5636 to i32*
  store i32 0, i32* %5740, align 1
  %5741 = getelementptr inbounds i8, i8* %5629, i64 12
  %5742 = bitcast i8* %5741 to i32*
  store i32 0, i32* %5742, align 1
  %5743 = add i64 %5729, -368
  %5744 = add i64 %5731, 16
  store i64 %5744, i64* %3, align 8
  %5745 = inttoptr i64 %5743 to i64*
  %5746 = load i64, i64* %5745, align 8
  %5747 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5638, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5746, i64* %5747, align 1
  %5748 = bitcast i64* %5648 to double*
  store double 0.000000e+00, double* %5748, align 1
  %5749 = load double, double* %5634, align 1
  %5750 = bitcast i64 %5746 to double
  %5751 = fsub double %5749, %5750
  store double %5751, double* %5634, align 1
  %5752 = tail call double @llvm.trunc.f64(double %5751)
  %5753 = tail call double @llvm.fabs.f64(double %5752)
  %5754 = fcmp ogt double %5753, 0x43E0000000000000
  %5755 = fptosi double %5752 to i64
  %5756 = select i1 %5754, i64 -9223372036854775808, i64 %5755
  store i64 %5756, i64* %RAX.i4026, align 8
  %5757 = add i64 %5729, -360
  %5758 = add i64 %5731, 32
  store i64 %5758, i64* %3, align 8
  %5759 = inttoptr i64 %5757 to i64*
  %5760 = load i64, i64* %5759, align 8
  store i64 %5760, i64* %RCX.i4028, align 8
  %5761 = xor i64 %5756, %5760
  store i64 %5761, i64* %RAX.i4026, align 8
  store i8 0, i8* %26, align 1
  %5762 = trunc i64 %5761 to i32
  %5763 = and i32 %5762, 255
  %5764 = tail call i32 @llvm.ctpop.i32(i32 %5763)
  %5765 = trunc i32 %5764 to i8
  %5766 = and i8 %5765, 1
  %5767 = xor i8 %5766, 1
  store i8 %5767, i8* %33, align 1
  %5768 = icmp eq i64 %5761, 0
  %5769 = zext i1 %5768 to i8
  store i8 %5769, i8* %42, align 1
  %5770 = lshr i64 %5761, 63
  %5771 = trunc i64 %5770 to i8
  store i8 %5771, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5772 = bitcast i64 %5734 to double
  %5773 = tail call double @llvm.trunc.f64(double %5772)
  %5774 = tail call double @llvm.fabs.f64(double %5773)
  %5775 = fcmp ogt double %5774, 0x43E0000000000000
  %5776 = fptosi double %5773 to i64
  %5777 = select i1 %5775, i64 -9223372036854775808, i64 %5776
  store i64 %5777, i64* %RDX.i4024, align 8
  %5778 = add i64 %5731, 44
  store i64 %5778, i64* %3, align 8
  %5779 = fcmp uno double %5750, %5772
  br i1 %5779, label %5780, label %5790

; <label>:5780:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5781 = fadd double %5750, %5772
  %5782 = bitcast double %5781 to i64
  %5783 = and i64 %5782, 9221120237041090560
  %5784 = icmp eq i64 %5783, 9218868437227405312
  %5785 = and i64 %5782, 2251799813685247
  %5786 = icmp ne i64 %5785, 0
  %5787 = and i1 %5784, %5786
  br i1 %5787, label %5788, label %5796

; <label>:5788:                                   ; preds = %5780
  %5789 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5778, %struct.Memory* %call2_40259e)
  %.pre33 = load i64, i64* %RDX.i4024, align 8
  %.pre34 = load i64, i64* %3, align 8
  %.pre35 = load i8, i8* %26, align 1
  %.pre36 = load i8, i8* %42, align 1
  %.pre37 = load i64, i64* %RAX.i4026, align 8
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %routine_divq_MINUS0x98__rbp_.exit

; <label>:5790:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5791 = fcmp ogt double %5750, %5772
  br i1 %5791, label %5796, label %5792

; <label>:5792:                                   ; preds = %5790
  %5793 = fcmp olt double %5750, %5772
  br i1 %5793, label %5796, label %5794

; <label>:5794:                                   ; preds = %5792
  %5795 = fcmp oeq double %5750, %5772
  br i1 %5795, label %5796, label %5800

; <label>:5796:                                   ; preds = %5794, %5792, %5790, %5780
  %5797 = phi i8 [ 0, %5790 ], [ 0, %5792 ], [ 1, %5794 ], [ 1, %5780 ]
  %5798 = phi i8 [ 0, %5790 ], [ 0, %5792 ], [ 0, %5794 ], [ 1, %5780 ]
  %5799 = phi i8 [ 0, %5790 ], [ 1, %5792 ], [ 0, %5794 ], [ 1, %5780 ]
  store i8 %5797, i8* %42, align 1
  store i8 %5798, i8* %33, align 1
  store i8 %5799, i8* %26, align 1
  br label %5800

; <label>:5800:                                   ; preds = %5796, %5794
  %5801 = phi i8 [ %5797, %5796 ], [ %5769, %5794 ]
  %5802 = phi i8 [ %5799, %5796 ], [ 0, %5794 ]
  store i8 0, i8* %51, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %39, align 1
  br label %routine_divq_MINUS0x98__rbp_.exit

routine_divq_MINUS0x98__rbp_.exit:                ; preds = %5800, %5788
  %5803 = phi i64 [ %.pre38, %5788 ], [ %5729, %5800 ]
  %5804 = phi i64 [ %.pre37, %5788 ], [ %5761, %5800 ]
  %5805 = phi i8 [ %.pre36, %5788 ], [ %5801, %5800 ]
  %5806 = phi i8 [ %.pre35, %5788 ], [ %5802, %5800 ]
  %5807 = phi i64 [ %.pre34, %5788 ], [ %5778, %5800 ]
  %5808 = phi i64 [ %.pre33, %5788 ], [ %5777, %5800 ]
  %5809 = phi %struct.Memory* [ %5789, %5788 ], [ %call2_40259e, %5800 ]
  %5810 = or i8 %5805, %5806
  %5811 = icmp eq i8 %5810, 0
  %5812 = select i1 %5811, i64 %5808, i64 %5804
  store i64 %5812, i64* %RAX.i4026, align 8
  %5813 = add i64 %5803, -136
  %5814 = add i64 %5807, 11
  store i64 %5814, i64* %3, align 8
  %5815 = inttoptr i64 %5813 to i64*
  store i64 %5812, i64* %5815, align 8
  %5816 = load i64, i64* %RBP.i, align 8
  %5817 = add i64 %5816, -136
  %5818 = load i64, i64* %3, align 8
  %5819 = add i64 %5818, 7
  store i64 %5819, i64* %3, align 8
  %5820 = inttoptr i64 %5817 to i64*
  %5821 = load i64, i64* %5820, align 8
  %5822 = shl i64 %5821, 1
  %5823 = icmp slt i64 %5821, 0
  %5824 = icmp slt i64 %5822, 0
  %5825 = xor i1 %5823, %5824
  store i64 %5822, i64* %RAX.i4026, align 8
  %.lobit = lshr i64 %5821, 63
  %5826 = trunc i64 %.lobit to i8
  store i8 %5826, i8* %26, align 1
  %5827 = trunc i64 %5822 to i32
  %5828 = and i32 %5827, 254
  %5829 = tail call i32 @llvm.ctpop.i32(i32 %5828)
  %5830 = trunc i32 %5829 to i8
  %5831 = and i8 %5830, 1
  %5832 = xor i8 %5831, 1
  store i8 %5832, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5833 = icmp eq i64 %5822, 0
  %5834 = zext i1 %5833 to i8
  store i8 %5834, i8* %42, align 1
  %5835 = lshr i64 %5821, 62
  %5836 = trunc i64 %5835 to i8
  %5837 = and i8 %5836, 1
  store i8 %5837, i8* %45, align 1
  %5838 = zext i1 %5825 to i8
  store i8 %5838, i8* %51, align 1
  %5839 = add i64 %5816, -144
  %5840 = add i64 %5818, 17
  store i64 %5840, i64* %3, align 8
  %5841 = inttoptr i64 %5839 to i64*
  store i64 %5822, i64* %5841, align 8
  %5842 = load i64, i64* %RBP.i, align 8
  %5843 = add i64 %5842, -136
  %5844 = load i64, i64* %3, align 8
  %5845 = add i64 %5844, 7
  store i64 %5845, i64* %3, align 8
  %5846 = inttoptr i64 %5843 to i64*
  %5847 = load i64, i64* %5846, align 8
  %5848 = add i64 %5847, 2
  store i64 %5848, i64* %RAX.i4026, align 8
  %5849 = icmp ugt i64 %5847, -3
  %5850 = zext i1 %5849 to i8
  store i8 %5850, i8* %26, align 1
  %5851 = trunc i64 %5848 to i32
  %5852 = and i32 %5851, 255
  %5853 = tail call i32 @llvm.ctpop.i32(i32 %5852)
  %5854 = trunc i32 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = xor i8 %5855, 1
  store i8 %5856, i8* %33, align 1
  %5857 = xor i64 %5848, %5847
  %5858 = lshr i64 %5857, 4
  %5859 = trunc i64 %5858 to i8
  %5860 = and i8 %5859, 1
  store i8 %5860, i8* %39, align 1
  %5861 = icmp eq i64 %5848, 0
  %5862 = zext i1 %5861 to i8
  store i8 %5862, i8* %42, align 1
  %5863 = lshr i64 %5848, 63
  %5864 = trunc i64 %5863 to i8
  store i8 %5864, i8* %45, align 1
  %5865 = lshr i64 %5847, 63
  %5866 = xor i64 %5863, %5865
  %5867 = add nuw nsw i64 %5866, %5863
  %5868 = icmp eq i64 %5867, 2
  %5869 = zext i1 %5868 to i8
  store i8 %5869, i8* %51, align 1
  %5870 = add i64 %5842, -152
  %5871 = add i64 %5844, 18
  store i64 %5871, i64* %3, align 8
  %5872 = inttoptr i64 %5870 to i64*
  store i64 %5848, i64* %5872, align 8
  %5873 = load i64, i64* %RBP.i, align 8
  %5874 = add i64 %5873, -136
  %5875 = load i64, i64* %3, align 8
  %5876 = add i64 %5875, 7
  store i64 %5876, i64* %3, align 8
  %5877 = inttoptr i64 %5874 to i64*
  %5878 = load i64, i64* %5877, align 8
  store i64 %5878, i64* %RAX.i4026, align 8
  %5879 = add i64 %5873, -144
  %5880 = add i64 %5875, 14
  store i64 %5880, i64* %3, align 8
  %5881 = inttoptr i64 %5879 to i64*
  %5882 = load i64, i64* %5881, align 8
  store i64 %5882, i64* %RDX.i4024, align 8
  %5883 = add i64 %5873, -376
  %5884 = add i64 %5875, 21
  store i64 %5884, i64* %3, align 8
  %5885 = inttoptr i64 %5883 to i64*
  store i64 %5878, i64* %5885, align 8
  %5886 = load i64, i64* %RDX.i4024, align 8
  %5887 = load i64, i64* %3, align 8
  store i64 %5886, i64* %RAX.i4026, align 8
  store i64 0, i64* %359, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  store i64 0, i64* %RDX.i4024, align 8
  %5888 = load i64, i64* %RBP.i, align 8
  %5889 = add i64 %5888, -152
  %5890 = add i64 %5887, 16
  store i64 %5890, i64* %3, align 8
  %5891 = inttoptr i64 %5889 to i64*
  %5892 = load i64, i64* %5891, align 8
  %div = udiv i64 %5886, %5892
  %5893 = urem i64 %5886, %5892
  store i64 %div, i64* %5030, align 8
  store i64 %5893, i64* %373, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5894 = add i64 %5888, -376
  %5895 = add i64 %5887, 23
  store i64 %5895, i64* %3, align 8
  %5896 = inttoptr i64 %5894 to i64*
  %5897 = load i64, i64* %5896, align 8
  %5898 = add i64 %div, %5897
  store i64 %5898, i64* %RSI.i3037, align 8
  %5899 = icmp ult i64 %5898, %5897
  %5900 = icmp ult i64 %5898, %div
  %5901 = or i1 %5899, %5900
  %5902 = zext i1 %5901 to i8
  store i8 %5902, i8* %26, align 1
  %5903 = trunc i64 %5898 to i32
  %5904 = and i32 %5903, 255
  %5905 = tail call i32 @llvm.ctpop.i32(i32 %5904)
  %5906 = trunc i32 %5905 to i8
  %5907 = and i8 %5906, 1
  %5908 = xor i8 %5907, 1
  store i8 %5908, i8* %33, align 1
  %5909 = xor i64 %div, %5897
  %5910 = xor i64 %5909, %5898
  %5911 = lshr i64 %5910, 4
  %5912 = trunc i64 %5911 to i8
  %5913 = and i8 %5912, 1
  store i8 %5913, i8* %39, align 1
  %5914 = icmp eq i64 %5898, 0
  %5915 = zext i1 %5914 to i8
  store i8 %5915, i8* %42, align 1
  %5916 = lshr i64 %5898, 63
  %5917 = trunc i64 %5916 to i8
  store i8 %5917, i8* %45, align 1
  %5918 = lshr i64 %5897, 63
  %5919 = lshr i64 %div, 63
  %5920 = xor i64 %5916, %5918
  %5921 = xor i64 %5916, %5919
  %5922 = add nuw nsw i64 %5920, %5921
  %5923 = icmp eq i64 %5922, 2
  %5924 = zext i1 %5923 to i8
  store i8 %5924, i8* %51, align 1
  %5925 = add i64 %5888, -160
  %5926 = add i64 %5887, 33
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i64*
  store i64 %5898, i64* %5927, align 8
  %5928 = load i64, i64* %RBP.i, align 8
  %5929 = add i64 %5928, -136
  %5930 = load i64, i64* %3, align 8
  %5931 = add i64 %5930, 7
  store i64 %5931, i64* %3, align 8
  %5932 = inttoptr i64 %5929 to i64*
  %5933 = load i64, i64* %5932, align 8
  store i64 %5933, i64* %RAX.i4026, align 8
  %5934 = add i64 %5928, -216
  %5935 = add i64 %5930, 14
  store i64 %5935, i64* %3, align 8
  %5936 = inttoptr i64 %5934 to i64*
  %5937 = load i64, i64* %5936, align 8
  store i64 %5937, i64* %RDI.i4032.pre-phi, align 8
  %5938 = add i64 %5928, -220
  %5939 = add i64 %5930, 20
  store i64 %5939, i64* %3, align 8
  %5940 = inttoptr i64 %5938 to i32*
  %5941 = load i32, i32* %5940, align 4
  %5942 = zext i32 %5941 to i64
  store i64 %5942, i64* %RSI.i3037, align 8
  store i64 %5933, i64* %RDX.i4024, align 8
  %5943 = add i64 %5928, -232
  %5944 = add i64 %5930, 30
  store i64 %5944, i64* %3, align 8
  %5945 = inttoptr i64 %5943 to i64*
  %5946 = load i64, i64* %5945, align 8
  store i64 %5946, i64* %RCX.i4028, align 8
  %5947 = add i64 %5930, 30636
  %5948 = add i64 %5930, 35
  %5949 = load i64, i64* %6, align 8
  %5950 = add i64 %5949, -8
  %5951 = inttoptr i64 %5950 to i64*
  store i64 %5948, i64* %5951, align 8
  store i64 %5950, i64* %6, align 8
  store i64 %5947, i64* %3, align 8
  %call2_402652 = tail call %struct.Memory* @sub_409de0._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5947, %struct.Memory* %5809)
  %5952 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4277852, i64* %RCX.i4028, align 8
  %5953 = load i64, i64* %RBP.i, align 8
  %5954 = add i64 %5953, -136
  %5955 = add i64 %5952, 32
  store i64 %5955, i64* %3, align 8
  %5956 = inttoptr i64 %5954 to i64*
  %5957 = load i64, i64* %5956, align 8
  store i64 %5957, i64* %RDX.i4024, align 8
  %5958 = add i64 %5952, 30777
  %5959 = add i64 %5952, 37
  %5960 = load i64, i64* %6, align 8
  %5961 = add i64 %5960, -8
  %5962 = inttoptr i64 %5961 to i64*
  store i64 %5959, i64* %5962, align 8
  store i64 %5961, i64* %6, align 8
  store i64 %5958, i64* %3, align 8
  %call2_402677 = tail call %struct.Memory* @sub_409e90._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5958, %struct.Memory* %call2_402652)
  %5963 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4277882, i64* %RAX.i4026, align 8
  %5964 = load i64, i64* %RBP.i, align 8
  %5965 = add i64 %5964, -136
  %5966 = add i64 %5963, 32
  store i64 %5966, i64* %3, align 8
  %5967 = inttoptr i64 %5965 to i64*
  %5968 = load i64, i64* %5967, align 8
  store i64 %5968, i64* %RDX.i4024, align 8
  %5969 = add i64 %5964, -144
  %5970 = add i64 %5963, 39
  store i64 %5970, i64* %3, align 8
  %5971 = inttoptr i64 %5969 to i64*
  %5972 = load i64, i64* %5971, align 8
  store i64 %5972, i64* %RCX.i4028, align 8
  %5973 = add i64 %5964, -152
  %5974 = add i64 %5963, 46
  store i64 %5974, i64* %3, align 8
  %5975 = inttoptr i64 %5973 to i64*
  %5976 = load i64, i64* %5975, align 8
  store i64 %5976, i64* %247, align 8
  %5977 = add i64 %5964, -160
  %5978 = add i64 %5963, 53
  store i64 %5978, i64* %3, align 8
  %5979 = inttoptr i64 %5977 to i64*
  %5980 = load i64, i64* %5979, align 8
  store i64 %5980, i64* %474, align 8
  %5981 = bitcast i64* %6 to i64**
  %5982 = load i64*, i64** %5981, align 8
  %5983 = add i64 %5963, 57
  store i64 %5983, i64* %3, align 8
  store i64 4277882, i64* %5982, align 8
  %5984 = load i64, i64* %3, align 8
  %5985 = add i64 %5984, 30859
  %5986 = add i64 %5984, 5
  %5987 = load i64, i64* %6, align 8
  %5988 = add i64 %5987, -8
  %5989 = inttoptr i64 %5988 to i64*
  store i64 %5986, i64* %5989, align 8
  store i64 %5988, i64* %6, align 8
  store i64 %5985, i64* %3, align 8
  %call2_4026b5 = tail call %struct.Memory* @sub_409f40._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %5985, %struct.Memory* %call2_402677)
  %5990 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4277914, i64* %RCX.i4028, align 8
  %5991 = load i64, i64* %RBP.i, align 8
  %5992 = add i64 %5991, -136
  %5993 = add i64 %5990, 32
  store i64 %5993, i64* %3, align 8
  %5994 = inttoptr i64 %5992 to i64*
  %5995 = load i64, i64* %5994, align 8
  store i64 %5995, i64* %RDX.i4024, align 8
  %5996 = add i64 %5990, 31062
  %5997 = add i64 %5990, 37
  %5998 = load i64, i64* %6, align 8
  %5999 = add i64 %5998, -8
  %6000 = inttoptr i64 %5999 to i64*
  store i64 %5997, i64* %6000, align 8
  store i64 %5999, i64* %6, align 8
  store i64 %5996, i64* %3, align 8
  %call2_4026da = tail call %struct.Memory* @sub_40a010._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %5996, %struct.Memory* %call2_4026b5)
  %6001 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4277941, i64* %RAX.i4026, align 8
  %6002 = load i64, i64* %RBP.i, align 8
  %6003 = add i64 %6002, -136
  %6004 = add i64 %6001, 32
  store i64 %6004, i64* %3, align 8
  %6005 = inttoptr i64 %6003 to i64*
  %6006 = load i64, i64* %6005, align 8
  store i64 %6006, i64* %RDX.i4024, align 8
  %6007 = add i64 %6002, -144
  %6008 = add i64 %6001, 39
  store i64 %6008, i64* %3, align 8
  %6009 = inttoptr i64 %6007 to i64*
  %6010 = load i64, i64* %6009, align 8
  store i64 %6010, i64* %RCX.i4028, align 8
  %6011 = add i64 %6002, -152
  %6012 = add i64 %6001, 46
  store i64 %6012, i64* %3, align 8
  %6013 = inttoptr i64 %6011 to i64*
  %6014 = load i64, i64* %6013, align 8
  store i64 %6014, i64* %247, align 8
  %6015 = add i64 %6002, -160
  %6016 = add i64 %6001, 53
  store i64 %6016, i64* %3, align 8
  %6017 = inttoptr i64 %6015 to i64*
  %6018 = load i64, i64* %6017, align 8
  store i64 %6018, i64* %474, align 8
  %6019 = load i64*, i64** %5981, align 8
  %6020 = add i64 %6001, 57
  store i64 %6020, i64* %3, align 8
  store i64 4277941, i64* %6019, align 8
  %6021 = load i64, i64* %3, align 8
  %6022 = add i64 %6021, 31144
  %6023 = add i64 %6021, 5
  %6024 = load i64, i64* %6, align 8
  %6025 = add i64 %6024, -8
  %6026 = inttoptr i64 %6025 to i64*
  store i64 %6023, i64* %6026, align 8
  store i64 %6025, i64* %6, align 8
  store i64 %6022, i64* %3, align 8
  %call2_402718 = tail call %struct.Memory* @sub_40a0c0._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6022, %struct.Memory* %call2_4026da)
  %6027 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4277978, i64* %RCX.i4028, align 8
  %6028 = load i64, i64* %RBP.i, align 8
  %6029 = add i64 %6028, -136
  %6030 = add i64 %6027, 32
  store i64 %6030, i64* %3, align 8
  %6031 = inttoptr i64 %6029 to i64*
  %6032 = load i64, i64* %6031, align 8
  store i64 %6032, i64* %RDX.i4024, align 8
  %6033 = add i64 %6027, 31347
  %6034 = add i64 %6027, 37
  %6035 = load i64, i64* %6, align 8
  %6036 = add i64 %6035, -8
  %6037 = inttoptr i64 %6036 to i64*
  store i64 %6034, i64* %6037, align 8
  store i64 %6036, i64* %6, align 8
  store i64 %6033, i64* %3, align 8
  %call2_40273d = tail call %struct.Memory* @sub_40a190._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6033, %struct.Memory* %call2_402718)
  %6038 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278005, i64* %RAX.i4026, align 8
  %6039 = load i64, i64* %RBP.i, align 8
  %6040 = add i64 %6039, -136
  %6041 = add i64 %6038, 32
  store i64 %6041, i64* %3, align 8
  %6042 = inttoptr i64 %6040 to i64*
  %6043 = load i64, i64* %6042, align 8
  store i64 %6043, i64* %RDX.i4024, align 8
  %6044 = add i64 %6039, -144
  %6045 = add i64 %6038, 39
  store i64 %6045, i64* %3, align 8
  %6046 = inttoptr i64 %6044 to i64*
  %6047 = load i64, i64* %6046, align 8
  store i64 %6047, i64* %RCX.i4028, align 8
  %6048 = add i64 %6039, -152
  %6049 = add i64 %6038, 46
  store i64 %6049, i64* %3, align 8
  %6050 = inttoptr i64 %6048 to i64*
  %6051 = load i64, i64* %6050, align 8
  store i64 %6051, i64* %247, align 8
  %6052 = add i64 %6039, -160
  %6053 = add i64 %6038, 53
  store i64 %6053, i64* %3, align 8
  %6054 = inttoptr i64 %6052 to i64*
  %6055 = load i64, i64* %6054, align 8
  store i64 %6055, i64* %474, align 8
  %6056 = load i64*, i64** %5981, align 8
  %6057 = add i64 %6038, 57
  store i64 %6057, i64* %3, align 8
  store i64 4278005, i64* %6056, align 8
  %6058 = load i64, i64* %3, align 8
  %6059 = add i64 %6058, 31429
  %6060 = add i64 %6058, 5
  %6061 = load i64, i64* %6, align 8
  %6062 = add i64 %6061, -8
  %6063 = inttoptr i64 %6062 to i64*
  store i64 %6060, i64* %6063, align 8
  store i64 %6062, i64* %6, align 8
  store i64 %6059, i64* %3, align 8
  %call2_40277b = tail call %struct.Memory* @sub_40a240._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6059, %struct.Memory* %call2_40273d)
  %6064 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278043, i64* %RAX.i4026, align 8
  %6065 = load i64, i64* %RBP.i, align 8
  %6066 = add i64 %6065, -136
  %6067 = add i64 %6064, 32
  store i64 %6067, i64* %3, align 8
  %6068 = inttoptr i64 %6066 to i64*
  %6069 = load i64, i64* %6068, align 8
  store i64 %6069, i64* %RDX.i4024, align 8
  %6070 = add i64 %6065, -144
  %6071 = add i64 %6064, 39
  store i64 %6071, i64* %3, align 8
  %6072 = inttoptr i64 %6070 to i64*
  %6073 = load i64, i64* %6072, align 8
  store i64 %6073, i64* %RCX.i4028, align 8
  %6074 = add i64 %6065, -152
  %6075 = add i64 %6064, 46
  store i64 %6075, i64* %3, align 8
  %6076 = inttoptr i64 %6074 to i64*
  %6077 = load i64, i64* %6076, align 8
  store i64 %6077, i64* %247, align 8
  %6078 = add i64 %6065, -160
  %6079 = add i64 %6064, 53
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6078 to i64*
  %6081 = load i64, i64* %6080, align 8
  store i64 %6081, i64* %474, align 8
  %6082 = load i64*, i64** %5981, align 8
  %6083 = add i64 %6064, 57
  store i64 %6083, i64* %3, align 8
  store i64 4278043, i64* %6082, align 8
  %6084 = load i64, i64* %3, align 8
  %6085 = add i64 %6084, 31575
  %6086 = add i64 %6084, 5
  %6087 = load i64, i64* %6, align 8
  %6088 = add i64 %6087, -8
  %6089 = inttoptr i64 %6088 to i64*
  store i64 %6086, i64* %6089, align 8
  store i64 %6088, i64* %6, align 8
  store i64 %6085, i64* %3, align 8
  %call2_4027b9 = tail call %struct.Memory* @sub_40a310._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6085, %struct.Memory* %call2_40277b)
  %6090 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278082, i64* %RCX.i4028, align 8
  %6091 = load i64, i64* %RBP.i, align 8
  %6092 = add i64 %6091, -136
  %6093 = add i64 %6090, 32
  store i64 %6093, i64* %3, align 8
  %6094 = inttoptr i64 %6092 to i64*
  %6095 = load i64, i64* %6094, align 8
  store i64 %6095, i64* %RDX.i4024, align 8
  %6096 = add i64 %6090, 31778
  %6097 = add i64 %6090, 37
  %6098 = load i64, i64* %6, align 8
  %6099 = add i64 %6098, -8
  %6100 = inttoptr i64 %6099 to i64*
  store i64 %6097, i64* %6100, align 8
  store i64 %6099, i64* %6, align 8
  store i64 %6096, i64* %3, align 8
  %call2_4027de = tail call %struct.Memory* @sub_40a3e0._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6096, %struct.Memory* %call2_4027b9)
  %6101 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278107, i64* %RAX.i4026, align 8
  %6102 = load i64, i64* %RBP.i, align 8
  %6103 = add i64 %6102, -136
  %6104 = add i64 %6101, 32
  store i64 %6104, i64* %3, align 8
  %6105 = inttoptr i64 %6103 to i64*
  %6106 = load i64, i64* %6105, align 8
  store i64 %6106, i64* %RDX.i4024, align 8
  %6107 = add i64 %6102, -144
  %6108 = add i64 %6101, 39
  store i64 %6108, i64* %3, align 8
  %6109 = inttoptr i64 %6107 to i64*
  %6110 = load i64, i64* %6109, align 8
  store i64 %6110, i64* %RCX.i4028, align 8
  %6111 = add i64 %6102, -152
  %6112 = add i64 %6101, 46
  store i64 %6112, i64* %3, align 8
  %6113 = inttoptr i64 %6111 to i64*
  %6114 = load i64, i64* %6113, align 8
  store i64 %6114, i64* %247, align 8
  %6115 = add i64 %6102, -160
  %6116 = add i64 %6101, 53
  store i64 %6116, i64* %3, align 8
  %6117 = inttoptr i64 %6115 to i64*
  %6118 = load i64, i64* %6117, align 8
  store i64 %6118, i64* %474, align 8
  %6119 = load i64*, i64** %5981, align 8
  %6120 = add i64 %6101, 57
  store i64 %6120, i64* %3, align 8
  store i64 4278107, i64* %6119, align 8
  %6121 = load i64, i64* %3, align 8
  %6122 = add i64 %6121, 31860
  %6123 = add i64 %6121, 5
  %6124 = load i64, i64* %6, align 8
  %6125 = add i64 %6124, -8
  %6126 = inttoptr i64 %6125 to i64*
  store i64 %6123, i64* %6126, align 8
  store i64 %6125, i64* %6, align 8
  store i64 %6122, i64* %3, align 8
  %call2_40281c = tail call %struct.Memory* @sub_40a490._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6122, %struct.Memory* %call2_4027de)
  %6127 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278142, i64* %RAX.i4026, align 8
  %6128 = load i64, i64* %RBP.i, align 8
  %6129 = add i64 %6128, -136
  %6130 = add i64 %6127, 32
  store i64 %6130, i64* %3, align 8
  %6131 = inttoptr i64 %6129 to i64*
  %6132 = load i64, i64* %6131, align 8
  store i64 %6132, i64* %RDX.i4024, align 8
  %6133 = add i64 %6128, -144
  %6134 = add i64 %6127, 39
  store i64 %6134, i64* %3, align 8
  %6135 = inttoptr i64 %6133 to i64*
  %6136 = load i64, i64* %6135, align 8
  store i64 %6136, i64* %RCX.i4028, align 8
  %6137 = add i64 %6128, -152
  %6138 = add i64 %6127, 46
  store i64 %6138, i64* %3, align 8
  %6139 = inttoptr i64 %6137 to i64*
  %6140 = load i64, i64* %6139, align 8
  store i64 %6140, i64* %247, align 8
  %6141 = add i64 %6128, -160
  %6142 = add i64 %6127, 53
  store i64 %6142, i64* %3, align 8
  %6143 = inttoptr i64 %6141 to i64*
  %6144 = load i64, i64* %6143, align 8
  store i64 %6144, i64* %474, align 8
  %6145 = load i64*, i64** %5981, align 8
  %6146 = add i64 %6127, 57
  store i64 %6146, i64* %3, align 8
  store i64 4278142, i64* %6145, align 8
  %6147 = load i64, i64* %3, align 8
  %6148 = add i64 %6147, 32006
  %6149 = add i64 %6147, 5
  %6150 = load i64, i64* %6, align 8
  %6151 = add i64 %6150, -8
  %6152 = inttoptr i64 %6151 to i64*
  store i64 %6149, i64* %6152, align 8
  store i64 %6151, i64* %6, align 8
  store i64 %6148, i64* %3, align 8
  %call2_40285a = tail call %struct.Memory* @sub_40a560._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6148, %struct.Memory* %call2_40281c)
  %6153 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278178, i64* %RAX.i4026, align 8
  %6154 = load i64, i64* %RBP.i, align 8
  %6155 = add i64 %6154, -136
  %6156 = add i64 %6153, 32
  store i64 %6156, i64* %3, align 8
  %6157 = inttoptr i64 %6155 to i64*
  %6158 = load i64, i64* %6157, align 8
  store i64 %6158, i64* %RDX.i4024, align 8
  %6159 = add i64 %6154, -144
  %6160 = add i64 %6153, 39
  store i64 %6160, i64* %3, align 8
  %6161 = inttoptr i64 %6159 to i64*
  %6162 = load i64, i64* %6161, align 8
  store i64 %6162, i64* %RCX.i4028, align 8
  %6163 = add i64 %6154, -152
  %6164 = add i64 %6153, 46
  store i64 %6164, i64* %3, align 8
  %6165 = inttoptr i64 %6163 to i64*
  %6166 = load i64, i64* %6165, align 8
  store i64 %6166, i64* %247, align 8
  %6167 = add i64 %6154, -160
  %6168 = add i64 %6153, 53
  store i64 %6168, i64* %3, align 8
  %6169 = inttoptr i64 %6167 to i64*
  %6170 = load i64, i64* %6169, align 8
  store i64 %6170, i64* %474, align 8
  %6171 = load i64*, i64** %5981, align 8
  %6172 = add i64 %6153, 57
  store i64 %6172, i64* %3, align 8
  store i64 4278178, i64* %6171, align 8
  %6173 = load i64, i64* %3, align 8
  %6174 = add i64 %6173, 32152
  %6175 = add i64 %6173, 5
  %6176 = load i64, i64* %6, align 8
  %6177 = add i64 %6176, -8
  %6178 = inttoptr i64 %6177 to i64*
  store i64 %6175, i64* %6178, align 8
  store i64 %6177, i64* %6, align 8
  store i64 %6174, i64* %3, align 8
  %call2_402898 = tail call %struct.Memory* @sub_40a630._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6174, %struct.Memory* %call2_40285a)
  %6179 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278211, i64* %RCX.i4028, align 8
  %6180 = load i64, i64* %RBP.i, align 8
  %6181 = add i64 %6180, -136
  %6182 = add i64 %6179, 32
  store i64 %6182, i64* %3, align 8
  %6183 = inttoptr i64 %6181 to i64*
  %6184 = load i64, i64* %6183, align 8
  store i64 %6184, i64* %RDX.i4024, align 8
  %6185 = add i64 %6179, 32355
  %6186 = add i64 %6179, 37
  %6187 = load i64, i64* %6, align 8
  %6188 = add i64 %6187, -8
  %6189 = inttoptr i64 %6188 to i64*
  store i64 %6186, i64* %6189, align 8
  store i64 %6188, i64* %6, align 8
  store i64 %6185, i64* %3, align 8
  %call2_4028bd = tail call %struct.Memory* @sub_40a700._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6185, %struct.Memory* %call2_402898)
  %6190 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278233, i64* %RAX.i4026, align 8
  %6191 = load i64, i64* %RBP.i, align 8
  %6192 = add i64 %6191, -136
  %6193 = add i64 %6190, 32
  store i64 %6193, i64* %3, align 8
  %6194 = inttoptr i64 %6192 to i64*
  %6195 = load i64, i64* %6194, align 8
  store i64 %6195, i64* %RDX.i4024, align 8
  %6196 = add i64 %6191, -144
  %6197 = add i64 %6190, 39
  store i64 %6197, i64* %3, align 8
  %6198 = inttoptr i64 %6196 to i64*
  %6199 = load i64, i64* %6198, align 8
  store i64 %6199, i64* %RCX.i4028, align 8
  %6200 = add i64 %6191, -152
  %6201 = add i64 %6190, 46
  store i64 %6201, i64* %3, align 8
  %6202 = inttoptr i64 %6200 to i64*
  %6203 = load i64, i64* %6202, align 8
  store i64 %6203, i64* %247, align 8
  %6204 = add i64 %6191, -160
  %6205 = add i64 %6190, 53
  store i64 %6205, i64* %3, align 8
  %6206 = inttoptr i64 %6204 to i64*
  %6207 = load i64, i64* %6206, align 8
  store i64 %6207, i64* %474, align 8
  %6208 = load i64*, i64** %5981, align 8
  %6209 = add i64 %6190, 57
  store i64 %6209, i64* %3, align 8
  store i64 4278233, i64* %6208, align 8
  %6210 = load i64, i64* %3, align 8
  %6211 = add i64 %6210, 32437
  %6212 = add i64 %6210, 5
  %6213 = load i64, i64* %6, align 8
  %6214 = add i64 %6213, -8
  %6215 = inttoptr i64 %6214 to i64*
  store i64 %6212, i64* %6215, align 8
  store i64 %6214, i64* %6, align 8
  store i64 %6211, i64* %3, align 8
  %call2_4028fb = tail call %struct.Memory* @sub_40a7b0._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6211, %struct.Memory* %call2_4028bd)
  %6216 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278264, i64* %RCX.i4028, align 8
  %6217 = load i64, i64* %RBP.i, align 8
  %6218 = add i64 %6217, -136
  %6219 = add i64 %6216, 32
  store i64 %6219, i64* %3, align 8
  %6220 = inttoptr i64 %6218 to i64*
  %6221 = load i64, i64* %6220, align 8
  store i64 %6221, i64* %RDX.i4024, align 8
  %6222 = add i64 %6216, 32640
  %6223 = add i64 %6216, 37
  %6224 = load i64, i64* %6, align 8
  %6225 = add i64 %6224, -8
  %6226 = inttoptr i64 %6225 to i64*
  store i64 %6223, i64* %6226, align 8
  store i64 %6225, i64* %6, align 8
  store i64 %6222, i64* %3, align 8
  %call2_402920 = tail call %struct.Memory* @sub_40a880._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6222, %struct.Memory* %call2_4028fb)
  %6227 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278285, i64* %RAX.i4026, align 8
  %6228 = load i64, i64* %RBP.i, align 8
  %6229 = add i64 %6228, -136
  %6230 = add i64 %6227, 32
  store i64 %6230, i64* %3, align 8
  %6231 = inttoptr i64 %6229 to i64*
  %6232 = load i64, i64* %6231, align 8
  store i64 %6232, i64* %RDX.i4024, align 8
  %6233 = add i64 %6228, -144
  %6234 = add i64 %6227, 39
  store i64 %6234, i64* %3, align 8
  %6235 = inttoptr i64 %6233 to i64*
  %6236 = load i64, i64* %6235, align 8
  store i64 %6236, i64* %RCX.i4028, align 8
  %6237 = add i64 %6228, -152
  %6238 = add i64 %6227, 46
  store i64 %6238, i64* %3, align 8
  %6239 = inttoptr i64 %6237 to i64*
  %6240 = load i64, i64* %6239, align 8
  store i64 %6240, i64* %247, align 8
  %6241 = add i64 %6228, -160
  %6242 = add i64 %6227, 53
  store i64 %6242, i64* %3, align 8
  %6243 = inttoptr i64 %6241 to i64*
  %6244 = load i64, i64* %6243, align 8
  store i64 %6244, i64* %474, align 8
  %6245 = load i64*, i64** %5981, align 8
  %6246 = add i64 %6227, 57
  store i64 %6246, i64* %3, align 8
  store i64 4278285, i64* %6245, align 8
  %6247 = load i64, i64* %3, align 8
  %6248 = add i64 %6247, 32722
  %6249 = add i64 %6247, 5
  %6250 = load i64, i64* %6, align 8
  %6251 = add i64 %6250, -8
  %6252 = inttoptr i64 %6251 to i64*
  store i64 %6249, i64* %6252, align 8
  store i64 %6251, i64* %6, align 8
  store i64 %6248, i64* %3, align 8
  %call2_40295e = tail call %struct.Memory* @sub_40a930._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6248, %struct.Memory* %call2_402920)
  %6253 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278315, i64* %RCX.i4028, align 8
  %6254 = load i64, i64* %RBP.i, align 8
  %6255 = add i64 %6254, -136
  %6256 = add i64 %6253, 32
  store i64 %6256, i64* %3, align 8
  %6257 = inttoptr i64 %6255 to i64*
  %6258 = load i64, i64* %6257, align 8
  store i64 %6258, i64* %RDX.i4024, align 8
  %6259 = add i64 %6253, 32925
  %6260 = add i64 %6253, 37
  %6261 = load i64, i64* %6, align 8
  %6262 = add i64 %6261, -8
  %6263 = inttoptr i64 %6262 to i64*
  store i64 %6260, i64* %6263, align 8
  store i64 %6262, i64* %6, align 8
  store i64 %6259, i64* %3, align 8
  %call2_402983 = tail call %struct.Memory* @sub_40aa00._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6259, %struct.Memory* %call2_40295e)
  %6264 = load i64, i64* %3, align 8
  store i64 6494144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278337, i64* %RAX.i4026, align 8
  %6265 = load i64, i64* %RBP.i, align 8
  %6266 = add i64 %6265, -136
  %6267 = add i64 %6264, 32
  store i64 %6267, i64* %3, align 8
  %6268 = inttoptr i64 %6266 to i64*
  %6269 = load i64, i64* %6268, align 8
  store i64 %6269, i64* %RDX.i4024, align 8
  %6270 = add i64 %6265, -144
  %6271 = add i64 %6264, 39
  store i64 %6271, i64* %3, align 8
  %6272 = inttoptr i64 %6270 to i64*
  %6273 = load i64, i64* %6272, align 8
  store i64 %6273, i64* %RCX.i4028, align 8
  %6274 = add i64 %6265, -152
  %6275 = add i64 %6264, 46
  store i64 %6275, i64* %3, align 8
  %6276 = inttoptr i64 %6274 to i64*
  %6277 = load i64, i64* %6276, align 8
  store i64 %6277, i64* %247, align 8
  %6278 = add i64 %6265, -160
  %6279 = add i64 %6264, 53
  store i64 %6279, i64* %3, align 8
  %6280 = inttoptr i64 %6278 to i64*
  %6281 = load i64, i64* %6280, align 8
  store i64 %6281, i64* %474, align 8
  %6282 = load i64*, i64** %5981, align 8
  %6283 = add i64 %6264, 57
  store i64 %6283, i64* %3, align 8
  store i64 4278337, i64* %6282, align 8
  %6284 = load i64, i64* %3, align 8
  %6285 = add i64 %6284, 33007
  %6286 = add i64 %6284, 5
  %6287 = load i64, i64* %6, align 8
  %6288 = add i64 %6287, -8
  %6289 = inttoptr i64 %6288 to i64*
  store i64 %6286, i64* %6289, align 8
  store i64 %6288, i64* %6, align 8
  store i64 %6285, i64* %3, align 8
  %call2_4029c1 = tail call %struct.Memory* @sub_40aab0._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6285, %struct.Memory* %call2_402983)
  %6290 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RAX.i4026, align 8
  store i64 6494144, i64* %RCX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %6291 = load <2 x i32>, <2 x i32>* %5640, align 1
  %6292 = load <2 x i32>, <2 x i32>* %5642, align 1
  %6293 = load double, double* inttoptr (i64 6398088 to double*), align 8
  %6294 = fptrunc double %6293 to float
  %6295 = bitcast [32 x %union.VectorReg]* %52 to float*
  store float %6294, float* %6295, align 1
  %6296 = extractelement <2 x i32> %6291, i32 1
  %6297 = getelementptr inbounds i8, i8* %53, i64 4
  %6298 = bitcast i8* %6297 to i32*
  store i32 %6296, i32* %6298, align 1
  %6299 = extractelement <2 x i32> %6292, i32 0
  %6300 = bitcast i64* %60 to i32*
  store i32 %6299, i32* %6300, align 1
  %6301 = extractelement <2 x i32> %6292, i32 1
  %6302 = getelementptr inbounds i8, i8* %53, i64 12
  %6303 = bitcast i8* %6302 to i32*
  store i32 %6301, i32* %6303, align 1
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 6494144, i64* %RSI.i3037, align 8
  %6304 = add i64 %6290, 33210
  %6305 = add i64 %6290, 40
  %6306 = load i64, i64* %6, align 8
  %6307 = add i64 %6306, -8
  %6308 = inttoptr i64 %6307 to i64*
  store i64 %6305, i64* %6308, align 8
  store i64 %6307, i64* %6, align 8
  store i64 %6304, i64* %3, align 8
  %call2_4029e9 = tail call %struct.Memory* @sub_40ab80._Z4fillIPffEvT_S1_T0_(%struct.State* nonnull %0, i64 %6304, %struct.Memory* %call2_4029c1)
  %6309 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278368, i64* %RDX.i4024, align 8
  %6310 = add i64 %6309, 70834
  %6311 = add i64 %6309, 33
  store i64 %6311, i64* %3, align 8
  %6312 = inttoptr i64 %6310 to i32*
  %6313 = load i32, i32* %6312, align 4
  %6314 = bitcast [32 x %union.VectorReg]* %52 to i32*
  store i32 %6313, i32* %6314, align 1
  %6315 = bitcast i8* %6297 to float*
  store float 0.000000e+00, float* %6315, align 1
  %6316 = bitcast i64* %60 to float*
  store float 0.000000e+00, float* %6316, align 1
  %6317 = bitcast i8* %6302 to float*
  store float 0.000000e+00, float* %6317, align 1
  %6318 = load i64, i64* %RBP.i, align 8
  %6319 = add i64 %6318, -40
  %6320 = add i64 %6309, 38
  store i64 %6320, i64* %3, align 8
  %6321 = bitcast %union.VectorReg* %5628 to <2 x i32>*
  %6322 = load <2 x i32>, <2 x i32>* %6321, align 1
  %6323 = bitcast i64* %5636 to <2 x i32>*
  %6324 = inttoptr i64 %6319 to double*
  %6325 = load double, double* %6324, align 8
  %6326 = fptrunc double %6325 to float
  %6327 = bitcast %union.VectorReg* %5628 to float*
  store float %6326, float* %6327, align 1
  %6328 = extractelement <2 x i32> %6322, i32 1
  store i32 %6328, i32* %5739, align 1
  %6329 = add i64 %6318, -164
  %6330 = add i64 %6309, 46
  store i64 %6330, i64* %3, align 8
  %6331 = bitcast %union.VectorReg* %5628 to <2 x float>*
  %6332 = load <2 x float>, <2 x float>* %6331, align 1
  %6333 = extractelement <2 x float> %6332, i32 0
  %6334 = inttoptr i64 %6329 to float*
  store float %6333, float* %6334, align 4
  %6335 = load i64, i64* %3, align 8
  %6336 = load <2 x i32>, <2 x i32>* %5640, align 1
  %6337 = load <2 x i32>, <2 x i32>* %5642, align 1
  %6338 = extractelement <2 x i32> %6336, i32 0
  store i32 %6338, i32* %5736, align 1
  %6339 = extractelement <2 x i32> %6336, i32 1
  store i32 %6339, i32* %5739, align 1
  %6340 = extractelement <2 x i32> %6337, i32 0
  store i32 %6340, i32* %5740, align 1
  %6341 = extractelement <2 x i32> %6337, i32 1
  store i32 %6341, i32* %5742, align 1
  %6342 = load i64, i64* %RBP.i, align 8
  %6343 = add i64 %6342, -164
  %6344 = add i64 %6335, 11
  store i64 %6344, i64* %3, align 8
  %6345 = load <2 x float>, <2 x float>* %6331, align 1
  %6346 = load <2 x i32>, <2 x i32>* %6323, align 1
  %6347 = inttoptr i64 %6343 to float*
  %6348 = load float, float* %6347, align 4
  %6349 = extractelement <2 x float> %6345, i32 0
  %6350 = fmul float %6349, %6348
  store float %6350, float* %6327, align 1
  %6351 = bitcast <2 x float> %6345 to <2 x i32>
  %6352 = extractelement <2 x i32> %6351, i32 1
  store i32 %6352, i32* %5739, align 1
  %6353 = extractelement <2 x i32> %6346, i32 0
  store i32 %6353, i32* %5740, align 1
  %6354 = extractelement <2 x i32> %6346, i32 1
  store i32 %6354, i32* %5742, align 1
  %6355 = add i64 %6342, -168
  %6356 = add i64 %6335, 19
  store i64 %6356, i64* %3, align 8
  %6357 = load <2 x float>, <2 x float>* %6331, align 1
  %6358 = extractelement <2 x float> %6357, i32 0
  %6359 = inttoptr i64 %6355 to float*
  store float %6358, float* %6359, align 4
  %6360 = load i64, i64* %RBP.i, align 8
  %6361 = add i64 %6360, -164
  %6362 = load i64, i64* %3, align 8
  %6363 = add i64 %6362, 8
  store i64 %6363, i64* %3, align 8
  %6364 = bitcast [32 x %union.VectorReg]* %52 to <2 x float>*
  %6365 = load <2 x float>, <2 x float>* %6364, align 1
  %6366 = load <2 x i32>, <2 x i32>* %5642, align 1
  %6367 = inttoptr i64 %6361 to float*
  %6368 = load float, float* %6367, align 4
  %6369 = extractelement <2 x float> %6365, i32 0
  %6370 = fadd float %6369, %6368
  store float %6370, float* %6295, align 1
  %6371 = bitcast <2 x float> %6365 to <2 x i32>
  %6372 = extractelement <2 x i32> %6371, i32 1
  store i32 %6372, i32* %6298, align 1
  %6373 = extractelement <2 x i32> %6366, i32 0
  store i32 %6373, i32* %6300, align 1
  %6374 = extractelement <2 x i32> %6366, i32 1
  store i32 %6374, i32* %6303, align 1
  %6375 = add i64 %6360, -172
  %6376 = add i64 %6362, 16
  store i64 %6376, i64* %3, align 8
  %6377 = load <2 x float>, <2 x float>* %6364, align 1
  %6378 = extractelement <2 x float> %6377, i32 0
  %6379 = inttoptr i64 %6375 to float*
  store float %6378, float* %6379, align 4
  %6380 = load i64, i64* %RBP.i, align 8
  %6381 = add i64 %6380, -164
  %6382 = load i64, i64* %3, align 8
  %6383 = add i64 %6382, 8
  store i64 %6383, i64* %3, align 8
  %6384 = inttoptr i64 %6381 to i32*
  %6385 = load i32, i32* %6384, align 4
  store i32 %6385, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6386 = add i64 %6380, -168
  %6387 = add i64 %6382, 16
  store i64 %6387, i64* %3, align 8
  %6388 = inttoptr i64 %6386 to i32*
  %6389 = load i32, i32* %6388, align 4
  store i32 %6389, i32* %5736, align 1
  %6390 = bitcast i8* %5738 to float*
  store float 0.000000e+00, float* %6390, align 1
  %6391 = bitcast i64* %5636 to float*
  store float 0.000000e+00, float* %6391, align 1
  %6392 = bitcast i8* %5741 to float*
  store float 0.000000e+00, float* %6392, align 1
  %6393 = add i64 %6380, -172
  %6394 = add i64 %6382, 24
  store i64 %6394, i64* %3, align 8
  %6395 = load <2 x float>, <2 x float>* %6331, align 1
  %6396 = load <2 x i32>, <2 x i32>* %6323, align 1
  %6397 = inttoptr i64 %6393 to float*
  %6398 = load float, float* %6397, align 4
  %6399 = extractelement <2 x float> %6395, i32 0
  %6400 = fdiv float %6399, %6398
  store float %6400, float* %6327, align 1
  %6401 = bitcast <2 x float> %6395 to <2 x i32>
  %6402 = extractelement <2 x i32> %6401, i32 1
  store i32 %6402, i32* %5739, align 1
  %6403 = extractelement <2 x i32> %6396, i32 0
  store i32 %6403, i32* %5740, align 1
  %6404 = extractelement <2 x i32> %6396, i32 1
  store i32 %6404, i32* %5742, align 1
  %6405 = load <2 x float>, <2 x float>* %6364, align 1
  %6406 = load <2 x i32>, <2 x i32>* %5642, align 1
  %6407 = load <2 x float>, <2 x float>* %6331, align 1
  %6408 = extractelement <2 x float> %6405, i32 0
  %6409 = extractelement <2 x float> %6407, i32 0
  %6410 = fadd float %6408, %6409
  store float %6410, float* %6295, align 1
  %6411 = bitcast <2 x float> %6405 to <2 x i32>
  %6412 = extractelement <2 x i32> %6411, i32 1
  store i32 %6412, i32* %6298, align 1
  %6413 = extractelement <2 x i32> %6406, i32 0
  store i32 %6413, i32* %6300, align 1
  %6414 = extractelement <2 x i32> %6406, i32 1
  store i32 %6414, i32* %6303, align 1
  %6415 = add i64 %6380, -176
  %6416 = add i64 %6382, 36
  store i64 %6416, i64* %3, align 8
  %6417 = load <2 x float>, <2 x float>* %6364, align 1
  %6418 = extractelement <2 x float> %6417, i32 0
  %6419 = inttoptr i64 %6415 to float*
  store float %6418, float* %6419, align 4
  %6420 = load i64, i64* %RBP.i, align 8
  %6421 = add i64 %6420, -164
  %6422 = load i64, i64* %3, align 8
  %6423 = add i64 %6422, 8
  store i64 %6423, i64* %3, align 8
  %6424 = inttoptr i64 %6421 to i32*
  %6425 = load i32, i32* %6424, align 4
  store i32 %6425, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6426 = add i64 %6422, 33117
  %6427 = add i64 %6422, 13
  %6428 = load i64, i64* %6, align 8
  %6429 = add i64 %6428, -8
  %6430 = inttoptr i64 %6429 to i64*
  store i64 %6427, i64* %6430, align 8
  store i64 %6429, i64* %6, align 8
  store i64 %6426, i64* %3, align 8
  %call2_402a6b = tail call %struct.Memory* @sub_40abc0._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6426, %struct.Memory* %call2_4029e9)
  %6431 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278387, i64* %RDX.i4024, align 8
  %6432 = load i64, i64* %RBP.i, align 8
  %6433 = add i64 %6432, -164
  %6434 = add i64 %6431, 33
  store i64 %6434, i64* %3, align 8
  %6435 = inttoptr i64 %6433 to i32*
  %6436 = load i32, i32* %6435, align 4
  store i32 %6436, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6437 = add i64 %6431, 33280
  %6438 = add i64 %6431, 38
  %6439 = load i64, i64* %6, align 8
  %6440 = add i64 %6439, -8
  %6441 = inttoptr i64 %6440 to i64*
  store i64 %6438, i64* %6441, align 8
  store i64 %6440, i64* %6, align 8
  store i64 %6437, i64* %3, align 8
  %call2_402a91 = tail call %struct.Memory* @sub_40ac70._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6437, %struct.Memory* %call2_402a6b)
  %6442 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278414, i64* %RDX.i4024, align 8
  %6443 = load i64, i64* %RBP.i, align 8
  %6444 = add i64 %6443, -164
  %6445 = add i64 %6442, 33
  store i64 %6445, i64* %3, align 8
  %6446 = inttoptr i64 %6444 to i32*
  %6447 = load i32, i32* %6446, align 4
  store i32 %6447, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6448 = add i64 %6443, -168
  %6449 = add i64 %6442, 41
  store i64 %6449, i64* %3, align 8
  %6450 = inttoptr i64 %6448 to i32*
  %6451 = load i32, i32* %6450, align 4
  store i32 %6451, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6452 = add i64 %6443, -172
  %6453 = add i64 %6442, 49
  store i64 %6453, i64* %3, align 8
  %6454 = inttoptr i64 %6452 to i32*
  %6455 = load i32, i32* %6454, align 4
  store i32 %6455, i32* %5644, align 1
  %6456 = bitcast i8* %5646 to float*
  store float 0.000000e+00, float* %6456, align 1
  %6457 = bitcast i64* %5648 to float*
  store float 0.000000e+00, float* %6457, align 1
  %6458 = bitcast i8* %5650 to float*
  store float 0.000000e+00, float* %6458, align 1
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %6460 = bitcast %union.VectorReg* %6459 to i8*
  %6461 = add i64 %6443, -176
  %6462 = add i64 %6442, 57
  store i64 %6462, i64* %3, align 8
  %6463 = inttoptr i64 %6461 to i32*
  %6464 = load i32, i32* %6463, align 4
  %6465 = bitcast %union.VectorReg* %6459 to i32*
  store i32 %6464, i32* %6465, align 1
  %6466 = getelementptr inbounds i8, i8* %6460, i64 4
  %6467 = bitcast i8* %6466 to float*
  store float 0.000000e+00, float* %6467, align 1
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %6469 = bitcast i64* %6468 to float*
  store float 0.000000e+00, float* %6469, align 1
  %6470 = getelementptr inbounds i8, i8* %6460, i64 12
  %6471 = bitcast i8* %6470 to float*
  store float 0.000000e+00, float* %6471, align 1
  %6472 = add i64 %6442, 33434
  %6473 = add i64 %6442, 62
  %6474 = load i64, i64* %6, align 8
  %6475 = add i64 %6474, -8
  %6476 = inttoptr i64 %6475 to i64*
  store i64 %6473, i64* %6476, align 8
  store i64 %6475, i64* %6, align 8
  store i64 %6472, i64* %3, align 8
  %call2_402acf = tail call %struct.Memory* @sub_40ad30._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6472, %struct.Memory* %call2_402a91)
  %6477 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278443, i64* %RDX.i4024, align 8
  %6478 = load i64, i64* %RBP.i, align 8
  %6479 = add i64 %6478, -164
  %6480 = add i64 %6477, 33
  store i64 %6480, i64* %3, align 8
  %6481 = inttoptr i64 %6479 to i32*
  %6482 = load i32, i32* %6481, align 4
  store i32 %6482, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6483 = add i64 %6477, 33596
  %6484 = add i64 %6477, 38
  %6485 = load i64, i64* %6, align 8
  %6486 = add i64 %6485, -8
  %6487 = inttoptr i64 %6486 to i64*
  store i64 %6484, i64* %6487, align 8
  store i64 %6486, i64* %6, align 8
  store i64 %6483, i64* %3, align 8
  %call2_402af5 = tail call %struct.Memory* @sub_40ae10._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6483, %struct.Memory* %call2_402acf)
  %6488 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278467, i64* %RDX.i4024, align 8
  %6489 = load i64, i64* %RBP.i, align 8
  %6490 = add i64 %6489, -164
  %6491 = add i64 %6488, 33
  store i64 %6491, i64* %3, align 8
  %6492 = inttoptr i64 %6490 to i32*
  %6493 = load i32, i32* %6492, align 4
  store i32 %6493, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6494 = add i64 %6489, -168
  %6495 = add i64 %6488, 41
  store i64 %6495, i64* %3, align 8
  %6496 = inttoptr i64 %6494 to i32*
  %6497 = load i32, i32* %6496, align 4
  store i32 %6497, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6498 = add i64 %6489, -172
  %6499 = add i64 %6488, 49
  store i64 %6499, i64* %3, align 8
  %6500 = inttoptr i64 %6498 to i32*
  %6501 = load i32, i32* %6500, align 4
  store i32 %6501, i32* %5644, align 1
  store float 0.000000e+00, float* %6456, align 1
  store float 0.000000e+00, float* %6457, align 1
  store float 0.000000e+00, float* %6458, align 1
  %6502 = add i64 %6489, -176
  %6503 = add i64 %6488, 57
  store i64 %6503, i64* %3, align 8
  %6504 = inttoptr i64 %6502 to i32*
  %6505 = load i32, i32* %6504, align 4
  store i32 %6505, i32* %6465, align 1
  store float 0.000000e+00, float* %6467, align 1
  store float 0.000000e+00, float* %6469, align 1
  store float 0.000000e+00, float* %6471, align 1
  %6506 = add i64 %6488, 33734
  %6507 = add i64 %6488, 62
  %6508 = load i64, i64* %6, align 8
  %6509 = add i64 %6508, -8
  %6510 = inttoptr i64 %6509 to i64*
  store i64 %6507, i64* %6510, align 8
  store i64 %6509, i64* %6, align 8
  store i64 %6506, i64* %3, align 8
  %call2_402b33 = tail call %struct.Memory* @sub_40aec0._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6506, %struct.Memory* %call2_402af5)
  %6511 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278501, i64* %RDX.i4024, align 8
  %6512 = load i64, i64* %RBP.i, align 8
  %6513 = add i64 %6512, -164
  %6514 = add i64 %6511, 33
  store i64 %6514, i64* %3, align 8
  %6515 = inttoptr i64 %6513 to i32*
  %6516 = load i32, i32* %6515, align 4
  store i32 %6516, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6517 = add i64 %6511, 33896
  %6518 = add i64 %6511, 38
  %6519 = load i64, i64* %6, align 8
  %6520 = add i64 %6519, -8
  %6521 = inttoptr i64 %6520 to i64*
  store i64 %6518, i64* %6521, align 8
  store i64 %6520, i64* %6, align 8
  store i64 %6517, i64* %3, align 8
  %call2_402b59 = tail call %struct.Memory* @sub_40afa0._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6517, %struct.Memory* %call2_402b33)
  %6522 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278525, i64* %RDX.i4024, align 8
  %6523 = load i64, i64* %RBP.i, align 8
  %6524 = add i64 %6523, -164
  %6525 = add i64 %6522, 33
  store i64 %6525, i64* %3, align 8
  %6526 = inttoptr i64 %6524 to i32*
  %6527 = load i32, i32* %6526, align 4
  store i32 %6527, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6528 = add i64 %6523, -168
  %6529 = add i64 %6522, 41
  store i64 %6529, i64* %3, align 8
  %6530 = inttoptr i64 %6528 to i32*
  %6531 = load i32, i32* %6530, align 4
  store i32 %6531, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6532 = add i64 %6523, -172
  %6533 = add i64 %6522, 49
  store i64 %6533, i64* %3, align 8
  %6534 = inttoptr i64 %6532 to i32*
  %6535 = load i32, i32* %6534, align 4
  store i32 %6535, i32* %5644, align 1
  store float 0.000000e+00, float* %6456, align 1
  store float 0.000000e+00, float* %6457, align 1
  store float 0.000000e+00, float* %6458, align 1
  %6536 = add i64 %6523, -176
  %6537 = add i64 %6522, 57
  store i64 %6537, i64* %3, align 8
  %6538 = inttoptr i64 %6536 to i32*
  %6539 = load i32, i32* %6538, align 4
  store i32 %6539, i32* %6465, align 1
  store float 0.000000e+00, float* %6467, align 1
  store float 0.000000e+00, float* %6469, align 1
  store float 0.000000e+00, float* %6471, align 1
  %6540 = add i64 %6522, 34034
  %6541 = add i64 %6522, 62
  %6542 = load i64, i64* %6, align 8
  %6543 = add i64 %6542, -8
  %6544 = inttoptr i64 %6543 to i64*
  store i64 %6541, i64* %6544, align 8
  store i64 %6543, i64* %6, align 8
  store i64 %6540, i64* %3, align 8
  %call2_402b97 = tail call %struct.Memory* @sub_40b050._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6540, %struct.Memory* %call2_402b59)
  %6545 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278560, i64* %RDX.i4024, align 8
  %6546 = load i64, i64* %RBP.i, align 8
  %6547 = add i64 %6546, -164
  %6548 = add i64 %6545, 33
  store i64 %6548, i64* %3, align 8
  %6549 = inttoptr i64 %6547 to i32*
  %6550 = load i32, i32* %6549, align 4
  store i32 %6550, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6551 = add i64 %6546, -168
  %6552 = add i64 %6545, 41
  store i64 %6552, i64* %3, align 8
  %6553 = inttoptr i64 %6551 to i32*
  %6554 = load i32, i32* %6553, align 4
  store i32 %6554, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6555 = add i64 %6546, -172
  %6556 = add i64 %6545, 49
  store i64 %6556, i64* %3, align 8
  %6557 = inttoptr i64 %6555 to i32*
  %6558 = load i32, i32* %6557, align 4
  store i32 %6558, i32* %5644, align 1
  store float 0.000000e+00, float* %6456, align 1
  store float 0.000000e+00, float* %6457, align 1
  store float 0.000000e+00, float* %6458, align 1
  %6559 = add i64 %6546, -176
  %6560 = add i64 %6545, 57
  store i64 %6560, i64* %3, align 8
  %6561 = inttoptr i64 %6559 to i32*
  %6562 = load i32, i32* %6561, align 4
  store i32 %6562, i32* %6465, align 1
  store float 0.000000e+00, float* %6467, align 1
  store float 0.000000e+00, float* %6469, align 1
  store float 0.000000e+00, float* %6471, align 1
  %6563 = add i64 %6545, 34196
  %6564 = add i64 %6545, 62
  %6565 = load i64, i64* %6, align 8
  %6566 = add i64 %6565, -8
  %6567 = inttoptr i64 %6566 to i64*
  store i64 %6564, i64* %6567, align 8
  store i64 %6566, i64* %6, align 8
  store i64 %6563, i64* %3, align 8
  %call2_402bd5 = tail call %struct.Memory* @sub_40b130._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6563, %struct.Memory* %call2_402b97)
  %6568 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278596, i64* %RDX.i4024, align 8
  %6569 = load i64, i64* %RBP.i, align 8
  %6570 = add i64 %6569, -164
  %6571 = add i64 %6568, 33
  store i64 %6571, i64* %3, align 8
  %6572 = inttoptr i64 %6570 to i32*
  %6573 = load i32, i32* %6572, align 4
  store i32 %6573, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6574 = add i64 %6568, 34358
  %6575 = add i64 %6568, 38
  %6576 = load i64, i64* %6, align 8
  %6577 = add i64 %6576, -8
  %6578 = inttoptr i64 %6577 to i64*
  store i64 %6575, i64* %6578, align 8
  store i64 %6577, i64* %6, align 8
  store i64 %6574, i64* %3, align 8
  %call2_402bfb = tail call %struct.Memory* @sub_40b210._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6574, %struct.Memory* %call2_402bd5)
  %6579 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278618, i64* %RDX.i4024, align 8
  %6580 = load i64, i64* %RBP.i, align 8
  %6581 = add i64 %6580, -164
  %6582 = add i64 %6579, 33
  store i64 %6582, i64* %3, align 8
  %6583 = inttoptr i64 %6581 to i32*
  %6584 = load i32, i32* %6583, align 4
  store i32 %6584, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6585 = add i64 %6580, -168
  %6586 = add i64 %6579, 41
  store i64 %6586, i64* %3, align 8
  %6587 = inttoptr i64 %6585 to i32*
  %6588 = load i32, i32* %6587, align 4
  store i32 %6588, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6589 = add i64 %6580, -172
  %6590 = add i64 %6579, 49
  store i64 %6590, i64* %3, align 8
  %6591 = inttoptr i64 %6589 to i32*
  %6592 = load i32, i32* %6591, align 4
  store i32 %6592, i32* %5644, align 1
  store float 0.000000e+00, float* %6456, align 1
  store float 0.000000e+00, float* %6457, align 1
  store float 0.000000e+00, float* %6458, align 1
  %6593 = add i64 %6580, -176
  %6594 = add i64 %6579, 57
  store i64 %6594, i64* %3, align 8
  %6595 = inttoptr i64 %6593 to i32*
  %6596 = load i32, i32* %6595, align 4
  store i32 %6596, i32* %6465, align 1
  store float 0.000000e+00, float* %6467, align 1
  store float 0.000000e+00, float* %6469, align 1
  store float 0.000000e+00, float* %6471, align 1
  %6597 = add i64 %6579, 34496
  %6598 = add i64 %6579, 62
  %6599 = load i64, i64* %6, align 8
  %6600 = add i64 %6599, -8
  %6601 = inttoptr i64 %6600 to i64*
  store i64 %6598, i64* %6601, align 8
  store i64 %6600, i64* %6, align 8
  store i64 %6597, i64* %3, align 8
  %call2_402c39 = tail call %struct.Memory* @sub_40b2c0._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6597, %struct.Memory* %call2_402bfb)
  %6602 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278650, i64* %RDX.i4024, align 8
  %6603 = load i64, i64* %RBP.i, align 8
  %6604 = add i64 %6603, -164
  %6605 = add i64 %6602, 33
  store i64 %6605, i64* %3, align 8
  %6606 = inttoptr i64 %6604 to i32*
  %6607 = load i32, i32* %6606, align 4
  store i32 %6607, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6608 = add i64 %6603, -168
  %6609 = add i64 %6602, 41
  store i64 %6609, i64* %3, align 8
  %6610 = inttoptr i64 %6608 to i32*
  %6611 = load i32, i32* %6610, align 4
  store i32 %6611, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6612 = add i64 %6603, -172
  %6613 = add i64 %6602, 49
  store i64 %6613, i64* %3, align 8
  %6614 = inttoptr i64 %6612 to i32*
  %6615 = load i32, i32* %6614, align 4
  store i32 %6615, i32* %5644, align 1
  store float 0.000000e+00, float* %6456, align 1
  store float 0.000000e+00, float* %6457, align 1
  store float 0.000000e+00, float* %6458, align 1
  %6616 = add i64 %6603, -176
  %6617 = add i64 %6602, 57
  store i64 %6617, i64* %3, align 8
  %6618 = inttoptr i64 %6616 to i32*
  %6619 = load i32, i32* %6618, align 4
  store i32 %6619, i32* %6465, align 1
  store float 0.000000e+00, float* %6467, align 1
  store float 0.000000e+00, float* %6469, align 1
  store float 0.000000e+00, float* %6471, align 1
  %6620 = add i64 %6602, 34658
  %6621 = add i64 %6602, 62
  %6622 = load i64, i64* %6, align 8
  %6623 = add i64 %6622, -8
  %6624 = inttoptr i64 %6623 to i64*
  store i64 %6621, i64* %6624, align 8
  store i64 %6623, i64* %6, align 8
  store i64 %6620, i64* %3, align 8
  %call2_402c77 = tail call %struct.Memory* @sub_40b3a0._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6620, %struct.Memory* %call2_402c39)
  %6625 = load i64, i64* %3, align 8
  store i64 6462144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278683, i64* %RDX.i4024, align 8
  %6626 = load i64, i64* %RBP.i, align 8
  %6627 = add i64 %6626, -164
  %6628 = add i64 %6625, 33
  store i64 %6628, i64* %3, align 8
  %6629 = inttoptr i64 %6627 to i32*
  %6630 = load i32, i32* %6629, align 4
  store i32 %6630, i32* %6314, align 1
  store float 0.000000e+00, float* %6315, align 1
  store float 0.000000e+00, float* %6316, align 1
  store float 0.000000e+00, float* %6317, align 1
  %6631 = add i64 %6626, -168
  %6632 = add i64 %6625, 41
  store i64 %6632, i64* %3, align 8
  %6633 = inttoptr i64 %6631 to i32*
  %6634 = load i32, i32* %6633, align 4
  store i32 %6634, i32* %5736, align 1
  store float 0.000000e+00, float* %6390, align 1
  store float 0.000000e+00, float* %6391, align 1
  store float 0.000000e+00, float* %6392, align 1
  %6635 = add i64 %6626, -172
  %6636 = add i64 %6625, 49
  store i64 %6636, i64* %3, align 8
  %6637 = inttoptr i64 %6635 to i32*
  %6638 = load i32, i32* %6637, align 4
  store i32 %6638, i32* %5644, align 1
  store float 0.000000e+00, float* %6456, align 1
  store float 0.000000e+00, float* %6457, align 1
  store float 0.000000e+00, float* %6458, align 1
  %6639 = add i64 %6626, -176
  %6640 = add i64 %6625, 57
  store i64 %6640, i64* %3, align 8
  %6641 = inttoptr i64 %6639 to i32*
  %6642 = load i32, i32* %6641, align 4
  store i32 %6642, i32* %6465, align 1
  store float 0.000000e+00, float* %6467, align 1
  store float 0.000000e+00, float* %6469, align 1
  store float 0.000000e+00, float* %6471, align 1
  %6643 = add i64 %6625, 34820
  %6644 = add i64 %6625, 62
  %6645 = load i64, i64* %6, align 8
  %6646 = add i64 %6645, -8
  %6647 = inttoptr i64 %6646 to i64*
  store i64 %6644, i64* %6647, align 8
  store i64 %6646, i64* %6, align 8
  store i64 %6643, i64* %3, align 8
  %call2_402cb5 = tail call %struct.Memory* @sub_40b480._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6643, %struct.Memory* %call2_402c77)
  %6648 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RAX.i4026, align 8
  store i64 6462144, i64* %RCX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %6649 = load i64, i64* inttoptr (i64 6398088 to i64*), align 8
  store i64 %6649, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 6462144, i64* %RSI.i3037, align 8
  %6650 = add i64 %6648, 34982
  %6651 = add i64 %6648, 40
  %6652 = load i64, i64* %6, align 8
  %6653 = add i64 %6652, -8
  %6654 = inttoptr i64 %6653 to i64*
  store i64 %6651, i64* %6654, align 8
  store i64 %6653, i64* %6, align 8
  store i64 %6650, i64* %3, align 8
  %call2_402cdd = tail call %struct.Memory* @sub_40b560._Z4fillIPddEvT_S1_T0_(%struct.State* nonnull %0, i64 %6650, %struct.Memory* %call2_402cb5)
  %6655 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278713, i64* %RDX.i4024, align 8
  %6656 = add i64 %6655, 70022
  %6657 = add i64 %6655, 33
  store i64 %6657, i64* %3, align 8
  %6658 = inttoptr i64 %6656 to i64*
  %6659 = load i64, i64* %6658, align 8
  store i64 %6659, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6660 = load i64, i64* %RBP.i, align 8
  %6661 = add i64 %6660, -40
  %6662 = add i64 %6655, 38
  store i64 %6662, i64* %3, align 8
  %6663 = inttoptr i64 %6661 to i64*
  %6664 = load i64, i64* %6663, align 8
  %6665 = add i64 %6660, -184
  %6666 = add i64 %6655, 46
  store i64 %6666, i64* %3, align 8
  %6667 = inttoptr i64 %6665 to i64*
  store i64 %6664, i64* %6667, align 8
  %6668 = load i64, i64* %3, align 8
  %6669 = load <2 x i32>, <2 x i32>* %5640, align 1
  %6670 = load <2 x i32>, <2 x i32>* %5642, align 1
  %6671 = extractelement <2 x i32> %6669, i32 0
  store i32 %6671, i32* %5736, align 1
  %6672 = extractelement <2 x i32> %6669, i32 1
  store i32 %6672, i32* %5739, align 1
  %6673 = extractelement <2 x i32> %6670, i32 0
  store i32 %6673, i32* %5740, align 1
  %6674 = extractelement <2 x i32> %6670, i32 1
  store i32 %6674, i32* %5742, align 1
  %6675 = load i64, i64* %RBP.i, align 8
  %6676 = add i64 %6675, -184
  %6677 = add i64 %6668, 11
  store i64 %6677, i64* %3, align 8
  %6678 = load double, double* %5634, align 1
  %6679 = inttoptr i64 %6676 to double*
  %6680 = load double, double* %6679, align 8
  %6681 = fmul double %6678, %6680
  store double %6681, double* %5634, align 1
  %6682 = add i64 %6675, -192
  %6683 = add i64 %6668, 19
  store i64 %6683, i64* %3, align 8
  %6684 = inttoptr i64 %6682 to double*
  store double %6681, double* %6684, align 8
  %6685 = load i64, i64* %RBP.i, align 8
  %6686 = add i64 %6685, -184
  %6687 = load i64, i64* %3, align 8
  %6688 = add i64 %6687, 8
  store i64 %6688, i64* %3, align 8
  %6689 = load double, double* %58, align 1
  %6690 = inttoptr i64 %6686 to double*
  %6691 = load double, double* %6690, align 8
  %6692 = fadd double %6689, %6691
  store double %6692, double* %58, align 1
  %6693 = add i64 %6685, -200
  %6694 = add i64 %6687, 16
  store i64 %6694, i64* %3, align 8
  %6695 = inttoptr i64 %6693 to double*
  store double %6692, double* %6695, align 8
  %6696 = load i64, i64* %RBP.i, align 8
  %6697 = add i64 %6696, -184
  %6698 = load i64, i64* %3, align 8
  %6699 = add i64 %6698, 8
  store i64 %6699, i64* %3, align 8
  %6700 = inttoptr i64 %6697 to i64*
  %6701 = load i64, i64* %6700, align 8
  store i64 %6701, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6702 = add i64 %6696, -192
  %6703 = add i64 %6698, 16
  store i64 %6703, i64* %3, align 8
  %6704 = inttoptr i64 %6702 to i64*
  %6705 = load i64, i64* %6704, align 8
  store i64 %6705, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6706 = add i64 %6696, -200
  %6707 = add i64 %6698, 24
  store i64 %6707, i64* %3, align 8
  %6708 = bitcast i64 %6705 to double
  %6709 = inttoptr i64 %6706 to double*
  %6710 = load double, double* %6709, align 8
  %6711 = fdiv double %6708, %6710
  store double %6711, double* %5634, align 1
  store i64 0, i64* %5636, align 1
  %6712 = bitcast i64 %6701 to double
  %6713 = fadd double %6712, %6711
  store double %6713, double* %58, align 1
  store i64 0, i64* %60, align 1
  %6714 = add i64 %6696, -208
  %6715 = add i64 %6698, 36
  store i64 %6715, i64* %3, align 8
  %6716 = inttoptr i64 %6714 to double*
  store double %6713, double* %6716, align 8
  %6717 = load i64, i64* %RBP.i, align 8
  %6718 = add i64 %6717, -184
  %6719 = load i64, i64* %3, align 8
  %6720 = add i64 %6719, 8
  store i64 %6720, i64* %3, align 8
  %6721 = inttoptr i64 %6718 to i64*
  %6722 = load i64, i64* %6721, align 8
  store i64 %6722, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6723 = add i64 %6719, 34889
  %6724 = add i64 %6719, 13
  %6725 = load i64, i64* %6, align 8
  %6726 = add i64 %6725, -8
  %6727 = inttoptr i64 %6726 to i64*
  store i64 %6724, i64* %6727, align 8
  store i64 %6726, i64* %6, align 8
  store i64 %6723, i64* %3, align 8
  %call2_402d5f = tail call %struct.Memory* @sub_40b5a0._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6723, %struct.Memory* %call2_402cdd)
  %6728 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278733, i64* %RDX.i4024, align 8
  %6729 = load i64, i64* %RBP.i, align 8
  %6730 = add i64 %6729, -184
  %6731 = add i64 %6728, 33
  store i64 %6731, i64* %3, align 8
  %6732 = inttoptr i64 %6730 to i64*
  %6733 = load i64, i64* %6732, align 8
  store i64 %6733, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6734 = add i64 %6728, 35052
  %6735 = add i64 %6728, 38
  %6736 = load i64, i64* %6, align 8
  %6737 = add i64 %6736, -8
  %6738 = inttoptr i64 %6737 to i64*
  store i64 %6735, i64* %6738, align 8
  store i64 %6737, i64* %6, align 8
  store i64 %6734, i64* %3, align 8
  %call2_402d85 = tail call %struct.Memory* @sub_40b650._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6734, %struct.Memory* %call2_402d5f)
  %6739 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278761, i64* %RDX.i4024, align 8
  %6740 = load i64, i64* %RBP.i, align 8
  %6741 = add i64 %6740, -184
  %6742 = add i64 %6739, 33
  store i64 %6742, i64* %3, align 8
  %6743 = inttoptr i64 %6741 to i64*
  %6744 = load i64, i64* %6743, align 8
  store i64 %6744, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6745 = add i64 %6740, -192
  %6746 = add i64 %6739, 41
  store i64 %6746, i64* %3, align 8
  %6747 = inttoptr i64 %6745 to i64*
  %6748 = load i64, i64* %6747, align 8
  store i64 %6748, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6749 = add i64 %6740, -200
  %6750 = add i64 %6739, 49
  store i64 %6750, i64* %3, align 8
  %6751 = inttoptr i64 %6749 to i64*
  %6752 = load i64, i64* %6751, align 8
  store i64 %6752, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6753 = add i64 %6740, -208
  %6754 = add i64 %6739, 57
  store i64 %6754, i64* %3, align 8
  %6755 = inttoptr i64 %6753 to i64*
  %6756 = load i64, i64* %6755, align 8
  %6757 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6459, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %6756, i64* %6757, align 1
  %6758 = bitcast i64* %6468 to double*
  store double 0.000000e+00, double* %6758, align 1
  %6759 = add i64 %6739, 35206
  %6760 = add i64 %6739, 62
  %6761 = load i64, i64* %6, align 8
  %6762 = add i64 %6761, -8
  %6763 = inttoptr i64 %6762 to i64*
  store i64 %6760, i64* %6763, align 8
  store i64 %6762, i64* %6, align 8
  store i64 %6759, i64* %3, align 8
  %call2_402dc3 = tail call %struct.Memory* @sub_40b710._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6759, %struct.Memory* %call2_402d85)
  %6764 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278791, i64* %RDX.i4024, align 8
  %6765 = load i64, i64* %RBP.i, align 8
  %6766 = add i64 %6765, -184
  %6767 = add i64 %6764, 33
  store i64 %6767, i64* %3, align 8
  %6768 = inttoptr i64 %6766 to i64*
  %6769 = load i64, i64* %6768, align 8
  store i64 %6769, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6770 = add i64 %6764, 35368
  %6771 = add i64 %6764, 38
  %6772 = load i64, i64* %6, align 8
  %6773 = add i64 %6772, -8
  %6774 = inttoptr i64 %6773 to i64*
  store i64 %6771, i64* %6774, align 8
  store i64 %6773, i64* %6, align 8
  store i64 %6770, i64* %3, align 8
  %call2_402de9 = tail call %struct.Memory* @sub_40b7f0._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6770, %struct.Memory* %call2_402dc3)
  %6775 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278816, i64* %RDX.i4024, align 8
  %6776 = load i64, i64* %RBP.i, align 8
  %6777 = add i64 %6776, -184
  %6778 = add i64 %6775, 33
  store i64 %6778, i64* %3, align 8
  %6779 = inttoptr i64 %6777 to i64*
  %6780 = load i64, i64* %6779, align 8
  store i64 %6780, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6781 = add i64 %6776, -192
  %6782 = add i64 %6775, 41
  store i64 %6782, i64* %3, align 8
  %6783 = inttoptr i64 %6781 to i64*
  %6784 = load i64, i64* %6783, align 8
  store i64 %6784, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6785 = add i64 %6776, -200
  %6786 = add i64 %6775, 49
  store i64 %6786, i64* %3, align 8
  %6787 = inttoptr i64 %6785 to i64*
  %6788 = load i64, i64* %6787, align 8
  store i64 %6788, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6789 = add i64 %6776, -208
  %6790 = add i64 %6775, 57
  store i64 %6790, i64* %3, align 8
  %6791 = inttoptr i64 %6789 to i64*
  %6792 = load i64, i64* %6791, align 8
  store i64 %6792, i64* %6757, align 1
  store double 0.000000e+00, double* %6758, align 1
  %6793 = add i64 %6775, 35506
  %6794 = add i64 %6775, 62
  %6795 = load i64, i64* %6, align 8
  %6796 = add i64 %6795, -8
  %6797 = inttoptr i64 %6796 to i64*
  store i64 %6794, i64* %6797, align 8
  store i64 %6796, i64* %6, align 8
  store i64 %6793, i64* %3, align 8
  %call2_402e27 = tail call %struct.Memory* @sub_40b8a0._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6793, %struct.Memory* %call2_402de9)
  %6798 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278851, i64* %RDX.i4024, align 8
  %6799 = load i64, i64* %RBP.i, align 8
  %6800 = add i64 %6799, -184
  %6801 = add i64 %6798, 33
  store i64 %6801, i64* %3, align 8
  %6802 = inttoptr i64 %6800 to i64*
  %6803 = load i64, i64* %6802, align 8
  store i64 %6803, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6804 = add i64 %6798, 35668
  %6805 = add i64 %6798, 38
  %6806 = load i64, i64* %6, align 8
  %6807 = add i64 %6806, -8
  %6808 = inttoptr i64 %6807 to i64*
  store i64 %6805, i64* %6808, align 8
  store i64 %6807, i64* %6, align 8
  store i64 %6804, i64* %3, align 8
  %call2_402e4d = tail call %struct.Memory* @sub_40b980._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6804, %struct.Memory* %call2_402e27)
  %6809 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278876, i64* %RDX.i4024, align 8
  %6810 = load i64, i64* %RBP.i, align 8
  %6811 = add i64 %6810, -184
  %6812 = add i64 %6809, 33
  store i64 %6812, i64* %3, align 8
  %6813 = inttoptr i64 %6811 to i64*
  %6814 = load i64, i64* %6813, align 8
  store i64 %6814, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6815 = add i64 %6810, -192
  %6816 = add i64 %6809, 41
  store i64 %6816, i64* %3, align 8
  %6817 = inttoptr i64 %6815 to i64*
  %6818 = load i64, i64* %6817, align 8
  store i64 %6818, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6819 = add i64 %6810, -200
  %6820 = add i64 %6809, 49
  store i64 %6820, i64* %3, align 8
  %6821 = inttoptr i64 %6819 to i64*
  %6822 = load i64, i64* %6821, align 8
  store i64 %6822, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6823 = add i64 %6810, -208
  %6824 = add i64 %6809, 57
  store i64 %6824, i64* %3, align 8
  %6825 = inttoptr i64 %6823 to i64*
  %6826 = load i64, i64* %6825, align 8
  store i64 %6826, i64* %6757, align 1
  store double 0.000000e+00, double* %6758, align 1
  %6827 = add i64 %6809, 35806
  %6828 = add i64 %6809, 62
  %6829 = load i64, i64* %6, align 8
  %6830 = add i64 %6829, -8
  %6831 = inttoptr i64 %6830 to i64*
  store i64 %6828, i64* %6831, align 8
  store i64 %6830, i64* %6, align 8
  store i64 %6827, i64* %3, align 8
  %call2_402e8b = tail call %struct.Memory* @sub_40ba30._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6827, %struct.Memory* %call2_402e4d)
  %6832 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278912, i64* %RDX.i4024, align 8
  %6833 = load i64, i64* %RBP.i, align 8
  %6834 = add i64 %6833, -184
  %6835 = add i64 %6832, 33
  store i64 %6835, i64* %3, align 8
  %6836 = inttoptr i64 %6834 to i64*
  %6837 = load i64, i64* %6836, align 8
  store i64 %6837, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6838 = add i64 %6833, -192
  %6839 = add i64 %6832, 41
  store i64 %6839, i64* %3, align 8
  %6840 = inttoptr i64 %6838 to i64*
  %6841 = load i64, i64* %6840, align 8
  store i64 %6841, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6842 = add i64 %6833, -200
  %6843 = add i64 %6832, 49
  store i64 %6843, i64* %3, align 8
  %6844 = inttoptr i64 %6842 to i64*
  %6845 = load i64, i64* %6844, align 8
  store i64 %6845, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6846 = add i64 %6833, -208
  %6847 = add i64 %6832, 57
  store i64 %6847, i64* %3, align 8
  %6848 = inttoptr i64 %6846 to i64*
  %6849 = load i64, i64* %6848, align 8
  store i64 %6849, i64* %6757, align 1
  store double 0.000000e+00, double* %6758, align 1
  %6850 = add i64 %6832, 35968
  %6851 = add i64 %6832, 62
  %6852 = load i64, i64* %6, align 8
  %6853 = add i64 %6852, -8
  %6854 = inttoptr i64 %6853 to i64*
  store i64 %6851, i64* %6854, align 8
  store i64 %6853, i64* %6, align 8
  store i64 %6850, i64* %3, align 8
  %call2_402ec9 = tail call %struct.Memory* @sub_40bb10._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6850, %struct.Memory* %call2_402e8b)
  %6855 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278949, i64* %RDX.i4024, align 8
  %6856 = load i64, i64* %RBP.i, align 8
  %6857 = add i64 %6856, -184
  %6858 = add i64 %6855, 33
  store i64 %6858, i64* %3, align 8
  %6859 = inttoptr i64 %6857 to i64*
  %6860 = load i64, i64* %6859, align 8
  store i64 %6860, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6861 = add i64 %6855, 36130
  %6862 = add i64 %6855, 38
  %6863 = load i64, i64* %6, align 8
  %6864 = add i64 %6863, -8
  %6865 = inttoptr i64 %6864 to i64*
  store i64 %6862, i64* %6865, align 8
  store i64 %6864, i64* %6, align 8
  store i64 %6861, i64* %3, align 8
  %call2_402eef = tail call %struct.Memory* @sub_40bbf0._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* nonnull %0, i64 %6861, %struct.Memory* %call2_402ec9)
  %6866 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4278972, i64* %RDX.i4024, align 8
  %6867 = load i64, i64* %RBP.i, align 8
  %6868 = add i64 %6867, -184
  %6869 = add i64 %6866, 33
  store i64 %6869, i64* %3, align 8
  %6870 = inttoptr i64 %6868 to i64*
  %6871 = load i64, i64* %6870, align 8
  store i64 %6871, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6872 = add i64 %6867, -192
  %6873 = add i64 %6866, 41
  store i64 %6873, i64* %3, align 8
  %6874 = inttoptr i64 %6872 to i64*
  %6875 = load i64, i64* %6874, align 8
  store i64 %6875, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6876 = add i64 %6867, -200
  %6877 = add i64 %6866, 49
  store i64 %6877, i64* %3, align 8
  %6878 = inttoptr i64 %6876 to i64*
  %6879 = load i64, i64* %6878, align 8
  store i64 %6879, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6880 = add i64 %6867, -208
  %6881 = add i64 %6866, 57
  store i64 %6881, i64* %3, align 8
  %6882 = inttoptr i64 %6880 to i64*
  %6883 = load i64, i64* %6882, align 8
  store i64 %6883, i64* %6757, align 1
  store double 0.000000e+00, double* %6758, align 1
  %6884 = add i64 %6866, 36268
  %6885 = add i64 %6866, 62
  %6886 = load i64, i64* %6, align 8
  %6887 = add i64 %6886, -8
  %6888 = inttoptr i64 %6887 to i64*
  store i64 %6885, i64* %6888, align 8
  store i64 %6887, i64* %6, align 8
  store i64 %6884, i64* %3, align 8
  %call2_402f2d = tail call %struct.Memory* @sub_40bca0._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6884, %struct.Memory* %call2_402eef)
  %6889 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4279005, i64* %RDX.i4024, align 8
  %6890 = load i64, i64* %RBP.i, align 8
  %6891 = add i64 %6890, -184
  %6892 = add i64 %6889, 33
  store i64 %6892, i64* %3, align 8
  %6893 = inttoptr i64 %6891 to i64*
  %6894 = load i64, i64* %6893, align 8
  store i64 %6894, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6895 = add i64 %6890, -192
  %6896 = add i64 %6889, 41
  store i64 %6896, i64* %3, align 8
  %6897 = inttoptr i64 %6895 to i64*
  %6898 = load i64, i64* %6897, align 8
  store i64 %6898, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6899 = add i64 %6890, -200
  %6900 = add i64 %6889, 49
  store i64 %6900, i64* %3, align 8
  %6901 = inttoptr i64 %6899 to i64*
  %6902 = load i64, i64* %6901, align 8
  store i64 %6902, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6903 = add i64 %6890, -208
  %6904 = add i64 %6889, 57
  store i64 %6904, i64* %3, align 8
  %6905 = inttoptr i64 %6903 to i64*
  %6906 = load i64, i64* %6905, align 8
  store i64 %6906, i64* %6757, align 1
  store double 0.000000e+00, double* %6758, align 1
  %6907 = add i64 %6889, 36430
  %6908 = add i64 %6889, 62
  %6909 = load i64, i64* %6, align 8
  %6910 = add i64 %6909, -8
  %6911 = inttoptr i64 %6910 to i64*
  store i64 %6908, i64* %6911, align 8
  store i64 %6910, i64* %6, align 8
  store i64 %6907, i64* %3, align 8
  %call2_402f6b = tail call %struct.Memory* @sub_40bd80._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6907, %struct.Memory* %call2_402f2d)
  %6912 = load i64, i64* %3, align 8
  store i64 6398144, i64* %RDI.i4032.pre-phi, align 8
  store i64 8000, i64* %RSI.i3037, align 8
  store i64 4279039, i64* %RDX.i4024, align 8
  %6913 = load i64, i64* %RBP.i, align 8
  %6914 = add i64 %6913, -184
  %6915 = add i64 %6912, 33
  store i64 %6915, i64* %3, align 8
  %6916 = inttoptr i64 %6914 to i64*
  %6917 = load i64, i64* %6916, align 8
  store i64 %6917, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %6918 = add i64 %6913, -192
  %6919 = add i64 %6912, 41
  store i64 %6919, i64* %3, align 8
  %6920 = inttoptr i64 %6918 to i64*
  %6921 = load i64, i64* %6920, align 8
  store i64 %6921, i64* %5635, align 1
  store double 0.000000e+00, double* %5637, align 1
  %6922 = add i64 %6913, -200
  %6923 = add i64 %6912, 49
  store i64 %6923, i64* %3, align 8
  %6924 = inttoptr i64 %6922 to i64*
  %6925 = load i64, i64* %6924, align 8
  store i64 %6925, i64* %5747, align 1
  store double 0.000000e+00, double* %5748, align 1
  %6926 = add i64 %6913, -208
  %6927 = add i64 %6912, 57
  store i64 %6927, i64* %3, align 8
  %6928 = inttoptr i64 %6926 to i64*
  %6929 = load i64, i64* %6928, align 8
  store i64 %6929, i64* %6757, align 1
  store double 0.000000e+00, double* %6758, align 1
  %6930 = add i64 %6912, 36592
  %6931 = add i64 %6912, 62
  %6932 = load i64, i64* %6, align 8
  %6933 = add i64 %6932, -8
  %6934 = inttoptr i64 %6933 to i64*
  store i64 %6931, i64* %6934, align 8
  store i64 %6933, i64* %6, align 8
  store i64 %6930, i64* %3, align 8
  %call2_402fa9 = tail call %struct.Memory* @sub_40be60._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nonnull %0, i64 %6930, %struct.Memory* %call2_402f6b)
  %6935 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i4026, align 8
  %6936 = load i64, i64* %6, align 8
  %6937 = add i64 %6936, 368
  store i64 %6937, i64* %6, align 8
  %6938 = icmp ugt i64 %6936, -369
  %6939 = zext i1 %6938 to i8
  store i8 %6939, i8* %26, align 1
  %6940 = trunc i64 %6937 to i32
  %6941 = and i32 %6940, 255
  %6942 = tail call i32 @llvm.ctpop.i32(i32 %6941)
  %6943 = trunc i32 %6942 to i8
  %6944 = and i8 %6943, 1
  %6945 = xor i8 %6944, 1
  store i8 %6945, i8* %33, align 1
  %6946 = xor i64 %6936, 16
  %6947 = xor i64 %6946, %6937
  %6948 = lshr i64 %6947, 4
  %6949 = trunc i64 %6948 to i8
  %6950 = and i8 %6949, 1
  store i8 %6950, i8* %39, align 1
  %6951 = icmp eq i64 %6937, 0
  %6952 = zext i1 %6951 to i8
  store i8 %6952, i8* %42, align 1
  %6953 = lshr i64 %6937, 63
  %6954 = trunc i64 %6953 to i8
  store i8 %6954, i8* %45, align 1
  %6955 = lshr i64 %6936, 63
  %6956 = xor i64 %6953, %6955
  %6957 = add nuw nsw i64 %6956, %6953
  %6958 = icmp eq i64 %6957, 2
  %6959 = zext i1 %6958 to i8
  store i8 %6959, i8* %51, align 1
  %6960 = add i64 %6935, 10
  store i64 %6960, i64* %3, align 8
  %6961 = add i64 %6936, 376
  %6962 = inttoptr i64 %6937 to i64*
  %6963 = load i64, i64* %6962, align 8
  store i64 %6963, i64* %RBX.i879, align 8
  store i64 %6961, i64* %6, align 8
  %6964 = add i64 %6935, 12
  store i64 %6964, i64* %3, align 8
  %6965 = add i64 %6936, 384
  %6966 = inttoptr i64 %6961 to i64*
  %6967 = load i64, i64* %6966, align 8
  store i64 %6967, i64* %R14.i831, align 8
  store i64 %6965, i64* %6, align 8
  %6968 = add i64 %6935, 13
  store i64 %6968, i64* %3, align 8
  %6969 = add i64 %6936, 392
  %6970 = inttoptr i64 %6965 to i64*
  %6971 = load i64, i64* %6970, align 8
  store i64 %6971, i64* %RBP.i, align 8
  store i64 %6969, i64* %6, align 8
  %6972 = add i64 %6935, 14
  store i64 %6972, i64* %3, align 8
  %6973 = inttoptr i64 %6969 to i64*
  %6974 = load i64, i64* %6973, align 8
  store i64 %6974, i64* %3, align 8
  %6975 = add i64 %6936, 400
  store i64 %6975, i64* %6, align 8
  ret %struct.Memory* %call2_402fa9
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x170___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 368
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
define %struct.Memory* @routine_movsd_0x12f9a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 77730
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jle_.L_400ef7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__0x61a080(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* inttoptr (i64 6398080 to i32*), align 128
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsd__xmm0__0x61a088(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* inttoptr (i64 6398088 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jle_.L_400f33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6317c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6494144, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x414646___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4277830, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_0x219134__rip____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2199868
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x66a200___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6726144, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__r9b___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %R9B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x66c140___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6734144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x41DFFFFFFFC00000
  %12 = fptosi double %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x29__rbp____r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addb__r9b___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R9B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = shl i8 %4, 1
  store i8 %7, i8* %R9B, align 1
  %8 = icmp ult i8 %7, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = zext i8 %7 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %4, 3
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i8 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i8 %4, 6
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %4, 7
  %27 = xor i8 %24, %26
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__MINUS0x2a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x29__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -41
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__MINUS0x2b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x2a__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x2b__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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

define %struct.Memory* @routine_idivl__r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R11D, align 4
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
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
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
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x29__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -41
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41400b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276235, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1f40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8000, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414020___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276256, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x2c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x2b__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x2a__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41403d____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276285, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41405c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276316, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414076____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276342, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41409a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276378, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4140b4____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276404, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4140d9____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276441, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4140ff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276479, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414117____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276503, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414139____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276537, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41415c____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276572, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41417c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276604, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414191____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276625, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4141af___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276655, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4141c3____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276675, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4141e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276704, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4141f5____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276725, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
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
define %struct.Memory* @routine_cvttsd2si_0x218de7__rip____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2199023
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6682c0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6718144, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__bl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %BL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x66a200___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6726144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movb__bl__MINUS0x2d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2d__rbp____bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addb__bl___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %BL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = shl i8 %4, 1
  store i8 %7, i8* %BL, align 1
  %8 = icmp ult i8 %7, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = zext i8 %7 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %4, 3
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i8 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i8 %4, 6
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %4, 7
  %27 = xor i8 %24, %26
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__bl__MINUS0x2e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -46
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x2d__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -45
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__bl__MINUS0x2f__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -47
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x2e__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -46
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x2f__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -47
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = udiv i64 %17, %5
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400488
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = urem i64 %17, %5
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x104__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__bl__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x2d__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -45
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41400a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276234, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41401f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276255, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x30__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x2f__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -47
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41403c____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276284, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41405b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276315, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414075____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276341, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414099___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276377, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4140b3____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276403, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4140d8____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276440, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4140fe___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276478, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414116____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276502, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414138____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276536, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41415b____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276571, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41417b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276603, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414190____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276624, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4141ae___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276654, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4141c2____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276674, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4141df___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276703, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4141f4____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276724, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
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
define %struct.Memory* @routine_cvttsd2si_0x218ab2__rip____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2198202
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x664440___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6702144, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___r14w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R14W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r14w___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R14W, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6682c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6718144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movw__r14w__MINUS0x32__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -50
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x32__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -50
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = trunc i64 %3 to i32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = shl i32 %4, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %7, %4
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 254
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 3
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %4, 30
  %26 = and i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r14w__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r14w__MINUS0x36__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -54
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x36__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -54
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x120__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
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
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx___r14w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R14W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r14w__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x32__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -50
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414213___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276755, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x118__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414229___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276777, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x38__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x36__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -54
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414247____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276807, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414267___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276839, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414282____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276866, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4142a7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276903, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4142c2____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276930, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4142e8____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276968, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41430f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277007, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414328____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277032, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41434b____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277067, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41436f____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277103, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414390___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277136, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4143a6____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277158, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4143c5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277189, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4143da____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277210, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4143f8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277240, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41440e____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277262, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
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
define %struct.Memory* @routine_cvttsd2si_0x218773__rip____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2197371
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
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6605c0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6686144, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl__r14w___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R14W, align 2
  %5 = zext i16 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x664440___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6702144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movw__r14w__MINUS0x3a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -58
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3a__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -58
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r14w__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r14w__MINUS0x3e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -62
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3e__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -62
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x130__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = udiv i64 %17, %5
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400488
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = urem i64 %17, %5
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r14w__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3a__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -58
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414212___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276754, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414228___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276776, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x40__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x3e__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -62
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414246____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276806, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414266___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276838, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414281____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276865, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4142a6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4276902, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4142c1____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276929, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4142e7____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276967, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41430e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277006, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414327____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277031, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41434a____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277066, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41436e____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277102, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41438f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277135, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4143a5____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277157, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4143c4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277188, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4143d9____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277209, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4143f7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277239, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41440d____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277261, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21842b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2196531
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
define %struct.Memory* @routine_movl__0x6588c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6654144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6605c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6686144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x140__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__0x41442d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277293, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x138__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414443___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277315, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movq__0x414461____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277345, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414481___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277377, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41449c____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277404, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4144c1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277441, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4144dc____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277468, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414502____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277506, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414529___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277545, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414542____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277570, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414565____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277605, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414589____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277641, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4145aa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277674, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4145c0____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277696, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4145df___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277727, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4145f4____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277748, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414612___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277778, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414628____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277800, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
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
define %struct.Memory* @routine_cvttsd2si_0x21813c__rip____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2195781
  %5 = add i64 %3, 9
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to double*
  %7 = load double, double* %6, align 8
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x650bc0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6622144, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6588c0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6654144, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x43E0000000000000
  %12 = fptosi double %9 to i64
  %13 = select i1 %11, i64 -9223372036854775808, i64 %12
  store i64 %13, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x150__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
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
define %struct.Memory* @routine_movl_MINUS0x14c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x41442c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277292, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x148__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414442___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277314, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_movq__0x414460____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277344, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414480___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277376, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41449b____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277403, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4144c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277440, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4144db____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277467, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414501____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277505, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414528___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277544, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414541____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277569, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414564____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277604, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414588____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277640, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4145a9___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277673, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4145bf____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277695, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4145de___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277726, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4145f3____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277747, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414611___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277777, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414627____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277799, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x217e42__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2195018
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
define %struct.Memory* @routine_movl__0x6411c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6558144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x650bc0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6622144, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x43E0000000000000
  %12 = fptosi double %9 to i64
  %13 = select i1 %11, i64 -9223372036854775808, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ult i64 %6, %3
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 254
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = lshr i64 %3, 3
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %3, 62
  %25 = and i64 %24, 1
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -3
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
define %struct.Memory* @routine_movq__rdx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x160__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
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
define %struct.Memory* @routine_movl__0x414647___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277831, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x158__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41465d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277853, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41467b____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277883, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41469b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277915, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4146b6____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277942, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4146db___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4277979, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4146f6____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278006, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41471c____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278044, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x414743___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4278083, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41475c____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278108, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41477f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278143, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4147a3____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278179, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4147c4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4278212, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4147da____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278234, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4147f9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4278265, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41480e____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278286, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41482c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4278316, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414842____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278338, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x217b36__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2194238
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
define %struct.Memory* @routine_movsd_0x11916__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 71966
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
define %struct.Memory* @routine_cmovaq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x6317c0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6494144, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x6411c0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6558144, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x170__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_cvttsd2si__xmm1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3
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
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r11d___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divq_MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = zext i64 %10 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %8 to i128
  %16 = or i128 %14, %15
  %17 = zext i64 %12 to i128
  %18 = udiv i128 %16, %17
  %19 = and i128 %18, 18446744073709551615
  %20 = icmp eq i128 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400488
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = urem i128 %16, %17
  %25 = trunc i128 %24 to i64
  %26 = trunc i128 %18 to i64
  store i64 %26, i64* %7, align 8
  store i64 %25, i64* %9, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x178__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41465c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4277852, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41467a___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4277882, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41469a___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4277914, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4146b5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4277941, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4146da___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4277978, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4146f5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278005, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41471b___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278043, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414742___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278082, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41475b___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278107, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41477e___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278142, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4147a2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278178, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4147c3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278211, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4147d9___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278233, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4147f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278264, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41480d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278285, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41482b___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278315, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414841___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278337, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x629ac0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6462144, i64* %RAX, align 8
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
define %struct.Memory* @routine_addq__0x7d00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32000
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_cvtsd2ss_0x61a088___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %12 = load double, double* inttoptr (i64 6398088 to double*), align 8
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
define %struct.Memory* @routine_movq__0x629ac0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6462144, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414860___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278368, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x11491__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 70809
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to double*
  %15 = load double, double* %14, align 8
  %16 = fptrunc double %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0xa4__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0xa4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0xac__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414873___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278387, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41488e___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278414, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xb0__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -176
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4148ab___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278443, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4148c3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278467, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4148e5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278501, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4148fd___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278525, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414920___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278560, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414944___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278596, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41495a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278618, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41497a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278650, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x41499b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278683, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x61a0c0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6398144, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x61a088___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6398088 to i64*), align 8
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
define %struct.Memory* @routine_movq__0x61a0c0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 6398144, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4149b9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278713, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x11165__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 69997
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0xb8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0xb8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_MINUS0xc8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4149cd___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278733, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4149e9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278761, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414a07___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278791, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414a20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278816, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414a43___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278851, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414a5c___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278876, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414a80___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278912, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414aa5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278949, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414abc___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4278972, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414add___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4279005, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x414aff___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4279039, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
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
define %struct.Memory* @routine_addq__0x170___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -369
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
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
