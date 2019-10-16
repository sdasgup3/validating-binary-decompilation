; ModuleID = 'stepanov_vector/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.one_result = type { double, i8* }
%"class.std::reverse_iterator" = type { double* }
%"class.std::reverse_iterator.0" = type { [8 x i8], %"class.std::reverse_iterator" }
%"struct.std::iterator" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl" = type { double*, double*, double* }
%"class.std::reverse_iterator.1" = type { %"class.std::reverse_iterator" }
%"class.std::reverse_iterator.2" = type { [8 x i8], %"class.std::reverse_iterator.1" }

$_ZNSt16reverse_iteratorIPdEC2ERKS1_ = comdat any

$_ZNSt16reverse_iteratorIS_IPdEEC2ES1_ = comdat any

$_ZNSt16reverse_iteratorIPdEC2ES0_ = comdat any

$_ZN9benchmark4fillIPddEEvT_S2_T0_ = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEmd = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_ = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_ = comdat any

$_ZNSt6vectorIdSaIdEE4rendEv = comdat any

$_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_ = comdat any

$_ZNSt6vectorIdSaIdEE6rbeginEv = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_ = comdat any

$_Z15test_accumulateIPddEvT_S1_T0_PKc = comdat any

$_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc = comdat any

$_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc = comdat any

$_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc = comdat any

$_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_ = comdat any

$_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc = comdat any

$_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_ = comdat any

$_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc = comdat any

$_ZN9benchmark11fill_randomIPddEEvT_S2_ = comdat any

$_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_ = comdat any

$_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc = comdat any

$_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc = comdat any

$_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc = comdat any

$_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc = comdat any

$_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc = comdat any

$_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc = comdat any

$_Z14test_quicksortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc = comdat any

$_Z14test_quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc = comdat any

$_Z14test_quicksortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc = comdat any

$_Z14test_quicksortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc = comdat any

$_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc = comdat any

$_Z14test_heap_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc = comdat any

$_Z14test_heap_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc = comdat any

$_Z14test_heap_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc = comdat any

$_Z14test_heap_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev = comdat any

$_ZNSaIdED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdED2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_ = comdat any

$_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ = comdat any

$_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_ = comdat any

$_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_ = comdat any

$_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi = comdat any

$_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_ = comdat any

$_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv = comdat any

$_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv = comdat any

$_ZSteqISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_ = comdat any

$_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv = comdat any

$_ZSteqIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_ = comdat any

$_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv = comdat any

$_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZStmiISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEENS0_IT_E15difference_typeERKSA_SD_ = comdat any

$_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl = comdat any

$_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_ = comdat any

$_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZStmiIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt16reverse_iteratorIT_E15difference_typeERKS9_SC_ = comdat any

$_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_ = comdat any

$_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ = comdat any

$_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_ = comdat any

$_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_ = comdat any

$_ZNSt16reverse_iteratorIS_IPdEEppEi = comdat any

$_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_ = comdat any

$_ZNKSt16reverse_iteratorIS_IPdEEdeEv = comdat any

$_ZNSt16reverse_iteratorIPdEmmEv = comdat any

$_ZNKSt16reverse_iteratorIPdEdeEv = comdat any

$_ZSteqISt16reverse_iteratorIPdEEbRKS0_IT_ES6_ = comdat any

$_ZNKSt16reverse_iteratorIS_IPdEE4baseEv = comdat any

$_ZSteqIPdEbRKSt16reverse_iteratorIT_ES5_ = comdat any

$_ZNKSt16reverse_iteratorIPdE4baseEv = comdat any

$_ZStmiISt16reverse_iteratorIPdEENS0_IT_E15difference_typeERKS4_S7_ = comdat any

$_ZNKSt16reverse_iteratorIS_IPdEEplEl = comdat any

$_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_ = comdat any

$_ZNKSt16reverse_iteratorIPdEmiEl = comdat any

$_ZStmiIPdENSt16reverse_iteratorIT_E15difference_typeERKS3_S6_ = comdat any

$_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_ = comdat any

$_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ = comdat any

$_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_ = comdat any

$_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_ = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi = comdat any

$_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_ = comdat any

$_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl = comdat any

$_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl = comdat any

$_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_ = comdat any

$_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_ = comdat any

$_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_ = comdat any

$_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_ = comdat any

$_ZNSt16reverse_iteratorIPdEppEi = comdat any

$_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_ = comdat any

$_ZNKSt16reverse_iteratorIPdEplEl = comdat any

$_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_ = comdat any

$_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_ = comdat any

$_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ = comdat any

$_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_ = comdat any

$_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi = comdat any

$_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_ = comdat any

$_ZN9benchmark4copyIPdS1_EEvT_S2_T0_ = comdat any

$_ZN9benchmark8heapsortIPddEEvT_S2_ = comdat any

$_Z13verify_sortedIPdEvT_S1_ = comdat any

$_ZN9benchmark9is_sortedIPdEEbT_S2_ = comdat any

$_ZN9benchmark7sift_inIPddEEvlT_lT0_ = comdat any

$_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ = comdat any

$_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEmmEv = comdat any

$_ZStltISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_ = comdat any

$_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEv = comdat any

$_ZStltIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_ = comdat any

$_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEv = comdat any

$_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ = comdat any

$_ZNSt16reverse_iteratorIS_IPdEEmmEv = comdat any

$_ZStltISt16reverse_iteratorIPdEEbRKS0_IT_ES6_ = comdat any

$_ZNSt16reverse_iteratorIS_IPdEEppEv = comdat any

$_ZStltIPdEbRKSt16reverse_iteratorIT_ES5_ = comdat any

$_ZNSt16reverse_iteratorIPdEppEv = comdat any

$_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ = comdat any

$_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_ = comdat any

$_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ = comdat any

$_ZN9benchmark9quicksortIPddEEvT_S2_ = comdat any

$_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ = comdat any

$_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ = comdat any

$_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ = comdat any

$_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_ = comdat any

$_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ = comdat any

$_ZN9benchmark13insertionSortIPddEEvT_S2_ = comdat any

$_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_ = comdat any

$_Z9check_sumd = comdat any

$_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_ = comdat any

$_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_ = comdat any

$_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_ = comdat any

$_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_ = comdat any

$_ZN9benchmark10accumulateIPddEET0_T_S3_S2_ = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_ = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_ = comdat any

$_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdEC2Ev = comdat any

@results = global %struct.one_result* null, align 8
@current_test = global i32 0, align 4
@allocated_results = global i32 0, align 4
@start_time = global i64 0, align 8
@end_time = global i64 0, align 8
@iterations = global i32 60000, align 4
@init_value = global double 3.000000e+00, align 8
@data = global [2000 x double] zeroinitializer, align 16
@dataMaster = global [2000 x double] zeroinitializer, align 16
@dpb = global double* getelementptr inbounds ([2000 x double], [2000 x double]* @data, i32 0, i32 0), align 8
@dpe = global double* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x double]* @data to i8*), i64 16000) to double*), align 8
@dMpb = global double* getelementptr inbounds ([2000 x double], [2000 x double]* @dataMaster, i32 0, i32 0), align 8
@dMpe = global double* bitcast (i8* getelementptr (i8, i8* bitcast ([2000 x double]* @dataMaster to i8*), i64 16000) to double*), align 8
@rdpb = global %"class.std::reverse_iterator" zeroinitializer, align 8
@rdpe = global %"class.std::reverse_iterator" zeroinitializer, align 8
@rdMpb = global %"class.std::reverse_iterator" zeroinitializer, align 8
@rdMpe = global %"class.std::reverse_iterator" zeroinitializer, align 8
@rrdpb = global %"class.std::reverse_iterator.0" zeroinitializer, align 8
@rrdpe = global %"class.std::reverse_iterator.0" zeroinitializer, align 8
@rrdMpb = global %"class.std::reverse_iterator.0" zeroinitializer, align 8
@rrdMpe = global %"class.std::reverse_iterator.0" zeroinitializer, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_stepanov_vector.cpp, i8* null }]
@.str = private unnamed_addr constant [31 x i8] c"Could not allocate %d results\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\0Atest %*s description   absolute   operations   ratio with\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"number %*s time       per second   test0\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%2i %*s\22%s\22  %5.2f sec   %5.2f M     %.2f\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\0ATotal absolute time for %s: %.2f sec\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A%s Penalty: %.2f\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\0Atest %*s description   absolute\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"number %*s time\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%2i %*s\22%s\22  %5.2f sec\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"double pointer verify2\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"double vector iterator\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"double pointer reverse\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"double vector reverse_iterator\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"double vector iterator reverse\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"double pointer reverse reverse\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"double vector reverse_iterator reverse\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"double vector iterator reverse reverse\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"insertion_sort double pointer verify2\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"insertion_sort double vector iterator\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"insertion_sort double pointer reverse\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"insertion_sort double vector reverse_iterator\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"insertion_sort double vector iterator reverse\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"insertion_sort double pointer reverse reverse\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"insertion_sort double vector reverse_iterator reverse\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"insertion_sort double vector iterator reverse reverse\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"quicksort double pointer verify2\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"quicksort double vector iterator\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"quicksort double pointer reverse\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"quicksort double vector reverse_iterator\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"quicksort double vector iterator reverse\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"quicksort double pointer reverse reverse\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"quicksort double vector reverse_iterator reverse\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"quicksort double vector iterator reverse reverse\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"heap_sort double pointer verify2\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"heap_sort double vector iterator\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"heap_sort double pointer reverse\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"heap_sort double vector reverse_iterator\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"heap_sort double vector iterator reverse\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"heap_sort double pointer reverse reverse\00", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"heap_sort double vector reverse_iterator reverse\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"heap_sort double vector iterator reverse reverse\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"sort test %i failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_stepanov_vector.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.11()
  call void @__cxx_global_var_init.12()
  call void @__cxx_global_var_init.13()
  call void @__cxx_global_var_init.14()
  call void @__cxx_global_var_init.15()
  call void @__cxx_global_var_init.16()
  call void @__cxx_global_var_init.17()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpe, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* @rdpb, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.11() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dpb, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* @rdpe, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.12() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dMpe, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* @rdMpb, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.13() #0 section ".text.startup" {
entry:
  %0 = load double*, double** @dMpb, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* @rdMpe, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.14() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) @rdpe)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ES1_(%"class.std::reverse_iterator.0"* @rrdpb, %"class.std::reverse_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.15() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) @rdpb)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ES1_(%"class.std::reverse_iterator.0"* @rrdpe, %"class.std::reverse_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.16() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpe)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ES1_(%"class.std::reverse_iterator.0"* @rrdMpb, %"class.std::reverse_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.17() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpb)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ES1_(%"class.std::reverse_iterator.0"* @rrdMpe, %"class.std::reverse_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"* dereferenceable(8) %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__x.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store %"class.std::reverse_iterator"* %__x, %"class.std::reverse_iterator"** %__x.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__x.addr, align 8
  %current2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %1, i32 0, i32 0
  %2 = load double*, double** %current2, align 8
  store double* %2, double** %current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIS_IPdEEC2ES1_(%"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator"* %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator.0"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %current, %"class.std::reverse_iterator"* dereferenceable(8) %__x)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* %this, double* %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__x.addr = alloca double*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %1 = load double*, double** %__x.addr, align 8
  store double* %1, double** %current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z13record_resultdPKc(double %time, i8* %label) #0 {
entry:
  %time.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  store double %time, double* %time.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  %0 = load %struct.one_result*, %struct.one_result** @results, align 8
  %cmp = icmp eq %struct.one_result* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @current_test, align 4
  %2 = load i32, i32* @allocated_results, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end5

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @allocated_results, align 4
  %add = add nsw i32 %3, 10
  store i32 %add, i32* @allocated_results, align 4
  %4 = load %struct.one_result*, %struct.one_result** @results, align 8
  %5 = bitcast %struct.one_result* %4 to i8*
  %6 = load i32, i32* @allocated_results, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @realloc(i8* %5, i64 %mul) #12
  %7 = bitcast i8* %call to %struct.one_result*
  store %struct.one_result* %7, %struct.one_result** @results, align 8
  %8 = load %struct.one_result*, %struct.one_result** @results, align 8
  %cmp2 = icmp eq %struct.one_result* %8, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load i32, i32* @allocated_results, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 %9)
  call void @exit(i32 -1) #13
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %lor.lhs.false
  %10 = load double, double* %time.addr, align 8
  %11 = load %struct.one_result*, %struct.one_result** @results, align 8
  %12 = load i32, i32* @current_test, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.one_result, %struct.one_result* %11, i64 %idxprom
  %time6 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx, i32 0, i32 0
  store double %10, double* %time6, align 8
  %13 = load i8*, i8** %label.addr, align 8
  %14 = load %struct.one_result*, %struct.one_result** @results, align 8
  %15 = load i32, i32* @current_test, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds %struct.one_result, %struct.one_result* %14, i64 %idxprom7
  %label9 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx8, i32 0, i32 1
  store i8* %13, i8** %label9, align 8
  %16 = load i32, i32* @current_test, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @current_test, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline uwtable
define void @_Z9summarizePKciiii(i8* %name, i32 %size, i32 %iterations, i32 %show_gmeans, i32 %show_penalty) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %iterations.addr = alloca i32, align 4
  %show_gmeans.addr = alloca i32, align 4
  %show_penalty.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %millions = alloca double, align 8
  %total_absolute_times = alloca double, align 8
  %gmean_ratio = alloca double, align 8
  %longest_label_len = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %iterations, i32* %iterations.addr, align 4
  store i32 %show_gmeans, i32* %show_gmeans.addr, align 4
  store i32 %show_penalty, i32* %show_penalty.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %iterations.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %mul = fmul double %conv, %conv1
  %div = fdiv double %mul, 1.000000e+06
  store double %div, double* %millions, align 8
  store double 0.000000e+00, double* %total_absolute_times, align 8
  store double 0.000000e+00, double* %gmean_ratio, align 8
  store i32 12, i32* %longest_label_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @current_test, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.one_result*, %struct.one_result** @results, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.one_result, %struct.one_result* %4, i64 %idxprom
  %label = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx, i32 0, i32 1
  %6 = load i8*, i8** %label, align 8
  %call = call i64 @strlen(i8* %6) #14
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %len, align 4
  %7 = load i32, i32* %len, align 4
  %8 = load i32, i32* %longest_label_len, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %len, align 4
  store i32 %9, i32* %longest_label_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %longest_label_len, align 4
  %sub = sub nsw i32 %11, 12
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %12 = load i32, i32* %longest_label_len, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc32, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @current_test, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body8, label %for.end34

for.body8:                                        ; preds = %for.cond6
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %longest_label_len, align 4
  %conv9 = sext i32 %16 to i64
  %17 = load %struct.one_result*, %struct.one_result** @results, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds %struct.one_result, %struct.one_result* %17, i64 %idxprom10
  %label12 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx11, i32 0, i32 1
  %19 = load i8*, i8** %label12, align 8
  %call13 = call i64 @strlen(i8* %19) #14
  %sub14 = sub i64 %conv9, %call13
  %conv15 = trunc i64 %sub14 to i32
  %20 = load %struct.one_result*, %struct.one_result** @results, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds %struct.one_result, %struct.one_result* %20, i64 %idxprom16
  %label18 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx17, i32 0, i32 1
  %22 = load i8*, i8** %label18, align 8
  %23 = load %struct.one_result*, %struct.one_result** @results, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds %struct.one_result, %struct.one_result* %23, i64 %idxprom19
  %time = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx20, i32 0, i32 0
  %25 = load double, double* %time, align 8
  %26 = load double, double* %millions, align 8
  %27 = load %struct.one_result*, %struct.one_result** @results, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds %struct.one_result, %struct.one_result* %27, i64 %idxprom21
  %time23 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx22, i32 0, i32 0
  %29 = load double, double* %time23, align 8
  %div24 = fdiv double %26, %29
  %30 = load %struct.one_result*, %struct.one_result** @results, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds %struct.one_result, %struct.one_result* %30, i64 %idxprom25
  %time27 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx26, i32 0, i32 0
  %32 = load double, double* %time27, align 8
  %33 = load %struct.one_result*, %struct.one_result** @results, align 8
  %arrayidx28 = getelementptr inbounds %struct.one_result, %struct.one_result* %33, i64 0
  %time29 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx28, i32 0, i32 0
  %34 = load double, double* %time29, align 8
  %div30 = fdiv double %32, %34
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i32 %15, i32 %conv15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* %22, double %25, double %div24, double %div30)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body8
  %35 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %35, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond6

for.end34:                                        ; preds = %for.cond6
  store i32 0, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc41, %for.end34
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* @current_test, align 4
  %cmp36 = icmp slt i32 %36, %37
  br i1 %cmp36, label %for.body37, label %for.end43

for.body37:                                       ; preds = %for.cond35
  %38 = load %struct.one_result*, %struct.one_result** @results, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds %struct.one_result, %struct.one_result* %38, i64 %idxprom38
  %time40 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx39, i32 0, i32 0
  %40 = load double, double* %time40, align 8
  %41 = load double, double* %total_absolute_times, align 8
  %add = fadd double %41, %40
  store double %add, double* %total_absolute_times, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body37
  %42 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %42, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond35

for.end43:                                        ; preds = %for.cond35
  %43 = load i8*, i8** %name.addr, align 8
  %44 = load double, double* %total_absolute_times, align 8
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* %43, double %44)
  %45 = load i32, i32* @current_test, align 4
  %cmp45 = icmp sgt i32 %45, 1
  br i1 %cmp45, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %for.end43
  %46 = load i32, i32* %show_penalty.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then46, label %if.end66

if.then46:                                        ; preds = %land.lhs.true
  store i32 1, i32* %i, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc58, %if.then46
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* @current_test, align 4
  %cmp48 = icmp slt i32 %47, %48
  br i1 %cmp48, label %for.body49, label %for.end60

for.body49:                                       ; preds = %for.cond47
  %49 = load %struct.one_result*, %struct.one_result** @results, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds %struct.one_result, %struct.one_result* %49, i64 %idxprom50
  %time52 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx51, i32 0, i32 0
  %51 = load double, double* %time52, align 8
  %52 = load %struct.one_result*, %struct.one_result** @results, align 8
  %arrayidx53 = getelementptr inbounds %struct.one_result, %struct.one_result* %52, i64 0
  %time54 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx53, i32 0, i32 0
  %53 = load double, double* %time54, align 8
  %div55 = fdiv double %51, %53
  %call56 = call double @log(double %div55) #12
  %54 = load double, double* %gmean_ratio, align 8
  %add57 = fadd double %54, %call56
  store double %add57, double* %gmean_ratio, align 8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body49
  %55 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond47

for.end60:                                        ; preds = %for.cond47
  %56 = load i8*, i8** %name.addr, align 8
  %57 = load double, double* %gmean_ratio, align 8
  %58 = load i32, i32* @current_test, align 4
  %sub61 = sub nsw i32 %58, 1
  %conv62 = sitofp i32 %sub61 to double
  %div63 = fdiv double %57, %conv62
  %call64 = call double @exp(double %div63) #12
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %56, double %call64)
  br label %if.end66

if.end66:                                         ; preds = %for.end60, %land.lhs.true, %for.end43
  store i32 0, i32* @current_test, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: noinline uwtable
define void @_Z17summarize_simplefP8_IO_FILEPKc(%struct._IO_FILE* %output, i8* %name) #0 {
entry:
  %output.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %total_absolute_times = alloca double, align 8
  %longest_label_len = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct._IO_FILE* %output, %struct._IO_FILE** %output.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store double 0.000000e+00, double* %total_absolute_times, align 8
  store i32 12, i32* %longest_label_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @current_test, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.one_result*, %struct.one_result** @results, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.one_result, %struct.one_result* %2, i64 %idxprom
  %label = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx, i32 0, i32 1
  %4 = load i8*, i8** %label, align 8
  %call = call i64 @strlen(i8* %4) #14
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %6 = load i32, i32* %longest_label_len, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %len, align 4
  store i32 %7, i32* %longest_label_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %10 = load i32, i32* %longest_label_len, align 4
  %sub = sub nsw i32 %10, 12
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i32 %sub, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %12 = load i32, i32* %longest_label_len, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc20, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @current_test, align 4
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body6, label %for.end22

for.body6:                                        ; preds = %for.cond4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %longest_label_len, align 4
  %conv7 = sext i32 %17 to i64
  %18 = load %struct.one_result*, %struct.one_result** @results, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds %struct.one_result, %struct.one_result* %18, i64 %idxprom8
  %label10 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx9, i32 0, i32 1
  %20 = load i8*, i8** %label10, align 8
  %call11 = call i64 @strlen(i8* %20) #14
  %sub12 = sub i64 %conv7, %call11
  %conv13 = trunc i64 %sub12 to i32
  %21 = load %struct.one_result*, %struct.one_result** @results, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds %struct.one_result, %struct.one_result* %21, i64 %idxprom14
  %label16 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx15, i32 0, i32 1
  %23 = load i8*, i8** %label16, align 8
  %24 = load %struct.one_result*, %struct.one_result** @results, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds %struct.one_result, %struct.one_result* %24, i64 %idxprom17
  %time = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx18, i32 0, i32 0
  %26 = load double, double* %time, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 %16, i32 %conv13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* %23, double %26)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body6
  %27 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond4

for.end22:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc29, %for.end22
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* @current_test, align 4
  %cmp24 = icmp slt i32 %28, %29
  br i1 %cmp24, label %for.body25, label %for.end31

for.body25:                                       ; preds = %for.cond23
  %30 = load %struct.one_result*, %struct.one_result** @results, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds %struct.one_result, %struct.one_result* %30, i64 %idxprom26
  %time28 = getelementptr inbounds %struct.one_result, %struct.one_result* %arrayidx27, i32 0, i32 0
  %32 = load double, double* %time28, align 8
  %33 = load double, double* %total_absolute_times, align 8
  %add = fadd double %33, %32
  store double %add, double* %total_absolute_times, align 8
  br label %for.inc29

for.inc29:                                        ; preds = %for.body25
  %34 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond23

for.end31:                                        ; preds = %for.cond23
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %output.addr, align 8
  %36 = load i8*, i8** %name.addr, align 8
  %37 = load double, double* %total_absolute_times, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i8* %36, double %37)
  store i32 0, i32* @current_test, align 4
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @_Z11start_timerv() #1 {
entry:
  %call = call i64 @clock() #12
  store i64 %call, i64* @start_time, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: noinline nounwind uwtable
define double @_Z5timerv() #1 {
entry:
  %call = call i64 @clock() #12
  store i64 %call, i64* @end_time, align 8
  %0 = load i64, i64* @end_time, align 8
  %1 = load i64, i64* @start_time, align 8
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  ret double %div
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %dZero = alloca double, align 8
  %vec_data = alloca %"class.std::vector", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp8 = alloca %"class.std::reverse_iterator", align 8
  %rtvdpb = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp15 = alloca %"class.std::reverse_iterator", align 8
  %rtvdpe = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp21 = alloca %"class.std::reverse_iterator", align 8
  %rtrvdpb = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp27 = alloca %"class.std::reverse_iterator.1", align 8
  %rtrvdpe = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp30 = alloca %"class.std::reverse_iterator.1", align 8
  %rtrtvdpb = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp33 = alloca %"class.std::reverse_iterator.1", align 8
  %rtrtvdpe = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp36 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp40 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp44 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp51 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp53 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp56 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp58 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp61 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp63 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp66 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp68 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp71 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp73 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp76 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp78 = alloca %"class.std::reverse_iterator.2", align 8
  %vec_dataMaster = alloca %"class.std::vector", align 8
  %agg.tmp85 = alloca %"class.std::reverse_iterator", align 8
  %rtvdMpb = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp91 = alloca %"class.std::reverse_iterator", align 8
  %rtvdMpe = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp97 = alloca %"class.std::reverse_iterator", align 8
  %rtrvdMpb = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp103 = alloca %"class.std::reverse_iterator.1", align 8
  %rtrvdMpe = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp106 = alloca %"class.std::reverse_iterator.1", align 8
  %rtrtvdMpb = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp109 = alloca %"class.std::reverse_iterator.1", align 8
  %rtrtvdMpe = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp112 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp116 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp120 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp124 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp128 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp137 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp139 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp141 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp143 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp146 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp148 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp150 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp152 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp155 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp157 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp159 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp161 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp164 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp166 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp168 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp170 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp173 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp175 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp177 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp179 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp182 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp184 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp186 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp188 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp192 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp196 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp200 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp204 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp213 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp215 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp217 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp219 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp222 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp224 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp226 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp228 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp231 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp233 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp235 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp237 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp240 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp242 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp244 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp246 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp249 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp251 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp253 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp255 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp258 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp260 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp262 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp264 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp268 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp272 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp276 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp280 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp289 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp291 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp293 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp295 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp298 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp300 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp302 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp304 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp307 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp309 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp311 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp313 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp316 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp318 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp320 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp322 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp325 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp327 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp329 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp331 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp334 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp336 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp338 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp340 = alloca %"class.std::reverse_iterator.2", align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0.000000e+00, double* %dZero, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #14
  store i32 %call, i32* @iterations, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call double @atof(i8* %5) #14
  store double %call4, double* @init_value, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load double, double* @init_value, align 8
  %conv = fptosi double %6 to i32
  %add = add nsw i32 %conv, 123
  call void @srand(i32 %add) #12
  %7 = load double*, double** @dpb, align 8
  %8 = load double*, double** @dpe, align 8
  %9 = load double, double* @init_value, align 8
  call void @_ZN9benchmark4fillIPddEEvT_S2_T0_(double* %7, double* %8, double %9)
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %vec_data)
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %vec_data, i64 2000, double 0.000000e+00)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end5
  %call7 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call7, double** %coerce.dive, align 8
  %call10 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont6
  %coerce.dive11 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp8, i32 0, i32 0
  store double* %call10, double** %coerce.dive11, align 8
  %10 = load double, double* @init_value, align 8
  %coerce.dive12 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %11 = load double*, double** %coerce.dive12, align 8
  %coerce.dive13 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp8, i32 0, i32 0
  %12 = load double*, double** %coerce.dive13, align 8
  invoke void @_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_(double* %11, double* %12, double %10)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont9
  %call17 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont14
  %coerce.dive18 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp15, i32 0, i32 0
  store double* %call17, double** %coerce.dive18, align 8
  %coerce.dive19 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp15, i32 0, i32 0
  %13 = load double*, double** %coerce.dive19, align 8
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %rtvdpb, double* %13)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont16
  %call23 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont22 unwind label %lpad

