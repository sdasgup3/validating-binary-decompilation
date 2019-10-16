; ModuleID = 'bigfib/bigfib.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.BigInt = type { %"class.std::vector.0" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl" = type { i64*, i64*, i64* }
%class.Fibonacci = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl" }
%"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl" = type { %class.BigInt*, %class.BigInt*, %class.BigInt* }
%"class.__gnu_cxx::__normal_iterator.10" = type { %class.BigInt* }
%"class.__gnu_cxx::__normal_iterator.8" = type { i64* }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.std::_Setw" = type { i32 }

$_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv = comdat any

$_ZN6BigIntC2Em = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EE9push_backERKS0_ = comdat any

$_ZN6BigIntD2Ev = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE5emptyEv = comdat any

$_ZN6BigIntC2ES_S_ = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EEixEm = comdat any

$_ZN6BigIntC2ERKS_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorImSaImEEC2ERKS1_ = comdat any

$_ZNKSt6vectorImSaImEE4sizeEv = comdat any

$_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt12_Vector_baseImSaImEEC2EmRKS0_ = comdat any

$_ZNKSt6vectorImSaImEE5beginEv = comdat any

$_ZNKSt6vectorImSaImEE3endEv = comdat any

$_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseImSaImEED2Ev = comdat any

$_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm = comdat any

$_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev = comdat any

$_ZNSaImED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImED2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE10deallocateERS1_Pmm = comdat any

$_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEET_S8_ = comdat any

$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET1_T0_SA_S9_ = comdat any

$_ZSt12__niter_baseIPKmSt6vectorImSaImEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPmET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseImSaImEE11_M_allocateEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_ = comdat any

$_ZNSt6vectorImSaImEEC2Ev = comdat any

$_ZNSt6vectorImSaImEE6resizeEmm = comdat any

$_ZNSt6vectorImSaImEE5beginEv = comdat any

$_ZNSt6vectorImSaImEE3endEv = comdat any

$_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_ = comdat any

$_ZNSt6vectorImSaImEE9push_backERKm = comdat any

$_ZNSt6vectorImSaImEED2Ev = comdat any

$_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPmEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE9constructImEEvRS1_PmRKT_ = comdat any

$_ZNSt6vectorImSaImEE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EERKm = comdat any

$_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE7destroyERS1_Pm = comdat any

$_ZN9__gnu_cxx13new_allocatorImE7destroyEPm = comdat any

$_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPmS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPmS2_EET0_T_S4_S3_ = comdat any

$_ZSt4copyIPmS0_ET0_T_S2_S1_ = comdat any

$_ZSt12__miter_baseIPmET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZNKSt6vectorImSaImEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaImEE8max_sizeERKS1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorImE9constructEPmRKm = comdat any

$_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv = comdat any

$_ZN6BigIntclEmm = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_ = comdat any

$_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm = comdat any

$_ZNSt6vectorImSaImEE15_M_erase_at_endEPm = comdat any

$_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_ = comdat any

$_ZSt13copy_backwardIPmS0_ET0_T_S2_S1_ = comdat any

$_ZSt4fillIPmmEvT_S1_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPmmmEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPmmmET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPmmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt8__fill_aIPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bImEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt12_Vector_baseImSaImEEC2Ev = comdat any

$_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev = comdat any

$_ZNSaImEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorImEC2Ev = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE5beginEv = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE3endEv = comdat any

$_ZN9__gnu_cxxeqIPK6BigIntSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS3_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE9constructIS1_EEvRS2_PS1_RKT_ = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EE3endEv = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_ = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EE5beginEv = comdat any

$_ZN9__gnu_cxxmiIP6BigIntSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP6BigIntS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE7destroyERS2_PS1_ = comdat any

$_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE10deallocateERS2_PS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6BigIntE10deallocateEPS1_m = comdat any

$_ZSt8_DestroyIP6BigIntEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP6BigIntEEvT_S4_ = comdat any

$_ZSt11__addressofI6BigIntEPT_RS1_ = comdat any

$_ZSt8_DestroyI6BigIntEvPT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI6BigIntE7destroyEPS1_ = comdat any

$_ZSt22__uninitialized_copy_aIP6BigIntS1_S0_ET0_T_S3_S2_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIP6BigIntS1_ET0_T_S3_S2_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP6BigIntS3_EET0_T_S5_S4_ = comdat any

$_ZSt10_ConstructI6BigIntS0_EvPT_RKT0_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE8allocateERS2_m = comdat any

$_ZN9__gnu_cxx13new_allocatorI6BigIntE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorI6BigIntE8max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE8max_sizeERKS2_ = comdat any

$_ZN9__gnu_cxx13new_allocatorI6BigIntE9constructEPS1_RKS1_ = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE8capacityEv = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EE20_M_allocate_and_copyIPS0_EES4_mT_S5_ = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EEixEm = comdat any

$_ZlsRSoRK6BigInt = comdat any

$_ZNKSt6vectorImSaImEEixEm = comdat any

$_ZSt4setwi = comdat any

$_ZSt7setfillIcESt8_SetfillIT_ES1_ = comdat any

$_ZNKSt6vectorI6BigIntSaIS0_EE4backEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZSt4leftRSt8ios_base = comdat any

$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_ = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN9FibonacciC2Ej = comdat any

$_ZN9FibonacciD2Ev = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSaI6BigIntED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI6BigIntED2Ev = comdat any

$_ZNSt6vectorI6BigIntSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI6BigIntEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorI6BigIntEC2Ev = comdat any

@_ZN6BigInt6head_sE = global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_bigfib.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"Fib [\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"bigfib\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"USAGE : \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c" <N>              ---> Fibonacci [0 - N]\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"th\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c" <N>              ---> Fibonacci [N]\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"some\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c" <N1> [<N2> ...]  ---> Fibonacci [N1], Fibonacci [N2], ...\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c" <K>  [<M>]       ---> K random Fibonacci numbers ( < M; Default = \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" )\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_bigfib.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline uwtable
define void @_ZN9Fibonacci10get_numberEj(%class.BigInt* noalias sret %agg.result, %class.Fibonacci* %this, i32 %n_i) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Fibonacci*, align 8
  %n_i.addr = alloca i32, align 4
  %cur_size = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp = alloca %class.BigInt, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp10 = alloca %class.BigInt, align 8
  %ref.tmp15 = alloca %class.BigInt, align 8
  %ref.tmp20 = alloca %class.BigInt, align 8
  %agg.tmp = alloca %class.BigInt, align 8
  %agg.tmp21 = alloca %class.BigInt, align 8
  store %class.Fibonacci* %this, %class.Fibonacci** %this.addr, align 8
  store i32 %n_i, i32* %n_i.addr, align 4
  %this1 = load %class.Fibonacci*, %class.Fibonacci** %this.addr, align 8
  %fibs_ = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %0 = load i32, i32* %n_i.addr, align 4
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  call void @_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm(%"class.std::vector"* %fibs_, i64 %conv)
  %fibs_2 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %call = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %fibs_2)
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %cur_size, align 4
  %1 = load i32, i32* %cur_size, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_i.addr, align 4
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.body
  %fibs_4 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  call void @_ZN6BigIntC2Em(%class.BigInt* %ref.tmp, i64 0)
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE9push_backERKS0_(%"class.std::vector"* %fibs_4, %class.BigInt* dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %sw.bb
  call void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp)
  br label %sw.epilog

lpad:                                             ; preds = %sw.bb
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %lpad
  br label %eh.resume

sw.bb6:                                           ; preds = %for.body
  %fibs_7 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %call8 = call zeroext i1 @_ZNKSt6vectorI6BigIntSaIS0_EE5emptyEv(%"class.std::vector"* %fibs_7)
  br i1 %call8, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb6
  %fibs_9 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  call void @_ZN6BigIntC2Em(%class.BigInt* %ref.tmp10, i64 0)
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE9push_backERKS0_(%"class.std::vector"* %fibs_9, %class.BigInt* dereferenceable(24) %ref.tmp10)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %if.then
  call void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp10)
  br label %if.end

lpad11:                                           ; preds = %if.then
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp10)
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %lpad11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont12, %sw.bb6
  %fibs_14 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  call void @_ZN6BigIntC2Em(%class.BigInt* %ref.tmp15, i64 1)
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE9push_backERKS0_(%"class.std::vector"* %fibs_14, %class.BigInt* dereferenceable(24) %ref.tmp15)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %if.end
  call void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp15)
  br label %sw.epilog

lpad16:                                           ; preds = %if.end
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp15)
          to label %invoke.cont18 unwind label %terminate.lpad

invoke.cont18:                                    ; preds = %lpad16
  br label %eh.resume

sw.default:                                       ; preds = %for.body
  %fibs_19 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %sub = sub i32 %14, 2
  call void @_ZN9Fibonacci10get_numberEj(%class.BigInt* sret %agg.tmp, %class.Fibonacci* %this1, i32 %sub)
  %15 = load i32, i32* %i, align 4
  %sub22 = sub i32 %15, 1
  invoke void @_ZN9Fibonacci10get_numberEj(%class.BigInt* sret %agg.tmp21, %class.Fibonacci* %this1, i32 %sub22)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %sw.default
  invoke void @_ZN6BigIntC2ES_S_(%class.BigInt* %ref.tmp20, %class.BigInt* %agg.tmp, %class.BigInt* %agg.tmp21)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE9push_backERKS0_(%"class.std::vector"* %fibs_19, %class.BigInt* dereferenceable(24) %ref.tmp20)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont26
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp20)
          to label %invoke.cont29 unwind label %lpad25

invoke.cont29:                                    ; preds = %invoke.cont28
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp21)
          to label %invoke.cont31 unwind label %lpad23

invoke.cont31:                                    ; preds = %invoke.cont29
  call void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp)
  br label %sw.epilog

lpad23:                                           ; preds = %invoke.cont29, %sw.default
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  br label %ehcleanup33

lpad25:                                           ; preds = %invoke.cont28, %invoke.cont24
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad27:                                           ; preds = %invoke.cont26
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %ref.tmp20)
          to label %invoke.cont30 unwind label %terminate.lpad

invoke.cont30:                                    ; preds = %lpad27
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont30, %lpad25
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp21)
          to label %invoke.cont32 unwind label %terminate.lpad

invoke.cont32:                                    ; preds = %ehcleanup
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %invoke.cont32, %lpad23
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp)
          to label %invoke.cont34 unwind label %terminate.lpad

invoke.cont34:                                    ; preds = %ehcleanup33
  br label %eh.resume

sw.epilog:                                        ; preds = %invoke.cont31, %invoke.cont17, %invoke.cont
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %fibs_35 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %26 = load i32, i32* %n_i.addr, align 4
  %conv36 = zext i32 %26 to i64
  %call37 = call dereferenceable(24) %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EEixEm(%"class.std::vector"* %fibs_35, i64 %conv36)
  call void @_ZN6BigIntC2ERKS_(%class.BigInt* %agg.result, %class.BigInt* dereferenceable(24) %call37)
  ret void

eh.resume:                                        ; preds = %invoke.cont34, %invoke.cont18, %invoke.cont13, %invoke.cont5
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val38 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val38

terminate.lpad:                                   ; preds = %ehcleanup33, %ehcleanup, %lpad27, %lpad16, %lpad11, %lpad
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  call void @__clang_call_terminate(i8* %28) #9
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm(%"class.std::vector"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__old_size = alloca i64, align 8
  %__tmp = alloca %class.BigInt*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)) #13
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8capacityEv(%"class.std::vector"* %this1)
  %1 = load i64, i64* %__n.addr, align 8
  %cmp3 = icmp ult i64 %call2, %1
  br i1 %cmp3, label %if.then4, label %if.end27