invoke.cont22:                                    ; preds = %invoke.cont20
  %coerce.dive24 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp21, i32 0, i32 0
  store double* %call23, double** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp21, i32 0, i32 0
  %14 = load double*, double** %coerce.dive25, align 8
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %rtvdpe, double* %14)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %invoke.cont22
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp27, %"class.std::vector"* %vec_data)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %invoke.cont26
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrvdpb, %"class.std::reverse_iterator.1"* %agg.tmp27)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont28
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp30, %"class.std::vector"* %vec_data)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont29
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrvdpe, %"class.std::reverse_iterator.1"* %agg.tmp30)
          to label %invoke.cont32 unwind label %lpad

invoke.cont32:                                    ; preds = %invoke.cont31
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp33, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpe)
          to label %invoke.cont34 unwind label %lpad

invoke.cont34:                                    ; preds = %invoke.cont32
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrtvdpb, %"class.std::reverse_iterator.1"* %agg.tmp33)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %invoke.cont34
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp36, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpb)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont35
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrtvdpe, %"class.std::reverse_iterator.1"* %agg.tmp36)
          to label %invoke.cont38 unwind label %lpad

invoke.cont38:                                    ; preds = %invoke.cont37
  %15 = load double*, double** @dpb, align 8
  %16 = load double*, double** @dpe, align 8
  %17 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateIPddEvT_S1_T0_PKc(double* %15, double* %16, double %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont38
  %call42 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont41 unwind label %lpad

invoke.cont41:                                    ; preds = %invoke.cont39
  %coerce.dive43 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp40, i32 0, i32 0
  store double* %call42, double** %coerce.dive43, align 8
  %call46 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont45 unwind label %lpad

invoke.cont45:                                    ; preds = %invoke.cont41
  %coerce.dive47 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp44, i32 0, i32 0
  store double* %call46, double** %coerce.dive47, align 8
  %18 = load double, double* %dZero, align 8
  %coerce.dive48 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp40, i32 0, i32 0
  %19 = load double*, double** %coerce.dive48, align 8
  %coerce.dive49 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp44, i32 0, i32 0
  %20 = load double*, double** %coerce.dive49, align 8
  invoke void @_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc(double* %19, double* %20, double %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0))
          to label %invoke.cont50 unwind label %lpad

invoke.cont50:                                    ; preds = %invoke.cont45
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp51, %"class.std::reverse_iterator"* dereferenceable(8) @rdpb)
          to label %invoke.cont52 unwind label %lpad

invoke.cont52:                                    ; preds = %invoke.cont50
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp53, %"class.std::reverse_iterator"* dereferenceable(8) @rdpe)
          to label %invoke.cont54 unwind label %lpad

invoke.cont54:                                    ; preds = %invoke.cont52
  %21 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc(%"class.std::reverse_iterator"* %agg.tmp51, %"class.std::reverse_iterator"* %agg.tmp53, double %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
          to label %invoke.cont55 unwind label %lpad

invoke.cont55:                                    ; preds = %invoke.cont54
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp56, %"class.std::vector"* %vec_data)
          to label %invoke.cont57 unwind label %lpad

invoke.cont57:                                    ; preds = %invoke.cont55
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp58, %"class.std::vector"* %vec_data)
          to label %invoke.cont59 unwind label %lpad

invoke.cont59:                                    ; preds = %invoke.cont57
  %22 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp56, %"class.std::reverse_iterator.1"* %agg.tmp58, double %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0))
          to label %invoke.cont60 unwind label %lpad

invoke.cont60:                                    ; preds = %invoke.cont59
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp61, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpb)
          to label %invoke.cont62 unwind label %lpad

invoke.cont62:                                    ; preds = %invoke.cont60
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp63, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpe)
          to label %invoke.cont64 unwind label %lpad

invoke.cont64:                                    ; preds = %invoke.cont62
  %23 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp61, %"class.std::reverse_iterator.1"* %agg.tmp63, double %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0))
          to label %invoke.cont65 unwind label %lpad

invoke.cont65:                                    ; preds = %invoke.cont64
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp66, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpb)
          to label %invoke.cont67 unwind label %lpad

invoke.cont67:                                    ; preds = %invoke.cont65
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp68, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpe)
          to label %invoke.cont69 unwind label %lpad

invoke.cont69:                                    ; preds = %invoke.cont67
  %24 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc(%"class.std::reverse_iterator.0"* %agg.tmp66, %"class.std::reverse_iterator.0"* %agg.tmp68, double %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0))
          to label %invoke.cont70 unwind label %lpad

invoke.cont70:                                    ; preds = %invoke.cont69
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp71, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpb)
          to label %invoke.cont72 unwind label %lpad

invoke.cont72:                                    ; preds = %invoke.cont70
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp73, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpe)
          to label %invoke.cont74 unwind label %lpad

invoke.cont74:                                    ; preds = %invoke.cont72
  %25 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp71, %"class.std::reverse_iterator.2"* %agg.tmp73, double %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
          to label %invoke.cont75 unwind label %lpad

invoke.cont75:                                    ; preds = %invoke.cont74
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp76, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpb)
          to label %invoke.cont77 unwind label %lpad

invoke.cont77:                                    ; preds = %invoke.cont75
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp78, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpe)
          to label %invoke.cont79 unwind label %lpad

invoke.cont79:                                    ; preds = %invoke.cont77
  %26 = load double, double* %dZero, align 8
  invoke void @_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp76, %"class.std::reverse_iterator.2"* %agg.tmp78, double %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0))
          to label %invoke.cont80 unwind label %lpad

invoke.cont80:                                    ; preds = %invoke.cont79
  %27 = load i32, i32* @iterations, align 4
  %div = sdiv i32 %27, 1000
  store i32 %div, i32* @iterations, align 4
  invoke void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont81 unwind label %lpad

invoke.cont81:                                    ; preds = %invoke.cont80
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %vec_dataMaster, i64 2000, double 0.000000e+00)
          to label %invoke.cont83 unwind label %lpad82

invoke.cont83:                                    ; preds = %invoke.cont81
  %28 = load double*, double** @dMpb, align 8
  %29 = load double*, double** @dMpe, align 8
  invoke void @_ZN9benchmark11fill_randomIPddEEvT_S2_(double* %28, double* %29)
          to label %invoke.cont84 unwind label %lpad82

invoke.cont84:                                    ; preds = %invoke.cont83
  %30 = load double*, double** @dMpb, align 8
  %31 = load double*, double** @dMpe, align 8
  %call87 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont86 unwind label %lpad82

invoke.cont86:                                    ; preds = %invoke.cont84
  %coerce.dive88 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp85, i32 0, i32 0
  store double* %call87, double** %coerce.dive88, align 8
  %coerce.dive89 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp85, i32 0, i32 0
  %32 = load double*, double** %coerce.dive89, align 8
  invoke void @_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_(double* %30, double* %31, double* %32)
          to label %invoke.cont90 unwind label %lpad82

invoke.cont90:                                    ; preds = %invoke.cont86
  %call93 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont92 unwind label %lpad82

invoke.cont92:                                    ; preds = %invoke.cont90
  %coerce.dive94 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp91, i32 0, i32 0
  store double* %call93, double** %coerce.dive94, align 8
  %coerce.dive95 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp91, i32 0, i32 0
  %33 = load double*, double** %coerce.dive95, align 8
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %rtvdMpb, double* %33)
          to label %invoke.cont96 unwind label %lpad82

invoke.cont96:                                    ; preds = %invoke.cont92
  %call99 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont98 unwind label %lpad82

invoke.cont98:                                    ; preds = %invoke.cont96
  %coerce.dive100 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp97, i32 0, i32 0
  store double* %call99, double** %coerce.dive100, align 8
  %coerce.dive101 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp97, i32 0, i32 0
  %34 = load double*, double** %coerce.dive101, align 8
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %rtvdMpe, double* %34)
          to label %invoke.cont102 unwind label %lpad82

invoke.cont102:                                   ; preds = %invoke.cont98
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp103, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont104 unwind label %lpad82

invoke.cont104:                                   ; preds = %invoke.cont102
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrvdMpb, %"class.std::reverse_iterator.1"* %agg.tmp103)
          to label %invoke.cont105 unwind label %lpad82

invoke.cont105:                                   ; preds = %invoke.cont104
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp106, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont107 unwind label %lpad82

invoke.cont107:                                   ; preds = %invoke.cont105
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrvdMpe, %"class.std::reverse_iterator.1"* %agg.tmp106)
          to label %invoke.cont108 unwind label %lpad82

invoke.cont108:                                   ; preds = %invoke.cont107
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp109, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpe)
          to label %invoke.cont110 unwind label %lpad82

invoke.cont110:                                   ; preds = %invoke.cont108
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrtvdMpb, %"class.std::reverse_iterator.1"* %agg.tmp109)
          to label %invoke.cont111 unwind label %lpad82

invoke.cont111:                                   ; preds = %invoke.cont110
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp112, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpb)
          to label %invoke.cont113 unwind label %lpad82

invoke.cont113:                                   ; preds = %invoke.cont111
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %rtrtvdMpe, %"class.std::reverse_iterator.1"* %agg.tmp112)
          to label %invoke.cont114 unwind label %lpad82

invoke.cont114:                                   ; preds = %invoke.cont113
  %35 = load double*, double** @dMpb, align 8
  %36 = load double*, double** @dMpe, align 8
  %37 = load double*, double** @dpb, align 8
  %38 = load double*, double** @dpe, align 8
  %39 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(double* %35, double* %36, double* %37, double* %38, double %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0))
          to label %invoke.cont115 unwind label %lpad82

invoke.cont115:                                   ; preds = %invoke.cont114
  %call118 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont117 unwind label %lpad82

invoke.cont117:                                   ; preds = %invoke.cont115
  %coerce.dive119 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp116, i32 0, i32 0
  store double* %call118, double** %coerce.dive119, align 8
  %call122 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont121 unwind label %lpad82

invoke.cont121:                                   ; preds = %invoke.cont117
  %coerce.dive123 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp120, i32 0, i32 0
  store double* %call122, double** %coerce.dive123, align 8
  %call126 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont125 unwind label %lpad82

invoke.cont125:                                   ; preds = %invoke.cont121
  %coerce.dive127 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp124, i32 0, i32 0
  store double* %call126, double** %coerce.dive127, align 8
  %call130 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont129 unwind label %lpad82

invoke.cont129:                                   ; preds = %invoke.cont125
  %coerce.dive131 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp128, i32 0, i32 0
  store double* %call130, double** %coerce.dive131, align 8
  %40 = load double, double* %dZero, align 8
  %coerce.dive132 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp116, i32 0, i32 0
  %41 = load double*, double** %coerce.dive132, align 8
  %coerce.dive133 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp120, i32 0, i32 0
  %42 = load double*, double** %coerce.dive133, align 8
  %coerce.dive134 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp124, i32 0, i32 0
  %43 = load double*, double** %coerce.dive134, align 8
  %coerce.dive135 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp128, i32 0, i32 0
  %44 = load double*, double** %coerce.dive135, align 8
  invoke void @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %41, double* %42, double* %43, double* %44, double %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0))
          to label %invoke.cont136 unwind label %lpad82

invoke.cont136:                                   ; preds = %invoke.cont129
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp137, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpb)
          to label %invoke.cont138 unwind label %lpad82

invoke.cont138:                                   ; preds = %invoke.cont136
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp139, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpe)
          to label %invoke.cont140 unwind label %lpad82

invoke.cont140:                                   ; preds = %invoke.cont138
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp141, %"class.std::reverse_iterator"* dereferenceable(8) @rdpb)
          to label %invoke.cont142 unwind label %lpad82

invoke.cont142:                                   ; preds = %invoke.cont140
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp143, %"class.std::reverse_iterator"* dereferenceable(8) @rdpe)
          to label %invoke.cont144 unwind label %lpad82

invoke.cont144:                                   ; preds = %invoke.cont142
  %45 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc(%"class.std::reverse_iterator"* %agg.tmp137, %"class.std::reverse_iterator"* %agg.tmp139, %"class.std::reverse_iterator"* %agg.tmp141, %"class.std::reverse_iterator"* %agg.tmp143, double %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0))
          to label %invoke.cont145 unwind label %lpad82

invoke.cont145:                                   ; preds = %invoke.cont144
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp146, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont147 unwind label %lpad82

invoke.cont147:                                   ; preds = %invoke.cont145
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp148, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont149 unwind label %lpad82

invoke.cont149:                                   ; preds = %invoke.cont147
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp150, %"class.std::vector"* %vec_data)
          to label %invoke.cont151 unwind label %lpad82

invoke.cont151:                                   ; preds = %invoke.cont149
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp152, %"class.std::vector"* %vec_data)
          to label %invoke.cont153 unwind label %lpad82

invoke.cont153:                                   ; preds = %invoke.cont151
  %46 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp146, %"class.std::reverse_iterator.1"* %agg.tmp148, %"class.std::reverse_iterator.1"* %agg.tmp150, %"class.std::reverse_iterator.1"* %agg.tmp152, double %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i32 0, i32 0))
          to label %invoke.cont154 unwind label %lpad82

invoke.cont154:                                   ; preds = %invoke.cont153
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp155, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpb)
          to label %invoke.cont156 unwind label %lpad82

invoke.cont156:                                   ; preds = %invoke.cont154
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp157, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpe)
          to label %invoke.cont158 unwind label %lpad82

invoke.cont158:                                   ; preds = %invoke.cont156
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp159, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpb)
          to label %invoke.cont160 unwind label %lpad82

invoke.cont160:                                   ; preds = %invoke.cont158
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp161, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpe)
          to label %invoke.cont162 unwind label %lpad82

invoke.cont162:                                   ; preds = %invoke.cont160
  %47 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp155, %"class.std::reverse_iterator.1"* %agg.tmp157, %"class.std::reverse_iterator.1"* %agg.tmp159, %"class.std::reverse_iterator.1"* %agg.tmp161, double %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0))
          to label %invoke.cont163 unwind label %lpad82

invoke.cont163:                                   ; preds = %invoke.cont162
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp164, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdMpb)
          to label %invoke.cont165 unwind label %lpad82

invoke.cont165:                                   ; preds = %invoke.cont163
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp166, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdMpe)
          to label %invoke.cont167 unwind label %lpad82

invoke.cont167:                                   ; preds = %invoke.cont165
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp168, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpb)
          to label %invoke.cont169 unwind label %lpad82

invoke.cont169:                                   ; preds = %invoke.cont167
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp170, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpe)
          to label %invoke.cont171 unwind label %lpad82

invoke.cont171:                                   ; preds = %invoke.cont169
  %48 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc(%"class.std::reverse_iterator.0"* %agg.tmp164, %"class.std::reverse_iterator.0"* %agg.tmp166, %"class.std::reverse_iterator.0"* %agg.tmp168, %"class.std::reverse_iterator.0"* %agg.tmp170, double %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0))
          to label %invoke.cont172 unwind label %lpad82

invoke.cont172:                                   ; preds = %invoke.cont171
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp173, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdMpb)
          to label %invoke.cont174 unwind label %lpad82

invoke.cont174:                                   ; preds = %invoke.cont172
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp175, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdMpe)
          to label %invoke.cont176 unwind label %lpad82

invoke.cont176:                                   ; preds = %invoke.cont174
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp177, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpb)
          to label %invoke.cont178 unwind label %lpad82

invoke.cont178:                                   ; preds = %invoke.cont176
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp179, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpe)
          to label %invoke.cont180 unwind label %lpad82

invoke.cont180:                                   ; preds = %invoke.cont178
  %49 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp173, %"class.std::reverse_iterator.2"* %agg.tmp175, %"class.std::reverse_iterator.2"* %agg.tmp177, %"class.std::reverse_iterator.2"* %agg.tmp179, double %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i32 0, i32 0))
          to label %invoke.cont181 unwind label %lpad82

invoke.cont181:                                   ; preds = %invoke.cont180
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp182, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdMpb)
          to label %invoke.cont183 unwind label %lpad82

invoke.cont183:                                   ; preds = %invoke.cont181
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp184, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdMpe)
          to label %invoke.cont185 unwind label %lpad82

invoke.cont185:                                   ; preds = %invoke.cont183
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp186, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpb)
          to label %invoke.cont187 unwind label %lpad82

invoke.cont187:                                   ; preds = %invoke.cont185
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp188, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpe)
          to label %invoke.cont189 unwind label %lpad82

invoke.cont189:                                   ; preds = %invoke.cont187
  %50 = load double, double* %dZero, align 8
  invoke void @_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp182, %"class.std::reverse_iterator.2"* %agg.tmp184, %"class.std::reverse_iterator.2"* %agg.tmp186, %"class.std::reverse_iterator.2"* %agg.tmp188, double %50, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0))
          to label %invoke.cont190 unwind label %lpad82

invoke.cont190:                                   ; preds = %invoke.cont189
  %51 = load i32, i32* @iterations, align 4
  %mul = mul nsw i32 %51, 8
  store i32 %mul, i32* @iterations, align 4
  %52 = load double*, double** @dMpb, align 8
  %53 = load double*, double** @dMpe, align 8
  %54 = load double*, double** @dpb, align 8
  %55 = load double*, double** @dpe, align 8
  %56 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(double* %52, double* %53, double* %54, double* %55, double %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0))
          to label %invoke.cont191 unwind label %lpad82

invoke.cont191:                                   ; preds = %invoke.cont190
  %call194 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont193 unwind label %lpad82

invoke.cont193:                                   ; preds = %invoke.cont191
  %coerce.dive195 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp192, i32 0, i32 0
  store double* %call194, double** %coerce.dive195, align 8
  %call198 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont197 unwind label %lpad82

invoke.cont197:                                   ; preds = %invoke.cont193
  %coerce.dive199 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp196, i32 0, i32 0
  store double* %call198, double** %coerce.dive199, align 8
  %call202 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont201 unwind label %lpad82

invoke.cont201:                                   ; preds = %invoke.cont197
  %coerce.dive203 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp200, i32 0, i32 0
  store double* %call202, double** %coerce.dive203, align 8
  %call206 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont205 unwind label %lpad82

invoke.cont205:                                   ; preds = %invoke.cont201
  %coerce.dive207 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp204, i32 0, i32 0
  store double* %call206, double** %coerce.dive207, align 8
  %57 = load double, double* %dZero, align 8
  %coerce.dive208 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp192, i32 0, i32 0
  %58 = load double*, double** %coerce.dive208, align 8
  %coerce.dive209 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp196, i32 0, i32 0
  %59 = load double*, double** %coerce.dive209, align 8
  %coerce.dive210 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp200, i32 0, i32 0
  %60 = load double*, double** %coerce.dive210, align 8
  %coerce.dive211 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp204, i32 0, i32 0
  %61 = load double*, double** %coerce.dive211, align 8
  invoke void @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %58, double* %59, double* %60, double* %61, double %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0))
          to label %invoke.cont212 unwind label %lpad82

invoke.cont212:                                   ; preds = %invoke.cont205
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp213, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpb)
          to label %invoke.cont214 unwind label %lpad82

invoke.cont214:                                   ; preds = %invoke.cont212
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp215, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpe)
          to label %invoke.cont216 unwind label %lpad82

invoke.cont216:                                   ; preds = %invoke.cont214
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp217, %"class.std::reverse_iterator"* dereferenceable(8) @rdpb)
          to label %invoke.cont218 unwind label %lpad82

invoke.cont218:                                   ; preds = %invoke.cont216
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp219, %"class.std::reverse_iterator"* dereferenceable(8) @rdpe)
          to label %invoke.cont220 unwind label %lpad82

invoke.cont220:                                   ; preds = %invoke.cont218
  %62 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc(%"class.std::reverse_iterator"* %agg.tmp213, %"class.std::reverse_iterator"* %agg.tmp215, %"class.std::reverse_iterator"* %agg.tmp217, %"class.std::reverse_iterator"* %agg.tmp219, double %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0))
          to label %invoke.cont221 unwind label %lpad82

invoke.cont221:                                   ; preds = %invoke.cont220
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp222, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont223 unwind label %lpad82

invoke.cont223:                                   ; preds = %invoke.cont221
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp224, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont225 unwind label %lpad82

invoke.cont225:                                   ; preds = %invoke.cont223
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp226, %"class.std::vector"* %vec_data)
          to label %invoke.cont227 unwind label %lpad82

invoke.cont227:                                   ; preds = %invoke.cont225
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp228, %"class.std::vector"* %vec_data)
          to label %invoke.cont229 unwind label %lpad82

invoke.cont229:                                   ; preds = %invoke.cont227
  %63 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp222, %"class.std::reverse_iterator.1"* %agg.tmp224, %"class.std::reverse_iterator.1"* %agg.tmp226, %"class.std::reverse_iterator.1"* %agg.tmp228, double %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0))
          to label %invoke.cont230 unwind label %lpad82

invoke.cont230:                                   ; preds = %invoke.cont229
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp231, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpb)
          to label %invoke.cont232 unwind label %lpad82

invoke.cont232:                                   ; preds = %invoke.cont230
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp233, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpe)
          to label %invoke.cont234 unwind label %lpad82

invoke.cont234:                                   ; preds = %invoke.cont232
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp235, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpb)
          to label %invoke.cont236 unwind label %lpad82

invoke.cont236:                                   ; preds = %invoke.cont234
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp237, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpe)
          to label %invoke.cont238 unwind label %lpad82

invoke.cont238:                                   ; preds = %invoke.cont236
  %64 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp231, %"class.std::reverse_iterator.1"* %agg.tmp233, %"class.std::reverse_iterator.1"* %agg.tmp235, %"class.std::reverse_iterator.1"* %agg.tmp237, double %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0))
          to label %invoke.cont239 unwind label %lpad82

invoke.cont239:                                   ; preds = %invoke.cont238
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp240, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdMpb)
          to label %invoke.cont241 unwind label %lpad82

invoke.cont241:                                   ; preds = %invoke.cont239
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp242, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdMpe)
          to label %invoke.cont243 unwind label %lpad82

invoke.cont243:                                   ; preds = %invoke.cont241
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp244, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpb)
          to label %invoke.cont245 unwind label %lpad82

invoke.cont245:                                   ; preds = %invoke.cont243
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp246, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpe)
          to label %invoke.cont247 unwind label %lpad82

invoke.cont247:                                   ; preds = %invoke.cont245
  %65 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc(%"class.std::reverse_iterator.0"* %agg.tmp240, %"class.std::reverse_iterator.0"* %agg.tmp242, %"class.std::reverse_iterator.0"* %agg.tmp244, %"class.std::reverse_iterator.0"* %agg.tmp246, double %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i32 0, i32 0))
          to label %invoke.cont248 unwind label %lpad82

invoke.cont248:                                   ; preds = %invoke.cont247
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp249, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdMpb)
          to label %invoke.cont250 unwind label %lpad82

invoke.cont250:                                   ; preds = %invoke.cont248
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp251, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdMpe)
          to label %invoke.cont252 unwind label %lpad82

invoke.cont252:                                   ; preds = %invoke.cont250
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp253, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpb)
          to label %invoke.cont254 unwind label %lpad82

invoke.cont254:                                   ; preds = %invoke.cont252
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp255, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpe)
          to label %invoke.cont256 unwind label %lpad82

invoke.cont256:                                   ; preds = %invoke.cont254
  %66 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp249, %"class.std::reverse_iterator.2"* %agg.tmp251, %"class.std::reverse_iterator.2"* %agg.tmp253, %"class.std::reverse_iterator.2"* %agg.tmp255, double %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i32 0, i32 0))
          to label %invoke.cont257 unwind label %lpad82

invoke.cont257:                                   ; preds = %invoke.cont256
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp258, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdMpb)
          to label %invoke.cont259 unwind label %lpad82

invoke.cont259:                                   ; preds = %invoke.cont257
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp260, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdMpe)
          to label %invoke.cont261 unwind label %lpad82

invoke.cont261:                                   ; preds = %invoke.cont259
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp262, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpb)
          to label %invoke.cont263 unwind label %lpad82

invoke.cont263:                                   ; preds = %invoke.cont261
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp264, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpe)
          to label %invoke.cont265 unwind label %lpad82

invoke.cont265:                                   ; preds = %invoke.cont263
  %67 = load double, double* %dZero, align 8
  invoke void @_Z14test_quicksortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp258, %"class.std::reverse_iterator.2"* %agg.tmp260, %"class.std::reverse_iterator.2"* %agg.tmp262, %"class.std::reverse_iterator.2"* %agg.tmp264, double %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i32 0, i32 0))
          to label %invoke.cont266 unwind label %lpad82

invoke.cont266:                                   ; preds = %invoke.cont265
  %68 = load double*, double** @dMpb, align 8
  %69 = load double*, double** @dMpe, align 8
  %70 = load double*, double** @dpb, align 8
  %71 = load double*, double** @dpe, align 8
  %72 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(double* %68, double* %69, double* %70, double* %71, double %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0))
          to label %invoke.cont267 unwind label %lpad82

invoke.cont267:                                   ; preds = %invoke.cont266
  %call270 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont269 unwind label %lpad82

invoke.cont269:                                   ; preds = %invoke.cont267
  %coerce.dive271 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp268, i32 0, i32 0
  store double* %call270, double** %coerce.dive271, align 8
  %call274 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont273 unwind label %lpad82

invoke.cont273:                                   ; preds = %invoke.cont269
  %coerce.dive275 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp272, i32 0, i32 0
  store double* %call274, double** %coerce.dive275, align 8
  %call278 = invoke double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont277 unwind label %lpad82

invoke.cont277:                                   ; preds = %invoke.cont273
  %coerce.dive279 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp276, i32 0, i32 0
  store double* %call278, double** %coerce.dive279, align 8
  %call282 = invoke double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %vec_data)
          to label %invoke.cont281 unwind label %lpad82

invoke.cont281:                                   ; preds = %invoke.cont277
  %coerce.dive283 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp280, i32 0, i32 0
  store double* %call282, double** %coerce.dive283, align 8
  %73 = load double, double* %dZero, align 8
  %coerce.dive284 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp268, i32 0, i32 0
  %74 = load double*, double** %coerce.dive284, align 8
  %coerce.dive285 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp272, i32 0, i32 0
  %75 = load double*, double** %coerce.dive285, align 8
  %coerce.dive286 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp276, i32 0, i32 0
  %76 = load double*, double** %coerce.dive286, align 8
  %coerce.dive287 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp280, i32 0, i32 0
  %77 = load double*, double** %coerce.dive287, align 8
  invoke void @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %74, double* %75, double* %76, double* %77, double %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0))
          to label %invoke.cont288 unwind label %lpad82

invoke.cont288:                                   ; preds = %invoke.cont281
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp289, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpb)
          to label %invoke.cont290 unwind label %lpad82

invoke.cont290:                                   ; preds = %invoke.cont288
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp291, %"class.std::reverse_iterator"* dereferenceable(8) @rdMpe)
          to label %invoke.cont292 unwind label %lpad82

invoke.cont292:                                   ; preds = %invoke.cont290
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp293, %"class.std::reverse_iterator"* dereferenceable(8) @rdpb)
          to label %invoke.cont294 unwind label %lpad82

invoke.cont294:                                   ; preds = %invoke.cont292
  invoke void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp295, %"class.std::reverse_iterator"* dereferenceable(8) @rdpe)
          to label %invoke.cont296 unwind label %lpad82

invoke.cont296:                                   ; preds = %invoke.cont294
  %78 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc(%"class.std::reverse_iterator"* %agg.tmp289, %"class.std::reverse_iterator"* %agg.tmp291, %"class.std::reverse_iterator"* %agg.tmp293, %"class.std::reverse_iterator"* %agg.tmp295, double %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0))
          to label %invoke.cont297 unwind label %lpad82

invoke.cont297:                                   ; preds = %invoke.cont296
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp298, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont299 unwind label %lpad82

invoke.cont299:                                   ; preds = %invoke.cont297
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp300, %"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont301 unwind label %lpad82

invoke.cont301:                                   ; preds = %invoke.cont299
  invoke void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* sret %agg.tmp302, %"class.std::vector"* %vec_data)
          to label %invoke.cont303 unwind label %lpad82

invoke.cont303:                                   ; preds = %invoke.cont301
  invoke void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* sret %agg.tmp304, %"class.std::vector"* %vec_data)
          to label %invoke.cont305 unwind label %lpad82

invoke.cont305:                                   ; preds = %invoke.cont303
  %79 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp298, %"class.std::reverse_iterator.1"* %agg.tmp300, %"class.std::reverse_iterator.1"* %agg.tmp302, %"class.std::reverse_iterator.1"* %agg.tmp304, double %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i32 0, i32 0))
          to label %invoke.cont306 unwind label %lpad82

invoke.cont306:                                   ; preds = %invoke.cont305
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp307, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpb)
          to label %invoke.cont308 unwind label %lpad82

invoke.cont308:                                   ; preds = %invoke.cont306
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp309, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdMpe)
          to label %invoke.cont310 unwind label %lpad82

invoke.cont310:                                   ; preds = %invoke.cont308
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp311, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpb)
          to label %invoke.cont312 unwind label %lpad82

invoke.cont312:                                   ; preds = %invoke.cont310
  invoke void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp313, %"class.std::reverse_iterator.1"* dereferenceable(8) %rtvdpe)
          to label %invoke.cont314 unwind label %lpad82

invoke.cont314:                                   ; preds = %invoke.cont312
  %80 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %agg.tmp307, %"class.std::reverse_iterator.1"* %agg.tmp309, %"class.std::reverse_iterator.1"* %agg.tmp311, %"class.std::reverse_iterator.1"* %agg.tmp313, double %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i32 0, i32 0))
          to label %invoke.cont315 unwind label %lpad82

invoke.cont315:                                   ; preds = %invoke.cont314
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp316, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdMpb)
          to label %invoke.cont317 unwind label %lpad82

invoke.cont317:                                   ; preds = %invoke.cont315
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp318, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdMpe)
          to label %invoke.cont319 unwind label %lpad82

invoke.cont319:                                   ; preds = %invoke.cont317
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp320, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpb)
          to label %invoke.cont321 unwind label %lpad82

invoke.cont321:                                   ; preds = %invoke.cont319
  invoke void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp322, %"class.std::reverse_iterator.0"* dereferenceable(16) @rrdpe)
          to label %invoke.cont323 unwind label %lpad82

invoke.cont323:                                   ; preds = %invoke.cont321
  %81 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc(%"class.std::reverse_iterator.0"* %agg.tmp316, %"class.std::reverse_iterator.0"* %agg.tmp318, %"class.std::reverse_iterator.0"* %agg.tmp320, %"class.std::reverse_iterator.0"* %agg.tmp322, double %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i32 0, i32 0))
          to label %invoke.cont324 unwind label %lpad82

invoke.cont324:                                   ; preds = %invoke.cont323
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp325, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdMpb)
          to label %invoke.cont326 unwind label %lpad82

invoke.cont326:                                   ; preds = %invoke.cont324
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp327, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdMpe)
          to label %invoke.cont328 unwind label %lpad82

invoke.cont328:                                   ; preds = %invoke.cont326
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp329, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpb)
          to label %invoke.cont330 unwind label %lpad82

invoke.cont330:                                   ; preds = %invoke.cont328
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp331, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrvdpe)
          to label %invoke.cont332 unwind label %lpad82

invoke.cont332:                                   ; preds = %invoke.cont330
  %82 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp325, %"class.std::reverse_iterator.2"* %agg.tmp327, %"class.std::reverse_iterator.2"* %agg.tmp329, %"class.std::reverse_iterator.2"* %agg.tmp331, double %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.48, i32 0, i32 0))
          to label %invoke.cont333 unwind label %lpad82

invoke.cont333:                                   ; preds = %invoke.cont332
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp334, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdMpb)
          to label %invoke.cont335 unwind label %lpad82

invoke.cont335:                                   ; preds = %invoke.cont333
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp336, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdMpe)
          to label %invoke.cont337 unwind label %lpad82

invoke.cont337:                                   ; preds = %invoke.cont335
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp338, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpb)
          to label %invoke.cont339 unwind label %lpad82

invoke.cont339:                                   ; preds = %invoke.cont337
  invoke void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp340, %"class.std::reverse_iterator.2"* dereferenceable(16) %rtrtvdpe)
          to label %invoke.cont341 unwind label %lpad82

invoke.cont341:                                   ; preds = %invoke.cont339
  %83 = load double, double* %dZero, align 8
  invoke void @_Z14test_heap_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %agg.tmp334, %"class.std::reverse_iterator.2"* %agg.tmp336, %"class.std::reverse_iterator.2"* %agg.tmp338, %"class.std::reverse_iterator.2"* %agg.tmp340, double %83, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.49, i32 0, i32 0))
          to label %invoke.cont342 unwind label %lpad82

invoke.cont342:                                   ; preds = %invoke.cont341
  store i32 0, i32* %retval, align 4
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont343 unwind label %lpad

lpad:                                             ; preds = %invoke.cont342, %invoke.cont80, %invoke.cont79, %invoke.cont77, %invoke.cont75, %invoke.cont74, %invoke.cont72, %invoke.cont70, %invoke.cont69, %invoke.cont67, %invoke.cont65, %invoke.cont64, %invoke.cont62, %invoke.cont60, %invoke.cont59, %invoke.cont57, %invoke.cont55, %invoke.cont54, %invoke.cont52, %invoke.cont50, %invoke.cont45, %invoke.cont41, %invoke.cont39, %invoke.cont38, %invoke.cont37, %invoke.cont35, %invoke.cont34, %invoke.cont32, %invoke.cont31, %invoke.cont29, %invoke.cont28, %invoke.cont26, %invoke.cont22, %invoke.cont20, %invoke.cont16, %invoke.cont14, %invoke.cont9, %invoke.cont6, %invoke.cont, %if.end5
  %84 = landingpad { i8*, i32 }
          cleanup
  %85 = extractvalue { i8*, i32 } %84, 0
  store i8* %85, i8** %exn.slot, align 8
  %86 = extractvalue { i8*, i32 } %84, 1
  store i32 %86, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad82:                                           ; preds = %invoke.cont341, %invoke.cont339, %invoke.cont337, %invoke.cont335, %invoke.cont333, %invoke.cont332, %invoke.cont330, %invoke.cont328, %invoke.cont326, %invoke.cont324, %invoke.cont323, %invoke.cont321, %invoke.cont319, %invoke.cont317, %invoke.cont315, %invoke.cont314, %invoke.cont312, %invoke.cont310, %invoke.cont308, %invoke.cont306, %invoke.cont305, %invoke.cont303, %invoke.cont301, %invoke.cont299, %invoke.cont297, %invoke.cont296, %invoke.cont294, %invoke.cont292, %invoke.cont290, %invoke.cont288, %invoke.cont281, %invoke.cont277, %invoke.cont273, %invoke.cont269, %invoke.cont267, %invoke.cont266, %invoke.cont265, %invoke.cont263, %invoke.cont261, %invoke.cont259, %invoke.cont257, %invoke.cont256, %invoke.cont254, %invoke.cont252, %invoke.cont250, %invoke.cont248, %invoke.cont247, %invoke.cont245, %invoke.cont243, %invoke.cont241, %invoke.cont239, %invoke.cont238, %invoke.cont236, %invoke.cont234, %invoke.cont232, %invoke.cont230, %invoke.cont229, %invoke.cont227, %invoke.cont225, %invoke.cont223, %invoke.cont221, %invoke.cont220, %invoke.cont218, %invoke.cont216, %invoke.cont214, %invoke.cont212, %invoke.cont205, %invoke.cont201, %invoke.cont197, %invoke.cont193, %invoke.cont191, %invoke.cont190, %invoke.cont189, %invoke.cont187, %invoke.cont185, %invoke.cont183, %invoke.cont181, %invoke.cont180, %invoke.cont178, %invoke.cont176, %invoke.cont174, %invoke.cont172, %invoke.cont171, %invoke.cont169, %invoke.cont167, %invoke.cont165, %invoke.cont163, %invoke.cont162, %invoke.cont160, %invoke.cont158, %invoke.cont156, %invoke.cont154, %invoke.cont153, %invoke.cont151, %invoke.cont149, %invoke.cont147, %invoke.cont145, %invoke.cont144, %invoke.cont142, %invoke.cont140, %invoke.cont138, %invoke.cont136, %invoke.cont129, %invoke.cont125, %invoke.cont121, %invoke.cont117, %invoke.cont115, %invoke.cont114, %invoke.cont113, %invoke.cont111, %invoke.cont110, %invoke.cont108, %invoke.cont107, %invoke.cont105, %invoke.cont104, %invoke.cont102, %invoke.cont98, %invoke.cont96, %invoke.cont92, %invoke.cont90, %invoke.cont86, %invoke.cont84, %invoke.cont83, %invoke.cont81
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %exn.slot, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %ehselector.slot, align 4
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %vec_dataMaster)
          to label %invoke.cont344 unwind label %terminate.lpad

invoke.cont343:                                   ; preds = %invoke.cont342
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %vec_data)
  %90 = load i32, i32* %retval, align 4
  ret i32 %90

invoke.cont344:                                   ; preds = %lpad82
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont344, %lpad
  invoke void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %vec_data)
          to label %invoke.cont345 unwind label %terminate.lpad

invoke.cont345:                                   ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont345
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val346 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val346

terminate.lpad:                                   ; preds = %ehcleanup, %lpad82
  %91 = landingpad { i8*, i32 }
          catch i8* null
  %92 = extractvalue { i8*, i32 } %91, 0
  call void @__clang_call_terminate(i8* %92) #13
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind readonly
declare double @atof(i8*) #5

; Function Attrs: nounwind
declare void @srand(i32) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark4fillIPddEEvT_S2_T0_(double* %first, double* %last, double %value) #1 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %value.addr = alloca double, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double %value, double* %value.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %value.addr, align 8
  %3 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %3, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  store double %2, double* %3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE6resizeEmd(%"class.std::vector"* %this, i64 %__new_size, double %__x) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__new_size.addr = alloca i64, align 8
  %__x.addr = alloca double, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__new_size, i64* %__new_size.addr, align 8
  store double %__x, double* %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__new_size.addr, align 8
  %call = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call2, double** %coerce.dive, align 8
  %1 = load i64, i64* %__new_size.addr, align 8
  %call3 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  %sub = sub i64 %1, %call3
  %coerce.dive4 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load double*, double** %coerce.dive4, align 8
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* %this1, double* %2, i64 %sub, double* dereferenceable(8) %__x.addr)
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %__new_size.addr, align 8
  %call5 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  %cmp6 = icmp ult i64 %3, %call5
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %5 = load double*, double** %_M_start, align 8
  %6 = load i64, i64* %__new_size.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %5, i64 %6
  call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this1, double* %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.std::reverse_iterator"* %retval, double** dereferenceable(8) %_M_start)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %retval, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  ret double* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %retval = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.std::reverse_iterator"* %retval, double** dereferenceable(8) %_M_finish)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %retval, i32 0, i32 0
  %1 = load double*, double** %coerce.dive, align 8
  ret double* %1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_(double* %first.coerce, double* %last.coerce, double %value) #0 comdat {
entry:
  %first = alloca %"class.std::reverse_iterator", align 8
  %last = alloca %"class.std::reverse_iterator", align 8
  %value.addr = alloca double, align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %value, double* %value.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %first, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %value.addr, align 8
  %call2 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %first, i32 0)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce)
  store double %0, double* %call4, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %this, double* %__x.coerce) unnamed_addr #1 comdat align 2 {