if.then4:                                         ; preds = %if.end
  %call5 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call5, i64* %__old_size, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %4 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %6 = load %class.BigInt*, %class.BigInt** %_M_finish, align 8
  %call7 = call %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EE20_M_allocate_and_copyIPS0_EES4_mT_S5_(%"class.std::vector"* %this1, i64 %2, %class.BigInt* %4, %class.BigInt* %6)
  store %class.BigInt* %call7, %class.BigInt** %__tmp, align 8
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %_M_start9 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl8, i32 0, i32 0
  %8 = load %class.BigInt*, %class.BigInt** %_M_start9, align 8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish11 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl10, i32 0, i32 1
  %10 = load %class.BigInt*, %class.BigInt** %_M_finish11, align 8
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call12 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %11)
  call void @_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E(%class.BigInt* %8, %class.BigInt* %10, %"class.std::ios_base::Init"* dereferenceable(1) %call12)
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %13 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %_M_start14 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl13, i32 0, i32 0
  %14 = load %class.BigInt*, %class.BigInt** %_M_start14, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl15, i32 0, i32 2
  %16 = load %class.BigInt*, %class.BigInt** %_M_end_of_storage, align 8
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %_M_start17 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl16, i32 0, i32 0
  %18 = load %class.BigInt*, %class.BigInt** %_M_start17, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BigInt* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BigInt* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %12, %class.BigInt* %14, i64 %sub.ptr.div)
  %19 = load %class.BigInt*, %class.BigInt** %__tmp, align 8
  %20 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %20, i32 0, i32 0
  %_M_start19 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl18, i32 0, i32 0
  store %class.BigInt* %19, %class.BigInt** %_M_start19, align 8
  %21 = load %class.BigInt*, %class.BigInt** %__tmp, align 8
  %22 = load i64, i64* %__old_size, align 8
  %add.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %21, i64 %22
  %23 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %_M_finish21 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl20, i32 0, i32 1
  store %class.BigInt* %add.ptr, %class.BigInt** %_M_finish21, align 8
  %24 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl22 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %_M_start23 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl22, i32 0, i32 0
  %25 = load %class.BigInt*, %class.BigInt** %_M_start23, align 8
  %26 = load i64, i64* %__n.addr, align 8
  %add.ptr24 = getelementptr inbounds %class.BigInt, %class.BigInt* %25, i64 %26
  %27 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl25 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %27, i32 0, i32 0
  %_M_end_of_storage26 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl25, i32 0, i32 2
  store %class.BigInt* %add.ptr24, %class.BigInt** %_M_end_of_storage26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.BigInt*, %class.BigInt** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BigInt* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BigInt* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6BigIntC2Em(%class.BigInt* %this, i64 %unit_i) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.BigInt*, align 8
  %unit_i.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.BigInt* %this, %class.BigInt** %this.addr, align 8
  store i64 %unit_i, i64* %unit_i.addr, align 8
  %this1 = load %class.BigInt*, %class.BigInt** %this.addr, align 8
  %units_ = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  call void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector.0"* %units_)
  %units_2 = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  invoke void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector.0"* %units_2, i64* dereferenceable(8) %unit_i.addr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.0"* %units_)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont3
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %lpad
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6BigIntSaIS0_EE9push_backERKS0_(%"class.std::vector"* %this, %class.BigInt* dereferenceable(24) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %class.BigInt*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %class.BigInt* %__x, %class.BigInt** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.BigInt*, %class.BigInt** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %class.BigInt*, %class.BigInt** %_M_end_of_storage, align 8
  %cmp = icmp ne %class.BigInt* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl3 to %"class.std::ios_base::Init"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %class.BigInt*, %class.BigInt** %_M_finish5, align 8
  %8 = load %class.BigInt*, %class.BigInt** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::ios_base::Init"* dereferenceable(1) %5, %class.BigInt* %7, %class.BigInt* dereferenceable(24) %8)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %class.BigInt*, %class.BigInt** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %10, i32 1
  store %class.BigInt* %incdec.ptr, %class.BigInt** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %agg.tmp, i32 0, i32 0
  store %class.BigInt* %call, %class.BigInt** %coerce.dive, align 8
  %11 = load %class.BigInt*, %class.BigInt** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %agg.tmp, i32 0, i32 0
  %12 = load %class.BigInt*, %class.BigInt** %coerce.dive8, align 8
  call void @_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this1, %class.BigInt* %12, %class.BigInt* dereferenceable(24) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6BigIntD2Ev(%class.BigInt* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %this, %class.BigInt** %this.addr, align 8
  %this1 = load %class.BigInt*, %class.BigInt** %this.addr, align 8
  %units_ = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.0"* %units_)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorI6BigIntSaIS0_EE5emptyEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %ref.tmp, i32 0, i32 0
  store %class.BigInt* %call, %class.BigInt** %coerce.dive, align 8
  %call3 = call %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %ref.tmp2, i32 0, i32 0
  store %class.BigInt* %call3, %class.BigInt** %coerce.dive4, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPK6BigIntSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %ref.tmp2)
  ret i1 %call5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6BigIntC2ES_S_(%class.BigInt* %this, %class.BigInt* %big1_i, %class.BigInt* %big2_i) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.BigInt*, align 8
  %max_size = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp21 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp26 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp31 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp36 = alloca %class.BigInt, align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  store %class.BigInt* %this, %class.BigInt** %this.addr, align 8
  %this1 = load %class.BigInt*, %class.BigInt** %this.addr, align 8
  %units_ = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  call void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector.0"* %units_)
  %units_2 = getelementptr inbounds %class.BigInt, %class.BigInt* %big1_i, i32 0, i32 0
  %call = invoke i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %units_2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %units_3 = getelementptr inbounds %class.BigInt, %class.BigInt* %big2_i, i32 0, i32 0
  %call5 = invoke i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %units_3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  %cmp = icmp ugt i64 %call, %call5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont4
  %units_6 = getelementptr inbounds %class.BigInt, %class.BigInt* %big1_i, i32 0, i32 0
  %call8 = invoke i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %units_6)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont4
  %units_9 = getelementptr inbounds %class.BigInt, %class.BigInt* %big2_i, i32 0, i32 0
  %call11 = invoke i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %units_9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %invoke.cont10, %invoke.cont7
  %cond = phi i64 [ %call8, %invoke.cont7 ], [ %call11, %invoke.cont10 ]
  store i64 %cond, i64* %max_size, align 8
  %units_12 = getelementptr inbounds %class.BigInt, %class.BigInt* %big1_i, i32 0, i32 0
  %0 = load i64, i64* %max_size, align 8
  invoke void @_ZNSt6vectorImSaImEE6resizeEmm(%"class.std::vector.0"* %units_12, i64 %0, i64 0)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %cond.end
  %units_14 = getelementptr inbounds %class.BigInt, %class.BigInt* %big2_i, i32 0, i32 0
  %1 = load i64, i64* %max_size, align 8
  invoke void @_ZNSt6vectorImSaImEE6resizeEmm(%"class.std::vector.0"* %units_14, i64 %1, i64 0)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  %units_16 = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  %2 = load i64, i64* %max_size, align 8
  invoke void @_ZNSt6vectorImSaImEE6resizeEmm(%"class.std::vector.0"* %units_16, i64 %2, i64 0)
          to label %invoke.cont17 unwind label %lpad

invoke.cont17:                                    ; preds = %invoke.cont15
  store i64 0, i64* @_ZN6BigInt6head_sE, align 8
  %units_18 = getelementptr inbounds %class.BigInt, %class.BigInt* %big1_i, i32 0, i32 0
  %call20 = invoke i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %units_18)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %invoke.cont17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  store i64* %call20, i64** %coerce.dive, align 8
  %units_22 = getelementptr inbounds %class.BigInt, %class.BigInt* %big1_i, i32 0, i32 0
  %call24 = invoke i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %units_22)
          to label %invoke.cont23 unwind label %lpad

invoke.cont23:                                    ; preds = %invoke.cont19
  %coerce.dive25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp21, i32 0, i32 0
  store i64* %call24, i64** %coerce.dive25, align 8
  %units_27 = getelementptr inbounds %class.BigInt, %class.BigInt* %big2_i, i32 0, i32 0
  %call29 = invoke i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %units_27)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %invoke.cont23
  %coerce.dive30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp26, i32 0, i32 0
  store i64* %call29, i64** %coerce.dive30, align 8
  %units_32 = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  %call34 = invoke i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %units_32)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont28
  %coerce.dive35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp31, i32 0, i32 0
  store i64* %call34, i64** %coerce.dive35, align 8
  invoke void @_ZN6BigIntC2ERKS_(%class.BigInt* %agg.tmp36, %class.BigInt* dereferenceable(24) %this1)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont33
  %coerce.dive38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %3 = load i64*, i64** %coerce.dive38, align 8
  %coerce.dive39 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp21, i32 0, i32 0
  %4 = load i64*, i64** %coerce.dive39, align 8
  %coerce.dive40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp26, i32 0, i32 0
  %5 = load i64*, i64** %coerce.dive40, align 8
  %coerce.dive41 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp31, i32 0, i32 0
  %6 = load i64*, i64** %coerce.dive41, align 8
  %call44 = invoke i64* @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_(i64* %3, i64* %4, i64* %5, i64* %6, %class.BigInt* %agg.tmp36)
          to label %invoke.cont43 unwind label %lpad42

invoke.cont43:                                    ; preds = %invoke.cont37
  %coerce.dive45 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %coerce, i32 0, i32 0
  store i64* %call44, i64** %coerce.dive45, align 8
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp36)
          to label %invoke.cont46 unwind label %lpad

invoke.cont46:                                    ; preds = %invoke.cont43
  %7 = load i64, i64* @_ZN6BigInt6head_sE, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont46
  %units_48 = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  invoke void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector.0"* %units_48, i64* dereferenceable(8) @_ZN6BigInt6head_sE)
          to label %invoke.cont49 unwind label %lpad

invoke.cont49:                                    ; preds = %if.then
  br label %if.end

lpad:                                             ; preds = %if.then, %invoke.cont43, %invoke.cont33, %invoke.cont28, %invoke.cont23, %invoke.cont19, %invoke.cont17, %invoke.cont15, %invoke.cont13, %cond.end, %cond.false, %cond.true, %invoke.cont, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad42:                                           ; preds = %invoke.cont37
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp36)
          to label %invoke.cont47 unwind label %terminate.lpad

invoke.cont47:                                    ; preds = %lpad42
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont49, %invoke.cont46
  ret void

ehcleanup:                                        ; preds = %invoke.cont47, %lpad
  invoke void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.0"* %units_)
          to label %invoke.cont50 unwind label %terminate.lpad

invoke.cont50:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont50
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val51 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val51

terminate.lpad:                                   ; preds = %ehcleanup, %lpad42
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  call void @__clang_call_terminate(i8* %15) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EEixEm(%"class.std::vector"* %this, i64 %__n) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %1, i64 %2
  ret %class.BigInt* %add.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6BigIntC2ERKS_(%class.BigInt* %this, %class.BigInt* dereferenceable(24)) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.BigInt*, align 8
  %.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %this, %class.BigInt** %this.addr, align 8
  store %class.BigInt* %0, %class.BigInt** %.addr, align 8
  %this1 = load %class.BigInt*, %class.BigInt** %this.addr, align 8
  %units_ = getelementptr inbounds %class.BigInt, %class.BigInt* %this1, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %.addr, align 8
  %units_2 = getelementptr inbounds %class.BigInt, %class.BigInt* %1, i32 0, i32 0
  call void @_ZNSt6vectorImSaImEEC2ERKS1_(%"class.std::vector.0"* %units_, %"class.std::vector.0"* dereferenceable(24) %units_2)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #4 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #9
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEEC2ERKS1_(%"class.std::vector.0"* %this, %"class.std::vector.0"* dereferenceable(24) %__x) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__x.addr = alloca %"class.std::vector.0"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %__x.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %__x.addr, align 8
  %call = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %1)
  %2 = load %"class.std::vector.0"*, %"class.std::vector.0"** %__x.addr, align 8
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %call2 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %3)
  %call3 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZN9__gnu_cxx14__alloc_traitsISaImEE17_S_select_on_copyERKS1_(%"class.std::ios_base::Init"* dereferenceable(1) %call2)
  call void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(%"struct.std::_Vector_base.1"* %0, i64 %call, %"class.std::ios_base::Init"* dereferenceable(1) %call3)
  %4 = load %"class.std::vector.0"*, %"class.std::vector.0"** %__x.addr, align 8
  %call4 = invoke i64* @_ZNKSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  store i64* %call4, i64** %coerce.dive, align 8
  %5 = load %"class.std::vector.0"*, %"class.std::vector.0"** %__x.addr, align 8
  %call7 = invoke i64* @_ZNKSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp5, i32 0, i32 0
  store i64* %call7, i64** %coerce.dive8, align 8
  %6 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %7 = load i64*, i64** %_M_start, align 8
  %8 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call10 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %8)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont6
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %9 = load i64*, i64** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp5, i32 0, i32 0
  %10 = load i64*, i64** %coerce.dive12, align 8
  %call14 = invoke i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E(i64* %9, i64* %10, i64* %7, %"class.std::ios_base::Init"* dereferenceable(1) %call10)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont9
  %11 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %11, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  store i64* %call14, i64** %_M_finish, align 8
  ret void

lpad:                                             ; preds = %invoke.cont9, %invoke.cont6, %invoke.cont, %entry
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  %15 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base.1"* %15)
          to label %invoke.cont16 unwind label %terminate.lpad

invoke.cont16:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont16
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val17 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val17

terminate.lpad:                                   ; preds = %lpad
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i64*, i64** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i64*, i64** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZN9__gnu_cxx14__alloc_traitsISaImEE17_S_select_on_copyERKS1_(%"class.std::ios_base::Init"* dereferenceable(1) %__a) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(%"struct.std::_Vector_base.1"* %this, i64 %__n, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, %"class.std::ios_base::Init"* dereferenceable(1) %0)
  %1 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %this1, i64 %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNKSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %ref.tmp = alloca i64*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i64*, i64** %_M_start, align 8
  store i64* %1, i64** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.8"* %retval, i64** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %retval, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive, align 8
  ret i64* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNKSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %ref.tmp = alloca i64*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i64*, i64** %_M_finish, align 8
  store i64* %1, i64** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.8"* %retval, i64** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %retval, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive, align 8
  ret i64* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E(i64* %__first.coerce, i64* %__last.coerce, i64* %__result, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__result.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp to i8*
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load i64*, i64** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %6 = load i64*, i64** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2, i32 0, i32 0
  %7 = load i64*, i64** %coerce.dive4, align 8
  %call = call i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %6, i64* %7, i64* %5)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i64*, i64** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i64*, i64** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i64*, i64** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.1"* %this1, i64* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl5) #2
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.1"* %this, i64* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8
  %tobool = icmp ne i64* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaImEE10deallocateERS1_Pmm(%"class.std::ios_base::Init"* dereferenceable(1) %1, i64* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaImED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaImED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaImEE10deallocateERS1_Pmm(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.std::ios_base::Init"* %1, i64* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.std::ios_base::Init"* %this, i64* %__p, i64) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64*, i64** %__p.addr, align 8
  %2 = bitcast i64* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__result.addr = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load i64*, i64** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %5 = load i64*, i64** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2, i32 0, i32 0
  %6 = load i64*, i64** %coerce.dive4, align 8
  %call = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmEET0_T_SC_SB_(i64* %5, i64* %6, i64* %4)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmEET0_T_SC_SB_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__result.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2 to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = load i64*, i64** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %5 = load i64*, i64** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2, i32 0, i32 0
  %6 = load i64*, i64** %coerce.dive4, align 8
  %call = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %5, i64* %6, i64* %4)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__result.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp5 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp6 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2 to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp2, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive3, align 8
  %call = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEET_S8_(i64* %2)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  store i64* %call, i64** %coerce.dive4, align 8
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp6 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp6, i32 0, i32 0
  %5 = load i64*, i64** %coerce.dive7, align 8
  %call8 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEET_S8_(i64* %5)
  %coerce.dive9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp5, i32 0, i32 0
  store i64* %call8, i64** %coerce.dive9, align 8
  %6 = load i64*, i64** %__result.addr, align 8
  %coerce.dive10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %7 = load i64*, i64** %coerce.dive10, align 8
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp5, i32 0, i32 0
  %8 = load i64*, i64** %coerce.dive11, align 8
  %call12 = call i64* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET1_T0_SA_S9_(i64* %7, i64* %8, i64* %6)
  ret i64* %call12
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEET_S8_(i64* %__it.coerce) #3 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %retval to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %retval, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive1, align 8
  ret i64* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET1_T0_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #0 comdat {