entry:
  %__x = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %__x, i32 0, i32 0
  store double* %__x.coerce, double** %coerce.dive, align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator.1"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %1 = bitcast %"class.std::reverse_iterator"* %current to i8*
  %2 = bitcast %"class.std::reverse_iterator"* %__x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE4rendEv(%"class.std::reverse_iterator.1"* noalias sret %agg.result, %"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %0 = load double*, double** %coerce.dive2, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %agg.result, double* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.1"* %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator.2"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %current, %"class.std::reverse_iterator.1"* dereferenceable(8) %__x)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE6rbeginEv(%"class.std::reverse_iterator.1"* noalias sret %agg.result, %"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this1)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %0 = load double*, double** %coerce.dive2, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %agg.result, double* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"* dereferenceable(8) %__x) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__x.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  store %"class.std::reverse_iterator.1"* %__x, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator.1"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  %current2 = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %1, i32 0, i32 0
  %2 = bitcast %"class.std::reverse_iterator"* %current to i8*
  %3 = bitcast %"class.std::reverse_iterator"* %current2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateIPddEvT_S1_T0_PKc(double* %first, double* %last, double %zero, i8* %label) #0 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %first.addr, align 8
  %3 = load double*, double** %last.addr, align 8
  %4 = load double, double* %zero.addr, align 8
  %call = call double @_ZN9benchmark10accumulateIPddEET0_T_S3_S2_(double* %2, double* %3, double %4)
  call void @_Z9check_sumd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_T0_PKc(double* %first.coerce, double* %last.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %first = alloca %"class.std::reverse_iterator", align 8
  %last = alloca %"class.std::reverse_iterator", align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.std::reverse_iterator"* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.std::reverse_iterator"* %agg.tmp2 to i8*
  %5 = bitcast %"class.std::reverse_iterator"* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = load double, double* %zero.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %7 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp2, i32 0, i32 0
  %8 = load double*, double** %coerce.dive4, align 8
  %call = call double @_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_(double* %7, double* %8, double %6)
  call void @_Z9check_sumd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateISt16reverse_iteratorIPdEdEvT_S3_T0_PKc(%"class.std::reverse_iterator"* %first, %"class.std::reverse_iterator"* %last, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %first)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  %2 = load double, double* %zero.addr, align 8
  %call = call double @_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* %agg.tmp1, double %2)
  call void @_Z9check_sumd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_T0_PKc(%"class.std::reverse_iterator.1"* %first, %"class.std::reverse_iterator.1"* %last, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %first)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* dereferenceable(8) %last)
  %2 = load double, double* %zero.addr, align 8
  %call = call double @_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* %agg.tmp1, double %2)
  call void @_Z9check_sumd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"* dereferenceable(16) %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__x.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  store %"class.std::reverse_iterator.0"* %__x, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator.0"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  %1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  %current2 = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %current, %"class.std::reverse_iterator"* dereferenceable(8) %current2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateISt16reverse_iteratorIS0_IPdEEdEvT_S4_T0_PKc(%"class.std::reverse_iterator.0"* %first, %"class.std::reverse_iterator.0"* %last, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %first)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* dereferenceable(16) %last)
  %2 = load double, double* %zero.addr, align 8
  %call = call double @_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* %agg.tmp1, double %2)
  call void @_Z9check_sumd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"* dereferenceable(16) %__x) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__x.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  store %"class.std::reverse_iterator.2"* %__x, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %0 = bitcast %"class.std::reverse_iterator.2"* %this1 to %"struct.std::iterator"*
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  %1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  %current2 = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %current, %"class.std::reverse_iterator.1"* dereferenceable(8) %current2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z15test_accumulateISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_T0_PKc(%"class.std::reverse_iterator.2"* %first, %"class.std::reverse_iterator.2"* %last, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %first)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* dereferenceable(16) %last)
  %2 = load double, double* %zero.addr, align 8
  %call = call double @_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* %agg.tmp1, double %2)
  call void @_Z9check_sumd(double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark11fill_randomIPddEEvT_S2_(double* %first, double* %last) #1 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @rand() #12
  %conv = sitofp i32 %call to double
  %2 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %2, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  store double %conv, double* %2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_(double* %firstSource, double* %lastSource, double* %firstDest.coerce) #0 comdat {
entry:
  %firstDest = alloca %"class.std::reverse_iterator", align 8
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive, align 8
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %firstSource.addr, align 8
  %1 = load double*, double** %lastSource.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double*, double** %firstSource.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %2, i32 1
  store double* %incdec.ptr, double** %firstSource.addr, align 8
  %3 = load double, double* %2, align 8
  %call = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %firstDest, i32 0)
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive1, align 8
  %call2 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce)
  store double %3, double* %call2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(double* %firstSource, double* %lastSource, double* %firstDest, double* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %firstDest.addr = alloca double*, align 8
  %lastDest.addr = alloca double*, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  store double* %firstDest, double** %firstDest.addr, align 8
  store double* %lastDest, double** %lastDest.addr, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %firstSource.addr, align 8
  %3 = load double*, double** %lastSource.addr, align 8
  %4 = load double*, double** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIPdS1_EEvT_S2_T0_(double* %2, double* %3, double* %4)
  %5 = load double*, double** %firstDest.addr, align 8
  %6 = load double*, double** %lastDest.addr, align 8
  call void @_ZN9benchmark13insertionSortIPddEEvT_S2_(double* %5, double* %6)
  %7 = load double*, double** %firstDest.addr, align 8
  %8 = load double*, double** %lastDest.addr, align 8
  call void @_Z13verify_sortedIPdEvT_S1_(double* %7, double* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce, double* %lastDest.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %"class.std::reverse_iterator", align 8
  %lastSource = alloca %"class.std::reverse_iterator", align 8
  %firstDest = alloca %"class.std::reverse_iterator", align 8
  %lastDest = alloca %"class.std::reverse_iterator", align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp9 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp10 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp14 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastDest, i32 0, i32 0
  store double* %lastDest.coerce, double** %coerce.dive3, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.std::reverse_iterator"* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.std::reverse_iterator"* %agg.tmp4 to i8*
  %5 = bitcast %"class.std::reverse_iterator"* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %"class.std::reverse_iterator"* %agg.tmp5 to i8*
  %7 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp5, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  call void @_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_(double* %8, double* %9, double* %10)
  %11 = bitcast %"class.std::reverse_iterator"* %agg.tmp9 to i8*
  %12 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %"class.std::reverse_iterator"* %agg.tmp10 to i8*
  %14 = bitcast %"class.std::reverse_iterator"* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp9, i32 0, i32 0
  %15 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive12, align 8
  call void @_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %15, double* %16)
  %17 = bitcast %"class.std::reverse_iterator"* %agg.tmp13 to i8*
  %18 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %"class.std::reverse_iterator"* %agg.tmp14 to i8*
  %20 = bitcast %"class.std::reverse_iterator"* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp13, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp14, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(double* %21, double* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z19test_insertion_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc(%"class.std::reverse_iterator"* %firstSource, %"class.std::reverse_iterator"* %lastSource, %"class.std::reverse_iterator"* %firstDest, %"class.std::reverse_iterator"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %firstSource)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* dereferenceable(8) %lastSource)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp2, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp3, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp4, %"class.std::reverse_iterator"* dereferenceable(8) %lastDest)
  call void @_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %agg.tmp3, %"class.std::reverse_iterator"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp5, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp6, %"class.std::reverse_iterator"* dereferenceable(8) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_(%"class.std::reverse_iterator"* %agg.tmp5, %"class.std::reverse_iterator"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z19test_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %firstSource, %"class.std::reverse_iterator.1"* %lastSource, %"class.std::reverse_iterator.1"* %firstDest, %"class.std::reverse_iterator.1"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.1", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstSource)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastSource)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp2, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp3, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp4, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastDest)
  call void @_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %agg.tmp3, %"class.std::reverse_iterator.1"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp5, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp6, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(%"class.std::reverse_iterator.1"* %agg.tmp5, %"class.std::reverse_iterator.1"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z19test_insertion_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc(%"class.std::reverse_iterator.0"* %firstSource, %"class.std::reverse_iterator.0"* %lastSource, %"class.std::reverse_iterator.0"* %firstDest, %"class.std::reverse_iterator.0"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.0", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstSource)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastSource)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp2, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp3, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp4, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastDest)
  call void @_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %agg.tmp3, %"class.std::reverse_iterator.0"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp5, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp6, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_(%"class.std::reverse_iterator.0"* %agg.tmp5, %"class.std::reverse_iterator.0"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z19test_insertion_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %firstSource, %"class.std::reverse_iterator.2"* %lastSource, %"class.std::reverse_iterator.2"* %firstDest, %"class.std::reverse_iterator.2"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.2", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstSource)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastSource)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp2, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp3, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp4, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastDest)
  call void @_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %agg.tmp3, %"class.std::reverse_iterator.2"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp5, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp6, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_(%"class.std::reverse_iterator.2"* %agg.tmp5, %"class.std::reverse_iterator.2"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(double* %firstSource, double* %lastSource, double* %firstDest, double* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %firstDest.addr = alloca double*, align 8
  %lastDest.addr = alloca double*, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  store double* %firstDest, double** %firstDest.addr, align 8
  store double* %lastDest, double** %lastDest.addr, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %firstSource.addr, align 8
  %3 = load double*, double** %lastSource.addr, align 8
  %4 = load double*, double** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIPdS1_EEvT_S2_T0_(double* %2, double* %3, double* %4)
  %5 = load double*, double** %firstDest.addr, align 8
  %6 = load double*, double** %lastDest.addr, align 8
  call void @_ZN9benchmark9quicksortIPddEEvT_S2_(double* %5, double* %6)
  %7 = load double*, double** %firstDest.addr, align 8
  %8 = load double*, double** %lastDest.addr, align 8
  call void @_Z13verify_sortedIPdEvT_S1_(double* %7, double* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce, double* %lastDest.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %"class.std::reverse_iterator", align 8
  %lastSource = alloca %"class.std::reverse_iterator", align 8
  %firstDest = alloca %"class.std::reverse_iterator", align 8
  %lastDest = alloca %"class.std::reverse_iterator", align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp9 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp10 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp14 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastDest, i32 0, i32 0
  store double* %lastDest.coerce, double** %coerce.dive3, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.std::reverse_iterator"* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.std::reverse_iterator"* %agg.tmp4 to i8*
  %5 = bitcast %"class.std::reverse_iterator"* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %"class.std::reverse_iterator"* %agg.tmp5 to i8*
  %7 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp5, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  call void @_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_(double* %8, double* %9, double* %10)
  %11 = bitcast %"class.std::reverse_iterator"* %agg.tmp9 to i8*
  %12 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %"class.std::reverse_iterator"* %agg.tmp10 to i8*
  %14 = bitcast %"class.std::reverse_iterator"* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp9, i32 0, i32 0
  %15 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive12, align 8
  call void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %15, double* %16)
  %17 = bitcast %"class.std::reverse_iterator"* %agg.tmp13 to i8*
  %18 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %"class.std::reverse_iterator"* %agg.tmp14 to i8*
  %20 = bitcast %"class.std::reverse_iterator"* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp13, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp14, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(double* %21, double* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_quicksortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc(%"class.std::reverse_iterator"* %firstSource, %"class.std::reverse_iterator"* %lastSource, %"class.std::reverse_iterator"* %firstDest, %"class.std::reverse_iterator"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %firstSource)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* dereferenceable(8) %lastSource)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp2, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp3, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp4, %"class.std::reverse_iterator"* dereferenceable(8) %lastDest)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %agg.tmp3, %"class.std::reverse_iterator"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp5, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp6, %"class.std::reverse_iterator"* dereferenceable(8) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_(%"class.std::reverse_iterator"* %agg.tmp5, %"class.std::reverse_iterator"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %firstSource, %"class.std::reverse_iterator.1"* %lastSource, %"class.std::reverse_iterator.1"* %firstDest, %"class.std::reverse_iterator.1"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.1", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstSource)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastSource)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp2, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp3, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp4, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastDest)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %agg.tmp3, %"class.std::reverse_iterator.1"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp5, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp6, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(%"class.std::reverse_iterator.1"* %agg.tmp5, %"class.std::reverse_iterator.1"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_quicksortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc(%"class.std::reverse_iterator.0"* %firstSource, %"class.std::reverse_iterator.0"* %lastSource, %"class.std::reverse_iterator.0"* %firstDest, %"class.std::reverse_iterator.0"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.0", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstSource)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastSource)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp2, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp3, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp4, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastDest)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %agg.tmp3, %"class.std::reverse_iterator.0"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp5, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp6, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_(%"class.std::reverse_iterator.0"* %agg.tmp5, %"class.std::reverse_iterator.0"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_quicksortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %firstSource, %"class.std::reverse_iterator.2"* %lastSource, %"class.std::reverse_iterator.2"* %firstDest, %"class.std::reverse_iterator.2"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.2", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstSource)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastSource)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp2, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp3, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp4, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastDest)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %agg.tmp3, %"class.std::reverse_iterator.2"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp5, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp6, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_(%"class.std::reverse_iterator.2"* %agg.tmp5, %"class.std::reverse_iterator.2"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(double* %firstSource, double* %lastSource, double* %firstDest, double* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %firstDest.addr = alloca double*, align 8
  %lastDest.addr = alloca double*, align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  store double* %firstDest, double** %firstDest.addr, align 8
  store double* %lastDest, double** %lastDest.addr, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %firstSource.addr, align 8
  %3 = load double*, double** %lastSource.addr, align 8
  %4 = load double*, double** %firstDest.addr, align 8
  call void @_ZN9benchmark4copyIPdS1_EEvT_S2_T0_(double* %2, double* %3, double* %4)
  %5 = load double*, double** %firstDest.addr, align 8
  %6 = load double*, double** %lastDest.addr, align 8
  call void @_ZN9benchmark8heapsortIPddEEvT_S2_(double* %5, double* %6)
  %7 = load double*, double** %firstDest.addr, align 8
  %8 = load double*, double** %lastDest.addr, align 8
  call void @_Z13verify_sortedIPdEvT_S1_(double* %7, double* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce, double* %lastDest.coerce, double %zero, i8* %label) #0 comdat {
entry:
  %firstSource = alloca %"class.std::reverse_iterator", align 8
  %lastSource = alloca %"class.std::reverse_iterator", align 8
  %firstDest = alloca %"class.std::reverse_iterator", align 8
  %lastDest = alloca %"class.std::reverse_iterator", align 8
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp9 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp10 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp14 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastDest, i32 0, i32 0
  store double* %lastDest.coerce, double** %coerce.dive3, align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %3 = bitcast %"class.std::reverse_iterator"* %firstSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %4 = bitcast %"class.std::reverse_iterator"* %agg.tmp4 to i8*
  %5 = bitcast %"class.std::reverse_iterator"* %lastSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = bitcast %"class.std::reverse_iterator"* %agg.tmp5 to i8*
  %7 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %coerce.dive6 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %8 = load double*, double** %coerce.dive6, align 8
  %coerce.dive7 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp4, i32 0, i32 0
  %9 = load double*, double** %coerce.dive7, align 8
  %coerce.dive8 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp5, i32 0, i32 0
  %10 = load double*, double** %coerce.dive8, align 8
  call void @_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_(double* %8, double* %9, double* %10)
  %11 = bitcast %"class.std::reverse_iterator"* %agg.tmp9 to i8*
  %12 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %"class.std::reverse_iterator"* %agg.tmp10 to i8*
  %14 = bitcast %"class.std::reverse_iterator"* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive11 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp9, i32 0, i32 0
  %15 = load double*, double** %coerce.dive11, align 8
  %coerce.dive12 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp10, i32 0, i32 0
  %16 = load double*, double** %coerce.dive12, align 8
  call void @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %15, double* %16)
  %17 = bitcast %"class.std::reverse_iterator"* %agg.tmp13 to i8*
  %18 = bitcast %"class.std::reverse_iterator"* %firstDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %19 = bitcast %"class.std::reverse_iterator"* %agg.tmp14 to i8*
  %20 = bitcast %"class.std::reverse_iterator"* %lastDest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive15 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp13, i32 0, i32 0
  %21 = load double*, double** %coerce.dive15, align 8
  %coerce.dive16 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp14, i32 0, i32 0
  %22 = load double*, double** %coerce.dive16, align 8
  call void @_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(double* %21, double* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_heap_sortISt16reverse_iteratorIPdEdEvT_S3_S3_S3_T0_PKc(%"class.std::reverse_iterator"* %firstSource, %"class.std::reverse_iterator"* %lastSource, %"class.std::reverse_iterator"* %firstDest, %"class.std::reverse_iterator"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %firstSource)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* dereferenceable(8) %lastSource)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp2, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp3, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp4, %"class.std::reverse_iterator"* dereferenceable(8) %lastDest)
  call void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %agg.tmp3, %"class.std::reverse_iterator"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp5, %"class.std::reverse_iterator"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp6, %"class.std::reverse_iterator"* dereferenceable(8) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_(%"class.std::reverse_iterator"* %agg.tmp5, %"class.std::reverse_iterator"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_heap_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEvT_S9_S9_S9_T0_PKc(%"class.std::reverse_iterator.1"* %firstSource, %"class.std::reverse_iterator.1"* %lastSource, %"class.std::reverse_iterator.1"* %firstDest, %"class.std::reverse_iterator.1"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.1", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstSource)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastSource)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp2, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp3, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp4, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastDest)
  call void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %agg.tmp3, %"class.std::reverse_iterator.1"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp5, %"class.std::reverse_iterator.1"* dereferenceable(8) %firstDest)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp6, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(%"class.std::reverse_iterator.1"* %agg.tmp5, %"class.std::reverse_iterator.1"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_heap_sortISt16reverse_iteratorIS0_IPdEEdEvT_S4_S4_S4_T0_PKc(%"class.std::reverse_iterator.0"* %firstSource, %"class.std::reverse_iterator.0"* %lastSource, %"class.std::reverse_iterator.0"* %firstDest, %"class.std::reverse_iterator.0"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.0", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstSource)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastSource)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp2, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp3, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp4, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastDest)
  call void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %agg.tmp3, %"class.std::reverse_iterator.0"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp5, %"class.std::reverse_iterator.0"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp6, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_(%"class.std::reverse_iterator.0"* %agg.tmp5, %"class.std::reverse_iterator.0"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14test_heap_sortISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEvT_SA_SA_SA_T0_PKc(%"class.std::reverse_iterator.2"* %firstSource, %"class.std::reverse_iterator.2"* %lastSource, %"class.std::reverse_iterator.2"* %firstDest, %"class.std::reverse_iterator.2"* %lastDest, double %zero, i8* %label) #0 comdat {
entry:
  %zero.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp3 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp4 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp5 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp6 = alloca %"class.std::reverse_iterator.2", align 8
  store double %zero, double* %zero.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @iterations, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstSource)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastSource)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp2, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* %agg.tmp2)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp3, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp4, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastDest)
  call void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %agg.tmp3, %"class.std::reverse_iterator.2"* %agg.tmp4)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp5, %"class.std::reverse_iterator.2"* dereferenceable(16) %firstDest)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp6, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastDest)
  call void @_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_(%"class.std::reverse_iterator.2"* %agg.tmp5, %"class.std::reverse_iterator.2"* %agg.tmp6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load double*, double** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = invoke dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %1, double* %3, %"struct.std::iterator"* dereferenceable(1) %call)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %5)
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %9)
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
  call void @__clang_call_terminate(i8* %11) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #12
  call void @_ZSt9terminatev() #13
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.std::iterator"*
  ret %"struct.std::iterator"* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__first, double* %__last, %"struct.std::iterator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %.addr = alloca %"struct.std::iterator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store %"struct.std::iterator"* %0, %"struct.std::iterator"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  call void @_ZSt8_DestroyIPdEvT_S1_(double* %1, double* %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load double*, double** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load double*, double** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load double*, double** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this1, double* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl5) #12
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl6) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val7
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load double*, double** %__p.addr, align 8
  %tobool = icmp ne double* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.std::iterator"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"struct.std::iterator"* dereferenceable(1) %1, double* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"struct.std::iterator"*
  call void @_ZNSaIdED2Ev(%"struct.std::iterator"* %0) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdED2Ev(%"struct.std::iterator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::iterator"* %this1 to %"struct.std::iterator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"struct.std::iterator"* %0) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"struct.std::iterator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdm(%"struct.std::iterator"* dereferenceable(1) %__a, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::iterator"*, align 8
  %__p.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::iterator"* %__a, %"struct.std::iterator"** %__a.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::iterator"*, %"struct.std::iterator"** %__a.addr, align 8
  %1 = bitcast %"struct.std::iterator"* %0 to %"struct.std::iterator"*
  %2 = load double*, double** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"struct.std::iterator"* %1, double* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"struct.std::iterator"* %this, double* %__p, i64) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  %__p.addr = alloca double*, align 8
  %.addr = alloca i64, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  store double* %__p, double** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  %1 = load double*, double** %__p.addr, align 8
  %2 = bitcast double* %1 to i8*
  call void @_ZdlPv(i8* %2) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #8

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt8_DestroyIPdEvT_S1_(double* %__first, double* %__last) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double* %0, double* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double*, double*) #1 comdat align 2 {
entry:
  %.addr = alloca double*, align 8
  %.addr1 = alloca double*, align 8
  store double* %0, double** %.addr, align 8
  store double* %1, double** %.addr1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_(%"class.std::reverse_iterator.2"* %firstSource, %"class.std::reverse_iterator.2"* %lastSource, %"class.std::reverse_iterator.2"* %firstDest) #0 comdat {
entry:
  %tmp = alloca %"class.std::reverse_iterator.2", align 8
  %tmp2 = alloca %"class.std::reverse_iterator.2", align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %firstSource, %"class.std::reverse_iterator.2"* dereferenceable(16) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp, %"class.std::reverse_iterator.2"* %firstSource, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp)
  %0 = load double, double* %call1, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp2, %"class.std::reverse_iterator.2"* %firstDest, i32 0)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp2)
  store double %0, double* %call3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %begin, %"class.std::reverse_iterator.2"* %end) #0 comdat {
entry:
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %next7 = alloca double, align 8
  %tmp8 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp11 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator.2", align 8
  %call = call i64 @_ZStmiISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEENS0_IT_E15difference_typeERKSA_SD_(%"class.std::reverse_iterator.2"* dereferenceable(16) %end, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %count, align 8
  %div = sdiv i64 %0, 2
  %sub = sub nsw i64 %div, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp, %"class.std::reverse_iterator.2"* %begin, i64 %2)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp)
  %3 = load double, double* %call1, align 8
  store double %3, double* %next, align 8
  %4 = load i64, i64* %count, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  %5 = load i64, i64* %j, align 8
  %6 = load double, double* %next, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_(i64 %4, %"class.std::reverse_iterator.2"* %agg.tmp, i64 %5, double %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %j, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %count, align 8
  %sub2 = sub nsw i64 %8, 1
  store i64 %sub2, i64* %j, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %9 = load i64, i64* %j, align 8
  %cmp4 = icmp sge i64 %9, 1
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  %10 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp8, %"class.std::reverse_iterator.2"* %begin, i64 %10)
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp8)
  %11 = load double, double* %call9, align 8
  store double %11, double* %next7, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %begin)
  %12 = load double, double* %call10, align 8
  %13 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp11, %"class.std::reverse_iterator.2"* %begin, i64 %13)
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp11)
  store double %12, double* %call12, align 8
  %14 = load i64, i64* %j, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp13, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  %15 = load double, double* %next7, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_(i64 %14, %"class.std::reverse_iterator.2"* %agg.tmp13, i64 0, double %15)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body5
  %16 = load i64, i64* %j, align 8
  %dec15 = add nsw i64 %16, -1
  store i64 %dec15, i64* %j, align 8
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_(%"class.std::reverse_iterator.2"* %first, %"class.std::reverse_iterator.2"* %last) #0 comdat {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %first)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp1, %"class.std::reverse_iterator.2"* dereferenceable(16) %last)
  %call = call zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* %agg.tmp1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @current_test, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEEbT_SB_(%"class.std::reverse_iterator.2"* %first, %"class.std::reverse_iterator.2"* %last) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %prev = alloca %"class.std::reverse_iterator.2", align 8
  %tmp = alloca %"class.std::reverse_iterator.2", align 8
  %tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp3 = alloca %"class.std::reverse_iterator.2", align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %prev, %"class.std::reverse_iterator.2"* dereferenceable(16) %first)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp, %"class.std::reverse_iterator.2"* %first, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %first, %"class.std::reverse_iterator.2"* dereferenceable(16) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp1, %"class.std::reverse_iterator.2"* %first, i32 0)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp1)
  %0 = load double, double* %call2, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp3, %"class.std::reverse_iterator.2"* %prev, i32 0)
  %call4 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp3)
  %1 = load double, double* %call4, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* noalias sret %agg.result, %"class.std::reverse_iterator.2"* %this, i32) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %.addr = alloca i32, align 4
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.result, %"class.std::reverse_iterator.2"* dereferenceable(16) %this1)
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  %call = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %current)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %__x, %"class.std::reverse_iterator.2"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  store %"class.std::reverse_iterator.2"* %__x, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  store %"class.std::reverse_iterator.2"* %__y, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  %1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %0, %"class.std::reverse_iterator.2"* dereferenceable(16) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__tmp = alloca %"class.std::reverse_iterator.1", align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %__tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %current)
  %call = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %__tmp)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %call)
  ret double* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.std::reverse_iterator"* %current)
  ret %"class.std::reverse_iterator.1"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::reverse_iterator"* %__tmp to i8*
  %1 = bitcast %"class.std::reverse_iterator"* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %__tmp)
  %call2 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %call)
  ret double* %call2
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 -1
  store double* %incdec.ptr, double** %_M_current, align 8
  ret %"class.std::reverse_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  ret double* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 1
  store double* %incdec.ptr, double** %_M_current, align 8
  ret %"class.std::reverse_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZSteqISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %__x, %"class.std::reverse_iterator.2"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  store %"class.std::reverse_iterator.2"* %__x, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  store %"class.std::reverse_iterator.2"* %__y, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* sret %ref.tmp, %"class.std::reverse_iterator.2"* %0)
  %1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* sret %ref.tmp1, %"class.std::reverse_iterator.2"* %1)
  %call = call zeroext i1 @_ZSteqIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %ref.tmp1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* noalias sret %agg.result, %"class.std::reverse_iterator.2"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.result, %"class.std::reverse_iterator.1"* dereferenceable(8) %current)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZSteqIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %__x, %"class.std::reverse_iterator.1"* dereferenceable(8) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.1"* %__x, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  store %"class.std::reverse_iterator.1"* %__y, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  %call = call double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %call2 = call double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp1, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp1)
  ret i1 %call4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %this) #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::reverse_iterator"* %retval to i8*
  %1 = bitcast %"class.std::reverse_iterator"* %current to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive, align 8
  ret double* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %__lhs, %"class.std::reverse_iterator"* dereferenceable(8) %__rhs) #1 comdat {
entry:
  %__lhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__rhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__lhs, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  store %"class.std::reverse_iterator"* %__rhs, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %cmp = icmp eq double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  ret double** %_M_current
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZStmiISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEENS0_IT_E15difference_typeERKSA_SD_(%"class.std::reverse_iterator.2"* dereferenceable(16) %__x, %"class.std::reverse_iterator.2"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  store %"class.std::reverse_iterator.2"* %__x, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  store %"class.std::reverse_iterator.2"* %__y, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* sret %ref.tmp, %"class.std::reverse_iterator.2"* %0)
  %1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* sret %ref.tmp1, %"class.std::reverse_iterator.2"* %1)
  %call = call i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt16reverse_iteratorIT_E15difference_typeERKS9_SC_(%"class.std::reverse_iterator.1"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %ref.tmp1)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* noalias sret %agg.result, %"class.std::reverse_iterator.2"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__n.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  %0 = load i64, i64* %__n.addr, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmiEl(%"class.std::reverse_iterator.1"* sret %agg.tmp, %"class.std::reverse_iterator.1"* %current, i64 %0)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ES7_(%"class.std::reverse_iterator.2"* %agg.result, %"class.std::reverse_iterator.1"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_(i64 %count, %"class.std::reverse_iterator.2"* %begin, i64 %free_in, double %next) #0 comdat {
entry:
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %tmp = alloca %"class.std::reverse_iterator.2", align 8
  %tmp1 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp5 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp7 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp14 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp16 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp22 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp25 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp27 = alloca %"class.std::reverse_iterator.2", align 8
  %tmp31 = alloca %"class.std::reverse_iterator.2", align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
  store double %next, double* %next.addr, align 8
  %0 = load i64, i64* %free_in.addr, align 8
  store i64 %0, i64* %free, align 8
  %1 = load i64, i64* %free, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %4, 1
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp, %"class.std::reverse_iterator.2"* %begin, i64 %sub)
  %call = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp)
  %5 = load double, double* %call, align 8
  %6 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp1, %"class.std::reverse_iterator.2"* %begin, i64 %6)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp1)
  %7 = load double, double* %call2, align 8
  %cmp3 = fcmp olt double %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i64, i64* %i, align 8
  %sub4 = sub nsw i64 %9, 1
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp5, %"class.std::reverse_iterator.2"* %begin, i64 %sub4)
  %call6 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp5)
  %10 = load double, double* %call6, align 8
  %11 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp7, %"class.std::reverse_iterator.2"* %begin, i64 %11)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp7)
  store double %10, double* %call8, align 8
  %12 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %12, 1
  store i64 %sub9, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %add10 = add nsw i64 %14, %13
  store i64 %add10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %count.addr, align 8
  %cmp11 = icmp eq i64 %15, %16
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %sub13 = sub nsw i64 %17, 1
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp14, %"class.std::reverse_iterator.2"* %begin, i64 %sub13)
  %call15 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp14)
  %18 = load double, double* %call15, align 8
  %19 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp16, %"class.std::reverse_iterator.2"* %begin, i64 %19)
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp16)
  store double %18, double* %call17, align 8
  %20 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %20, 1
  store i64 %sub18, i64* %free, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %for.end
  %21 = load i64, i64* %free, align 8
  %sub20 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub20, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp21 = icmp sgt i64 %22, %23
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp22, %"class.std::reverse_iterator.2"* %begin, i64 %24)
  %call23 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp22)
  %25 = load double, double* %call23, align 8
  %26 = load double, double* %next.addr, align 8
  %cmp24 = fcmp olt double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp25, %"class.std::reverse_iterator.2"* %begin, i64 %28)
  %call26 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp25)
  %29 = load double, double* %call26, align 8
  %30 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp27, %"class.std::reverse_iterator.2"* %begin, i64 %30)
  %call28 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp27)
  store double %29, double* %call28, align 8
  %31 = load i64, i64* %i, align 8
  store i64 %31, i64* %free, align 8
  %32 = load i64, i64* %free, align 8
  %sub29 = sub nsw i64 %32, 1
  %div30 = sdiv i64 %sub29, 2
  store i64 %div30, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load double, double* %next.addr, align 8
  %34 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %tmp31, %"class.std::reverse_iterator.2"* %begin, i64 %34)
  %call32 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp31)
  store double %33, double* %call32, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmiEl(%"class.std::reverse_iterator.1"* noalias sret %agg.result, %"class.std::reverse_iterator.1"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__n.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %current, i64 %0)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load double*, double** %coerce.dive2, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %agg.result, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca double*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %0, i64 %1
  store double* %add.ptr, double** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.std::reverse_iterator"* %retval, double** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive, align 8
  ret double* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.std::reverse_iterator"* %this, double** dereferenceable(8) %__i) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__i.addr = alloca double**, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store double** %__i, double*** %__i.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double**, double*** %__i.addr, align 8
  %1 = load double*, double** %0, align 8
  store double* %1, double** %_M_current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt16reverse_iteratorIT_E15difference_typeERKS9_SC_(%"class.std::reverse_iterator.1"* dereferenceable(8) %__x, %"class.std::reverse_iterator.1"* dereferenceable(8) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.1"* %__x, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  store %"class.std::reverse_iterator.1"* %__y, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %call = call double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  %call2 = call double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp1, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp1)
  ret i64 %call4
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.std::reverse_iterator"* dereferenceable(8) %__lhs, %"class.std::reverse_iterator"* dereferenceable(8) %__rhs) #0 comdat {
entry:
  %__lhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__rhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__lhs, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  store %"class.std::reverse_iterator"* %__rhs, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_(%"class.std::reverse_iterator.0"* %firstSource, %"class.std::reverse_iterator.0"* %lastSource, %"class.std::reverse_iterator.0"* %firstDest) #0 comdat {
entry:
  %tmp = alloca %"class.std::reverse_iterator.0", align 8
  %tmp2 = alloca %"class.std::reverse_iterator.0", align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %firstSource, %"class.std::reverse_iterator.0"* dereferenceable(16) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp, %"class.std::reverse_iterator.0"* %firstSource, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp)
  %0 = load double, double* %call1, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp2, %"class.std::reverse_iterator.0"* %firstDest, i32 0)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp2)
  store double %0, double* %call3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %begin, %"class.std::reverse_iterator.0"* %end) #0 comdat {