entry:
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__result.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %agg.tmp3 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %coerce.dive1, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp to i8*
  %1 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive2, align 8
  %call = call i64* @_ZSt12__niter_baseIPKmSt6vectorImSaImEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %2)
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp3 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp3, i32 0, i32 0
  %5 = load i64*, i64** %coerce.dive4, align 8
  %call5 = call i64* @_ZSt12__niter_baseIPKmSt6vectorImSaImEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %5)
  %6 = load i64*, i64** %__result.addr, align 8
  %call6 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %6)
  %call7 = call i64* @_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_(i64* %call, i64* %call5, i64* %call6)
  ret i64* %call7
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIPKmSt6vectorImSaImEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64* %__it.coerce) #0 comdat {
entry:
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %coerce.dive, align 8
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__it)
  %0 = load i64*, i64** %call, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIPmET_S1_(i64* %__it) #3 comdat {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  %0 = load i64*, i64** %__it.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #3 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #3 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__last.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8
  %4 = bitcast i64* %3 to i8*
  %5 = load i64*, i64** %__first.addr, align 8
  %6 = bitcast i64* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64*, i64** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds i64, i64* %8, i64 %9
  ret i64* %add.ptr
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %this, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %this1, i32 0, i32 0
  ret i64** %_M_current
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.8"* %this, i64** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %this, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  store i64** %__i, i64*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %this1, i32 0, i32 0
  %0 = load i64**, i64*** %__i.addr, align 8
  %1 = load i64*, i64** %0, align 8
  store i64* %1, i64** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  call void @_ZNSaImEC2ERKS_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %1) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1, i32 0, i32 0
  store i64* null, i64** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1, i32 0, i32 1
  store i64* null, i64** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this1, i64 %0)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  store i64* %call, i64** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %1 = load i64*, i64** %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  store i64* %1, i64** %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %2 = load i64*, i64** %_M_start6, align 8
  %3 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl7, i32 0, i32 2
  store i64* %add.ptr, i64** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx14__alloc_traitsISaImEE8allocateERS1_m(%"class.std::ios_base::Init"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %call, %cond.true ], [ null, %cond.false ]
  ret i64* %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx14__alloc_traitsISaImEE8allocateERS1_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %2, i8* null)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.std::ios_base::Init"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to i64*
  ret i64* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.std::ios_base::Init"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaImEC2ERKS_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1) %__a) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  %1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %2 = bitcast %"class.std::ios_base::Init"* %1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"* dereferenceable(1) %2) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseImSaImEEC2Ev(%"struct.std::_Vector_base.1"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE6resizeEmm(%"class.std::vector.0"* %this, i64 %__new_size, i64 %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__new_size.addr = alloca i64, align 8
  %__x.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__new_size, i64* %__new_size.addr, align 8
  store i64 %__x, i64* %__x.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64, i64* %__new_size.addr, align 8
  %call = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  store i64* %call2, i64** %coerce.dive, align 8
  %1 = load i64, i64* %__new_size.addr, align 8
  %call3 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  %sub = sub i64 %1, %call3
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %2 = load i64*, i64** %coerce.dive4, align 8
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(%"class.std::vector.0"* %this1, i64* %2, i64 %sub, i64* dereferenceable(8) %__x.addr)
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %__new_size.addr, align 8
  %call5 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  %cmp6 = icmp ult i64 %3, %call5
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %5 = load i64*, i64** %_M_start, align 8
  %6 = load i64, i64* %__new_size.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %5, i64 %6
  call void @_ZNSt6vectorImSaImEE15_M_erase_at_endEPm(%"class.std::vector.0"* %this1, i64* %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.8"* %retval, i64** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %retval, i32 0, i32 0
  %1 = load i64*, i64** %coerce.dive, align 8
  ret i64* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.8"* %retval, i64** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %retval, i32 0, i32 0
  %1 = load i64*, i64** %coerce.dive, align 8
  ret i64* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_S6_6BigIntET1_T_S9_T0_S8_T2_(i64* %__first1.coerce, i64* %__last1.coerce, i64* %__first2.coerce, i64* %__result.coerce, %class.BigInt* %__binary_op) #0 comdat {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__first1 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__last1 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__first2 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first1, i32 0, i32 0
  store i64* %__first1.coerce, i64** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__last1, i32 0, i32 0
  store i64* %__last1.coerce, i64** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__first2, i32 0, i32 0
  store i64* %__first2.coerce, i64** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__result, i32 0, i32 0
  store i64* %__result.coerce, i64** %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__first1, %"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__last1)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator.8"* %__first1)
  %0 = load i64, i64* %call4, align 8
  %call5 = call dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator.8"* %__first2)
  %1 = load i64, i64* %call5, align 8
  %call6 = call i64 @_ZN6BigIntclEmm(%class.BigInt* %__binary_op, i64 %0, i64 %1)
  %call7 = call dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator.8"* %__result)
  store i64 %call6, i64* %call7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call8 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator.8"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator.8"* %__first1)
  %call9 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator.8"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator.8"* %__first2)
  %call10 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator.8"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator.8"* %__result)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %2 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %retval to i8*
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.8"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %retval, i32 0, i32 0
  %4 = load i64*, i64** %coerce.dive11, align 8
  ret i64* %4
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE9push_backERKm(%"class.std::vector.0"* %this, i64* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__x.addr = alloca i64*, align 8
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i64*, i64** %_M_finish, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load i64*, i64** %_M_end_of_storage, align 8
  %cmp = icmp ne i64* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl3 to %"class.std::ios_base::Init"*
  %6 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load i64*, i64** %_M_finish5, align 8
  %8 = load i64*, i64** %__x.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaImEE9constructImEEvRS1_PmRKT_(%"class.std::ios_base::Init"* dereferenceable(1) %5, i64* %7, i64* dereferenceable(8) %8)
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load i64*, i64** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %10, i32 1
  store i64* %incdec.ptr, i64** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  store i64* %call, i64** %coerce.dive, align 8
  %11 = load i64*, i64** %__x.addr, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %agg.tmp, i32 0, i32 0
  %12 = load i64*, i64** %coerce.dive8, align 8
  call void @_ZNSt6vectorImSaImEE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EERKm(%"class.std::vector.0"* %this1, i64* %12, i64* dereferenceable(8) %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.0"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i64*, i64** %_M_start, align 8
  %2 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i64*, i64** %_M_finish, align 8
  %4 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %1, i64* %3, %"class.std::ios_base::Init"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base.1"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base.1"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64*, i64** %__last.addr, align 8
  call void @_ZSt8_DestroyIPmEvT_S1_(i64* %1, i64* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPmEvT_S1_(i64* %__first, i64* %__last) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64* %0, i64* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64*, i64*) #3 comdat align 2 {
entry:
  %.addr = alloca i64*, align 8
  %.addr1 = alloca i64*, align 8
  store i64* %0, i64** %.addr, align 8
  store i64* %1, i64** %.addr1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaImEE9constructImEEvRS1_PmRKT_(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64* %__p, i64* dereferenceable(8) %__arg) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  %__arg.addr = alloca i64*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64* %__arg, i64** %__arg.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64*, i64** %__p.addr, align 8
  %3 = load i64*, i64** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE9constructEPmRKm(%"class.std::ios_base::Init"* %1, i64* %2, i64* dereferenceable(8) %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EERKm(%"class.std::vector.0"* %this, i64* %__position.coerce, i64* dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__x.addr = alloca i64*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__new_start = alloca i64*, align 8
  %__new_finish = alloca i64*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__position, i32 0, i32 0
  store i64* %__position.coerce, i64** %coerce.dive, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  store i64 %call, i64* %__len, align 8
  %call2 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %this1)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %ref.tmp, i32 0, i32 0
  store i64* %call2, i64** %coerce.dive3, align 8
  %call4 = call i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %ref.tmp)
  store i64 %call4, i64* %__elems_before, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %1 = load i64, i64* %__len, align 8
  %call5 = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %0, i64 %1)
  store i64* %call5, i64** %__new_start, align 8
  %2 = load i64*, i64** %__new_start, align 8
  store i64* %2, i64** %__new_finish, align 8
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %5 = load i64*, i64** %__new_start, align 8
  %6 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds i64, i64* %5, i64 %6
  %7 = load i64*, i64** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaImEE9constructImEEvRS1_PmRKT_(%"class.std::ios_base::Init"* dereferenceable(1) %4, i64* %add.ptr, i64* dereferenceable(8) %7)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i64* null, i64** %__new_finish, align 8
  %8 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl6, i32 0, i32 0
  %9 = load i64*, i64** %_M_start, align 8
  %call8 = invoke dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %10 = load i64*, i64** %call8, align 8
  %11 = load i64*, i64** %__new_start, align 8
  %12 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call10 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %12)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke i64* @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %9, i64* %10, i64* %11, %"class.std::ios_base::Init"* dereferenceable(1) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  store i64* %call12, i64** %__new_finish, align 8
  %13 = load i64*, i64** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %incdec.ptr, i64** %__new_finish, align 8
  %call14 = invoke dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  %14 = load i64*, i64** %call14, align 8
  %15 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  %16 = load i64*, i64** %_M_finish, align 8
  %17 = load i64*, i64** %__new_finish, align 8
  %18 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call17 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %18)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont13
  %call19 = invoke i64* @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %14, i64* %16, i64* %17, %"class.std::ios_base::Init"* dereferenceable(1) %call17)
          to label %invoke.cont18 unwind label %lpad

invoke.cont18:                                    ; preds = %invoke.cont16
  store i64* %call19, i64** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont16, %invoke.cont13, %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont, %entry
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %22 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %23 = load i64*, i64** %__new_finish, align 8
  %tobool = icmp ne i64* %23, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %24 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %24, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl20 to %"class.std::ios_base::Init"*
  %26 = load i64*, i64** %__new_start, align 8
  %27 = load i64, i64* %__elems_before, align 8
  %add.ptr21 = getelementptr inbounds i64, i64* %26, i64 %27
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaImEE7destroyERS1_Pm(%"class.std::ios_base::Init"* dereferenceable(1) %25, i64* %add.ptr21)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %if.then
  br label %if.end

lpad22:                                           ; preds = %invoke.cont27, %if.end, %invoke.cont24, %if.else, %if.then
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont28 unwind label %terminate.lpad

if.else:                                          ; preds = %catch
  %31 = load i64*, i64** %__new_start, align 8
  %32 = load i64*, i64** %__new_finish, align 8
  %33 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call25 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %33)
          to label %invoke.cont24 unwind label %lpad22

invoke.cont24:                                    ; preds = %if.else
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %31, i64* %32, %"class.std::ios_base::Init"* dereferenceable(1) %call25)
          to label %invoke.cont26 unwind label %lpad22

invoke.cont26:                                    ; preds = %invoke.cont24
  br label %if.end

if.end:                                           ; preds = %invoke.cont26, %invoke.cont23
  %34 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %35 = load i64*, i64** %__new_start, align 8
  %36 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.1"* %34, i64* %35, i64 %36)
          to label %invoke.cont27 unwind label %lpad22

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad22

invoke.cont28:                                    ; preds = %lpad22
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont18
  %37 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %37, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %38 = load i64*, i64** %_M_start30, align 8
  %39 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %39, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %40 = load i64*, i64** %_M_finish32, align 8
  %41 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call33 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %41)
  call void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %38, i64* %40, %"class.std::ios_base::Init"* dereferenceable(1) %call33)
  %42 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %43 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %43, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %44 = load i64*, i64** %_M_start35, align 8
  %45 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %45, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %46 = load i64*, i64** %_M_end_of_storage, align 8
  %47 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %47, i32 0, i32 0
  %_M_start38 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl37, i32 0, i32 0
  %48 = load i64*, i64** %_M_start38, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.1"* %42, i64* %44, i64 %sub.ptr.div)
  %49 = load i64*, i64** %__new_start, align 8
  %50 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl39 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %50, i32 0, i32 0
  %_M_start40 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl39, i32 0, i32 0
  store i64* %49, i64** %_M_start40, align 8
  %51 = load i64*, i64** %__new_finish, align 8
  %52 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl41 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %52, i32 0, i32 0
  %_M_finish42 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl41, i32 0, i32 1
  store i64* %51, i64** %_M_finish42, align 8
  %53 = load i64*, i64** %__new_start, align 8
  %54 = load i64, i64* %__len, align 8
  %add.ptr43 = getelementptr inbounds i64, i64* %53, i64 %54
  %55 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %55, i32 0, i32 0
  %_M_end_of_storage45 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl44, i32 0, i32 2
  store i64* %add.ptr43, i64** %_M_end_of_storage45, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont28
  %exn46 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn46, 0
  %lpad.val47 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val47

terminate.lpad:                                   ; preds = %lpad22
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #9
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector.0"* %this1)
  %call2 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #13
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  %call4 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector.0"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector.0"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %__lhs, %"class.__gnu_cxx::__normal_iterator.8"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %__rhs, %"class.__gnu_cxx::__normal_iterator.8"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %__lhs.addr, align 8
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %0)
  %1 = load i64*, i64** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %2)
  %3 = load i64*, i64** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %this, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %this1, i32 0, i32 0
  ret i64** %_M_current
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %__first, i64* %__last, i64* %__result, %"class.std::ios_base::Init"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %call = call i64* @_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E(i64* %0, i64* %1, i64* %2, %"class.std::ios_base::Init"* dereferenceable(1) %3)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaImEE7destroyERS1_Pm(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64* %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64*, i64** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE7destroyEPm(%"class.std::ios_base::Init"* %1, i64* %2)
  ret void
}

declare void @__cxa_end_catch()

declare void @__cxa_rethrow()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImE7destroyEPm(%"class.std::ios_base::Init"* %this, i64* %__p) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E(i64* %__first, i64* %__last, i64* %__result, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64*, i64** %__last.addr, align 8
  %3 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZSt18uninitialized_copyIPmS0_ET0_T_S2_S1_(i64* %1, i64* %2, i64* %3)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt18uninitialized_copyIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPmS2_EET0_T_S4_S3_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPmS2_EET0_T_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #0 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__result.addr, align 8
  %call2 = call i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %call, i64* %call1, i64* %2)
  ret i64* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt12__miter_baseIPmET_S1_(i64* %__it) #3 comdat {