entry:
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %next7 = alloca double, align 8
  %tmp8 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp11 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator.0", align 8
  %call = call i64 @_ZStmiISt16reverse_iteratorIPdEENS0_IT_E15difference_typeERKS4_S7_(%"class.std::reverse_iterator.0"* dereferenceable(16) %end, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %count, align 8
  %div = sdiv i64 %0, 2
  %sub = sub nsw i64 %div, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp, %"class.std::reverse_iterator.0"* %begin, i64 %2)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp)
  %3 = load double, double* %call1, align 8
  store double %3, double* %next, align 8
  %4 = load i64, i64* %count, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  %5 = load i64, i64* %j, align 8
  %6 = load double, double* %next, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_(i64 %4, %"class.std::reverse_iterator.0"* %agg.tmp, i64 %5, double %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %j, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %count, align 8
  %sub2 = sub nsw i64 %8, 1
  store i64 %sub2, i64* %j, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %9 = load i64, i64* %j, align 8
  %cmp4 = icmp sge i64 %9, 1
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  %10 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp8, %"class.std::reverse_iterator.0"* %begin, i64 %10)
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp8)
  %11 = load double, double* %call9, align 8
  store double %11, double* %next7, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %begin)
  %12 = load double, double* %call10, align 8
  %13 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp11, %"class.std::reverse_iterator.0"* %begin, i64 %13)
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp11)
  store double %12, double* %call12, align 8
  %14 = load i64, i64* %j, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp13, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  %15 = load double, double* %next7, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_(i64 %14, %"class.std::reverse_iterator.0"* %agg.tmp13, i64 0, double %15)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body5
  %16 = load i64, i64* %j, align 8
  %dec15 = add nsw i64 %16, -1
  store i64 %dec15, i64* %j, align 8
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_(%"class.std::reverse_iterator.0"* %first, %"class.std::reverse_iterator.0"* %last) #0 comdat {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %first)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp1, %"class.std::reverse_iterator.0"* dereferenceable(16) %last)
  %call = call zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* %agg.tmp1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @current_test, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIS1_IPdEEEEbT_S5_(%"class.std::reverse_iterator.0"* %first, %"class.std::reverse_iterator.0"* %last) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %prev = alloca %"class.std::reverse_iterator.0", align 8
  %tmp = alloca %"class.std::reverse_iterator.0", align 8
  %tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp3 = alloca %"class.std::reverse_iterator.0", align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %prev, %"class.std::reverse_iterator.0"* dereferenceable(16) %first)
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp, %"class.std::reverse_iterator.0"* %first, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %first, %"class.std::reverse_iterator.0"* dereferenceable(16) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp1, %"class.std::reverse_iterator.0"* %first, i32 0)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp1)
  %0 = load double, double* %call2, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp3, %"class.std::reverse_iterator.0"* %prev, i32 0)
  %call4 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp3)
  %1 = load double, double* %call4, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* noalias sret %agg.result, %"class.std::reverse_iterator.0"* %this, i32) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %.addr = alloca i32, align 4
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.result, %"class.std::reverse_iterator.0"* dereferenceable(16) %this1)
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %current)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %__x, %"class.std::reverse_iterator.0"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  store %"class.std::reverse_iterator.0"* %__x, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  store %"class.std::reverse_iterator.0"* %__y, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  %1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %0, %"class.std::reverse_iterator.0"* dereferenceable(16) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %__tmp, %"class.std::reverse_iterator"* dereferenceable(8) %current)
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %__tmp)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %call)
  ret double* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 1
  store double* %incdec.ptr, double** %current, align 8
  ret %"class.std::reverse_iterator"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__tmp = alloca double*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  store double* %0, double** %__tmp, align 8
  %1 = load double*, double** %__tmp, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 -1
  store double* %incdec.ptr, double** %__tmp, align 8
  ret double* %incdec.ptr
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZSteqISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %__x, %"class.std::reverse_iterator.0"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.0"* %__x, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  store %"class.std::reverse_iterator.0"* %__y, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* sret %ref.tmp, %"class.std::reverse_iterator.0"* %0)
  %1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* sret %ref.tmp1, %"class.std::reverse_iterator.0"* %1)
  %call = call zeroext i1 @_ZSteqIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* noalias sret %agg.result, %"class.std::reverse_iterator.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.result, %"class.std::reverse_iterator"* dereferenceable(8) %current)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZSteqIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %__x, %"class.std::reverse_iterator"* dereferenceable(8) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__x, %"class.std::reverse_iterator"** %__x.addr, align 8
  store %"class.std::reverse_iterator"* %__y, %"class.std::reverse_iterator"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__x.addr, align 8
  %call = call double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__y.addr, align 8
  %call1 = call double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %1)
  %cmp = icmp eq double* %call, %call1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZStmiISt16reverse_iteratorIPdEENS0_IT_E15difference_typeERKS4_S7_(%"class.std::reverse_iterator.0"* dereferenceable(16) %__x, %"class.std::reverse_iterator.0"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.0"* %__x, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  store %"class.std::reverse_iterator.0"* %__y, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* sret %ref.tmp, %"class.std::reverse_iterator.0"* %0)
  %1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* sret %ref.tmp1, %"class.std::reverse_iterator.0"* %1)
  %call = call i64 @_ZStmiIPdENSt16reverse_iteratorIT_E15difference_typeERKS3_S6_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp1)
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* noalias sret %agg.result, %"class.std::reverse_iterator.0"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__n.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  %0 = load i64, i64* %__n.addr, align 8
  call void @_ZNKSt16reverse_iteratorIPdEmiEl(%"class.std::reverse_iterator"* sret %agg.tmp, %"class.std::reverse_iterator"* %current, i64 %0)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ES1_(%"class.std::reverse_iterator.0"* %agg.result, %"class.std::reverse_iterator"* %agg.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_(i64 %count, %"class.std::reverse_iterator.0"* %begin, i64 %free_in, double %next) #0 comdat {
entry:
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %tmp = alloca %"class.std::reverse_iterator.0", align 8
  %tmp1 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp5 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp7 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp14 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp16 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp22 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp25 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp27 = alloca %"class.std::reverse_iterator.0", align 8
  %tmp31 = alloca %"class.std::reverse_iterator.0", align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
  store double %next, double* %next.addr, align 8
  %0 = load i64, i64* %free_in.addr, align 8
  store i64 %0, i64* %free, align 8
  %1 = load i64, i64* %free, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %4, 1
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp, %"class.std::reverse_iterator.0"* %begin, i64 %sub)
  %call = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp)
  %5 = load double, double* %call, align 8
  %6 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp1, %"class.std::reverse_iterator.0"* %begin, i64 %6)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp1)
  %7 = load double, double* %call2, align 8
  %cmp3 = fcmp olt double %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i64, i64* %i, align 8
  %sub4 = sub nsw i64 %9, 1
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp5, %"class.std::reverse_iterator.0"* %begin, i64 %sub4)
  %call6 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp5)
  %10 = load double, double* %call6, align 8
  %11 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp7, %"class.std::reverse_iterator.0"* %begin, i64 %11)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp7)
  store double %10, double* %call8, align 8
  %12 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %12, 1
  store i64 %sub9, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %add10 = add nsw i64 %14, %13
  store i64 %add10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %count.addr, align 8
  %cmp11 = icmp eq i64 %15, %16
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %sub13 = sub nsw i64 %17, 1
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp14, %"class.std::reverse_iterator.0"* %begin, i64 %sub13)
  %call15 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp14)
  %18 = load double, double* %call15, align 8
  %19 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp16, %"class.std::reverse_iterator.0"* %begin, i64 %19)
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp16)
  store double %18, double* %call17, align 8
  %20 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %20, 1
  store i64 %sub18, i64* %free, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %for.end
  %21 = load i64, i64* %free, align 8
  %sub20 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub20, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp21 = icmp sgt i64 %22, %23
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp22, %"class.std::reverse_iterator.0"* %begin, i64 %24)
  %call23 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp22)
  %25 = load double, double* %call23, align 8
  %26 = load double, double* %next.addr, align 8
  %cmp24 = fcmp olt double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp25, %"class.std::reverse_iterator.0"* %begin, i64 %28)
  %call26 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp25)
  %29 = load double, double* %call26, align 8
  %30 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp27, %"class.std::reverse_iterator.0"* %begin, i64 %30)
  %call28 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp27)
  store double %29, double* %call28, align 8
  %31 = load i64, i64* %i, align 8
  store i64 %31, i64* %free, align 8
  %32 = load i64, i64* %free, align 8
  %sub29 = sub nsw i64 %32, 1
  %div30 = sdiv i64 %sub29, 2
  store i64 %div30, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load double, double* %next.addr, align 8
  %34 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %tmp31, %"class.std::reverse_iterator.0"* %begin, i64 %34)
  %call32 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp31)
  store double %33, double* %call32, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIPdEmiEl(%"class.std::reverse_iterator"* noalias sret %agg.result, %"class.std::reverse_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %add.ptr = getelementptr inbounds double, double* %0, i64 %1
  call void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* %agg.result, double* %add.ptr)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZStmiIPdENSt16reverse_iteratorIT_E15difference_typeERKS3_S6_(%"class.std::reverse_iterator"* dereferenceable(8) %__x, %"class.std::reverse_iterator"* dereferenceable(8) %__y) #1 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__x, %"class.std::reverse_iterator"** %__x.addr, align 8
  store %"class.std::reverse_iterator"* %__y, %"class.std::reverse_iterator"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__y.addr, align 8
  %call = call double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__x.addr, align 8
  %call1 = call double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %1)
  %sub.ptr.lhs.cast = ptrtoint double* %call to i64
  %sub.ptr.rhs.cast = ptrtoint double* %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_(%"class.std::reverse_iterator.1"* %firstSource, %"class.std::reverse_iterator.1"* %lastSource, %"class.std::reverse_iterator.1"* %firstDest) #0 comdat {
entry:
  %tmp = alloca %"class.std::reverse_iterator.1", align 8
  %tmp2 = alloca %"class.std::reverse_iterator.1", align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %firstSource, %"class.std::reverse_iterator.1"* dereferenceable(8) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp, %"class.std::reverse_iterator.1"* %firstSource, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp)
  %0 = load double, double* %call1, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp2, %"class.std::reverse_iterator.1"* %firstDest, i32 0)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp2)
  store double %0, double* %call3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %begin, %"class.std::reverse_iterator.1"* %end) #0 comdat {
entry:
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %next7 = alloca double, align 8
  %tmp8 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp11 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator.1", align 8
  %call = call i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt16reverse_iteratorIT_E15difference_typeERKS9_SC_(%"class.std::reverse_iterator.1"* dereferenceable(8) %end, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %count, align 8
  %div = sdiv i64 %0, 2
  %sub = sub nsw i64 %div, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp, %"class.std::reverse_iterator.1"* %begin, i64 %2)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp)
  %3 = load double, double* %call1, align 8
  store double %3, double* %next, align 8
  %4 = load i64, i64* %count, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  %5 = load i64, i64* %j, align 8
  %6 = load double, double* %next, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_(i64 %4, %"class.std::reverse_iterator.1"* %agg.tmp, i64 %5, double %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %j, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %count, align 8
  %sub2 = sub nsw i64 %8, 1
  store i64 %sub2, i64* %j, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %9 = load i64, i64* %j, align 8
  %cmp4 = icmp sge i64 %9, 1
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  %10 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp8, %"class.std::reverse_iterator.1"* %begin, i64 %10)
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp8)
  %11 = load double, double* %call9, align 8
  store double %11, double* %next7, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %begin)
  %12 = load double, double* %call10, align 8
  %13 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp11, %"class.std::reverse_iterator.1"* %begin, i64 %13)
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp11)
  store double %12, double* %call12, align 8
  %14 = load i64, i64* %j, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp13, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  %15 = load double, double* %next7, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_(i64 %14, %"class.std::reverse_iterator.1"* %agg.tmp13, i64 0, double %15)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body5
  %16 = load i64, i64* %j, align 8
  %dec15 = add nsw i64 %16, -1
  store i64 %dec15, i64* %j, align 8
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(%"class.std::reverse_iterator.1"* %first, %"class.std::reverse_iterator.1"* %last) #0 comdat {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %first)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp1, %"class.std::reverse_iterator.1"* dereferenceable(8) %last)
  %call = call zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* %agg.tmp1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @current_test, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEbT_SA_(%"class.std::reverse_iterator.1"* %first, %"class.std::reverse_iterator.1"* %last) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %prev = alloca %"class.std::reverse_iterator.1", align 8
  %tmp = alloca %"class.std::reverse_iterator.1", align 8
  %tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp3 = alloca %"class.std::reverse_iterator.1", align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %prev, %"class.std::reverse_iterator.1"* dereferenceable(8) %first)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp, %"class.std::reverse_iterator.1"* %first, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %first, %"class.std::reverse_iterator.1"* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp1, %"class.std::reverse_iterator.1"* %first, i32 0)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp1)
  %0 = load double, double* %call2, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp3, %"class.std::reverse_iterator.1"* %prev, i32 0)
  %call4 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp3)
  %1 = load double, double* %call4, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* noalias sret %agg.result, %"class.std::reverse_iterator.1"* %this, i32) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %.addr = alloca i32, align 4
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.result, %"class.std::reverse_iterator.1"* dereferenceable(8) %this1)
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %current)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %__x, %"class.std::reverse_iterator.1"* dereferenceable(8) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  store %"class.std::reverse_iterator.1"* %__x, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  store %"class.std::reverse_iterator.1"* %__y, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  %1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %0, %"class.std::reverse_iterator.1"* dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* noalias sret %agg.result, %"class.std::reverse_iterator.1"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__n.addr = alloca i64, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %0 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl(%"class.std::reverse_iterator"* %current, i64 %0)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %1 = load double*, double** %coerce.dive2, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ES6_(%"class.std::reverse_iterator.1"* %agg.result, double* %1)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_(i64 %count, %"class.std::reverse_iterator.1"* %begin, i64 %free_in, double %next) #0 comdat {
entry:
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %tmp = alloca %"class.std::reverse_iterator.1", align 8
  %tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp5 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp7 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp14 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp16 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp22 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp25 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp27 = alloca %"class.std::reverse_iterator.1", align 8
  %tmp31 = alloca %"class.std::reverse_iterator.1", align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
  store double %next, double* %next.addr, align 8
  %0 = load i64, i64* %free_in.addr, align 8
  store i64 %0, i64* %free, align 8
  %1 = load i64, i64* %free, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %4, 1
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp, %"class.std::reverse_iterator.1"* %begin, i64 %sub)
  %call = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp)
  %5 = load double, double* %call, align 8
  %6 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp1, %"class.std::reverse_iterator.1"* %begin, i64 %6)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp1)
  %7 = load double, double* %call2, align 8
  %cmp3 = fcmp olt double %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i64, i64* %i, align 8
  %sub4 = sub nsw i64 %9, 1
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp5, %"class.std::reverse_iterator.1"* %begin, i64 %sub4)
  %call6 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp5)
  %10 = load double, double* %call6, align 8
  %11 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp7, %"class.std::reverse_iterator.1"* %begin, i64 %11)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp7)
  store double %10, double* %call8, align 8
  %12 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %12, 1
  store i64 %sub9, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %add10 = add nsw i64 %14, %13
  store i64 %add10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %count.addr, align 8
  %cmp11 = icmp eq i64 %15, %16
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %sub13 = sub nsw i64 %17, 1
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp14, %"class.std::reverse_iterator.1"* %begin, i64 %sub13)
  %call15 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp14)
  %18 = load double, double* %call15, align 8
  %19 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp16, %"class.std::reverse_iterator.1"* %begin, i64 %19)
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp16)
  store double %18, double* %call17, align 8
  %20 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %20, 1
  store i64 %sub18, i64* %free, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %for.end
  %21 = load i64, i64* %free, align 8
  %sub20 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub20, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp21 = icmp sgt i64 %22, %23
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp22, %"class.std::reverse_iterator.1"* %begin, i64 %24)
  %call23 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp22)
  %25 = load double, double* %call23, align 8
  %26 = load double, double* %next.addr, align 8
  %cmp24 = fcmp olt double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp25, %"class.std::reverse_iterator.1"* %begin, i64 %28)
  %call26 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp25)
  %29 = load double, double* %call26, align 8
  %30 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp27, %"class.std::reverse_iterator.1"* %begin, i64 %30)
  %call28 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp27)
  store double %29, double* %call28, align 8
  %31 = load i64, i64* %i, align 8
  store i64 %31, i64* %free, align 8
  %32 = load i64, i64* %free, align 8
  %sub29 = sub nsw i64 %32, 1
  %div30 = sdiv i64 %sub29, 2
  store i64 %div30, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load double, double* %next.addr, align 8
  %34 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %tmp31, %"class.std::reverse_iterator.1"* %begin, i64 %34)
  %call32 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp31)
  store double %33, double* %call32, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmiEl(%"class.std::reverse_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca double*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds double, double* %0, i64 %idx.neg
  store double* %add.ptr, double** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.std::reverse_iterator"* %retval, double** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive, align 8
  ret double* %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_(%"class.std::reverse_iterator"* %firstSource, %"class.std::reverse_iterator"* %lastSource, %"class.std::reverse_iterator"* %firstDest) #0 comdat {
entry:
  %tmp = alloca %"class.std::reverse_iterator", align 8
  %tmp2 = alloca %"class.std::reverse_iterator", align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %firstSource, %"class.std::reverse_iterator"* dereferenceable(8) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp, %"class.std::reverse_iterator"* %firstSource, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp)
  %0 = load double, double* %call1, align 8
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp2, %"class.std::reverse_iterator"* %firstDest, i32 0)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp2)
  store double %0, double* %call3, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %begin, %"class.std::reverse_iterator"* %end) #0 comdat {
entry:
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %next7 = alloca double, align 8
  %tmp8 = alloca %"class.std::reverse_iterator", align 8
  %tmp11 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp13 = alloca %"class.std::reverse_iterator", align 8
  %call = call i64 @_ZStmiIPdENSt16reverse_iteratorIT_E15difference_typeERKS3_S6_(%"class.std::reverse_iterator"* dereferenceable(8) %end, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %count, align 8
  %div = sdiv i64 %0, 2
  %sub = sub nsw i64 %div, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp, %"class.std::reverse_iterator"* %begin, i64 %2)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp)
  %3 = load double, double* %call1, align 8
  store double %3, double* %next, align 8
  %4 = load i64, i64* %count, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  %5 = load i64, i64* %j, align 8
  %6 = load double, double* %next, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_(i64 %4, %"class.std::reverse_iterator"* %agg.tmp, i64 %5, double %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %j, align 8
  %dec = add nsw i64 %7, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %count, align 8
  %sub2 = sub nsw i64 %8, 1
  store i64 %sub2, i64* %j, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %9 = load i64, i64* %j, align 8
  %cmp4 = icmp sge i64 %9, 1
  br i1 %cmp4, label %for.body5, label %for.end16

for.body5:                                        ; preds = %for.cond3
  %10 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp8, %"class.std::reverse_iterator"* %begin, i64 %10)
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp8)
  %11 = load double, double* %call9, align 8
  store double %11, double* %next7, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %begin)
  %12 = load double, double* %call10, align 8
  %13 = load i64, i64* %j, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp11, %"class.std::reverse_iterator"* %begin, i64 %13)
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp11)
  store double %12, double* %call12, align 8
  %14 = load i64, i64* %j, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp13, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  %15 = load double, double* %next7, align 8
  call void @_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_(i64 %14, %"class.std::reverse_iterator"* %agg.tmp13, i64 0, double %15)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body5
  %16 = load i64, i64* %j, align 8
  %dec15 = add nsw i64 %16, -1
  store i64 %dec15, i64* %j, align 8
  br label %for.cond3

for.end16:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_(%"class.std::reverse_iterator"* %first, %"class.std::reverse_iterator"* %last) #0 comdat {
entry:
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %first)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp1, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  %call = call zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* %agg.tmp1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @current_test, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedISt16reverse_iteratorIPdEEEbT_S4_(%"class.std::reverse_iterator"* %first, %"class.std::reverse_iterator"* %last) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %prev = alloca %"class.std::reverse_iterator", align 8
  %tmp = alloca %"class.std::reverse_iterator", align 8
  %tmp1 = alloca %"class.std::reverse_iterator", align 8
  %tmp3 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %prev, %"class.std::reverse_iterator"* dereferenceable(8) %first)
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp, %"class.std::reverse_iterator"* %first, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call zeroext i1 @_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %first, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp1, %"class.std::reverse_iterator"* %first, i32 0)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp1)
  %0 = load double, double* %call2, align 8
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp3, %"class.std::reverse_iterator"* %prev, i32 0)
  %call4 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp3)
  %1 = load double, double* %call4, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* noalias sret %agg.result, %"class.std::reverse_iterator"* %this, i32) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %.addr = alloca i32, align 4
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.result, %"class.std::reverse_iterator"* dereferenceable(8) %this1)
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %1 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 -1
  store double* %incdec.ptr, double** %current, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %__x, %"class.std::reverse_iterator"* dereferenceable(8) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__x, %"class.std::reverse_iterator"** %__x.addr, align 8
  store %"class.std::reverse_iterator"* %__y, %"class.std::reverse_iterator"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__x.addr, align 8
  %1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %0, %"class.std::reverse_iterator"* dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* noalias sret %agg.result, %"class.std::reverse_iterator"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds double, double* %0, i64 %idx.neg
  call void @_ZNSt16reverse_iteratorIPdEC2ES0_(%"class.std::reverse_iterator"* %agg.result, double* %add.ptr)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_(i64 %count, %"class.std::reverse_iterator"* %begin, i64 %free_in, double %next) #0 comdat {
entry:
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %tmp = alloca %"class.std::reverse_iterator", align 8
  %tmp1 = alloca %"class.std::reverse_iterator", align 8
  %tmp5 = alloca %"class.std::reverse_iterator", align 8
  %tmp7 = alloca %"class.std::reverse_iterator", align 8
  %tmp14 = alloca %"class.std::reverse_iterator", align 8
  %tmp16 = alloca %"class.std::reverse_iterator", align 8
  %tmp22 = alloca %"class.std::reverse_iterator", align 8
  %tmp25 = alloca %"class.std::reverse_iterator", align 8
  %tmp27 = alloca %"class.std::reverse_iterator", align 8
  %tmp31 = alloca %"class.std::reverse_iterator", align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
  store double %next, double* %next.addr, align 8
  %0 = load i64, i64* %free_in.addr, align 8
  store i64 %0, i64* %free, align 8
  %1 = load i64, i64* %free, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %4, 1
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp, %"class.std::reverse_iterator"* %begin, i64 %sub)
  %call = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp)
  %5 = load double, double* %call, align 8
  %6 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp1, %"class.std::reverse_iterator"* %begin, i64 %6)
  %call2 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp1)
  %7 = load double, double* %call2, align 8
  %cmp3 = fcmp olt double %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i64, i64* %i, align 8
  %sub4 = sub nsw i64 %9, 1
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp5, %"class.std::reverse_iterator"* %begin, i64 %sub4)
  %call6 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp5)
  %10 = load double, double* %call6, align 8
  %11 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp7, %"class.std::reverse_iterator"* %begin, i64 %11)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp7)
  store double %10, double* %call8, align 8
  %12 = load i64, i64* %i, align 8
  %sub9 = sub nsw i64 %12, 1
  store i64 %sub9, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %add10 = add nsw i64 %14, %13
  store i64 %add10, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %count.addr, align 8
  %cmp11 = icmp eq i64 %15, %16
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %sub13 = sub nsw i64 %17, 1
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp14, %"class.std::reverse_iterator"* %begin, i64 %sub13)
  %call15 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp14)
  %18 = load double, double* %call15, align 8
  %19 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp16, %"class.std::reverse_iterator"* %begin, i64 %19)
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp16)
  store double %18, double* %call17, align 8
  %20 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %20, 1
  store i64 %sub18, i64* %free, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %for.end
  %21 = load i64, i64* %free, align 8
  %sub20 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub20, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp21 = icmp sgt i64 %22, %23
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp22, %"class.std::reverse_iterator"* %begin, i64 %24)
  %call23 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp22)
  %25 = load double, double* %call23, align 8
  %26 = load double, double* %next.addr, align 8
  %cmp24 = fcmp olt double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %i, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp25, %"class.std::reverse_iterator"* %begin, i64 %28)
  %call26 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp25)
  %29 = load double, double* %call26, align 8
  %30 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp27, %"class.std::reverse_iterator"* %begin, i64 %30)
  %call28 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp27)
  store double %29, double* %call28, align 8
  %31 = load i64, i64* %i, align 8
  store i64 %31, i64* %free, align 8
  %32 = load i64, i64* %free, align 8
  %sub29 = sub nsw i64 %32, 1
  %div30 = sdiv i64 %sub29, 2
  store i64 %div30, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load double, double* %next.addr, align 8
  %34 = load i64, i64* %free, align 8
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %tmp31, %"class.std::reverse_iterator"* %begin, i64 %34)
  %call32 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp31)
  store double %33, double* %call32, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_(double* %firstSource.coerce, double* %lastSource.coerce, double* %firstDest.coerce) #0 comdat {
entry:
  %firstSource = alloca %"class.std::reverse_iterator", align 8
  %lastSource = alloca %"class.std::reverse_iterator", align 8
  %firstDest = alloca %"class.std::reverse_iterator", align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %coerce7 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstSource, i32 0, i32 0
  store double* %firstSource.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %lastSource, i32 0, i32 0
  store double* %lastSource.coerce, double** %coerce.dive1, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %firstDest, i32 0, i32 0
  store double* %firstDest.coerce, double** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %firstSource, %"class.std::reverse_iterator"* dereferenceable(8) %lastSource)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %firstSource, i32 0)
  %coerce.dive4 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call3, double** %coerce.dive4, align 8
  %call5 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce)
  %0 = load double, double* %call5, align 8
  %call6 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %firstDest, i32 0)
  %coerce.dive8 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce7, i32 0, i32 0
  store double* %call6, double** %coerce.dive8, align 8
  %call9 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce7)
  store double %0, double* %call9, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %begin.coerce, double* %end.coerce) #0 comdat {
entry:
  %begin = alloca %"class.std::reverse_iterator", align 8
  %end = alloca %"class.std::reverse_iterator", align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %next10 = alloca double, align 8
  %coerce12 = alloca %"class.std::reverse_iterator", align 8
  %coerce17 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp20 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.std::reverse_iterator"* dereferenceable(8) %end, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %count, align 8
  %div = sdiv i64 %0, 2
  %sub = sub nsw i64 %div, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  %call2 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %2)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce)
  %3 = load double, double* %call4, align 8
  store double %3, double* %next, align 8
  %4 = load i64, i64* %count, align 8
  %5 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %6 = bitcast %"class.std::reverse_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = load i64, i64* %j, align 8
  %8 = load double, double* %next, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %9 = load double*, double** %coerce.dive5, align 8
  call void @_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_(i64 %4, double* %9, i64 %7, double %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %j, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %count, align 8
  %sub6 = sub nsw i64 %11, 1
  store i64 %sub6, i64* %j, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc22, %for.end
  %12 = load i64, i64* %j, align 8
  %cmp8 = icmp sge i64 %12, 1
  br i1 %cmp8, label %for.body9, label %for.end24

for.body9:                                        ; preds = %for.cond7
  %13 = load i64, i64* %j, align 8
  %call11 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %13)
  %coerce.dive13 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce12, i32 0, i32 0
  store double* %call11, double** %coerce.dive13, align 8
  %call14 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce12)
  %14 = load double, double* %call14, align 8
  store double %14, double* %next10, align 8
  %call15 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %begin)
  %15 = load double, double* %call15, align 8
  %16 = load i64, i64* %j, align 8
  %call16 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %16)
  %coerce.dive18 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce17, i32 0, i32 0
  store double* %call16, double** %coerce.dive18, align 8
  %call19 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce17)
  store double %15, double* %call19, align 8
  %17 = load i64, i64* %j, align 8
  %18 = bitcast %"class.std::reverse_iterator"* %agg.tmp20 to i8*
  %19 = bitcast %"class.std::reverse_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = load double, double* %next10, align 8
  %coerce.dive21 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp20, i32 0, i32 0
  %21 = load double*, double** %coerce.dive21, align 8
  call void @_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_(i64 %17, double* %21, i64 0, double %20)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body9
  %22 = load i64, i64* %j, align 8
  %dec23 = add nsw i64 %22, -1
  store i64 %dec23, i64* %j, align 8
  br label %for.cond7