entry:
  %__it.addr = alloca i64*, align 8
  store i64* %__it, i64** %__it.addr, align 8
  %0 = load i64*, i64** %__it.addr, align 8
  ret i64* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__result.addr, align 8
  %call2 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %2)
  %call3 = call i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %call, i64* %call1, i64* %call2)
  ret i64* %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorImSaImEE8max_sizeEv(%"class.std::vector.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaImEE8max_sizeERKS1_(%"class.std::ios_base::Init"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #3 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__b.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaImEE8max_sizeERKS1_(%"class.std::ios_base::Init"* dereferenceable(1) %__a) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.std::ios_base::Init"* %1) #2
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImE9constructEPmRKm(%"class.std::ios_base::Init"* %this, i64* %__p, i64* dereferenceable(8) %__val) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca i64*, align 8
  %__val.addr = alloca i64*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64* %__p, i64** %__p.addr, align 8
  store i64* %__val, i64** %__val.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load i64*, i64** %__p.addr, align 8
  %1 = bitcast i64* %0 to i8*
  %2 = bitcast i8* %1 to i64*
  %3 = load i64*, i64** %__val.addr, align 8
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIPmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__rhs) #3 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %__lhs, %"class.__gnu_cxx::__normal_iterator.8"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %__rhs, %"class.__gnu_cxx::__normal_iterator.8"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %__lhs.addr, align 8
  %call = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %0)
  %1 = load i64*, i64** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %2)
  %3 = load i64*, i64** %call1, align 8
  %cmp = icmp ne i64* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEdeEv(%"class.__gnu_cxx::__normal_iterator.8"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %this, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %_M_current, align 8
  ret i64* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN6BigIntclEmm(%class.BigInt* %this, i64 %n1, i64 %n2) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.BigInt*, align 8
  %n1.addr = alloca i64, align 8
  %n2.addr = alloca i64, align 8
  %value = alloca i64, align 8
  store %class.BigInt* %this, %class.BigInt** %this.addr, align 8
  store i64 %n1, i64* %n1.addr, align 8
  store i64 %n2, i64* %n2.addr, align 8
  %this1 = load %class.BigInt*, %class.BigInt** %this.addr, align 8
  %0 = load i64, i64* %n1.addr, align 8
  %1 = load i64, i64* %n2.addr, align 8
  %add = add i64 %0, %1
  %2 = load i64, i64* @_ZN6BigInt6head_sE, align 8
  %add2 = add i64 %add, %2
  store i64 %add2, i64* %value, align 8
  %3 = load i64, i64* %value, align 8
  %div = udiv i64 %3, 1000000000
  store i64 %div, i64* @_ZN6BigInt6head_sE, align 8
  %4 = load i64, i64* %value, align 8
  %rem = urem i64 %4, 1000000000
  ret i64 %rem
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.__gnu_cxx::__normal_iterator.8"* @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEppEv(%"class.__gnu_cxx::__normal_iterator.8"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %this, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %this1, i32 0, i32 0
  %0 = load i64*, i64** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 1
  store i64* %incdec.ptr, i64** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator.8"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator.8"* %this, i64** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.8"*, align 8
  %__i.addr = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator.8"* %this, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  store i64** %__i, i64*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.8"*, %"class.__gnu_cxx::__normal_iterator.8"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %this1, i32 0, i32 0
  %0 = load i64**, i64*** %__i.addr, align 8
  %1 = load i64*, i64** %0, align 8
  store i64* %1, i64** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(%"class.std::vector.0"* %this, i64* %__position.coerce, i64 %__n, i64* dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i64*, align 8
  %__x_copy = alloca i64, align 8
  %__elems_after = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__old_finish = alloca i64*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp46 = alloca %"class.__gnu_cxx::__normal_iterator.8", align 8
  %__new_start = alloca i64*, align 8
  %__new_finish = alloca i64*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %__position, i32 0, i32 0
  store i64* %__position.coerce, i64** %coerce.dive, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end109

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 2
  %2 = load i64*, i64** %_M_end_of_storage, align 8
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %4 = load i64*, i64** %_M_finish, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %5 = load i64, i64* %__n.addr, align 8
  %cmp3 = icmp uge i64 %sub.ptr.div, %5
  br i1 %cmp3, label %if.then4, label %if.else44

if.then4:                                         ; preds = %if.then
  %6 = load i64*, i64** %__x.addr, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %__x_copy, align 8
  %call = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.0"* %this1)
  %coerce.dive5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %ref.tmp, i32 0, i32 0
  store i64* %call, i64** %coerce.dive5, align 8
  %call6 = call i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %ref.tmp, %"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__position)
  store i64 %call6, i64* %__elems_after, align 8
  %8 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %_M_finish8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl7, i32 0, i32 1
  %9 = load i64*, i64** %_M_finish8, align 8
  store i64* %9, i64** %__old_finish, align 8
  %10 = load i64, i64* %__elems_after, align 8
  %11 = load i64, i64* %__n.addr, align 8
  %cmp9 = icmp ugt i64 %10, %11
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then4
  %12 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl11 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %12, i32 0, i32 0
  %_M_finish12 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl11, i32 0, i32 1
  %13 = load i64*, i64** %_M_finish12, align 8
  %14 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %14
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %idx.neg
  %15 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %15, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %16 = load i64*, i64** %_M_finish14, align 8
  %17 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %17, i32 0, i32 0
  %_M_finish16 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  %18 = load i64*, i64** %_M_finish16, align 8
  %19 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call17 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %19)
  %call18 = call i64* @_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %add.ptr, i64* %16, i64* %18, %"class.std::ios_base::Init"* dereferenceable(1) %call17)
  %20 = load i64, i64* %__n.addr, align 8
  %21 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl19 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %21, i32 0, i32 0
  %_M_finish20 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl19, i32 0, i32 1
  %22 = load i64*, i64** %_M_finish20, align 8
  %add.ptr21 = getelementptr inbounds i64, i64* %22, i64 %20
  store i64* %add.ptr21, i64** %_M_finish20, align 8
  %call22 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
  %23 = load i64*, i64** %call22, align 8
  %24 = load i64*, i64** %__old_finish, align 8
  %25 = load i64, i64* %__n.addr, align 8
  %idx.neg23 = sub i64 0, %25
  %add.ptr24 = getelementptr inbounds i64, i64* %24, i64 %idx.neg23
  %26 = load i64*, i64** %__old_finish, align 8
  %call25 = call i64* @_ZSt13copy_backwardIPmS0_ET0_T_S2_S1_(i64* %23, i64* %add.ptr24, i64* %26)
  %call26 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
  %27 = load i64*, i64** %call26, align 8
  %call27 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
  %28 = load i64*, i64** %call27, align 8
  %29 = load i64, i64* %__n.addr, align 8
  %add.ptr28 = getelementptr inbounds i64, i64* %28, i64 %29
  call void @_ZSt4fillIPmmEvT_S1_RKT0_(i64* %27, i64* %add.ptr28, i64* dereferenceable(8) %__x_copy)
  br label %if.end

if.else:                                          ; preds = %if.then4
  %30 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %30, i32 0, i32 0
  %_M_finish30 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl29, i32 0, i32 1
  %31 = load i64*, i64** %_M_finish30, align 8
  %32 = load i64, i64* %__n.addr, align 8
  %33 = load i64, i64* %__elems_after, align 8
  %sub = sub i64 %32, %33
  %34 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call31 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %34)
  %call32 = call i64* @_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E(i64* %31, i64 %sub, i64* dereferenceable(8) %__x_copy, %"class.std::ios_base::Init"* dereferenceable(1) %call31)
  %35 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl33 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %35, i32 0, i32 0
  %_M_finish34 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl33, i32 0, i32 1
  store i64* %call32, i64** %_M_finish34, align 8
  %call35 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
  %36 = load i64*, i64** %call35, align 8
  %37 = load i64*, i64** %__old_finish, align 8
  %38 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %38, i32 0, i32 0
  %_M_finish37 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl36, i32 0, i32 1
  %39 = load i64*, i64** %_M_finish37, align 8
  %40 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call38 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %40)
  %call39 = call i64* @_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %36, i64* %37, i64* %39, %"class.std::ios_base::Init"* dereferenceable(1) %call38)
  %41 = load i64, i64* %__elems_after, align 8
  %42 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %42, i32 0, i32 0
  %_M_finish41 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl40, i32 0, i32 1
  %43 = load i64*, i64** %_M_finish41, align 8
  %add.ptr42 = getelementptr inbounds i64, i64* %43, i64 %41
  store i64* %add.ptr42, i64** %_M_finish41, align 8
  %call43 = call dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
  %44 = load i64*, i64** %call43, align 8
  %45 = load i64*, i64** %__old_finish, align 8
  call void @_ZSt4fillIPmmEvT_S1_RKT0_(i64* %44, i64* %45, i64* dereferenceable(8) %__x_copy)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end108

if.else44:                                        ; preds = %if.then
  %46 = load i64, i64* %__n.addr, align 8
  %call45 = call i64 @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this1, i64 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store i64 %call45, i64* %__len, align 8
  %call47 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.0"* %this1)
  %coerce.dive48 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.8", %"class.__gnu_cxx::__normal_iterator.8"* %ref.tmp46, i32 0, i32 0
  store i64* %call47, i64** %coerce.dive48, align 8
  %call49 = call i64 @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.8"* dereferenceable(8) %ref.tmp46)
  store i64 %call49, i64* %__elems_before, align 8
  %47 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %48 = load i64, i64* %__len, align 8
  %call50 = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %47, i64 %48)
  store i64* %call50, i64** %__new_start, align 8
  %49 = load i64*, i64** %__new_start, align 8
  store i64* %49, i64** %__new_finish, align 8
  %50 = load i64*, i64** %__new_start, align 8
  %51 = load i64, i64* %__elems_before, align 8
  %add.ptr51 = getelementptr inbounds i64, i64* %50, i64 %51
  %52 = load i64, i64* %__n.addr, align 8
  %53 = load i64*, i64** %__x.addr, align 8
  %54 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call52 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %54)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else44
  %call54 = invoke i64* @_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E(i64* %add.ptr51, i64 %52, i64* dereferenceable(8) %53, %"class.std::ios_base::Init"* dereferenceable(1) %call52)
          to label %invoke.cont53 unwind label %lpad

invoke.cont53:                                    ; preds = %invoke.cont
  store i64* null, i64** %__new_finish, align 8
  %55 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl55 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %55, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl55, i32 0, i32 0
  %56 = load i64*, i64** %_M_start, align 8
  %call57 = invoke dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
          to label %invoke.cont56 unwind label %lpad

invoke.cont56:                                    ; preds = %invoke.cont53
  %57 = load i64*, i64** %call57, align 8
  %58 = load i64*, i64** %__new_start, align 8
  %59 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call59 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %59)
          to label %invoke.cont58 unwind label %lpad

invoke.cont58:                                    ; preds = %invoke.cont56
  %call61 = invoke i64* @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %56, i64* %57, i64* %58, %"class.std::ios_base::Init"* dereferenceable(1) %call59)
          to label %invoke.cont60 unwind label %lpad

invoke.cont60:                                    ; preds = %invoke.cont58
  store i64* %call61, i64** %__new_finish, align 8
  %60 = load i64, i64* %__n.addr, align 8
  %61 = load i64*, i64** %__new_finish, align 8
  %add.ptr62 = getelementptr inbounds i64, i64* %61, i64 %60
  store i64* %add.ptr62, i64** %__new_finish, align 8
  %call64 = invoke dereferenceable(8) i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.8"* %__position)
          to label %invoke.cont63 unwind label %lpad

invoke.cont63:                                    ; preds = %invoke.cont60
  %62 = load i64*, i64** %call64, align 8
  %63 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl65 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %63, i32 0, i32 0
  %_M_finish66 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl65, i32 0, i32 1
  %64 = load i64*, i64** %_M_finish66, align 8
  %65 = load i64*, i64** %__new_finish, align 8
  %66 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call68 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %66)
          to label %invoke.cont67 unwind label %lpad

invoke.cont67:                                    ; preds = %invoke.cont63
  %call70 = invoke i64* @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %62, i64* %64, i64* %65, %"class.std::ios_base::Init"* dereferenceable(1) %call68)
          to label %invoke.cont69 unwind label %lpad

invoke.cont69:                                    ; preds = %invoke.cont67
  store i64* %call70, i64** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont67, %invoke.cont63, %invoke.cont60, %invoke.cont58, %invoke.cont56, %invoke.cont53, %invoke.cont, %if.else44
  %67 = landingpad { i8*, i32 }
          catch i8* null
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %exn.slot, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %70 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %71 = load i64*, i64** %__new_finish, align 8
  %tobool = icmp ne i64* %71, null
  br i1 %tobool, label %if.else79, label %if.then71

if.then71:                                        ; preds = %catch
  %72 = load i64*, i64** %__new_start, align 8
  %73 = load i64, i64* %__elems_before, align 8
  %add.ptr72 = getelementptr inbounds i64, i64* %72, i64 %73
  %74 = load i64*, i64** %__new_start, align 8
  %75 = load i64, i64* %__elems_before, align 8
  %add.ptr73 = getelementptr inbounds i64, i64* %74, i64 %75
  %76 = load i64, i64* %__n.addr, align 8
  %add.ptr74 = getelementptr inbounds i64, i64* %add.ptr73, i64 %76
  %77 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call77 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %77)
          to label %invoke.cont76 unwind label %lpad75

invoke.cont76:                                    ; preds = %if.then71
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %add.ptr72, i64* %add.ptr74, %"class.std::ios_base::Init"* dereferenceable(1) %call77)
          to label %invoke.cont78 unwind label %lpad75

invoke.cont78:                                    ; preds = %invoke.cont76
  br label %if.end83

lpad75:                                           ; preds = %invoke.cont84, %if.end83, %invoke.cont80, %if.else79, %invoke.cont76, %if.then71
  %78 = landingpad { i8*, i32 }
          cleanup
  %79 = extractvalue { i8*, i32 } %78, 0
  store i8* %79, i8** %exn.slot, align 8
  %80 = extractvalue { i8*, i32 } %78, 1
  store i32 %80, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont85 unwind label %terminate.lpad

if.else79:                                        ; preds = %catch
  %81 = load i64*, i64** %__new_start, align 8
  %82 = load i64*, i64** %__new_finish, align 8
  %83 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call81 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %83)
          to label %invoke.cont80 unwind label %lpad75

invoke.cont80:                                    ; preds = %if.else79
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %81, i64* %82, %"class.std::ios_base::Init"* dereferenceable(1) %call81)
          to label %invoke.cont82 unwind label %lpad75

invoke.cont82:                                    ; preds = %invoke.cont80
  br label %if.end83

if.end83:                                         ; preds = %invoke.cont82, %invoke.cont78
  %84 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %85 = load i64*, i64** %__new_start, align 8
  %86 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.1"* %84, i64* %85, i64 %86)
          to label %invoke.cont84 unwind label %lpad75

invoke.cont84:                                    ; preds = %if.end83
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad75

invoke.cont85:                                    ; preds = %lpad75
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont69
  %87 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl86 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %87, i32 0, i32 0
  %_M_start87 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl86, i32 0, i32 0
  %88 = load i64*, i64** %_M_start87, align 8
  %89 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl88 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %89, i32 0, i32 0
  %_M_finish89 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl88, i32 0, i32 1
  %90 = load i64*, i64** %_M_finish89, align 8
  %91 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call90 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %91)
  call void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %88, i64* %90, %"class.std::ios_base::Init"* dereferenceable(1) %call90)
  %92 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %93 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl91 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %93, i32 0, i32 0
  %_M_start92 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl91, i32 0, i32 0
  %94 = load i64*, i64** %_M_start92, align 8
  %95 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl93 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %95, i32 0, i32 0
  %_M_end_of_storage94 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl93, i32 0, i32 2
  %96 = load i64*, i64** %_M_end_of_storage94, align 8
  %97 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl95 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %97, i32 0, i32 0
  %_M_start96 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl95, i32 0, i32 0
  %98 = load i64*, i64** %_M_start96, align 8
  %sub.ptr.lhs.cast97 = ptrtoint i64* %96 to i64
  %sub.ptr.rhs.cast98 = ptrtoint i64* %98 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %sub.ptr.div100 = sdiv exact i64 %sub.ptr.sub99, 8
  call void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.1"* %92, i64* %94, i64 %sub.ptr.div100)
  %99 = load i64*, i64** %__new_start, align 8
  %100 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl101 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %100, i32 0, i32 0
  %_M_start102 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl101, i32 0, i32 0
  store i64* %99, i64** %_M_start102, align 8
  %101 = load i64*, i64** %__new_finish, align 8
  %102 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl103 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %102, i32 0, i32 0
  %_M_finish104 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl103, i32 0, i32 1
  store i64* %101, i64** %_M_finish104, align 8
  %103 = load i64*, i64** %__new_start, align 8
  %104 = load i64, i64* %__len, align 8
  %add.ptr105 = getelementptr inbounds i64, i64* %103, i64 %104
  %105 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl106 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %105, i32 0, i32 0
  %_M_end_of_storage107 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl106, i32 0, i32 2
  store i64* %add.ptr105, i64** %_M_end_of_storage107, align 8
  br label %if.end108

if.end108:                                        ; preds = %try.cont, %if.end
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont85
  %exn110 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn110, 0
  %lpad.val111 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val111

terminate.lpad:                                   ; preds = %lpad75
  %106 = landingpad { i8*, i32 }
          catch i8* null
  %107 = extractvalue { i8*, i32 } %106, 0
  call void @__clang_call_terminate(i8* %107) #9
  unreachable

unreachable:                                      ; preds = %invoke.cont84
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE15_M_erase_at_endEPm(%"class.std::vector.0"* %this, i64* %__pos) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__pos.addr = alloca i64*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64* %__pos, i64** %__pos.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = load i64*, i64** %__pos.addr, align 8
  %1 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %2 = load i64*, i64** %_M_finish, align 8
  %3 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %3)
  call void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %0, i64* %2, %"class.std::ios_base::Init"* dereferenceable(1) %call)
  %4 = load i64*, i64** %__pos.addr, align 8
  %5 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store i64* %4, i64** %_M_finish3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_(i64* %__first, i64* %__last, i64* %__result, %"class.std::ios_base::Init"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__alloc.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %call = call i64* @_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E(i64* %0, i64* %1, i64* %2, %"class.std::ios_base::Init"* dereferenceable(1) %3)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt13copy_backwardIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__miter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__result.addr, align 8
  %call2 = call i64* @_ZSt23__copy_move_backward_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %call, i64* %call1, i64* %2)
  ret i64* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIPmmEvT_S1_RKT0_(i64* %__first, i64* %__last, i64* dereferenceable(8) %__value) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__value.addr, align 8
  call void @_ZSt8__fill_aIPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %call, i64* %call1, i64* dereferenceable(8) %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E(i64* %__first, i64 %__n, i64* dereferenceable(8) %__x, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i64*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load i64*, i64** %__x.addr, align 8
  %call = call i64* @_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_(i64* %1, i64 %2, i64* dereferenceable(8) %3)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* dereferenceable(8) %__x) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i64*, i64** %__x.addr, align 8
  %call = call i64* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPmmmEET_S3_T0_RKT1_(i64* %0, i64 %1, i64* dereferenceable(8) %2)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPmmmEET_S3_T0_RKT1_(i64* %__first, i64 %__n, i64* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__x, i64** %__x.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i64*, i64** %__x.addr, align 8
  %call = call i64* @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(i64* %0, i64 %1, i64* dereferenceable(8) %2)
  ret i64* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* dereferenceable(8) %__value) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load i64*, i64** %__value.addr, align 8
  %call1 = call i64* @_ZSt10__fill_n_aIPmmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i64* %call, i64 %1, i64* dereferenceable(8) %2)
  ret i64* %call1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZSt10__fill_n_aIPmmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i64* %__first, i64 %__n, i64* dereferenceable(8) %__value) #3 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  %__niter = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__value.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__tmp, align 8
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %__tmp, align 8
  %5 = load i64*, i64** %__first.addr, align 8
  store i64 %4, i64* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load i64*, i64** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64*, i64** %__first.addr, align 8
  ret i64* %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i64* dereferenceable(8) %__value) #3 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__value.addr = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__value, i64** %__value.addr, align 8
  %0 = load i64*, i64** %__value.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %__tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64*, i64** %__first.addr, align 8
  %3 = load i64*, i64** %__last.addr, align 8
  %cmp = icmp ne i64* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %__tmp, align 8
  %5 = load i64*, i64** %__first.addr, align 8
  store i64 %4, i64* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64*, i64** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %6, i32 1
  store i64* %incdec.ptr, i64** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt23__copy_move_backward_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__first.addr, align 8
  %call = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %0)
  %1 = load i64*, i64** %__last.addr, align 8
  %call1 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %1)
  %2 = load i64*, i64** %__result.addr, align 8
  %call2 = call i64* @_ZSt12__niter_baseIPmET_S1_(i64* %2)
  %call3 = call i64* @_ZSt22__copy_move_backward_aILb0EPmS0_ET1_T0_S2_S1_(i64* %call, i64* %call1, i64* %call2)
  ret i64* %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr i64* @_ZSt22__copy_move_backward_aILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #0 comdat {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load i64*, i64** %__first.addr, align 8
  %1 = load i64*, i64** %__last.addr, align 8
  %2 = load i64*, i64** %__result.addr, align 8
  %call = call i64* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bImEEPT_PKS3_S6_S4_(i64* %0, i64* %1, i64* %2)
  ret i64* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bImEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #3 comdat align 2 {
entry:
  %__first.addr = alloca i64*, align 8
  %__last.addr = alloca i64*, align 8
  %__result.addr = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %__first.addr, align 8
  store i64* %__last, i64** %__last.addr, align 8
  store i64* %__result, i64** %__result.addr, align 8
  %0 = load i64*, i64** %__last.addr, align 8
  %1 = load i64*, i64** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i64* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i64* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 %idx.neg
  %5 = bitcast i64* %add.ptr to i8*
  %6 = load i64*, i64** %__first.addr, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64*, i64** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds i64, i64* %9, i64 %idx.neg1
  ret i64* %add.ptr2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base.1"*, %"struct.std::_Vector_base.1"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaImEC2Ev(%"class.std::ios_base::Init"* %0) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1, i32 0, i32 0
  store i64* null, i64** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1, i32 0, i32 1
  store i64* null, i64** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this1, i32 0, i32 2
  store i64* null, i64** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaImEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %class.BigInt*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  store %class.BigInt* %1, %class.BigInt** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.10"* %retval, %class.BigInt** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %retval, i32 0, i32 0
  %2 = load %class.BigInt*, %class.BigInt** %coerce.dive, align 8
  ret %class.BigInt* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %ref.tmp = alloca %class.BigInt*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %class.BigInt*, %class.BigInt** %_M_finish, align 8
  store %class.BigInt* %1, %class.BigInt** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.10"* %retval, %class.BigInt** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %retval, i32 0, i32 0
  %2 = load %class.BigInt*, %class.BigInt** %coerce.dive, align 8
  ret %class.BigInt* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPK6BigIntSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %__lhs, %"class.__gnu_cxx::__normal_iterator.10"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %__rhs, %"class.__gnu_cxx::__normal_iterator.10"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %0)
  %1 = load %class.BigInt*, %class.BigInt** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %2)
  %3 = load %class.BigInt*, %class.BigInt** %call1, align 8
  %cmp = icmp eq %class.BigInt* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %this, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %this1, i32 0, i32 0
  ret %class.BigInt** %_M_current
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.10"* %this, %class.BigInt** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  %__i.addr = alloca %class.BigInt**, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %this, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  store %class.BigInt** %__i, %class.BigInt*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %this1, i32 0, i32 0
  %0 = load %class.BigInt**, %class.BigInt*** %__i.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %0, align 8
  store %class.BigInt* %1, %class.BigInt** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::ios_base::Init"* dereferenceable(1) %__a, %class.BigInt* %__p, %class.BigInt* dereferenceable(24) %__arg) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  %__arg.addr = alloca %class.BigInt*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  store %class.BigInt* %__arg, %class.BigInt** %__arg.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %3 = load %class.BigInt*, %class.BigInt** %__arg.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6BigIntE9constructEPS1_RKS1_(%"class.std::ios_base::Init"* %1, %class.BigInt* %2, %class.BigInt* dereferenceable(24) %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.10"* %retval, %class.BigInt** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %retval, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %coerce.dive, align 8
  ret %class.BigInt* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_(%"class.std::vector"* %this, %class.BigInt* %__position.coerce, %class.BigInt* dereferenceable(24) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %class.BigInt*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %__new_start = alloca %class.BigInt*, align 8
  %__new_finish = alloca %class.BigInt*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %__position, i32 0, i32 0
  store %class.BigInt* %__position.coerce, %class.BigInt** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %class.BigInt* %__x, %class.BigInt** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0))
  store i64 %call, i64* %__len, align 8
  %call2 = call %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %ref.tmp, i32 0, i32 0
  store %class.BigInt* %call2, %class.BigInt** %coerce.dive3, align 8
  %call4 = call i64 @_ZN9__gnu_cxxmiIP6BigIntSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %__position, %"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %ref.tmp)
  store i64 %call4, i64* %__elems_before, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__len, align 8
  %call5 = call %class.BigInt* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1)
  store %class.BigInt* %call5, %class.BigInt** %__new_start, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  store %class.BigInt* %2, %class.BigInt** %__new_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %5 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %6 = load i64, i64* %__elems_before, align 8
  %add.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %5, i64 %6
  %7 = load %class.BigInt*, %class.BigInt** %__x.addr, align 8
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE9constructIS1_EEvRS2_PS1_RKT_(%"class.std::ios_base::Init"* dereferenceable(1) %4, %class.BigInt* %add.ptr, %class.BigInt* dereferenceable(24) %7)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %class.BigInt* null, %class.BigInt** %__new_finish, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl6, i32 0, i32 0
  %9 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %call8 = invoke dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %__position)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %10 = load %class.BigInt*, %class.BigInt** %call8, align 8
  %11 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call10 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %12)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %call12 = invoke %class.BigInt* @_ZSt34__uninitialized_move_if_noexcept_aIP6BigIntS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BigInt* %9, %class.BigInt* %10, %class.BigInt* %11, %"class.std::ios_base::Init"* dereferenceable(1) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  store %class.BigInt* %call12, %class.BigInt** %__new_finish, align 8
  %13 = load %class.BigInt*, %class.BigInt** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %13, i32 1
  store %class.BigInt* %incdec.ptr, %class.BigInt** %__new_finish, align 8
  %call14 = invoke dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %__position)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  %14 = load %class.BigInt*, %class.BigInt** %call14, align 8
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  %16 = load %class.BigInt*, %class.BigInt** %_M_finish, align 8
  %17 = load %class.BigInt*, %class.BigInt** %__new_finish, align 8
  %18 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call17 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %18)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont13
  %call19 = invoke %class.BigInt* @_ZSt34__uninitialized_move_if_noexcept_aIP6BigIntS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BigInt* %14, %class.BigInt* %16, %class.BigInt* %17, %"class.std::ios_base::Init"* dereferenceable(1) %call17)
          to label %invoke.cont18 unwind label %lpad

invoke.cont18:                                    ; preds = %invoke.cont16
  store %class.BigInt* %call19, %class.BigInt** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont16, %invoke.cont13, %invoke.cont11, %invoke.cont9, %invoke.cont7, %invoke.cont, %entry
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %exn.slot, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %22 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %23 = load %class.BigInt*, %class.BigInt** %__new_finish, align 8
  %tobool = icmp ne %class.BigInt* %23, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %24 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl20 to %"class.std::ios_base::Init"*
  %26 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %27 = load i64, i64* %__elems_before, align 8
  %add.ptr21 = getelementptr inbounds %class.BigInt, %class.BigInt* %26, i64 %27
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE7destroyERS2_PS1_(%"class.std::ios_base::Init"* dereferenceable(1) %25, %class.BigInt* %add.ptr21)
          to label %invoke.cont23 unwind label %lpad22

invoke.cont23:                                    ; preds = %if.then
  br label %if.end

lpad22:                                           ; preds = %invoke.cont27, %if.end, %invoke.cont24, %if.else, %if.then
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont28 unwind label %terminate.lpad

if.else:                                          ; preds = %catch
  %31 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %32 = load %class.BigInt*, %class.BigInt** %__new_finish, align 8
  %33 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call25 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %33)
          to label %invoke.cont24 unwind label %lpad22

invoke.cont24:                                    ; preds = %if.else
  invoke void @_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E(%class.BigInt* %31, %class.BigInt* %32, %"class.std::ios_base::Init"* dereferenceable(1) %call25)
          to label %invoke.cont26 unwind label %lpad22

invoke.cont26:                                    ; preds = %invoke.cont24
  br label %if.end

if.end:                                           ; preds = %invoke.cont26, %invoke.cont23
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %35 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %36 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %34, %class.BigInt* %35, i64 %36)
          to label %invoke.cont27 unwind label %lpad22

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad22

invoke.cont28:                                    ; preds = %lpad22
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont18
  %37 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %38 = load %class.BigInt*, %class.BigInt** %_M_start30, align 8
  %39 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %40 = load %class.BigInt*, %class.BigInt** %_M_finish32, align 8
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call33 = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %41)
  call void @_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E(%class.BigInt* %38, %class.BigInt* %40, %"class.std::ios_base::Init"* dereferenceable(1) %call33)
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %43 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %43, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %44 = load %class.BigInt*, %class.BigInt** %_M_start35, align 8
  %45 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %45, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %46 = load %class.BigInt*, %class.BigInt** %_M_end_of_storage, align 8
  %47 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl37 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %47, i32 0, i32 0
  %_M_start38 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl37, i32 0, i32 0
  %48 = load %class.BigInt*, %class.BigInt** %_M_start38, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BigInt* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BigInt* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %42, %class.BigInt* %44, i64 %sub.ptr.div)
  %49 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %50 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl39 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %_M_start40 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl39, i32 0, i32 0
  store %class.BigInt* %49, %class.BigInt** %_M_start40, align 8
  %51 = load %class.BigInt*, %class.BigInt** %__new_finish, align 8
  %52 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl41 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %52, i32 0, i32 0
  %_M_finish42 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl41, i32 0, i32 1
  store %class.BigInt* %51, %class.BigInt** %_M_finish42, align 8
  %53 = load %class.BigInt*, %class.BigInt** %__new_start, align 8
  %54 = load i64, i64* %__len, align 8
  %add.ptr43 = getelementptr inbounds %class.BigInt, %class.BigInt* %53, i64 %54
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %_M_end_of_storage45 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl44, i32 0, i32 2
  store %class.BigInt* %add.ptr43, %class.BigInt** %_M_end_of_storage45, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont28
  %exn46 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn46, 0
  %lpad.val47 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val47