for.end24:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(double* %first.coerce, double* %last.coerce) #0 comdat {
entry:
  %first = alloca %"class.std::reverse_iterator", align 8
  %last = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::reverse_iterator"* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %2 = bitcast %"class.std::reverse_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::reverse_iterator"* %last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_(double* %4, double* %5)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @current_test, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbT_S8_(double* %first.coerce, double* %last.coerce) #0 comdat {
entry:
  %retval = alloca i1, align 1
  %first = alloca %"class.std::reverse_iterator", align 8
  %last = alloca %"class.std::reverse_iterator", align 8
  %prev = alloca %"class.std::reverse_iterator", align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %coerce5 = alloca %"class.std::reverse_iterator", align 8
  %coerce9 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.std::reverse_iterator"* %prev to i8*
  %1 = bitcast %"class.std::reverse_iterator"* %first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %first, i32 0)
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call3 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %first, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %first, i32 0)
  %coerce.dive6 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce5, i32 0, i32 0
  store double* %call4, double** %coerce.dive6, align 8
  %call7 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce5)
  %2 = load double, double* %call7, align 8
  %call8 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %prev, i32 0)
  %coerce.dive10 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce9, i32 0, i32 0
  store double* %call8, double** %coerce.dive10, align 8
  %call11 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce9)
  %3 = load double, double* %call11, align 8
  %cmp = fcmp olt double %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %this, i32) #0 comdat align 2 {
entry:
  %retval = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  %.addr = alloca i32, align 4
  %ref.tmp = alloca double*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  store i32 %0, i32* %.addr, align 4
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %1 = load double*, double** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 1
  store double* %incdec.ptr, double** %_M_current, align 8
  store double* %1, double** %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(%"class.std::reverse_iterator"* %retval, double** dereferenceable(8) %ref.tmp)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %retval, i32 0, i32 0
  %2 = load double*, double** %coerce.dive, align 8
  ret double* %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %__lhs, %"class.std::reverse_iterator"* dereferenceable(8) %__rhs) #1 comdat {
entry:
  %__lhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__rhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__lhs, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  store %"class.std::reverse_iterator"* %__rhs, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %cmp = icmp ne double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_(i64 %count, double* %begin.coerce, i64 %free_in, double %next) #0 comdat {
entry:
  %begin = alloca %"class.std::reverse_iterator", align 8
  %count.addr = alloca i64, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %coerce4 = alloca %"class.std::reverse_iterator", align 8
  %coerce10 = alloca %"class.std::reverse_iterator", align 8
  %coerce14 = alloca %"class.std::reverse_iterator", align 8
  %coerce23 = alloca %"class.std::reverse_iterator", align 8
  %coerce27 = alloca %"class.std::reverse_iterator", align 8
  %coerce35 = alloca %"class.std::reverse_iterator", align 8
  %coerce40 = alloca %"class.std::reverse_iterator", align 8
  %coerce44 = alloca %"class.std::reverse_iterator", align 8
  %coerce50 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
  store double %next, double* %next.addr, align 8
  %0 = load i64, i64* %free_in.addr, align 8
  store i64 %0, i64* %free, align 8
  %1 = load i64, i64* %free, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %4, 1
  %call = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %sub)
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive1, align 8
  %call2 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce)
  %5 = load double, double* %call2, align 8
  %6 = load i64, i64* %i, align 8
  %call3 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %6)
  %coerce.dive5 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce4, i32 0, i32 0
  store double* %call3, double** %coerce.dive5, align 8
  %call6 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce4)
  %7 = load double, double* %call6, align 8
  %cmp7 = fcmp olt double %5, %7
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i64, i64* %i, align 8
  %sub8 = sub nsw i64 %9, 1
  %call9 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %sub8)
  %coerce.dive11 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce10, i32 0, i32 0
  store double* %call9, double** %coerce.dive11, align 8
  %call12 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce10)
  %10 = load double, double* %call12, align 8
  %11 = load i64, i64* %free, align 8
  %call13 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %11)
  %coerce.dive15 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce14, i32 0, i32 0
  store double* %call13, double** %coerce.dive15, align 8
  %call16 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce14)
  store double %10, double* %call16, align 8
  %12 = load i64, i64* %i, align 8
  %sub17 = sub nsw i64 %12, 1
  store i64 %sub17, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load i64, i64* %i, align 8
  %add18 = add nsw i64 %14, %13
  store i64 %add18, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %count.addr, align 8
  %cmp19 = icmp eq i64 %15, %16
  br i1 %cmp19, label %if.then20, label %if.end31

if.then20:                                        ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %sub21 = sub nsw i64 %17, 1
  %call22 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %sub21)
  %coerce.dive24 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce23, i32 0, i32 0
  store double* %call22, double** %coerce.dive24, align 8
  %call25 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce23)
  %18 = load double, double* %call25, align 8
  %19 = load i64, i64* %free, align 8
  %call26 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %19)
  %coerce.dive28 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce27, i32 0, i32 0
  store double* %call26, double** %coerce.dive28, align 8
  %call29 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce27)
  store double %18, double* %call29, align 8
  %20 = load i64, i64* %i, align 8
  %sub30 = sub nsw i64 %20, 1
  store i64 %sub30, i64* %free, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %for.end
  %21 = load i64, i64* %free, align 8
  %sub32 = sub nsw i64 %21, 1
  %div = sdiv i64 %sub32, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end31
  %22 = load i64, i64* %free, align 8
  %23 = load i64, i64* %free_in.addr, align 8
  %cmp33 = icmp sgt i64 %22, %23
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load i64, i64* %i, align 8
  %call34 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %24)
  %coerce.dive36 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce35, i32 0, i32 0
  store double* %call34, double** %coerce.dive36, align 8
  %call37 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce35)
  %25 = load double, double* %call37, align 8
  %26 = load double, double* %next.addr, align 8
  %cmp38 = fcmp olt double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, i64* %i, align 8
  %call39 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %28)
  %coerce.dive41 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce40, i32 0, i32 0
  store double* %call39, double** %coerce.dive41, align 8
  %call42 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce40)
  %29 = load double, double* %call42, align 8
  %30 = load i64, i64* %free, align 8
  %call43 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %30)
  %coerce.dive45 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce44, i32 0, i32 0
  store double* %call43, double** %coerce.dive45, align 8
  %call46 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce44)
  store double %29, double* %call46, align 8
  %31 = load i64, i64* %i, align 8
  store i64 %31, i64* %free, align 8
  %32 = load i64, i64* %free, align 8
  %sub47 = sub nsw i64 %32, 1
  %div48 = sdiv i64 %sub47, 2
  store i64 %div48, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %33 = load double, double* %next.addr, align 8
  %34 = load i64, i64* %free, align 8
  %call49 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %begin, i64 %34)
  %coerce.dive51 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce50, i32 0, i32 0
  store double* %call49, double** %coerce.dive51, align 8
  %call52 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce50)
  store double %33, double* %call52, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark4copyIPdS1_EEvT_S2_T0_(double* %firstSource, double* %lastSource, double* %firstDest) #1 comdat {
entry:
  %firstSource.addr = alloca double*, align 8
  %lastSource.addr = alloca double*, align 8
  %firstDest.addr = alloca double*, align 8
  store double* %firstSource, double** %firstSource.addr, align 8
  store double* %lastSource, double** %lastSource.addr, align 8
  store double* %firstDest, double** %firstDest.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %firstSource.addr, align 8
  %1 = load double*, double** %lastSource.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double*, double** %firstSource.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %2, i32 1
  store double* %incdec.ptr, double** %firstSource.addr, align 8
  %3 = load double, double* %2, align 8
  %4 = load double*, double** %firstDest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr1, double** %firstDest.addr, align 8
  store double %3, double* %4, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark8heapsortIPddEEvT_S2_(double* %begin, double* %end) #0 comdat {
entry:
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %j = alloca i64, align 8
  %count = alloca i64, align 8
  %next = alloca double, align 8
  %next5 = alloca double, align 8
  store double* %begin, double** %begin.addr, align 8
  store double* %end, double** %end.addr, align 8
  %0 = load double*, double** %end.addr, align 8
  %1 = load double*, double** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %count, align 8
  %2 = load i64, i64* %count, align 8
  %div = sdiv i64 %2, 2
  %sub = sub nsw i64 %div, 1
  store i64 %sub, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %j, align 8
  %cmp = icmp sge i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %begin.addr, align 8
  %5 = load i64, i64* %j, align 8
  %add.ptr = getelementptr inbounds double, double* %4, i64 %5
  %6 = load double, double* %add.ptr, align 8
  store double %6, double* %next, align 8
  %7 = load i64, i64* %count, align 8
  %8 = load double*, double** %begin.addr, align 8
  %9 = load i64, i64* %j, align 8
  %10 = load double, double* %next, align 8
  call void @_ZN9benchmark7sift_inIPddEEvlT_lT0_(i64 %7, double* %8, i64 %9, double %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %j, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %count, align 8
  %sub1 = sub nsw i64 %12, 1
  store i64 %sub1, i64* %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %13 = load i64, i64* %j, align 8
  %cmp3 = icmp sge i64 %13, 1
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %14 = load double*, double** %begin.addr, align 8
  %15 = load i64, i64* %j, align 8
  %add.ptr6 = getelementptr inbounds double, double* %14, i64 %15
  %16 = load double, double* %add.ptr6, align 8
  store double %16, double* %next5, align 8
  %17 = load double*, double** %begin.addr, align 8
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %begin.addr, align 8
  %20 = load i64, i64* %j, align 8
  %add.ptr7 = getelementptr inbounds double, double* %19, i64 %20
  store double %18, double* %add.ptr7, align 8
  %21 = load i64, i64* %j, align 8
  %22 = load double*, double** %begin.addr, align 8
  %23 = load double, double* %next5, align 8
  call void @_ZN9benchmark7sift_inIPddEEvlT_lT0_(i64 %21, double* %22, i64 0, double %23)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %24 = load i64, i64* %j, align 8
  %dec9 = add nsw i64 %24, -1
  store i64 %dec9, i64* %j, align 8
  br label %for.cond2

for.end10:                                        ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z13verify_sortedIPdEvT_S1_(double* %first, double* %last) #0 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %call = call zeroext i1 @_ZN9benchmark9is_sortedIPdEEbT_S2_(double* %0, double* %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @current_test, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9benchmark9is_sortedIPdEEbT_S2_(double* %first, double* %last) #1 comdat {
entry:
  %retval = alloca i1, align 1
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %prev = alloca double*, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  %0 = load double*, double** %first.addr, align 8
  store double* %0, double** %prev, align 8
  %1 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load double*, double** %first.addr, align 8
  %3 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load double*, double** %first.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %4, i32 1
  store double* %incdec.ptr1, double** %first.addr, align 8
  %5 = load double, double* %4, align 8
  %6 = load double*, double** %prev, align 8
  %incdec.ptr2 = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr2, double** %prev, align 8
  %7 = load double, double* %6, align 8
  %cmp3 = fcmp olt double %5, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark7sift_inIPddEEvlT_lT0_(i64 %count, double* %begin, i64 %free_in, double %next) #1 comdat {
entry:
  %count.addr = alloca i64, align 8
  %begin.addr = alloca double*, align 8
  %free_in.addr = alloca i64, align 8
  %next.addr = alloca double, align 8
  %i = alloca i64, align 8
  %free = alloca i64, align 8
  store i64 %count, i64* %count.addr, align 8
  store double* %begin, double** %begin.addr, align 8
  store i64 %free_in, i64* %free_in.addr, align 8
  store double %next, double* %next.addr, align 8
  %0 = load i64, i64* %free_in.addr, align 8
  store i64 %0, i64* %free, align 8
  %1 = load i64, i64* %free, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %count.addr, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %begin.addr, align 8
  %5 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %5, 1
  %add.ptr = getelementptr inbounds double, double* %4, i64 %sub
  %6 = load double, double* %add.ptr, align 8
  %7 = load double*, double** %begin.addr, align 8
  %8 = load i64, i64* %i, align 8
  %add.ptr1 = getelementptr inbounds double, double* %7, i64 %8
  %9 = load double, double* %add.ptr1, align 8
  %cmp2 = fcmp olt double %6, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load double*, double** %begin.addr, align 8
  %12 = load i64, i64* %i, align 8
  %sub3 = sub nsw i64 %12, 1
  %add.ptr4 = getelementptr inbounds double, double* %11, i64 %sub3
  %13 = load double, double* %add.ptr4, align 8
  %14 = load double*, double** %begin.addr, align 8
  %15 = load i64, i64* %free, align 8
  %add.ptr5 = getelementptr inbounds double, double* %14, i64 %15
  store double %13, double* %add.ptr5, align 8
  %16 = load i64, i64* %i, align 8
  %sub6 = sub nsw i64 %16, 1
  store i64 %sub6, i64* %free, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %i, align 8
  %add7 = add nsw i64 %18, %17
  store i64 %add7, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %count.addr, align 8
  %cmp8 = icmp eq i64 %19, %20
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %for.end
  %21 = load double*, double** %begin.addr, align 8
  %22 = load i64, i64* %i, align 8
  %sub10 = sub nsw i64 %22, 1
  %add.ptr11 = getelementptr inbounds double, double* %21, i64 %sub10
  %23 = load double, double* %add.ptr11, align 8
  %24 = load double*, double** %begin.addr, align 8
  %25 = load i64, i64* %free, align 8
  %add.ptr12 = getelementptr inbounds double, double* %24, i64 %25
  store double %23, double* %add.ptr12, align 8
  %26 = load i64, i64* %i, align 8
  %sub13 = sub nsw i64 %26, 1
  store i64 %sub13, i64* %free, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %for.end
  %27 = load i64, i64* %free, align 8
  %sub15 = sub nsw i64 %27, 1
  %div = sdiv i64 %sub15, 2
  store i64 %div, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end14
  %28 = load i64, i64* %free, align 8
  %29 = load i64, i64* %free_in.addr, align 8
  %cmp16 = icmp sgt i64 %28, %29
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load double*, double** %begin.addr, align 8
  %31 = load i64, i64* %i, align 8
  %add.ptr17 = getelementptr inbounds double, double* %30, i64 %31
  %32 = load double, double* %add.ptr17, align 8
  %33 = load double, double* %next.addr, align 8
  %cmp18 = fcmp olt double %32, %33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %34 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %35 = load double*, double** %begin.addr, align 8
  %36 = load i64, i64* %i, align 8
  %add.ptr19 = getelementptr inbounds double, double* %35, i64 %36
  %37 = load double, double* %add.ptr19, align 8
  %38 = load double*, double** %begin.addr, align 8
  %39 = load i64, i64* %free, align 8
  %add.ptr20 = getelementptr inbounds double, double* %38, i64 %39
  store double %37, double* %add.ptr20, align 8
  %40 = load i64, i64* %i, align 8
  store i64 %40, i64* %free, align 8
  %41 = load i64, i64* %free, align 8
  %sub21 = sub nsw i64 %41, 1
  %div22 = sdiv i64 %sub21, 2
  store i64 %div22, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load double, double* %next.addr, align 8
  %43 = load double*, double** %begin.addr, align 8
  %44 = load i64, i64* %free, align 8
  %add.ptr23 = getelementptr inbounds double, double* %43, i64 %44
  store double %42, double* %add.ptr23, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %begin, %"class.std::reverse_iterator.2"* %end) #0 comdat {
entry:
  %middleValue = alloca double, align 8
  %left = alloca %"class.std::reverse_iterator.2", align 8
  %right = alloca %"class.std::reverse_iterator.2", align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp20 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp21 = alloca %"class.std::reverse_iterator.2", align 8
  %agg.tmp22 = alloca %"class.std::reverse_iterator.2", align 8
  %call = call i64 @_ZStmiISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEENS0_IT_E15difference_typeERKSA_SD_(%"class.std::reverse_iterator.2"* dereferenceable(16) %end, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %begin)
  %0 = load double, double* %call1, align 8
  store double %0, double* %middleValue, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %left, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %right, %"class.std::reverse_iterator.2"* dereferenceable(16) %end)
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %1 = load double, double* %middleValue, align 8
  %call2 = call dereferenceable(16) %"class.std::reverse_iterator.2"* @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEmmEv(%"class.std::reverse_iterator.2"* %right)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %call2)
  %2 = load double, double* %call3, align 8
  %cmp4 = fcmp olt double %1, %2
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call5 = call zeroext i1 @_ZStltISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %left, %"class.std::reverse_iterator.2"* dereferenceable(16) %right)
  br i1 %call5, label %if.end, label %if.then6

if.then6:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %if.end
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %left)
  %3 = load double, double* %call8, align 8
  %4 = load double, double* %middleValue, align 8
  %cmp9 = fcmp olt double %3, %4
  br i1 %cmp9, label %while.body10, label %while.end12

while.body10:                                     ; preds = %while.cond7
  %call11 = call dereferenceable(16) %"class.std::reverse_iterator.2"* @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEv(%"class.std::reverse_iterator.2"* %left)
  br label %while.cond7

while.end12:                                      ; preds = %while.cond7
  %call13 = call zeroext i1 @_ZStltISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %left, %"class.std::reverse_iterator.2"* dereferenceable(16) %right)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.end12
  br label %for.end

if.end15:                                         ; preds = %while.end12
  %call16 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %right)
  %5 = load double, double* %call16, align 8
  store double %5, double* %temp, align 8
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %left)
  %6 = load double, double* %call17, align 8
  %call18 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %right)
  store double %6, double* %call18, align 8
  %7 = load double, double* %temp, align 8
  %call19 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %left)
  store double %7, double* %call19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then14, %if.then6
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %agg.tmp20, %"class.std::reverse_iterator.2"* %right, i64 1)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %agg.tmp, %"class.std::reverse_iterator.2"* %agg.tmp20)
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEplEl(%"class.std::reverse_iterator.2"* sret %agg.tmp21, %"class.std::reverse_iterator.2"* %right, i64 1)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %agg.tmp22, %"class.std::reverse_iterator.2"* dereferenceable(16) %end)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %agg.tmp21, %"class.std::reverse_iterator.2"* %agg.tmp22)
  br label %if.end23

if.end23:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"class.std::reverse_iterator.2"* @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEmmEv(%"class.std::reverse_iterator.2"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  %call = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEv(%"class.std::reverse_iterator.1"* %current)
  ret %"class.std::reverse_iterator.2"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStltISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %__x, %"class.std::reverse_iterator.2"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator.1", align 8
  store %"class.std::reverse_iterator.2"* %__x, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  store %"class.std::reverse_iterator.2"* %__y, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__y.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* sret %ref.tmp, %"class.std::reverse_iterator.2"* %0)
  %1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %__x.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEE4baseEv(%"class.std::reverse_iterator.1"* sret %ref.tmp1, %"class.std::reverse_iterator.2"* %1)
  %call = call zeroext i1 @_ZStltIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %ref.tmp1)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"class.std::reverse_iterator.2"* @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEv(%"class.std::reverse_iterator.2"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.2"*, align 8
  store %"class.std::reverse_iterator.2"* %this, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.2"*, %"class.std::reverse_iterator.2"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.2", %"class.std::reverse_iterator.2"* %this1, i32 0, i32 1
  %call = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %current)
  ret %"class.std::reverse_iterator.2"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZStltIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %__x, %"class.std::reverse_iterator.1"* dereferenceable(8) %__y) #1 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.1"* %__x, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  store %"class.std::reverse_iterator.1"* %__y, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__y.addr, align 8
  %call = call double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %__x.addr, align 8
  %call2 = call double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEE4baseEv(%"class.std::reverse_iterator.1"* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp1, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp1)
  ret i1 %call4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %__lhs, %"class.std::reverse_iterator"* dereferenceable(8) %__rhs) #1 comdat {
entry:
  %__lhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__rhs.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__lhs, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  store %"class.std::reverse_iterator"* %__rhs, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load double*, double** %call, align 8
  %2 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %2)
  %3 = load double*, double** %call1, align 8
  %cmp = icmp ult double* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEv(%"class.std::reverse_iterator.1"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.1"*, align 8
  store %"class.std::reverse_iterator.1"* %this, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.1"*, %"class.std::reverse_iterator.1"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.1", %"class.std::reverse_iterator.1"* %this1, i32 0, i32 0
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %current)
  ret %"class.std::reverse_iterator.1"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %begin, %"class.std::reverse_iterator.0"* %end) #0 comdat {
entry:
  %middleValue = alloca double, align 8
  %left = alloca %"class.std::reverse_iterator.0", align 8
  %right = alloca %"class.std::reverse_iterator.0", align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp20 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp21 = alloca %"class.std::reverse_iterator.0", align 8
  %agg.tmp22 = alloca %"class.std::reverse_iterator.0", align 8
  %call = call i64 @_ZStmiISt16reverse_iteratorIPdEENS0_IT_E15difference_typeERKS4_S7_(%"class.std::reverse_iterator.0"* dereferenceable(16) %end, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %begin)
  %0 = load double, double* %call1, align 8
  store double %0, double* %middleValue, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %left, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %right, %"class.std::reverse_iterator.0"* dereferenceable(16) %end)
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %1 = load double, double* %middleValue, align 8
  %call2 = call dereferenceable(16) %"class.std::reverse_iterator.0"* @_ZNSt16reverse_iteratorIS_IPdEEmmEv(%"class.std::reverse_iterator.0"* %right)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %call2)
  %2 = load double, double* %call3, align 8
  %cmp4 = fcmp olt double %1, %2
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call5 = call zeroext i1 @_ZStltISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %left, %"class.std::reverse_iterator.0"* dereferenceable(16) %right)
  br i1 %call5, label %if.end, label %if.then6

if.then6:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %if.end
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %left)
  %3 = load double, double* %call8, align 8
  %4 = load double, double* %middleValue, align 8
  %cmp9 = fcmp olt double %3, %4
  br i1 %cmp9, label %while.body10, label %while.end12

while.body10:                                     ; preds = %while.cond7
  %call11 = call dereferenceable(16) %"class.std::reverse_iterator.0"* @_ZNSt16reverse_iteratorIS_IPdEEppEv(%"class.std::reverse_iterator.0"* %left)
  br label %while.cond7

while.end12:                                      ; preds = %while.cond7
  %call13 = call zeroext i1 @_ZStltISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %left, %"class.std::reverse_iterator.0"* dereferenceable(16) %right)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.end12
  br label %for.end

if.end15:                                         ; preds = %while.end12
  %call16 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %right)
  %5 = load double, double* %call16, align 8
  store double %5, double* %temp, align 8
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %left)
  %6 = load double, double* %call17, align 8
  %call18 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %right)
  store double %6, double* %call18, align 8
  %7 = load double, double* %temp, align 8
  %call19 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %left)
  store double %7, double* %call19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then14, %if.then6
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %agg.tmp20, %"class.std::reverse_iterator.0"* %right, i64 1)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %agg.tmp, %"class.std::reverse_iterator.0"* %agg.tmp20)
  call void @_ZNKSt16reverse_iteratorIS_IPdEEplEl(%"class.std::reverse_iterator.0"* sret %agg.tmp21, %"class.std::reverse_iterator.0"* %right, i64 1)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %agg.tmp22, %"class.std::reverse_iterator.0"* dereferenceable(16) %end)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %agg.tmp21, %"class.std::reverse_iterator.0"* %agg.tmp22)
  br label %if.end23

if.end23:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"class.std::reverse_iterator.0"* @_ZNSt16reverse_iteratorIS_IPdEEmmEv(%"class.std::reverse_iterator.0"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEppEv(%"class.std::reverse_iterator"* %current)
  ret %"class.std::reverse_iterator.0"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_ZStltISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %__x, %"class.std::reverse_iterator.0"* dereferenceable(16) %__y) #0 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::reverse_iterator", align 8
  store %"class.std::reverse_iterator.0"* %__x, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  store %"class.std::reverse_iterator.0"* %__y, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__y.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* sret %ref.tmp, %"class.std::reverse_iterator.0"* %0)
  %1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %__x.addr, align 8
  call void @_ZNKSt16reverse_iteratorIS_IPdEE4baseEv(%"class.std::reverse_iterator"* sret %ref.tmp1, %"class.std::reverse_iterator.0"* %1)
  %call = call zeroext i1 @_ZStltIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp1)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"class.std::reverse_iterator.0"* @_ZNSt16reverse_iteratorIS_IPdEEppEv(%"class.std::reverse_iterator.0"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator.0"*, align 8
  store %"class.std::reverse_iterator.0"* %this, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator.0"*, %"class.std::reverse_iterator.0"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator.0", %"class.std::reverse_iterator.0"* %this1, i32 0, i32 1
  %call = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %current)
  ret %"class.std::reverse_iterator.0"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZStltIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %__x, %"class.std::reverse_iterator"* dereferenceable(8) %__y) #1 comdat {
entry:
  %__x.addr = alloca %"class.std::reverse_iterator"*, align 8
  %__y.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %__x, %"class.std::reverse_iterator"** %__x.addr, align 8
  store %"class.std::reverse_iterator"* %__y, %"class.std::reverse_iterator"** %__y.addr, align 8
  %0 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__y.addr, align 8
  %call = call double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %0)
  %1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %__x.addr, align 8
  %call1 = call double* @_ZNKSt16reverse_iteratorIPdE4baseEv(%"class.std::reverse_iterator"* %1)
  %cmp = icmp ult double* %call, %call1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEppEv(%"class.std::reverse_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::reverse_iterator"*, align 8
  store %"class.std::reverse_iterator"* %this, %"class.std::reverse_iterator"** %this.addr, align 8
  %this1 = load %"class.std::reverse_iterator"*, %"class.std::reverse_iterator"** %this.addr, align 8
  %current = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %this1, i32 0, i32 0
  %0 = load double*, double** %current, align 8
  %incdec.ptr = getelementptr inbounds double, double* %0, i32 -1
  store double* %incdec.ptr, double** %current, align 8
  ret %"class.std::reverse_iterator"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %begin, %"class.std::reverse_iterator.1"* %end) #0 comdat {