terminate.lpad:                                   ; preds = %lpad22
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #9
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6BigIntSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  %call2 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #13
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  %call4 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.10"* %retval, %class.BigInt** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %retval, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %coerce.dive, align 8
  ret %class.BigInt* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIP6BigIntSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator.10"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %__lhs, %"class.__gnu_cxx::__normal_iterator.10"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %__rhs, %"class.__gnu_cxx::__normal_iterator.10"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %0)
  %1 = load %class.BigInt*, %class.BigInt** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %2)
  %3 = load %class.BigInt*, %class.BigInt** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BigInt* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BigInt* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %class.BigInt* @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE8allocateERS2_m(%"class.std::ios_base::Init"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %class.BigInt* [ %call, %cond.true ], [ null, %cond.false ]
  ret %class.BigInt* %cond
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.BigInt** @_ZNK9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.10"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %this, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %this1, i32 0, i32 0
  ret %class.BigInt** %_M_current
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZSt34__uninitialized_move_if_noexcept_aIP6BigIntS1_SaIS0_EET0_T_S4_S3_RT1_(%class.BigInt* %__first, %class.BigInt* %__last, %class.BigInt* %__result, %"class.std::ios_base::Init"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  %__result.addr = alloca %class.BigInt*, align 8
  %__alloc.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  store %class.BigInt* %__result, %class.BigInt** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %__alloc, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__result.addr, align 8
  %3 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__alloc.addr, align 8
  %call = call %class.BigInt* @_ZSt22__uninitialized_copy_aIP6BigIntS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.BigInt* %0, %class.BigInt* %1, %class.BigInt* %2, %"class.std::ios_base::Init"* dereferenceable(1) %3)
  ret %class.BigInt* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE7destroyERS2_PS1_(%"class.std::ios_base::Init"* dereferenceable(1) %__a, %class.BigInt* %__p) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6BigIntE7destroyEPS1_(%"class.std::ios_base::Init"* %1, %class.BigInt* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E(%class.BigInt* %__first, %class.BigInt* %__last, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  call void @_ZSt8_DestroyIP6BigIntEvT_S2_(%class.BigInt* %1, %class.BigInt* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this, %class.BigInt* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %tobool = icmp ne %class.BigInt* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  %2 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE10deallocateERS2_PS1_m(%"class.std::ios_base::Init"* dereferenceable(1) %1, %class.BigInt* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE10deallocateERS2_PS1_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, %class.BigInt* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorI6BigIntE10deallocateEPS1_m(%"class.std::ios_base::Init"* %1, %class.BigInt* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6BigIntE10deallocateEPS1_m(%"class.std::ios_base::Init"* %this, %class.BigInt* %__p, i64) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  %.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %2 = bitcast %class.BigInt* %1 to i8*
  call void @_ZdlPv(i8* %2) #2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIP6BigIntEvT_S2_(%class.BigInt* %__first, %class.BigInt* %__last) #0 comdat {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP6BigIntEEvT_S4_(%class.BigInt* %0, %class.BigInt* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIP6BigIntEEvT_S4_(%class.BigInt* %__first, %class.BigInt* %__last) #0 comdat align 2 {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  %cmp = icmp ne %class.BigInt* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %call = call %class.BigInt* @_ZSt11__addressofI6BigIntEPT_RS1_(%class.BigInt* dereferenceable(24) %2)
  call void @_ZSt8_DestroyI6BigIntEvPT_(%class.BigInt* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %3, i32 1
  store %class.BigInt* %incdec.ptr, %class.BigInt** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %class.BigInt* @_ZSt11__addressofI6BigIntEPT_RS1_(%class.BigInt* dereferenceable(24) %__r) #3 comdat {
entry:
  %__r.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %__r, %class.BigInt** %__r.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__r.addr, align 8
  ret %class.BigInt* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyI6BigIntEvPT_(%class.BigInt* %__pointer) #0 comdat {
entry:
  %__pointer.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %__pointer, %class.BigInt** %__pointer.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__pointer.addr, align 8
  call void @_ZN6BigIntD2Ev(%class.BigInt* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6BigIntE7destroyEPS1_(%"class.std::ios_base::Init"* %this, %class.BigInt* %__p) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  call void @_ZN6BigIntD2Ev(%class.BigInt* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZSt22__uninitialized_copy_aIP6BigIntS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.BigInt* %__first, %class.BigInt* %__last, %class.BigInt* %__result, %"class.std::ios_base::Init"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  %__result.addr = alloca %class.BigInt*, align 8
  %.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  store %class.BigInt* %__result, %class.BigInt** %__result.addr, align 8
  store %"class.std::ios_base::Init"* %0, %"class.std::ios_base::Init"** %.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  %3 = load %class.BigInt*, %class.BigInt** %__result.addr, align 8
  %call = call %class.BigInt* @_ZSt18uninitialized_copyIP6BigIntS1_ET0_T_S3_S2_(%class.BigInt* %1, %class.BigInt* %2, %class.BigInt* %3)
  ret %class.BigInt* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZSt18uninitialized_copyIP6BigIntS1_ET0_T_S3_S2_(%class.BigInt* %__first, %class.BigInt* %__last, %class.BigInt* %__result) #0 comdat {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  %__result.addr = alloca %class.BigInt*, align 8
  %__assignable = alloca i8, align 1
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  store %class.BigInt* %__result, %class.BigInt** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__result.addr, align 8
  %call = call %class.BigInt* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP6BigIntS3_EET0_T_S5_S4_(%class.BigInt* %0, %class.BigInt* %1, %class.BigInt* %2)
  ret %class.BigInt* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIP6BigIntS3_EET0_T_S5_S4_(%class.BigInt* %__first, %class.BigInt* %__last, %class.BigInt* %__result) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  %__result.addr = alloca %class.BigInt*, align 8
  %__cur = alloca %class.BigInt*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  store %class.BigInt* %__result, %class.BigInt** %__result.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__result.addr, align 8
  store %class.BigInt* %0, %class.BigInt** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  %cmp = icmp ne %class.BigInt* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %class.BigInt*, %class.BigInt** %__cur, align 8
  %call = invoke %class.BigInt* @_ZSt11__addressofI6BigIntEPT_RS1_(%class.BigInt* dereferenceable(24) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %4 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  invoke void @_ZSt10_ConstructI6BigIntS0_EvPT_RKT0_(%class.BigInt* %call, %class.BigInt* dereferenceable(24) %4)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %invoke.cont
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont1
  %5 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %5, i32 1
  store %class.BigInt* %incdec.ptr, %class.BigInt** %__first.addr, align 8
  %6 = load %class.BigInt*, %class.BigInt** %__cur, align 8
  %incdec.ptr2 = getelementptr inbounds %class.BigInt, %class.BigInt* %6, i32 1
  store %class.BigInt* %incdec.ptr2, %class.BigInt** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %invoke.cont, %for.body
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %10 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %11 = load %class.BigInt*, %class.BigInt** %__result.addr, align 8
  %12 = load %class.BigInt*, %class.BigInt** %__cur, align 8
  invoke void @_ZSt8_DestroyIP6BigIntEvT_S2_(%class.BigInt* %11, %class.BigInt* %12)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad3

for.end:                                          ; preds = %for.cond
  %13 = load %class.BigInt*, %class.BigInt** %__cur, align 8
  ret %class.BigInt* %13

lpad3:                                            ; preds = %invoke.cont4, %catch
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %lpad3
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont5
  %exn6 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn6, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7

terminate.lpad:                                   ; preds = %lpad3
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #9
  unreachable

unreachable:                                      ; preds = %invoke.cont4
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt10_ConstructI6BigIntS0_EvPT_RKT0_(%class.BigInt* %__p, %class.BigInt* dereferenceable(24) %__value) #0 comdat {
entry:
  %__p.addr = alloca %class.BigInt*, align 8
  %__value.addr = alloca %class.BigInt*, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  store %class.BigInt* %__value, %class.BigInt** %__value.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %1 = bitcast %class.BigInt* %0 to i8*
  %2 = bitcast i8* %1 to %class.BigInt*
  %3 = load %class.BigInt*, %class.BigInt** %__value.addr, align 8
  call void @_ZN6BigIntC2ERKS_(%class.BigInt* %2, %class.BigInt* dereferenceable(24) %3)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #9

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE8allocateERS2_m(%"class.std::ios_base::Init"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %class.BigInt* @_ZN9__gnu_cxx13new_allocatorI6BigIntE8allocateEmPKv(%"class.std::ios_base::Init"* %1, i64 %2, i8* null)
  ret %class.BigInt* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZN9__gnu_cxx13new_allocatorI6BigIntE8allocateEmPKv(%"class.std::ios_base::Init"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI6BigIntE8max_sizeEv(%"class.std::ios_base::Init"* %this1) #2
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 24
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %class.BigInt*
  ret %class.BigInt* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorI6BigIntE8max_sizeEv(%"class.std::ios_base::Init"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret i64 768614336404564650
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIP6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.10"* %this, %class.BigInt** dereferenceable(8) %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  %__i.addr = alloca %class.BigInt**, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %this, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  store %class.BigInt** %__i, %class.BigInt*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %this1, i32 0, i32 0
  %0 = load %class.BigInt**, %class.BigInt*** %__i.addr, align 8
  %1 = load %class.BigInt*, %class.BigInt** %0, align 8
  store %class.BigInt* %1, %class.BigInt** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8max_sizeEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE8max_sizeERKS2_(%"class.std::ios_base::Init"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"class.std::ios_base::Init"* @_ZNKSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl to %"class.std::ios_base::Init"*
  ret %"class.std::ios_base::Init"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaI6BigIntEE8max_sizeERKS2_(%"class.std::ios_base::Init"* dereferenceable(1) %__a) #3 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %__a, %"class.std::ios_base::Init"** %__a.addr, align 8
  %0 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %__a.addr, align 8
  %1 = bitcast %"class.std::ios_base::Init"* %0 to %"class.std::ios_base::Init"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorI6BigIntE8max_sizeEv(%"class.std::ios_base::Init"* %1) #2
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6BigIntE9constructEPS1_RKS1_(%"class.std::ios_base::Init"* %this, %class.BigInt* %__p, %class.BigInt* dereferenceable(24) %__val) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  %__p.addr = alloca %class.BigInt*, align 8
  %__val.addr = alloca %class.BigInt*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  store %class.BigInt* %__p, %class.BigInt** %__p.addr, align 8
  store %class.BigInt* %__val, %class.BigInt** %__val.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %__p.addr, align 8
  %1 = bitcast %class.BigInt* %0 to i8*
  %2 = bitcast i8* %1 to %class.BigInt*
  %3 = load %class.BigInt*, %class.BigInt** %__val.addr, align 8
  call void @_ZN6BigIntC2ERKS_(%class.BigInt* %2, %class.BigInt* dereferenceable(24) %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorI6BigIntSaIS0_EE8capacityEv(%"class.std::vector"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 2
  %1 = load %class.BigInt*, %class.BigInt** %_M_end_of_storage, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BigInt* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BigInt* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EE20_M_allocate_and_copyIPS0_EES4_mT_S5_(%"class.std::vector"* %this, i64 %__n, %class.BigInt* %__first, %class.BigInt* %__last) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__first.addr = alloca %class.BigInt*, align 8
  %__last.addr = alloca %class.BigInt*, align 8
  %__result = alloca %class.BigInt*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store %class.BigInt* %__first, %class.BigInt** %__first.addr, align 8
  store %class.BigInt* %__last, %class.BigInt** %__last.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__n.addr, align 8
  %call = call %class.BigInt* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1)
  store %class.BigInt* %call, %class.BigInt** %__result, align 8
  %2 = load %class.BigInt*, %class.BigInt** %__first.addr, align 8
  %3 = load %class.BigInt*, %class.BigInt** %__last.addr, align 8
  %4 = load %class.BigInt*, %class.BigInt** %__result, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call2 = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke %class.BigInt* @_ZSt22__uninitialized_copy_aIP6BigIntS1_S0_ET0_T_S3_S2_RSaIT1_E(%class.BigInt* %2, %class.BigInt* %3, %class.BigInt* %4, %"class.std::ios_base::Init"* dereferenceable(1) %call2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %6 = load %class.BigInt*, %class.BigInt** %__result, align 8
  ret %class.BigInt* %6

lpad:                                             ; preds = %invoke.cont, %entry
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %10 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %11 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %12 = load %class.BigInt*, %class.BigInt** %__result, align 8
  %13 = load i64, i64* %__n.addr, align 8
  invoke void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %11, %class.BigInt* %12, i64 %13)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #13
          to label %unreachable unwind label %lpad5

lpad5:                                            ; preds = %invoke.cont6, %catch
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont7 unwind label %terminate.lpad

invoke.cont7:                                     ; preds = %lpad5
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont7
  %exn8 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn8, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9

terminate.lpad:                                   ; preds = %lpad5
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #9
  unreachable

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: noinline uwtable
define void @_ZNK9Fibonacci16show_all_numbersEv(%class.Fibonacci* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Fibonacci*, align 8
  %oss = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %i = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  store %class.Fibonacci* %this, %class.Fibonacci** %this.addr, align 8
  %this1 = load %class.Fibonacci*, %class.Fibonacci** %this.addr, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_ostringstream"* %oss, i32 16)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %fibs_ = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %call = invoke i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %fibs_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %1 = bitcast %"class.std::__cxx11::basic_ostringstream"* %oss to %"class.std::basic_ostream"*
  %call3 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %call5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %call3, i32 %2)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call7 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %fibs_8 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %conv9 = zext i32 %3 to i64
  %call11 = invoke dereferenceable(24) %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EEixEm(%"class.std::vector"* %fibs_8, i64 %conv9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont6
  %call13 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoRK6BigInt(%"class.std::basic_ostream"* dereferenceable(272) %call7, %class.BigInt* dereferenceable(24) %call11)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  %call15 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont12
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont14
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %invoke.cont18, %for.end, %invoke.cont12, %invoke.cont10, %invoke.cont6, %invoke.cont4, %invoke.cont2, %for.body, %for.cond
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

for.end:                                          ; preds = %invoke.cont
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %"class.std::__cxx11::basic_ostringstream"* %oss)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %for.end
  %call19 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %oss)
  ret void

lpad17:                                           ; preds = %invoke.cont16
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont21 unwind label %terminate.lpad

invoke.cont21:                                    ; preds = %lpad17
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont21, %lpad
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %oss)
          to label %invoke.cont22 unwind label %terminate.lpad

invoke.cont22:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont22
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val23 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val23

terminate.lpad:                                   ; preds = %ehcleanup, %lpad17
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #9
  unreachable
}

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_ostringstream"*, i32) unnamed_addr #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EEixEm(%"class.std::vector"* %this, i64 %__n) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %1, i64 %2
  ret %class.BigInt* %add.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoRK6BigInt(%"class.std::basic_ostream"* dereferenceable(272) %os, %class.BigInt* dereferenceable(24) %ins_i) #0 comdat {
entry:
  %os.addr = alloca %"class.std::basic_ostream"*, align 8
  %ins_i.addr = alloca %class.BigInt*, align 8
  %i = alloca i64, align 8
  %agg.tmp = alloca %"struct.std::_Setw", align 4
  %agg.tmp7 = alloca %"class.std::ios_base::Init", align 1
  store %"class.std::basic_ostream"* %os, %"class.std::basic_ostream"** %os.addr, align 8
  store %class.BigInt* %ins_i, %class.BigInt** %ins_i.addr, align 8
  %0 = load %class.BigInt*, %class.BigInt** %ins_i.addr, align 8
  %units_ = getelementptr inbounds %class.BigInt, %class.BigInt* %0, i32 0, i32 0
  %call = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.0"* %units_)
  %sub = sub i64 %call, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %os.addr, align 8
  %3 = load %class.BigInt*, %class.BigInt** %ins_i.addr, align 8
  %units_1 = getelementptr inbounds %class.BigInt, %class.BigInt* %3, i32 0, i32 0
  %4 = load i64, i64* %i, align 8
  %call2 = call dereferenceable(8) i64* @_ZNKSt6vectorImSaImEEixEm(%"class.std::vector.0"* %units_1, i64 %4)
  %5 = load i64, i64* %call2, align 8
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %2, i64 %5)
  %call4 = call i32 @_ZSt4setwi(i32 9)
  %coerce.dive = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp, i32 0, i32 0
  store i32 %call4, i32* %coerce.dive, align 4
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp, i32 0, i32 0
  %6 = load i32, i32* %coerce.dive5, align 4
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %call3, i32 %6)
  %call8 = call i8 @_ZSt7setfillIcESt8_SetfillIT_ES1_(i8 signext 48)
  %coerce.dive9 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %agg.tmp7, i32 0, i32 0
  store i8 %call8, i8* %coerce.dive9, align 1
  %coerce.dive10 = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %agg.tmp7, i32 0, i32 0
  %7 = load i8, i8* %coerce.dive10, align 1
  %call11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E(%"class.std::basic_ostream"* dereferenceable(272) %call6, i8 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %os.addr, align 8
  %10 = load %class.BigInt*, %class.BigInt** %ins_i.addr, align 8
  %units_12 = getelementptr inbounds %class.BigInt, %class.BigInt* %10, i32 0, i32 0
  %call13 = call dereferenceable(8) i64* @_ZNKSt6vectorImSaImEEixEm(%"class.std::vector.0"* %units_12, i64 0)
  %11 = load i64, i64* %call13, align 8
  %call14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %9, i64 %11)
  ret %"class.std::basic_ostream"* %call14
}

declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret, %"class.std::__cxx11::basic_ostringstream"*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272), %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #1

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"*) unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZNKSt6vectorImSaImEEixEm(%"class.std::vector.0"* %this, i64 %__n) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector.0"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::vector.0"*, %"class.std::vector.0"** %this.addr, align 8
  %0 = bitcast %"class.std::vector.0"* %this1 to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl", %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i64*, i64** %_M_start, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 %2
  ret i64* %add.ptr
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"*, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZSt4setwi(i32 %__n) #3 comdat {
entry:
  %retval = alloca %"struct.std::_Setw", align 4
  %__n.addr = alloca i32, align 4
  store i32 %__n, i32* %__n.addr, align 4
  %_M_n = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %retval, i32 0, i32 0
  %0 = load i32, i32* %__n.addr, align 4
  store i32 %0, i32* %_M_n, align 4
  %coerce.dive = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %retval, i32 0, i32 0
  %1 = load i32, i32* %coerce.dive, align 4
  ret i32 %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272), i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8 @_ZSt7setfillIcESt8_SetfillIT_ES1_(i8 signext %__c) #3 comdat {
entry:
  %retval = alloca %"class.std::ios_base::Init", align 1
  %__c.addr = alloca i8, align 1
  store i8 %__c, i8* %__c.addr, align 1
  %_M_c = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %retval, i32 0, i32 0
  %0 = load i8, i8* %__c.addr, align 1
  store i8 %0, i8* %_M_c, align 1
  %coerce.dive = getelementptr inbounds %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %retval, i32 0, i32 0
  %1 = load i8, i8* %coerce.dive, align 1
  ret i8 %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E(%"class.std::basic_ostream"* dereferenceable(272), i8) #1

; Function Attrs: noinline uwtable
define void @_ZNK9Fibonacci16show_last_numberEv(%class.Fibonacci* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Fibonacci*, align 8
  %oss = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  store %class.Fibonacci* %this, %class.Fibonacci** %this.addr, align 8
  %this1 = load %class.Fibonacci*, %class.Fibonacci** %this.addr, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_ostringstream"* %oss, i32 16)
  %0 = bitcast %"class.std::__cxx11::basic_ostringstream"* %oss to %"class.std::basic_ostream"*
  %call = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %fibs_ = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %call3 = invoke i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %fibs_)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %sub = sub i64 %call3, 1
  %call5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %call, i64 %sub)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call7 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %fibs_8 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %call10 = invoke dereferenceable(24) %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE4backEv(%"class.std::vector"* %fibs_8)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont6
  %call12 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoRK6BigInt(%"class.std::basic_ostream"* dereferenceable(272) %call7, %class.BigInt* dereferenceable(24) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont9
  %call14 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %"class.std::__cxx11::basic_ostringstream"* %oss)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  %call18 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %invoke.cont15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %invoke.cont17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %oss)
  ret void

lpad:                                             ; preds = %invoke.cont17, %invoke.cont13, %invoke.cont11, %invoke.cont9, %invoke.cont6, %invoke.cont4, %invoke.cont2, %invoke.cont, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad16:                                           ; preds = %invoke.cont15
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont20 unwind label %terminate.lpad

invoke.cont20:                                    ; preds = %lpad16
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont20, %lpad
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %oss)
          to label %invoke.cont21 unwind label %terminate.lpad

invoke.cont21:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont21
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val22 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val22

terminate.lpad:                                   ; preds = %ehcleanup, %lpad16
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE4backEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %coerce = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %coerce3 = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call %class.BigInt* @_ZNKSt6vectorI6BigIntSaIS0_EE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %coerce, i32 0, i32 0
  store %class.BigInt* %call, %class.BigInt** %coerce.dive, align 8
  %call2 = call %class.BigInt* @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEmiEl(%"class.__gnu_cxx::__normal_iterator.10"* %coerce, i64 1)
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %coerce3, i32 0, i32 0
  store %class.BigInt* %call2, %class.BigInt** %coerce.dive4, align 8
  %call5 = call dereferenceable(24) %class.BigInt* @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.10"* %coerce3)
  ret %class.BigInt* %call5
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.BigInt* @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEmiEl(%"class.__gnu_cxx::__normal_iterator.10"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.10", align 8
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca %class.BigInt*, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %this, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %this1, i32 0, i32 0
  %0 = load %class.BigInt*, %class.BigInt** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds %class.BigInt, %class.BigInt* %0, i64 %idx.neg
  store %class.BigInt* %add.ptr, %class.BigInt** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator.10"* %retval, %class.BigInt** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %retval, i32 0, i32 0
  %2 = load %class.BigInt*, %class.BigInt** %coerce.dive, align 8
  ret %class.BigInt* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(24) %class.BigInt* @_ZNK9__gnu_cxx17__normal_iteratorIPK6BigIntSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.10"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator.10"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.10"* %this, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator.10"*, %"class.__gnu_cxx::__normal_iterator.10"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.10", %"class.__gnu_cxx::__normal_iterator.10"* %this1, i32 0, i32 0
  %0 = load %class.BigInt*, %class.BigInt** %_M_current, align 8
  ret %class.BigInt* %0
}

; Function Attrs: noinline uwtable
define void @_ZN9Fibonacci11show_numberEm(%class.Fibonacci* %this, i64 %n_i) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Fibonacci*, align 8
  %n_i.addr = alloca i64, align 8
  %oss = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp.ensured = alloca %class.BigInt, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  store %class.Fibonacci* %this, %class.Fibonacci** %this.addr, align 8
  store i64 %n_i, i64* %n_i.addr, align 8
  %this1 = load %class.Fibonacci*, %class.Fibonacci** %this.addr, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::__cxx11::basic_ostringstream"* %oss, i32 16)
  %0 = load i64, i64* %n_i.addr, align 8
  %fibs_ = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %call = invoke i64 @_ZNKSt6vectorI6BigIntSaIS0_EE4sizeEv(%"class.std::vector"* %fibs_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %cmp = icmp ult i64 %0, %call
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  %1 = load i64, i64* %n_i.addr, align 8
  %conv = trunc i64 %1 to i32
  invoke void @_ZN9Fibonacci10get_numberEj(%class.BigInt* sret %agg.tmp.ensured, %class.Fibonacci* %this1, i32 %conv)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %if.then
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp.ensured)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont2
  br label %if.end

lpad:                                             ; preds = %invoke.cont19, %invoke.cont15, %invoke.cont13, %invoke.cont11, %invoke.cont8, %invoke.cont6, %invoke.cont4, %if.end, %invoke.cont2, %if.then, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont3, %invoke.cont
  %5 = bitcast %"class.std::__cxx11::basic_ostringstream"* %oss to %"class.std::basic_ostream"*
  %call5 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %if.end
  %6 = load i64, i64* %n_i.addr, align 8
  %call7 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %call5, i64 %6)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %call9 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %fibs_10 = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  %7 = load i64, i64* %n_i.addr, align 8
  %call12 = invoke dereferenceable(24) %class.BigInt* @_ZNSt6vectorI6BigIntSaIS0_EEixEm(%"class.std::vector"* %fibs_10, i64 %7)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont8
  %call14 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZlsRSoRK6BigInt(%"class.std::basic_ostream"* dereferenceable(272) %call9, %class.BigInt* dereferenceable(24) %call12)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont11
  %call16 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %"class.std::__cxx11::basic_ostringstream"* %oss)
          to label %invoke.cont17 unwind label %lpad

invoke.cont17:                                    ; preds = %invoke.cont15
  %call20 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %invoke.cont19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %oss)
  ret void

lpad18:                                           ; preds = %invoke.cont17
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont22 unwind label %terminate.lpad

invoke.cont22:                                    ; preds = %lpad18
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont22, %lpad
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* %oss)
          to label %invoke.cont23 unwind label %terminate.lpad

invoke.cont23:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont23
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val24 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val24

terminate.lpad:                                   ; preds = %ehcleanup, %lpad18
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #9
  unreachable
}

; Function Attrs: noinline uwtable
define void @_Z5usagePPc(i8** %argv) #0 {
entry:
  %argv.addr = alloca i8**, align 8
  %agg.tmp = alloca %"struct.std::_Setw", align 4
  %agg.tmp18 = alloca %"struct.std::_Setw", align 4
  %agg.tmp31 = alloca %"struct.std::_Setw", align 4
  %agg.tmp44 = alloca %"struct.std::_Setw", align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %arrayidx, align 8
  %call = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %call1 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx3, align 8
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call2, i8* %2)
  %call5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call6 = call i32 @_ZSt4setwi(i32 4)
  %coerce.dive = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp, i32 0, i32 0
  store i32 %call6, i32* %coerce.dive, align 4
  %coerce.dive7 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp, i32 0, i32 0
  %3 = load i32, i32* %coerce.dive7, align 4
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %call5, i32 %3)
  %call9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %call8, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt4leftRSt8ios_base)
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %call11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  %call12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call11, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx14, align 8
  %call15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call13, i8* %5)
  %call16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %call16, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt4leftRSt8ios_base)
  %call19 = call i32 @_ZSt4setwi(i32 4)
  %coerce.dive20 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp18, i32 0, i32 0
  store i32 %call19, i32* %coerce.dive20, align 4
  %coerce.dive21 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp18, i32 0, i32 0
  %6 = load i32, i32* %coerce.dive21, align 4
  %call22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %call17, i32 %6)
  %call23 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  %call24 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  %call25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call24, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx27, align 8
  %call28 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call26, i8* %8)
  %call29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %call29, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt4leftRSt8ios_base)
  %call32 = call i32 @_ZSt4setwi(i32 4)
  %coerce.dive33 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp31, i32 0, i32 0
  store i32 %call32, i32* %coerce.dive33, align 4
  %coerce.dive34 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp31, i32 0, i32 0
  %9 = load i32, i32* %coerce.dive34, align 4
  %call35 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %call30, i32 %9)
  %call36 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %call37 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0))
  %call38 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call37, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call39 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx40, align 8
  %call41 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call39, i8* %11)
  %call42 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call43 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %call42, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt4leftRSt8ios_base)
  %call45 = call i32 @_ZSt4setwi(i32 4)
  %coerce.dive46 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp44, i32 0, i32 0
  store i32 %call45, i32* %coerce.dive46, align 4
  %coerce.dive47 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %agg.tmp44, i32 0, i32 0
  %12 = load i32, i32* %coerce.dive47, align 4
  %call48 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %call43, i32 %12)
  %call49 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %call50 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call49, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i32 0, i32 0))
  %call51 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call50, i32 25000)
  %call52 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  %call53 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call52, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(216) %"class.std::ios_base"* @_ZSt4leftRSt8ios_base(%"class.std::ios_base"* dereferenceable(216) %__base) #0 comdat {