entry:
  %middleValue = alloca double, align 8
  %left = alloca %"class.std::reverse_iterator.1", align 8
  %right = alloca %"class.std::reverse_iterator.1", align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp20 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp21 = alloca %"class.std::reverse_iterator.1", align 8
  %agg.tmp22 = alloca %"class.std::reverse_iterator.1", align 8
  %call = call i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt16reverse_iteratorIT_E15difference_typeERKS9_SC_(%"class.std::reverse_iterator.1"* dereferenceable(8) %end, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %begin)
  %0 = load double, double* %call1, align 8
  store double %0, double* %middleValue, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %left, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %right, %"class.std::reverse_iterator.1"* dereferenceable(8) %end)
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %1 = load double, double* %middleValue, align 8
  %call2 = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %right)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %call2)
  %2 = load double, double* %call3, align 8
  %cmp4 = fcmp olt double %1, %2
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call5 = call zeroext i1 @_ZStltIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %left, %"class.std::reverse_iterator.1"* dereferenceable(8) %right)
  br i1 %call5, label %if.end, label %if.then6

if.then6:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %if.end
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %left)
  %3 = load double, double* %call8, align 8
  %4 = load double, double* %middleValue, align 8
  %cmp9 = fcmp olt double %3, %4
  br i1 %cmp9, label %while.body10, label %while.end12

while.body10:                                     ; preds = %while.cond7
  %call11 = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEv(%"class.std::reverse_iterator.1"* %left)
  br label %while.cond7

while.end12:                                      ; preds = %while.cond7
  %call13 = call zeroext i1 @_ZStltIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %left, %"class.std::reverse_iterator.1"* dereferenceable(8) %right)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.end12
  br label %for.end

if.end15:                                         ; preds = %while.end12
  %call16 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %right)
  %5 = load double, double* %call16, align 8
  store double %5, double* %temp, align 8
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %left)
  %6 = load double, double* %call17, align 8
  %call18 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %right)
  store double %6, double* %call18, align 8
  %7 = load double, double* %temp, align 8
  %call19 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %left)
  store double %7, double* %call19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then14, %if.then6
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %agg.tmp20, %"class.std::reverse_iterator.1"* %right, i64 1)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %agg.tmp, %"class.std::reverse_iterator.1"* %agg.tmp20)
  call void @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEplEl(%"class.std::reverse_iterator.1"* sret %agg.tmp21, %"class.std::reverse_iterator.1"* %right, i64 1)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %agg.tmp22, %"class.std::reverse_iterator.1"* dereferenceable(8) %end)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %agg.tmp21, %"class.std::reverse_iterator.1"* %agg.tmp22)
  br label %if.end23

if.end23:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %begin, %"class.std::reverse_iterator"* %end) #0 comdat {
entry:
  %middleValue = alloca double, align 8
  %left = alloca %"class.std::reverse_iterator", align 8
  %right = alloca %"class.std::reverse_iterator", align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp20 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp21 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp22 = alloca %"class.std::reverse_iterator", align 8
  %call = call i64 @_ZStmiIPdENSt16reverse_iteratorIT_E15difference_typeERKS3_S6_(%"class.std::reverse_iterator"* dereferenceable(8) %end, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %begin)
  %0 = load double, double* %call1, align 8
  store double %0, double* %middleValue, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %left, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %right, %"class.std::reverse_iterator"* dereferenceable(8) %end)
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %1 = load double, double* %middleValue, align 8
  %call2 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %right)
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %call2)
  %2 = load double, double* %call3, align 8
  %cmp4 = fcmp olt double %1, %2
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call5 = call zeroext i1 @_ZStltIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %left, %"class.std::reverse_iterator"* dereferenceable(8) %right)
  br i1 %call5, label %if.end, label %if.then6

if.then6:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond7

while.cond7:                                      ; preds = %while.body10, %if.end
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %left)
  %3 = load double, double* %call8, align 8
  %4 = load double, double* %middleValue, align 8
  %cmp9 = fcmp olt double %3, %4
  br i1 %cmp9, label %while.body10, label %while.end12

while.body10:                                     ; preds = %while.cond7
  %call11 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEppEv(%"class.std::reverse_iterator"* %left)
  br label %while.cond7

while.end12:                                      ; preds = %while.cond7
  %call13 = call zeroext i1 @_ZStltIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %left, %"class.std::reverse_iterator"* dereferenceable(8) %right)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.end12
  br label %for.end

if.end15:                                         ; preds = %while.end12
  %call16 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %right)
  %5 = load double, double* %call16, align 8
  store double %5, double* %temp, align 8
  %call17 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %left)
  %6 = load double, double* %call17, align 8
  %call18 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %right)
  store double %6, double* %call18, align 8
  %7 = load double, double* %temp, align 8
  %call19 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %left)
  store double %7, double* %call19, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then14, %if.then6
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %agg.tmp20, %"class.std::reverse_iterator"* %right, i64 1)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %agg.tmp, %"class.std::reverse_iterator"* %agg.tmp20)
  call void @_ZNKSt16reverse_iteratorIPdEplEl(%"class.std::reverse_iterator"* sret %agg.tmp21, %"class.std::reverse_iterator"* %right, i64 1)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %agg.tmp22, %"class.std::reverse_iterator"* dereferenceable(8) %end)
  call void @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %agg.tmp21, %"class.std::reverse_iterator"* %agg.tmp22)
  br label %if.end23

if.end23:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %begin.coerce, double* %end.coerce) #0 comdat {
entry:
  %begin = alloca %"class.std::reverse_iterator", align 8
  %end = alloca %"class.std::reverse_iterator", align 8
  %middleValue = alloca double, align 8
  %left = alloca %"class.std::reverse_iterator", align 8
  %right = alloca %"class.std::reverse_iterator", align 8
  %temp = alloca double, align 8
  %agg.tmp = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp21 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp26 = alloca %"class.std::reverse_iterator", align 8
  %agg.tmp29 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  %call = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.std::reverse_iterator"* dereferenceable(8) %end, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  %cmp = icmp sgt i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %call2 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %begin)
  %0 = load double, double* %call2, align 8
  store double %0, double* %middleValue, align 8
  %1 = bitcast %"class.std::reverse_iterator"* %left to i8*
  %2 = bitcast %"class.std::reverse_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %3 = bitcast %"class.std::reverse_iterator"* %right to i8*
  %4 = bitcast %"class.std::reverse_iterator"* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %5 = load double, double* %middleValue, align 8
  %call3 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %right)
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %call3)
  %6 = load double, double* %call4, align 8
  %cmp5 = fcmp olt double %5, %6
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call6 = call zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %left, %"class.std::reverse_iterator"* dereferenceable(8) %right)
  br i1 %call6, label %if.end, label %if.then7

if.then7:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %if.end
  %call9 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %left)
  %7 = load double, double* %call9, align 8
  %8 = load double, double* %middleValue, align 8
  %cmp10 = fcmp olt double %7, %8
  br i1 %cmp10, label %while.body11, label %while.end13

while.body11:                                     ; preds = %while.cond8
  %call12 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv(%"class.std::reverse_iterator"* %left)
  br label %while.cond8

while.end13:                                      ; preds = %while.cond8
  %call14 = call zeroext i1 @_ZN9__gnu_cxxltIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %left, %"class.std::reverse_iterator"* dereferenceable(8) %right)
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %while.end13
  br label %for.end

if.end16:                                         ; preds = %while.end13
  %call17 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %right)
  %9 = load double, double* %call17, align 8
  store double %9, double* %temp, align 8
  %call18 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %left)
  %10 = load double, double* %call18, align 8
  %call19 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %right)
  store double %10, double* %call19, align 8
  %11 = load double, double* %temp, align 8
  %call20 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %left)
  store double %11, double* %call20, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then15, %if.then7
  %12 = bitcast %"class.std::reverse_iterator"* %agg.tmp to i8*
  %13 = bitcast %"class.std::reverse_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %call22 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %right, i64 1)
  %coerce.dive23 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp21, i32 0, i32 0
  store double* %call22, double** %coerce.dive23, align 8
  %coerce.dive24 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp, i32 0, i32 0
  %14 = load double*, double** %coerce.dive24, align 8
  %coerce.dive25 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp21, i32 0, i32 0
  %15 = load double*, double** %coerce.dive25, align 8
  call void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %14, double* %15)
  %call27 = call double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(%"class.std::reverse_iterator"* %right, i64 1)
  %coerce.dive28 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp26, i32 0, i32 0
  store double* %call27, double** %coerce.dive28, align 8
  %16 = bitcast %"class.std::reverse_iterator"* %agg.tmp29 to i8*
  %17 = bitcast %"class.std::reverse_iterator"* %end to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %coerce.dive30 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp26, i32 0, i32 0
  %18 = load double*, double** %coerce.dive30, align 8
  %coerce.dive31 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %agg.tmp29, i32 0, i32 0
  %19 = load double*, double** %coerce.dive31, align 8
  call void @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %18, double* %19)
  br label %if.end32

if.end32:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark9quicksortIPddEEvT_S2_(double* %begin, double* %end) #0 comdat {
entry:
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %middleValue = alloca double, align 8
  %left = alloca double*, align 8
  %right = alloca double*, align 8
  %temp = alloca double, align 8
  store double* %begin, double** %begin.addr, align 8
  store double* %end, double** %end.addr, align 8
  %0 = load double*, double** %end.addr, align 8
  %1 = load double*, double** %begin.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load double*, double** %begin.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %middleValue, align 8
  %4 = load double*, double** %begin.addr, align 8
  store double* %4, double** %left, align 8
  %5 = load double*, double** %end.addr, align 8
  store double* %5, double** %right, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load double, double* %middleValue, align 8
  %7 = load double*, double** %right, align 8
  %incdec.ptr = getelementptr inbounds double, double* %7, i32 -1
  store double* %incdec.ptr, double** %right, align 8
  %8 = load double, double* %incdec.ptr, align 8
  %cmp1 = fcmp olt double %6, %8
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load double*, double** %left, align 8
  %10 = load double*, double** %right, align 8
  %cmp2 = icmp ult double* %9, %10
  br i1 %cmp2, label %if.end, label %if.then3

if.then3:                                         ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %if.end
  %11 = load double*, double** %left, align 8
  %12 = load double, double* %11, align 8
  %13 = load double, double* %middleValue, align 8
  %cmp5 = fcmp olt double %12, %13
  br i1 %cmp5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %14 = load double*, double** %left, align 8
  %incdec.ptr7 = getelementptr inbounds double, double* %14, i32 1
  store double* %incdec.ptr7, double** %left, align 8
  br label %while.cond4

while.end8:                                       ; preds = %while.cond4
  %15 = load double*, double** %left, align 8
  %16 = load double*, double** %right, align 8
  %cmp9 = icmp ult double* %15, %16
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %while.end8
  br label %for.end

if.end11:                                         ; preds = %while.end8
  %17 = load double*, double** %right, align 8
  %18 = load double, double* %17, align 8
  store double %18, double* %temp, align 8
  %19 = load double*, double** %left, align 8
  %20 = load double, double* %19, align 8
  %21 = load double*, double** %right, align 8
  store double %20, double* %21, align 8
  %22 = load double, double* %temp, align 8
  %23 = load double*, double** %left, align 8
  store double %22, double* %23, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then10, %if.then3
  %24 = load double*, double** %begin.addr, align 8
  %25 = load double*, double** %right, align 8
  %add.ptr = getelementptr inbounds double, double* %25, i64 1
  call void @_ZN9benchmark9quicksortIPddEEvT_S2_(double* %24, double* %add.ptr)
  %26 = load double*, double** %right, align 8
  %add.ptr12 = getelementptr inbounds double, double* %26, i64 1
  %27 = load double*, double** %end.addr, align 8
  call void @_ZN9benchmark9quicksortIPddEEvT_S2_(double* %add.ptr12, double* %27)
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_(%"class.std::reverse_iterator.2"* %begin, %"class.std::reverse_iterator.2"* %end) #0 comdat {
entry:
  %p = alloca %"class.std::reverse_iterator.2", align 8
  %tmp = alloca %"class.std::reverse_iterator.2", align 8
  %tmp2 = alloca double, align 8
  %j = alloca %"class.std::reverse_iterator.2", align 8
  %prev = alloca %"class.std::reverse_iterator.2", align 8
  %tmp13 = alloca %"class.std::reverse_iterator.2", align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %p, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp, %"class.std::reverse_iterator.2"* %p, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %p, %"class.std::reverse_iterator.2"* dereferenceable(16) %end)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %p)
  %0 = load double, double* %call3, align 8
  store double %0, double* %tmp2, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %j, %"class.std::reverse_iterator.2"* dereferenceable(16) %p)
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEC2ERKS8_(%"class.std::reverse_iterator.2"* %prev, %"class.std::reverse_iterator.2"* dereferenceable(16) %j)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call6 = call zeroext i1 @_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %j, %"class.std::reverse_iterator.2"* dereferenceable(16) %begin)
  br i1 %call6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load double, double* %tmp2, align 8
  %call7 = call dereferenceable(16) %"class.std::reverse_iterator.2"* @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEmmEv(%"class.std::reverse_iterator.2"* %prev)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %call7)
  %2 = load double, double* %call8, align 8
  %cmp = fcmp olt double %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %prev)
  %4 = load double, double* %call9, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %j)
  store double %4, double* %call10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = call dereferenceable(16) %"class.std::reverse_iterator.2"* @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEmmEv(%"class.std::reverse_iterator.2"* %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load double, double* %tmp2, align 8
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %j)
  store double %5, double* %call12, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp13, %"class.std::reverse_iterator.2"* %p, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_(%"class.std::reverse_iterator.0"* %begin, %"class.std::reverse_iterator.0"* %end) #0 comdat {
entry:
  %p = alloca %"class.std::reverse_iterator.0", align 8
  %tmp = alloca %"class.std::reverse_iterator.0", align 8
  %tmp2 = alloca double, align 8
  %j = alloca %"class.std::reverse_iterator.0", align 8
  %prev = alloca %"class.std::reverse_iterator.0", align 8
  %tmp13 = alloca %"class.std::reverse_iterator.0", align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %p, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp, %"class.std::reverse_iterator.0"* %p, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %p, %"class.std::reverse_iterator.0"* dereferenceable(16) %end)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %p)
  %0 = load double, double* %call3, align 8
  store double %0, double* %tmp2, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %j, %"class.std::reverse_iterator.0"* dereferenceable(16) %p)
  call void @_ZNSt16reverse_iteratorIS_IPdEEC2ERKS2_(%"class.std::reverse_iterator.0"* %prev, %"class.std::reverse_iterator.0"* dereferenceable(16) %j)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call6 = call zeroext i1 @_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %j, %"class.std::reverse_iterator.0"* dereferenceable(16) %begin)
  br i1 %call6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load double, double* %tmp2, align 8
  %call7 = call dereferenceable(16) %"class.std::reverse_iterator.0"* @_ZNSt16reverse_iteratorIS_IPdEEmmEv(%"class.std::reverse_iterator.0"* %prev)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %call7)
  %2 = load double, double* %call8, align 8
  %cmp = fcmp olt double %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %prev)
  %4 = load double, double* %call9, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %j)
  store double %4, double* %call10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = call dereferenceable(16) %"class.std::reverse_iterator.0"* @_ZNSt16reverse_iteratorIS_IPdEEmmEv(%"class.std::reverse_iterator.0"* %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load double, double* %tmp2, align 8
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %j)
  store double %5, double* %call12, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp13, %"class.std::reverse_iterator.0"* %p, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_(%"class.std::reverse_iterator.1"* %begin, %"class.std::reverse_iterator.1"* %end) #0 comdat {
entry:
  %p = alloca %"class.std::reverse_iterator.1", align 8
  %tmp = alloca %"class.std::reverse_iterator.1", align 8
  %tmp2 = alloca double, align 8
  %j = alloca %"class.std::reverse_iterator.1", align 8
  %prev = alloca %"class.std::reverse_iterator.1", align 8
  %tmp13 = alloca %"class.std::reverse_iterator.1", align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %p, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp, %"class.std::reverse_iterator.1"* %p, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call = call zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %p, %"class.std::reverse_iterator.1"* dereferenceable(8) %end)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %p)
  %0 = load double, double* %call3, align 8
  store double %0, double* %tmp2, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %j, %"class.std::reverse_iterator.1"* dereferenceable(8) %p)
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEC2ERKS7_(%"class.std::reverse_iterator.1"* %prev, %"class.std::reverse_iterator.1"* dereferenceable(8) %j)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call6 = call zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %j, %"class.std::reverse_iterator.1"* dereferenceable(8) %begin)
  br i1 %call6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load double, double* %tmp2, align 8
  %call7 = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %prev)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %call7)
  %2 = load double, double* %call8, align 8
  %cmp = fcmp olt double %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %prev)
  %4 = load double, double* %call9, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %j)
  store double %4, double* %call10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = call dereferenceable(8) %"class.std::reverse_iterator.1"* @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEmmEv(%"class.std::reverse_iterator.1"* %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load double, double* %tmp2, align 8
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %j)
  store double %5, double* %call12, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp13, %"class.std::reverse_iterator.1"* %p, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortISt16reverse_iteratorIPdEdEEvT_S4_(%"class.std::reverse_iterator"* %begin, %"class.std::reverse_iterator"* %end) #0 comdat {
entry:
  %p = alloca %"class.std::reverse_iterator", align 8
  %tmp = alloca %"class.std::reverse_iterator", align 8
  %tmp2 = alloca double, align 8
  %j = alloca %"class.std::reverse_iterator", align 8
  %prev = alloca %"class.std::reverse_iterator", align 8
  %tmp13 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %p, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp, %"class.std::reverse_iterator"* %p, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call = call zeroext i1 @_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %p, %"class.std::reverse_iterator"* dereferenceable(8) %end)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %p)
  %0 = load double, double* %call3, align 8
  store double %0, double* %tmp2, align 8
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %j, %"class.std::reverse_iterator"* dereferenceable(8) %p)
  call void @_ZNSt16reverse_iteratorIPdEC2ERKS1_(%"class.std::reverse_iterator"* %prev, %"class.std::reverse_iterator"* dereferenceable(8) %j)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call6 = call zeroext i1 @_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %j, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  br i1 %call6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load double, double* %tmp2, align 8
  %call7 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %prev)
  %call8 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %call7)
  %2 = load double, double* %call8, align 8
  %cmp = fcmp olt double %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call9 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %prev)
  %4 = load double, double* %call9, align 8
  %call10 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %j)
  store double %4, double* %call10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call11 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZNSt16reverse_iteratorIPdEmmEv(%"class.std::reverse_iterator"* %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %5 = load double, double* %tmp2, align 8
  %call12 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %j)
  store double %5, double* %call12, align 8
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp13, %"class.std::reverse_iterator"* %p, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_(double* %begin.coerce, double* %end.coerce) #0 comdat {
entry:
  %begin = alloca %"class.std::reverse_iterator", align 8
  %end = alloca %"class.std::reverse_iterator", align 8
  %p = alloca %"class.std::reverse_iterator", align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %tmp = alloca double, align 8
  %j = alloca %"class.std::reverse_iterator", align 8
  %prev = alloca %"class.std::reverse_iterator", align 8
  %coerce15 = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %begin, i32 0, i32 0
  store double* %begin.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %end, i32 0, i32 0
  store double* %end.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.std::reverse_iterator"* %p to i8*
  %1 = bitcast %"class.std::reverse_iterator"* %begin to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 8, i32 8, i1 false)
  %call = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %p, i32 0)
  %coerce.dive2 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call, double** %coerce.dive2, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %call3 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %p, %"class.std::reverse_iterator"* dereferenceable(8) %end)
  br i1 %call3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %p)
  %2 = load double, double* %call4, align 8
  store double %2, double* %tmp, align 8
  %3 = bitcast %"class.std::reverse_iterator"* %j to i8*
  %4 = bitcast %"class.std::reverse_iterator"* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = bitcast %"class.std::reverse_iterator"* %prev to i8*
  %6 = bitcast %"class.std::reverse_iterator"* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %call7 = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %j, %"class.std::reverse_iterator"* dereferenceable(8) %begin)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load double, double* %tmp, align 8
  %call8 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %prev)
  %call9 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %call8)
  %8 = load double, double* %call9, align 8
  %cmp = fcmp olt double %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %call10 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %prev)
  %10 = load double, double* %call10, align 8
  %call11 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %j)
  store double %10, double* %call11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call12 = call dereferenceable(8) %"class.std::reverse_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEmmEv(%"class.std::reverse_iterator"* %j)
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load double, double* %tmp, align 8
  %call13 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %j)
  store double %11, double* %call13, align 8
  %call14 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %p, i32 0)
  %coerce.dive16 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce15, i32 0, i32 0
  store double* %call14, double** %coerce.dive16, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9benchmark13insertionSortIPddEEvT_S2_(double* %begin, double* %end) #1 comdat {
entry:
  %begin.addr = alloca double*, align 8
  %end.addr = alloca double*, align 8
  %p = alloca double*, align 8
  %tmp = alloca double, align 8
  %j = alloca double*, align 8
  %prev = alloca double*, align 8
  store double* %begin, double** %begin.addr, align 8
  store double* %end, double** %end.addr, align 8
  %0 = load double*, double** %begin.addr, align 8
  store double* %0, double** %p, align 8
  %1 = load double*, double** %p, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 1
  store double* %incdec.ptr, double** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load double*, double** %p, align 8
  %3 = load double*, double** %end.addr, align 8
  %cmp = icmp ne double* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load double*, double** %p, align 8
  %5 = load double, double* %4, align 8
  store double %5, double* %tmp, align 8
  %6 = load double*, double** %p, align 8
  store double* %6, double** %j, align 8
  %7 = load double*, double** %j, align 8
  store double* %7, double** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load double*, double** %j, align 8
  %9 = load double*, double** %begin.addr, align 8
  %cmp3 = icmp ne double* %8, %9
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load double, double* %tmp, align 8
  %11 = load double*, double** %prev, align 8
  %incdec.ptr4 = getelementptr inbounds double, double* %11, i32 -1
  store double* %incdec.ptr4, double** %prev, align 8
  %12 = load double, double* %incdec.ptr4, align 8
  %cmp5 = fcmp olt double %10, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load double*, double** %prev, align 8
  %15 = load double, double* %14, align 8
  %16 = load double*, double** %j, align 8
  store double %15, double* %16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load double*, double** %j, align 8
  %incdec.ptr6 = getelementptr inbounds double, double* %17, i32 -1
  store double* %incdec.ptr6, double** %j, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load double, double* %tmp, align 8
  %19 = load double*, double** %j, align 8
  store double %18, double* %19, align 8
  %20 = load double*, double** %p, align 8
  %incdec.ptr7 = getelementptr inbounds double, double* %20, i32 1
  store double* %incdec.ptr7, double** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_(%"class.std::reverse_iterator.2"* %first, %"class.std::reverse_iterator.2"* %last, double %result) #0 comdat {
entry:
  %result.addr = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator.2", align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEbRKS0_IT_ESC_(%"class.std::reverse_iterator.2"* dereferenceable(16) %first, %"class.std::reverse_iterator.2"* dereferenceable(16) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  call void @_ZNSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEppEi(%"class.std::reverse_iterator.2"* sret %tmp, %"class.std::reverse_iterator.2"* %first, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdeEv(%"class.std::reverse_iterator.2"* %tmp)
  %1 = load double, double* %call1, align 8
  %add = fadd double %0, %1
  store double %add, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load double, double* %result.addr, align 8
  ret double %2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z9check_sumd(double %result) #0 comdat {
entry:
  %result.addr = alloca double, align 8
  store double %result, double* %result.addr, align 8
  %0 = load double, double* %result.addr, align 8
  %1 = load double, double* @init_value, align 8
  %mul = fmul double 2.000000e+03, %1
  %cmp = fcmp une double %0, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @current_test, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_(%"class.std::reverse_iterator.0"* %first, %"class.std::reverse_iterator.0"* %last, double %result) #0 comdat {