entry:
  %__base.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %__base, %"class.std::ios_base"** %__base.addr, align 8
  %0 = load %"class.std::ios_base"*, %"class.std::ios_base"** %__base.addr, align 8
  %call = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %0, i32 32, i32 176)
  %1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %__base.addr, align 8
  ret %"class.std::ios_base"* %1
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"*, %"class.std::ios_base"* (%"class.std::ios_base"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %this, i32 %__fmtfl, i32 %__mask) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %__fmtfl.addr = alloca i32, align 4
  %__mask.addr = alloca i32, align 4
  %__old = alloca i32, align 4
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  store i32 %__fmtfl, i32* %__fmtfl.addr, align 4
  store i32 %__mask, i32* %__mask.addr, align 4
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %0 = load i32, i32* %_M_flags, align 8
  store i32 %0, i32* %__old, align 4
  %1 = load i32, i32* %__mask.addr, align 4
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %1)
  %_M_flags2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call3 = call dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %_M_flags2, i32 %call)
  %2 = load i32, i32* %__fmtfl.addr, align 4
  %3 = load i32, i32* %__mask.addr, align 4
  %call4 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %2, i32 %3)
  %_M_flags5 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %call6 = call dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %_M_flags5, i32 %call4)
  %4 = load i32, i32* %__old, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZStcoSt13_Ios_Fmtflags(i32 %__a) #3 comdat {
entry:
  %__a.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4
  %0 = load i32, i32* %__a.addr, align 4
  %neg = xor i32 %0, -1
  ret i32 %neg
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %__a, i32 %__b) #0 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8
  store i32 %__b, i32* %__b.addr, align 4
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32, i32* %__b.addr, align 4
  %call = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %1, i32 %2)
  %3 = load i32*, i32** %__a.addr, align 8
  store i32 %call, i32* %3, align 4
  ret i32* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #3 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %0 = load i32, i32* %__a.addr, align 4
  %1 = load i32, i32* %__b.addr, align 4
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %__a, i32 %__b) #0 comdat {
entry:
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32, align 4
  store i32* %__a, i32** %__a.addr, align 8
  store i32 %__b, i32* %__b.addr, align 4
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32, i32* %__b.addr, align 4
  %call = call i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %1, i32 %2)
  %3 = load i32*, i32** %__a.addr, align 8
  store i32 %call, i32* %3, align 4
  ret i32* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #3 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, i32* %__a.addr, align 4
  store i32 %__b, i32* %__b.addr, align 4
  %0 = load i32, i32* %__a.addr, align 4
  %1 = load i32, i32* %__b.addr, align 4
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: noinline uwtable
define void @_Z5checkB5cxx11iPPc(%"class.std::__cxx11::basic_string"* noalias sret %agg.result, i32 %argc, i8** %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %str = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %cleanup.dest.slot = alloca i32
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result)
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %str, i8* %2, %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  %call = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %str, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  br i1 %call, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %invoke.cont2
  %call4 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
          to label %invoke.cont3 unwind label %lpad1

invoke.cont3:                                     ; preds = %lor.lhs.false
  br i1 %call4, label %if.then11, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %invoke.cont3
  %call7 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %str, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
          to label %invoke.cont6 unwind label %lpad1

invoke.cont6:                                     ; preds = %lor.lhs.false5
  br i1 %call7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %invoke.cont6
  %call10 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %str, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
          to label %invoke.cont9 unwind label %lpad1

invoke.cont9:                                     ; preds = %lor.lhs.false8
  br i1 %call10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %invoke.cont9, %invoke.cont6, %invoke.cont3, %invoke.cont2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %agg.result, %"class.std::__cxx11::basic_string"* dereferenceable(32) %str)
          to label %invoke.cont12 unwind label %lpad1

invoke.cont12:                                    ; preds = %if.then11
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.end
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp) #2
  br label %eh.resume

lpad1:                                            ; preds = %if.end13, %if.then11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %str)
          to label %invoke.cont15 unwind label %terminate.lpad

if.end13:                                         ; preds = %invoke.cont9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %agg.result)
          to label %invoke.cont14 unwind label %lpad1

invoke.cont14:                                    ; preds = %if.end13
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont14, %invoke.cont12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %str)
  br label %return

invoke.cont15:                                    ; preds = %lpad1
  br label %eh.resume

return:                                           ; preds = %cleanup, %if.then
  ret void

eh.resume:                                        ; preds = %invoke.cont15, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val16

terminate.lpad:                                   ; preds = %lpad1
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  call void @__clang_call_terminate(i8* %10) #9
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"*) unnamed_addr #10

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %__lhs, i8* %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__rhs.addr = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %__lhs, %"class.std::__cxx11::basic_string"** %__lhs.addr, align 8
  store i8* %__rhs, i8** %__rhs.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__lhs.addr, align 8
  %1 = load i8*, i8** %__rhs.addr, align 8
  %call = call i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* %0, i8* %1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #1

declare i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %option = alloca %"class.std::__cxx11::basic_string", align 8
  %N = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %fib = alloca %class.Fibonacci, align 8
  %fib16 = alloca %class.Fibonacci, align 8
  %fib26 = alloca %class.Fibonacci, align 8
  %i = alloca i32, align 4
  %max_rand_fib = alloca i32, align 4
  %fib41 = alloca %class.Fibonacci, align 8
  %i43 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @_Z5checkB5cxx11iPPc(%"class.std::__cxx11::basic_string"* sret %option, i32 %0, i8** %1)
  %call = invoke zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* %option)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  %call2 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %option, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %if.then
  store i32 50000, i32* %N, align 4
  br label %if.end

lpad:                                             ; preds = %for.end53, %cond.end, %if.end34, %for.end, %if.then25, %if.end22, %invoke.cont19, %if.then15, %if.end12, %invoke.cont9, %if.then6, %if.end, %if.then, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 2
  %6 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 @atoi(i8* %6) #14
  store i32 %call3, i32* %N, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %invoke.cont1
  %call5 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %option, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %if.end
  br i1 %call5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %invoke.cont4
  %7 = load i32, i32* %N, align 4
  invoke void @_ZN9FibonacciC2Ej(%class.Fibonacci* %fib, i32 %7)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %if.then6
  invoke void @_ZNK9Fibonacci16show_all_numbersEv(%class.Fibonacci* %fib)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont7
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont9
  br label %if.end12

lpad8:                                            ; preds = %invoke.cont7
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %lpad8
  br label %ehcleanup

if.end12:                                         ; preds = %invoke.cont10, %invoke.cont4
  %call14 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %option, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %if.end12
  br i1 %call14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %invoke.cont13
  %11 = load i32, i32* %N, align 4
  invoke void @_ZN9FibonacciC2Ej(%class.Fibonacci* %fib16, i32 %11)
          to label %invoke.cont17 unwind label %lpad

invoke.cont17:                                    ; preds = %if.then15
  invoke void @_ZNK9Fibonacci16show_last_numberEv(%class.Fibonacci* %fib16)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont17
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib16)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont19
  br label %if.end22

lpad18:                                           ; preds = %invoke.cont17
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib16)
          to label %invoke.cont21 unwind label %terminate.lpad

invoke.cont21:                                    ; preds = %lpad18
  br label %ehcleanup

if.end22:                                         ; preds = %invoke.cont20, %invoke.cont13
  %call24 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %option, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
          to label %invoke.cont23 unwind label %lpad

invoke.cont23:                                    ; preds = %if.end22
  br i1 %call24, label %if.then25, label %if.end34

if.then25:                                        ; preds = %invoke.cont23
  invoke void @_ZN9FibonacciC2Ej(%class.Fibonacci* %fib26, i32 0)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %if.then25
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont27
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %19 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 @atoi(i8* %19) #14
  %conv = sext i32 %call29 to i64
  invoke void @_ZN9Fibonacci11show_numberEm(%class.Fibonacci* %fib26, i64 %conv)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont31
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad30:                                           ; preds = %for.body
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib26)
          to label %invoke.cont33 unwind label %terminate.lpad

for.end:                                          ; preds = %for.cond
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib26)
          to label %invoke.cont32 unwind label %lpad

invoke.cont32:                                    ; preds = %for.end
  br label %if.end34

invoke.cont33:                                    ; preds = %lpad30
  br label %ehcleanup

if.end34:                                         ; preds = %invoke.cont32, %invoke.cont23
  %call36 = invoke zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %option, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %if.end34
  br i1 %call36, label %if.then37, label %if.end56

if.then37:                                        ; preds = %invoke.cont35
  %24 = load i32, i32* %argc.addr, align 4
  %cmp38 = icmp eq i32 %24, 3
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then37
  br label %cond.end

cond.false:                                       ; preds = %if.then37
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %25, i64 3
  %26 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i32 @atoi(i8* %26) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 25000, %cond.true ], [ %call40, %cond.false ]
  store i32 %cond, i32* %max_rand_fib, align 4
  invoke void @_ZN9FibonacciC2Ej(%class.Fibonacci* %fib41, i32 0)
          to label %invoke.cont42 unwind label %lpad

invoke.cont42:                                    ; preds = %cond.end
  store i32 0, i32* %i43, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %invoke.cont42
  %27 = load i32, i32* %i43, align 4
  %28 = load i32, i32* %N, align 4
  %cmp45 = icmp ult i32 %27, %28
  br i1 %cmp45, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond44
  %call47 = call i32 @rand() #2
  %29 = load i32, i32* %max_rand_fib, align 4
  %rem = srem i32 %call47, %29
  %conv48 = sext i32 %rem to i64
  invoke void @_ZN9Fibonacci11show_numberEm(%class.Fibonacci* %fib41, i64 %conv48)
          to label %invoke.cont50 unwind label %lpad49

invoke.cont50:                                    ; preds = %for.body46
  br label %for.inc51

for.inc51:                                        ; preds = %invoke.cont50
  %30 = load i32, i32* %i43, align 4
  %inc52 = add i32 %30, 1
  store i32 %inc52, i32* %i43, align 4
  br label %for.cond44

lpad49:                                           ; preds = %for.body46
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  store i8* %32, i8** %exn.slot, align 8
  %33 = extractvalue { i8*, i32 } %31, 1
  store i32 %33, i32* %ehselector.slot, align 4
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib41)
          to label %invoke.cont55 unwind label %terminate.lpad

for.end53:                                        ; preds = %for.cond44
  invoke void @_ZN9FibonacciD2Ev(%class.Fibonacci* %fib41)
          to label %invoke.cont54 unwind label %lpad

invoke.cont54:                                    ; preds = %for.end53
  br label %if.end56

invoke.cont55:                                    ; preds = %lpad49
  br label %ehcleanup

if.end56:                                         ; preds = %invoke.cont54, %invoke.cont35
  store i32 0, i32* %retval, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %option)
  %34 = load i32, i32* %retval, align 4
  ret i32 %34

ehcleanup:                                        ; preds = %invoke.cont55, %invoke.cont33, %invoke.cont21, %invoke.cont11, %lpad
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %option)
          to label %invoke.cont57 unwind label %terminate.lpad

invoke.cont57:                                    ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont57
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val58 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val58

terminate.lpad:                                   ; preds = %ehcleanup, %lpad49, %lpad30, %lpad18, %lpad8
  %35 = landingpad { i8*, i32 }
          catch i8* null
  %36 = extractvalue { i8*, i32 } %35, 0
  call void @__clang_call_terminate(i8* %36) #9
  unreachable
}

declare zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"*) #1

declare dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #12

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9FibonacciC2Ej(%class.Fibonacci* %this, i32 %n_i) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Fibonacci*, align 8
  %n_i.addr = alloca i32, align 4
  %agg.tmp.ensured = alloca %class.BigInt, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.Fibonacci* %this, %class.Fibonacci** %this.addr, align 8
  store i32 %n_i, i32* %n_i.addr, align 4
  %this1 = load %class.Fibonacci*, %class.Fibonacci** %this.addr, align 8
  %fibs_ = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  call void @_ZNSt6vectorI6BigIntSaIS0_EEC2Ev(%"class.std::vector"* %fibs_)
  %0 = load i32, i32* %n_i.addr, align 4
  invoke void @_ZN9Fibonacci10get_numberEj(%class.BigInt* sret %agg.tmp.ensured, %class.Fibonacci* %this1, i32 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN6BigIntD2Ev(%class.BigInt* %agg.tmp.ensured)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EED2Ev(%"class.std::vector"* %fibs_)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont3
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %lpad
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9FibonacciD2Ev(%class.Fibonacci* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Fibonacci*, align 8
  store %class.Fibonacci* %this, %class.Fibonacci** %this.addr, align 8
  %this1 = load %class.Fibonacci*, %class.Fibonacci** %this.addr, align 8
  %fibs_ = getelementptr inbounds %class.Fibonacci, %class.Fibonacci* %this1, i32 0, i32 0
  call void @_ZNSt6vectorI6BigIntSaIS0_EED2Ev(%"class.std::vector"* %fibs_)
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #10

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6BigIntSaIS0_EED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %class.BigInt*, %class.BigInt** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke dereferenceable(1) %"class.std::ios_base::Init"* @_ZNSt12_Vector_baseI6BigIntSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIP6BigIntS0_EvT_S2_RSaIT0_E(%class.BigInt* %1, %class.BigInt* %3, %"class.std::ios_base::Init"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseI6BigIntSaIS0_EED2Ev(%"struct.std::_Vector_base"* %9)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont4
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #9
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6BigIntSaIS0_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %class.BigInt*, %class.BigInt** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %class.BigInt*, %class.BigInt** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %class.BigInt*, %class.BigInt** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %class.BigInt* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %class.BigInt* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  invoke void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this1, %class.BigInt* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl5) #2
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl6) #2
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this, %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"*, %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaI6BigIntED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6BigIntED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorI6BigIntED2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6BigIntED2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorI6BigIntSaIS0_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6BigIntSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseI6BigIntSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this, %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"*, %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZNSaI6BigIntEC2Ev(%"class.std::ios_base::Init"* %0) #2
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this1, i32 0, i32 0
  store %class.BigInt* null, %class.BigInt** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this1, i32 0, i32 1
  store %class.BigInt* null, %class.BigInt** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl", %"struct.std::_Vector_base<BigInt, std::allocator<BigInt> >::_Vector_impl"* %this1, i32 0, i32 2
  store %class.BigInt* null, %class.BigInt** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaI6BigIntEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::Init"* %this1 to %"class.std::ios_base::Init"*
  call void @_ZN9__gnu_cxx13new_allocatorI6BigIntEC2Ev(%"class.std::ios_base::Init"* %0) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorI6BigIntEC2Ev(%"class.std::ios_base::Init"* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::Init"*, align 8
  store %"class.std::ios_base::Init"* %this, %"class.std::ios_base::Init"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::Init"*, %"class.std::ios_base::Init"** %this.addr, align 8
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn }
attributes #14 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