entry:
  %result.addr = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator.0", align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneISt16reverse_iteratorIPdEEbRKS0_IT_ES6_(%"class.std::reverse_iterator.0"* dereferenceable(16) %first, %"class.std::reverse_iterator.0"* dereferenceable(16) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  call void @_ZNSt16reverse_iteratorIS_IPdEEppEi(%"class.std::reverse_iterator.0"* sret %tmp, %"class.std::reverse_iterator.0"* %first, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIS_IPdEEdeEv(%"class.std::reverse_iterator.0"* %tmp)
  %1 = load double, double* %call1, align 8
  %add = fadd double %0, %1
  store double %add, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load double, double* %result.addr, align 8
  ret double %2
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_(%"class.std::reverse_iterator.1"* %first, %"class.std::reverse_iterator.1"* %last, double %result) #0 comdat {
entry:
  %result.addr = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator.1", align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEbRKSt16reverse_iteratorIT_ESB_(%"class.std::reverse_iterator.1"* dereferenceable(8) %first, %"class.std::reverse_iterator.1"* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEppEi(%"class.std::reverse_iterator.1"* sret %tmp, %"class.std::reverse_iterator.1"* %first, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdeEv(%"class.std::reverse_iterator.1"* %tmp)
  %1 = load double, double* %call1, align 8
  %add = fadd double %0, %1
  store double %add, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load double, double* %result.addr, align 8
  ret double %2
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_(%"class.std::reverse_iterator"* %first, %"class.std::reverse_iterator"* %last, double %result) #0 comdat {
entry:
  %result.addr = alloca double, align 8
  %tmp = alloca %"class.std::reverse_iterator", align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZStneIPdEbRKSt16reverse_iteratorIT_ES5_(%"class.std::reverse_iterator"* dereferenceable(8) %first, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  call void @_ZNSt16reverse_iteratorIPdEppEi(%"class.std::reverse_iterator"* sret %tmp, %"class.std::reverse_iterator"* %first, i32 0)
  %call1 = call dereferenceable(8) double* @_ZNKSt16reverse_iteratorIPdEdeEv(%"class.std::reverse_iterator"* %tmp)
  %1 = load double, double* %call1, align 8
  %add = fadd double %0, %1
  store double %add, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load double, double* %result.addr, align 8
  ret double %2
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_(double* %first.coerce, double* %last.coerce, double %result) #0 comdat {
entry:
  %first = alloca %"class.std::reverse_iterator", align 8
  %last = alloca %"class.std::reverse_iterator", align 8
  %result.addr = alloca double, align 8
  %coerce = alloca %"class.std::reverse_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %first, i32 0, i32 0
  store double* %first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %last, i32 0, i32 0
  store double* %last.coerce, double** %coerce.dive1, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%"class.std::reverse_iterator"* dereferenceable(8) %first, %"class.std::reverse_iterator"* dereferenceable(8) %last)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load double, double* %result.addr, align 8
  %call2 = call double* @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi(%"class.std::reverse_iterator"* %first, i32 0)
  %coerce.dive3 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %coerce, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %call4 = call dereferenceable(8) double* @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv(%"class.std::reverse_iterator"* %coerce)
  %1 = load double, double* %call4, align 8
  %add = fadd double %0, %1
  store double %add, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load double, double* %result.addr, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZN9benchmark10accumulateIPddEET0_T_S3_S2_(double* %first, double* %last, double %result) #1 comdat {
entry:
  %first.addr = alloca double*, align 8
  %last.addr = alloca double*, align 8
  %result.addr = alloca double, align 8
  store double* %first, double** %first.addr, align 8
  store double* %last, double** %last.addr, align 8
  store double %result, double* %result.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double*, double** %first.addr, align 8
  %1 = load double*, double** %last.addr, align 8
  %cmp = icmp ne double* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %result.addr, align 8
  %3 = load double*, double** %first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %3, i32 1
  store double* %incdec.ptr, double** %first.addr, align 8
  %4 = load double, double* %3, align 8
  %add = fadd double %2, %4
  store double %add, double* %result.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load double, double* %result.addr, align 8
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load double*, double** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load double*, double** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(%"class.std::vector"* %this, double* %__position.coerce, i64 %__n, double* dereferenceable(8) %__x) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__position = alloca %"class.std::reverse_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca double*, align 8
  %__x_copy = alloca double, align 8
  %__elems_after = alloca i64, align 8
  %ref.tmp = alloca %"class.std::reverse_iterator", align 8
  %__old_finish = alloca double*, align 8
  %__len = alloca i64, align 8
  %__elems_before = alloca i64, align 8
  %ref.tmp46 = alloca %"class.std::reverse_iterator", align 8
  %__new_start = alloca double*, align 8
  %__new_finish = alloca double*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %__position, i32 0, i32 0
  store double* %__position.coerce, double** %coerce.dive, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end109

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 2
  %2 = load double*, double** %_M_end_of_storage, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %4 = load double*, double** %_M_finish, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %5 = load i64, i64* %__n.addr, align 8
  %cmp3 = icmp uge i64 %sub.ptr.div, %5
  br i1 %cmp3, label %if.then4, label %if.else44

if.then4:                                         ; preds = %if.then
  %6 = load double*, double** %__x.addr, align 8
  %7 = load double, double* %6, align 8
  store double %7, double* %__x_copy, align 8
  %call = call double* @_ZNSt6vectorIdSaIdEE3endEv(%"class.std::vector"* %this1)
  %coerce.dive5 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive5, align 8
  %call6 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp, %"class.std::reverse_iterator"* dereferenceable(8) %__position)
  store i64 %call6, i64* %__elems_after, align 8
  %8 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %_M_finish8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl7, i32 0, i32 1
  %9 = load double*, double** %_M_finish8, align 8
  store double* %9, double** %__old_finish, align 8
  %10 = load i64, i64* %__elems_after, align 8
  %11 = load i64, i64* %__n.addr, align 8
  %cmp9 = icmp ugt i64 %10, %11
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then4
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %_M_finish12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl11, i32 0, i32 1
  %13 = load double*, double** %_M_finish12, align 8
  %14 = load i64, i64* %__n.addr, align 8
  %idx.neg = sub i64 0, %14
  %add.ptr = getelementptr inbounds double, double* %13, i64 %idx.neg
  %15 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %15, i32 0, i32 0
  %_M_finish14 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl13, i32 0, i32 1
  %16 = load double*, double** %_M_finish14, align 8
  %17 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %_M_finish16 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl15, i32 0, i32 1
  %18 = load double*, double** %_M_finish16, align 8
  %19 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call17 = call dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %19)
  %call18 = call double* @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %add.ptr, double* %16, double* %18, %"struct.std::iterator"* dereferenceable(1) %call17)
  %20 = load i64, i64* %__n.addr, align 8
  %21 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %_M_finish20 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl19, i32 0, i32 1
  %22 = load double*, double** %_M_finish20, align 8
  %add.ptr21 = getelementptr inbounds double, double* %22, i64 %20
  store double* %add.ptr21, double** %_M_finish20, align 8
  %call22 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
  %23 = load double*, double** %call22, align 8
  %24 = load double*, double** %__old_finish, align 8
  %25 = load i64, i64* %__n.addr, align 8
  %idx.neg23 = sub i64 0, %25
  %add.ptr24 = getelementptr inbounds double, double* %24, i64 %idx.neg23
  %26 = load double*, double** %__old_finish, align 8
  %call25 = call double* @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(double* %23, double* %add.ptr24, double* %26)
  %call26 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
  %27 = load double*, double** %call26, align 8
  %call27 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
  %28 = load double*, double** %call27, align 8
  %29 = load i64, i64* %__n.addr, align 8
  %add.ptr28 = getelementptr inbounds double, double* %28, i64 %29
  call void @_ZSt4fillIPddEvT_S1_RKT0_(double* %27, double* %add.ptr28, double* dereferenceable(8) %__x_copy)
  br label %if.end

if.else:                                          ; preds = %if.then4
  %30 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %_M_finish30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl29, i32 0, i32 1
  %31 = load double*, double** %_M_finish30, align 8
  %32 = load i64, i64* %__n.addr, align 8
  %33 = load i64, i64* %__elems_after, align 8
  %sub = sub i64 %32, %33
  %34 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call31 = call dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %34)
  %call32 = call double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %31, i64 %sub, double* dereferenceable(8) %__x_copy, %"struct.std::iterator"* dereferenceable(1) %call31)
  %35 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl33 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %_M_finish34 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl33, i32 0, i32 1
  store double* %call32, double** %_M_finish34, align 8
  %call35 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
  %36 = load double*, double** %call35, align 8
  %37 = load double*, double** %__old_finish, align 8
  %38 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %38, i32 0, i32 0
  %_M_finish37 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl36, i32 0, i32 1
  %39 = load double*, double** %_M_finish37, align 8
  %40 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call38 = call dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %40)
  %call39 = call double* @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %36, double* %37, double* %39, %"struct.std::iterator"* dereferenceable(1) %call38)
  %41 = load i64, i64* %__elems_after, align 8
  %42 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl40 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %_M_finish41 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl40, i32 0, i32 1
  %43 = load double*, double** %_M_finish41, align 8
  %add.ptr42 = getelementptr inbounds double, double* %43, i64 %41
  store double* %add.ptr42, double** %_M_finish41, align 8
  %call43 = call dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
  %44 = load double*, double** %call43, align 8
  %45 = load double*, double** %__old_finish, align 8
  call void @_ZSt4fillIPddEvT_S1_RKT0_(double* %44, double* %45, double* dereferenceable(8) %__x_copy)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end108

if.else44:                                        ; preds = %if.then
  %46 = load i64, i64* %__n.addr, align 8
  %call45 = call i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0))
  store i64 %call45, i64* %__len, align 8
  %call47 = call double* @_ZNSt6vectorIdSaIdEE5beginEv(%"class.std::vector"* %this1)
  %coerce.dive48 = getelementptr inbounds %"class.std::reverse_iterator", %"class.std::reverse_iterator"* %ref.tmp46, i32 0, i32 0
  store double* %call47, double** %coerce.dive48, align 8
  %call49 = call i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.std::reverse_iterator"* dereferenceable(8) %__position, %"class.std::reverse_iterator"* dereferenceable(8) %ref.tmp46)
  store i64 %call49, i64* %__elems_before, align 8
  %47 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %48 = load i64, i64* %__len, align 8
  %call50 = call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %47, i64 %48)
  store double* %call50, double** %__new_start, align 8
  %49 = load double*, double** %__new_start, align 8
  store double* %49, double** %__new_finish, align 8
  %50 = load double*, double** %__new_start, align 8
  %51 = load i64, i64* %__elems_before, align 8
  %add.ptr51 = getelementptr inbounds double, double* %50, i64 %51
  %52 = load i64, i64* %__n.addr, align 8
  %53 = load double*, double** %__x.addr, align 8
  %54 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call52 = invoke dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %54)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else44
  %call54 = invoke double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %add.ptr51, i64 %52, double* dereferenceable(8) %53, %"struct.std::iterator"* dereferenceable(1) %call52)
          to label %invoke.cont53 unwind label %lpad

invoke.cont53:                                    ; preds = %invoke.cont
  store double* null, double** %__new_finish, align 8
  %55 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl55 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %55, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl55, i32 0, i32 0
  %56 = load double*, double** %_M_start, align 8
  %call57 = invoke dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
          to label %invoke.cont56 unwind label %lpad

invoke.cont56:                                    ; preds = %invoke.cont53
  %57 = load double*, double** %call57, align 8
  %58 = load double*, double** %__new_start, align 8
  %59 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call59 = invoke dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %59)
          to label %invoke.cont58 unwind label %lpad

invoke.cont58:                                    ; preds = %invoke.cont56
  %call61 = invoke double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %56, double* %57, double* %58, %"struct.std::iterator"* dereferenceable(1) %call59)
          to label %invoke.cont60 unwind label %lpad

invoke.cont60:                                    ; preds = %invoke.cont58
  store double* %call61, double** %__new_finish, align 8
  %60 = load i64, i64* %__n.addr, align 8
  %61 = load double*, double** %__new_finish, align 8
  %add.ptr62 = getelementptr inbounds double, double* %61, i64 %60
  store double* %add.ptr62, double** %__new_finish, align 8
  %call64 = invoke dereferenceable(8) double** @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(%"class.std::reverse_iterator"* %__position)
          to label %invoke.cont63 unwind label %lpad

invoke.cont63:                                    ; preds = %invoke.cont60
  %62 = load double*, double** %call64, align 8
  %63 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl65 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %_M_finish66 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl65, i32 0, i32 1
  %64 = load double*, double** %_M_finish66, align 8
  %65 = load double*, double** %__new_finish, align 8
  %66 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call68 = invoke dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %66)
          to label %invoke.cont67 unwind label %lpad

invoke.cont67:                                    ; preds = %invoke.cont63
  %call70 = invoke double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %62, double* %64, double* %65, %"struct.std::iterator"* dereferenceable(1) %call68)
          to label %invoke.cont69 unwind label %lpad

invoke.cont69:                                    ; preds = %invoke.cont67
  store double* %call70, double** %__new_finish, align 8
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
  %70 = call i8* @__cxa_begin_catch(i8* %exn) #12
  %71 = load double*, double** %__new_finish, align 8
  %tobool = icmp ne double* %71, null
  br i1 %tobool, label %if.else79, label %if.then71

if.then71:                                        ; preds = %catch
  %72 = load double*, double** %__new_start, align 8
  %73 = load i64, i64* %__elems_before, align 8
  %add.ptr72 = getelementptr inbounds double, double* %72, i64 %73
  %74 = load double*, double** %__new_start, align 8
  %75 = load i64, i64* %__elems_before, align 8
  %add.ptr73 = getelementptr inbounds double, double* %74, i64 %75
  %76 = load i64, i64* %__n.addr, align 8
  %add.ptr74 = getelementptr inbounds double, double* %add.ptr73, i64 %76
  %77 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call77 = invoke dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %77)
          to label %invoke.cont76 unwind label %lpad75

invoke.cont76:                                    ; preds = %if.then71
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %add.ptr72, double* %add.ptr74, %"struct.std::iterator"* dereferenceable(1) %call77)
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
  %81 = load double*, double** %__new_start, align 8
  %82 = load double*, double** %__new_finish, align 8
  %83 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call81 = invoke dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %83)
          to label %invoke.cont80 unwind label %lpad75

invoke.cont80:                                    ; preds = %if.else79
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %81, double* %82, %"struct.std::iterator"* dereferenceable(1) %call81)
          to label %invoke.cont82 unwind label %lpad75

invoke.cont82:                                    ; preds = %invoke.cont80
  br label %if.end83

if.end83:                                         ; preds = %invoke.cont82, %invoke.cont78
  %84 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %85 = load double*, double** %__new_start, align 8
  %86 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %84, double* %85, i64 %86)
          to label %invoke.cont84 unwind label %lpad75

invoke.cont84:                                    ; preds = %if.end83
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad75

invoke.cont85:                                    ; preds = %lpad75
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont69
  %87 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl86 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %87, i32 0, i32 0
  %_M_start87 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl86, i32 0, i32 0
  %88 = load double*, double** %_M_start87, align 8
  %89 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl88 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %89, i32 0, i32 0
  %_M_finish89 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl88, i32 0, i32 1
  %90 = load double*, double** %_M_finish89, align 8
  %91 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call90 = call dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %91)
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %88, double* %90, %"struct.std::iterator"* dereferenceable(1) %call90)
  %92 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %93 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl91 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %93, i32 0, i32 0
  %_M_start92 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl91, i32 0, i32 0
  %94 = load double*, double** %_M_start92, align 8
  %95 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl93 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %95, i32 0, i32 0
  %_M_end_of_storage94 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl93, i32 0, i32 2
  %96 = load double*, double** %_M_end_of_storage94, align 8
  %97 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl95 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %97, i32 0, i32 0
  %_M_start96 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl95, i32 0, i32 0
  %98 = load double*, double** %_M_start96, align 8
  %sub.ptr.lhs.cast97 = ptrtoint double* %96 to i64
  %sub.ptr.rhs.cast98 = ptrtoint double* %98 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %sub.ptr.div100 = sdiv exact i64 %sub.ptr.sub99, 8
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %92, double* %94, i64 %sub.ptr.div100)
  %99 = load double*, double** %__new_start, align 8
  %100 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl101 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %100, i32 0, i32 0
  %_M_start102 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl101, i32 0, i32 0
  store double* %99, double** %_M_start102, align 8
  %101 = load double*, double** %__new_finish, align 8
  %102 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl103 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %102, i32 0, i32 0
  %_M_finish104 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl103, i32 0, i32 1
  store double* %101, double** %_M_finish104, align 8
  %103 = load double*, double** %__new_start, align 8
  %104 = load i64, i64* %__len, align 8
  %add.ptr105 = getelementptr inbounds double, double* %103, i64 %104
  %105 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl106 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %105, i32 0, i32 0
  %_M_end_of_storage107 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl106, i32 0, i32 2
  store double* %add.ptr105, double** %_M_end_of_storage107, align 8
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
  call void @__clang_call_terminate(i8* %107) #13
  unreachable

unreachable:                                      ; preds = %invoke.cont84
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this, double* %__pos) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__pos.addr = alloca double*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store double* %__pos, double** %__pos.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load double*, double** %__pos.addr, align 8
  %1 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %1, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %2 = load double*, double** %_M_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"struct.std::iterator"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3)
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %0, double* %2, %"struct.std::iterator"* dereferenceable(1) %call)
  %4 = load double*, double** %__pos.addr, align 8
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store double* %4, double** %_M_finish3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"struct.std::iterator"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__alloc.addr = alloca %"struct.std::iterator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.std::iterator"* %__alloc, %"struct.std::iterator"** %__alloc.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %3 = load %"struct.std::iterator"*, %"struct.std::iterator"** %__alloc.addr, align 8
  %call = call double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %0, double* %1, double* %2, %"struct.std::iterator"* dereferenceable(1) %3)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__miter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %1)
  %2 = load double*, double** %__result.addr, align 8
  %call2 = call double* @_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %call, double* %call1, double* %2)
  ret double* %call2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZSt4fillIPddEvT_S1_RKT0_(double* %__first, double* %__last, double* dereferenceable(8) %__value) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__value.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %1)
  %2 = load double*, double** %__value.addr, align 8
  call void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double* %call, double* %call1, double* dereferenceable(8) %2)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(double* %__first, i64 %__n, double* dereferenceable(8) %__x, %"struct.std::iterator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca double*, align 8
  %.addr = alloca %"struct.std::iterator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store %"struct.std::iterator"* %0, %"struct.std::iterator"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load i64, i64* %__n.addr, align 8
  %3 = load double*, double** %__x.addr, align 8
  %call = call double* @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(double* %1, i64 %2, double* dereferenceable(8) %3)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
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
  %call = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this1)
  %call2 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  %call4 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this1)
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this1)
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this1)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
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
  %1 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.std::iterator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"struct.std::iterator"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %call, %cond.true ], [ null, %cond.false ]
  ret double* %cond
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"struct.std::iterator"* dereferenceable(1) %__alloc) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__alloc.addr = alloca %"struct.std::iterator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.std::iterator"* %__alloc, %"struct.std::iterator"** %__alloc.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %3 = load %"struct.std::iterator"*, %"struct.std::iterator"** %__alloc.addr, align 8
  %call = call double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %0, double* %1, double* %2, %"struct.std::iterator"* dereferenceable(1) %3)
  ret double* %call
}

declare void @__cxa_end_catch()

declare void @__cxa_rethrow()

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(double* %__first, double* %__last, double* %__result, %"struct.std::iterator"* dereferenceable(1)) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %.addr = alloca %"struct.std::iterator"*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store %"struct.std::iterator"* %0, %"struct.std::iterator"** %.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %2 = load double*, double** %__last.addr, align 8
  %3 = load double*, double** %__result.addr, align 8
  %call = call double* @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(double* %1, double* %2, double* %3)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__assignable = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %call = call double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(double* %0, double* %1, double* %2)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(double* %__first, double* %__last, double* %__result) #0 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %call = call double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %0, double* %1, double* %2)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt4copyIPdS0_ET0_T_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__miter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %1)
  %2 = load double*, double** %__result.addr, align 8
  %call2 = call double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %call, double* %call1, double* %2)
  ret double* %call2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__miter_baseIPdET_S1_(double* %__it) #1 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %1)
  %2 = load double*, double** %__result.addr, align 8
  %call2 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %2)
  %call3 = call double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double* %call, double* %call1, double* %call2)
  ret double* %call3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt12__niter_baseIPdET_S1_(double* %__it) #1 comdat {
entry:
  %__it.addr = alloca double*, align 8
  store double* %__it, double** %__it.addr, align 8
  %0 = load double*, double** %__it.addr, align 8
  ret double* %0
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__simple = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %call = call double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %0, double* %1, double* %2)
  ret double* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #1 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %_Num = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load double*, double** %__result.addr, align 8
  %4 = bitcast double* %3 to i8*
  %5 = load double*, double** %__first.addr, align 8
  %6 = bitcast double* %5 to i8*
  %7 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %7
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load double*, double** %__result.addr, align 8
  %9 = load i64, i64* %_Num, align 8
  %add.ptr = getelementptr inbounds double, double* %8, i64 %9
  ret double* %add.ptr
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_m(%"struct.std::iterator"* dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::iterator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::iterator"* %__a, %"struct.std::iterator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"struct.std::iterator"*, %"struct.std::iterator"** %__a.addr, align 8
  %1 = bitcast %"struct.std::iterator"* %0 to %"struct.std::iterator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"struct.std::iterator"* %1, i64 %2, i8* null)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"struct.std::iterator"* %this, i64 %__n, i8*) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"struct.std::iterator"* %this1) #12
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to double*
  ret double* %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"struct.std::iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #11

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"struct.std::iterator"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0)
  %call2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_(%"struct.std::iterator"* dereferenceable(1) %call)
  ret i64 %call2
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #1 comdat {
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
define linkonce_odr dereferenceable(1) %"struct.std::iterator"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl to %"struct.std::iterator"*
  ret %"struct.std::iterator"* %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_(%"struct.std::iterator"* dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %__a.addr = alloca %"struct.std::iterator"*, align 8
  store %"struct.std::iterator"* %__a, %"struct.std::iterator"** %__a.addr, align 8
  %0 = load %"struct.std::iterator"*, %"struct.std::iterator"** %__a.addr, align 8
  %1 = bitcast %"struct.std::iterator"* %0 to %"struct.std::iterator"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"struct.std::iterator"* %1) #12
  ret i64 %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* dereferenceable(8) %__x) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca double*, align 8
  %__assignable = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = load double*, double** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load double*, double** %__x.addr, align 8
  %call = call double* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(double* %0, i64 %1, double* dereferenceable(8) %2)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(double* %__first, i64 %__n, double* dereferenceable(8) %__x) #0 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__x.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__x, double** %__x.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load double*, double** %__x.addr, align 8
  %call = call double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %0, i64 %1, double* dereferenceable(8) %2)
  ret double* %call
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* dereferenceable(8) %__value) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load i64, i64* %__n.addr, align 8
  %2 = load double*, double** %__value.addr, align 8
  %call1 = call double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %call, i64 %1, double* dereferenceable(8) %2)
  ret double* %call1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %__first, i64 %__n, double* dereferenceable(8) %__value) #1 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca double*, align 8
  %__tmp = alloca double, align 8
  %__niter = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  %0 = load double*, double** %__value.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %__tmp, align 8
  %2 = load i64, i64* %__n.addr, align 8
  store i64 %2, i64* %__niter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %__niter, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %__tmp, align 8
  %5 = load double*, double** %__first.addr, align 8
  store double %4, double* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %__niter, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %__niter, align 8
  %7 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %7, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double*, double** %__first.addr, align 8
  ret double* %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(double* %__first, double* %__last, double* dereferenceable(8) %__value) #1 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__value.addr = alloca double*, align 8
  %__tmp = alloca double, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__value, double** %__value.addr, align 8
  %0 = load double*, double** %__value.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %__tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load double*, double** %__first.addr, align 8
  %3 = load double*, double** %__last.addr, align 8
  %cmp = icmp ne double* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %__tmp, align 8
  %5 = load double*, double** %__first.addr, align 8
  store double %4, double* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load double*, double** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %6, i32 1
  store double* %incdec.ptr, double** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__first.addr, align 8
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %0)
  %1 = load double*, double** %__last.addr, align 8
  %call1 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %1)
  %2 = load double*, double** %__result.addr, align 8
  %call2 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %2)
  %call3 = call double* @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(double* %call, double* %call1, double* %call2)
  ret double* %call3
}

; Function Attrs: noinline uwtable
define linkonce_odr double* @_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #0 comdat {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %__simple = alloca i8, align 1
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  store i8 1, i8* %__simple, align 1
  %0 = load double*, double** %__first.addr, align 8
  %1 = load double*, double** %__last.addr, align 8
  %2 = load double*, double** %__result.addr, align 8
  %call = call double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %0, double* %1, double* %2)
  ret double* %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double* @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #1 comdat align 2 {
entry:
  %__first.addr = alloca double*, align 8
  %__last.addr = alloca double*, align 8
  %__result.addr = alloca double*, align 8
  %_Num = alloca i64, align 8
  store double* %__first, double** %__first.addr, align 8
  store double* %__last, double** %__last.addr, align 8
  store double* %__result, double** %__result.addr, align 8
  %0 = load double*, double** %__last.addr, align 8
  %1 = load double*, double** %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint double* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, i64* %_Num, align 8
  %2 = load i64, i64* %_Num, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load double*, double** %__result.addr, align 8
  %4 = load i64, i64* %_Num, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds double, double* %3, i64 %idx.neg
  %5 = bitcast double* %add.ptr to i8*
  %6 = load double*, double** %__first.addr, align 8
  %7 = bitcast double* %6 to i8*
  %8 = load i64, i64* %_Num, align 8
  %mul = mul i64 8, %8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load double*, double** %__result.addr, align 8
  %10 = load i64, i64* %_Num, align 8
  %idx.neg1 = sub i64 0, %10
  %add.ptr2 = getelementptr inbounds double, double* %9, i64 %idx.neg1
  ret double* %add.ptr2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"*, %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1 to %"struct.std::iterator"*
  call void @_ZNSaIdEC2Ev(%"struct.std::iterator"* %0) #12
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 0
  store double* null, double** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 1
  store double* null, double** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double> >::_Vector_impl"* %this1, i32 0, i32 2
  store double* null, double** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSaIdEC2Ev(%"struct.std::iterator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  %0 = bitcast %"struct.std::iterator"* %this1 to %"struct.std::iterator"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"struct.std::iterator"* %0) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"struct.std::iterator"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::iterator"*, align 8
  store %"struct.std::iterator"* %this, %"struct.std::iterator"** %this.addr, align 8
  %this1 = load %"struct.std::iterator"*, %"struct.std::iterator"** %this.addr, align 8
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
